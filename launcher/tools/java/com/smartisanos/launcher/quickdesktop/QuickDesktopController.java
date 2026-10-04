package com.smartisanos.launcher.quickdesktop;

import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.drawable.ColorDrawable;
import android.os.Looper;
import android.util.Log;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.VelocityTracker;
import android.view.ViewConfiguration;
import android.widget.PopupWindow;
import com.smartisanos.launcher.theme.LauncherSettingBridge;

import java.lang.ref.WeakReference;

/**
 * Narrow bridge between the original RootView left-edge progress and the in-activity host.
 *
 * <p>RootView remains the owner of the opening gesture, direction lock, page-zero gate, and
 * edit-mode behavior. This bridge only cancels RootView's current sequence after a revealed
 * left screen wins and then reverses closed, so the same UP cannot start desktop pagination.</p>
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
    private static boolean searchLaunchPending;
    private static boolean openingGesture;
    private static boolean captureStartedForGesture;
    private static boolean backgroundReadyForGesture;
    private static boolean revealWindowTouchable;
    private static boolean cleanupInProgress;
    private static boolean expectedHostWindowDetach;
    private static VelocityTracker openingVelocityTracker;
    private static float openingDownX;
    private static boolean openingStartAllowed;
    private static float openingMaxX;
    private static int openingTouchSlop;
    private static boolean openingRevealOccurred;
    private static boolean consumeRootGestureUntilEnd;

    private QuickDesktopController() {
    }

    public static boolean isEnabled(Context context) {
        if (context == null) {
            return false;
        }
        return preferences(context).getBoolean(KEY_ENABLED, false);
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
        cleanup("reattach", true);
        QuickDesktopHostView host = new QuickDesktopHostView(root.getContext());
        hostView = host;
        rootRef = new WeakReference<>(root);
        Log.i(TAG, "QD_HOST_ATTACHED enabled=" + isEnabled(root.getContext()));
    }

    public static int onTouch(MotionEvent event, float closedProgress) {
        if (event == null) return 0;
        int action = event.getActionMasked();
        if (action == MotionEvent.ACTION_DOWN) {
            consumeRootGestureUntilEnd = false;
            openingRevealOccurred = false;
        } else if (consumeRootGestureUntilEnd) {
            if (action == MotionEvent.ACTION_UP || action == MotionEvent.ACTION_CANCEL) {
                consumeRootGestureUntilEnd = false;
            }
            return 2;
        }
        if (action == MotionEvent.ACTION_POINTER_DOWN && event.getPointerCount() > 1
                && openingGesture) {
            // The original multi-touch recognizer owns this sequence from here onward.
            openingGesture = false;
            openingStartAllowed = false;
            captureStartedForGesture = false;
            backgroundReadyForGesture = false;
            recycleOpeningVelocityTracker();
            QuickDesktopBackgroundCapture.cancel("multi-touch-owner");
            QuickDesktopHostView activeHost = host();
            if (activeHost != null && activeHost.getOpenProgress() > 0.0f) {
                activeHost.closeImmediately("multi-touch-owner");
            }
            Log.i(TAG, "QD_ROOT_GESTURE_CANCEL reason=multi-touch-owner");
            return 0;
        }
        QuickDesktopHostView host = host();
        if (host == null || !isEnabled(host.getContext())) {
            return 0;
        }
        if (action == MotionEvent.ACTION_DOWN) {
            openingStartAllowed = isGridGestureStart(event);
            openingGesture = openingStartAllowed && host.getOpenProgress() < 0.001f;
            openingDownX = event.getX();
            openingMaxX = openingDownX;
            openingTouchSlop = ViewConfiguration.get(host.getContext()).getScaledTouchSlop();
            captureStartedForGesture = false;
            if (openingGesture) {
                backgroundReadyForGesture = false;
                QuickDesktopBackgroundCapture.cancel("new-opening-candidate");
                recycleOpeningVelocityTracker();
                openingVelocityTracker = VelocityTracker.obtain();
                openingVelocityTracker.addMovement(event);
            }
        } else if (openingGesture && openingVelocityTracker != null) {
            openingVelocityTracker.addMovement(event);
            if (action == MotionEvent.ACTION_MOVE) {
                float currentX = event.getX();
                if (currentX > openingMaxX) {
                    openingMaxX = currentX;
                } else if (openingRevealOccurred
                        && openingMaxX - currentX > openingTouchSlop) {
                    openingVelocityTracker.computeCurrentVelocity(1000);
                    float velocityX = openingVelocityTracker.getXVelocity();
                    if (velocityX < -900.0f) {
                        host.settleTo(0.0f, velocityX, "open-reverse");
                        openingGesture = false;
                        consumeRootGestureUntilEnd = true;
                        recycleOpeningVelocityTracker();
                        Log.i(TAG, "QD_ROOT_GESTURE_CANCEL reason=open-reverse velocityX="
                                + velocityX);
                        return 1;
                    }
                }
            }
        }
        if ((action == MotionEvent.ACTION_UP || action == MotionEvent.ACTION_CANCEL)
                && openingGesture) {
            float open = host.getOpenProgress();
            boolean cancelRootGesture = false;
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
                // Once the host has claimed this drag, the GL scene must receive CANCEL,
                // not the same UP that can also finish a desktop page scroll/pressed cell.
                // Closing/cancellation already used this RootView cleanup path.
                cancelRootGesture = openingRevealOccurred;
            }
            recycleOpeningVelocityTracker();
            openingGesture = false;
            if (cancelRootGesture) {
                Log.i(TAG, "QD_ROOT_GESTURE_CANCEL reason=release-owned-by-host");
                return 1;
            }
        }
        return 0;
    }

    public static void onProgress(float closedProgress, MotionEvent event) {
        QuickDesktopHostView host = host();
        if (host == null || event == null || !openingGesture || !captureStartedForGesture
                || !isEnabled(host.getContext())) {
            return;
        }
        showHostWindow(false);
        // RootView's original Ad divisor is a Smartisan logical width. On modern ROMs it can
        // remain around twice the physical display width, so using Ad directly reveals only half
        // a page after a full-screen drag. RootView still owns all gesture gating; once it calls
        // this bridge, translate the replacement host by the gesture's real physical distance.
        float physicalProgress = (event.getX() - openingDownX) / host.getPageWidth();
        if (physicalProgress > 0.001f) openingRevealOccurred = true;
        host.setOpenProgress(physicalProgress, "root-physical-progress");
    }

    public static void requestShow() {
        QuickDesktopHostView host = host();
        ViewGroup root = rootRef.get();
        // Only the original RootView single-pointer / direction / J.Ta() / enabled branch
        // calls this entry. DOWN and the progress callback do not grant capture ownership.
        if (openingGesture && openingStartAllowed && host != null && root != null
                && isEnabled(host.getContext()) && isNormalWorkspace()) {
            if (!captureStartedForGesture) {
                captureStartedForGesture = true;
                backgroundReadyForGesture = false;
                host.cancelSettling();
                host.refreshContent();
                host.clearBackgroundSnapshots();
                QuickDesktopBackgroundCapture.schedule(root, host, 0L);
            }
            showHostWindow(false);
            host.ensureVisibleForOriginalRequest();
        }
    }

    static void onBackgroundReady(QuickDesktopHostView capturedHost) {
        if (capturedHost != host() || !captureStartedForGesture) return;
        if (!isNormalWorkspace()) {
            capturedHost.closeImmediately("workspace-mode-changed");
            return;
        }
        backgroundReadyForGesture = true;
        // Do not reveal an empty backing layer and replace it during an active drag. Progress
        // and settling retain their original timing while the fixed layers are prepared.
        if (capturedHost.getOpenProgress() > 0.0f) showHostWindow(revealWindowTouchable);
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
        }
        openingGesture = false;
        captureStartedForGesture = false;
        backgroundReadyForGesture = false;
        recycleOpeningVelocityTracker();
        actionLaunchPending = false;
        searchLaunchPending = false;
    }

    public static void onLauncherStopped() {
        QuickDesktopHostView host = host();
        if (host != null && (host.getOpenProgress() > 0.0f || hostWindow != null)) {
            host.closeImmediately(actionLaunchPending
                    ? "target-covered-launcher" : "launcher-stopped");
        } else {
            cleanup("launcher-stopped", false);
        }
        actionLaunchPending = false;
        searchLaunchPending = false;
    }

    /** Latch the original scene boundaries at DOWN; moving into the grid cannot claim it. */
    private static boolean isGridGestureStart(MotionEvent event) {
        try {
            Class<?> constants = Class.forName("com.smartisanos.launcher.data.Constants");
            float top = constants.getField("status_bar_height").getInt(null);
            int mode = workspaceMode();
            // Dl is the displayed mode (hH), not the source grid. Overview uses 13/10,
            // while isEditMode only describes the icon editor and can still be false.
            if (mode != 12 && mode != 9) {
                Log.i(TAG, "QD_START_REGION allowed=false mode=" + mode);
                return false;
            }
            Object layout = constants.getMethod("mode", int.class).invoke(null, mode);
            Class<?> layoutClass = Class.forName("com.smartisanos.launcher.data.LayoutProperty");
            float bottom = (Float) Class.forName("com.smartisanos.launcher.view.x")
                    .getMethod("d", layoutClass).invoke(null, layout);
            boolean allowed = bottom > top && event.getY() >= top && event.getY() < bottom;
            Log.i(TAG, "QD_START_REGION allowed=" + allowed + " y=" + event.getY()
                    + " top=" + top + " dockTop=" + bottom);
            return allowed;
        } catch (ReflectiveOperationException | NullPointerException error) {
            Log.w(TAG, "QD_START_REGION_UNAVAILABLE", error);
            return false;
        }
    }

    /** Keep the original page dispatcher in charge of overview/editor swipes. */
    public static boolean canRevealFromRoot() {
        return openingGesture && openingStartAllowed && isNormalWorkspace();
    }

    private static int workspaceMode() throws ReflectiveOperationException {
        Class<?> type = Class.forName("com.smartisanos.launcher.view.Eb");
        Object workspace = type.getMethod("getInstance").invoke(null);
        if ((Boolean) type.getMethod("isEditMode").invoke(workspace)) return 0;
        java.lang.reflect.Field field = type.getDeclaredField("px");
        field.setAccessible(true);
        Object page = field.get(workspace);
        return (Integer) page.getClass().getMethod("Dl").invoke(page);
    }

    private static boolean isNormalWorkspace() {
        try {
            int mode = workspaceMode();
            return mode == 12 || mode == 9;
        } catch (ReflectiveOperationException | NullPointerException error) {
            Log.w(TAG, "QD_WORKSPACE_MODE_UNAVAILABLE", error);
            return false;
        }
    }

    public static void onLauncherResumed() {
        if (!actionLaunchPending) return;
        actionLaunchPending = false;
        searchLaunchPending = false;
        closeForAction("returned-before-stop");
    }

    public static void onLauncherDestroyed() {
        cleanup("launcher-destroyed", true);
    }

    public static void onSearchSurfaceReady() {
        if (!searchLaunchPending) return;
        searchLaunchPending = false;
        actionLaunchPending = false;
        closeForAction("search-surface-ready");
    }

    static void onHostClosed() {
        cleanup("host-closed", false);
    }

    static void onHostDetached(QuickDesktopHostView detachedHost) {
        if (!expectedHostWindowDetach && detachedHost != null && detachedHost == hostView) {
            cleanup("host-window-detached", true);
        }
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
        searchLaunchPending = false;
        actionLaunchPending = true;
        Log.i(TAG, "QD_ACTION_PENDING reason=" + reason);
    }

    static void markSearchLaunchPending(String reason) {
        searchLaunchPending = true;
        actionLaunchPending = true;
        Log.i(TAG, "QD_SEARCH_PENDING reason=" + reason);
    }

    private static QuickDesktopHostView host() {
        return hostView;
    }

    private static void showHostWindow(boolean touchable) {
        revealWindowTouchable = touchable;
        if (!backgroundReadyForGesture) return;
        QuickDesktopHostView host = host();
        ViewGroup root = rootRef.get();
        if (host == null || root == null || root.getWindowToken() == null) {
            return;
        }
        if (!isNormalWorkspace()) {
            host.closeImmediately("workspace-mode-changed");
            return;
        }
        int systemUi = root.getSystemUiVisibility();
        if (LauncherSettingBridge.readBool(root.getContext(), "launcher_hide_navigation_bar", false)) {
            systemUi |= View.SYSTEM_UI_FLAG_HIDE_NAVIGATION | View.SYSTEM_UI_FLAG_IMMERSIVE_STICKY;
        }
        host.setSystemUiVisibility(systemUi);
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
            PopupWindow window = hostWindow;
            try {
                window.setTouchable(false);
                hostWindowTouchable = false;
                if (window.isShowing()) {
                    window.update();
                }
            } catch (RuntimeException error) {
                Log.w(TAG, "QD_HOST_WINDOW_DISABLE_TOUCH_FAILED", error);
            }
            expectedHostWindowDetach = true;
            try {
                window.dismiss();
            } catch (RuntimeException error) {
                Log.w(TAG, "QD_HOST_WINDOW_DISMISS_FAILED", error);
            } finally {
                expectedHostWindowDetach = false;
            }
            hostWindow = null;
            hostWindowTouchable = false;
        }
    }

    private static void cleanup(String reason, boolean releaseHost) {
        if (cleanupInProgress) return;
        cleanupInProgress = true;
        try {
            QuickDesktopBackgroundCapture.cancel(reason);
            dismissHostWindow();
            openingGesture = false;
            captureStartedForGesture = false;
            backgroundReadyForGesture = false;
            revealWindowTouchable = false;
            recycleOpeningVelocityTracker();
            actionLaunchPending = false;
            searchLaunchPending = false;
            if (releaseHost) {
                openingRevealOccurred = false;
                consumeRootGestureUntilEnd = false;
                QuickDesktopHostView current = hostView;
                hostView = null;
                rootRef.clear();
                if (current != null) current.releaseForDetach();
            }
            Log.i(TAG, "QD_CLEANUP reason=" + reason + " releaseHost=" + releaseHost);
        } finally {
            cleanupInProgress = false;
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
