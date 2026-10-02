package com.smartisanos.launcher.model;

import android.content.Context;
import android.os.UserHandle;
import android.util.Log;

import com.smartisanos.launcher.quicksearch.SearchIndexRepository;
import com.smartisanos.launcher.theme.MaintainedLauncherSettingsHost;

import java.lang.reflect.Method;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Map;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

/** Only model-facing business facade. Original Aa/database code stays below this boundary. */
public final class LauncherModelRepository {
    private static final String TAG = "LauncherModelRepository";
    private final Context app;
    public LauncherModelRepository(Context context) { app = context == null ? null : context.getApplicationContext(); }

    public static void beginStartup(Context context) {
        Log.i(TAG, "[MODEL][STARTUP] source=legacy_model mode=event_driven");
    }
    public static void noteStartupQueryIssue(String stage) {
        Log.w(TAG, "[MODEL][SNAPSHOT_UNTRUSTED] stage=" + stage + " action=retain");
    }
    public static void noteFolderOrphan(Object folder, int index) {
        Log.w(TAG, "[FOLDER][ORPHAN] folder=" + folder + " index=" + index);
    }
    public static void noteActiveIconOwnerMissing(Object folder, String packageName, String type) {
        Log.w(TAG, "[ACTIVEICON][OWNER_MISSING] type=" + type + " package=" + packageName + " folder=" + folder);
    }
    public static void noteSceneNotReady(String reason) {
        Log.w(TAG, "[UNINSTALL][SCENE_NOT_READY] reason=" + reason);
    }

    /**
     * The one startup reconciliation path. Legacy database access remains below this facade,
     * while every removal decision uses the modern Profile/Package/Removal contracts.
     */
    public static void reconcileStartupFromLegacyDb() {
        try {
            Class<?> table = Class.forName("com.smartisanos.launcher.data.a.l");
            Method query = table.getMethod("V", String.class);
            Object result = query.invoke(null, "(user = 10 OR user = 0) AND pageIndex != -2");
            if (result instanceof List) reconcileStartupItems((List<?>) result);
        } catch (Throwable error) {
            Log.w(TAG, "[MODEL][STARTUP] result=retain reason=legacy_query_failed", error);
        }
    }

    public static void reconcileStartupItems(List<?> items) {
        Context context = launcherApplication();
        if (context == null || items == null) {
            Log.w(TAG, "[MODEL][STARTUP] result=retain reason=context_or_items_missing");
            return;
        }
        ProfileRepository profiles = new ProfileRepository(context);
        PackageStateRepository packages = new PackageStateRepository(context, profiles);
        RemovalGateway removal = new RemovalGateway();
        LauncherModelRepository model = new LauncherModelRepository(context);
        Set<Long> processed = new HashSet<Long>();
        for (Object item : items) {
            String packageName = stringField(item, "packageName");
            if (packageName.length() == 0) continue;
            long itemId = longField(item, "id", -1L);
            if (itemId < 0L || !processed.add(Long.valueOf(itemId))) continue;
            int itemType = (int) longField(item, "itemType", -1L);
            if (itemType != 0) continue;
            int legacyUserId = legacyUserId(item);
            UserHandle user = profiles.userForLegacyId(legacyUserId);
            long serial = profiles.serialFor(user);
            if (serial < 0L) {
                Log.i(TAG, "[MODEL][UNAVAILABLE] itemId=" + longField(item, "id", -1L)
                        + " reason=UNKNOWN_USER_SERIAL legacyUserId=" + legacyUserId);
                continue;
            }
            LauncherItemKey key = new LauncherItemKey(serial, packageName, stringField(item, "componentName"));
            ProfileState profileState = profiles.stateFor(user);
            PackageStateRepository.PackageStateResult packageState = packages.query(key, user, false);
            if (packageState.state != PackageState.REMOVED_CONFIRMED) {
                if (packageState.state == PackageState.PRESENT) model.restoreAvailable(key, "startup_" + packageState.reason);
                else model.markUnavailable(key, "startup_" + packageState.state + "_" + packageState.reason);
                continue;
            }
            RemovalGateway.RemovalRequest request = new RemovalGateway.RemovalRequest(key,
                    "startup_reconcile", "SYSTEM_REMOVAL", false, packageState.state,
                    profileState, itemId, legacyUserId, itemType);
            RemovalGateway.Decision decision = removal.evaluate(request);
            if (decision.outcome == RemovalGateway.Outcome.CONFIRMED) {
                model.commitRemove(request);
            }
        }
    }

    private static Context launcherApplication() {
        try {
            Object launcher = Class.forName("com.smartisanos.launcher.ja").getMethod("getInstance").invoke(null);
            Object app = launcher.getClass().getMethod("getApplication").invoke(launcher);
            return app instanceof Context ? ((Context) app).getApplicationContext() : null;
        } catch (Throwable error) { return null; }
    }
    private static int legacyUserId(Object item) {
        int value = (int) longField(item, "userId", -1L);
        // Original model uses -1 for the primary user in some pre-migration rows.
        return value < 0 ? 0 : value;
    }
    private static String stringField(Object item, String name) {
        try { Object value = item.getClass().getField(name).get(item); return value == null ? "" : String.valueOf(value); }
        catch (Throwable ignored) { return ""; }
    }
    private static long longField(Object item, String name, long fallback) {
        try { Object value = item.getClass().getField(name).get(item); return value instanceof Number ? ((Number) value).longValue() : fallback; }
        catch (Throwable ignored) { return fallback; }
    }

    public void markUnavailable(LauncherItemKey key, String reason) {
        Log.i(TAG, "[MODEL][UNAVAILABLE] key=" + key + " reason=" + reason);
    }
    /** User workspace actions do not need package-removal evidence, but may not bypass Model. */
    public static boolean removeWorkspaceItem(Object item, String source) {
        if (item == null) return false;
        try {
            Class<?> itemInfo = Class.forName("com.smartisanos.launcher.data.ItemInfo");
            Class<?> aa = Class.forName("com.smartisanos.launcher.Aa");
            aa.getMethod("a", itemInfo).invoke(null, item);
            Log.i(TAG, "[MODEL][REMOVE] type=USER_WORKSPACE_REMOVE source=" + source);
            return true;
        } catch (Throwable error) {
            Log.w(TAG, "[MODEL][REMOVE] type=USER_WORKSPACE_REMOVE source=" + source + " result=failed", error);
            return false;
        }
    }
    public void restoreAvailable(LauncherItemKey key, String reason) {
        Log.i(TAG, "[MODEL][RESTORE] key=" + key + " reason=" + reason);
    }

    /** System UI has returned; reconcile only its exact application item through the frozen gate. */
    public static boolean finishSystemUninstall(Object item) {
        Context context = launcherApplication();
        if (context == null || item == null || longField(item, "itemType", -1L) != 0L) return false;
        long id = longField(item, "id", -1L);
        int legacyUser = legacyUserId(item);
        ProfileRepository profiles = new ProfileRepository(context);
        UserHandle user = profiles.userForLegacyId(legacyUser);
        LauncherItemKey key = new LauncherItemKey(profiles.serialFor(user), stringField(item, "packageName"),
                stringField(item, "componentName"));
        if (id < 0 || !key.isValid()) return false;
        PackageState state = new PackageStateRepository(context, profiles).query(key, user, false).state;
        RemovalGateway gate = new RemovalGateway();
        RemovalGateway.RemovalRequest request = new RemovalGateway.RemovalRequest(key,
                "system_uninstall_return", "SYSTEM_REMOVAL", false, state, profiles.stateFor(user),
                id, legacyUser, 0);
        if (gate.evaluate(request).outcome != RemovalGateway.Outcome.CONFIRMED) return false;
        // A broadcast may already have committed this same item while the system window was open.
        return currentModelItem(id) == null || new LauncherModelRepository(context).commitRemove(request);
    }
    /**
     * System removal executor. It deliberately accepts an item identity, never a package-only request.
     * Aa.a(ItemInfo) is the original single-item writer; this facade has no package-wide executor.
     */
    public boolean commitRemove(RemovalGateway.RemovalRequest request) {
        if (app == null || request == null || request.key == null || !request.key.isValid() || request.itemId < 0L) return false;
        Object item = currentModelItem(request.itemId);
        if (item == null) {
            Log.w(TAG, "[MODEL][REMOVE_NO_ITEM] itemId=" + request.itemId + " key=" + request.key);
            return false;
        }
        if (!matchesRemovalIdentity(item, request)) {
            Log.w(TAG, "[MODEL][REMOVE_IDENTITY_MISMATCH] itemId=" + request.itemId + " key=" + request.key
                    + " modelPackage=" + stringField(item, "packageName")
                    + " modelComponent=" + stringField(item, "componentName")
                    + " modelUserId=" + legacyUserId(item)
                    + " modelItemType=" + longField(item, "itemType", -1L));
            return false;
        }
        try {
            Class<?> itemInfo = Class.forName("com.smartisanos.launcher.data.ItemInfo");
            Class<?> aa = Class.forName("com.smartisanos.launcher.Aa");
            aa.getMethod("a", itemInfo).invoke(null, item);
            com.smartisanos.launcher.compat.UninstallCompat.onRemovalCommitted(item);
            SearchIndexRepository.noteModelPackageDispatch(request.key.packageName, request.legacyUserId, "removed");
            MaintainedLauncherSettingsHost.clearCachedImprovedIcon(app, request.key.packageName);
            Log.i(TAG, "[MODEL][REMOVE_COMMIT] itemId=" + request.itemId + " key=" + request.key
                    + " executor=ITEM_LEVEL source=" + request.source);
            return true;
        } catch (Throwable error) {
            Log.w(TAG, "[MODEL][REMOVE_EXECUTOR_FAILED] itemId=" + request.itemId + " key=" + request.key, error);
            return false;
        }
    }

    /** Enumerates the current Aa.fi model snapshot, including items inside folder model ownership. */
    public int commitPackageRemovals(String packageName, long userSerial, int legacyUserId, String source,
                                     PackageState packageState, ProfileState profileState, RemovalGateway gateway) {
        if (packageName == null || packageName.length() == 0 || userSerial < 0L || gateway == null) return 0;
        int committed = 0;
        for (Object item : currentModelItems()) {
            if (!packageName.equals(stringField(item, "packageName")) || legacyUserId(item) != legacyUserId) continue;
            int itemType = (int) longField(item, "itemType", -1L);
            if (itemType != 0) {
                Log.i(TAG, "[MODEL][REMOVE_SKIP_SPECIAL] itemId=" + longField(item, "id", -1L) + " itemType=" + itemType);
                continue;
            }
            long itemId = longField(item, "id", -1L);
            LauncherItemKey key = new LauncherItemKey(userSerial, packageName, stringField(item, "componentName"));
            RemovalGateway.RemovalRequest request = new RemovalGateway.RemovalRequest(key, source, "SYSTEM_REMOVAL", false,
                    packageState, profileState, itemId, legacyUserId, itemType);
            if (gateway.evaluate(request).outcome == RemovalGateway.Outcome.CONFIRMED && commitRemove(request)) committed++;
        }
        if (committed == 0) Log.i(TAG, "[MODEL][REMOVE_NO_ITEM] package=" + packageName + " legacyUserId=" + legacyUserId);
        return committed;
    }

    /** Read-only Model existence gate for the first-install path. */
    public static boolean hasFormalApplicationItem(String packageName, int legacyUserId) {
        if (packageName == null || packageName.length() == 0) return true;
        try {
            for (Object item : currentModelItems()) {
                if (packageName.equals(stringField(item, "packageName"))
                        && legacyUserId(item) == legacyUserId
                        && longField(item, "itemType", -1L) == 0L) {
                    return true;
                }
            }
            return false;
        } catch (Throwable error) {
            Log.w(TAG, "[MODEL][EXISTENCE_UNKNOWN] package=" + packageName
                    + " legacyUserId=" + legacyUserId + " result=retain", error);
            return true;
        }
    }

    private static Object currentModelItem(long itemId) {
        try {
            Object snapshot = Class.forName("com.smartisanos.launcher.Aa").getMethod("nc").invoke(null);
            if (!(snapshot instanceof Map)) return null;
            return ((Map) snapshot).get(Long.valueOf(itemId));
        } catch (Throwable error) {
            Log.w(TAG, "[MODEL][REMOVE_NO_ITEM] itemId=" + itemId + " reason=model_snapshot_failed", error);
            return null;
        }
    }
    private static Collection currentModelItems() {
        try {
            Object snapshot = Class.forName("com.smartisanos.launcher.Aa").getMethod("nc").invoke(null);
            if (snapshot instanceof Map) return new ArrayList(((Map) snapshot).values());
        } catch (Throwable error) {
            Log.w(TAG, "[MODEL][REMOVE_NO_ITEM] reason=model_snapshot_failed", error);
        }
        return new ArrayList();
    }
    private boolean matchesRemovalIdentity(Object item, RemovalGateway.RemovalRequest request) {
        if (longField(item, "id", -1L) != request.itemId) return false;
        if (legacyUserId(item) != request.legacyUserId) return false;
        ProfileRepository profiles = new ProfileRepository(app);
        UserHandle itemUser = profiles.userForLegacyId(request.legacyUserId);
        if (profiles.serialFor(itemUser) != request.key.userSerial) return false;
        if (longField(item, "itemType", -1L) != request.itemType || request.itemType != 0) return false;
        if (!request.key.packageName.equals(stringField(item, "packageName"))) return false;
        String expectedComponent = request.key.componentName;
        return expectedComponent == null || expectedComponent.length() == 0
                || expectedComponent.equals(stringField(item, "componentName"));
    }
}
