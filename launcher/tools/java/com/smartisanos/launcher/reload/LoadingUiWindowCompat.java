package com.smartisanos.launcher.reload;

import android.app.Dialog;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.os.Build;
import android.view.View;
import android.view.Window;
import android.view.WindowInsets;
import android.view.WindowInsetsController;
import android.view.WindowManager;

/** Keeps every original LoadingUI instance on one black, immersive window geometry. */
public final class LoadingUiWindowCompat {
    private static final int LOADING_SYSTEM_UI_FLAGS = View.SYSTEM_UI_FLAG_FULLSCREEN
            | View.SYSTEM_UI_FLAG_HIDE_NAVIGATION
            | View.SYSTEM_UI_FLAG_LAYOUT_STABLE
            | View.SYSTEM_UI_FLAG_LAYOUT_FULLSCREEN
            | View.SYSTEM_UI_FLAG_LAYOUT_HIDE_NAVIGATION
            | View.SYSTEM_UI_FLAG_IMMERSIVE_STICKY;

    private LoadingUiWindowCompat() {
    }

    public static void apply(Dialog dialog) {
        if (dialog != null) {
            apply(dialog.getWindow());
        }
    }

    /** Covers the outgoing Activity until the opaque reload window draws its first frame. */
    public static void hideNavigation(Window window) {
        if (window == null) return;
        View decor = window.getDecorView();
        if (decor == null) return;
        int flags = decor.getSystemUiVisibility()
                | View.SYSTEM_UI_FLAG_HIDE_NAVIGATION | View.SYSTEM_UI_FLAG_IMMERSIVE_STICKY;
        if (decor.getSystemUiVisibility() != flags) decor.setSystemUiVisibility(flags);
        if (Build.VERSION.SDK_INT >= 30 && window.getInsetsController() != null) {
            window.getInsetsController().hide(WindowInsets.Type.navigationBars());
        }
    }

    public static void apply(Window window) {
        if (window == null) {
            return;
        }
        try {
            window.setWindowAnimations(0);
            window.setBackgroundDrawable(new ColorDrawable(Color.BLACK));
            window.addFlags(WindowManager.LayoutParams.FLAG_FULLSCREEN
                    | WindowManager.LayoutParams.FLAG_DRAWS_SYSTEM_BAR_BACKGROUNDS);
            window.clearFlags(WindowManager.LayoutParams.FLAG_TRANSLUCENT_STATUS);
            if (Build.VERSION.SDK_INT >= 28) {
                WindowManager.LayoutParams attrs = window.getAttributes();
                attrs.layoutInDisplayCutoutMode =
                        WindowManager.LayoutParams.LAYOUT_IN_DISPLAY_CUTOUT_MODE_SHORT_EDGES;
                window.setAttributes(attrs);
            }
            if (Build.VERSION.SDK_INT >= 30) {
                window.setDecorFitsSystemWindows(false);
                WindowInsetsController controller = window.getInsetsController();
                if (controller != null) {
                    controller.setSystemBarsBehavior(
                            WindowInsetsController.BEHAVIOR_SHOW_TRANSIENT_BARS_BY_SWIPE);
                    controller.hide(WindowInsets.Type.statusBars() | WindowInsets.Type.navigationBars());
                }
            }
            View decor = window.getDecorView();
            if (decor != null && decor.getSystemUiVisibility() != LOADING_SYSTEM_UI_FLAGS) {
                decor.setSystemUiVisibility(LOADING_SYSTEM_UI_FLAGS);
            }
            if (Build.VERSION.SDK_INT >= 21) {
                window.setStatusBarColor(Color.BLACK);
                window.setNavigationBarColor(Color.BLACK);
            }
        } catch (Throwable ignored) {
            // Loading remains usable on ROMs that reject individual window attributes.
        }
    }
}
