package com.smartisanos.launcher.quicksearch;

import android.content.Context;
import android.app.usage.UsageStats;
import android.app.usage.UsageStatsManager;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Debug;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Process;
import android.os.SystemClock;
import android.util.DisplayMetrics;
import android.util.Log;

import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicLong;

/**
 * Bounded, process-local icon backend prepared after SearchSnapshot READY.
 *
 * Hydration calls ItemInfo.Oe() only on Aa.nc() clones and only on the
 * QuickSearchIcon worker. SearchEntry and SearchSnapshot remain bitmap/blob-free.
 */
public final class SearchIconBackend {
    private static final String TAG = QuickSearchIndexLogger.TAG;
    private static final int SEARCH_ICON_DP = 36;
    private static final int DECODED_VISIBLE_CAPACITY = 12; // Top5 + first result rows.
    private static final long MIN_ENCODED_BYTES = 2L * 1024L * 1024L;
    private static final long MAX_ENCODED_BYTES = 8L * 1024L * 1024L;

    private static final Object CACHE_LOCK = new Object();
    private static final LinkedHashMap<String, EncodedValue> ENCODED =
            new LinkedHashMap<String, EncodedValue>(32, 0.75f, true);
    private static final LinkedHashMap<String, DecodedValue> DECODED =
            new LinkedHashMap<String, DecodedValue>(16, 0.75f, true);
    private static final AtomicLong SOURCE_GENERATION = new AtomicLong(1L);
    private static final AtomicLong SCHEDULE_VERSION = new AtomicLong();
    private static long hydrationSnapshotGeneration = -1L;
    private static long hydrationSourceGeneration = -1L;
    private static long hydrationSchedule;
    private static boolean hydrationInFlight;
    private static final ArrayList<HydrationCallback> HYDRATION_CALLBACKS =
            new ArrayList<HydrationCallback>();
    private static long encodedBytes;
    private static long decodedBytes;
    private static volatile Map<String, Long> usageForegroundTimes =
            Collections.emptyMap();
    private static final Handler MAIN_HANDLER = new Handler(Looper.getMainLooper());
    private static final HashMap<String, ArrayList<IconRequest>> PENDING =
            new HashMap<String, ArrayList<IconRequest>>();

    private static final ExecutorService EXECUTOR =
            Executors.newSingleThreadExecutor(new ThreadFactory() {
                @Override
                public Thread newThread(Runnable runnable) {
                    Thread thread = new Thread(runnable, "QuickSearchIcon");
                    thread.setDaemon(true);
                    return thread;
                }
            });

    private SearchIconBackend() {
    }

    public interface IconCallback {
        void onIconReady(String iconKey, long sourceGeneration, Bitmap bitmap);
    }

    /** Called on the main thread after a current hydration has completed. */
    public interface HydrationCallback {
        void onHydrationFinished(long sourceGeneration);
    }

    public static final class IconRequest {
        private final String cacheKey;
        private final String iconKey;
        private final String packageName;
        private final int userId;
        private final long sourceGeneration;
        private final IconCallback callback;
        private volatile boolean cancelled;

        private IconRequest(String cacheKey, SearchEntry entry, long sourceGeneration,
                IconCallback callback) {
            this.cacheKey = cacheKey;
            this.iconKey = entry.iconKey;
            this.packageName = entry.packageName;
            this.userId = entry.userId;
            this.sourceGeneration = sourceGeneration;
            this.callback = callback;
        }

        public void cancel() {
            cancelled = true;
        }
    }

    public static long getSourceGeneration() {
        return SOURCE_GENERATION.get();
    }

    public static long getUsageForegroundTime(String packageName) {
        Long value = usageForegroundTimes.get(packageName);
        return value == null ? 0L : value.longValue();
    }

    public static void scheduleHydration(Context context, SearchSnapshot snapshot) {
        scheduleHydration(context, snapshot, null);
    }

    public static void scheduleHydration(Context context, SearchSnapshot snapshot,
            HydrationCallback callback) {
        if (context == null || snapshot == null || snapshot.entries.isEmpty()) return;
        final Context app = context.getApplicationContext() == null
                ? context : context.getApplicationContext();
        final SearchSnapshot target = snapshot;
        final long schedule;
        synchronized (CACHE_LOCK) {
            if (hydrationInFlight && hydrationSnapshotGeneration == snapshot.generation
                    && hydrationSourceGeneration == SOURCE_GENERATION.get()
                    && hydrationSchedule == SCHEDULE_VERSION.get()) {
                if (callback != null) HYDRATION_CALLBACKS.add(callback);
                return;
            }
            schedule = SCHEDULE_VERSION.incrementAndGet();
            hydrationSchedule = schedule;
            hydrationSnapshotGeneration = snapshot.generation;
            hydrationSourceGeneration = SOURCE_GENERATION.get();
            hydrationInFlight = true;
            HYDRATION_CALLBACKS.clear();
            if (callback != null) HYDRATION_CALLBACKS.add(callback);
        }
        EXECUTOR.execute(new Runnable() {
            @Override
            public void run() {
                if (schedule != SCHEDULE_VERSION.get()) return;
                hydrate(app, target, schedule);
            }
        });
    }

    public static byte[] getEncoded(SearchEntry entry) {
        if (entry == null) return null;
        synchronized (CACHE_LOCK) {
            EncodedValue value = ENCODED.get(cacheKey(entry.iconKey));
            return value == null ? null : value.bytes;
        }
    }

    public static Bitmap getDecoded(SearchEntry entry) {
        if (entry == null) return null;
        synchronized (CACHE_LOCK) {
            DecodedValue value = DECODED.get(cacheKey(entry.iconKey));
            return value == null || value.bitmap.isRecycled() ? null : value.bitmap;
        }
    }

    /** Decodes one encoded cache hit on the icon worker and coalesces identical requests. */
    public static IconRequest requestDecoded(Context context, final SearchEntry entry,
            IconCallback callback) {
        if (context == null || entry == null || callback == null) return null;
        final long generation = SOURCE_GENERATION.get();
        final String requestKey = cacheKey(entry.iconKey);
        final IconRequest request = new IconRequest(requestKey, entry, generation,
                callback);
        Bitmap ready = getDecoded(entry);
        if (ready != null) {
            postResult(request, ready);
            return request;
        }
        final byte[] encoded = getEncoded(entry);
        if (encoded == null || encoded.length == 0) return null;
        boolean startDecode = false;
        final ArrayList<IconRequest> decodingRequests;
        synchronized (CACHE_LOCK) {
            ArrayList<IconRequest> requests = PENDING.get(requestKey);
            if (requests == null) {
                requests = new ArrayList<IconRequest>();
                PENDING.put(requestKey, requests);
                startDecode = true;
            }
            requests.add(request);
            decodingRequests = requests;
        }
        if (startDecode) {
            final int targetPx = searchIconPixels(context);
            EXECUTOR.execute(new Runnable() {
                @Override
                public void run() {
                    Bitmap bitmap = decodeTarget(encoded, targetPx);
                    ArrayList<IconRequest> requests;
                    synchronized (CACHE_LOCK) {
                        // An invalidated decode must not consume a newer request for the same key.
                        requests = PENDING.get(requestKey) == decodingRequests
                                ? PENDING.remove(requestKey) : null;
                        if (requests != null && bitmap != null
                                && generation == SOURCE_GENERATION.get()) {
                            putDecoded(entry, bitmap, decodedLimitBytes(targetPx));
                        } else {
                            bitmap = null;
                        }
                    }
                    if (requests != null) {
                        for (IconRequest pending : requests) {
                            postResult(pending, bitmap);
                        }
                    }
                }
            });
        }
        return request;
    }

    private static void postResult(final IconRequest request, final Bitmap bitmap) {
        MAIN_HANDLER.post(new Runnable() {
            @Override
            public void run() {
                if (!request.cancelled
                        && request.sourceGeneration == SOURCE_GENERATION.get()) {
                    request.callback.onIconReady(request.iconKey,
                            request.sourceGeneration, bitmap);
                }
            }
        });
    }

    /** Package events invalidate only the affected identities. */
    public static void invalidatePackage(String packageName) {
        invalidatePackage(packageName, -1);
    }

    public static void invalidatePackage(String packageName, int userId) {
        if (packageName == null || packageName.length() == 0) return;
        SCHEDULE_VERSION.incrementAndGet();
        synchronized (CACHE_LOCK) {
            HYDRATION_CALLBACKS.clear();
            hydrationInFlight = false;
            removePackageLocked(packageName, userId);
        }
    }

    /** Theme/icon-source-wide changes may call this before their normal model refresh. */
    public static void invalidateAll(String reason) {
        SCHEDULE_VERSION.incrementAndGet();
        SOURCE_GENERATION.incrementAndGet();
        synchronized (CACHE_LOCK) {
            HYDRATION_CALLBACKS.clear();
            hydrationInFlight = false;
            ENCODED.clear();
            encodedBytes = 0L;
            recycleDecodedLocked();
            for (ArrayList<IconRequest> requests : PENDING.values()) {
                for (IconRequest request : requests) request.cancel();
            }
            PENDING.clear();
        }
        Log.i(TAG, "QS_ICON_CACHE_INVALIDATED reason=" + safeReason(reason)
                + " sourceGeneration=" + SOURCE_GENERATION.get());
    }

    private static void hydrate(Context context, SearchSnapshot snapshot, long schedule) {
        try {
            Process.setThreadPriority(Process.THREAD_PRIORITY_BACKGROUND);
        } catch (Throwable ignored) {
        }
        long begin = SystemClock.elapsedRealtime();
        long pssBeforeKb = Debug.getPss();
        int alreadyReady = 0;
        int dbLoaded = 0;
        int fallbackLoaded = 0;
        int misses = 0;
        long totalSourceBytes = 0L;
        Log.i(TAG, "QS_ICON_HYDRATE_BEGIN entries=" + snapshot.entries.size()
                + " pssBeforeKb=" + pssBeforeKb);
        try {
            Map model = launcherModelSnapshot();
            Map<String, ModelValue> byIdentity = indexModel(model);
            ArrayList<WarmCandidate> warm = new ArrayList<WarmCandidate>();
            for (SearchEntry entry : snapshot.entries) {
                if (schedule != SCHEDULE_VERSION.get()) return;
                try {
                    ModelValue modelValue = byIdentity.get(modelKey(entry.packageName,
                            entry.className, entry.userId));
                    if (modelValue == null) {
                        misses++;
                        continue;
                    }
                    boolean ready = hasIconData(modelValue.item);
                    byte[] bytes = invokeIconData(modelValue.item);
                    if (bytes == null || bytes.length == 0) {
                        misses++;
                        continue;
                    }
                    if (ready) alreadyReady++;
                    else dbLoaded++;
                    totalSourceBytes += bytes.length;
                    synchronized (CACHE_LOCK) {
                        if (schedule != SCHEDULE_VERSION.get()) return;
                        putEncoded(entry, bytes, encodedLimitBytes());
                    }
                    warm.add(new WarmCandidate(entry, modelValue.usageCount));
                } catch (Throwable ignored) {
                    misses++;
                }
            }
            long elapsed = SystemClock.elapsedRealtime() - begin;
            Log.i(TAG, "QS_ICON_HYDRATE_END entries=" + snapshot.entries.size()
                    + " alreadyReady=" + alreadyReady
                    + " dbLoaded=" + dbLoaded
                    + " fallbackLoaded=" + fallbackLoaded
                    + " misses=" + misses
                    + " encodedBytes=" + totalSourceBytes
                    + " cacheBytes=" + currentEncodedBytes()
                    + " elapsedMs=" + elapsed);
            Map<String, Long> usage = readUsageForegroundTimes(context);
            usageForegroundTimes = Collections.unmodifiableMap(usage);
            warmTop5(context, warm, usage, schedule);
            final ArrayList<HydrationCallback> completions;
            synchronized (CACHE_LOCK) {
                if (schedule != SCHEDULE_VERSION.get()) return;
                hydrationInFlight = false;
                completions = new ArrayList<HydrationCallback>(HYDRATION_CALLBACKS);
                HYDRATION_CALLBACKS.clear();
            }
            if (!completions.isEmpty()) {
                final long sourceGeneration = SOURCE_GENERATION.get();
                MAIN_HANDLER.post(new Runnable() {
                    @Override public void run() {
                        if (schedule == SCHEDULE_VERSION.get()) {
                            for (HydrationCallback completion : completions) {
                                completion.onHydrationFinished(sourceGeneration);
                            }
                        }
                    }
                });
            }
        } catch (Throwable error) {
            Log.e(TAG, "QS_ICON_HYDRATE_FAILED type=" + error.getClass().getName());
        } finally {
            synchronized (CACHE_LOCK) {
                if (hydrationSchedule == schedule) {
                    hydrationInFlight = false;
                    HYDRATION_CALLBACKS.clear();
                }
            }
        }
    }

    private static void warmTop5(Context context, List<WarmCandidate> candidates,
            final Map<String, Long> usage, long schedule) {
        Collections.sort(candidates, new Comparator<WarmCandidate>() {
            @Override
            public int compare(WarmCandidate left, WarmCandidate right) {
                long leftUsage = usageForegroundTime(usage, left.entry.packageName);
                long rightUsage = usageForegroundTime(usage, right.entry.packageName);
                if (leftUsage != rightUsage) {
                    return leftUsage < rightUsage ? 1 : -1;
                }
                return left.entry.label.compareToIgnoreCase(right.entry.label);
            }
        });
        ArrayList<WarmCandidate> selected = new ArrayList<WarmCandidate>();
        HashSet<String> seenPackages = new HashSet<String>();
        for (WarmCandidate candidate : candidates) {
            if (seenPackages.add(candidate.entry.packageName)) {
                selected.add(candidate);
                if (selected.size() == 5) break;
            }
        }
        int requested = selected.size();
        int targetPx = searchIconPixels(context);
        long begin = SystemClock.elapsedRealtime();
        int decoded = 0;
        int failed = 0;
        long allocationBytes = 0L;
        Log.i(TAG, "QS_ICON_WARMUP_BEGIN requested=" + requested
                + " targetPx=" + targetPx);
        for (int i = 0; i < requested; i++) {
            if (schedule != SCHEDULE_VERSION.get()) return;
            SearchEntry entry = selected.get(i).entry;
            byte[] encoded = getEncoded(entry);
            Bitmap bitmap = decodeTarget(encoded, targetPx);
            if (bitmap == null) {
                failed++;
                continue;
            }
            long bytes = bitmapBytes(bitmap);
            allocationBytes += bytes;
            synchronized (CACHE_LOCK) {
                if (schedule != SCHEDULE_VERSION.get()) {
                    bitmap.recycle();
                    return;
                }
                putDecoded(entry, bitmap, decodedLimitBytes(targetPx));
            }
            decoded++;
        }
        Log.i(TAG, "QS_ICON_WARMUP_END requested=" + requested
                + " decoded=" + decoded
                + " failed=" + failed
                + " bytes=" + allocationBytes
                + " elapsedMs=" + (SystemClock.elapsedRealtime() - begin)
                + " cacheBytes=" + currentDecodedBytes()
                + " pssAfterKb=" + Debug.getPss());
    }

    private static HashMap<String, Long> readUsageForegroundTimes(Context context) {
        HashMap<String, Long> result = new HashMap<String, Long>();
        if (context == null || Build.VERSION.SDK_INT < Build.VERSION_CODES.LOLLIPOP) {
            return result;
        }
        try {
            Object service = context.getSystemService(Context.USAGE_STATS_SERVICE);
            if (!(service instanceof UsageStatsManager)) return result;
            long end = System.currentTimeMillis();
            long begin = end - 30L * 24L * 60L * 60L * 1000L;
            Map<String, UsageStats> stats = ((UsageStatsManager) service)
                    .queryAndAggregateUsageStats(begin, end);
            if (stats == null) return result;
            for (Map.Entry<String, UsageStats> item : stats.entrySet()) {
                if (item.getKey() != null && item.getValue() != null) {
                    result.put(item.getKey(), Long.valueOf(
                            item.getValue().getTotalTimeInForeground()));
                }
            }
        } catch (Throwable ignored) {
        }
        return result;
    }

    private static long usageForegroundTime(Map<String, Long> usage, String packageName) {
        Long value = usage.get(packageName);
        return value == null ? 0L : value.longValue();
    }

    private static Map launcherModelSnapshot() throws Exception {
        Class<?> modelClass = Class.forName("com.smartisanos.launcher.Aa");
        Object value = modelClass.getMethod("nc").invoke(null);
        return value instanceof Map ? (Map) value : Collections.emptyMap();
    }

    private static Map<String, ModelValue> indexModel(Map model) {
        LinkedHashMap<String, ModelValue> result = new LinkedHashMap<String, ModelValue>();
        if (model == null) return result;
        for (Object item : model.values()) {
            if (item == null) continue;
            try {
                String packageName = stringField(item, "packageName");
                String className = stringField(item, "componentName");
                int userId = intField(item, "userId");
                if (userId < 0) userId = Process.myUid() / 100000;
                int usageCount = intField(item, "usageCount");
                result.put(modelKey(packageName, className, userId),
                        new ModelValue(item, usageCount));
            } catch (Throwable ignored) {
            }
        }
        return result;
    }

    private static boolean hasIconData(Object item) throws Exception {
        Field field = item.getClass().getDeclaredField("iconData");
        field.setAccessible(true);
        Object value = field.get(item);
        return value instanceof byte[] && ((byte[]) value).length > 0;
    }

    private static byte[] invokeIconData(Object item) throws Exception {
        Object value = item.getClass().getMethod("Oe").invoke(item);
        return value instanceof byte[] ? (byte[]) value : null;
    }

    private static String stringField(Object item, String name) throws Exception {
        Object value = item.getClass().getField(name).get(item);
        return value == null ? "" : String.valueOf(value);
    }

    private static int intField(Object item, String name) throws Exception {
        Object value = item.getClass().getField(name).get(item);
        return value instanceof Number ? ((Number) value).intValue() : 0;
    }

    private static Bitmap decodeTarget(byte[] encoded, int targetPx) {
        if (encoded == null || encoded.length == 0 || targetPx <= 0) return null;
        BitmapFactory.Options bounds = new BitmapFactory.Options();
        bounds.inJustDecodeBounds = true;
        BitmapFactory.decodeByteArray(encoded, 0, encoded.length, bounds);
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inPreferredConfig = Bitmap.Config.ARGB_8888;
        int sample = 1;
        while (bounds.outWidth / (sample * 2) >= targetPx
                && bounds.outHeight / (sample * 2) >= targetPx) {
            sample *= 2;
        }
        options.inSampleSize = sample;
        Bitmap source = BitmapFactory.decodeByteArray(encoded, 0, encoded.length, options);
        if (source == null) return null;
        if (source.getWidth() == targetPx && source.getHeight() == targetPx) return source;
        Bitmap target = Bitmap.createScaledBitmap(source, targetPx, targetPx, true);
        if (target != source && !source.isRecycled()) source.recycle();
        return target;
    }

    private static int searchIconPixels(Context context) {
        DisplayMetrics metrics = context.getResources().getDisplayMetrics();
        return Math.max(1, Math.round(SEARCH_ICON_DP * metrics.density));
    }

    private static long encodedLimitBytes() {
        long heapFraction = Runtime.getRuntime().maxMemory() / 32L;
        return Math.max(MIN_ENCODED_BYTES, Math.min(MAX_ENCODED_BYTES, heapFraction));
    }

    private static long decodedLimitBytes(int targetPx) {
        return (long) targetPx * (long) targetPx * 4L * DECODED_VISIBLE_CAPACITY;
    }

    private static void putEncoded(SearchEntry entry, byte[] bytes, long limit) {
        String key = cacheKey(entry.iconKey);
        synchronized (CACHE_LOCK) {
            EncodedValue previous = ENCODED.remove(key);
            if (previous != null) encodedBytes -= previous.bytes.length;
            ENCODED.put(key, new EncodedValue(entry.packageName, entry.userId, bytes));
            encodedBytes += bytes.length;
            Iterator<Map.Entry<String, EncodedValue>> iterator = ENCODED.entrySet().iterator();
            while (encodedBytes > limit && iterator.hasNext()) {
                EncodedValue removed = iterator.next().getValue();
                encodedBytes -= removed.bytes.length;
                iterator.remove();
            }
        }
    }

    private static void putDecoded(SearchEntry entry, Bitmap bitmap, long limit) {
        String key = cacheKey(entry.iconKey);
        synchronized (CACHE_LOCK) {
            DecodedValue previous = DECODED.remove(key);
            if (previous != null) {
                decodedBytes -= previous.bytes;
            }
            long bytes = bitmapBytes(bitmap);
            DECODED.put(key, new DecodedValue(entry.packageName, entry.userId, bitmap, bytes));
            decodedBytes += bytes;
            Iterator<Map.Entry<String, DecodedValue>> iterator = DECODED.entrySet().iterator();
            while (decodedBytes > limit && iterator.hasNext()) {
                DecodedValue removed = iterator.next().getValue();
                decodedBytes -= removed.bytes;
                iterator.remove();
            }
        }
    }

    private static void removePackageLocked(String packageName, int userId) {
        Iterator<Map.Entry<String, ArrayList<IconRequest>>> pendingIterator =
                PENDING.entrySet().iterator();
        while (pendingIterator.hasNext()) {
            Map.Entry<String, ArrayList<IconRequest>> pending = pendingIterator.next();
            Iterator<IconRequest> requests = pending.getValue().iterator();
            while (requests.hasNext()) {
                IconRequest request = requests.next();
                if (packageName.equals(request.packageName)
                        && (userId < 0 || request.userId == userId)) {
                    request.cancel();
                    requests.remove();
                }
            }
            if (pending.getValue().isEmpty()) pendingIterator.remove();
        }
        Iterator<Map.Entry<String, EncodedValue>> encodedIterator =
                ENCODED.entrySet().iterator();
        while (encodedIterator.hasNext()) {
            EncodedValue value = encodedIterator.next().getValue();
            if (packageName.equals(value.packageName) && (userId < 0 || value.userId == userId)) {
                encodedBytes -= value.bytes.length;
                encodedIterator.remove();
            }
        }
        Iterator<Map.Entry<String, DecodedValue>> decodedIterator =
                DECODED.entrySet().iterator();
        while (decodedIterator.hasNext()) {
            DecodedValue value = decodedIterator.next().getValue();
            if (packageName.equals(value.packageName) && (userId < 0 || value.userId == userId)) {
                decodedBytes -= value.bytes;
                decodedIterator.remove();
            }
        }
    }

    private static void recycleDecodedLocked() {
        DECODED.clear();
        decodedBytes = 0L;
    }

    private static long bitmapBytes(Bitmap bitmap) {
        try {
            return bitmap.getAllocationByteCount();
        } catch (Throwable ignored) {
            return bitmap.getByteCount();
        }
    }

    private static long currentEncodedBytes() {
        synchronized (CACHE_LOCK) {
            return encodedBytes;
        }
    }

    private static long currentDecodedBytes() {
        synchronized (CACHE_LOCK) {
            return decodedBytes;
        }
    }

    private static String cacheKey(String iconKey) {
        return (iconKey == null ? "" : iconKey) + "#source=" + SOURCE_GENERATION.get();
    }

    private static String modelKey(String packageName, String className, int userId) {
        return packageName + '\t' + className + '\t' + userId;
    }

    private static String safeReason(String reason) {
        return reason == null || reason.length() == 0 ? "unspecified" : reason;
    }

    private static final class ModelValue {
        final Object item;
        final int usageCount;

        ModelValue(Object item, int usageCount) {
            this.item = item;
            this.usageCount = usageCount;
        }
    }

    private static final class WarmCandidate {
        final SearchEntry entry;
        final int usageCount;

        WarmCandidate(SearchEntry entry, int usageCount) {
            this.entry = entry;
            this.usageCount = usageCount;
        }
    }

    private static final class EncodedValue {
        final String packageName;
        final int userId;
        final byte[] bytes;

        EncodedValue(String packageName, int userId, byte[] bytes) {
            this.packageName = packageName;
            this.userId = userId;
            this.bytes = bytes;
        }
    }

    private static final class DecodedValue {
        final String packageName;
        final int userId;
        final Bitmap bitmap;
        final long bytes;

        DecodedValue(String packageName, int userId, Bitmap bitmap, long bytes) {
            this.packageName = packageName;
            this.userId = userId;
            this.bitmap = bitmap;
            this.bytes = bytes;
        }
    }
}
