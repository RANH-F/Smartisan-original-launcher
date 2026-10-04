package com.smartisanos.launcher.theme;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.util.Log;
import android.view.MotionEvent;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowInsets;
import android.view.WindowManager;
import android.view.animation.DecelerateInterpolator;
import android.widget.FrameLayout;

import java.lang.ref.WeakReference;

/** Keeps the existing settings pages above the original Launcher scene. */
public final class LauncherSettingsOverlayHost {
    private static final String TAG = "LauncherSettingsOverlay";
    private static final String LAUNCHER_CLASS = "com.smartisanos.launcher.Launcher";
    private static final String SETTINGS_CLASS =
            "com.smartisanos.launcher.theme.ThemeChooserActivity";
    private static final long EXIT_DURATION_MS = 220L;
    private static final long ENTER_DURATION_MS = 260L;
    private static final float ZOOM_MIN_SCALE = 0.86f;
    private static WeakReference<Activity> ownerRef = new WeakReference<Activity>(null);
    private static WeakReference<Activity> cachedMainOwner = new WeakReference<Activity>(null);
    private static View cachedMainRoot;
    private static android.content.res.Configuration cachedMainConfiguration;
    private static android.util.DisplayMetrics cachedMainMetrics;
    private static FrameLayout overlay;
    private static FrameLayout pages;
    private static int previousSystemUi;
    private static int previousStatusColor;
    private static int previousSoftInputMode;
    private static boolean closing;
    private static boolean opening;
    private static boolean edgeBackInProgress;
    private static Object edgeBackCallback;
    private static boolean clickShadowReturnQueued;

    private LauncherSettingsOverlayHost() {}

    public static boolean openFromDesktop(Context context, Intent intent) {
        if (!(context instanceof Activity) || intent == null || intent.getComponent() == null) {
            return false;
        }
        Activity activity = (Activity) context;
        if (!LAUNCHER_CLASS.equals(activity.getClass().getName())
                || !SETTINGS_CLASS.equals(intent.getComponent().getClassName())
                || !activity.getPackageName().equals(intent.getComponent().getPackageName())
                || intent.getBooleanExtra("launcher_show_search", false)
                || intent.getBooleanExtra("launcher_show_quick_desktop_settings", false)) {
            return false;
        }
        return open(activity);
    }

    public static boolean isShowing(Activity activity) {
        return activity != null && ownerRef.get() == activity
                && overlay != null && overlay.getParent() instanceof ViewGroup;
    }

    static boolean isLauncherActivity(Activity activity) {
        return activity != null && LAUNCHER_CLASS.equals(activity.getClass().getName());
    }

    static ViewGroup pagesFor(Activity activity) {
        return isShowing(activity) ? pages : null;
    }

    static View takeMainRootForNewSession(Activity activity) {
        // Keep overlay reuse at session entry. A settings Activity can also reuse its
        // detached MAIN after a completed transition; rapid returns rebuild safely.
        if (activity == null || cachedMainOwner.get() != activity || cachedMainRoot == null) return null;
        if (isLauncherActivity(activity)) {
            if (!isShowing(activity) || pages == null || pages.getChildCount() != 0) return null;
        } else if (!SETTINGS_CLASS.equals(activity.getClass().getName())
                || cachedMainRoot.getParent() != null) return null;
        if (cachedMainConfiguration == null || cachedMainMetrics == null
                || !cachedMainConfiguration.equals(activity.getResources().getConfiguration())
                || !cachedMainMetrics.equals(activity.getResources().getDisplayMetrics())) {
            clearMainRoot(activity);
            return null;
        }
        View root = cachedMainRoot;
        cachedMainRoot = null;
        if (root.getParent() instanceof ViewGroup) {
            ((ViewGroup) root.getParent()).removeView(root);
        }
        root.animate().cancel();
        root.clearAnimation();
        root.setTranslationX(0f);
        root.setTranslationY(0f);
        root.setAlpha(1f);
        root.setLayerType(View.LAYER_TYPE_NONE, null);
        return root;
    }

    static void rememberMainRoot(Activity activity, View root) {
        if (activity == null || root == null || (!isShowing(activity)
                && !SETTINGS_CLASS.equals(activity.getClass().getName()))) return;
        cachedMainOwner = new WeakReference<Activity>(activity);
        cachedMainRoot = root;
        cachedMainConfiguration = new android.content.res.Configuration(activity.getResources().getConfiguration());
        cachedMainMetrics = new android.util.DisplayMetrics();
        cachedMainMetrics.setTo(activity.getResources().getDisplayMetrics());
    }

    static void clearMainRoot(Activity activity) {
        if (cachedMainOwner.get() != activity) return;
        cachedMainRoot = null;
        cachedMainOwner.clear();
        cachedMainConfiguration = null;
        cachedMainMetrics = null;
    }

    private static boolean open(Activity activity) {
        if (isShowing(activity)) {
            Log.i(TAG, "SETTINGS_ALREADY_OPEN");
            return true;
        }
        ViewGroup content = activity.findViewById(android.R.id.content);
        if (content == null) {
            Log.e(TAG, "SETTINGS_OPEN_NO_CONTENT");
            return false;
        }
        Window window = activity.getWindow();
        View decor = window.getDecorView();
        previousSystemUi = decor.getSystemUiVisibility();
        previousStatusColor = window.getStatusBarColor();
        previousSoftInputMode = window.getAttributes().softInputMode;
        FrameLayout holder = new HomeGestureFrameLayout(activity);
        holder.setBackgroundColor(0xfff7f7f7);
        holder.setClickable(true);
        holder.setFocusableInTouchMode(true);
        int topInset = statusBarTop(activity);
        holder.setPadding(0, topInset
                + com.smartisanos.launcher.compat.StatusBarHeightCompat.settingsTopSpacing(activity),
                0, 0);
        FrameLayout pageContainer = new FrameLayout(activity);
        holder.addView(pageContainer, new FrameLayout.LayoutParams(-1, -1));
        ownerRef = new WeakReference<Activity>(activity);
        overlay = holder;
        pages = pageContainer;
        closing = false;
        opening = true;
        clickShadowReturnQueued = false;
        if (Build.VERSION.SDK_INT >= 34) Api34Back.register(activity);
        int travel = content.getHeight();
        if (travel <= 0) travel = activity.getResources().getDisplayMetrics().heightPixels;
        if (useCenteredZoom()) {
            holder.setScaleX(ZOOM_MIN_SCALE);
            holder.setScaleY(ZOOM_MIN_SCALE);
            holder.setAlpha(0f);
        } else {
            holder.setTranslationY(travel);
        }
        content.addView(holder, new ViewGroup.LayoutParams(-1, -1));
        MaintainedLauncherSettingsHost.showLauncherMainPage(activity);
        if (pages.getChildCount() == 0) {
            remove(activity, holder);
            return false;
        }
        final FrameLayout entering = holder;
        entering.postOnAnimation(new Runnable() {
            @Override public void run() {
                if (overlay != entering || closing || !opening) return;
                Log.i(TAG, "SETTINGS_ENTER_START topInset=" + entering.getPaddingTop());
                android.view.ViewPropertyAnimator animation = entering.animate()
                        .setDuration(ENTER_DURATION_MS)
                        .setInterpolator(new DecelerateInterpolator(1.35f))
                        .withEndAction(new Runnable() {
                            @Override public void run() {
                                if (overlay != entering || closing || !opening) return;
                                opening = false;
                                tuneWindow(ownerRef.get());
                                Log.i(TAG, "SETTINGS_ENTER_END");
                            }
                        });
                if (useCenteredZoom()) animation.scaleX(1f).scaleY(1f).alpha(1f);
                else animation.translationY(0f);
                animation.start();
            }
        });
        Log.i(TAG, "SETTINGS_OPEN pages=" + pages.getChildCount()
                + " topInset=" + topInset);
        return true;
    }

    static void tuneWindow(Activity activity) {
        if (!isShowing(activity) || opening) return;
        Window window = activity.getWindow();
        window.setSoftInputMode(WindowManager.LayoutParams.SOFT_INPUT_STATE_ALWAYS_HIDDEN
                | WindowManager.LayoutParams.SOFT_INPUT_ADJUST_RESIZE);
        window.setStatusBarColor(0xfff7f7f7);
        View decor = window.getDecorView();
        decor.setSystemUiVisibility(decor.getSystemUiVisibility()
                | View.SYSTEM_UI_FLAG_LIGHT_STATUS_BAR);
    }

    static void showPageDirect(Activity activity, View root) {
        ViewGroup host = pagesFor(activity);
        if (host == null) return;
        host.removeAllViews();
        host.addView(root, new ViewGroup.LayoutParams(-1, -1));
    }

    private static int statusBarTop(Activity activity) {
        if (Build.VERSION.SDK_INT >= 30) {
            WindowInsets insets = activity.getWindow().getDecorView().getRootWindowInsets();
            if (insets != null) {
                return insets.getInsetsIgnoringVisibility(WindowInsets.Type.statusBars()).top;
            }
        }
        int id = activity.getResources().getIdentifier("status_bar_height", "dimen", "android");
        return id == 0 ? 0 : activity.getResources().getDimensionPixelSize(id);
    }

    public static boolean handleNewIntent(Activity activity, Intent intent) {
        if (!isShowing(activity) || intent == null || !isHomeIntent(intent)) return false;
        Log.i(TAG, "SETTINGS_HOME_RECEIVED");
        close(activity, true);
        return true;
    }

    public static boolean onBackPressed(Activity activity) {
        if (!isShowing(activity)) return false;
        if (!closing && MaintainedLauncherSettingsHost.handleSettingsBackPublic(activity)) return true;
        Log.i(TAG, "SETTINGS_BACK_EXIT");
        close(activity, true);
        return true;
    }

    public static boolean handleSettingsBackKey(KeyEvent event) {
        Activity activity = ownerRef.get();
        if (event == null || event.getKeyCode() != KeyEvent.KEYCODE_BACK
                || !isShowing(activity)) return false;
        if (event.getAction() == KeyEvent.ACTION_UP && !event.isCanceled() && !closing) {
            onBackPressed(activity);
        }
        return true;
    }

    public static void onDestroyed(Activity activity) {
        clearMainRoot(activity);
        if (ownerRef.get() == activity) {
            MaintainedLauncherSettingsHost.cancelPendingBackupPreview(activity);
            if (Build.VERSION.SDK_INT >= 34) Api34Back.unregister(activity);
            if (overlay != null) overlay.animate().cancel();
            MaintainedLauncherSettingsHost.clearSettingsBackActionPublic(activity);
            ownerRef.clear();
            overlay = null;
            pages = null;
            closing = false;
            opening = false;
            edgeBackInProgress = false;
            clickShadowReturnQueued = false;
        }
    }

    public static void onLauncherStopped(Activity activity) {
        settleInterruptedTransition(activity);
    }

    private static void settleInterruptedTransition(Activity activity) {
        if (!isShowing(activity)) return;
        FrameLayout current = overlay;
        if (closing) {
            current.animate().cancel();
            Log.i(TAG, "SETTINGS_EXIT_SETTLED_LIFECYCLE");
            remove(activity, current);
        } else if (opening || edgeBackInProgress) {
            current.animate().cancel();
            current.setTranslationY(0f);
            current.setScaleX(1f);
            current.setScaleY(1f);
            current.setAlpha(1f);
            opening = false;
            edgeBackInProgress = false;
            tuneWindow(activity);
            Log.i(TAG, "SETTINGS_ENTER_SETTLED_LIFECYCLE");
        }
    }

    static boolean finishForSettingsOperation(Activity activity) {
        if (!isLauncherActivity(activity)) return false;
        if (isShowing(activity)) close(activity, false);
        return true;
    }

    private static boolean isHomeIntent(Intent intent) {
        return intent.getBooleanExtra("android.intent.extra.FROM_HOME_KEY", false)
                || (Intent.ACTION_MAIN.equals(intent.getAction())
                && intent.hasCategory(Intent.CATEGORY_HOME));
    }

    private static void close(final Activity activity, boolean animate) {
        if (!isShowing(activity) || closing) return;
        closing = true;
        boolean fromGesture = edgeBackInProgress;
        edgeBackInProgress = false;
        if (Build.VERSION.SDK_INT >= 34) Api34Back.unregister(activity);
        final FrameLayout current = overlay;
        queueClickShadowLikeAppReturn();
        View blocker = new View(activity);
        blocker.setClickable(true);
        current.addView(blocker, new FrameLayout.LayoutParams(-1, -1));
        MaintainedLauncherSettingsHost.cancelPendingBackupPreview(activity);
        MaintainedLauncherSettingsHost.clearSettingsBackActionPublic(activity);
        if (!animate) {
            remove(activity, current);
            return;
        }
        int height = current.getHeight();
        if (height <= 0) height = activity.getResources().getDisplayMetrics().heightPixels;
        Log.i(TAG, "SETTINGS_EXIT_START height=" + height);
        current.animate().cancel();
        if (useCenteredZoom()) {
            current.setPivotX(current.getWidth() / 2f);
            current.setPivotY(current.getHeight() / 2f);
        }
        float progress = useCenteredZoom()
                ? (1f - current.getScaleX()) / (1f - ZOOM_MIN_SCALE)
                : current.getTranslationY() / height;
        long duration = fromGesture ? Math.max(60L,
                Math.round(EXIT_DURATION_MS * (1f - Math.min(1f,
                        Math.max(0f, progress))))) : EXIT_DURATION_MS;
        android.view.ViewPropertyAnimator animation = current.animate().setDuration(duration)
                .withEndAction(new Runnable() {
                    @Override public void run() { remove(activity, current); }
                });
        if (useCenteredZoom()) animation.scaleX(ZOOM_MIN_SCALE).scaleY(ZOOM_MIN_SCALE).alpha(0f);
        else animation.translationY(height);
        animation.start();
    }

    private static void remove(Activity activity, FrameLayout current) {
        if (overlay != current) return;
        if (Build.VERSION.SDK_INT >= 34) Api34Back.unregister(activity);
        if (current.getParent() instanceof ViewGroup) {
            ((ViewGroup) current.getParent()).removeView(current);
        }
        Window window = activity.getWindow();
        window.setStatusBarColor(previousStatusColor);
        window.setSoftInputMode(previousSoftInputMode);
        window.getDecorView().setSystemUiVisibility(previousSystemUi);
        MaintainedLauncherSettingsHost.applyNavigationBarIfChanged(activity);
        ownerRef.clear();
        overlay = null;
        pages = null;
        closing = false;
        opening = false;
        edgeBackInProgress = false;
        clickShadowReturnQueued = false;
        Log.i(TAG, "SETTINGS_EXIT_END");
    }

    private static void queueClickShadowLikeAppReturn() {
        if (clickShadowReturnQueued) return;
        // Queue the same GL event used by J.onResume when a regular app returns.
        // The bridge is in classes.dex, which is outside javac's helper classpath.
        try {
            Class.forName(LAUNCHER_CLASS).getMethod("queueSettingsClickShadowReturn")
                    .invoke(null);
            clickShadowReturnQueued = true;
            Log.i(TAG, "SETTINGS_CLICK_SHADOW_RETURN_QUEUED");
        } catch (ReflectiveOperationException error) {
            Log.w(TAG, "SETTINGS_CLICK_SHADOW_CLEAR_FAILED", error);
        }
    }

    private static boolean useCenteredZoom() {
        return Build.VERSION.SDK_INT >= 35;
    }

    /** Keep a system HOME swipe from also scrolling the settings page. */
    private static final class HomeGestureFrameLayout extends FrameLayout {
        private final float guardHeight;
        private final float moveThreshold;
        private boolean bottomTouch;
        private boolean consumeGesture;
        private float downRawY;

        HomeGestureFrameLayout(Context context) {
            super(context);
            float density = getResources().getDisplayMetrics().density;
            guardHeight = 48f * density;
            moveThreshold = 4f * density;
        }

        @Override public boolean dispatchTouchEvent(MotionEvent event) {
            int action = event.getActionMasked();
            if (action == MotionEvent.ACTION_DOWN) {
                downRawY = event.getRawY();
                bottomTouch = event.getY() >= getHeight() - guardHeight;
                consumeGesture = false;
            } else if (bottomTouch && action == MotionEvent.ACTION_MOVE
                    && !consumeGesture && downRawY - event.getRawY() > moveThreshold) {
                MotionEvent cancel = MotionEvent.obtain(event);
                cancel.setAction(MotionEvent.ACTION_CANCEL);
                super.dispatchTouchEvent(cancel);
                cancel.recycle();
                consumeGesture = true;
                Log.i(TAG, "SETTINGS_HOME_GESTURE_BLOCK_SCROLL");
            }
            if (consumeGesture) {
                if (action == MotionEvent.ACTION_UP || action == MotionEvent.ACTION_CANCEL) {
                    bottomTouch = false;
                    consumeGesture = false;
                }
                return true;
            }
            return super.dispatchTouchEvent(event);
        }
    }

    /** API 34+ delivers edge gesture progress before the legacy Back callback. */
    private static final class Api34Back {
        private static void register(final Activity activity) {
            android.window.OnBackAnimationCallback callback = new android.window.OnBackAnimationCallback() {
                @Override public void onBackStarted(android.window.BackEvent event) {
                    if (!isShowing(activity) || opening || closing
                            || MaintainedLauncherSettingsHost.hasSettingsBackActionPublic(activity)) return;
                    edgeBackInProgress = true;
                    overlay.animate().cancel();
                    queueClickShadowLikeAppReturn();
                    Log.i(TAG, "SETTINGS_EDGE_START");
                }

                @Override public void onBackProgressed(android.window.BackEvent event) {
                    if (!edgeBackInProgress || !isShowing(activity) || closing) return;
                    if (useCenteredZoom()) {
                        float progress = event.getProgress();
                        float scale = 1f - (1f - ZOOM_MIN_SCALE) * progress;
                        overlay.setScaleX(scale);
                        overlay.setScaleY(scale);
                        overlay.setAlpha(1f - progress);
                    } else {
                        overlay.setTranslationY(overlay.getHeight() * event.getProgress());
                    }
                }

                @Override public void onBackCancelled() {
                    if (!edgeBackInProgress || !isShowing(activity) || closing) return;
                    edgeBackInProgress = false;
                    if (useCenteredZoom()) {
                        overlay.animate().scaleX(1f).scaleY(1f).alpha(1f)
                                .setDuration(160L).start();
                    } else {
                        overlay.animate().translationY(0f).setDuration(160L).start();
                    }
                    Log.i(TAG, "SETTINGS_EDGE_CANCEL");
                }

                @Override public void onBackInvoked() {
                    if (isShowing(activity)) onBackPressed(activity);
                }
            };
            activity.getOnBackInvokedDispatcher().registerOnBackInvokedCallback(
                    android.window.OnBackInvokedDispatcher.PRIORITY_DEFAULT, callback);
            edgeBackCallback = callback;
            Log.i(TAG, "SETTINGS_EDGE_REGISTER");
        }

        private static void unregister(Activity activity) {
            if (!(edgeBackCallback instanceof android.window.OnBackInvokedCallback)) return;
            activity.getOnBackInvokedDispatcher().unregisterOnBackInvokedCallback(
                    (android.window.OnBackInvokedCallback) edgeBackCallback);
            edgeBackCallback = null;
        }
    }
}
