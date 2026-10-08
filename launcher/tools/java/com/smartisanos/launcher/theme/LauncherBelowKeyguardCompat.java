package com.smartisanos.launcher.theme;

import android.app.Activity;
import android.app.KeyguardManager;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import android.os.PowerManager;
import android.os.SystemClock;
import android.util.Log;

/**
 * Ordinary-Android replacement for isSmartisanLauncherBelowKeyguard().
 *
 * This class only owns one Keyguard-to-Launcher eligibility session. The
 * original Smartisan prepare, play and force-finish events remain unchanged.
 */
public final class LauncherBelowKeyguardCompat {
    public static final String ACTION_INTERNAL_PLAY =
            "com.smartisanos.launcher.action.INTERNAL_COMMIT_UNLOCK_ANIMATION";
    public static final String ACTION_INTERNAL_FORCE_FINISH =
            "com.smartisanos.launcher.action.INTERNAL_FORCE_FINISH_UNLOCK_ANIMATION";

    private static final String TAG = "UnlockAnimation";
    private static final Object LOCK = new Object();
    private static final Handler MAIN_HANDLER = new Handler(Looper.getMainLooper());
    private static final long V157_RESUME_PRE_ROLL_DELAY_MS = 120L;
    private static final String V157_RESUME_PRE_ROLL = "V1_5_7_RESUME_PRE_ROLL";
    private static long preRollScheduledSessionId;
    // Compatibility uses v1.5.7 handoff timing; default retains focus gating.
    // The persisted key stays unchanged so existing settings and backups survive.
    public static final String KEY_WAIT_FOR_FOCUS = "launcher_unlock_wait_for_focus";

    private static Context applicationContext;
    private static long keyguardSessionId;
    private static boolean keyguardSessionActive;
    private static boolean launcherWasBelowKeyguard;
    private static boolean unlockPrepared;
    private static boolean screenOffConfirmed;
    private static boolean observedNonInteractive;
    private static boolean prepareRequested;
    private static boolean unlockDismissPending;
    private static boolean unlockConsumed;
    private static boolean launcherResumed;
    private static boolean launcherHasWindowFocus;
    private static boolean visibleLauncherBeforeLock;
    private static boolean pausedVisibleCandidate;
    private static boolean resumeDuringKeyguardHandoff;
    private static boolean internalPlayPermit;
    private static boolean unlockAnimationRunning;
    private static boolean originalPlayDispatched;
    private static boolean auxiliaryTransitionRunning;
    // Written by GL events; callbacks retain this identity when a Timeline is built.
    private static long renderSessionId;
    private static boolean forceFinishExecuting;

    private static long lastLauncherResumeUptime;
    private static long lastWindowFocusTrueUptime;
    private static long sessionScreenOffUptime;
    private static long sessionPrepareBeginUptime;
    private static long sessionPrepareReadyUptime;
    private static long sessionDismissUptime;
    private static long sessionLauncherResumeUptime;
    private static long sessionWindowFocusTrueUptime;
    private static long sessionKeyguardUnlockedUptime;
    private static long sessionRuntimeReadyUptime;
    private static long sessionCommitPlayUptime;
    private static long sessionAnimationStartUptime;
    private static String sessionArmSource;
    // Snapshot the preference when arming so a session never changes policy midway.
    private static boolean sessionMaintainedCompatMode;

    private LauncherBelowKeyguardCompat() {
    }

    public static void onLauncherResumed(Activity activity) {
        synchronized (LOCK) {
            remember(activity);
            launcherResumed = true;
            pausedVisibleCandidate = false;
            lastLauncherResumeUptime = SystemClock.uptimeMillis();
            if (keyguardSessionActive) {
                sessionLauncherResumeUptime = lastLauncherResumeUptime;
                if (isKeyguardLocked(activity)) {
                    resumeDuringKeyguardHandoff = true;
                    logLocked(activity, "UNLOCK_DIRECT_HANDOFF_SEEN", "RESUME_LOCKED");
                }
            }
            if (launcherHasWindowFocus) {
                visibleLauncherBeforeLock = true;
            }
            logLocked(activity, "UNLOCK_LAUNCHER_RESUME", null);
        }
        prepareWhenCovered(activity);
        tryCommitUnlockAnimation(activity, "RESUME");
        scheduleV157ResumePreRoll(activity);
    }

    public static void onLauncherPaused(Activity activity) {
        boolean armFromLifecycle = false;
        boolean forceFinish = false;
        synchronized (LOCK) {
            remember(activity);
            boolean interactive = isInteractive(activity);
            boolean keyguardLocked = isKeyguardLocked(activity);
            boolean screenTurningOff = !interactive || keyguardLocked;
            boolean wasVisibleLauncher = visibleLauncherBeforeLock && launcherResumed;
            pausedVisibleCandidate = wasVisibleLauncher;
            launcherResumed = false;
            launcherHasWindowFocus = false;
            if (!unlockConsumed) {
                resumeDuringKeyguardHandoff = false;
            }
            logLocked(activity, "UNLOCK_LAUNCHER_PAUSE", null);
            if (wasVisibleLauncher && screenTurningOff) {
                armFromLifecycle = true;
            } else if (!screenTurningOff) {
                visibleLauncherBeforeLock = false;
            }
            if (interactive && !keyguardLocked
                    && (keyguardSessionActive || unlockConsumed || unlockAnimationRunning
                    || originalPlayDispatched || internalPlayPermit)) {
                cancelLocked("UNLOCK_CANCEL_NOT_DIRECT_HOME", activity);
                forceFinish = true;
            }
        }
        if (forceFinish) dispatchOriginalAction(activity, ACTION_INTERNAL_FORCE_FINISH);
        if (armFromLifecycle) armAndPrepareIfNeeded(activity, "LIFECYCLE_PAUSE");
    }

    public static void onWindowFocusChanged(Activity activity, boolean hasFocus) {
        boolean armFromLifecycle = false;
        synchronized (LOCK) {
            remember(activity);
            boolean screenTurningOff = !isInteractive(activity) || isKeyguardLocked(activity);
            if (!hasFocus && launcherActuallyVisibleLocked(activity) && screenTurningOff) {
                armFromLifecycle = true;
            }
            launcherHasWindowFocus = hasFocus;
            if (hasFocus) {
                lastWindowFocusTrueUptime = SystemClock.uptimeMillis();
                if (keyguardSessionActive) {
                    sessionWindowFocusTrueUptime = lastWindowFocusTrueUptime;
                }
                if (launcherResumed) {
                    visibleLauncherBeforeLock = true;
                }
            }
            logLocked(activity,
                    hasFocus ? "UNLOCK_WINDOW_FOCUS_TRUE" : "UNLOCK_WINDOW_FOCUS_FALSE", null);
        }
        if (armFromLifecycle) armAndPrepareIfNeeded(activity, "LIFECYCLE_FOCUS_LOST");
        if (hasFocus) tryCommitUnlockAnimation(activity, "WINDOW_FOCUS");
    }

    /** Explicit successful app launch ends HOME eligibility even during keyguard handoff. */
    public static void onExternalApplicationLaunched(Context context) {
        boolean finish;
        synchronized (LOCK) {
            remember(context);
            finish = keyguardSessionActive || unlockConsumed || unlockPrepared
                    || unlockAnimationRunning || auxiliaryTransitionRunning
                    || originalPlayDispatched || internalPlayPermit;
            if (finish) cancelLocked("UNLOCK_CANCEL_APP_LAUNCH", context);
            visibleLauncherBeforeLock = false;
            pausedVisibleCandidate = false;
        }
        if (finish) dispatchOriginalAction(context, ACTION_INTERNAL_FORCE_FINISH);
    }

    public static void onLauncherStopped(Activity activity) {
        boolean armFromLifecycle = false;
        boolean forceFinish = false;
        synchronized (LOCK) {
            remember(activity);
            boolean interactive = isInteractive(activity);
            boolean keyguardLocked = isKeyguardLocked(activity);
            boolean screenTurningOff = !interactive || keyguardLocked;
            if (!unlockConsumed) {
                resumeDuringKeyguardHandoff = false;
            }
            if ((visibleLauncherBeforeLock || pausedVisibleCandidate) && screenTurningOff) {
                visibleLauncherBeforeLock = true;
                armFromLifecycle = true;
            } else if (!screenTurningOff) {
                visibleLauncherBeforeLock = false;
            }
            pausedVisibleCandidate = false;
            logLocked(activity, "UNLOCK_LAUNCHER_STOP", null);
            if (keyguardSessionActive && interactive && !keyguardLocked && !unlockConsumed) {
                cancelLocked("UNLOCK_CANCEL_NOT_DIRECT_HOME", activity);
                forceFinish = true;
            } else if (unlockConsumed && interactive && !keyguardLocked) {
                // A target app can cover HOME before the original GL timeline finishes.
                // Finish that session while HOME is stopped so it cannot resume on return.
                cancelLocked("UNLOCK_CANCEL_COVERED_BY_APP", activity);
                forceFinish = true;
            }
        }
        if (forceFinish) dispatchOriginalAction(activity, ACTION_INTERNAL_FORCE_FINISH);
        if (armFromLifecycle) armAndPrepareIfNeeded(activity, "LIFECYCLE_STOP");
    }

    /** Both SCREEN_OFF and qualified Launcher lifecycle evidence enter here. */






    public static boolean armAndPrepareIfNeeded(Context context, String source) {
        boolean armed = armSessionIfNeeded(context, source);
        if (armed) {
            synchronized (LOCK) {
                if ("SCREEN_OFF".equals(source)) {
                    screenOffConfirmed = true;
                    observedNonInteractive |= !isInteractive(context);
                }
            }
            prepareWhenCovered(context);
        }
        return armed;
    }

    private static void prepareWhenCovered(Context context) {
        boolean prepare;
        synchronized (LOCK) {
            boolean dismissed = isInteractive(context) && !isKeyguardLocked(context)
                    && (unlockDismissPending || resumeDuringKeyguardHandoff);
            boolean wakingCovered = observedNonInteractive && launcherResumed
                    && !launcherHasWindowFocus && resumeDuringKeyguardHandoff
                    && isInteractive(context) && isKeyguardLocked(context);
            prepare = keyguardSessionActive && !unlockConsumed && !unlockPrepared
                    && !prepareRequested && (screenOffConfirmed || wakingCovered || dismissed);
            if (prepare) prepareRequested = true;
        }
        if (prepare) dispatchOriginalAction(context, "action_keyguard_on");
    }

    private static boolean armSessionIfNeeded(Context context, String source) {
        boolean forcePrevious = false;
        synchronized (LOCK) {
            remember(context);
            logLocked(context, "UNLOCK_ARM_SIGNAL", source);
            if (!isUnlockAnimationEnabled()) {
                cancelLocked("UNLOCK_SESSION_NOT_ARMED_DISABLED", context);
                return false;
            }
            if (isInteractive(context) && !isKeyguardLocked(context)) {
                logLocked(context, "UNLOCK_SESSION_NOT_ARMED_NO_LOCK_EVIDENCE", source);
                return false;
            }
            if (keyguardSessionActive) {
                logLocked(context, "UNLOCK_DUPLICATE_ARM_IGNORED", source);
                return true;
            }
            // Some ROMs deliver SCREEN_OFF after the locked-resume callback.
            // If this same lock session has already consumed its pre-roll,
            // treating that late broadcast as a new generation truncates the
            // animation and prepares a second, stale scene.
            if (unlockConsumed && launcherWasBelowKeyguard && isKeyguardLocked(context)
                    && !visibleLauncherBeforeLock) {
                logLocked(context, "UNLOCK_DUPLICATE_ARM_IGNORED",
                        "CONSUMED_LOCK_SESSION " + source);
                return true;
            }
            if (!visibleLauncherBeforeLock) {
                cancelLocked("UNLOCK_SESSION_NOT_ARMED_NOT_VISIBLE_HOME", context);
                return false;
            }
            forcePrevious = unlockAnimationRunning || originalPlayDispatched
                    || auxiliaryTransitionRunning || internalPlayPermit || unlockConsumed;
            if (forcePrevious) {
                logLocked(context, "UNLOCK_FORCE_FINISH_PREVIOUS_SESSION", source);
                clearSessionLocked();
                unlockAnimationRunning = false;
            }
        }

        if (forcePrevious) {
            dispatchOriginalAction(context, ACTION_INTERNAL_FORCE_FINISH);
        }

        synchronized (LOCK) {
            if (keyguardSessionActive) {
                logLocked(context, "UNLOCK_DUPLICATE_ARM_IGNORED", source);
                return true;
            }
            if ((isInteractive(context) && !isKeyguardLocked(context))
                    || !visibleLauncherBeforeLock) {
                logLocked(context, "UNLOCK_SESSION_NOT_ARMED_EVIDENCE_LOST", source);
                return false;
            }
            keyguardSessionId++;
            sessionMaintainedCompatMode = context.getSharedPreferences("launcher_settings",
                    Context.MODE_PRIVATE).getBoolean(KEY_WAIT_FOR_FOCUS, false);
            keyguardSessionActive = true;
            launcherWasBelowKeyguard = true;
            unlockPrepared = false;
            screenOffConfirmed = false;
            observedNonInteractive = !isInteractive(context);
            prepareRequested = false;
            unlockDismissPending = false;
            unlockConsumed = false;
            internalPlayPermit = false;
            unlockAnimationRunning = false;
            originalPlayDispatched = false;
            auxiliaryTransitionRunning = false;
            resumeDuringKeyguardHandoff = false;
            visibleLauncherBeforeLock = false;
            resetSessionTimingLocked();
            sessionArmSource = source;
            sessionScreenOffUptime = SystemClock.uptimeMillis();
            sessionLauncherResumeUptime = lastLauncherResumeUptime;
            sessionWindowFocusTrueUptime = lastWindowFocusTrueUptime;
            logLocked(context, "UNLOCK_SESSION_ARMED", source);
        }
        return true;
    }

    public static boolean canPrepare(Context context) {
        synchronized (LOCK) {
            boolean allowed = isUnlockAnimationEnabled()
                    && keyguardSessionActive && launcherWasBelowKeyguard && !unlockConsumed
                    && !unlockPrepared && sessionPrepareBeginUptime == 0L;
            if (allowed) {
                sessionPrepareBeginUptime = SystemClock.uptimeMillis();
                logLocked(context, "UNLOCK_PREPARE_BEGIN", sessionArmSource);
            } else if (keyguardSessionActive && (unlockPrepared
                    || sessionPrepareBeginUptime != 0L)) {
                logLocked(context, "UNLOCK_DUPLICATE_PREPARE_IGNORED", sessionArmSource);
            } else {
                logLocked(context, "UNLOCK_SKIP_NO_SESSION", null);
            }
            return allowed;
        }
    }

    public static void onPrepareReady(long sessionId, boolean initialized) {
        Context context;
        synchronized (LOCK) {
            context = applicationContext;
            if (sessionId != keyguardSessionId || !initialized) return;
            if (!keyguardSessionActive || !launcherWasBelowKeyguard || unlockConsumed) {
                logLocked(context, "UNLOCK_SKIP_NO_SESSION", "prepareReady");
                return;
            }
            if (unlockPrepared) {
                logLocked(context, "UNLOCK_DUPLICATE_PREPARE_IGNORED", "prepareReady");
                return;
            }
            unlockPrepared = true;
            sessionPrepareReadyUptime = SystemClock.uptimeMillis();
            logLocked(context, "UNLOCK_PREPARE_READY", null);
        }
        tryCommitUnlockAnimation(context, "PREPARE_READY");
        scheduleV157ResumePreRoll(context);
    }

    public static void onPrepareFailed(Context context) {
        synchronized (LOCK) {
            if (keyguardSessionActive) {
                // Both maintained modes initialize in the GL play event when
                // the lock-time Launcher scene was not ready yet.
                sessionPrepareBeginUptime = 0L;
                    logLocked(context, "UNLOCK_PREPARE_DEFERRED_TO_PLAY", null);
                return;
            }
            cancelLocked("UNLOCK_SKIP_NOT_PREPARED", context);
        }
        dispatchOriginalAction(context, ACTION_INTERNAL_FORCE_FINISH);
    }

    /** Keep a real dismiss signal until the foreground desktop can accept it. */
    public static void onDismissSignal(Context context, String action) {
        boolean covered = false;
        synchronized (LOCK) {
            remember(context);
            int importance = !launcherResumed
                    && (keyguardSessionActive || unlockConsumed || unlockAnimationRunning)
                    ? processImportance() : -1;
            logLocked(context, "UNLOCK_USER_PRESENT", action + " processImportance=" + importance);
            // A real foreground handoff may deliver USER_PRESENT before onResume.
            // Only positive OS evidence that our process is background cancels it.
            if (!launcherResumed && isInteractive(context) && !isKeyguardLocked(context)
                    && importance > android.app.ActivityManager.RunningAppProcessInfo.IMPORTANCE_FOREGROUND) {
                cancelLocked("UNLOCK_CANCEL_DISMISS_BACKGROUND", context);
                covered = true;
            } else {
                if (!keyguardSessionActive || !launcherWasBelowKeyguard) {
                    logLocked(context, unlockConsumed ? "UNLOCK_SKIP_CONSUMED" : "UNLOCK_SKIP_NO_SESSION", action);
                    return;
                }
                if (unlockConsumed) {
                    logLocked(context, "UNLOCK_SKIP_CONSUMED", action);
                    return;
                }
                unlockDismissPending = true;
                if (sessionDismissUptime == 0L) sessionDismissUptime = SystemClock.uptimeMillis();
                logLocked(context, "UNLOCK_DISMISS_PENDING", action);
            }
        }
        if (covered) {
            dispatchOriginalAction(context, ACTION_INTERNAL_FORCE_FINISH);
            return;
        }
        prepareWhenCovered(context);
        tryCommitUnlockAnimation(context, "DISMISS");
    }

    private static int processImportance() {
        try {
            android.app.ActivityManager.RunningAppProcessInfo state = new android.app.ActivityManager.RunningAppProcessInfo();
            android.app.ActivityManager.getMyMemoryState(state);
            return state.importance;
        } catch (RuntimeException error) {
            Log.w(TAG, "Unable to read foreground eligibility");
            return -1;
        }
    }

    /** The sole point that may grant one dispatch into the original play chain. */
    public static void tryCommitUnlockAnimation(Context context, String source) {
        boolean dispatch = false;
        boolean forceFinish = false;
        synchronized (LOCK) {
            remember(context);
            final boolean keyguardLocked = isKeyguardLocked(context);
            final boolean interactive = isInteractive(context);
            final boolean hasDirectDismissSignal = unlockDismissPending;
            final boolean legacyPreRoll = sessionMaintainedCompatMode
                    && V157_RESUME_PRE_ROLL.equals(source)
                    && preRollScheduledSessionId == keyguardSessionId
                    && resumeDuringKeyguardHandoff;
            final long now = SystemClock.uptimeMillis();
            if (keyguardSessionActive && interactive && !keyguardLocked
                    && sessionKeyguardUnlockedUptime == 0L) {
                sessionKeyguardUnlockedUptime = now;
                logLocked(context, "UNLOCK_KEYGUARD_UNLOCKED", null);
            }
            if (keyguardSessionActive && isLauncherRuntimeReady()
                    && sessionRuntimeReadyUptime == 0L) {
                sessionRuntimeReadyUptime = now;
                logLocked(context, "UNLOCK_RUNTIME_READY", null);
            }
            logLocked(context, "UNLOCK_TRY_COMMIT", source);
            if (!isUnlockAnimationEnabled()) {
                cancelLocked("UNLOCK_SKIP_DISABLED", context);
                forceFinish = true;
            } else if (!keyguardSessionActive || !launcherWasBelowKeyguard) {
                logLocked(context, unlockConsumed ? "UNLOCK_SKIP_CONSUMED" : "UNLOCK_SKIP_NO_SESSION", source);
            } else if (unlockConsumed) {
                logLocked(context, "UNLOCK_SKIP_CONSUMED", source);
            } else if (sessionMaintainedCompatMode && !unlockPrepared) {
                logLocked(context, "UNLOCK_SKIP_NOT_PREPARED", source);
            } else if (!launcherResumed) {
                logLocked(context, "UNLOCK_SKIP_NOT_RESUMED", source);
            } else if (!interactive) {
                logLocked(context, "UNLOCK_SKIP_NOT_INTERACTIVE", source);
            } else if (keyguardLocked && !legacyPreRoll) {
                logLocked(context, "UNLOCK_SKIP_KEYGUARD_STILL_LOCKED", source);
            } else if (!hasDirectDismissSignal && !resumeDuringKeyguardHandoff) {
                logLocked(context, "UNLOCK_SKIP_NO_UNLOCK_SIGNAL", source);
            } else if (!launcherHasWindowFocus
                    && !(sessionMaintainedCompatMode && (legacyPreRoll || hasDirectDismissSignal))) {
                logLocked(context, "UNLOCK_SKIP_NO_FOCUS", source);
            } else {
                dispatch = consumeForPlayLocked(context, source, now);
            }
        }
        if (forceFinish) dispatchOriginalAction(context, ACTION_INTERNAL_FORCE_FINISH);
        if (dispatch) {
            dispatchOriginalAction(context, ACTION_INTERNAL_PLAY);
        }
    }

    /** v1.5.7 pre-roll is opt-in and belongs to the current lock generation only. */
    private static void scheduleV157ResumePreRoll(final Context context) {
        final long sessionId;
        synchronized (LOCK) {
            if (!sessionMaintainedCompatMode || !keyguardSessionActive
                    || !launcherWasBelowKeyguard || !unlockPrepared || unlockConsumed
                    || !launcherResumed || !resumeDuringKeyguardHandoff
                    || !isInteractive(context) || !isKeyguardLocked(context)
                    || preRollScheduledSessionId == keyguardSessionId) return;
            sessionId = keyguardSessionId;
            preRollScheduledSessionId = sessionId;
            logLocked(context, "UNLOCK_V157_PRE_ROLL_SCHEDULED", "delayMs=120");
        }
        MAIN_HANDLER.postDelayed(new Runnable() {
            @Override public void run() {
                synchronized (LOCK) {
                    if (sessionId != keyguardSessionId || !sessionMaintainedCompatMode
                            || !keyguardSessionActive || unlockConsumed) return;
                }
                tryCommitUnlockAnimation(context, V157_RESUME_PRE_ROLL);
            }
        }, V157_RESUME_PRE_ROLL_DELAY_MS);
    }

    private static boolean consumeForPlayLocked(Context context, String source, long now) {
        unlockConsumed = true;
        unlockDismissPending = false;
        keyguardSessionActive = false;
        internalPlayPermit = true;
        sessionCommitPlayUptime = now;
        logLocked(context, "UNLOCK_SESSION_CONSUMED", source);
        logLocked(context, "UNLOCK_COMMIT_PLAY",
                source + " " + timingSummaryLocked(false));
        return true;
    }

    public static boolean takeInternalPlayPermit(Context context) {
        synchronized (LOCK) {
            if (!internalPlayPermit || !unlockConsumed || !launcherWasBelowKeyguard) {
                logLocked(context, "UNLOCK_SKIP_CONSUMED", "internalPermit");
                return false;
            }
            internalPlayPermit = false;
            return true;
        }
    }

    public static boolean isMaintainedCompatMode() {
        synchronized (LOCK) {
            return sessionMaintainedCompatMode;
        }
    }

    public static long getSessionId() {
        synchronized (LOCK) { return keyguardSessionId; }
    }

    public static long getRenderSessionId() {
        synchronized (LOCK) { return renderSessionId; }
    }

    /** Reject cancelled queued work before it can alter the scene. */
    public static boolean beginGlEvent(long sessionId, boolean play) {
        synchronized (LOCK) {
            if (sessionId != keyguardSessionId || !launcherWasBelowKeyguard
                    || !(keyguardSessionActive || unlockConsumed)
                    || (!play && (!keyguardSessionActive || unlockConsumed))
                    || (play && (!unlockConsumed || !launcherResumed))) {
                logLocked(applicationContext, "UNLOCK_STALE_GL_EVENT_IGNORED",
                        "eventSession=" + sessionId);
                return false;
            }
            renderSessionId = sessionId;
            return true;
        }
    }

    public static boolean beginGlForceFinish(long sessionId) {
        synchronized (LOCK) {
            // Cleanup queued for an older scene must not kill a newer GL scene.
            if (renderSessionId > sessionId) return false;
            forceFinishExecuting = true;
            return true;
        }
    }

    /** A renderer callback is not proof of SurfaceFlinger presentation. */
    public static void onRendererFrame() {
        Context context;
        synchronized (LOCK) {
            if (!keyguardSessionActive || !launcherResumed || !launcherHasWindowFocus
                    || !(unlockDismissPending || resumeDuringKeyguardHandoff)) return;
            context = applicationContext;
            if (!isInteractive(context) || isKeyguardLocked(context)) return;
        }
        tryCommitUnlockAnimation(context, "RENDER_FRAME");
    }

    public static boolean isLauncherBelowKeyguard(Context context) {
        synchronized (LOCK) {
            return context != null && launcherWasBelowKeyguard
                    && (keyguardSessionActive || unlockConsumed || unlockAnimationRunning);
        }
    }

    public static void onOriginalPlayDispatched(long sessionId) {
        synchronized (LOCK) {
            if (sessionId != keyguardSessionId || !unlockConsumed) return;
            originalPlayDispatched = true;
            logLocked(applicationContext, "UNLOCK_ORIGINAL_PLAY_DISPATCHED", null);
            if (auxiliaryTransitionRunning) {
                // The original engine may retarget its in-flight q(0) prepare
                // transition to q(1) without issuing a second start callback.
                auxiliaryTransitionRunning = false;
                unlockAnimationRunning = true;
                recordAnimationStartLocked();
                logLocked(applicationContext, "UNLOCK_ANIMATION_START",
                        "COALESCED_AFTER_PREPARE " + timingSummaryLocked(true));
            }
        }
    }

    public static void onUnlockAnimationStarted(long sessionId) {
        boolean stale;
        boolean auxiliary;
        Context context;
        synchronized (LOCK) {
            if (sessionId != keyguardSessionId || forceFinishExecuting) return;
            context = applicationContext;
            boolean committedPlay = originalPlayDispatched && unlockConsumed
                    && launcherWasBelowKeyguard;
            auxiliary = !committedPlay && keyguardSessionActive
                    && launcherWasBelowKeyguard && unlockPrepared;
            stale = !committedPlay && !auxiliary;
            if (auxiliary) {
                auxiliaryTransitionRunning = true;
                logLocked(context, "UNLOCK_PREPARE_TRANSITION_START", null);
                return;
            }
            if (stale) {
                cancelLocked("UNLOCK_CANCEL_STALE_ANIMATION_START", context);
            }
            unlockAnimationRunning = true;
            recordAnimationStartLocked();
            logLocked(context, "UNLOCK_ANIMATION_START",
                    (stale ? "STALE " : "") + timingSummaryLocked(true));
        }
        if (stale) dispatchOriginalAction(context, ACTION_INTERNAL_FORCE_FINISH);
    }

    public static void onUnlockAnimationFinished(long sessionId) {
        synchronized (LOCK) {
            if (sessionId != keyguardSessionId || forceFinishExecuting) {
                logLocked(applicationContext, "UNLOCK_REPLACED_FINISH_IGNORED", null);
                return;
            }
            if (auxiliaryTransitionRunning) {
                auxiliaryTransitionRunning = false;
                logLocked(applicationContext, "UNLOCK_PREPARE_TRANSITION_FINISH", null);
                return;
            }
            unlockAnimationRunning = false;
            logLocked(applicationContext, "UNLOCK_ANIMATION_FINISH", timingSummaryLocked(true));
            clearSessionLocked();
        }
    }

    public static void onForceFinishComplete(long sessionId) {
        synchronized (LOCK) {
            forceFinishExecuting = false;
            if (sessionId != keyguardSessionId) return;
            unlockAnimationRunning = false;
            logLocked(applicationContext, "UNLOCK_FORCE_FINISH", null);
            clearSessionLocked();
        }
    }

    public static void forceFinishOriginal(Context context, String reason) {
        synchronized (LOCK) {
            cancelLocked("UNLOCK_FORCE_FINISH_REQUEST", context);
            logLocked(context, "UNLOCK_FORCE_FINISH_REASON", reason);
        }
        dispatchOriginalAction(context, ACTION_INTERNAL_FORCE_FINISH);
    }

    public static void onUnlockSettingChanged(boolean enabled) {
        if (enabled) return;
        Context context;
        synchronized (LOCK) {
            context = applicationContext;
            cancelLocked("UNLOCK_CANCEL_DISABLED", context);
        }
        dispatchOriginalAction(context, ACTION_INTERNAL_FORCE_FINISH);
    }

    private static void cancelLocked(String event, Context context) {
        logLocked(context, event, null);
        clearSessionLocked();
    }

    private static void clearSessionLocked() {
        keyguardSessionActive = false;
        preRollScheduledSessionId = 0L;
        launcherWasBelowKeyguard = false;
        unlockPrepared = false;
        screenOffConfirmed = false;
        observedNonInteractive = false;
        prepareRequested = false;
        unlockDismissPending = false;
        unlockConsumed = false;
        internalPlayPermit = false;
        originalPlayDispatched = false;
        auxiliaryTransitionRunning = false;
        resumeDuringKeyguardHandoff = false;
        resetSessionTimingLocked();
    }

    private static void resetSessionTimingLocked() {
        sessionScreenOffUptime = 0L;
        sessionPrepareBeginUptime = 0L;
        sessionPrepareReadyUptime = 0L;
        sessionDismissUptime = 0L;
        sessionLauncherResumeUptime = 0L;
        sessionWindowFocusTrueUptime = 0L;
        sessionKeyguardUnlockedUptime = 0L;
        sessionRuntimeReadyUptime = 0L;
        sessionCommitPlayUptime = 0L;
        sessionAnimationStartUptime = 0L;
        sessionArmSource = null;
    }

    private static void recordAnimationStartLocked() {
        if (sessionAnimationStartUptime == 0L) {
            sessionAnimationStartUptime = SystemClock.uptimeMillis();
        }
    }

    private static String timingSummaryLocked(boolean includeAnimationStart) {
        return "mode=" + (sessionMaintainedCompatMode ? "V157_COMPAT" : "FOCUS_DEFAULT")
                + " screenOff=" + sessionScreenOffUptime
                + " prepareBegin=" + sessionPrepareBeginUptime
                + " prepareReady=" + sessionPrepareReadyUptime
                + " userPresent=" + sessionDismissUptime
                + " launcherResume=" + sessionLauncherResumeUptime
                + " focusTrue=" + sessionWindowFocusTrueUptime
                + " keyguardUnlocked=" + sessionKeyguardUnlockedUptime
                + " runtimeReady=" + sessionRuntimeReadyUptime
                + " commitPlay=" + sessionCommitPlayUptime
                + " animationStart=" + sessionAnimationStartUptime
                + " userPresentToCommitMs="
                + elapsed(sessionDismissUptime, sessionCommitPlayUptime)
                + " commitToStartMs="
                + (includeAnimationStart
                ? elapsed(sessionCommitPlayUptime, sessionAnimationStartUptime) : -1L)
                + " lastGate=" + lastSatisfiedGateLocked();
    }

    private static long elapsed(long start, long end) {
        return start > 0L && end >= start ? end - start : -1L;
    }

    private static String lastSatisfiedGateLocked() {
        long latest = sessionPrepareReadyUptime;
        String gate = "PREPARE_READY";
        if (sessionDismissUptime > latest) {
            latest = sessionDismissUptime;
            gate = "USER_PRESENT";
        }
        if (sessionLauncherResumeUptime > latest) {
            latest = sessionLauncherResumeUptime;
            gate = "LAUNCHER_RESUME";
        }
        if (sessionWindowFocusTrueUptime > latest) {
            latest = sessionWindowFocusTrueUptime;
            gate = "WINDOW_FOCUS_TRUE";
        }
        if (sessionKeyguardUnlockedUptime > latest) {
            gate = "KEYGUARD_UNLOCKED";
        }
        return gate;
    }

    private static boolean launcherActuallyVisibleLocked(Context context) {
        return launcherResumed && launcherHasWindowFocus && visibleLauncherBeforeLock;
    }

    private static boolean isKeyguardLocked(Context context) {
        if (context == null) return false;
        try {
            KeyguardManager keyguard = (KeyguardManager) context.getSystemService(Context.KEYGUARD_SERVICE);
            return keyguard != null && keyguard.isKeyguardLocked();
        } catch (Throwable error) {
            return false;
        }
    }

    private static boolean isInteractive(Context context) {
        if (context == null) return true;
        try {
            PowerManager power = (PowerManager) context.getSystemService(Context.POWER_SERVICE);
            return power == null || power.isInteractive();
        } catch (Throwable error) {
            return true;
        }
    }

    private static boolean isUnlockAnimationEnabled() {
        try {
            Class<?> constants = Class.forName("com.smartisanos.launcher.data.Constants");
            return constants.getField("ENABLE_UNLOCK_ANIMATION").getBoolean(null);
        } catch (Throwable error) {
            return false;
        }
    }

    private static boolean isLauncherRuntimeReady() {
        try {
            Class<?> launcherProxy = Class.forName("com.smartisanos.launcher.J");
            return Boolean.TRUE.equals(launcherProxy.getMethod("Ua").invoke(null));
        } catch (Throwable error) {
            return false;
        }
    }

    private static void dispatchOriginalAction(Context context, String action) {
        if (context == null) return;
        try {
            Class<?> proxyClass = Class.forName("com.smartisanos.launcher.ja");
            Object proxy = proxyClass.getMethod("getInstance").invoke(null);
            if (proxy == null) {
                Log.w(TAG, "Original unlock dispatch ignored: ApplicationProxy is not ready");
                return;
            }
            Class<?> receiverClass = Class.forName("com.smartisanos.launcher.ia");
            java.lang.reflect.Constructor<?> constructor =
                    receiverClass.getDeclaredConstructor(proxyClass);
            constructor.setAccessible(true);
            Object receiver = constructor.newInstance(proxy);
            receiverClass.getMethod("onReceive", Context.class, Intent.class)
                    .invoke(receiver, context, new Intent(action));
        } catch (Throwable error) {
            Log.e(TAG, "Unable to dispatch original unlock action " + action, error);
        }
    }

    private static void remember(Context context) {
        if (context == null) return;
        Context app = context.getApplicationContext();
        applicationContext = app == null ? context : app;
    }

    private static void logLocked(Context context, String event, String detail) {
        String record = event
                + " sessionId=" + keyguardSessionId
                + " uptime=" + SystemClock.uptimeMillis()
                + " resumed=" + launcherResumed
                + " focus=" + launcherHasWindowFocus
                + " interactive=" + isInteractive(context)
                + " keyguardLocked=" + isKeyguardLocked(context)
                + " wasBelowKeyguard=" + launcherWasBelowKeyguard
                + " prepared=" + unlockPrepared
                + " pending=" + unlockDismissPending
                + " consumed=" + unlockConsumed
                + " running=" + unlockAnimationRunning
                + " visibleLauncherBeforeLock=" + visibleLauncherBeforeLock
                + " directHandoff=" + resumeDuringKeyguardHandoff
                + (detail == null ? "" : " detail=" + detail);
        Log.i(TAG, record);
    }
}
