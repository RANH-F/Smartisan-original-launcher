package com.smartisanos.launcher.install;

import android.app.Notification;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.pm.LauncherApps;
import android.content.pm.PackageInstaller;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ShortcutInfo;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Icon;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.UserHandle;
import android.service.notification.StatusBarNotification;
import android.text.TextUtils;
import android.util.Log;

import com.smartisanos.launcher.diagnostics.StartupCompatibilityLogger;
import com.smartisanos.launcher.ShortcutCompatBridge;
import com.smartisanos.launcher.quicksearch.SearchIndexRepository;
import com.smartisanos.launcher.theme.MaintainedLauncherSettingsHost;
import com.smartisanos.launcher.model.LauncherItemKey;
import com.smartisanos.launcher.model.LauncherModelRepository;
import com.smartisanos.launcher.model.PackageEventGateway;
import com.smartisanos.launcher.model.PackageStateRepository;
import com.smartisanos.launcher.model.ProfileRepository;
import com.smartisanos.launcher.model.ProfileState;
import com.smartisanos.launcher.model.RemovalGateway;

import java.io.File;
import java.io.FileOutputStream;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * Compatibility bridge for Smartisan's original download-cell pipeline.
 *
 * The original launcher already knows how to create/remove the temporary
 * "downloading/installing" desktop item through DownloadManagerDelegate and
 * e.s.b(package, state, progress).  Stock Android/OEM ROMs do not send the
 * Smartisan app-store provider callbacks, so this class translates modern
 * PackageInstaller / package broadcasts / notification hints back into those
 * original entry points.
 */
public final class SmartisanInstallManager {
    private static final boolean ENABLE_DOWNLOAD_ANIMATION = false;
    private static final String TAG = "SmartisanInstall";
    private static final String AUTHORITY = "com.smartisanos.launcher.download.manager";
    private static final String METHOD_ADD = "1001";
    private static final String METHOD_UPDATE = "1002";
    private static final String METHOD_REMOVE = "1003";
    private static final String BUNDLE_DATA = "launcher_action_data";
    private static final String SPLIT =
            "\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t\n";

    private static final int STATUS_WAITING = 190;
    private static final int STATUS_RUNNING = 192;
    private static final int STATUS_ORIGINAL_INSTALLED = 0x100;
    private static final int STATUS_ORIGINAL_FAILED = 0x400;
    private static final long SESSION_SCAN_INTERVAL_MS = 1200L;
    private static final long MIN_VISIBLE_ANIMATION_MS = 3500L;
    /* Keep package events until both PackageManager and the original model are ready. */
    private static final long[] PACKAGE_READY_RETRY_DELAYS_MS = {
            0L, 100L, 250L, 500L, 1000L, 2000L, 4000L
    };
    private static final long PACKAGE_READY_PENDING_NOTICE_MS = 12000L;
    private static final long[] REMOVAL_VERIFY_DELAYS_MS = {500L, 1500L, 3000L};
    private static final String PENDING_PREFS = "smartisan_install_pending_v2";
    private static final String PENDING_EVENTS = "events";
    private static final String BASELINE_TIME = "baseline_time";

    private static final Pattern PACKAGE_PATTERN =
            Pattern.compile("([A-Za-z][A-Za-z0-9_]*(?:\\.[A-Za-z][A-Za-z0-9_]*){1,})");

    private static final Object LOCK = new Object();
    private static final Map<Integer, String> SESSION_PACKAGES = new HashMap<Integer, String>();
    private static final Map<String, String> PENDING_LABEL_PACKAGES = new HashMap<String, String>();
    private static final Map<String, String> PACKAGE_DISPLAY_PACKAGES = new HashMap<String, String>();
    private static final Map<String, Long> DISPLAY_START_TIMES = new HashMap<String, Long>();
    private static final Map<String, PendingPackageEvent> PENDING_PACKAGE_EVENTS =
            new HashMap<String, PendingPackageEvent>();
    private static final Map<String, PendingRemovalEvent> PENDING_REMOVALS =
            new HashMap<String, PendingRemovalEvent>();
    private static boolean sStarted;
    private static boolean sModelReady;
    private static boolean sLauncherAppsRegistered;
    private static Context sAppContext;
    private static Handler sHandler;
    private static Handler sWorkerHandler;
    private static HandlerThread sWorkerThread;
    private static PackageEventGateway sPackageEvents;
    private static ProfileRepository sProfiles;
    private static PackageStateRepository sPackageStates;
    private static RemovalGateway sRemovalGateway;
    private static LauncherModelRepository sModelRepository;

    private SmartisanInstallManager() {
    }

    public static void ensure(Context context) {
        if (context == null) {
            Log.w(TAG, "SYSTEM_SERVICE_MISSING module=install_manager context=null");
            return;
        }
        StartupCompatibilityLogger.mark("INSTALL_MANAGER_INIT_BEGIN");
        try {
            synchronized (LOCK) {
                if (sStarted) {
                    return;
                }
                sStarted = true;
                sAppContext = context.getApplicationContext() == null
                        ? context : context.getApplicationContext();
                sHandler = new Handler(Looper.getMainLooper());
                sWorkerThread = new HandlerThread("SmartisanInstallManager");
                sWorkerThread.start();
                sWorkerHandler = new Handler(sWorkerThread.getLooper());
                sProfiles = new ProfileRepository(sAppContext);
                sPackageStates = new PackageStateRepository(sAppContext, sProfiles);
                sRemovalGateway = new RemovalGateway();
                sModelRepository = new LauncherModelRepository(sAppContext);
                sPackageEvents = new PackageEventGateway(sAppContext, new PackageEventGateway.Consumer() {
                    @Override public void onPackageEvent(Context c, PackageEventGateway.PackageEvent event) {
                        dispatchGatewayEvent(c, event);
                    }
                });
            }
        } catch (Throwable t) {
            synchronized (LOCK) {
                sStarted = false;
                sHandler = null;
                sWorkerHandler = null;
                sWorkerThread = null;
                sAppContext = null;
            }
            StartupCompatibilityLogger.optionalModuleDisabled("install_manager", t);
            return;
        }
        restorePendingEvents(sAppContext);
        registerPackageReceiver(sAppContext);
        registerLauncherAppsCallback(sAppContext);
        registerPackageInstallerCallback(sAppContext);
        if (ENABLE_DOWNLOAD_ANIMATION) {
            scheduleSessionScan(0L);
        }
        StartupCompatibilityLogger.mark("INSTALL_MANAGER_INIT_COMPLETE");
    }

    public static void onPackageInstalled(Context context, String packageName) {
        if (TextUtils.isEmpty(packageName)) {
            return;
        }
        ensure(context);
        acceptPlatformEvent(context, packageName, Intent.ACTION_PACKAGE_ADDED,
                false, 0, "legacy");
    }

    /** Called from the manifest receiver after the original theme-specific handling. */
    public static void onPackageEvent(Context context, Intent intent) {
        ensure(context);
        PackageEventGateway gateway = sPackageEvents;
        if (gateway != null) gateway.acceptBroadcast(context, intent, "manifest");
    }

    private static void dispatchGatewayEvent(Context context, PackageEventGateway.PackageEvent event) {
        String action = event.type == PackageEventGateway.Type.REMOVED ? Intent.ACTION_PACKAGE_REMOVED
                : event.type == PackageEventGateway.Type.REPLACED ? Intent.ACTION_PACKAGE_REPLACED
                : event.type == PackageEventGateway.Type.CHANGED ? Intent.ACTION_PACKAGE_CHANGED : Intent.ACTION_PACKAGE_ADDED;
        enqueuePackageEvent(context, event.packageName, action, event.replacing,
                event.user == null ? 0 : sProfiles.userId(event.user), event.userSerial,
                event.componentName, event.source);
    }

    /** J.MESSAGE_COMPLETE: the original model has accepted its initial database state. */
    public static void onLauncherModelReady() {
        final Context context;
        synchronized (LOCK) {
            sModelReady = true;
            context = sAppContext;
        }
        if (context == null) {
            return;
        }
        SharedPreferences prefs = pendingPrefs(context);
        if (prefs.getLong(BASELINE_TIME, 0L) == 0L) {
            prefs.edit().putLong(BASELINE_TIME, System.currentTimeMillis()).commit();
        }
        Log.i(TAG, "INSTALL_MODEL_READY pending=" + pendingEventCount());
        processPendingEvents(context, "model_ready_reconcile");
        reconcilePinnedShortcuts(context);
    }

    /**
     * Original PackageTask completion boundary. Duplicate broadcasts stay coalesced while the
     * task is pending, but a later real update must be allowed to create a fresh event.
     */
    public static void onOriginalPackageModelUpdateComplete(String packageName) {
        Context context;
        boolean removed = false;
        synchronized (LOCK) {
            // The original completion callback has no UserHandle; it only acknowledges its
            // historic main-user task and must never consume another profile's event.
            PendingPackageEvent event = PENDING_PACKAGE_EVENTS.get(pendingKey(packageName, 0, 0L,
                    Intent.ACTION_PACKAGE_ADDED, ""));
            if (event != null && event.dispatched) {
                PENDING_PACKAGE_EVENTS.remove(pendingKey(packageName, 0, 0L,
                        Intent.ACTION_PACKAGE_ADDED, ""));
                removed = true;
            }
            context = sAppContext;
        }
        if (removed && context != null) {
            persistPendingEvents(context);
            Log.i(TAG, "INSTALL_MODEL_PACKAGE_COMPLETE pkg=" + packageName
                    + " pendingCleared=true");
        }
    }

    /**
     * Read by the original ItemInfo creation path before its same-row database insert.
     *
     * A real PACKAGE_ADDED event is authoritative for a package that is not
     * already represented by the original launcher database.  The first-install
     * timestamp remains a cold-start/recovery fallback only: some current ROMs
     * report it before the launcher baseline has been persisted.
     */
    public static boolean shouldMarkNewlyInstalled(String packageName) {
        PendingPackageEvent event;
        synchronized (LOCK) {
            event = PENDING_PACKAGE_EVENTS.get(pendingKey(packageName, 0, 0L,
                    Intent.ACTION_PACKAGE_ADDED, ""));
        }
        if (event == null || !event.dispatched || !event.newInstall) {
            Log.i(TAG, "INSTALL_NEW_MARK_RESERVED pkg=" + packageName
                    + " reserved=false reason=no_pending_new_event");
            return false;
        }
        boolean existing = LauncherModelRepository.hasFormalApplicationItem(packageName, 0);
        Log.i(TAG, "INSTALL_NEW_MARK_RESERVED pkg=" + packageName
                + " reserved=" + !existing + " existingDatabasePackage=" + existing
                + " action=" + event.action + " replacing=" + event.replacing
                + " user=" + event.userId + " dispatched=" + event.dispatched
                + " new=" + event.newInstall);
        return !existing;
    }

    /** Called from the original ItemInfo construction path immediately after the flag is set. */
    public static void onNewlyInstalledItemInfoApplied(String packageName, boolean newlyInstalled) {
        Log.i(TAG, "INSTALL_NEW_MARK_APPLIED pkg=" + packageName
                + " itemInfoNew=" + newlyInstalled);
        if (newlyInstalled) {
            Log.i(TAG, "INSTALL_DATABASE_NEWLY_INSTALLED_WRITTEN pkg=" + packageName
                    + " pendingEventRetained=true");
        }
    }

    /** Called only when the original Cell creates its existing newapp.png node. */
    public static void onNewBadgeNodeCreated(String packageName, int messagesNumber) {
        Log.i(TAG, "INSTALL_NEW_NODE_CREATED pkg=" + packageName
                + " messages=" + messagesNumber + " visible=true");
    }

    public static void onNotificationPosted(Context context, StatusBarNotification sbn) {
        if (!ENABLE_DOWNLOAD_ANIMATION) {
            return;
        }
        if (context == null || sbn == null || sbn.getNotification() == null) {
            return;
        }
        ensure(context);
        Notification n = sbn.getNotification();
        String text = notificationText(n);
        if (!looksLikeInstallNotification(text)) {
            return;
        }
        if (looksLikeCompletionNotification(text)) {
            return;
        }
        String pkg = firstPackageName(text);
        if (TextUtils.isEmpty(pkg)) {
            startSyntheticFromNotification(context, sbn, n);
            return;
        }
        if (context.getPackageName().equals(pkg)) {
            return;
        }
        Drawable icon = largeNotificationIcon(context, n);
        if (icon != null) {
            savePendingIcon(context, pkg, icon);
        }
        String label = bestLabel(context, pkg, titleFromNotification(n, pkg));
        int progress = notificationProgress(n);
        String displayPkg = displayPackageFor(context, pkg, label);
        savePreferredIcon(context, pkg, displayPkg);
        startOrUpdate(context, displayPkg, label, STATUS_RUNNING, progress);
    }

    public static Drawable loadPendingIconDrawable(Context context, String packageName) {
        try {
            File file = pendingIconFile(context, packageName);
            if (file == null || !file.isFile() || file.length() <= 0) {
                return null;
            }
            Bitmap bitmap = android.graphics.BitmapFactory.decodeFile(file.getAbsolutePath());
            if (bitmap == null) {
                return null;
            }
            return new BitmapDrawable(context.getResources(), bitmap);
        } catch (Throwable ignored) {
            return null;
        }
    }

    private static void registerPackageReceiver(final Context context) {
        try {
            IntentFilter filter = new IntentFilter();
            filter.addAction(Intent.ACTION_PACKAGE_ADDED);
            filter.addAction(Intent.ACTION_PACKAGE_REPLACED);
            filter.addAction(Intent.ACTION_PACKAGE_CHANGED);
            filter.addAction(Intent.ACTION_PACKAGE_REMOVED);
            filter.addDataScheme("package");
            context.registerReceiver(new BroadcastReceiver() {
                @Override
                public void onReceive(Context c, Intent intent) {
                    if (intent == null || intent.getData() == null) {
                        return;
                    }
                    String pkg = intent.getData().getSchemeSpecificPart();
                    String action = intent.getAction();
                    com.smartisanos.launcher.theme.WeatherBridge
                            .invalidateWeatherApplicationCache();
                    onPackageEvent(c == null ? context : c, intent);
                }
            }, filter);
        } catch (Throwable t) {
            Log.w(TAG, "register package receiver failed", t);
        }
    }

    private static void registerPackageInstallerCallback(final Context context) {
        if (Build.VERSION.SDK_INT < 21) {
            return;
        }
        try {
            final PackageInstaller installer = context.getPackageManager().getPackageInstaller();
            installer.registerSessionCallback(new PackageInstaller.SessionCallback() {
                @Override
                public void onCreated(int sessionId) {
                    handleSession(context, installer, sessionId, STATUS_WAITING, 0);
                }

                @Override
                public void onBadgingChanged(int sessionId) {
                    handleSession(context, installer, sessionId, STATUS_RUNNING, 1);
                }

                @Override
                public void onActiveChanged(int sessionId, boolean active) {
                    handleSession(context, installer, sessionId, active ? STATUS_RUNNING : STATUS_WAITING, 1);
                }

                @Override
                public void onProgressChanged(int sessionId, float progress) {
                    handleSession(context, installer, sessionId, STATUS_RUNNING,
                            Math.max(0, Math.min(99, Math.round(progress * 100f))));
                }

                @Override
                public void onFinished(int sessionId, boolean success) {
                    String pkg;
                    synchronized (LOCK) {
                        pkg = SESSION_PACKAGES.remove(Integer.valueOf(sessionId));
                    }
                    if (TextUtils.isEmpty(pkg)) {
                        PackageInstaller.SessionInfo info = sessionInfo(installer, sessionId);
                        pkg = info == null ? null : info.getAppPackageName();
                    }
                    if (TextUtils.isEmpty(pkg)) {
                        return;
                    }
                    if (success) {
                        acceptPlatformEvent(context, pkg, Intent.ACTION_PACKAGE_ADDED,
                                false, 0, "package_installer");
                    } else {
                        clearFailedInstallPlaceholder(context, pkg, "package_installer_failed");
                    }
                }
            }, sWorkerHandler == null ? new Handler(Looper.getMainLooper()) : sWorkerHandler);
        } catch (Throwable t) {
            Log.w(TAG, "register package installer failed", t);
        }
    }

    private static void registerLauncherAppsCallback(final Context context) {
        if (Build.VERSION.SDK_INT < 21) {
            return;
        }
        synchronized (LOCK) {
            if (sLauncherAppsRegistered) {
                return;
            }
        }
        try {
            LauncherApps apps = (LauncherApps) context.getSystemService(Context.LAUNCHER_APPS_SERVICE);
            if (apps == null) {
                Log.w(TAG, "SYSTEM_SERVICE_MISSING service=launcher_apps fallback=package_receiver");
                return;
            }
            apps.registerCallback(new LauncherApps.Callback() {
                @Override public void onPackageAdded(String packageName, UserHandle user) {
                    acceptPlatformEvent(context, packageName, Intent.ACTION_PACKAGE_ADDED,
                            false, userId(user), "launcher_apps");
                }
                @Override public void onPackageChanged(String packageName, UserHandle user) {
                    acceptPlatformEvent(context, packageName, Intent.ACTION_PACKAGE_CHANGED,
                            false, userId(user), "launcher_apps");
                }
                @Override public void onPackageRemoved(String packageName, UserHandle user) {
                    SmartisanInstallManager.onPackageRemoved(context, packageName,
                            userId(user), "launcher_apps");
                }
                @Override public void onPackagesAvailable(String[] packages, UserHandle user,
                                                          boolean replacing) {
                    if (packages == null) return;
                    for (String packageName : packages) {
                        acceptPlatformEvent(context, packageName, Intent.ACTION_PACKAGE_ADDED,
                                replacing, userId(user), "launcher_apps_available");
                    }
                }
                @Override public void onPackagesUnavailable(String[] packages, UserHandle user,
                                                            boolean replacing) { }
                @Override public void onShortcutsChanged(final String packageName,
                                                         final List<ShortcutInfo> shortcuts,
                                                         final UserHandle user) {
                    if (Build.VERSION.SDK_INT < Build.VERSION_CODES.N_MR1 || !sModelReady) return;
                    Handler worker = sWorkerHandler;
                    if (worker == null) return;
                    worker.post(new Runnable() {
                        @Override public void run() {
                            ShortcutCompatBridge.reconcilePinned(context, shortcuts, user);
                        }
                    });
                }
            });
            synchronized (LOCK) {
                sLauncherAppsRegistered = true;
            }
        } catch (Throwable t) {
            StartupCompatibilityLogger.optionalModuleDisabled("launcher_apps_callback", t);
        }
    }

    private static void reconcilePinnedShortcuts(final Context context) {
        if (Build.VERSION.SDK_INT < Build.VERSION_CODES.N_MR1 || context == null || sWorkerHandler == null) return;
        sWorkerHandler.post(new Runnable() {
            @Override public void run() {
                try {
                    LauncherApps apps = (LauncherApps) context.getSystemService(Context.LAUNCHER_APPS_SERVICE);
                    if (apps == null) return;
                    List<UserHandle> profiles = apps.getProfiles();
                    if (profiles == null) return;
                    for (UserHandle user : profiles) {
                        List<ShortcutInfo> shortcuts = apps.getShortcuts(
                                new LauncherApps.ShortcutQuery().setQueryFlags(
                                        LauncherApps.ShortcutQuery.FLAG_MATCH_PINNED), user);
                        ShortcutCompatBridge.reconcilePinned(context, shortcuts, user);
                    }
                } catch (Throwable error) {
                    Log.w(TAG, "PIN_RECONCILE_FAILED type=" + error.getClass().getSimpleName(), error);
                }
            }
        });
    }

    private static void scheduleSessionScan(long delayMs) {
        final Handler handler = sWorkerHandler;
        final Context context = sAppContext;
        if (handler == null || context == null || Build.VERSION.SDK_INT < 21) {
            return;
        }
        handler.postDelayed(new Runnable() {
            @Override
            public void run() {
                try {
                    PackageInstaller installer = context.getPackageManager().getPackageInstaller();
                    List sessions = visibleSessions(installer);
                    if (sessions != null) {
                        for (Object value : sessions) {
                            if (value instanceof PackageInstaller.SessionInfo) {
                                PackageInstaller.SessionInfo info = (PackageInstaller.SessionInfo) value;
                                String pkg = info.getAppPackageName();
                                if (!TextUtils.isEmpty(pkg)) {
                                    rememberSession(info.getSessionId(), pkg);
                                    String label = bestLabel(context, pkg, safeLabel(info.getAppLabel(), pkg));
                                    String displayPkg = displayPackageFor(context, pkg, label);
                                    savePreferredIcon(context, pkg, displayPkg);
                                    int progress = Math.max(0, Math.min(99, Math.round(info.getProgress() * 100f)));
                                    startOrUpdate(context, displayPkg, label, STATUS_RUNNING, progress);
                                    cacheSessionIcon(context, pkg, info);
                                }
                            }
                        }
                    }
                } catch (Throwable ignored) {
                }
                scheduleSessionScan(SESSION_SCAN_INTERVAL_MS);
            }
        }, delayMs);
    }

    private static void handleSession(Context context, PackageInstaller installer,
                                      int sessionId, int status, int progress) {
        PackageInstaller.SessionInfo info = sessionInfo(installer, sessionId);
        if (info == null) {
            return;
        }
        String pkg = info.getAppPackageName();
        if (TextUtils.isEmpty(pkg)) {
            return;
        }
        rememberSession(sessionId, pkg);
        String label = bestLabel(context, pkg, safeLabel(info.getAppLabel(), pkg));
        String displayPkg = displayPackageFor(context, pkg, label);
        savePreferredIcon(context, pkg, displayPkg);
        int p = progress <= 0 ? Math.max(0, Math.min(99, Math.round(info.getProgress() * 100f))) : progress;
        startOrUpdate(context, displayPkg, label, status, p);
        cacheSessionIcon(context, pkg, info);
    }

    private static void cacheSessionIcon(Context context, String pkg, PackageInstaller.SessionInfo info) {
        if (hasPendingIcon(context, pkg)) {
            return;
        }
        Drawable icon = sessionIcon(context, info);
        if (icon != null) {
            savePendingIcon(context, pkg, icon);
        }
    }

    private static void startSyntheticFromNotification(Context context, StatusBarNotification sbn, Notification n) {
        String label = titleFromNotification(n, null);
        if (TextUtils.isEmpty(label)) {
            return;
        }
        String sourceLabel = appLabel(context, sbn.getPackageName());
        if (!TextUtils.isEmpty(sourceLabel) && sourceLabel.equals(label)) {
            return;
        }
        String key = normalizedLabel(label);
        if (TextUtils.isEmpty(key)) {
            return;
        }
        String syntheticPkg;
        synchronized (LOCK) {
            syntheticPkg = PENDING_LABEL_PACKAGES.get(key);
            if (TextUtils.isEmpty(syntheticPkg)) {
                syntheticPkg = "com.smartisanos.launcher.pending.p"
                        + Integer.toHexString((sbn.getPackageName() + ":" + key).hashCode());
                PENDING_LABEL_PACKAGES.put(key, syntheticPkg);
            }
        }
        Drawable icon = largeNotificationIcon(context, n);
        if (icon != null) {
            savePendingIcon(context, syntheticPkg, icon);
        }
        startOrUpdate(context, syntheticPkg, label, STATUS_RUNNING, notificationProgress(n));
    }

    private static void savePreferredIcon(Context context, String realPkg, String displayPkg) {
        if (context == null || TextUtils.isEmpty(realPkg) || TextUtils.isEmpty(displayPkg)) {
            return;
        }
        try {
            Drawable preferred = MaintainedLauncherSettingsHost.currentLauncherIconDrawable(context, realPkg);
            if (preferred != null) {
                savePendingIcon(context, displayPkg, preferred);
                if (!realPkg.equals(displayPkg)) {
                    savePendingIcon(context, realPkg, preferred);
                }
            }
        } catch (Throwable ignored) {
        }
    }

    private static String displayPackageFor(Context context, String realPkg, String label) {
        String key = normalizedLabel(label);
        if (TextUtils.isEmpty(key)) {
            return realPkg;
        }
        String syntheticPkg;
        synchronized (LOCK) {
            String existing = PACKAGE_DISPLAY_PACKAGES.get(realPkg);
            if (!TextUtils.isEmpty(existing)) {
                return existing;
            }
            syntheticPkg = PENDING_LABEL_PACKAGES.get(key);
            if (!TextUtils.isEmpty(syntheticPkg)) {
                PACKAGE_DISPLAY_PACKAGES.put(realPkg, syntheticPkg);
                return syntheticPkg;
            }
        }
        return realPkg;
    }

    private static PackageInstaller.SessionInfo sessionInfo(PackageInstaller installer, int sessionId) {
        try {
            return installer.getSessionInfo(sessionId);
        } catch (Throwable ignored) {
            return null;
        }
    }

    private static Drawable sessionIcon(Context context, PackageInstaller.SessionInfo info) {
        if (context == null || info == null) {
            return null;
        }
        try {
            Bitmap bitmap = info.getAppIcon();
            if (bitmap != null) {
                return new BitmapDrawable(context.getResources(), bitmap);
            }
        } catch (Throwable ignored) {
        }
        return null;
    }

    private static List visibleSessions(PackageInstaller installer) {
        try {
            Method method = PackageInstaller.class.getMethod("getAllSessions");
            Object result = method.invoke(installer);
            if (result instanceof List) {
                return (List) result;
            }
        } catch (Throwable ignored) {
        }
        try {
            return installer.getMySessions();
        } catch (Throwable ignored) {
            return null;
        }
    }

    private static void rememberSession(int sessionId, String pkg) {
        synchronized (LOCK) {
            SESSION_PACKAGES.put(Integer.valueOf(sessionId), pkg);
        }
    }

    private static void startOrUpdate(Context context, String pkg, String label, int status, int progress) {
        if (!ENABLE_DOWNLOAD_ANIMATION) {
            return;
        }
        if (TextUtils.isEmpty(pkg) || isInstalled(context, pkg)) {
            if (isInstalled(context, pkg)) {
                completeInstall(context, pkg);
            }
            return;
        }
        rememberDisplayStart(pkg);
        callDownloadDelegate(context, METHOD_ADD, pkg, label, status, progress);
        callDownloadDelegate(context, METHOD_UPDATE, pkg, label, status, progress);
        try {
            updateOriginalState(pkg, status, progress);
        } catch (Throwable ignored) {
        }
    }

    private static void completeInstall(final Context context, final String pkg) {
        if (TextUtils.isEmpty(pkg)) {
            return;
        }
        if (!ENABLE_DOWNLOAD_ANIMATION) {
            acceptPlatformEvent(context, pkg, Intent.ACTION_PACKAGE_ADDED,
                    false, 0, "download_compat");
            return;
        }
        final String displayPkg = displayPackageForCompletedPackage(context, pkg);
        final boolean usingSyntheticDisplay = !pkg.equals(displayPkg);
        final long delayMs = completionDelay(displayPkg);
        Handler handler = sHandler == null ? new Handler(Looper.getMainLooper()) : sHandler;
        handler.postDelayed(new Runnable() {
            @Override
            public void run() {
                try {
                    updateOriginalState(displayPkg, STATUS_ORIGINAL_INSTALLED, -1);
                } catch (Throwable ignored) {
                }
            }
        }, delayMs);
        handler.postDelayed(new Runnable() {
            @Override
            public void run() {
                try {
                    updateOriginalState(displayPkg, STATUS_ORIGINAL_INSTALLED, -1);
                    if (usingSyntheticDisplay) {
                        removeDownloadCell(context, displayPkg);
                    }
                    notifyOriginalPackageAdded(context, pkg);
                    deletePendingIcon(context, displayPkg);
                    deletePendingIcon(context, pkg);
                } catch (Throwable ignored) {
                }
            }
        }, delayMs + (usingSyntheticDisplay ? 1400L : 500L));
        handler.postDelayed(new Runnable() {
            @Override
            public void run() {
                try {
                    if (usingSyntheticDisplay) {
                        removeDownloadCell(context, displayPkg);
                    }
                    notifyOriginalPackageAdded(context, pkg);
                    forgetDisplay(pkg, displayPkg);
                } catch (Throwable ignored) {
                }
            }
        }, delayMs + 3000L);
    }

    private static void clearFailedInstallPlaceholder(Context context, String pkg,
                                                      String source) {
        Log.i(TAG, "INSTALL_SESSION_FAILED_PLACEHOLDER_ONLY pkg=" + pkg
                + " source=" + source + " decision=retain_formal_app");
        // A failed PackageInstaller session is not an uninstall.  Only touch the
        // original temporary download row when this package was actually tracked
        // by the download pipeline; never synthesize a remove for a normal app.
        if (hasDownloadPlaceholder(context, pkg)) {
            removeDownloadCell(context, pkg);
        } else {
            Log.i(TAG, "INSTALL_SESSION_FAILED_PLACEHOLDER_ONLY pkg=" + pkg
                    + " placeholderPresent=false");
        }
        forgetDisplay(null, pkg);
    }

    private static void acceptPlatformEvent(Context context, String packageName, String action,
                                            boolean replacing, int userId, String source) {
        PackageEventGateway gateway = sPackageEvents;
        if (gateway == null) return;
        UserHandle user = sProfiles == null ? null : sProfiles.userForLegacyId(userId);
        long serial = sProfiles == null ? -1L : sProfiles.serialFor(user);
        PackageEventGateway.Type type = Intent.ACTION_PACKAGE_REMOVED.equals(action) ? PackageEventGateway.Type.REMOVED
                : Intent.ACTION_PACKAGE_REPLACED.equals(action) ? PackageEventGateway.Type.REPLACED
                : Intent.ACTION_PACKAGE_CHANGED.equals(action) ? PackageEventGateway.Type.CHANGED : PackageEventGateway.Type.ADDED;
        gateway.accept(context, new PackageEventGateway.PackageEvent(type, packageName, user, serial, null, replacing, source));
    }

    private static void enqueuePackageEvent(Context context, String packageName, String action,
                                            boolean replacing, int userId, long userSerial,
                                            String componentName, String source) {
        if (context == null || TextUtils.isEmpty(packageName)
                || context.getPackageName().equals(packageName)) {
            return;
        }
        ensure(context);
        try {
            com.smartisanos.home.settings.icons.IconPackManager.invalidateIconPackList();
            com.smartisanos.home.settings.icons.IconPackManager.invalidateIconPackPackage(packageName);
            com.smartisanos.launcher.theme.MaintainedLauncherSettingsHost
                    .onIconPackOverridesChanged(context, packageName);
        } catch (Throwable ignored) {}
        if (Intent.ACTION_PACKAGE_REMOVED.equals(action) && !replacing) {
            onPackageRemoved(context, packageName, userId, source);
            return;
        }
        if (!Intent.ACTION_PACKAGE_ADDED.equals(action)
                && !Intent.ACTION_PACKAGE_REPLACED.equals(action)
                && !Intent.ACTION_PACKAGE_CHANGED.equals(action)) {
            return;
        }
        synchronized (LOCK) {
            String pendingKey = pendingKey(packageName, userId, userSerial, action, componentName);
            PendingPackageEvent existing = PENDING_PACKAGE_EVENTS.get(pendingKey);
            if (existing != null) {
                existing.replacing |= replacing || Intent.ACTION_PACKAGE_REPLACED.equals(action);
                existing.source = source;
                if (!existing.dispatched) {
                    existing.action = action;
                }
            } else {
                PENDING_PACKAGE_EVENTS.put(pendingKey, new PendingPackageEvent(packageName, action,
                        replacing || Intent.ACTION_PACKAGE_REPLACED.equals(action), userId, userSerial,
                        componentName, source));
            }
        }
        persistPendingEvents(context);
        Log.i(TAG, "INSTALL_EVENT_RECEIVED pkg=" + packageName + " action=" + action
                + " replacing=" + replacing + " source=" + source);
        processPendingEvents(context, source);
    }

    private static void onPackageRemoved(Context context, String packageName, String source) {
        onPackageRemoved(context, packageName, 0, source);
    }

    /** Legacy uninstall callbacks lack a reliable PackageManager result; retain the item. */
    public static void onUncertainLegacyUninstall(String packageName) {
        Log.w(TAG, "[PACKAGE][REMOVE_BLOCKED] source=oa.c reason=QUERY_UNCERTAIN pkg=" + packageName);
    }

    /** Routes old receiver paths through the same confirmation gate as modern callbacks. */
    public static void onLegacyPackageRemovalBypass(String packageName) {
        Context context = sAppContext;
        if (context == null || TextUtils.isEmpty(packageName)) {
            Log.w(TAG, "[PACKAGE][REMOVE_BLOCKED] source=legacy_receiver reason=CONTEXT_OR_PACKAGE_MISSING pkg=" + packageName);
            return;
        }
        Log.i(TAG, "[PACKAGE][REMOVE_REQUEST] source=legacy_receiver pkg=" + packageName + " user=0");
        acceptPlatformEvent(context, packageName, Intent.ACTION_PACKAGE_REMOVED, false, 0, "legacy_receiver");
    }

    public static void blockLegacyDownloadRemoval(String packageName) {
        Log.w(TAG, "[PACKAGE][REMOVE_BLOCKED] source=download reason=NOT_CONFIRMED_PLACEHOLDER pkg=" + packageName);
    }

    public static void onScenePackageQueryUncertain(Object item) {
        Log.w(TAG, "[PACKAGE][REMOVE_BLOCKED] source=scene reason=QUERY_UNCERTAIN item=" + item);
    }

    private static void onPackageRemoved(Context context, String packageName, int userId,
                                         String source) {
        if (TextUtils.isEmpty(packageName)) {
            return;
        }
        UserHandle eventUser = sProfiles == null ? null : sProfiles.userForLegacyId(userId);
        long eventSerial = sProfiles == null ? -1L : sProfiles.serialFor(eventUser);
        String key = removalKey(packageName, userId, eventSerial, Intent.ACTION_PACKAGE_REMOVED, "");
        synchronized (LOCK) {
            if (PENDING_REMOVALS.containsKey(key)) {
                Log.i(TAG, "REMOVE_EVENT_DEDUPED pkg=" + packageName + " user=" + userId
                        + " source=" + source);
                return;
            }
            removePendingEventsForPackageUser(packageName, userId);
            PENDING_REMOVALS.put(key, new PendingRemovalEvent(packageName, userId, eventSerial, "", source));
        }
        persistPendingEvents(context);
        Log.i(TAG, "REMOVE_EVENT_RECEIVED pkg=" + packageName + " user=" + userId
                + " source=" + source + " replacing=false");
        scheduleRemovalVerification(context, key, 0);
    }

    private static void scheduleRemovalVerification(final Context context, final String key,
                                                     final int attempt) {
        Handler handler = sWorkerHandler;
        if (handler == null) {
            Log.w(TAG, "REMOVE_VERIFY_QUERY_FAILED key=" + key + " reason=no_worker");
            return;
        }
        long delay = attempt < REMOVAL_VERIFY_DELAYS_MS.length
                ? REMOVAL_VERIFY_DELAYS_MS[attempt] : 0L;
        handler.postDelayed(new Runnable() {
            @Override public void run() {
                verifyPendingRemoval(context, key, attempt);
            }
        }, delay);
        Log.i(TAG, "REMOVE_VERIFY_SCHEDULED key=" + key + " attempt=" + attempt
                + " delayMs=" + delay);
    }

    private static void verifyPendingRemoval(Context context, String key, int attempt) {
        PendingRemovalEvent event;
        synchronized (LOCK) {
            event = PENDING_REMOVALS.get(key);
        }
        if (event == null) {
            return;
        }
        UserHandle user = sProfiles == null ? null : sProfiles.userForLegacyId(event.userId);
        long serial = sProfiles == null ? -1L : sProfiles.serialFor(user);
        LauncherItemKey itemKey = new LauncherItemKey(serial, event.packageName, "");
        PackageStateRepository.PackageStateResult state = sPackageStates == null ? null
                : sPackageStates.query(itemKey, user, false);
        ProfileState profile = sProfiles == null ? ProfileState.UNKNOWN : sProfiles.stateFor(user);
        com.smartisanos.launcher.model.PackageState packageState = state == null
                ? com.smartisanos.launcher.model.PackageState.UNKNOWN : state.state;
        // This is only event scheduling. Every destructive decision is made below per exact item
        // through RemovalGateway, after the current Aa model item has been re-read.
        if ((packageState == com.smartisanos.launcher.model.PackageState.REPLACING
                || profile != ProfileState.AVAILABLE) && attempt + 1 < REMOVAL_VERIFY_DELAYS_MS.length) {
            scheduleRemovalVerification(context, key, attempt + 1);
            return;
        }
        if (packageState != com.smartisanos.launcher.model.PackageState.REMOVED_CONFIRMED
                || profile != ProfileState.AVAILABLE) {
            finishPendingRemoval(context, key, false);
            return;
        }
        finishPendingRemoval(context, key, true);
        if (sModelRepository != null) sModelRepository.commitPackageRemovals(event.packageName, serial, event.userId,
                event.source, packageState,
                profile, sRemovalGateway == null ? new RemovalGateway() : sRemovalGateway);
        forgetDisplay(null, event.packageName);
    }

    private static void finishPendingRemoval(Context context, String key, boolean confirmed) {
        synchronized (LOCK) {
            PENDING_REMOVALS.remove(key);
        }
        persistPendingEvents(context);
    }

    private static String removalKey(String packageName, int userId, long userSerial,
                                     String action, String componentName) {
        String identity = userSerial >= 0L ? String.valueOf(userSerial) : "unknown-user-" + userId;
        return identity + "#" + packageName + "#" + (action == null ? "" : action)
                + "#" + (componentName == null ? "" : componentName);
    }

    private static String pendingKey(String packageName, int userId, long userSerial,
                                     String action, String componentName) {
        String identity = userSerial >= 0L ? String.valueOf(userSerial) : "unknown-user-" + userId;
        return identity + "#" + packageName + "#" + (action == null ? "" : action)
                + "#" + (componentName == null ? "" : componentName);
    }

    private static void removePendingEventsForPackageUser(String packageName, int userId) {
        java.util.Iterator<Map.Entry<String, PendingPackageEvent>> iterator = PENDING_PACKAGE_EVENTS.entrySet().iterator();
        while (iterator.hasNext()) {
            PendingPackageEvent event = iterator.next().getValue();
            if (packageName.equals(event.packageName) && event.userId == userId) iterator.remove();
        }
    }

    private static void processPendingEvents(final Context context, String trigger) {
        final Handler handler = sWorkerHandler;
        if (handler == null || context == null) {
            return;
        }
        handler.post(new Runnable() {
            @Override public void run() {
                PendingPackageEvent[] events;
                synchronized (LOCK) {
                    events = PENDING_PACKAGE_EVENTS.values().toArray(
                            new PendingPackageEvent[PENDING_PACKAGE_EVENTS.size()]);
                }
                for (PendingPackageEvent event : events) {
                    attemptOriginalPackageAdd(context, event);
                }
            }
        });
    }

    private static void attemptOriginalPackageAdd(final Context context,
                                                  final PendingPackageEvent event) {
        synchronized (LOCK) {
            if (event.dispatched || event.scheduled) {
                return;
            }
            if (!sModelReady) {
                schedulePendingAttemptLocked(context, event, 100L);
                return;
            }
            if (!launcherActivityAvailable(context, event.packageName)) {
                if (event.retryIndex < PACKAGE_READY_RETRY_DELAYS_MS.length) {
                    long delay = PACKAGE_READY_RETRY_DELAYS_MS[event.retryIndex++];
                    schedulePendingAttemptLocked(context, event, delay);
                } else {
                    long age = System.currentTimeMillis() - event.receivedAt;
                    if (age >= PACKAGE_READY_PENDING_NOTICE_MS) {
                        Log.w(TAG, "INSTALL_PENDING_RETAINED pkg=" + event.packageName
                                + " ageMs=" + age + " noLauncherActivity");
                    } else {
                        schedulePendingAttemptLocked(context, event,
                                PACKAGE_READY_PENDING_NOTICE_MS - age);
                    }
                }
                persistPendingEvents(context);
                return;
            }
            event.dispatched = true;
            event.newInstall = isTrueNewInstall(context, event);
            persistPendingEvents(context);
        }
        Log.i(TAG, "INSTALL_EVENT_CLASSIFIED pkg=" + event.packageName
                + " action=" + event.action + " replacing=" + event.replacing
                + " source=" + event.source + " new=" + event.newInstall
                + " user=" + event.userId + " baseline="
                + pendingPrefs(context).getLong(BASELINE_TIME, 0L));
        Log.i(TAG, "INSTALL_ORIGINAL_ADD_DISPATCH pkg=" + event.packageName
                + " new=" + event.newInstall + " user=" + event.userId);
        SearchIndexRepository.noteModelPackageDispatch(event.packageName, event.userId,
                event.replacing || Intent.ACTION_PACKAGE_REPLACED.equals(event.action)
                        ? "replaced"
                        : (Intent.ACTION_PACKAGE_CHANGED.equals(event.action)
                                ? "changed" : "added"));
        final boolean firstInstall = Intent.ACTION_PACKAGE_ADDED.equals(event.action)
                && !event.replacing && event.newInstall;
        if (firstInstall) {
            // Both callers run on the existing serial install worker. Finish DB/pending IO
            // before handing the original package notification back to MAIN.
            com.smartisanos.launcher.backup.PendingItemRestoreHandler
                    .onPackageAdded(context, event.packageName);
        }
        Handler main = sHandler == null ? new Handler(Looper.getMainLooper()) : sHandler;
        main.post(new Runnable() {
            @Override public void run() {
                if (firstInstall) {
                    notifyOriginalPackageAdded(context, event.packageName);
                } else {
                    // Aa.c inserts every launcher activity it currently resolves.  A PACKAGE_REPLACED
                    // sequence can include a late PACKAGE_ADDED callback from PackageInstaller; sending
                    // it through Aa.c rebuilds package entries and loses component/position continuity.
                    Log.i(TAG, "INSTALL_RETAIN_EXISTING pkg=" + event.packageName
                            + " action=" + event.action + " replacing=" + event.replacing
                            + " new=" + event.newInstall + " reason=non_first_install");
                }
                deletePendingIcon(context, event.packageName);
            }
        });
    }

    private static void schedulePendingAttemptLocked(final Context context,
                                                      final PendingPackageEvent event, long delayMs) {
        if (event.scheduled) {
            return;
        }
        event.scheduled = true;
        Handler handler = sWorkerHandler;
        if (handler == null) {
            event.scheduled = false;
            return;
        }
        handler.postDelayed(new Runnable() {
            @Override public void run() {
                synchronized (LOCK) {
                    event.scheduled = false;
                }
                attemptOriginalPackageAdd(context, event);
            }
        }, Math.max(0L, delayMs));
    }

    private static boolean isTrueNewInstall(Context context, PendingPackageEvent event) {
        if (context == null || event == null || event.replacing
                || !Intent.ACTION_PACKAGE_ADDED.equals(event.action)) {
            return false;
        }
        try {
            ProfileRepository profiles = sProfiles;
            PackageStateRepository packageStates = sPackageStates;
            if (profiles == null || packageStates == null) {
                Log.i(TAG, "INSTALL_NEW_GATE pkg=" + event.packageName
                        + " allow=false reason=repository_unavailable");
                return false;
            }
            UserHandle user = profiles.userForLegacyId(event.userId);
            long currentSerial = profiles.serialFor(user);
            if (user == null || event.userSerial < 0L || currentSerial != event.userSerial) {
                Log.i(TAG, "INSTALL_NEW_GATE pkg=" + event.packageName
                        + " allow=false reason=profile_identity_unconfirmed");
                return false;
            }
            if (profiles.stateFor(user) != ProfileState.AVAILABLE) {
                Log.i(TAG, "INSTALL_NEW_GATE pkg=" + event.packageName
                        + " allow=false reason=profile_unavailable");
                return false;
            }
            LauncherItemKey key = new LauncherItemKey(event.userSerial, event.packageName,
                    event.componentName);
            PackageStateRepository.PackageStateResult state = packageStates.query(key, user, false);
            if (state.state != com.smartisanos.launcher.model.PackageState.PRESENT) {
                Log.i(TAG, "INSTALL_NEW_GATE pkg=" + event.packageName
                        + " allow=false reason=package_" + state.state);
                return false;
            }
            if (LauncherModelRepository.hasFormalApplicationItem(event.packageName, event.userId)) {
                Log.i(TAG, "INSTALL_NEW_GATE pkg=" + event.packageName
                        + " allow=false reason=existing_formal_model_item");
                return false;
            }
            PackageInfo info = context.getPackageManager().getPackageInfo(event.packageName, 0);
            // Timestamp equality is corroborating evidence only. The event, profile, package
            // state and Model-existence gates above remain mandatory for Aa.c().
            boolean timestampsMatch = info.firstInstallTime == info.lastUpdateTime;
            Log.i(TAG, "INSTALL_NEW_GATE pkg=" + event.packageName + " allow=" + timestampsMatch
                    + " reason=timestamp_support first=" + info.firstInstallTime
                    + " last=" + info.lastUpdateTime);
            return timestampsMatch;
        } catch (Throwable error) {
            Log.i(TAG, "INSTALL_NEW_GATE pkg=" + event.packageName
                    + " allow=false reason=package_query_failed");
            return false;
        }
    }

    private static boolean launcherActivityAvailable(Context context, String pkg) {
        if (context == null || TextUtils.isEmpty(pkg)) {
            return false;
        }
        try {
            PackageManager pm = context.getPackageManager();
            pm.getPackageInfo(pkg, 0);
            Intent intent = new Intent(Intent.ACTION_MAIN);
            intent.addCategory(Intent.CATEGORY_LAUNCHER);
            intent.setPackage(pkg);
            List matches = pm.queryIntentActivities(intent, 0);
            return matches != null && !matches.isEmpty();
        } catch (Throwable ignored) {
            return false;
        }
    }

    private static void removeDownloadCell(Context context, String pkg) {
        callDownloadDelegate(context, METHOD_REMOVE, pkg, pkg, STATUS_ORIGINAL_FAILED, -1);
        try {
            updateOriginalState(pkg, STATUS_ORIGINAL_FAILED, -1);
        } catch (Throwable ignored) {
        }
        deletePendingIcon(context, pkg);
    }

    private static boolean hasDownloadPlaceholder(Context context, String pkg) {
        synchronized (LOCK) {
            if (DISPLAY_START_TIMES.containsKey(pkg) || PACKAGE_DISPLAY_PACKAGES.containsKey(pkg)
                    || PENDING_LABEL_PACKAGES.containsValue(pkg)) {
                return true;
            }
        }
        return hasPendingIcon(context, pkg);
    }

    private static void rememberDisplayStart(String displayPkg) {
        if (TextUtils.isEmpty(displayPkg)) {
            return;
        }
        synchronized (LOCK) {
            if (!DISPLAY_START_TIMES.containsKey(displayPkg)) {
                DISPLAY_START_TIMES.put(displayPkg, Long.valueOf(System.currentTimeMillis()));
            }
        }
    }

    private static long completionDelay(String displayPkg) {
        long startedAt = 0L;
        synchronized (LOCK) {
            Long value = DISPLAY_START_TIMES.get(displayPkg);
            if (value != null) {
                startedAt = value.longValue();
            }
        }
        if (startedAt <= 0L) {
            return 0L;
        }
        long elapsed = System.currentTimeMillis() - startedAt;
        return Math.max(0L, MIN_VISIBLE_ANIMATION_MS - elapsed);
    }

    private static String displayPackageForCompletedPackage(Context context, String realPkg) {
        synchronized (LOCK) {
            String displayPkg = PACKAGE_DISPLAY_PACKAGES.get(realPkg);
            if (!TextUtils.isEmpty(displayPkg)) {
                return displayPkg;
            }
        }
        String label = bestLabel(context, realPkg, realPkg);
        String key = normalizedLabel(label);
        if (!TextUtils.isEmpty(key)) {
            synchronized (LOCK) {
                String syntheticPkg = PENDING_LABEL_PACKAGES.get(key);
                if (!TextUtils.isEmpty(syntheticPkg)) {
                    PACKAGE_DISPLAY_PACKAGES.put(realPkg, syntheticPkg);
                    return syntheticPkg;
                }
            }
        }
        return realPkg;
    }

    private static void forgetDisplay(String realPkg, String displayPkg) {
        synchronized (LOCK) {
            if (!TextUtils.isEmpty(realPkg)) {
                PACKAGE_DISPLAY_PACKAGES.remove(realPkg);
            }
            if (!TextUtils.isEmpty(displayPkg)) {
                DISPLAY_START_TIMES.remove(displayPkg);
                String removeKey = null;
                for (Map.Entry<String, String> entry : PENDING_LABEL_PACKAGES.entrySet()) {
                    if (displayPkg.equals(entry.getValue())) {
                        removeKey = entry.getKey();
                        break;
                    }
                }
                if (removeKey != null) {
                    PENDING_LABEL_PACKAGES.remove(removeKey);
                }
            }
        }
    }

    private static void callDownloadDelegate(Context context, String method, String pkg,
                                             String label, int status, int progress) {
        try {
            Bundle bundle = new Bundle();
            bundle.putStringArray(BUNDLE_DATA, new String[]{
                    String.valueOf(Math.abs((pkg + method).hashCode())),
                    "com.smartisanos.launcher.compat",
                    "100",
                    String.valueOf(Math.max(0, progress)),
                    String.valueOf(status),
                    description(pkg, label)
            });
            context.getContentResolver().call(
                    Uri.parse("content://" + AUTHORITY + "/download_delegate"),
                    method, pkg, bundle);
        } catch (Throwable t) {
            Log.w(TAG, "delegate call failed method=" + method + " pkg=" + pkg, t);
        }
    }

    private static void updateOriginalState(String pkg, int status, int progress) {
        try {
            Class<?> cls = Class.forName("com.smartisanos.launcher.e.s");
            Method method = cls.getMethod("b", String.class, Integer.TYPE, Integer.TYPE);
            method.invoke(null, pkg, Integer.valueOf(status), Integer.valueOf(progress));
        } catch (Throwable ignored) {
        }
    }

    private static void notifyOriginalPackageAdded(Context context, String pkg) {
        try {
            Class<?> cls = Class.forName("com.smartisanos.launcher.Aa");
            Method method = cls.getMethod("c", Context.class, String.class);
            method.invoke(null, context, pkg);
        } catch (Throwable ignored) {
        }
    }

    private static String description(String pkg, String label) {
        String safeLabel = TextUtils.isEmpty(label) ? pkg : label;
        return "0" + SPLIT + pkg + SPLIT + "" + SPLIT + safeLabel
                + SPLIT + "" + SPLIT + "" + SPLIT + "";
    }

    private static String bestLabel(Context context, String pkg, String fallback) {
        try {
            PackageManager pm = context.getPackageManager();
            CharSequence label = pm.getApplicationLabel(pm.getApplicationInfo(pkg, 0));
            if (!TextUtils.isEmpty(label)) {
                return label.toString();
            }
        } catch (Throwable ignored) {
        }
        return TextUtils.isEmpty(fallback) ? pkg : fallback;
    }

    private static String appLabel(Context context, String pkg) {
        if (context == null || TextUtils.isEmpty(pkg)) {
            return null;
        }
        try {
            PackageManager pm = context.getPackageManager();
            CharSequence label = pm.getApplicationLabel(pm.getApplicationInfo(pkg, 0));
            return TextUtils.isEmpty(label) ? null : label.toString();
        } catch (Throwable ignored) {
            return null;
        }
    }

    private static String normalizedLabel(String label) {
        if (TextUtils.isEmpty(label)) {
            return null;
        }
        String normalized = label.trim().toLowerCase(Locale.ROOT);
        return normalized.length() == 0 ? null : normalized;
    }

    private static boolean isInstalled(Context context, String pkg) {
        try {
            context.getPackageManager().getPackageInfo(pkg, 0);
            return true;
        } catch (Throwable ignored) {
            return false;
        }
    }

    private static SharedPreferences pendingPrefs(Context context) {
        return context.getApplicationContext().getSharedPreferences(PENDING_PREFS, Context.MODE_PRIVATE);
    }

    private static void restorePendingEvents(Context context) {
        if (context == null) {
            return;
        }
        try {
            HashSet<String> encoded = new HashSet<String>(
                    pendingPrefs(context).getStringSet(PENDING_EVENTS, new HashSet<String>()));
            synchronized (LOCK) {
                for (String value : encoded) {
                    PendingPackageEvent event = PendingPackageEvent.decode(value);
                    if (event != null) {
                        // Delivery belonged to the previous process. Reclassify through the
                        // existing model/profile/package gates before dispatching again.
                        event.dispatched = false;
                        PENDING_PACKAGE_EVENTS.put(pendingKey(event.packageName, event.userId,
                                event.userSerial, event.action, event.componentName), event);
                    }
                }
            }
        } catch (Throwable t) {
            Log.w(TAG, "restore pending installs failed", t);
        }
    }

    private static void persistPendingEvents(Context context) {
        if (context == null) {
            return;
        }
        HashSet<String> encoded = new HashSet<String>();
        synchronized (LOCK) {
            for (PendingPackageEvent event : PENDING_PACKAGE_EVENTS.values()) {
                encoded.add(event.encode());
            }
        }
        try {
            pendingPrefs(context).edit().putStringSet(PENDING_EVENTS, encoded).commit();
        } catch (Throwable t) {
            Log.w(TAG, "persist pending installs failed", t);
        }
    }

    private static int pendingEventCount() {
        synchronized (LOCK) {
            return PENDING_PACKAGE_EVENTS.size();
        }
    }

    private static int userId(UserHandle user) {
        if (user == null) {
            return -1;
        }
        try {
            Method method = UserHandle.class.getMethod("getIdentifier");
            Object value = method.invoke(user);
            return value instanceof Integer ? ((Integer) value).intValue() : -1;
        } catch (Throwable ignored) {
            // hashCode is not a user id and must never be used for database routing.
            return -1;
        }
    }

    private static int userIdForUid(int uid) {
        try {
            Method method = UserHandle.class.getMethod("getUserId", Integer.TYPE);
            Object value = method.invoke(null, Integer.valueOf(uid));
            return value instanceof Integer ? ((Integer) value).intValue() : 0;
        } catch (Throwable ignored) {
            return 0;
        }
    }

    private static final class PendingPackageEvent {
        final String packageName;
        final long receivedAt;
        final int userId;
        final long userSerial;
        final String componentName;
        boolean replacing;
        boolean dispatched;
        boolean newInstall;
        boolean scheduled;
        int retryIndex;
        String action;
        String source;

        PendingPackageEvent(String packageName, String action, boolean replacing,
                            int userId, long userSerial, String componentName, String source) {
            this.packageName = packageName;
            this.action = action;
            this.replacing = replacing;
            this.userId = userId;
            this.userSerial = userSerial;
            this.componentName = componentName == null ? "" : componentName;
            this.source = source;
            this.receivedAt = System.currentTimeMillis();
        }

        String encode() {
            return packageName + "|" + action + "|" + replacing + "|" + userId + "|" + userSerial
                    + "|" + componentName + "|" + receivedAt + "|" + dispatched + "|" + newInstall + "|" + retryIndex;
        }

        static PendingPackageEvent decode(String value) {
            try {
                String[] fields = value.split("\\|", -1);
                if ((fields.length != 8 && fields.length != 10) || TextUtils.isEmpty(fields[0])) {
                    return null;
                }
                boolean legacy = fields.length == 8;
                PendingPackageEvent event = new PendingPackageEvent(fields[0], fields[1],
                        Boolean.parseBoolean(fields[2]), Integer.parseInt(fields[3]),
                        legacy ? -1L : Long.parseLong(fields[4]), legacy ? "" : fields[5], "restored");
                int offset = legacy ? 0 : 2;
                event.dispatched = Boolean.parseBoolean(fields[5 + offset]);
                event.newInstall = Boolean.parseBoolean(fields[6 + offset]);
                event.retryIndex = Integer.parseInt(fields[7 + offset]);
                return event;
            } catch (Throwable ignored) {
                return null;
            }
        }
    }

    private static final class PendingRemovalEvent {
        final String packageName;
        final int userId;
        final long userSerial;
        final String componentName;
        final String source;
        final long receivedAt;

        PendingRemovalEvent(String packageName, int userId, long userSerial, String componentName,
                            String source) {
            this.packageName = packageName;
            this.userId = userId;
            this.userSerial = userSerial;
            this.componentName = componentName == null ? "" : componentName;
            this.source = source;
            this.receivedAt = System.currentTimeMillis();
        }
    }

    private static String safeLabel(CharSequence value, String fallback) {
        return TextUtils.isEmpty(value) ? fallback : value.toString();
    }

    private static String notificationText(Notification n) {
        StringBuilder out = new StringBuilder();
        try {
            Bundle extras = n.extras;
            if (extras != null) {
                for (String key : extras.keySet()) {
                    Object value = extras.get(key);
                    if (value instanceof CharSequence) {
                        out.append(' ').append(value);
                    } else if (value instanceof CharSequence[]) {
                        CharSequence[] array = (CharSequence[]) value;
                        for (CharSequence item : array) {
                            out.append(' ').append(item);
                        }
                    }
                }
            }
        } catch (Throwable ignored) {
        }
        return out.toString();
    }

    private static boolean looksLikeInstallNotification(String text) {
        if (TextUtils.isEmpty(text)) {
            return false;
        }
        String lower = text.toLowerCase(Locale.ROOT);
        return lower.contains("install") || lower.contains("downloading")
                || lower.contains("download") || text.contains("安装")
                || text.contains("下载") || text.contains("正在安装")
                || text.contains("安装中");
    }

    private static boolean looksLikeCompletionNotification(String text) {
        if (TextUtils.isEmpty(text)) {
            return false;
        }
        String lower = text.toLowerCase(Locale.ROOT);
        return lower.contains("installed") || lower.contains("complete")
                || lower.contains("finished") || lower.contains("success")
                || text.contains("安装完成") || text.contains("已安装")
                || text.contains("下载完成") || text.contains("完成安装");
    }

    private static String firstPackageName(String text) {
        Matcher matcher = PACKAGE_PATTERN.matcher(text == null ? "" : text);
        while (matcher.find()) {
            String value = matcher.group(1);
            if (!value.startsWith("android.") && !"com.android.systemui".equals(value)) {
                return value;
            }
        }
        return null;
    }

    private static String titleFromNotification(Notification n, String fallback) {
        try {
            CharSequence title = n.extras == null ? null : n.extras.getCharSequence(Notification.EXTRA_TITLE);
            if (!TextUtils.isEmpty(title)) {
                return title.toString();
            }
        } catch (Throwable ignored) {
        }
        return fallback;
    }

    private static int notificationProgress(Notification n) {
        try {
            Bundle extras = n.extras;
            if (extras != null) {
                int max = extras.getInt(Notification.EXTRA_PROGRESS_MAX, 0);
                int value = extras.getInt(Notification.EXTRA_PROGRESS, 0);
                if (max > 0 && value >= 0) {
                    return Math.max(0, Math.min(99, Math.round(value * 100f / max)));
                }
            }
        } catch (Throwable ignored) {
        }
        return 1;
    }

    private static Drawable largeNotificationIcon(Context context, Notification n) {
        try {
            if (Build.VERSION.SDK_INT >= 23) {
                Icon icon = n.getLargeIcon();
                if (icon != null) {
                    Drawable drawable = icon.loadDrawable(context);
                    if (drawable != null) {
                        return drawable;
                    }
                }
            }
        } catch (Throwable ignored) {
        }
        try {
            if (n.largeIcon != null) {
                return new BitmapDrawable(context.getResources(), n.largeIcon);
            }
        } catch (Throwable ignored) {
        }
        return null;
    }

    private static void savePendingIcon(Context context, String pkg, Drawable drawable) {
        try {
            File file = pendingIconFile(context, pkg);
            if (file == null || drawable == null) {
                return;
            }
            File parent = file.getParentFile();
            if (parent != null && !parent.isDirectory()) {
                parent.mkdirs();
            }
            Bitmap bitmap = drawableToBitmap(drawable);
            if (bitmap == null) {
                return;
            }
            FileOutputStream out = new FileOutputStream(file);
            try {
                bitmap.compress(Bitmap.CompressFormat.PNG, 100, out);
            } finally {
                out.close();
            }
        } catch (Throwable ignored) {
        }
    }

    private static Bitmap drawableToBitmap(Drawable drawable) {
        if (drawable instanceof BitmapDrawable) {
            Bitmap bitmap = ((BitmapDrawable) drawable).getBitmap();
            if (bitmap != null) {
                return bitmap;
            }
        }
        int width = Math.max(1, drawable.getIntrinsicWidth());
        int height = Math.max(1, drawable.getIntrinsicHeight());
        Bitmap bitmap = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmap);
        drawable.setBounds(0, 0, width, height);
        drawable.draw(canvas);
        return bitmap;
    }

    private static File pendingIconFile(Context context, String pkg) {
        if (context == null || TextUtils.isEmpty(pkg)) {
            return null;
        }
        return new File(new File(context.getFilesDir(), "install_icons"),
                Integer.toHexString(pkg.hashCode()) + ".png");
    }

    private static boolean hasPendingIcon(Context context, String pkg) {
        File file = pendingIconFile(context, pkg);
        return file != null && file.isFile() && file.length() > 0;
    }

    private static void deletePendingIcon(Context context, String pkg) {
        try {
            File file = pendingIconFile(context, pkg);
            if (file != null && file.isFile()) {
                file.delete();
            }
        } catch (Throwable ignored) {
        }
    }
}
