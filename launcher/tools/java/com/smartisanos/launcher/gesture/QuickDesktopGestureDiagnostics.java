package com.smartisanos.launcher.gesture;

import android.util.Log;
import android.view.MotionEvent;

import java.lang.reflect.Method;
import java.util.Locale;

/**
 * Low-frequency diagnostics for the original left-screen gesture path.
 *
 * <p>This class is intentionally observational. It does not own gestures, alter progress,
 * or make any decision about whether Quick Desktop may be shown.</p>
 */
public final class QuickDesktopGestureDiagnostics {
    private static final String LOG_TAG = "QuickDesktopGesture";

    private static int sessionId;
    private static int lastProgressBucket = -1;

    private QuickDesktopGestureDiagnostics() {
    }

    public static void onTouch(MotionEvent event, float closedProgress,
                               boolean providerDebounce, boolean leftScreenEnabled) {
        if (event == null) {
            return;
        }
        int action = event.getActionMasked();
        if (action == MotionEvent.ACTION_DOWN) {
            sessionId++;
            lastProgressBucket = -1;
            Log.i(LOG_TAG, "QD_GESTURE_BEGIN session=" + sessionId
                    + " closed=" + format(closedProgress)
                    + " enabled=" + leftScreenEnabled
                    + " providerDebounce=" + providerDebounce
                    + " editMode=" + editMode());
        } else if (action == MotionEvent.ACTION_UP || action == MotionEvent.ACTION_CANCEL) {
            Log.i(LOG_TAG, "QD_GESTURE_END session=" + sessionId
                    + " action=" + actionName(action)
                    + " closed=" + format(closedProgress)
                    + " open=" + format(1.0f - closedProgress)
                    + " enabled=" + leftScreenEnabled
                    + " providerDebounce=" + providerDebounce
                    + " editMode=" + editMode());
        }
    }

    public static void onProgress(float closedProgress, boolean requestedShow) {
        float openProgress = clamp01(1.0f - closedProgress);
        int bucket = Math.min(10, Math.max(0, (int) Math.floor(openProgress * 10.0f)));
        if (!requestedShow && bucket == lastProgressBucket) {
            return;
        }
        lastProgressBucket = bucket;
        Log.i(LOG_TAG, "QD_GESTURE_PROGRESS session=" + sessionId
                + " bucket=" + bucket
                + " closed=" + format(closedProgress)
                + " open=" + format(openProgress)
                + " requestShow=" + requestedShow
                + " editMode=" + editMode());
    }

    public static void onRequestShow(boolean providerDebounce) {
        Log.i(LOG_TAG, "QD_REQUEST_SHOW session=" + sessionId
                + " providerDebounce=" + providerDebounce
                + " editMode=" + editMode());
    }

    private static String editMode() {
        try {
            Class<?> type = Class.forName("com.smartisanos.launcher.view.Eb");
            Object instance = type.getMethod("getInstance").invoke(null);
            if (instance == null) {
                return "unknown";
            }
            Method method = type.getMethod("isEditMode");
            return String.valueOf(method.invoke(instance));
        } catch (Throwable ignored) {
            return "unknown";
        }
    }

    private static float clamp01(float value) {
        return Math.max(0.0f, Math.min(1.0f, value));
    }

    private static String format(float value) {
        return String.format(Locale.US, "%.3f", value);
    }

    private static String actionName(int action) {
        return action == MotionEvent.ACTION_UP ? "UP" : "CANCEL";
    }
}
