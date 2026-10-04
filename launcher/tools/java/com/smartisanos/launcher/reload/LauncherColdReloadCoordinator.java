package com.smartisanos.launcher.reload;

import android.app.Activity;
import android.app.Dialog;
import android.app.ActivityManager;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import android.os.Process;
import android.os.SystemClock;
import android.util.Log;
import android.view.Choreographer;
import android.view.View;
import android.view.ViewTreeObserver;

import java.lang.ref.WeakReference;
import java.util.List;
import java.util.UUID;

import com.smartisanos.launcher.backup.BackupOperationLock;

/** Coordinates only the process/window handoff; it never changes Launcher business state. */
public final class LauncherColdReloadCoordinator {
    private static final String TAG = "LauncherColdReload";
    private static final String RELOAD_PREFS = "launcher_reload_protocol";
    private static final String KEY_EXPECTED_LAUNCHER_TOKEN = "expected_launcher_token";
    private static final Handler MAIN_HANDLER = new Handler(Looper.getMainLooper());
    private static volatile String sReloadToken;
    /** Expected token retained while a singleTask root is being recreated from a stale base Intent. */
    private static volatile String sExpectedLauncherToken;
    private static volatile String sReportedToken;
    private static volatile boolean sInitialLoadingWindowPending;
    private static volatile boolean sInitialLoadingWindowApplied;
    private static volatile String sPendingLauncherStartToken;
    private static long sLauncherStartGeneration;
    private static volatile String sIconSizeToken;
    private static volatile int sIconSizeOld = -1;
    private static volatile int sIconSizeNew = -1;
    private static volatile int sIconSizeOldPid = -1;
    private static volatile int sIconSizeNewPid = -1;
    private static WeakReference<Activity> sLauncherActivity;

    private LauncherColdReloadCoordinator() {
    }

    public static boolean beginGridReload(Context context, int gridMode) {
        return beginReload(context, "grid_migration", gridMode, readThemeMode(context));
    }

    /** Starts the shared handoff after a transparent-theme configuration commit. */
    public static boolean beginThemeReload(Context context, boolean transparent) {
        return beginReload(context, transparent ? "transparent_theme_enable" : "transparent_theme_disable",
                -1, transparent ? "transparent" : "normal");
    }

    /** Starts the shared opaque handoff after the icon-size preference commit. */
    public static boolean beginIconSizeReload(Context context, int oldSize, int newSize) {
        if (oldSize == newSize) {
            log("ICON_SIZE_UNCHANGED_SKIP", "none", "ICON_SIZE_CHANGE", -1,
                    "normal oldSize=" + oldSize + " newSize=" + newSize);
            return true;
        }
        return beginReload(context, "ICON_SIZE_CHANGE", -1, readThemeMode(context), oldSize, newSize);
    }

    /** Reuses the existing opaque handoff for the single weather/calendar active-icon setting. */
    public static boolean beginActiveIconReload(Context context, boolean oldEnabled,
            boolean newEnabled) {
        if (oldEnabled == newEnabled) {
            log("ACTIVE_ICON_SETTINGS_UNCHANGED_SKIP", "none", "ACTIVE_ICON_SETTINGS_CHANGE",
                    -1, readThemeMode(context));
            return true;
        }
        return beginReload(context, "ACTIVE_ICON_SETTINGS_CHANGE", -1, readThemeMode(context));
    }

    /** Reuses the verified opaque handoff after top safe-area settings or cache change. */
    public static boolean beginStatusBarCompatReload(Context context) {
        return beginReload(context, "STATUS_BAR_COMPAT_CHANGE", -1, readThemeMode(context));
    }

    public static boolean beginDefaultIconShapeReload(Context context) {
        return beginReload(context, "DEFAULT_ICON_SHAPE_CHANGE", -1, readThemeMode(context));
    }

    public static boolean beginIconIlluminationReload(Context context) {
        return beginReload(context, "ICON_ILLUMINATION_CHANGE", -1, readThemeMode(context));
    }

    public static boolean beginDesktopTextSizeReload(Context context, int oldSize, int newSize) {
        if (oldSize == newSize) return true;
        return beginReload(context, "DESKTOP_TEXT_SIZE_CHANGE", -1, readThemeMode(context));
    }

    /** Starts the existing opaque process handoff for an already journaled restore. */
    public static boolean beginBackupRestoreReload(Context context, String operationToken,
            boolean rollback, int gridMode) {
        if (context == null || operationToken == null || operationToken.length() == 0) {
            return false;
        }
        return beginReload(context, rollback ? "BACKUP_RESTORE_ROLLBACK" : "BACKUP_RESTORE",
                gridMode, readThemeMode(context), -1, -1, operationToken);
    }

    private static boolean beginReload(Context context, String reason, int gridMode, String themeMode) {
        return beginReload(context, reason, gridMode, themeMode, -1, -1);
    }

    private static boolean beginReload(Context context, String reason, int gridMode, String themeMode,
            int oldIconSize, int newIconSize) {
        return beginReload(context, reason, gridMode, themeMode, oldIconSize, newIconSize, null);
    }

    private static boolean beginReload(Context context, String reason, int gridMode, String themeMode,
            int oldIconSize, int newIconSize, String requestedToken) {
        if (context == null) {
            return false;
        }
        if (BackupOperationLock.isBusyForDifferentOwner(requestedToken)) {
            log("RELOAD_REJECTED_BUSY", requestedToken, reason, gridMode, themeMode);
            return false;
        }
        String token = requestedToken == null ? UUID.randomUUID().toString() : requestedToken;
        persistExpectedLauncherToken(context, token, reason, gridMode, themeMode);
        if ("ICON_SIZE_CHANGE".equals(reason)) {
            registerIconSizeContext(token, oldIconSize, newIconSize, Process.myPid(), -1);
            log("ICON_SIZE_CHANGE_REQUESTED", token, reason, gridMode, themeMode);
            log("ICON_SIZE_VALUE_OLD", token, reason, gridMode, themeMode);
            log("ICON_SIZE_VALUE_NEW", token, reason, gridMode, themeMode);
            log("ICON_SIZE_PERSISTED", token, reason, gridMode, themeMode);
            log("RELOAD_TRANSITION_REQUESTED", token, reason, gridMode, themeMode);
        }
        Intent intent = new Intent(context, ReloadTransitionActivity.class);
        intent.putExtra(ReloadProtocol.EXTRA_RELOAD_TOKEN, token);
        intent.putExtra(ReloadProtocol.EXTRA_MAIN_PROCESS_PID, Process.myPid());
        intent.putExtra(ReloadProtocol.EXTRA_RELOAD_REASON, reason);
        intent.putExtra(ReloadProtocol.EXTRA_GRID_MODE, gridMode);
        intent.putExtra(ReloadProtocol.EXTRA_THEME_MODE, themeMode);
        if ("ICON_SIZE_CHANGE".equals(reason)) {
            intent.putExtra(ReloadProtocol.EXTRA_ICON_SIZE_OLD, oldIconSize);
            intent.putExtra(ReloadProtocol.EXTRA_ICON_SIZE_NEW, newIconSize);
        }
        // The declared :reload affinity is honored only when this is started
        // as a task. Without NEW_TASK Android puts it into the caller's
        // Launcher task, whose clearTaskOnLaunch then destroys the cover.
        intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK | Intent.FLAG_ACTIVITY_NO_ANIMATION);
        try {
            log("RELOAD_REQUESTED", token, reason, gridMode, themeMode);
            log("RELOAD_TOKEN_CREATED", token, reason, gridMode, themeMode);
            context.startActivity(intent);
            if (context instanceof Activity) {
                LoadingUiWindowCompat.hideNavigation(((Activity) context).getWindow());
                ((Activity) context).overridePendingTransition(0, 0);
            }
            return true;
        } catch (Throwable error) {
            log("RELOAD_FAILED", token, "start_transition:" + shortError(error), gridMode, themeMode);
            return false;
        }
    }

    public static void captureLauncherReloadIntent(Activity activity) {
        captureLauncherReloadIntent(activity, activity == null ? null : activity.getIntent());
    }

    public static void captureLauncherReloadIntent(Activity activity, Intent intent) {
        if (activity == null || intent == null) {
            return;
        }
        String token = intent.getStringExtra(ReloadProtocol.EXTRA_RELOAD_TOKEN);
        if (token == null || token.length() == 0) {
            return;
        }
        if (!isExpectedLauncherToken(activity, token)) {
            sExpectedLauncherToken = readExpectedLauncherToken(activity);
            log("STALE_LAUNCHER_INTENT_IGNORED", token,
                    "expected=" + sExpectedLauncherToken,
                    intent.getIntExtra(ReloadProtocol.EXTRA_GRID_MODE, -1),
                    intent.getStringExtra(ReloadProtocol.EXTRA_THEME_MODE));
            return;
        }
        boolean preserveInitialLoadingWindow = token.equals(sExpectedLauncherToken)
                && (sInitialLoadingWindowPending || sInitialLoadingWindowApplied);
        sReloadToken = token;
        sExpectedLauncherToken = token;
        sReportedToken = null;
        if (!preserveInitialLoadingWindow) {
            sInitialLoadingWindowPending = false;
            sInitialLoadingWindowApplied = false;
        }
        sLauncherActivity = new WeakReference<Activity>(activity);
        String reason = intent.getStringExtra(ReloadProtocol.EXTRA_RELOAD_REASON);
        if ("ICON_SIZE_CHANGE".equals(reason)) {
            registerIconSizeContext(token,
                    intent.getIntExtra(ReloadProtocol.EXTRA_ICON_SIZE_OLD, -1),
                    intent.getIntExtra(ReloadProtocol.EXTRA_ICON_SIZE_NEW, -1),
                    intent.getIntExtra(ReloadProtocol.EXTRA_MAIN_PROCESS_PID, -1), Process.myPid());
        }
        log("NEW_LAUNCHER_STARTED", token,
                reason,
                intent.getIntExtra(ReloadProtocol.EXTRA_GRID_MODE, -1),
                intent.getStringExtra(ReloadProtocol.EXTRA_THEME_MODE));
    }

    /** Called from the existing renderer only after Eb.update() completes a real GL frame. */
    public static void onRendererFirstFrame() {
        final String token = sReloadToken;
        final Activity activity = sLauncherActivity == null ? null : sLauncherActivity.get();
        if (token == null || activity == null || activity.isFinishing() || token.equals(sReportedToken)) {
            return;
        }
        new Handler(Looper.getMainLooper()).post(new Runnable() {
            @Override
            public void run() {
                reportAfterDecorDraw(activity, token);
            }
        });
    }

    /** Armed only by J's exact R.string.initializing path, never by generic LoadingUI. */
    public static void armInitializationLoadingWindow() {
        String token = sReloadToken != null ? sReloadToken : sExpectedLauncherToken;
        if (token == null || sInitialLoadingWindowApplied) return;
        sInitialLoadingWindowPending = true;
        log("INITIAL_LOADING_WINDOW_ARMED", token, "exact_initializing", -1, null);
    }

    /** Invoked by widget.c before Dialog.show(), after J explicitly armed this one loading UI. */
    public static void prepareInitializationLoadingWindow(Dialog dialog) {
        if (!sInitialLoadingWindowPending || dialog == null || dialog.getWindow() == null) return;
        sInitialLoadingWindowPending = false;
        sInitialLoadingWindowApplied = true;
        LoadingUiWindowCompat.apply(dialog.getWindow());
        String token = sReloadToken != null ? sReloadToken : sExpectedLauncherToken;
        log("INITIAL_LOADING_WINDOW_PREPARED", token, "before_dialog_show", -1, null);
    }

    private static void reportAfterDecorDraw(final Activity activity, final String token) {
        if (activity.isFinishing() || token.equals(sReportedToken)) {
            return;
        }
        final View decor = activity.getWindow() == null ? null : activity.getWindow().getDecorView();
        if (decor == null) {
            log("RELOAD_FAILED", token, "missing_decor", -1, null);
            return;
        }
        final ViewTreeObserver observer = decor.getViewTreeObserver();
        observer.addOnPreDrawListener(new ViewTreeObserver.OnPreDrawListener() {
            @Override
            public boolean onPreDraw() {
                if (decor.getViewTreeObserver().isAlive()) {
                    decor.getViewTreeObserver().removeOnPreDrawListener(this);
                }
                Choreographer.getInstance().postFrameCallback(new Choreographer.FrameCallback() {
                    @Override
                    public void doFrame(long frameTimeNanos) {
                        sendFirstFrameReady(activity, token);
                    }
                });
                return true;
            }
        });
        decor.invalidate();
    }

    private static void sendFirstFrameReady(Activity activity, String token) {
        if (token.equals(sReportedToken) || activity.isFinishing()) {
            return;
        }
        sReportedToken = token;
        Intent ready = new Intent(ReloadProtocol.ACTION_FIRST_FRAME_READY);
        ready.setPackage(activity.getPackageName());
        ready.putExtra(ReloadProtocol.EXTRA_RELOAD_TOKEN, token);
        ready.putExtra(ReloadProtocol.EXTRA_LAUNCHER_PID, Process.myPid());
        ready.putExtra(ReloadProtocol.EXTRA_GRID_MODE,
                activity.getIntent().getIntExtra(ReloadProtocol.EXTRA_GRID_MODE, -1));
        ready.putExtra(ReloadProtocol.EXTRA_THEME_MODE,
                activity.getIntent().getStringExtra(ReloadProtocol.EXTRA_THEME_MODE));
        activity.sendBroadcast(ready);
        String reason = activity.getIntent().getStringExtra(ReloadProtocol.EXTRA_RELOAD_REASON);
        if ("BACKUP_RESTORE".equals(reason) || "BACKUP_RESTORE_ROLLBACK".equals(reason)) {
            com.smartisanos.launcher.backup.DesktopRestoreController
                    .onLauncherFirstFrame(activity, token, reason);
        }
        clearExpectedLauncherToken(activity, token);
        log("FIRST_FRAME_READY", token,
                activity.getIntent().getStringExtra(ReloadProtocol.EXTRA_RELOAD_REASON),
                ready.getIntExtra(ReloadProtocol.EXTRA_GRID_MODE, -1),
                ready.getStringExtra(ReloadProtocol.EXTRA_THEME_MODE));
        log("NEW_LAUNCHER_FIRST_FRAME", token,
                activity.getIntent().getStringExtra(ReloadProtocol.EXTRA_RELOAD_REASON),
                ready.getIntExtra(ReloadProtocol.EXTRA_GRID_MODE, -1),
                ready.getStringExtra(ReloadProtocol.EXTRA_THEME_MODE));
    }

    static boolean terminateOldMainAndStartLauncher(Activity transition, String token, int oldMainPid,
            String reason, int gridMode, String themeMode) {
        if (oldMainPid <= 0 || oldMainPid == Process.myPid()
                || !isMainProcessAlive(transition, oldMainPid)) {
            log("RELOAD_FAILED", token, "invalid_old_main_pid=" + oldMainPid, gridMode, themeMode);
            return false;
        }
        log("OLD_MAIN_PID", token, "pid=" + oldMainPid, gridMode, themeMode);
        log("RELOAD_PROCESS_PID", token, "pid=" + Process.myPid(), gridMode, themeMode);
        try {
            log("OLD_MAIN_PROCESS_KILL_REQUESTED", token, "pid=" + oldMainPid, gridMode, themeMode);
            Process.killProcess(oldMainPid);
            waitForOldMainExitAndStartLauncher(transition, token, oldMainPid, reason, gridMode,
                    themeMode);
            return true;
        } catch (Throwable error) {
            log("RELOAD_FAILED", token, "kill_or_start:" + shortError(error), gridMode, themeMode);
            return false;
        }
    }

    static void retryStartLauncher(Activity transition, String token, String reason, int gridMode,
            String themeMode) {
        int oldMainPid = transition.getIntent().getIntExtra(ReloadProtocol.EXTRA_MAIN_PROCESS_PID, -1);
        if (oldMainPid <= 0 || oldMainPid == Process.myPid()) return;
        // Retry uses the same exit gate; a timeout while the old PID is alive is not permission to write.
        waitForOldMainExitAndStartLauncher(transition, token, oldMainPid, reason, gridMode, themeMode);
    }

    static void cancelPendingLauncherStart(String token) {
        if (token != null && token.equals(sPendingLauncherStartToken)) {
            sPendingLauncherStartToken = null;
            sLauncherStartGeneration++;
            log("NEW_LAUNCHER_START_CANCELLED", token, "transition_no_longer_waiting", -1, null);
        }
    }

    /**
     * A killed PID can remain attached to ActivityManager for a short period.
     * Starting the singleTask Launcher during that period causes Oplus to
     * report "attached to a previous process" and finish it as a second crash.
     * Choreographer polling waits for the observable process-state transition,
     * not a guessed success delay.
     */
    private static void waitForOldMainExitAndStartLauncher(final Activity transition,
            final String token, final int oldMainPid, final String reason, final int gridMode,
            final String themeMode) {
        sPendingLauncherStartToken = token;
        final long generation = ++sLauncherStartGeneration;
        final WeakReference<Activity> transitionRef = new WeakReference<Activity>(transition);
        final Runnable[] waitForExit = new Runnable[1];
        waitForExit[0] = new Runnable() {
            @Override
            public void run() {
                if (!token.equals(sPendingLauncherStartToken) || generation != sLauncherStartGeneration) {
                    return;
                }
                Activity current = transitionRef.get();
                if (current == null || current.isFinishing() || current.isDestroyed()) {
                    cancelPendingLauncherStart(token);
                    return;
                }
                if (isMainProcessAlive(current, oldMainPid)) {
                    Choreographer.getInstance().postFrameCallback(
                            new Choreographer.FrameCallback() {
                                @Override
                                public void doFrame(long frameTimeNanos) {
                                    MAIN_HANDLER.post(waitForExit[0]);
                                }
                            });
                    return;
                }
                try {
                    log("OLD_MAIN_PROCESS_EXIT_CONFIRMED", token, "pid=" + oldMainPid,
                            gridMode, themeMode);
                    if ("ICON_SIZE_CHANGE".equals(reason)) {
                        log("OLD_LAUNCHER_PID_TERMINATED", token, reason, gridMode, themeMode);
                    }
                    startLauncherAfterRestore(current, token, reason, gridMode, themeMode, generation);
                } catch (Throwable error) {
                    log("RELOAD_FAILED", token, "start_after_exit:" + shortError(error),
                            gridMode, themeMode);
                }
            }
        };
        MAIN_HANDLER.post(waitForExit[0]);
    }

    private static void startLauncherAfterRestore(final Activity transition, final String token,
            final String reason, final int gridMode, final String themeMode, final long generation) {
        if (!"BACKUP_RESTORE".equals(reason) && !"BACKUP_RESTORE_ROLLBACK".equals(reason)) {
            sPendingLauncherStartToken = null;
            startLauncher(transition, token, reason, gridMode, themeMode);
            return;
        }
        final WeakReference<Activity> transitionRef = new WeakReference<Activity>(transition);
        if (transition instanceof ReloadTransitionActivity)
            ((ReloadTransitionActivity) transition).onRestoreApplyStarted();
        boolean accepted = com.smartisanos.launcher.backup.DesktopRestoreController
                .applyPreparedAfterOldProcessExitAsync(transition, token, reason,
                new com.smartisanos.launcher.backup.DesktopRestoreController.ApplyListener() {
                    @Override public void onApplied(boolean success) {
                        Activity current = transitionRef.get();
                        if (generation != sLauncherStartGeneration
                                || !token.equals(sPendingLauncherStartToken)
                                || current == null || current.isFinishing() || current.isDestroyed()) return;
                        if (!success) {
                            log("RELOAD_FAILED", token, "restore_checkpoint_blocked", gridMode, themeMode);
                            if (current instanceof ReloadTransitionActivity)
                                ((ReloadTransitionActivity) current).showRestoreFailure();
                            return;
                        }
                        sPendingLauncherStartToken = null;
                        if (current instanceof ReloadTransitionActivity)
                            ((ReloadTransitionActivity) current).onRestoreApplyFinished();
                        try { startLauncher(current, token, reason, gridMode, themeMode); }
                        catch (Throwable error) {
                            log("RELOAD_FAILED", token, "start_after_restore:" + shortError(error), gridMode, themeMode);
                            if (current instanceof ReloadTransitionActivity)
                                ((ReloadTransitionActivity) current).showLauncherStartFailure();
                        }
                    }
                });
        if (!accepted && transition instanceof ReloadTransitionActivity)
            ((ReloadTransitionActivity) transition).showRestoreBusy();
    }

    private static void startLauncher(Context context, String token, String reason, int gridMode,
            String themeMode) {
        Intent launcher = new Intent(Intent.ACTION_MAIN);
        launcher.addCategory(Intent.CATEGORY_HOME);
        launcher.setClassName(context.getPackageName(), "com.smartisanos.launcher.Launcher");
        // Launcher is singleTask and the old process has already been ended by
        // the opaque transition activity. CLEAR_TASK is deliberately unsafe
        // here: on several ROMs it also trims the still-waiting :reload task,
        // exposing the system wallpaper before FIRST_FRAME_READY arrives.
        launcher.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK | Intent.FLAG_ACTIVITY_NO_ANIMATION);
        launcher.putExtra(ReloadProtocol.EXTRA_RELOAD_TOKEN, token);
        launcher.putExtra(ReloadProtocol.EXTRA_RELOAD_REASON, reason);
        launcher.putExtra(ReloadProtocol.EXTRA_GRID_MODE, gridMode);
        launcher.putExtra(ReloadProtocol.EXTRA_THEME_MODE, themeMode);
        if ("ICON_SIZE_CHANGE".equals(reason) && token.equals(sIconSizeToken)) {
            launcher.putExtra(ReloadProtocol.EXTRA_MAIN_PROCESS_PID, sIconSizeOldPid);
            launcher.putExtra(ReloadProtocol.EXTRA_ICON_SIZE_OLD, sIconSizeOld);
            launcher.putExtra(ReloadProtocol.EXTRA_ICON_SIZE_NEW, sIconSizeNew);
        }
        context.startActivity(launcher);
        if (context instanceof Activity) {
            ((Activity) context).overridePendingTransition(0, 0);
        }
        log("NEW_LAUNCHER_STARTED", token, reason, gridMode, themeMode);
    }

    /**
     * Launcher is singleTask. On some ROMs a dead task is first recreated with its old base
     * Intent, then the current reload Intent arrives through onNewIntent(). Persisting only the
     * one expected token prevents that stale base Intent from arming a second cold reload.
     */
    private static void persistExpectedLauncherToken(Context context, String token, String reason,
            int gridMode, String themeMode) {
        try {
            boolean committed = context.getSharedPreferences(RELOAD_PREFS, Context.MODE_PRIVATE)
                    .edit().putString(KEY_EXPECTED_LAUNCHER_TOKEN, token).commit();
            log(committed ? "EXPECTED_LAUNCHER_TOKEN_PERSISTED"
                            : "EXPECTED_LAUNCHER_TOKEN_PERSIST_FAILED",
                    token, reason, gridMode, themeMode);
        } catch (Throwable error) {
            log("EXPECTED_LAUNCHER_TOKEN_PERSIST_FAILED", token,
                    shortError(error), gridMode, themeMode);
        }
    }

    private static boolean isExpectedLauncherToken(Context context, String token) {
        String expected = readExpectedLauncherToken(context);
        return expected == null || expected.length() == 0 || expected.equals(token);
    }

    private static String readExpectedLauncherToken(Context context) {
        try {
            return context.getSharedPreferences(RELOAD_PREFS, Context.MODE_PRIVATE)
                    .getString(KEY_EXPECTED_LAUNCHER_TOKEN, null);
        } catch (Throwable ignored) {
            return null;
        }
    }

    private static void clearExpectedLauncherToken(Context context, String token) {
        if (!token.equals(readExpectedLauncherToken(context))) {
            return;
        }
        try {
            context.getSharedPreferences(RELOAD_PREFS, Context.MODE_PRIVATE).edit()
                    .remove(KEY_EXPECTED_LAUNCHER_TOKEN).commit();
            if (token.equals(sExpectedLauncherToken)) {
                sExpectedLauncherToken = null;
            }
            log("EXPECTED_LAUNCHER_TOKEN_CLEARED", token, "first_frame_ready", -1, null);
        } catch (Throwable error) {
            log("EXPECTED_LAUNCHER_TOKEN_CLEAR_FAILED", token, shortError(error), -1, null);
        }
    }

    private static boolean isMainProcessAlive(Context context, int pid) {
        try {
            ActivityManager manager = (ActivityManager) context.getSystemService(Context.ACTIVITY_SERVICE);
            List<ActivityManager.RunningAppProcessInfo> processes = manager == null ? null
                    : manager.getRunningAppProcesses();
            if (processes == null) {
                return false;
            }
            for (ActivityManager.RunningAppProcessInfo process : processes) {
                if (process.pid == pid && context.getPackageName().equals(process.processName)) {
                    return true;
                }
            }
        } catch (Throwable ignored) {
        }
        return false;
    }

    private static String readThemeMode(Context context) {
        try {
            return context.getSharedPreferences("launcher_settings", Context.MODE_PRIVATE)
                    .getString("launcher_theme", "unknown");
        } catch (Throwable ignored) {
            return "unknown";
        }
    }

    static void log(String event, String token, String reason, int gridMode, String themeMode) {
        Log.i(TAG, event + " token=" + token + " pid=" + Process.myPid()
                + " thread=" + Thread.currentThread().getName() + " reason=" + reason
                + " grid=" + gridMode + " theme=" + themeMode
                + iconSizeLogDetails(token, reason) + " elapsed=" + SystemClock.elapsedRealtime());
    }

    /** Records the new process' configuration read without touching business state. */
    public static void reportIconSizeConfigRead(int size) {
        String token = sReloadToken;
        if (token != null && token.equals(sIconSizeToken)) {
            log("ICON_SIZE_CONFIG_READ", token, "ICON_SIZE_CHANGE", -1, null);
        }
    }

    static void registerIconSizeContext(String token, int oldSize, int newSize, int oldPid,
            int newPid) {
        if (token == null || token.length() == 0) {
            return;
        }
        sIconSizeToken = token;
        sIconSizeOld = oldSize;
        sIconSizeNew = newSize;
        sIconSizeOldPid = oldPid;
        sIconSizeNewPid = newPid;
    }

    private static String iconSizeLogDetails(String token, String reason) {
        if (!"ICON_SIZE_CHANGE".equals(reason) || token == null || !token.equals(sIconSizeToken)) {
            return "";
        }
        return " oldPid=" + sIconSizeOldPid + " newPid=" + sIconSizeNewPid
                + " oldSize=" + sIconSizeOld + " newSize=" + sIconSizeNew;
    }

    private static String shortError(Throwable error) {
        String name = error == null ? "unknown" : error.getClass().getSimpleName();
        String message = error == null ? "" : error.getMessage();
        return message == null || message.length() == 0 ? name : name + ":" + message;
    }
}
