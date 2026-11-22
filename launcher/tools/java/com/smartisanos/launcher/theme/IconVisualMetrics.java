package com.smartisanos.launcher.theme;

import android.content.Context;
import android.util.DisplayMetrics;
import android.util.Log;

/**
 * The single geometry contract shared by static, active and special desktop icons.
 *
 * LayoutProperty already contains the user's 50-150 percent setting. This class
 * therefore reads the selected scene values but never applies that setting again.
 */
public final class IconVisualMetrics {
    private static final String TAG = "LauncherIconRaster";
    public static final int REVISION = 5;
    // Frozen original-port golden: the UI's 100% maps to the artwork box that
    // was visually accepted before size controls were added. This calibration
    // belongs only to the geometry owner; the persisted/user value stays 100.
    private static final float ORIGINAL_GOLDEN_ARTWORK_SCALE = 1.20f;

    public final int sceneMode;
    public final int gridMode;
    public final int iconSizeSetting;
    public final float cellWidth;
    public final int logicalArtworkBox;
    public final int logicalTextureBox;
    public final int physicalArtworkPx;
    public final int physicalTexturePx;
    public final int activeIconOuterBox;
    public final float activeIconOuterScale;
    public final float physicalScale;
    public final int surfaceWidth;
    public final int logicalSurfaceWidth;
    public final String id;

    private IconVisualMetrics(int sceneMode, int gridMode, int iconSizeSetting,
            float cellWidth, int logicalArtworkBox, int logicalTextureBox,
            int physicalArtworkPx, int physicalTexturePx, float physicalScale,
            int surfaceWidth, int logicalSurfaceWidth) {
        this.sceneMode = sceneMode;
        this.gridMode = gridMode;
        this.iconSizeSetting = iconSizeSetting;
        this.cellWidth = cellWidth;
        this.logicalArtworkBox = logicalArtworkBox;
        this.logicalTextureBox = logicalTextureBox;
        this.physicalArtworkPx = physicalArtworkPx;
        this.physicalTexturePx = physicalTexturePx;
        this.activeIconOuterBox = logicalArtworkBox;
        this.activeIconOuterScale = 1.0f;
        this.physicalScale = physicalScale;
        this.surfaceWidth = surfaceWidth;
        this.logicalSurfaceWidth = logicalSurfaceWidth;
        this.id = "geometry:v" + REVISION + ':' + sceneMode + ':' + gridMode + ':'
                + iconSizeSetting + ':' + logicalArtworkBox + 'x' + logicalTextureBox + ':'
                + physicalArtworkPx + 'x' + physicalTexturePx + ':'
                + surfaceWidth + '/' + logicalSurfaceWidth;
    }

    private IconVisualMetrics() {
        sceneMode = 0;
        gridMode = 0;
        iconSizeSetting = 100;
        cellWidth = 0f;
        logicalArtworkBox = 0;
        logicalTextureBox = 0;
        physicalArtworkPx = 0;
        physicalTexturePx = 0;
        activeIconOuterBox = 0;
        activeIconOuterScale = 1f;
        physicalScale = 1f;
        surfaceWidth = 0;
        logicalSurfaceWidth = 0;
        id = "";
    }

    public static IconVisualMetrics resolve(int sceneMode) {
        try {
            Class<?> constants = Class.forName("com.smartisanos.launcher.data.Constants");
            Object property = constants.getMethod("mode", Integer.TYPE)
                    .invoke(null, Integer.valueOf(sceneMode));
            int artwork = Math.round(property.getClass().getField("icon_size_origin")
                    .getFloat(property));
            int texture = Math.round(property.getClass().getField("icon_size_with_shadow")
                    .getFloat(property));
            float cell = floatField(property, "cell_width", 0f);
            if (artwork <= 0 || texture <= 0) return null;

            DisplayMetrics display = android.content.res.Resources.getSystem().getDisplayMetrics();
            int logicalWidth = Math.max(1, intField(constants, "window_width", display.widthPixels));
            int resolvedSurfaceWidth = launcherSurfaceWidth();
            boolean actualSurfaceResolved = resolvedSurfaceWidth > 0;
            int surfaceWidth = actualSurfaceResolved ? resolvedSurfaceWidth
                    : Math.max(1, display.widthPixels);
            float scale = surfaceWidth / (float) logicalWidth;
            if (!(scale > 0f) || Float.isNaN(scale) || Float.isInfinite(scale)) scale = 1f;
            int physicalArtwork = Math.max(1, (int) Math.ceil(artwork * scale));
            int physicalTexture = Math.max(1, (int) Math.ceil(texture * scale));
            Context context = MaintainedLauncherSettingsHost.currentApplicationContext();
            int setting = context == null ? 100 : LauncherSettingBridge.readIconSizePercent(context);
            IconVisualMetrics result = new IconVisualMetrics(sceneMode, sceneMode, setting, cell,
                    artwork, texture, physicalArtwork, physicalTexture, scale,
                    surfaceWidth, logicalWidth);
            if (Log.isLoggable(TAG, Log.DEBUG)) {
                Log.d(TAG, "ICON_VISUAL_METRICS sceneMode=" + sceneMode
                        + " gridMode=" + sceneMode + " iconSizeSetting=" + setting
                        + " cellWidth=" + cell + " logicalArtwork=" + artwork
                        + " logicalTexture=" + texture + " physicalArtwork=" + physicalArtwork
                        + " physicalTexture=" + physicalTexture
                        + " activeIconOuterBox=" + result.activeIconOuterBox
                        + " activeIconOuterScale=" + result.activeIconOuterScale
                        + " weatherOuter=" + floatField(property, "weather_back_size", 0f)
                        + " calendarOuter=" + floatField(property, "calendar_back_size", 0f)
                        + " settingButton=" + floatField(property, "setting_button", 0f)
                        + " physicalScale=" + scale + " surfaceWidth=" + surfaceWidth
                        + " actualSurfaceResolved=" + actualSurfaceResolved
                        + " surfaceOwner=" + (actualSurfaceResolved
                            ? "LAUNCHER_GL_SURFACE" : "DISPLAY_FALLBACK"));
            }
            return result;
        } catch (Throwable ignored) {
            return null;
        }
    }

    public static int geometryPercentForUser(int userPercent) {
        return Math.max(1, Math.round(userPercent * ORIGINAL_GOLDEN_ARTWORK_SCALE));
    }

    /** Prefer the actual Launcher GL surface; DisplayMetrics is startup fallback only. */
    private static int launcherSurfaceWidth() {
        try {
            Class<?> launcher = Class.forName("com.smartisanos.launcher.J");
            Object instance = launcher.getMethod("getInstance").invoke(null);
            Object surface = launcher.getMethod("Oa").invoke(instance);
            if (surface instanceof android.view.View) {
                int width = ((android.view.View) surface).getWidth();
                if (width > 0) return width;
            }
        } catch (Throwable ignored) {
        }
        return 0;
    }

    private static float floatField(Object object, String name, float fallback) {
        try {
            return object.getClass().getField(name).getFloat(object);
        } catch (Throwable ignored) {
            return fallback;
        }
    }

    private static int intField(Class<?> type, String name, int fallback) {
        try {
            return type.getField(name).getInt(null);
        } catch (Throwable ignored) {
            return fallback;
        }
    }
}
