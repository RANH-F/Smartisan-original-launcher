package com.smartisanos.launcher.quickdesktop;

import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.drawable.ColorDrawable;
import android.os.Looper;
import android.util.Log;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.ViewGroup;
import android.view.VelocityTracker;
import android.widget.PopupWindow;

import java.lang.ref.WeakReference;

/**
 * Narrow bridge between the original RootView left-edge progress and the in-activity host.
 *
 * <p>The controller does not recognize the opening gesture. RootView remains the only owner of
 * the opening gesture, direction lock, page-zero gate, and edit-mode behavior.</p>
 */
public final class QuickDesktopController {
    private static final String TAG = "QuickDesktopHost";
    private static final String PREFS = "quick_desktop_private";
    private static final String KEY_ENABLED = "enabled";
    public static final String CARD_MUSIC_PAYMENT = "card_music_payment";
    public static final String CARD_SHORTCUTS = "card_shortcuts";
    public static final String CARD_CALENDAR = "card_calendar";
    public static final String CARD_LIFE = "card_life";
    private static final String KEY_CUSTOM_HEADER_TEXT = "custom_header_text";
    private static final String KEY_MUSIC_PACKAGE = "selected_music_package";
    private static final String KEY_PAYMENT_PROVIDER = "payment_provider";
    public static final String PAYMENT_ALIPAY = "alipay";
    public static final String PAYMENT_WECHAT = "wechat";

    /*
     * The host is deliberately not attached to RootView because the launcher's GLSurfaceView is
     * a separate top-ordered Surface. Keep one process-owned instance until attach() replaces it;
     * a WeakReference here lets the unattached view be collected before the first swipe.
     */
    private static QuickDesktopHostView hostView;
    private static WeakReference<ViewGroup> rootRef = new WeakReference<>(null);
    private static PopupWindow hostWindow;
    private static boolean hostWindowTouchable;
    private static boolean actionLaunchPending;
    private static boolean openingGesture;
    private static boolean captureStartedForGesture;
    private static VelocityTracker openingVelocityTracker;
    private static float openingDownX;

    private QuickDesktopController() {
    }

    public static boolean isEnabled(Context context) {
        if (context == null) {
            return false;
        }
        return preferences(context).getBoolean(KEY_ENABLED, true);
    }

    public static void setEnabled(Context context, boolean enabled) {
        if (context == null) {
            return;
        }
        preferences(context).edit().putBoolean(KEY_ENABLED, enabled).apply();
        syncRuntimeLeftScreenEnabled(enabled);
        QuickDesktopHostView host = host();
        if (!enabled && host != null) {
            host.closeImmediately("disabled");
        }
    }

    public static boolean isCardEnabled(Context context, String cardKey) {
        return context != null && cardKey != null
                && preferences(context).getBoolean(cardKey, true);
    }

    public static void setCardEnabled(Context context, String cardKey, boolean enabled) {
        if (context == null || cardKey == null) {
            return;
        }
        preferences(context).edit().putBoolean(cardKey, enabled).apply();
        QuickDesktopHostView host = host();
        if (host != null) {
            host.refreshContent();
        }
    }

    public static String getCustomHeaderText(Context context) {
        if (context == null) return "0步";
        String value = preferences(context).getString(KEY_CUSTOM_HEADER_TEXT, "0步");
        return value == null || value.trim().length() == 0 ? "0步" : value.trim();
    }

    public static void setCustomHeaderText(Context context, String value) {
        if (context == null) return;
        String normalized = value == null ? "" : value.trim();
        if (normalized.length() > 12) normalized = normalized.substring(0, 12);
        if (normalized.length() == 0) normalized = "0步";
        preferences(context).edit().putString(KEY_CUSTOM_HEADER_TEXT, normalized).apply();
        QuickDesktopHostView host = host();
        if (host != null) host.refreshContent();
    }

    public static String getSelectedMusicPackage(Context context) {
        if (context == null) return "";
        String value = preferences(context).getString(KEY_MUSIC_PACKAGE, "");
        return value == null ? "" : value.trim();
    }

    public static void setSelectedMusicPackage(Context context, String packageName) {
        if (context == null) return;
        String value = packageName == null ? "" : packageName.trim();
        preferences(context).edit().putString(KEY_MUSIC_PACKAGE, value).apply();
    }

    public static String getPaymentProvider(Context context) {
        if (context == null) return PAYMENT_ALIPAY;
        String value = preferences(context).getString(KEY_PAYMENT_PROVIDER, PAYMENT_ALIPAY);
        return PAYMENT_WECHAT.equals(value) ? PAYMENT_WECHAT : PAYMENT_ALIPAY;
    }

    public static void setPaymentProvider(Context context, String provider) {
        if (context == null) return;
        String value = PAYMENT_WECHAT.equals(provider) ? PAYMENT_WECHAT : PAYMENT_ALIPAY;
        preferences(context).edit().putString(KEY_PAYMENT_PROVIDER, value).apply();
        QuickDesktopHostView host = host();
        if (host != null) host.refreshContent();
    }

    public static void attach(ViewGroup root) {
        if (root == null) {
            return;
        }
        if (Looper.myLooper() != Looper.getMainLooper()) {
            root.post(new Runnable() {
                @Override
                public void run() {
                    attach(root);
                }
            });
            return;
        }
        // Constants is still the original RootView gesture gate.  Restore applies preferences in
        // the isolated reload process, so every new Launcher instance must project the persisted
        // Quick Desktop switch back into that runtime-only field before it can receive a swipe.
        syncRuntimeLeftScreenEnabled(isEnabled(root.getContext()));
        QuickDesktopHostView current = host();
        ViewGroup currentRoot = rootRef.get();
        if (current != null && currentRoot == root) {
            return;
        }
        if (current != null) {
            current.closeImmediately("reattach");
        }
        dismissHostWindow();
        QuickDesktopHostView host = new QuickDesktopHostView(root.getContext());
        hostView = host;
        rootRef = new WeakReference<>(root);
        QuickDesktopBackgroundCapture.schedule(root, host, 700L);
        Log.i(TAG, "QD_HOST_ATTACHED enabled=" + isEnabled(root.getContext()));
    }

    public static void onTouch(MotionEvent event, float closedProgress) {
        QuickDesktopHostView host = host();
        if (event == null || host == null || !isEnabled(host.getContext())) {
            return;
        }
        int action = event.getActionMasked();
        if (action == MotionEvent.ACTION_DOWN) {
            openingGesture = host.getOpenProgress() < 0.001f;
            openingDownX = event.getX();
            captureStartedForGesture = false;
            if (openingGesture) {
                host.cancelSettling();
                host.refreshContent();
                // Capture before RootView applies the first horizontal delta. Replacing the
                // background after motion has begun produces a visible one-frame jump.
                host.clearBackgroundSnapshots();
                ViewGroup root = rootRef.get();
                if (root != null) {
                    captureStartedForGesture = true;
                    QuickDesktopBackgroundCapture.schedule(root, host, 0L);
                }
                recycleOpeningVelocityTracker();
                openingVelocityTracker = VelocityTracker.obtain();
                openingVelocityTracker.addMovement(event);
            }
        } else if (openingGesture && openingVelocityTracker != null) {
            openingVelocityTracker.addMovement(event);
        }
        if ((action == MotionEvent.ACTION_UP || action == MotionEvent.ACTION_CANCEL)
                && openingGesture) {
            float open = host.getOpenProgress();
            if (open > 0.0f) {
                float velocityX = 0.0f;
                if (openingVelocityTracker != null) {
                    openingVelocityTracker.computeCurrentVelocity(1000);
                    velocityX = openingVelocityTracker.getXVelocity();
                }
                boolean shouldOpen = action != MotionEvent.ACTION_CANCEL
                        && (velocityX > 900.0f
                        || (velocityX >= -900.0f && open > (1.0f / 3.0f)));
                host.settleTo(shouldOpen ? 1.0f : 0.0f, velocityX,
                        action == MotionEvent.ACTION_CANCEL ? "open-cancel" : "open-release");
            }
            recycleOpeningVelocityTracker();
            openingGesture = false;
        }
    }

    public static void onProgress(float closedProgress, MotionEvent event) {
        QuickDesktopHostView host = host();
        if (host == null || event == null || !openingGesture || !isEnabled(host.getContext())) {
            return;
        }
        if (!captureStartedForGesture) {
            captureStartedForGesture = true;
            // A cached normal-home screenshot is invalid after any desktop or edit-mode change.
            // Refresh only after RootView has confirmed a real left-screen reveal, so ordinary
            // taps and vertical gestures do not trigger framebuffer reads.
            host.clearBackgroundSnapshots();
            ViewGroup root = rootRef.get();
            if (root != null) {
                QuickDesktopBackgroundCapture.schedule(root, host, 0L);
            }
        }
        showHostWindow(false);
        // RootView's original Ad divisor is a Smartisan logical width. On modern ROMs it can
        // remain around twice the physical display width, so using Ad directly reveals only half
        // a page after a full-screen drag. RootView still owns all gesture gating; once it calls
        // this bridge, translate the replacement host by the gesture's real physical distance.
        float physicalProgress = (event.getX() - openingDownX) / host.getPageWidth();
        host.setOpenProgress(physicalProgress, "root-physical-progress");
    }

    public static void requestShow() {
        QuickDesktopHostView host = host();
        if (host != null && isEnabled(host.getContext())) {
            showHostWindow(false);
            host.ensureVisibleForOriginalRequest();
        }
    }

    public static boolean onKeyEvent(KeyEvent event) {
        QuickDesktopHostView host = host();
        if (host == null || event == null || host.getOpenProgress() <= 0.0f
                || event.getKeyCode() != KeyEvent.KEYCODE_BACK) {
            return false;
        }
        if (event.getAction() == KeyEvent.ACTION_UP) {
            host.settleTo(0.0f, 0.0f, "back");
        }
        return true;
    }

    public static void onBackPressed() {
        QuickDesktopHostView host = host();
        if (host != null && host.getOpenProgress() > 0.0f) {
            host.settleTo(0.0f, 0.0f, "back");
        }
    }

    public static void onHomeIntent() {
        QuickDesktopHostView host = host();
        if (host != null) {
            host.closeImmediately("home-intent");
            ViewGroup root = rootRef.get();
            if (root != null) {
                QuickDesktopBackgroundCapture.schedule(root, host, 300L);
            }
        }
        openingGesture = false;
        captureStartedForGesture = false;
        recycleOpeningVelocityTracker();
        actionLaunchPending = false;
    }

    public static void onLauncherStopped() {
        if (!actionLaunchPending) return;
        actionLaunchPending = false;
        closeForAction("target-covered-launcher");
    }

    public static void onLauncherResumed() {
        if (!actionLaunchPending) return;
        actionLaunchPending = false;
        closeForAction("returned-before-stop");
    }

    static void onHostClosed() {
        openingGesture = false;
        captureStartedForGesture = false;
        recycleOpeningVelocityTracker();
        dismissHostWindow();
    }

    static void onHostOpened() {
        showHostWindow(true);
    }

    static void closeForAction(String reason) {
        QuickDesktopHostView host = host();
        if (host != null) {
            host.closeImmediately(reason);
        }
    }

    static void markActionLaunchPending(String reason) {
        actionLaunchPending = true;
        Log.i(TAG, "QD_ACTION_PENDING reason=" + reason);
    }

    private static QuickDesktopHostView host() {
        return hostView;
    }

    private static void showHostWindow(boolean touchable) {
        QuickDesktopHostView host = host();
        ViewGroup root = rootRef.get();
        if (host == null || root == null || root.getWindowToken() == null) {
            return;
        }
        if (hostWindow == null) {
            PopupWindow popup = new PopupWindow(host,
                    ViewGroup.LayoutParams.MATCH_PARENT, ViewGroup.LayoutParams.MATCH_PARENT, false);
            popup.setBackgroundDrawable(new ColorDrawable(0x00000000));
            popup.setAnimationStyle(0);
            popup.setClippingEnabled(false);
            popup.setOutsideTouchable(false);
            popup.setInputMethodMode(PopupWindow.INPUT_METHOD_NOT_NEEDED);
            popup.setElevation(0.0f);
            hostWindow = popup;
            hostWindowTouchable = touchable;
        }
        hostWindow.setFocusable(false);
        if (!hostWindow.isShowing()) {
            hostWindow.setTouchable(touchable);
            hostWindowTouchable = touchable;
            try {
                hostWindow.showAtLocation(root, Gravity.TOP | Gravity.START, 0, 0);
                Log.i(TAG, "QD_HOST_WINDOW_SHOW touchable=" + touchable);
            } catch (RuntimeException error) {
                Log.e(TAG, "QD_HOST_WINDOW_SHOW_FAILED", error);
            }
        } else if (hostWindowTouchable != touchable) {
            hostWindow.setTouchable(touchable);
            hostWindowTouchable = touchable;
            hostWindow.update();
            Log.i(TAG, "QD_HOST_WINDOW_TOUCHABLE touchable=" + touchable);
        }
    }

    private static void dismissHostWindow() {
        if (hostWindow != null) {
            try {
                hostWindow.dismiss();
            } catch (RuntimeException error) {
                Log.w(TAG, "QD_HOST_WINDOW_DISMISS_FAILED", error);
            }
            hostWindow = null;
            hostWindowTouchable = false;
        }
    }

    private static SharedPreferences preferences(Context context) {
        return context.getApplicationContext().getSharedPreferences(PREFS, Context.MODE_PRIVATE);
    }

    private static void syncRuntimeLeftScreenEnabled(boolean enabled) {
        try {
            Class<?> constants = Class.forName("com.smartisanos.launcher.data.Constants");
            constants.getField("sLeftScreenEnabled").setBoolean(null, enabled);
            Log.i(TAG, "QD_RUNTIME_GATE enabled=" + enabled);
        } catch (ReflectiveOperationException error) {
            Log.w(TAG, "QD_RUNTIME_GATE_FAILED enabled=" + enabled, error);
        }
    }

    private static void recycleOpeningVelocityTracker() {
        if (openingVelocityTracker != null) {
            openingVelocityTracker.recycle();
            openingVelocityTracker = null;
        }
    }
}
