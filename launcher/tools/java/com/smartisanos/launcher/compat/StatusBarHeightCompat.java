package com.smartisanos.launcher.compat;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.Rect;
import android.os.Build;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.Display;
import android.view.DisplayCutout;
import android.view.View;
import android.view.WindowInsets;
import android.view.WindowManager;

import com.smartisanos.launcher.reload.LauncherColdReloadCoordinator;

import java.lang.reflect.Field;
import java.util.List;
import java.util.WeakHashMap;

/** Provides the top safe height to the original Launcher layout calculation. */
public final class StatusBarHeightCompat {
    private static final String TAG = "StatusBarCompat";
    private static final String SETTINGS_PREFS = "launcher_settings";
    private static final String CACHE_PREFS = "status_bar_compat_cache";
    public static final String KEY_AUTO_ENABLED = "status_bar_auto_enabled";
    public static final String KEY_EXTRA_DP = "status_bar_extra_dp";
    public static final String KEY_DOCK_EXTRA_DP = "dock_extra_dp";
    private static final WeakHashMap<Object, Boolean> DOCK_ADJUSTED =
            new WeakHashMap<Object, Boolean>();

    public static int getDockExtraDp(Context context) {
        return clamp(context.getSharedPreferences(SETTINGS_PREFS, Context.MODE_PRIVATE)
                .getInt(KEY_DOCK_EXTRA_DP, 0), -4, 16);
    }

    public static boolean saveDockExtraDp(Context context, int value) {
        return context.getSharedPreferences(SETTINGS_PREFS, Context.MODE_PRIVATE).edit()
                .putInt(KEY_DOCK_EXTRA_DP, clamp(value, -4, 16)).commit();
    }

    /** Apply once to each original layout before cell sizing and Dock bounds are derived. */
    public static synchronized void applyDockHeight(Object layout) {
        if (layout == null || DOCK_ADJUSTED.containsKey(layout)) return;
        Context context = com.smartisanos.launcher.theme.MaintainedLauncherSettingsHost
                .currentApplicationContext();
        if (context == null) return;
        try {
            int width = constantsInt("window_width", context.getResources()
                    .getDisplayMetrics().widthPixels);
            Field height = layout.getClass().getField("dock_height");
            float original = height.getFloat(layout);
            height.setFloat(layout, Math.max(1f, original
                    + getDockExtraDp(context) * sceneDensity(context, width)));
            DOCK_ADJUSTED.put(layout, Boolean.TRUE);
        } catch (ReflectiveOperationException error) {
            Log.w(TAG, "dock_height_adjust_failed", error);
        }
    }
    private static final String KEY_SIGNATURE = "display_signature";
    private static final String KEY_SYSTEM_HEIGHT = "system_height_scene_px";
    private static final String KEY_CUTOUT_BOTTOM = "cutout_bottom_scene_px";
    private static final String KEY_HAS_CUTOUT = "has_top_cutout";
    private static final String KEY_RELOAD_GUARD = "reload_guard";
    private static final int VISUAL_GAP_DP = 2;
    private static final int MAX_EXTRA_DP = 24;
    private static final WeakHashMap<View, View.OnLayoutChangeListener> BINDINGS =
            new WeakHashMap<View, View.OnLayoutChangeListener>();

    private static volatile int sOriginalSystemHeight;
    private static volatile int sStartupEffectiveHeight;
    private static volatile String sStartupSignature = "";
    private static volatile boolean sAutoReloadRequested;
    private static volatile String sLastLiveGeometry = "";

    private StatusBarHeightCompat() {}

    /** Called before layout and scene initialization so all geometry uses the final height. */
    public static int resolveStartupHeight(Context context, int originalSystemHeight) {
        if (context == null) return Math.max(0, originalSystemHeight);
        int sceneWidth = constantsInt("window_width", context.getResources()
                .getDisplayMetrics().widthPixels);
        int sceneHeight = constantsInt("window_height", context.getResources()
                .getDisplayMetrics().heightPixels);
        String signature = displaySignature(context, sceneWidth, sceneHeight);
        SharedPreferences cache = context.getSharedPreferences(CACHE_PREFS, Context.MODE_PRIVATE);
        boolean cacheMatches = signature.equals(cache.getString(KEY_SIGNATURE, ""));
        int systemHeight = Math.max(0, originalSystemHeight);
        int cutoutBottom = 0;
        boolean hasCutout = false;
        if (cacheMatches) {
            systemHeight = Math.max(systemHeight, cache.getInt(KEY_SYSTEM_HEIGHT, 0));
            cutoutBottom = Math.max(0, cache.getInt(KEY_CUTOUT_BOTTOM, 0));
            hasCutout = cache.getBoolean(KEY_HAS_CUTOUT, false);
        }
        Settings settings = readSettings(context);
        float sceneDensity = sceneDensity(context, sceneWidth);
        int effective = calculate(systemHeight, cutoutBottom, hasCutout,
                dp(sceneDensity, VISUAL_GAP_DP), dp(sceneDensity, settings.extraDp),
                settings.autoEnabled, dp(sceneDensity, MAX_EXTRA_DP));
        sOriginalSystemHeight = Math.max(0, originalSystemHeight);
        sStartupEffectiveHeight = effective;
        sStartupSignature = signature;
        sAutoReloadRequested = false;
        sLastLiveGeometry = "";
        Log.i(TAG, "startup system=" + systemHeight + " cutoutBottom=" + cutoutBottom
                + " auto=" + settings.autoEnabled + " extraDp=" + settings.extraDp
                + " effective=" + effective + " signature=" + signature
                + " source=" + (cacheMatches ? "cache" : "system"));
        return effective;
    }

    /** Binds the real Launcher decor once. No polling or per-frame work is installed. */
    public static void bindWindow(final Activity activity) {
        if (activity == null || activity.getWindow() == null || Build.VERSION.SDK_INT < 28) return;
        final View decor = activity.getWindow().getDecorView();
        if (decor == null) return;
        synchronized (BINDINGS) {
            if (BINDINGS.containsKey(decor)) return;
            View.OnLayoutChangeListener listener = new View.OnLayoutChangeListener() {
                @Override public void onLayoutChange(View v, int left, int top, int right, int bottom,
                        int oldLeft, int oldTop, int oldRight, int oldBottom) {
                    captureLiveInsets(activity, decor);
                }
            };
            BINDINGS.put(decor, listener);
            decor.addOnLayoutChangeListener(listener);
        }
        decor.post(new Runnable() {
            @Override public void run() {
                if (Build.VERSION.SDK_INT >= 20) decor.requestApplyInsets();
                captureLiveInsets(activity, decor);
            }
        });
    }

    public static boolean isAutoEnabled(Context context) {
        return readSettings(context).autoEnabled;
    }

    public static int getExtraDp(Context context) {
        return readSettings(context).extraDp;
    }

    public static boolean saveSettings(Context context, boolean autoEnabled, int extraDp) {
        if (context == null) return false;
        int clampedExtra = clamp(extraDp, -4, 16);
        return context.getSharedPreferences(SETTINGS_PREFS, Context.MODE_PRIVATE).edit()
                .putBoolean(KEY_AUTO_ENABLED, autoEnabled)
                .putInt(KEY_EXTRA_DP, clampedExtra)
                .commit();
    }

    /** Additional space above settings content; the Window already reserves the system bar. */
    public static int settingsTopSpacing(Context context) {
        Settings settings = readSettings(context);
        Preview preview = preview(context, settings.autoEnabled, settings.extraDp);
        int desired = Math.round(preview.effectiveDp
                * context.getResources().getDisplayMetrics().density);
        return Math.max(0, desired - androidStatusBarHeight(context));
    }

    public static Preview preview(Context context, boolean autoEnabled, int extraDp) {
        if (context == null) return new Preview(0, 0, 0, false);
        int sceneWidth = constantsInt("window_width", context.getResources()
                .getDisplayMetrics().widthPixels);
        int sceneHeight = constantsInt("window_height", context.getResources()
                .getDisplayMetrics().heightPixels);
        String signature = displaySignature(context, sceneWidth, sceneHeight);
        SharedPreferences cache = context.getSharedPreferences(CACHE_PREFS, Context.MODE_PRIVATE);
        boolean matches = signature.equals(cache.getString(KEY_SIGNATURE, ""));
        float density = sceneDensity(context, sceneWidth);
        int system = matches ? cache.getInt(KEY_SYSTEM_HEIGHT, 0) : sOriginalSystemHeight;
        if (system <= 0) system = androidStatusBarHeight(context);
        int cutout = matches ? cache.getInt(KEY_CUTOUT_BOTTOM, 0) : 0;
        boolean hasCutout = matches && cache.getBoolean(KEY_HAS_CUTOUT, false);
        int autoHeight = calculate(system, cutout, hasCutout, dp(density, VISUAL_GAP_DP),
                0, true, dp(density, MAX_EXTRA_DP));
        int effective = calculate(system, cutout, hasCutout, dp(density, VISUAL_GAP_DP),
                dp(density, clamp(extraDp, -4, 16)), autoEnabled,
                dp(density, MAX_EXTRA_DP));
        return new Preview(pxToDp(system, density), pxToDp(autoHeight, density),
                pxToDp(effective, density), hasCutout);
    }

    /** Pure pixel-space calculation used by startup, live Insets and tests. */
    public static int calculate(int systemHeight, int cutoutBottom, boolean hasTopCutout,
            int visualGap, int extra, boolean autoEnabled, int maxExtra) {
        int system = Math.max(0, systemHeight);
        int cutout = hasTopCutout ? Math.max(0, cutoutBottom) : 0;
        int safeFloor = Math.max(system, cutout);
        int base = autoEnabled && hasTopCutout
                ? Math.max(system, cutout + Math.max(0, visualGap)) : system;
        long requested = (long) base + extra;
        if (autoEnabled) requested = Math.max(requested, safeFloor);
        else requested = Math.max(0L, requested);
        int upper = Math.max(safeFloor, system + Math.max(0, maxExtra));
        return (int) Math.min(requested, upper);
    }

    private static void captureLiveInsets(Activity activity, View decor) {
        if (activity == null || decor == null || Build.VERSION.SDK_INT < 28
                || decor.getWidth() <= 0 || decor.getHeight() <= 0) return;
        WindowInsets insets = decor.getRootWindowInsets();
        if (insets == null) return;
        int sceneWidth = constantsInt("window_width", decor.getWidth());
        int sceneHeight = constantsInt("window_height", decor.getHeight());
        float scale = sceneWidth / (float) decor.getWidth();
        int systemWindow = Build.VERSION.SDK_INT >= 30
                ? Api30.statusBarTop(insets) : insets.getSystemWindowInsetTop();
        int cutoutBottomWindow = 0;
        boolean hasTopCutout = false;
        DisplayCutout cutout = insets.getDisplayCutout();
        if (cutout != null) {
            int topBandLimit = Math.max(systemWindow * 3, decor.getHeight() / 4);
            List<Rect> bounds = cutout.getBoundingRects();
            if (bounds != null) {
                for (Rect rect : bounds) {
                    if (rect == null || rect.isEmpty() || rect.bottom <= 0 || rect.top > 1
                            || rect.bottom > topBandLimit) continue;
                    hasTopCutout = true;
                    cutoutBottomWindow = Math.max(cutoutBottomWindow, rect.bottom);
                }
            }
            if (cutout.getSafeInsetTop() > 0) {
                hasTopCutout = true;
                cutoutBottomWindow = Math.max(cutoutBottomWindow, cutout.getSafeInsetTop());
            }
        }
        int systemScene = Math.max(sOriginalSystemHeight, Math.round(systemWindow * scale));
        int cutoutScene = Math.round(cutoutBottomWindow * scale);
        float density = sceneDensity(activity, sceneWidth);
        Settings settings = readSettings(activity);
        int effective = calculate(systemScene, cutoutScene, hasTopCutout,
                dp(density, VISUAL_GAP_DP), dp(density, settings.extraDp),
                settings.autoEnabled, dp(density, MAX_EXTRA_DP));
        String signature = displaySignature(activity, sceneWidth, sceneHeight);
        String liveGeometry = signature + '|' + systemScene + '|' + cutoutScene + '|'
                + hasTopCutout + '|' + settings.autoEnabled + '|' + settings.extraDp;
        if (liveGeometry.equals(sLastLiveGeometry)) return;
        SharedPreferences cache = activity.getSharedPreferences(CACHE_PREFS, Context.MODE_PRIVATE);
        boolean changed = !signature.equals(cache.getString(KEY_SIGNATURE, ""))
                || cache.getInt(KEY_SYSTEM_HEIGHT, -1) != systemScene
                || cache.getInt(KEY_CUTOUT_BOTTOM, -1) != cutoutScene
                || cache.getBoolean(KEY_HAS_CUTOUT, false) != hasTopCutout;
        if (changed && !cache.edit().putString(KEY_SIGNATURE, signature)
                .putInt(KEY_SYSTEM_HEIGHT, systemScene)
                .putInt(KEY_CUTOUT_BOTTOM, cutoutScene)
                .putBoolean(KEY_HAS_CUTOUT, hasTopCutout).commit()) {
            Log.w(TAG, "live cache commit failed signature=" + signature);
            return;
        }
        sLastLiveGeometry = liveGeometry;
        int threshold = Math.max(1, dp(density, 1));
        Log.i(TAG, "live system=" + systemScene + " cutoutSafe="
                + (cutout == null ? 0 : Math.round(cutout.getSafeInsetTop() * scale))
                + " cutoutBottom=" + cutoutScene + " gap=" + dp(density, VISUAL_GAP_DP)
                + " extraDp=" + settings.extraDp + " effective=" + effective
                + " startup=" + sStartupEffectiveHeight + " decor=" + decor.getWidth() + "x"
                + decor.getHeight() + " scene=" + sceneWidth + "x" + sceneHeight
                + " scale=" + scale + " signature=" + signature);
        if (Math.abs(effective - sStartupEffectiveHeight) < threshold || sAutoReloadRequested) return;
        String guard = signature + '|' + effective + '|' + cutoutScene;
        if (guard.equals(cache.getString(KEY_RELOAD_GUARD, ""))) return;
        if (!cache.edit().putString(KEY_RELOAD_GUARD, guard).commit()) return;
        sAutoReloadRequested = true;
        if (!LauncherColdReloadCoordinator.beginStatusBarCompatReload(activity)) {
            sAutoReloadRequested = false;
            cache.edit().remove(KEY_RELOAD_GUARD).apply();
            Log.w(TAG, "automatic reload request failed");
        }
    }

    private static Settings readSettings(Context context) {
        SharedPreferences prefs = context.getSharedPreferences(SETTINGS_PREFS, Context.MODE_PRIVATE);
        return new Settings(prefs.getBoolean(KEY_AUTO_ENABLED, true),
                clamp(prefs.getInt(KEY_EXTRA_DP, 0), -4, 16));
    }

    private static String displaySignature(Context context, int sceneWidth, int sceneHeight) {
        DisplayMetrics metrics = context.getResources().getDisplayMetrics();
        int rotation = 0;
        int displayId = 0;
        try {
            WindowManager manager = (WindowManager) context.getSystemService(Context.WINDOW_SERVICE);
            Display display = manager == null ? null : manager.getDefaultDisplay();
            if (display != null) {
                rotation = display.getRotation();
                displayId = display.getDisplayId();
            }
        } catch (Throwable ignored) {
        }
        return "v1:" + displayId + ':' + rotation + ':' + sceneWidth + 'x' + sceneHeight
                + ':' + metrics.densityDpi;
    }

    private static float sceneDensity(Context context, int sceneWidth) {
        DisplayMetrics metrics = context.getResources().getDisplayMetrics();
        float scale = metrics.widthPixels > 0 ? sceneWidth / (float) metrics.widthPixels : 1f;
        return Math.max(0.1f, metrics.density * scale);
    }

    private static int androidStatusBarHeight(Context context) {
        int id = context.getResources().getIdentifier("status_bar_height", "dimen", "android");
        return id == 0 ? 0 : context.getResources().getDimensionPixelSize(id);
    }

    private static int constantsInt(String name, int fallback) {
        try {
            Class<?> constants = Class.forName("com.smartisanos.launcher.data.Constants");
            Field field = constants.getField(name);
            int value = field.getInt(null);
            return value > 0 ? value : fallback;
        } catch (Throwable ignored) {
            return fallback;
        }
    }

    private static int dp(float density, int value) {
        return Math.round(value * density);
    }

    private static int pxToDp(int px, float density) {
        return density <= 0f ? 0 : Math.round(px / density);
    }

    private static int clamp(int value, int min, int max) {
        return Math.max(min, Math.min(max, value));
    }

    private static final class Settings {
        final boolean autoEnabled;
        final int extraDp;
        Settings(boolean autoEnabled, int extraDp) {
            this.autoEnabled = autoEnabled;
            this.extraDp = extraDp;
        }
    }

    public static final class Preview {
        public final int systemDp;
        public final int autoDp;
        public final int effectiveDp;
        public final boolean hasTopCutout;
        Preview(int systemDp, int autoDp, int effectiveDp, boolean hasTopCutout) {
            this.systemDp = systemDp;
            this.autoDp = autoDp;
            this.effectiveDp = effectiveDp;
            this.hasTopCutout = hasTopCutout;
        }
    }

    private static final class Api30 {
        static int statusBarTop(WindowInsets insets) {
            return insets.getInsetsIgnoringVisibility(WindowInsets.Type.statusBars()).top;
        }
    }
}
