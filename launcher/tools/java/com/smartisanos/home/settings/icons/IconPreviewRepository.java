package com.smartisanos.home.settings.icons;

import android.app.ActivityManager;
import android.content.ComponentCallbacks2;
import android.content.Context;
import android.content.res.Configuration;
import android.content.pm.ResolveInfo;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Looper;
import android.util.LruCache;

import java.io.File;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicLong;

import android.text.TextUtils;
import org.json.JSONArray;
import org.json.JSONObject;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Locale;

/**
 * Application-scoped, bounded icon renderer shared by the settings list, icon chooser and
 * per-application picker.  It deliberately owns no Activity or View; callers bind a render key
 * and discard callbacks whose row or page generation is no longer current.
 */
public final class IconPreviewRepository implements ComponentCallbacks2 {
    public interface Callback { void onIconReady(String key, Bitmap bitmap); }
    public interface DrawableLoader { Drawable load() throws Exception; }
    public enum Priority { P0_VISIBLE, P1_ADJACENT, P2_IDLE }

    public static final class ImprovedCandidate {
        public final String packageName;
        public final String componentName;
        public final String sourceId;
        public final boolean exists;

        public ImprovedCandidate(String packageName, String componentName, String sourceId, boolean exists) {
            this.packageName = packageName == null ? "" : packageName;
            this.componentName = componentName == null ? "" : componentName;
            this.sourceId = sourceId == null ? "" : sourceId;
            this.exists = exists;
        }
    }

    /** Stable identity for the final, target-sized bitmap. Never include a View or generation. */
    public static final class IconRenderKey {
        public final String packageName;
        public final String componentName;
        public final long userSerial;
        public final String sourceType;
        public final String sourceId;
        public final long sourceVersion;
        public final int targetPixelSize;
        public final int densityDpi;
        public final int renderRevision;

        public IconRenderKey(String packageName, String componentName, long userSerial,
                             String sourceType, String sourceId, long sourceVersion,
                             int targetPixelSize, int densityDpi, int renderRevision) {
            this.packageName = safe(packageName);
            this.componentName = safe(componentName);
            this.userSerial = userSerial;
            this.sourceType = safe(sourceType);
            this.sourceId = safe(sourceId);
            this.sourceVersion = sourceVersion;
            this.targetPixelSize = targetPixelSize;
            this.densityDpi = densityDpi;
            this.renderRevision = renderRevision;
        }

        @Override public boolean equals(Object value) {
            if (!(value instanceof IconRenderKey)) return false;
            IconRenderKey other = (IconRenderKey) value;
            return userSerial == other.userSerial && sourceVersion == other.sourceVersion
                    && targetPixelSize == other.targetPixelSize && densityDpi == other.densityDpi
                    && renderRevision == other.renderRevision && packageName.equals(other.packageName)
                    && componentName.equals(other.componentName) && sourceType.equals(other.sourceType)
                    && sourceId.equals(other.sourceId);
        }

        @Override public int hashCode() {
            int result = packageName.hashCode();
            result = 31 * result + componentName.hashCode();
            result = 31 * result + (int) (userSerial ^ (userSerial >>> 32));
            result = 31 * result + sourceType.hashCode();
            result = 31 * result + sourceId.hashCode();
            result = 31 * result + (int) (sourceVersion ^ (sourceVersion >>> 32));
            result = 31 * result + targetPixelSize;
            result = 31 * result + densityDpi;
            return 31 * result + renderRevision;
        }

        @Override public String toString() {
            return sourceType + '|' + packageName + '|' + componentName + '|' + userSerial + '|'
                    + sourceId + '|' + sourceVersion + '|' + targetPixelSize + '|'
                    + densityDpi + '|' + renderRevision;
        }

        private static String safe(String value) { return value == null ? "" : value; }
    }

    /** Immutable page metadata. The Adapter must not redo database/index/appfilter lookups. */
    public static final class AppIconRowModel {
        public final String packageName, componentName, displayName, configuredMode, configuredSourceId;
        public final long userSerial, appVersionStamp;
        public final boolean hasImprovedCandidate, hasPackCandidate;
        public final String improvedCandidateName, packDrawableName, sectionType;

        public AppIconRowModel(String packageName, String componentName, long userSerial,
                               String displayName, String configuredMode, String configuredSourceId,
                               boolean hasImprovedCandidate, String improvedCandidateName,
                               boolean hasPackCandidate, String packDrawableName, String sectionType,
                               long appVersionStamp) {
            this.packageName = packageName == null ? "" : packageName;
            this.componentName = componentName == null ? "" : componentName;
            this.userSerial = userSerial;
            this.displayName = displayName == null ? "" : displayName;
            this.configuredMode = configuredMode == null ? "" : configuredMode;
            this.configuredSourceId = configuredSourceId == null ? "" : configuredSourceId;
            this.hasImprovedCandidate = hasImprovedCandidate;
            this.improvedCandidateName = improvedCandidateName == null ? "" : improvedCandidateName;
            this.hasPackCandidate = hasPackCandidate;
            this.packDrawableName = packDrawableName == null ? "" : packDrawableName;
            this.sectionType = sectionType == null ? "" : sectionType;
            this.appVersionStamp = appVersionStamp;
        }
    }

    public static final class AppIconSnapshot {
        public final long builtUptime;
        public final ArrayList<AppIconRowModel> rows;
        public AppIconSnapshot(ArrayList<AppIconRowModel> rows) {
            this.builtUptime = android.os.SystemClock.uptimeMillis();
            this.rows = rows == null ? new ArrayList<AppIconRowModel>() : rows;
        }
    }

    public static final class RequestSession {
        public final long id;
        public final String owner;
        private volatile boolean cancelled;

        public RequestSession(long id, String owner) {
            this.id = id;
            this.owner = owner == null ? "" : owner;
            this.cancelled = false;
        }

        public boolean isCancelled() { return cancelled; }
        public void cancel() { this.cancelled = true; }

        @Override public boolean equals(Object o) {
            if (this == o) return true;
            if (!(o instanceof RequestSession)) return false;
            return id == ((RequestSession) o).id;
        }

        @Override public int hashCode() {
            return (int) (id ^ (id >>> 32));
        }

        @Override public String toString() {
            return owner + "#" + id + (cancelled ? "(cancelled)" : "");
        }
    }

    public static final class PendingCallback {
        public final RequestSession session;
        public final Callback callback;

        public PendingCallback(RequestSession session, Callback callback) {
            this.session = session;
            this.callback = callback;
        }
    }

    private static final int DISK_LIMIT_BYTES = 64 * 1024 * 1024;
    private static final int MAX_SESSION_QUEUE_SIZE = 96;
    private static final int MAX_RENDER_QUEUE_SIZE = 512;
    private final Object renderAdmission = new Object();
    private static volatile IconPreviewRepository sInstance;
    private final Context app;
    private final LruCache<IconRenderKey, Bitmap> cache;
    private final ThreadPoolExecutor decodePool;
    private final ThreadPoolExecutor onlinePool;
    private final ThreadPoolExecutor metadataPool;
    private final ThreadPoolExecutor indexPool;
    private final Map<String, OnlineFetch> online = new HashMap<String, OnlineFetch>();
    private static final ThreadLocal<RenderTask> CURRENT_RENDER = new ThreadLocal<RenderTask>();
    private static final ThreadLocal<Boolean> DECODE_THREAD = new ThreadLocal<Boolean>();
    private final java.util.concurrent.atomic.AtomicBoolean diskTrimQueued = new java.util.concurrent.atomic.AtomicBoolean();
    private volatile long lastDiskTrim;
    private final Handler main = new Handler(Looper.getMainLooper());
    private final Map<IconRenderKey, ArrayList<PendingCallback>> pending = new HashMap<IconRenderKey, ArrayList<PendingCallback>>();
    private final LruCache<String, IconRenderKey> knownKeys = new LruCache<String, IconRenderKey>(512) {
        @Override protected void entryRemoved(boolean evicted, String key, IconRenderKey oldValue, IconRenderKey newValue) {
            if (evicted) {
                android.util.Log.d("SmartisanPerf", "ICON_KEY_CACHE_EVICT | key=" + key + " | thread=" + Thread.currentThread().getName());
            }
        }
    };
    private final AtomicLong sequence = new AtomicLong();
    private final AtomicLong sessionSequence = new AtomicLong();
    private final java.util.Set<RequestSession> activeSessions = java.util.Collections.synchronizedSet(new java.util.HashSet<RequestSession>());
    private volatile boolean pauseP2;

    private IconPreviewRepository(Context context) {
        app = context.getApplicationContext() == null ? context : context.getApplicationContext();
        ActivityManager am = (ActivityManager) app.getSystemService(Context.ACTIVITY_SERVICE);
        int memoryClass = am == null ? 192 : am.getMemoryClass();
        final int bytes = Math.max(6 * 1024 * 1024, Math.min(16 * 1024 * 1024,
                memoryClass * 1024 * 1024 / 32));
        cache = new LruCache<IconRenderKey, Bitmap>(bytes) {
            @Override protected int sizeOf(IconRenderKey key, Bitmap value) {
                return value == null ? 0 : value.getAllocationByteCount();
            }
        };
        decodePool = new ThreadPoolExecutor(2, 2, 15L, TimeUnit.SECONDS,
                new PriorityBlockingQueue<Runnable>(), backgroundFactory("icon-preview"));
        onlinePool = new ThreadPoolExecutor(2, 2, 15L, TimeUnit.SECONDS,
                new java.util.concurrent.ArrayBlockingQueue<Runnable>(24), backgroundFactory("icon-online"),
                new ThreadPoolExecutor.AbortPolicy());
        metadataPool = metadataExecutor("icon-metadata", 16);
        indexPool = metadataExecutor("icon-directory", 4);
        schedule(Priority.P2_IDLE, new Runnable() { public void run() {
            try { IconLibraryCatalog.load(app); } catch (Exception e) {
                android.util.Log.w("SmartisanPerf", "ICON_CATALOG_LOAD_FAILED", e);
            }
        }});
        app.registerComponentCallbacks(this);
    }

    private static java.util.concurrent.ThreadFactory backgroundFactory(final String name) {
        return new java.util.concurrent.ThreadFactory() {
            public Thread newThread(final Runnable job) {
                return new Thread(new Runnable() { public void run() {
                    android.os.Process.setThreadPriority(android.os.Process.THREAD_PRIORITY_BACKGROUND);
                    if ("icon-preview".equals(name)) DECODE_THREAD.set(Boolean.TRUE);
                    job.run();
                }}, name);
            }
        };
    }

    private static ThreadPoolExecutor metadataExecutor(String name, int capacity) {
        ThreadPoolExecutor pool = new ThreadPoolExecutor(1, 1, 15L, TimeUnit.SECONDS,
                new java.util.concurrent.ArrayBlockingQueue<Runnable>(capacity), backgroundFactory(name),
                new ThreadPoolExecutor.AbortPolicy());
        pool.allowCoreThreadTimeOut(true);
        return pool;
    }

    public static boolean isPreviewWorker() { return Boolean.TRUE.equals(DECODE_THREAD.get()); }

    public static IconPreviewRepository get(Context context) {
        IconPreviewRepository value = sInstance;
        if (value != null) return value;
        synchronized (IconPreviewRepository.class) {
            if (sInstance == null) sInstance = new IconPreviewRepository(context);
            return sInstance;
        }
    }

    public interface CandidateLibrary {
        java.util.List<String> sourceIds();
        Drawable load(String sourceId, boolean cachedOnly);
        String selectedKey();
        default boolean contains(String sourceId) { return false; }
        default java.util.List<AppIconCandidate> extraCandidates() { return Collections.emptyList(); }
    }
    public interface CandidateCallback {
        void onCandidates(java.util.List<AppIconCandidate> candidates);
    }
    private final LruCache<String, java.util.List<AppIconCandidate>> candidateLists =
            new LruCache<String, java.util.List<AppIconCandidate>>(256) {
                protected int sizeOf(String key, java.util.List<AppIconCandidate> value) {
                    return Math.max(32, value.size());
                }
            };
    private volatile long candidateGeneration;
    private final Map<RequestSession, Runnable> candidateRefresh = new HashMap<RequestSession, Runnable>();
    private final Map<RequestSession, Long> candidateRequests = new HashMap<RequestSession, Long>();

    public long candidateRevision() { return candidateGeneration; }

    public synchronized void invalidateCandidates() {
        candidateGeneration++;
        candidateLists.evictAll();
        synchronized (candidateRefresh) {
            for (final Map.Entry<RequestSession, Runnable> entry : candidateRefresh.entrySet()) {
                final RequestSession session = entry.getKey();
                final Runnable refresh = entry.getValue();
                main.post(new Runnable() { public void run() {
                    if (isSessionActive(session)) refresh.run();
                }});
            }
        }
    }

    public void invalidateAppCandidates(String packageName) {
        invalidateCandidates();
        for (IconRenderKey key : cache.snapshot().keySet()) {
            if (key.packageName.equals(packageName)) cache.remove(key);
        }
    }

    /** Local warming must not occupy a visible request's pending slot on a cache miss. */
    public void prefetchLocal(final RequestSession session, final IconRenderKey key,
            final DrawableLoader loader) {
        if (!isSessionActive(session) || cache.get(key) != null) return;
        schedule(session, Priority.P1_ADJACENT, new Runnable() { public void run() {
            if (!isSessionActive(session) || cache.get(key) != null) return;
            Bitmap bitmap;
            try { bitmap = drawableToBitmap(loader.load(), key.targetPixelSize); }
            catch (Exception error) { return; }
            if (bitmap == null) return;
            if (isSessionActive(session) && cache.get(key) == null) cache.put(key, bitmap);
            else bitmap.recycle();
        }});
    }

    /** Called while the application page snapshot is built off MAIN. */
    public void seedCachedCandidate(String pkg, String component, long user, String sourceId,
            Drawable drawable, boolean selected) {
        if (drawable == null || TextUtils.isEmpty(sourceId)) return;
        String pageKey = candidatePageKey(pkg, component, user);
        if (candidateLists.get(pageKey) != null) return;
        AppIconCandidate item = new AppIconCandidate(AppIconCandidate.TYPE_LIBRARY, sourceId, "", selected);
        IconRenderKey key = candidateRenderKey(pkg, component, user, item);
        Bitmap preview = drawableToBitmap(drawable, key.targetPixelSize);
        if (preview == null) return;
        cache.put(key, preview);
        ArrayList<AppIconCandidate> items = new ArrayList<AppIconCandidate>();
        items.add(item);
        candidateLists.put(pageKey, Collections.unmodifiableList(items));
    }

    private String candidatePageKey(String pkg, String component, long user) {
        return user + "|" + pkg + "|" + component;
    }

    /** Metadata only on MAIN. Cached bitmaps use the existing byte-bounded preview cache. */
    public java.util.List<AppIconCandidate> cachedCandidates(String pkg, String component, long user) {
        java.util.List<AppIconCandidate> found = candidateLists.get(candidatePageKey(pkg, component, user));
        return found == null ? Collections.<AppIconCandidate>emptyList() : found;
    }

    public void discoverCandidates(final RequestSession session, final String pkg,
            final String component, final long user,
            final CandidateLibrary library, final CandidateCallback callback) {
        if (!isSessionActive(session)) return;
        final long request = sequence.incrementAndGet();
        synchronized (candidateRefresh) {
            candidateRequests.put(session, request);
            candidateRefresh.put(session, new Runnable() { public void run() {
                discoverCandidates(session, pkg, component, user, library, callback);
            }});
        }
        boolean queued = scheduleMetadata(session, new Runnable() {
            public void run() {
                if (!isCurrentCandidateRequest(session, request)) return;
                final long generation = candidateGeneration;
                long started = android.os.SystemClock.elapsedRealtime();
                logPerf("ICON_CANDIDATES_COLLECT_BEGIN", pkg, component, user, "CHOICE", 0, 0);
                try { IconLibraryCatalog.load(app); } catch (Exception error) {
                    android.util.Log.w("SmartisanPerf", "ICON_CATALOG_LOAD_FAILED", error);
                }
                final String configuredKey = library.selectedKey();
                android.util.Log.i("SmartisanPerf", "ICON_CANDIDATES_METADATA target=" + pkg + " selected=" + configuredKey);
                final java.util.LinkedHashMap<String, AppIconCandidate> found =
                        new java.util.LinkedHashMap<String, AppIconCandidate>();
                for (AppIconCandidate item : library.extraCandidates()) found.put(item.stableKey,item);
                for (String id : library.sourceIds()) {
                    if (!isCurrentCandidateRequest(session, request)) return;
                    if (TextUtils.isEmpty(id) || found.containsKey("IMPROVED:" + id)) continue;
                    if (checkCandidateExists(id) || library.contains(id) || ("IMPROVED:" + id).equals(configuredKey)) {
                        AppIconCandidate item = new AppIconCandidate(AppIconCandidate.TYPE_LIBRARY, id, "", false);
                        found.put(item.stableKey, item);
                    }
                }
                for (AppIconCandidate item : IconPackManager.getCandidateMetadata(app, pkg, component, session)) {
                    if (!isCurrentCandidateRequest(session, request)) return;
                    if (!found.containsKey("PACK:" + item.packPackage + "#" + item.packDrawableName)) found.put(item.stableKey, item);
                }
                final String selectedKey = library.selectedKey();
                final ArrayList<AppIconCandidate> result = new ArrayList<AppIconCandidate>();
                for (AppIconCandidate item : found.values()) result.add(new AppIconCandidate(
                        item.type, item.sourceId, item.packLabel, item.stableKey.equals(selectedKey), item.packDrawableName, item.packVersion,item.explicitPackDrawable));
                // Stable sort moves only the selected entry; library/variant/pack order stays stable.
                Collections.sort(result, new java.util.Comparator<AppIconCandidate>() {
                    public int compare(AppIconCandidate a, AppIconCandidate b) {
                        return a.selected == b.selected ? 0 : a.selected ? -1 : 1;
                    }
                });
                if (!isCurrentCandidateRequest(session, request)) return;
                if (generation != candidateGeneration) {
                    discoverCandidates(session, pkg, component, user, library, callback);
                    return;
                }
                candidateLists.put(candidatePageKey(pkg, component, user),
                        Collections.unmodifiableList(result));
                android.util.Log.i("SmartisanPerf", "ICON_CANDIDATES_READY target=" + pkg + " count=" + result.size()
                        + " durationMs=" + (android.os.SystemClock.elapsedRealtime() - started));
                logPerf("ICON_CANDIDATES_COLLECT_END", pkg, component, user, "CHOICE", result.size(),
                        android.os.SystemClock.elapsedRealtime() - started);
                main.post(new Runnable() { public void run() {
                    if (!isCurrentCandidateRequest(session, request)) return;
                    if (generation != candidateGeneration) {
                        discoverCandidates(session, pkg, component, user, library, callback);
                        return;
                    }
                    callback.onCandidates(Collections.unmodifiableList(result));
                }});
            }
        });
        if (!queued && isSessionActive(session)) android.util.Log.w("SmartisanPerf", "ICON_CANDIDATES_QUEUE_FULL target=" + pkg);
    }

    private boolean isCurrentCandidateRequest(RequestSession session, long request) {
        synchronized (candidateRefresh) {
            Long current = candidateRequests.get(session);
            return isSessionActive(session) && current != null && current.longValue() == request;
        }
    }

    public IconRenderKey candidateRenderKey(String pkg, String component, long user, AppIconCandidate item) {
        long version = item.type == AppIconCandidate.TYPE_PACKED ? item.packVersion
                : item.type == AppIconCandidate.TYPE_CUSTOM ? candidateGeneration : 0L;
        if (item.type == AppIconCandidate.TYPE_LIBRARY) {
            IconLibraryCatalog catalog = IconLibraryCatalog.peek();
            version = catalog == null ? 0L : catalog.revision.hashCode();
        }
        return new IconRenderKey(pkg, component, user,
                item.type == AppIconCandidate.TYPE_PACKED ? "PACK"
                        : item.type == AppIconCandidate.TYPE_LIBRARY ? "RESOURCE"
                        : item.type == AppIconCandidate.TYPE_CUSTOM ? "CUSTOM" : "DEFAULT",
                item.type == AppIconCandidate.TYPE_PACKED ? item.packPackage + "#" + item.packDrawableName : item.sourceId,
                version, Math.round(72 * app.getResources().getDisplayMetrics().density),
                app.getResources().getDisplayMetrics().densityDpi, 1);
    }

    public RequestSession openSession(String owner) {
        RequestSession session = new RequestSession(sessionSequence.incrementAndGet(), owner);
        activeSessions.add(session);
        logSession("ICON_SESSION_OPEN", session, pendingCount(), decodePool.getQueue().size(), 0);
        return session;
    }

    public void cancelSession(RequestSession session) {
        if (session == null || session.isCancelled()) return;
        session.cancel();
        activeSessions.remove(session);
        synchronized (candidateRefresh) {
            candidateRefresh.remove(session);
            candidateRequests.remove(session);
        }
        purgeCancelledSessionWork(session);
        purgeOnlineWork();
        purgeMetadataWork(metadataPool);
        purgeMetadataWork(indexPool);
    }

    /** Drop only a recycled cell's subscription; other cells/pages may share this image. */
    public void cancelRequest(RequestSession session, IconRenderKey key, Callback callback) {
        synchronized (pending) {
            ArrayList<PendingCallback> callbacks = pending.get(key);
            if (callbacks != null) {
                java.util.Iterator<PendingCallback> it = callbacks.iterator();
                while (it.hasNext()) {
                    PendingCallback item = it.next();
                    if (item.session == session && item.callback == callback) it.remove();
                }
                if (callbacks.isEmpty()) pending.remove(key);
            }
        }
        for (Runnable queued : decodePool.getQueue().toArray(new Runnable[0])) {
            if (queued instanceof RenderTask) {
                RenderTask task = (RenderTask) queued;
                if (key.equals(task.key) && !hasActiveConsumers(key, task.callbacks)) decodePool.getQueue().remove(queued);
            }
        }
        purgeOnlineWork();
    }

    private void purgeOnlineWork() {
        for (Runnable queued : onlinePool.getQueue().toArray(new Runnable[0])) {
            if (queued instanceof IoOperation && !isSessionActive(((IoOperation) queued).session)) onlinePool.getQueue().remove(queued);
        }
        synchronized (online) {
            java.util.Iterator<OnlineFetch> it = online.values().iterator();
            while (it.hasNext()) {
                OnlineFetch fetch = it.next();
                java.util.Iterator<RenderTask> consumers = fetch.tasks.iterator();
                while (consumers.hasNext()) {
                    RenderTask task = consumers.next();
                    if (!hasActiveConsumers(task.key, task.callbacks)) consumers.remove();
                }
                if (fetch.tasks.isEmpty()) {
                    fetch.cancelled = true;
                    onlinePool.getQueue().remove(fetch);
                    // Socket read is bounded; never disconnect a socket on the UI thread.
                    it.remove();
                }
            }
        }
    }

    public boolean isSessionActive(RequestSession session) {
        return session != null && !session.isCancelled() && activeSessions.contains(session);
    }

    private void purgeCancelledSessionWork(RequestSession session) {
        if (session == null) return;
        int removedCallbacks = 0;
        int removedTasks = 0;
        synchronized (pending) {
            java.util.Iterator<Map.Entry<IconRenderKey, ArrayList<PendingCallback>>> it = pending.entrySet().iterator();
            while (it.hasNext()) {
                Map.Entry<IconRenderKey, ArrayList<PendingCallback>> entry = it.next();
                ArrayList<PendingCallback> list = entry.getValue();
                if (list != null) {
                    java.util.Iterator<PendingCallback> cbIt = list.iterator();
                    while (cbIt.hasNext()) {
                        PendingCallback pc = cbIt.next();
                        if (pc.session != null && pc.session.id == session.id) {
                            cbIt.remove();
                            removedCallbacks++;
                        }
                    }
                    if (list.isEmpty()) {
                        it.remove();
                    }
                }
            }
        }
        try {
            Object[] tasks = decodePool.getQueue().toArray();
            for (Object t : tasks) {
                if (t instanceof RenderTask) {
                    RenderTask task = (RenderTask) t;
                    if ((task.key != null && !hasActiveConsumers(task.key, task.callbacks))
                            || (task.key == null && session.equals(task.session))) {
                        if (decodePool.getQueue().remove(t)) {
                            removedTasks++;
                        }
                    }
                }
            }
        } catch (Throwable ignored) {}
        logSession("ICON_SESSION_CANCEL", session, pendingCount(), decodePool.getQueue().size(), removedCallbacks);
    }

    private boolean hasActiveConsumers(IconRenderKey key, ArrayList<PendingCallback> expected) {
        synchronized (pending) {
            ArrayList<PendingCallback> list = pending.get(key);
            if (list == null || list.isEmpty() || (expected != null && list != expected)) return false;
            for (PendingCallback pc : list) {
                if (pc.session == null || isSessionActive(pc.session)) {
                    return true;
                }
            }
            return false;
        }
    }

    private int pendingCount() {
        synchronized (pending) { return pending.size(); }
    }

    private static void logSession(String tag, RequestSession session, int pendingCount, int queueSize, int extraCount) {
        android.util.Log.d("SmartisanPerf", tag + " | session=" + (session == null ? "none" : session.toString())
                + " | pending=" + pendingCount + " | queue=" + queueSize + " | extra=" + extraCount
                + " | thread=" + Thread.currentThread().getName());
    }

    public Bitmap getCachedOfficialIcon(String packageName, String componentName, long userSerial,
                                        long versionStamp, int targetPx) {
        return cache.get(defaultKey(packageName, componentName, userSerial, versionStamp, targetPx));
    }

    public String requestOfficial(final ResolveInfo info, final long userSerial, final long versionStamp,
                                  final int targetPx, Callback callback) {
        if (info == null || info.activityInfo == null) return "";
        IconRenderKey key = defaultKey(info.activityInfo.packageName, info.activityInfo.name,
                userSerial, versionStamp, targetPx);
        request(key, Priority.P0_VISIBLE, new DrawableLoader() {
            public Drawable load() { return info.loadIcon(app.getPackageManager()); }
        }, callback);
        return key.toString();
    }

    public static void logPerf(String tag, String packageName, String componentName, long userSerial,
                               String sourceType, int targetPx, long durationMs) {
        android.util.Log.d("SmartisanPerf", tag + " | pkg=" + (packageName == null ? "" : packageName)
                + " | cmp=" + (componentName == null ? "" : componentName)
                + " | user=" + userSerial
                + " | type=" + (sourceType == null ? "" : sourceType)
                + " | targetPx=" + targetPx
                + " | thread=" + Thread.currentThread().getName()
                + " | durationMs=" + durationMs);
    }

    public void request(final IconRenderKey key, final Priority priority, final DrawableLoader loader,
                        Callback callback) {
        request(null, key, priority, loader, callback);
    }

    public void request(final RequestSession session, final IconRenderKey key, final Priority priority,
                        final DrawableLoader loader, Callback callback) {
        if (key == null || loader == null) return;
        if (session != null && session.isCancelled()) {
            logSession("ICON_SESSION_CALLBACK_DROP", session, pendingCount(), decodePool.getQueue().size(), 1);
            return;
        }
        if (priority != Priority.P2_IDLE) pauseP2 = false;
        synchronized (knownKeys) { knownKeys.put(key.toString(), key); }
        Bitmap ready = cache.get(key);
        if (ready != null) {
            logPerf("ICON_CACHE_HIT", key.packageName, key.componentName, key.userSerial, key.sourceType, key.targetPixelSize, 0);
            if (callback != null) callback.onIconReady(key.toString(), ready);
            return;
        }
        logPerf("ICON_CACHE_MISS", key.packageName, key.componentName, key.userSerial, key.sourceType, key.targetPixelSize, 0);
        final ArrayList<PendingCallback> requestCallbacks;
        synchronized (pending) {
            ArrayList<PendingCallback> callbacks = pending.get(key);
            if (callbacks != null) {
                if (callback == null) {
                    for (PendingCallback existing : callbacks) {
                        if (existing.callback == null && (session == null ? existing.session == null
                                : session.equals(existing.session))) return;
                    }
                }
                callbacks.add(new PendingCallback(session, callback));
                return;
            }
            callbacks = new ArrayList<PendingCallback>();
            // A prefetch has a consumer even though it has no UI callback.
            callbacks.add(new PendingCallback(session, callback));
            pending.put(key, callbacks);
            requestCallbacks = callbacks;
        }
        if (priority == Priority.P2_IDLE && pauseP2) {
            finish(key, null, requestCallbacks);
            return;
        }

        if (session != null) {
            trimSessionQueueIfNeeded(session);
        }

        enqueueRender(new RenderTask(session, key, priority, loader,
                requestCallbacks, sequence.incrementAndGet()));
    }

    /** Every producer, including HTTP completions and sessionless work, shares this bound. */
    private boolean enqueueRender(RenderTask incoming) {
        RenderTask evicted=null;
        boolean accepted=false;
        synchronized(renderAdmission) {
            // Keep a small reserve for preparation which publishes the page's metadata.
            int capacity=incoming.key==null?MAX_RENDER_QUEUE_SIZE:MAX_RENDER_QUEUE_SIZE-8;
            if(decodePool.getQueue().size()>=capacity) {
                for(Runnable queued:decodePool.getQueue().toArray(new Runnable[0])) {
                    if(!(queued instanceof RenderTask)) continue;
                    RenderTask candidate=(RenderTask)queued;
                    if(candidate.priority.ordinal()<=incoming.priority.ordinal()) continue;
                    boolean visible=false;
                    synchronized(pending) {
                        if(candidate.callbacks!=null) for(PendingCallback callback:candidate.callbacks)
                            if(callback.callback!=null && (callback.session==null || isSessionActive(callback.session))) visible=true;
                    }
                    if(visible) continue;
                    if(evicted==null || candidate.priority.ordinal()>evicted.priority.ordinal()) evicted=candidate;
                }
                if(evicted!=null && !decodePool.getQueue().remove(evicted)) evicted=null;
            }
            if(decodePool.getQueue().size()<capacity) {decodePool.execute(incoming);accepted=true;}
        }
        if(evicted!=null && evicted.key!=null) finish(evicted.key,null,evicted.callbacks);
        if(!accepted) {
            if(incoming.key!=null) finish(incoming.key,null,incoming.callbacks);
            android.util.Log.w("SmartisanPerf","ICON_RENDER_QUEUE_FULL");
        }
        return accepted;
    }

    private void trimSessionQueueIfNeeded(RequestSession session) {
        if (session == null) return;
        try {
            Object[] tasks = decodePool.getQueue().toArray();
            ArrayList<RenderTask> sessionTasks = new ArrayList<RenderTask>();
            for (Object t : tasks) {
                if (t instanceof RenderTask && session.equals(((RenderTask) t).session)) {
                    sessionTasks.add((RenderTask) t);
                }
            }
            if (sessionTasks.size() >= MAX_SESSION_QUEUE_SIZE) {
                RenderTask candidateToEvict = null;
                for (RenderTask t : sessionTasks) {
                    if (t.priority == Priority.P2_IDLE) { candidateToEvict = t; break; }
                }
                if (candidateToEvict == null) {
                    for (RenderTask t : sessionTasks) {
                        if (t.priority == Priority.P1_ADJACENT) { candidateToEvict = t; break; }
                    }
                }
                if (candidateToEvict != null) {
                    if (decodePool.getQueue().remove(candidateToEvict)) {
                        if (candidateToEvict.key != null) {
                            finish(candidateToEvict.key, null, candidateToEvict.callbacks);
                        }
                        logSession("ICON_QUEUE_TRIM", session, pendingCount(), decodePool.getQueue().size(), sessionTasks.size());
                    }
                }
            }
        } catch (Throwable ignored) {}
    }

    /** Schedules metadata/disk preparation without retaining or rasterizing a Bitmap. */
    public void schedule(Priority priority, final Runnable operation) {
        schedule(null, priority, operation);
    }

    public void schedule(RequestSession session, Priority priority, final Runnable operation) {
        if (operation == null || (session != null && !isSessionActive(session))
                || (priority == Priority.P2_IDLE && pauseP2)) return;
        if (priority != Priority.P2_IDLE) pauseP2 = false;
        if (session != null) trimSessionQueueIfNeeded(session);
        enqueueRender(new RenderTask(session, null, priority, new DrawableLoader() {
            public Drawable load() { operation.run(); return null; }
        }, null, sequence.incrementAndGet()));
    }

    /** Rare missing-mask recovery reuses the bounded bitmap executor, outside the GL thread. */
    public boolean scheduleProjectionRecovery(final Runnable operation) {
        if (operation == null) return false;
        return enqueueRender(new RenderTask(null, null, Priority.P0_VISIBLE, new DrawableLoader() {
            public Drawable load() { operation.run(); return null; }
        }, null, sequence.incrementAndGet()));
    }

    public Drawable cachedDrawable(String serializedKey) {
        IconRenderKey key;
        synchronized (knownKeys) { key = knownKeys.get(serializedKey); }
        return cachedDrawable(key);
    }

    public Drawable cachedDrawable(IconRenderKey key) {
        Bitmap bitmap = key == null ? null : cache.get(key);
        return bitmap == null ? null : new BitmapDrawable(app.getResources(), bitmap);
    }

    public void trimMemory() { trimMemory(ComponentCallbacks2.TRIM_MEMORY_RUNNING_LOW); }

    public void trimMemory(int level) {
        if (level >= ComponentCallbacks2.TRIM_MEMORY_COMPLETE) {
            pauseP2 = true;
            cache.evictAll();
        } else if (level >= ComponentCallbacks2.TRIM_MEMORY_BACKGROUND) {
            pauseP2 = true;
            cache.trimToSize(cache.maxSize() / 4);
        } else if (level >= ComponentCallbacks2.TRIM_MEMORY_RUNNING_LOW) {
            pauseP2 = true;
            cache.trimToSize(cache.maxSize() / 2);
        }
        try {
            IconPackManager.trimMemory(app, level);
        } catch (Throwable ignored) {}
    }

    /** Low-priority maintenance after a completed online-icon write, never on page open. */
    public void trimOnlineDiskCacheAsync() {
        long now = android.os.SystemClock.uptimeMillis();
        if (now - lastDiskTrim < 60000L || !diskTrimQueued.compareAndSet(false, true)) return;
        lastDiskTrim = now;
        enqueueRender(new RenderTask(null, Priority.P2_IDLE, new DrawableLoader() {
            public Drawable load() {
                try { trimOnlineDiskCache(); } finally { diskTrimQueued.set(false); }
                return null;
            }
        }, sequence.incrementAndGet()));
    }

    private void trimOnlineDiskCache() {
        File dir = new File(app.getFilesDir(), "online_icon_cache_v4");
        File[] files = dir.listFiles();
        if (files == null) return;
        long total = 0;
        ArrayList<File> candidates = new ArrayList<File>();
        for (File file : files) {
            if (!file.isFile() || file.getName().endsWith(".tmp")) continue;
            total += file.length(); candidates.add(file);
        }
        if (total <= DISK_LIMIT_BYTES) return;
        Collections.sort(candidates, new Comparator<File>() {
            public int compare(File a, File b) { return a.lastModified() < b.lastModified() ? -1 : 1; }
        });
        long target = DISK_LIMIT_BYTES * 85L / 100L;
        for (File file : candidates) {
            if (total <= target) break;
            long size = file.length();
            if (file.delete()) total -= size;
        }
    }

    @Override public void onTrimMemory(int level) { trimMemory(level); }
    @Override public void onConfigurationChanged(Configuration configuration) { }
    @Override public void onLowMemory() { trimMemory(ComponentCallbacks2.TRIM_MEMORY_COMPLETE); }

    private final class RenderTask implements Runnable, Comparable<RenderTask> {
        final RequestSession session; final IconRenderKey key; final Priority priority; final DrawableLoader loader; final long order;
        final ArrayList<PendingCallback> callbacks;
        String requiredOnlineSource;
        boolean onlineAttempted;
        RenderTask(RequestSession session, IconRenderKey key, Priority priority, DrawableLoader loader,
                   ArrayList<PendingCallback> callbacks, long order) {
            this.session = session; this.key = key; this.priority = priority; this.loader = loader;
            this.callbacks = callbacks; this.order = order;
        }
        RenderTask(IconRenderKey key, Priority priority, DrawableLoader loader, long order) {
            this(null, key, priority, loader, null, order);
        }
        public int compareTo(RenderTask other) {
            int result = priority.ordinal() - other.priority.ordinal();
            return result != 0 ? result : (order < other.order ? -1 : (order == other.order ? 0 : 1));
        }
        public void run() {
            if (key == null) {
                if ((session != null && !isSessionActive(session))
                        || (priority == Priority.P2_IDLE && pauseP2)) return;
                try { loader.load(); } catch (Exception error) {
                    android.util.Log.w("SmartisanPerf", "ICON_METADATA_PREPARE_FAILED", error);
                }
                return;
            }
            if ((priority == Priority.P2_IDLE && pauseP2) || !hasActiveConsumers(key, callbacks)) {
                logPerf("ICON_TASK_SKIP_NO_CONSUMER", key.packageName, key.componentName, key.userSerial, key.sourceType, key.targetPixelSize, 0);
                finish(key, null, callbacks);
                return;
            }
            Bitmap bitmap = null;
            long startMs = android.os.SystemClock.elapsedRealtime();
            if (key != null) {
                logPerf("ICON_DECODE_BEGIN", key.packageName, key.componentName, key.userSerial, key.sourceType, key.targetPixelSize, 0);
            }
            requiredOnlineSource = null;
            CURRENT_RENDER.set(this);
            try { bitmap = drawableToBitmap(loader.load(), key.targetPixelSize); }
            catch (Throwable ignored) { }
            finally { CURRENT_RENDER.remove(); }
            if (requiredOnlineSource != null && !onlineAttempted) {
                if (bitmap != null) bitmap.recycle();
                enqueueOnline(this, requiredOnlineSource);
                return;
            }
            long durationMs = android.os.SystemClock.elapsedRealtime() - startMs;
            if (key != null) {
                logPerf("ICON_DECODE_END", key.packageName, key.componentName, key.userSerial, key.sourceType, key.targetPixelSize, durationMs);
            }
            synchronized (pending) {
                // Cancellation can remove this batch while a loader is still running.
                if (!hasActiveConsumers(key, callbacks)) {
                    if (bitmap != null) bitmap.recycle();
                    return;
                }
                if (bitmap != null) cache.put(key, bitmap);
            }
            finish(key, bitmap, callbacks);
        }
    }

    private void finish(final IconRenderKey key, final Bitmap bitmap,
                        final ArrayList<PendingCallback> expected) {
        final ArrayList<PendingCallback> callbacks;
        synchronized (pending) {
            if (pending.get(key) != expected) return;
            callbacks = pending.remove(key);
        }
        // Detach before posting, so a visible retry never joins an evicted batch.
        main.post(new Runnable() { public void run() {
            if (callbacks == null) return;
            int dropped = 0;
            for (PendingCallback item : callbacks) {
                if (item.session == null || isSessionActive(item.session)) {
                    if (item.callback != null) item.callback.onIconReady(key.toString(), bitmap);
                } else {
                    dropped++;
                }
            }
            if (dropped > 0) {
                logSession("ICON_SESSION_CALLBACK_DROP", null, pendingCount(), decodePool.getQueue().size(), dropped);
            }
        }});
    }

    private IconRenderKey defaultKey(String pkg, String component, long user, long version, int px) {
        return new IconRenderKey(pkg, component, user, "DEFAULT", "", version, px,
                app.getResources().getDisplayMetrics().densityDpi, 1);
    }

    private Map<String, java.util.List<String>> sVariantsMap;

    public synchronized ImprovedCandidate resolveImprovedCandidate(String packageName, String componentName) {
        if (TextUtils.isEmpty(packageName)) {
            return new ImprovedCandidate(packageName, componentName, "", false);
        }
        ensureVariantsMapLoaded();
        String normalizedClass = componentName;
        if (!TextUtils.isEmpty(normalizedClass) && normalizedClass.startsWith(".")) {
            normalizedClass = packageName + normalizedClass;
        }

        // Matching order (Requirement III):
        // 1. 系统组件/系统别名候选 (优先于包名候选，确保手机管家优先归属 com.smartisanos.security)
        String systemAlias = smartisanSystemIconAlias(packageName, normalizedClass);
        if (!TextUtils.isEmpty(systemAlias) && checkCandidateExists(systemAlias)) {
            return new ImprovedCandidate(packageName, componentName, systemAlias, true);
        }

        // 2. packageName + 完整 componentName
        if (!TextUtils.isEmpty(normalizedClass)) {
            String key1 = packageName + "_" + normalizedClass;
            if (checkCandidateExists(key1)) {
                return new ImprovedCandidate(packageName, componentName, key1, true);
            }
        }

        // 3. packageName + 规范化 Activity 名
        if (!TextUtils.isEmpty(normalizedClass)) {
            int lastDot = normalizedClass.lastIndexOf('.');
            String simpleName = lastDot >= 0 ? normalizedClass.substring(lastDot + 1) : normalizedClass;
            String key2 = packageName + "_" + simpleName;
            if (checkCandidateExists(key2)) {
                return new ImprovedCandidate(packageName, componentName, key2, true);
            }
        }

        // 4. packageName 主图标
        if (checkCandidateExists(packageName)) {
            return new ImprovedCandidate(packageName, componentName, packageName, true);
        }

        // Explicit catalog aliases only; fuzzy search never participates in automatic matching.
        IconLibraryCatalog catalog = IconLibraryCatalog.peek();
        String aliased = catalog == null ? null : catalog.resolve(packageName, normalizedClass);
        if (aliased != null && catalog.contains(aliased)) {
            return new ImprovedCandidate(packageName, componentName, aliased, true);
        }

        // 5 & 6. variants.json / index.json
        java.util.List<String> variants = sVariantsMap == null ? null : sVariantsMap.get(packageName);
        if (variants != null && !variants.isEmpty()) {
            String firstVariant = stripPng(variants.get(0));
            if (!TextUtils.isEmpty(firstVariant)) {
                return new ImprovedCandidate(packageName, componentName, firstVariant, true);
            }
        }

        return new ImprovedCandidate(packageName, componentName, "", false);
    }

    public synchronized java.util.List<String> getVariantsForPackage(String packageName) {
        ensureVariantsMapLoaded();
        if (TextUtils.isEmpty(packageName) || sVariantsMap == null) {
            return Collections.emptyList();
        }
        java.util.List<String> list = sVariantsMap.get(packageName);
        if (list != null) {
            ArrayList<String> result = new ArrayList<String>();
            for (String item : list) {
                String stripped = stripPng(item);
                if (!TextUtils.isEmpty(stripped) && !result.contains(stripped)) {
                    result.add(stripped);
                }
            }
            return result;
        }
        return Collections.emptyList();
    }

    private boolean checkCandidateExists(String key) {
        IconLibraryCatalog catalog = IconLibraryCatalog.peek();
        if (catalog != null && catalog.contains(key)) return true;
        if (TextUtils.isEmpty(key)) return false;
        // Check built-in resources
        String resName = key.replace('.', '_').replace('-', '_');
        int id = app.getResources().getIdentifier(resName, "drawable", app.getPackageName());
        if (id != 0) return true;

        // Check local disk cache
        File dir = new File(app.getFilesDir(), "online_icon_cache_v4");
        File diskFile = new File(dir, key + ".png");
        if (diskFile.exists() && diskFile.length() > 0) return true;

        // Check variants map
        if (sVariantsMap != null && sVariantsMap.containsKey(key)) return true;

        return false;
    }

    public Drawable loadImprovedIconDrawableCachedOnly(String sourceId) {
        return loadImprovedIconDrawableCachedOnly(sourceId, 0);
    }

    public Drawable loadImprovedIconDrawableCachedOnly(String sourceId, int targetPixelSize) {
        if (TextUtils.isEmpty(sourceId)) return null;
        // 1. Built-in resources
        String resName = sourceId.replace('.', '_').replace('-', '_');
        int resId = app.getResources().getIdentifier(resName, "drawable", app.getPackageName());
        if (resId != 0) {
            try {
                Drawable d = app.getResources().getDrawable(resId);
                if (d != null) return d;
            } catch (Throwable ignored) {}
        }
        // 2. Local disk cache
        File dir = new File(app.getFilesDir(), "online_icon_cache_v4");
        File diskFile = new File(dir, sourceId + ".png");
        if (diskFile.exists() && diskFile.length() > 0) {
            try {
                Bitmap decoded = IconBitmapDecoder.decodeFileNearTarget(diskFile, targetPixelSize);
                if (decoded != null) return new BitmapDrawable(app.getResources(), decoded);
            } catch (Throwable ignored) {}
        }
        return null;
    }

    public Drawable resolveDesktopImprovedIconCachedOnly(String packageName, String componentName, long userSerial, int targetPixelSize) {
        ImprovedCandidate candidate = resolveImprovedCandidate(packageName, componentName);
        if (!candidate.exists || TextUtils.isEmpty(candidate.sourceId)) {
            return null;
        }
        long versionStamp = 0L;
        try {
            versionStamp = app.getPackageManager().getPackageInfo(packageName, 0).lastUpdateTime;
        } catch (Throwable ignored) {}
        IconRenderKey key = new IconRenderKey(packageName, componentName, userSerial, "IMPROVED", candidate.sourceId,
                versionStamp, targetPixelSize, app.getResources().getDisplayMetrics().densityDpi, 1);
        Drawable inMemory = cachedDrawable(key);
        if (inMemory != null) {
            return inMemory;
        }
        return loadImprovedIconDrawableCachedOnly(candidate.sourceId, targetPixelSize);
    }

    public void requestDesktopImprovedIcon(final String packageName, final String componentName, final long userSerial, final int targetPixelSize, final Callback callback) {
        final ImprovedCandidate candidate = resolveImprovedCandidate(packageName, componentName);
        if (!candidate.exists || TextUtils.isEmpty(candidate.sourceId)) {
            if (callback != null) callback.onIconReady("", null);
            return;
        }
        long versionStamp = 0L;
        try {
            versionStamp = app.getPackageManager().getPackageInfo(packageName, 0).lastUpdateTime;
        } catch (Throwable ignored) {}
        IconRenderKey key = new IconRenderKey(packageName, componentName, userSerial, "IMPROVED", candidate.sourceId,
                versionStamp, targetPixelSize, app.getResources().getDisplayMetrics().densityDpi, 1);
        request(key, Priority.P1_ADJACENT, new DrawableLoader() {
            public Drawable load() throws Exception {
                return loadImprovedIconDrawable(candidate.sourceId, targetPixelSize);
            }
        }, callback);
    }

    public Drawable loadImprovedIconDrawable(String sourceId) {
        return loadImprovedIconDrawable(sourceId, 0);
    }

    public Drawable loadImprovedIconDrawable(String sourceId, int targetPixelSize) {
        if (TextUtils.isEmpty(sourceId)) return null;
        // 1. Built-in resources
        String resName = sourceId.replace('.', '_').replace('-', '_');
        int resId = app.getResources().getIdentifier(resName, "drawable", app.getPackageName());
        if (resId != 0) {
            try {
                Drawable d = app.getResources().getDrawable(resId);
                if (d != null) return d;
            } catch (Throwable ignored) {}
        }
        // 2. Local disk cache
        File dir = new File(app.getFilesDir(), "online_icon_cache_v4");
        File diskFile = new File(dir, sourceId + ".png");
        if (diskFile.exists() && diskFile.length() > 0) {
            try {
                Bitmap decoded = IconBitmapDecoder.decodeFileNearTarget(diskFile, targetPixelSize);
                if (decoded != null) return new BitmapDrawable(app.getResources(), decoded);
            } catch (Throwable ignored) {}
        }
        // 3. Online download from mirror
        Bitmap downloaded = downloadOnlineIcon(sourceId, targetPixelSize);
        if (downloaded != null) {
            return new BitmapDrawable(app.getResources(), downloaded);
        }
        return null;
    }

    private Bitmap downloadOnlineIcon(String sourceId) {
        return downloadOnlineIcon(sourceId, 0);
    }

    private Bitmap downloadOnlineIcon(String sourceId, int targetPixelSize) {
        RenderTask task = CURRENT_RENDER.get();
        if (task != null) {
            if (!task.onlineAttempted) task.requiredOnlineSource = sourceId;
            return null;
        }
        // Metadata work on this pool may inspect availability, but must not block on HTTP.
        if (isPreviewWorker()) return null;
        if (Looper.myLooper() == Looper.getMainLooper()) return null;
        if (!fetchOnlineSource(sourceId, null)) return null;
        File file = new File(new File(app.getFilesDir(), "online_icon_cache_v4"), sourceId + ".png");
        return IconBitmapDecoder.decodeFileNearTarget(file, targetPixelSize);
    }

    private void enqueueOnline(RenderTask task, String sourceId) {
        if (!hasActiveConsumers(task.key, task.callbacks)) return;
        synchronized (online) {
            OnlineFetch fetch = online.get(sourceId);
            if (fetch != null) { fetch.tasks.add(task); return; }
            fetch = new OnlineFetch(sourceId);
            fetch.tasks.add(task);
            online.put(sourceId, fetch);
            try { onlinePool.execute(fetch); }
            catch (java.util.concurrent.RejectedExecutionException rejected) {
                online.remove(sourceId);
                finish(task.key, null, task.callbacks);
                logPerf("ICON_IO_QUEUE_FULL", task.key.packageName, task.key.componentName,
                        task.key.userSerial, task.key.sourceType, task.key.targetPixelSize, 0);
            }
        }
    }

    private final class OnlineFetch implements Runnable {
        final String sourceId;
        final ArrayList<RenderTask> tasks = new ArrayList<RenderTask>();
        volatile boolean cancelled;
        OnlineFetch(String sourceId) { this.sourceId = sourceId; }
        public void run() {
            boolean downloaded = !cancelled && fetchOnlineSource(sourceId, this);
            ArrayList<RenderTask> ready;
            synchronized (online) {
                if (online.get(sourceId) != this) return;
                online.remove(sourceId);
                ready = new ArrayList<RenderTask>(tasks);
                tasks.clear();
            }
            RenderTask automaticOwner = null;
            for (RenderTask task : ready) {
                if (task.session != null && !"ICON_LIBRARY".equals(task.session.owner)
                        && hasActiveConsumers(task.key, task.callbacks)) { automaticOwner = task; break; }
            }
            for (RenderTask task : ready) {
                if (!hasActiveConsumers(task.key, task.callbacks)) continue;
                task.onlineAttempted = true;
                enqueueRender(task);
            }
            if (downloaded && automaticOwner != null) {
                final RenderTask owner = automaticOwner;
                schedule(owner.session, Priority.P1_ADJACENT, new Runnable() { public void run() {
                    com.smartisanos.launcher.theme.MaintainedLauncherSettingsHost.onPreviewLibrarySourceDownloaded(
                            app, sourceId, owner.key.packageName, owner.key.componentName);
                }});
            }
        }
    }

    /** Existing mirrors/cache, now raw IO only. Decode resumes on the preview pool. */
    private boolean fetchOnlineSource(String sourceId, OnlineFetch fetch) {
        if (TextUtils.isEmpty(sourceId) || (!sourceId.matches("[A-Za-z0-9._-]+")
                && !"com.miui. delock.theme".equals(sourceId))) return false;
        android.content.SharedPreferences prefs = app.getSharedPreferences("online_icon_cache_v4", Context.MODE_PRIVATE);
        long miss = prefs.getLong("miss." + sourceId, 0L);
        if (miss > 0 && System.currentTimeMillis() - miss < 60L * 60L * 1000L) return false;
        String[] mirrors = new String[]{
            "https://gitee.com/RANH-F/Smartisan-original-launcher-download/raw/master/icons/drawable/",
            "https://raw.githubusercontent.com/RANH-F/Smartisan-original-launcher/main/icons/drawable/"
        };
        boolean allNotFound = true;
        for (String baseUrl : mirrors) {
            if (fetch != null && fetch.cancelled) return false;
            HttpURLConnection conn = null;
            try {
                String encoded = java.net.URLEncoder.encode(sourceId, "UTF-8").replace("+", "%20");
                conn = (HttpURLConnection) new URL(baseUrl + encoded + ".png").openConnection();
                conn.setConnectTimeout(1200);
                conn.setReadTimeout(1800);
                conn.setUseCaches(true);
                conn.setRequestProperty("Accept", "image/png");
                conn.setRequestProperty("User-Agent", "SmartisanLauncher-OnlineIcon/1");
                long deadline = android.os.SystemClock.uptimeMillis() + 8000L;
                int response = conn.getResponseCode();
                if (response != 200) { if (response != 404) allNotFound = false; continue; }
                allNotFound = false;
                String type = conn.getContentType();
                if (type != null && !type.toLowerCase(Locale.US).startsWith("image/")) continue;
                InputStream stream = conn.getInputStream();
                byte[] data;
                try {
                    ByteArrayOutputStream bytes = new ByteArrayOutputStream();
                    byte[] buffer = new byte[8192];
                    int read;
                    while ((read = stream.read(buffer)) != -1) {
                        if ((fetch != null && fetch.cancelled) || bytes.size() + read > 512 * 1024
                                || android.os.SystemClock.uptimeMillis() > deadline) return false;
                        bytes.write(buffer, 0, read);
                    }
                    data = bytes.toByteArray();
                } finally { stream.close(); }
                // Bounds come from PNG IHDR; do not decode a Bitmap on the IO executor.
                if (data.length < 24 || data[0] != (byte)137 || data[1] != 80 || data[2] != 78
                        || data[3] != 71 || data[4] != 13 || data[5] != 10 || data[6] != 26 || data[7] != 10
                        || data[12] != 73 || data[13] != 72 || data[14] != 68 || data[15] != 82) continue;
                java.nio.ByteBuffer header = java.nio.ByteBuffer.wrap(data);
                int width = header.getInt(16), height = header.getInt(20);
                if (width < 32 || height < 32 || width > 1024 || height > 1024) continue;
                if (!hasValidPngChunks(data)) continue;
                if (fetch != null && fetch.cancelled) return false;
                if (saveToDiskCache(sourceId, data)) {
                    prefs.edit().remove("miss." + sourceId).apply();
                    trimOnlineDiskCacheAsync();
                    return true;
                }
            } catch (Exception ignored) { allNotFound = false; }
            finally { if (conn != null) conn.disconnect(); }
        }
        if (allNotFound && (fetch == null || !fetch.cancelled))
            prefs.edit().putLong("miss." + sourceId, System.currentTimeMillis()).apply();
        return false;
    }

    private final class IoOperation implements Runnable {
        final RequestSession session; final Runnable operation;
        IoOperation(RequestSession session, Runnable operation) { this.session = session; this.operation = operation; }
        public void run() { if (isSessionActive(session)) operation.run(); }
    }
    private void purgeMetadataWork(ThreadPoolExecutor pool) {
        for (Runnable queued : pool.getQueue().toArray(new Runnable[0])) {
            if (queued instanceof IoOperation && !isSessionActive(((IoOperation) queued).session))
                pool.getQueue().remove(queued);
        }
    }
    public boolean scheduleMetadata(RequestSession session, Runnable operation) {
        return scheduleMetadataOn(metadataPool, session, operation);
    }
    public boolean scheduleIndex(RequestSession session, Runnable operation) {
        return scheduleMetadataOn(indexPool, session, operation);
    }
    private boolean scheduleMetadataOn(ThreadPoolExecutor pool, RequestSession session, Runnable operation) {
        if (!isSessionActive(session)) return false;
        purgeMetadataWork(pool);
        try { pool.execute(new IoOperation(session, operation)); return true; }
        catch (java.util.concurrent.RejectedExecutionException full) { return false; }
    }
    /** Large directory preparation belongs to bounded IO, never the preview render workers. */
    public boolean scheduleIo(RequestSession session, Runnable operation) {
        if (!isSessionActive(session)) return false;
        try { onlinePool.execute(new IoOperation(session,operation)); return true; }
        catch (java.util.concurrent.RejectedExecutionException full) { return false; }
    }

    private static boolean hasValidPngChunks(byte[] data) {
        int offset = 8;
        java.nio.ByteBuffer bytes = java.nio.ByteBuffer.wrap(data);
        while (offset <= data.length - 12) {
            int length = bytes.getInt(offset);
            if (length < 0 || length > data.length - offset - 12) return false;
            java.util.zip.CRC32 crc = new java.util.zip.CRC32();
            crc.update(data, offset + 4, length + 4);
            if ((int) crc.getValue() != bytes.getInt(offset + 8 + length)) return false;
            if (bytes.getInt(offset + 4) == 0x49454e44) return length == 0 && offset + 12 == data.length;
            offset += length + 12;
        }
        return false;
    }

    public void logPipelineState(String reason) {
        android.util.Log.i("SmartisanPerf", "ICON_PIPELINE " + reason + " decodeActive=" + decodePool.getActiveCount()
                + " decodeQueue=" + decodePool.getQueue().size() + " ioActive=" + onlinePool.getActiveCount()
                + " ioQueue=" + onlinePool.getQueue().size() + " cacheBytes=" + cache.size()
                + " cacheLimit=" + cache.maxSize());
        android.util.Log.i("SmartisanPerf", "ICON_METADATA " + reason + " queryQueue=" + metadataPool.getQueue().size()
                + " indexQueue=" + indexPool.getQueue().size());
    }

    private boolean saveToDiskCache(String sourceId, byte[] data) {
        File tmp = null;
        try {
            File dir = new File(app.getFilesDir(), "online_icon_cache_v4");
            if (!dir.exists() && !dir.mkdirs()) return false;
            File target = new File(dir, sourceId + ".png");
            tmp = File.createTempFile("preview-", ".tmp", dir);
            java.io.FileOutputStream out = new java.io.FileOutputStream(tmp);
            try { out.write(data); out.getFD().sync(); } finally { out.close(); }
            return tmp.renameTo(target);
        } catch (Exception error) { return false; }
        finally { if (tmp != null && tmp.exists()) tmp.delete(); }
    }

    private void ensureVariantsMapLoaded() {
        if (sVariantsMap != null) return;
        HashMap<String, java.util.List<String>> out = new HashMap<String, java.util.List<String>>();
        InputStream in = null;
        try {
            in = app.getAssets().open("icons/variants.json");
            ByteArrayOutputStream bytes = new ByteArrayOutputStream();
            byte[] buf = new byte[8192];
            int len;
            while ((len = in.read(buf)) != -1) bytes.write(buf, 0, len);
            String json = new String(bytes.toByteArray(), "UTF-8");
            JSONObject root = new JSONObject(json);
            JSONObject variants = root.optJSONObject("variants");
            if (variants != null) {
                JSONArray names = variants.names();
                if (names != null) {
                    for (int i = 0; i < names.length(); i++) {
                        String pkg = names.optString(i, null);
                        JSONArray arr = pkg == null ? null : variants.optJSONArray(pkg);
                        if (pkg == null || arr == null) continue;
                        ArrayList<String> list = new ArrayList<String>();
                        for (int j = 0; j < arr.length(); j++) {
                            String value = stripPng(arr.optString(j, null));
                            if (!TextUtils.isEmpty(value) && !list.contains(value)) list.add(value);
                        }
                        if (!list.isEmpty()) out.put(pkg, list);
                    }
                }
            }
        } catch (Throwable ignored) {
        } finally {
            if (in != null) try { in.close(); } catch (Throwable ignored) {}
        }
        sVariantsMap = out;
    }

    private static String stripPng(String value) {
        if (value == null) return null;
        String out = value.trim();
        if (out.toLowerCase(Locale.US).endsWith(".png")) {
            out = out.substring(0, out.length() - 4);
        }
        return out;
    }

    private String smartisanSystemIconAlias(String pkg, String cls) {
        return IconManager.resolveSmartisanSystemIconName(pkg, cls, null);
    }

    private static Bitmap drawableToBitmap(Drawable drawable, int size) {
        if (drawable == null || size <= 0) return null;
        Bitmap out = Bitmap.createBitmap(size, size, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(out);
        int w = Math.max(1, drawable.getIntrinsicWidth());
        int h = Math.max(1, drawable.getIntrinsicHeight());
        float scale = Math.min((float) size / w, (float) size / h);
        int dw = Math.max(1, Math.round(w * scale)); int dh = Math.max(1, Math.round(h * scale));
        int left = (size - dw) / 2; int top = (size - dh) / 2;
        drawable.setBounds(left, top, left + dw, top + dh); drawable.draw(canvas);
        return out;
    }
}
