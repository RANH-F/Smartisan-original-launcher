package com.smartisanos.launcher.quicksearch;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.os.Process;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;

import com.smartisanos.launcher.profile.DoppelgangerCompat;
import com.smartisanos.launcher.install.SmartisanInstallManager;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicLong;
import java.lang.ref.WeakReference;

/**
 * Process-local, read-only application index prepared after the Launcher first frame.
 * Q2 deliberately does not connect this snapshot to the maintained search UI.
 */
public final class SearchIndexRepository {
    public enum State { EMPTY, BUILDING, READY, DIRTY, FAILED }

    public interface SnapshotListener {
        void onSnapshotPublished(SearchSnapshot snapshot);
    }

    private static volatile SearchIndexRepository sInstance;
    private static volatile boolean sLauncherModelReady;
    private static final ConcurrentHashMap<String, String> MODEL_PACKAGE_REASONS =
            new ConcurrentHashMap<String, String>();
    private static final Object MODEL_TASK_LOCK = new Object();
    private static final LinkedHashMap<String, PackageTarget> PENDING_MODEL_TARGETS =
            new LinkedHashMap<String, PackageTarget>();

    private final Context appContext;
    private final ExecutorService executor;
    private final AtomicLong generationCounter = new AtomicLong();
    private final Object stateLock = new Object();
    private final CopyOnWriteArrayList<WeakReference<SnapshotListener>> snapshotListeners =
            new CopyOnWriteArrayList<WeakReference<SnapshotListener>>();

    private volatile SearchSnapshot currentSnapshot = SearchSnapshot.EMPTY;
    private volatile State state = State.EMPTY;
    private boolean warmupRequested;
    private boolean warmupScheduledLogged;
    private String warmupReason = "unspecified";
    private int pendingIncrementalCount;
    private boolean fullRebuildRequested;

    private SearchIndexRepository(Context context) {
        appContext = context.getApplicationContext() == null
                ? context : context.getApplicationContext();
        executor = Executors.newSingleThreadExecutor(new ThreadFactory() {
            @Override
            public Thread newThread(Runnable runnable) {
                Thread thread = new Thread(runnable, "QuickSearchIndex");
                thread.setDaemon(true);
                return thread;
            }
        });
    }

    public static SearchIndexRepository get(Context context) {
        if (context == null) {
            throw new IllegalArgumentException("context must not be null");
        }
        SearchIndexRepository result = sInstance;
        if (result == null) {
            synchronized (SearchIndexRepository.class) {
                result = sInstance;
                if (result == null) {
                    result = new SearchIndexRepository(context);
                    sInstance = result;
                }
            }
        }
        return result;
    }

    public State getState() {
        return state;
    }

    /** Called from the original MESSAGE_COMPLETE model-ready boundary. */
    public static void onLauncherModelReady() {
        sLauncherModelReady = true;
        SearchIndexRepository repository = sInstance;
        if (repository != null) {
            repository.scheduleIfGatesReady();
        }
    }

    public SearchSnapshot getCurrentSnapshot() {
        return currentSnapshot;
    }

    /** Listener storage is weak so a process repository can never retain a search Activity. */
    public void addSnapshotListener(SnapshotListener listener) {
        if (listener == null) return;
        removeSnapshotListener(listener);
        snapshotListeners.add(new WeakReference<SnapshotListener>(listener));
        SearchSnapshot snapshot = currentSnapshot;
        if (snapshot.generation > 0L) {
            listener.onSnapshotPublished(snapshot);
        }
    }

    public void removeSnapshotListener(SnapshotListener listener) {
        for (WeakReference<SnapshotListener> reference : snapshotListeners) {
            SnapshotListener value = reference.get();
            if (value == null || value == listener) {
                snapshotListeners.remove(reference);
            }
        }
    }

    private void notifySnapshotPublished(SearchSnapshot snapshot) {
        for (WeakReference<SnapshotListener> reference : snapshotListeners) {
            SnapshotListener listener = reference.get();
            if (listener == null) {
                snapshotListeners.remove(reference);
            } else {
                try {
                    listener.onSnapshotPublished(snapshot);
                } catch (Throwable ignored) {
                    // A UI listener must never break index publication.
                }
            }
        }
    }

    /** Records semantics only; actual refresh is scheduled at the model-complete boundary. */
    public static void noteModelPackageDispatch(String packageName, int userId, String reason) {
        if (!TextUtils.isEmpty(packageName)) {
            MODEL_PACKAGE_REASONS.put(packageUserKey(packageName, userId),
                    reason == null ? "changed" : reason);
        }
    }

    /**
     * Called from DatabaseHandler after both database work and Aa.fi/PageView synchronization.
     * Parameters deliberately use Object/List so classes2.dex does not link against main-dex
     * obfuscated classes at javac time.
     */
    public static void onLauncherModelPackageUpdateComplete(Object action, List items,
            List params) {
        SearchIndexRepository repository = sInstance;
        if (repository == null || action == null) {
            return;
        }
        String actionName = String.valueOf(action);
        if (!isPackageAction(actionName)) {
            return;
        }
        PackageTarget target = packageTarget(actionName, items, params);
        if (target == null || TextUtils.isEmpty(target.packageName)) {
            return;
        }
        String notedReason = MODEL_PACKAGE_REASONS.remove(
                packageUserKey(target.packageName, target.userId));
        String reason = notedReason == null ? reasonForAction(actionName) : notedReason;
        repository.schedulePackageUpdate(target.packageName, target.userId,
                isRemoveAction(actionName), reason);
    }

    /** Called after an original PackageTask has actually mutated Aa.fi/PageView. */
    public static void onLauncherModelPackageTaskComplete(String packageName, int taskType,
            Object action, List taskItems, boolean batchComplete) {
        if (TextUtils.isEmpty(packageName) || taskType < 1 || taskType > 3) {
            return;
        }
        int userId = firstUserId(taskItems, taskType == 1 ? 0 : -1);
        NotedReason noted = consumeNotedReason(packageName, userId);
        if (noted != null) {
            userId = noted.userId;
        }
        String reason = noted == null
                ? (taskType == 1 ? "added" : (taskType == 2 ? "removed" : "changed"))
                : noted.reason;
        PackageTarget target = new PackageTarget(packageName, userId,
                taskType == 2, reason);
        ArrayList<PackageTarget> ready = null;
        synchronized (MODEL_TASK_LOCK) {
            PENDING_MODEL_TARGETS.put(packageUserKey(packageName, userId), target);
            if (batchComplete) {
                ready = new ArrayList<PackageTarget>(PENDING_MODEL_TARGETS.values());
                PENDING_MODEL_TARGETS.clear();
            }
        }
        if (ready == null) {
            return;
        }
        SearchIndexRepository repository = sInstance;
        if (repository == null) {
            return;
        }
        for (PackageTarget update : ready) {
            SmartisanInstallManager.onOriginalPackageModelUpdateComplete(update.packageName);
            repository.schedulePackageUpdate(update.packageName, update.userId,
                    update.removeOnly, update.reason);
        }
    }

    public void scheduleWarmup() {
        scheduleWarmup("unspecified");
    }

    public void scheduleWarmup(String reason) {
        synchronized (stateLock) {
            warmupRequested = true;
            warmupReason = reason == null ? "unspecified" : reason;
            if (state == State.BUILDING || state == State.READY) {
                return;
            }
            if (!warmupScheduledLogged) {
                warmupScheduledLogged = true;
                QuickSearchIndexLogger.event("QS_INDEX_WARMUP_SCHEDULED",
                        generationCounter.get() + 1L, currentSnapshot.entries.size(), 0L,
                        warmupReason);
            }
        }
        scheduleIfGatesReady();
    }

    private void scheduleIfGatesReady() {
        synchronized (stateLock) {
            if (!warmupRequested || !sLauncherModelReady
                    || state == State.BUILDING || state == State.READY
                    || state == State.DIRTY) {
                return;
            }
            rebuildAsync(warmupReason);
        }
    }

    public void rebuildAsync(final String reason) {
        final long generation;
        synchronized (stateLock) {
            if (state == State.BUILDING || state == State.DIRTY) {
                fullRebuildRequested = true;
                state = State.DIRTY;
                return;
            }
            state = State.BUILDING;
            generation = currentSnapshot.generation + 1L;
        }
        executor.execute(new Runnable() {
            @Override
            public void run() {
                buildSnapshot(generation, reason);
            }
        });
    }

    private void buildSnapshot(long generation, String reason) {
        long begin = SystemClock.elapsedRealtime();
        QuickSearchIndexLogger.event("QS_INDEX_BUILD_BEGIN", generation, 0, 0L, reason);
        try {
            try {
                Process.setThreadPriority(Process.THREAD_PRIORITY_BACKGROUND);
            } catch (Throwable ignored) {
                // Priority tuning must never prevent a usable snapshot.
            }
            Map modelSnapshot = launcherModelSnapshot();
            int modelCount = modelSnapshot == null ? 0 : modelSnapshot.size();
            QuickSearchIndexLogger.event("QS_INDEX_BASE_DATA_READY", generation,
                    modelCount, SystemClock.elapsedRealtime() - begin, reason);
            BuildResult result = buildEntries(modelSnapshot);
            List<SearchEntry> entries = result.entries;
            long elapsed = SystemClock.elapsedRealtime() - begin;
            QuickSearchIndexLogger.identity(generation, result.candidateCount,
                    result.duplicateCount, elapsed, reason);
            SearchSnapshot snapshot = new SearchSnapshot(entries, generation);
            currentSnapshot = snapshot;
            generationCounter.set(generation);
            notifySnapshotPublished(snapshot);
            boolean rebuildAgain;
            synchronized (stateLock) {
                rebuildAgain = fullRebuildRequested;
                fullRebuildRequested = false;
                state = rebuildAgain ? State.EMPTY
                        : (pendingIncrementalCount > 0 ? State.DIRTY : State.READY);
            }
            QuickSearchIndexLogger.event("QS_INDEX_BUILD_END", generation,
                    entries.size(), elapsed, reason);
            QuickSearchIndexLogger.event("QS_INDEX_READY", generation,
                    entries.size(), elapsed, reason);
            Log.i(QuickSearchIndexLogger.TAG,
                    "QS_ICON_DIAG_CALL_BEGIN entries=" + entries.size());
            try {
                SearchIconBridge.diagnoseOnce(appContext, entries);
                Log.i(QuickSearchIndexLogger.TAG,
                        "QS_ICON_DIAG_CALL_END entries=" + entries.size());
            } catch (Throwable error) {
                Log.e(QuickSearchIndexLogger.TAG,
                        "QS_ICON_DIAG_FAILED type=" + error.getClass().getName());
            }
            SearchIconBackend.scheduleHydration(appContext, snapshot);
            if (rebuildAgain) {
                rebuildAsync(reason + "_dirty");
            }
        } catch (Throwable error) {
            synchronized (stateLock) {
                state = State.FAILED;
            }
            QuickSearchIndexLogger.failure(generation,
                    SystemClock.elapsedRealtime() - begin, reason, error);
        }
    }

    public void schedulePackageUpdate(final String packageName, final int userId,
            final boolean removeOnly, final String reason) {
        if (TextUtils.isEmpty(packageName)) {
            return;
        }
        SearchIconBackend.invalidatePackage(packageName, userId);
        synchronized (stateLock) {
            if (currentSnapshot.generation == 0L && state != State.BUILDING
                    && state != State.DIRTY) {
                // A later Q2 full build will already observe the latest Launcher model.
                return;
            }
            pendingIncrementalCount++;
            state = State.DIRTY;
        }
        SearchSnapshot queued = currentSnapshot;
        QuickSearchIndexLogger.incremental("QS_INDEX_INCREMENTAL_QUEUED", packageName,
                reason, queued.generation, queued.generation, queued.entries.size(),
                queued.entries.size(), 0, 0, 0, 0L);
        executor.execute(new Runnable() {
            @Override
            public void run() {
                applyPackageUpdate(packageName, userId, removeOnly, reason);
            }
        });
    }

    private void applyPackageUpdate(String packageName, int userId, boolean removeOnly,
            String reason) {
        long begin = SystemClock.elapsedRealtime();
        SearchSnapshot before = currentSnapshot;
        QuickSearchIndexLogger.incremental("QS_INDEX_INCREMENTAL_BEGIN", packageName,
                reason, before.generation, before.generation, before.entries.size(),
                before.entries.size(), 0, 0, 0, 0L);
        try {
            if (before.generation == 0L) {
                throw new IllegalStateException("incremental base snapshot unavailable");
            }
            BuildResult packageResult = removeOnly
                    ? new BuildResult(Collections.<SearchEntry>emptyList(), 0, 0)
                    : buildEntries(launcherModelSnapshot(), packageName, userId);
            IncrementalResult result = mergePackage(before.entries, packageResult.entries,
                    packageName, userId);
            long generation = before.generation + 1L;
            SearchSnapshot after = new SearchSnapshot(result.entries, generation);
            currentSnapshot = after;
            generationCounter.set(generation);
            notifySnapshotPublished(after);
            finishIncremental(false);
            QuickSearchIndexLogger.incremental("QS_INDEX_INCREMENTAL_END", packageName,
                    reason, before.generation, generation, before.entries.size(),
                    after.entries.size(), result.added, result.removed, result.updated,
                    SystemClock.elapsedRealtime() - begin);
            SearchIconBackend.scheduleHydration(appContext, after);
        } catch (Throwable error) {
            finishIncremental(true);
            QuickSearchIndexLogger.incrementalFailure(packageName, reason, before.generation,
                    before.entries.size(), SystemClock.elapsedRealtime() - begin, error);
        }
    }

    private void finishIncremental(boolean failed) {
        synchronized (stateLock) {
            pendingIncrementalCount = Math.max(0, pendingIncrementalCount - 1);
            if (pendingIncrementalCount > 0 || fullRebuildRequested) {
                state = State.DIRTY;
            } else {
                state = failed ? State.FAILED : State.READY;
            }
        }
    }

    private BuildResult buildEntries(Map modelSnapshot) throws Exception {
        return buildEntries(modelSnapshot, null, -1);
    }

    private BuildResult buildEntries(Map modelSnapshot, String packageFilter, int userFilter)
            throws Exception {
        LinkedHashMap<String, SearchEntry> unique = new LinkedHashMap<String, SearchEntry>();
        int candidateCount = 0;
        int duplicateCount = 0;
        if (modelSnapshot != null) {
            for (Object value : modelSnapshot.values()) {
                if (value == null) {
                    continue;
                }
                int itemType = ((Number) value.getClass().getField("itemType").get(value))
                        .intValue();
                String packageName = stringField(value, "packageName");
                String className = stringField(value, "componentName");
                if (itemType != 0 || TextUtils.isEmpty(packageName)
                        || TextUtils.isEmpty(className)) {
                    continue;
                }
                candidateCount++;
                int itemUserId = ((Number) value.getClass().getField("userId").get(value))
                        .intValue();
                int userId = itemUserId >= 0 ? itemUserId : Process.myUid() / 100000;
                if (packageFilter != null && (!packageFilter.equals(packageName)
                        || (userFilter >= 0 && userFilter != userId))) {
                    continue;
                }
                long profileSerial = profileSerial(userId);
                String label = stringField(value, "title").trim();
                if (label.length() == 0) {
                    label = loadMissingLabel(packageName, className);
                }
                String iconKey = packageName + "/" + className + "@"
                        + (profileSerial >= 0L ? profileSerial : userId);
                SearchEntry entry = new SearchEntry(label, normalizeLabel(label),
                        packageName, className, userId, profileSerial,
                        null, iconKey);
                if (!unique.containsKey(entry.entryKey)) {
                    unique.put(entry.entryKey, entry);
                } else {
                    duplicateCount++;
                }
            }
        }
        ArrayList<SearchEntry> entries = new ArrayList<SearchEntry>(unique.values());
        Collections.sort(entries, new Comparator<SearchEntry>() {
            @Override
            public int compare(SearchEntry left, SearchEntry right) {
                int label = left.normalizedLabel.compareTo(right.normalizedLabel);
                return label != 0 ? label : left.entryKey.compareTo(right.entryKey);
            }
        });
        return new BuildResult(entries, candidateCount, duplicateCount);
    }

    private static IncrementalResult mergePackage(List<SearchEntry> oldEntries,
            List<SearchEntry> replacement, String packageName, int userId) {
        LinkedHashMap<String, SearchEntry> merged = new LinkedHashMap<String, SearchEntry>();
        LinkedHashMap<String, SearchEntry> oldTarget = new LinkedHashMap<String, SearchEntry>();
        LinkedHashMap<String, SearchEntry> newTarget = new LinkedHashMap<String, SearchEntry>();
        for (SearchEntry entry : oldEntries) {
            if (matchesScope(entry, packageName, userId)) {
                oldTarget.put(entry.entryKey, entry);
            } else {
                merged.put(entry.entryKey, entry);
            }
        }
        for (SearchEntry entry : replacement) {
            if (matchesScope(entry, packageName, userId)) {
                newTarget.put(entry.entryKey, entry);
                merged.put(entry.entryKey, entry);
            }
        }
        int added = 0;
        int removed = 0;
        int updated = 0;
        for (Map.Entry<String, SearchEntry> entry : newTarget.entrySet()) {
            SearchEntry old = oldTarget.get(entry.getKey());
            if (old == null) {
                added++;
            } else if (!sameMetadata(old, entry.getValue())) {
                updated++;
            }
        }
        for (String key : oldTarget.keySet()) {
            if (!newTarget.containsKey(key)) {
                removed++;
            }
        }
        ArrayList<SearchEntry> entries = new ArrayList<SearchEntry>(merged.values());
        sortEntries(entries);
        return new IncrementalResult(entries, added, removed, updated);
    }

    private static boolean matchesScope(SearchEntry entry, String packageName, int userId) {
        return entry != null && packageName.equals(entry.packageName)
                && (userId < 0 || userId == entry.userId);
    }

    private static boolean sameMetadata(SearchEntry left, SearchEntry right) {
        return left.label.equals(right.label)
                && left.normalizedLabel.equals(right.normalizedLabel)
                && left.iconKey.equals(right.iconKey);
    }

    private static void sortEntries(List<SearchEntry> entries) {
        Collections.sort(entries, new Comparator<SearchEntry>() {
            @Override
            public int compare(SearchEntry left, SearchEntry right) {
                int label = left.normalizedLabel.compareTo(right.normalizedLabel);
                return label != 0 ? label : left.entryKey.compareTo(right.entryKey);
            }
        });
    }

    private static boolean isPackageAction(String action) {
        return "EVENT_INSERT_APP".equals(action) || "EVENT_UPDATE_APP".equals(action)
                || "EVENT_REMOVE_APP".equals(action)
                || "EVENT_USER_PACKAGE_ADDED".equals(action)
                || "EVENT_USER_PACKAGE_CHANGED".equals(action)
                || "EVENT_USER_PACKAGE_REMOVED".equals(action);
    }

    private static boolean isRemoveAction(String action) {
        return "EVENT_REMOVE_APP".equals(action)
                || "EVENT_USER_PACKAGE_REMOVED".equals(action);
    }

    private static String reasonForAction(String action) {
        if (isRemoveAction(action)) return "removed";
        if ("EVENT_UPDATE_APP".equals(action)
                || "EVENT_USER_PACKAGE_CHANGED".equals(action)) return "changed";
        return "added";
    }

    private static PackageTarget packageTarget(String action, List items, List params) {
        String packageName = firstString(params);
        if (packageName == null) packageName = firstPackageField(items);
        int userId = action.startsWith("EVENT_USER_PACKAGE_")
                ? firstNumber(params, -1) : 0;
        return packageName == null ? null : new PackageTarget(packageName, userId);
    }

    private static String firstString(List values) {
        if (values == null) return null;
        for (Object value : values) {
            if (value instanceof String && !TextUtils.isEmpty((String) value)) {
                return (String) value;
            }
        }
        return null;
    }

    private static int firstNumber(List values, int fallback) {
        if (values == null) return fallback;
        for (Object value : values) {
            if (value instanceof Number) return ((Number) value).intValue();
        }
        return fallback;
    }

    private static int firstUserId(List values, int fallback) {
        if (values == null) return fallback;
        for (Object value : values) {
            if (value instanceof List) {
                int nested = firstUserId((List) value, Integer.MIN_VALUE);
                if (nested != Integer.MIN_VALUE) return nested;
            } else if (value != null) {
                try {
                    Object user = value.getClass().getField("userId").get(value);
                    if (user instanceof Number) return ((Number) user).intValue();
                } catch (Throwable ignored) { }
            }
        }
        return fallback;
    }

    private static NotedReason consumeNotedReason(String packageName, int userId) {
        if (userId >= 0) {
            String exact = MODEL_PACKAGE_REASONS.remove(packageUserKey(packageName, userId));
            if (exact != null) return new NotedReason(userId, exact);
        }
        String prefix = packageName + '#';
        for (Map.Entry<String, String> entry : MODEL_PACKAGE_REASONS.entrySet()) {
            if (!entry.getKey().startsWith(prefix)
                    || !MODEL_PACKAGE_REASONS.remove(entry.getKey(), entry.getValue())) {
                continue;
            }
            try {
                int notedUser = Integer.parseInt(entry.getKey().substring(prefix.length()));
                return new NotedReason(notedUser, entry.getValue());
            } catch (NumberFormatException ignored) {
                return new NotedReason(userId, entry.getValue());
            }
        }
        return null;
    }

    private static String firstPackageField(List values) {
        if (values == null) return null;
        for (Object value : values) {
            try {
                String packageName = stringField(value, "packageName");
                if (!TextUtils.isEmpty(packageName)) return packageName;
            } catch (Throwable ignored) { }
        }
        return null;
    }

    private static String packageUserKey(String packageName, int userId) {
        return packageName + '#' + userId;
    }

    private Map launcherModelSnapshot() throws Exception {
        Class<?> launcherModel = Class.forName("com.smartisanos.launcher.Aa");
        Object snapshot = launcherModel.getMethod("nc").invoke(null);
        if (!(snapshot instanceof Map)) {
            throw new IllegalStateException("LauncherModel snapshot unavailable");
        }
        return (Map) snapshot;
    }

    private static String stringField(Object target, String name) throws Exception {
        Object value = target.getClass().getField(name).get(target);
        return value == null ? "" : String.valueOf(value);
    }

    private String loadMissingLabel(String packageName, String className) {
        try {
            PackageManager pm = appContext.getPackageManager();
            ActivityInfo info = pm.getActivityInfo(new ComponentName(packageName, className), 0);
            CharSequence label = info.loadLabel(pm);
            return label == null ? packageName : label.toString().trim();
        } catch (Throwable ignored) {
            return packageName;
        }
    }

    private long profileSerial(int userId) {
        try {
            long serial = DoppelgangerCompat.profileSerialForUserId(appContext, userId);
            return serial >= 0L ? serial : userId;
        } catch (Throwable ignored) {
            return userId;
        }
    }

    private static String normalizeLabel(String label) {
        return label == null ? "" : label.trim().toLowerCase(Locale.ROOT);
    }

    private static final class BuildResult {
        final List<SearchEntry> entries;
        final int candidateCount;
        final int duplicateCount;

        BuildResult(List<SearchEntry> entries, int candidateCount, int duplicateCount) {
            this.entries = entries;
            this.candidateCount = candidateCount;
            this.duplicateCount = duplicateCount;
        }
    }

    private static final class IncrementalResult {
        final List<SearchEntry> entries;
        final int added;
        final int removed;
        final int updated;

        IncrementalResult(List<SearchEntry> entries, int added, int removed, int updated) {
            this.entries = entries;
            this.added = added;
            this.removed = removed;
            this.updated = updated;
        }
    }

    private static final class PackageTarget {
        final String packageName;
        final int userId;
        final boolean removeOnly;
        final String reason;

        PackageTarget(String packageName, int userId) {
            this(packageName, userId, false, "changed");
        }

        PackageTarget(String packageName, int userId, boolean removeOnly, String reason) {
            this.packageName = packageName;
            this.userId = userId;
            this.removeOnly = removeOnly;
            this.reason = reason;
        }
    }

    private static final class NotedReason {
        final int userId;
        final String reason;

        NotedReason(int userId, String reason) {
            this.userId = userId;
            this.reason = reason;
        }
    }
}
