package com.smartisanos.launcher.theme;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.os.Build;
import android.provider.Settings;
import android.util.Log;
import android.view.View;
import android.view.Window;
import android.view.WindowInsetsController;
import java.io.File;
import java.io.FileOutputStream;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

public final class LauncherSettingBridge {
    private static final String PREFS = "com.smartisanos.launcher_prefs";
    private static final String SETTINGS_PREFS = "launcher_settings";
    private static final String KEY_ICON_SIZE = "launcher_icon_size";
    private static final String KEY_DESKTOP_TEXT_SIZE = "launcher_desktop_text_size";
    private static final String TAG = "LauncherIconShadow";
    private static final int SHADOW_DARK = 0;
    private static final int SHADOW_LIGHT = 1;
    private static final int SHADOW_TRANSPARENT = 2;
    private static final int STATIC_ICON_SHADOW_ALPHA_CUTOFF = 128;
    private static volatile String sLastLoggedShadowSpec;
    private static volatile Method sOriginalStaticShadowMethod;
    private static volatile boolean sOriginalStaticShadowResolveFailed;
    private static final Object ACTIVE_ICON_SHADOW_LOCK = new Object();
    private static final Map<String, String> ACTIVE_ICON_LIVE_SHADOW_CACHE = new HashMap<>();
    private static final Set<String> LOGGED_CACHED_FRAME_COMPOSITIONS = new HashSet<>();
    // v1 treated pb.path() values as filesystem paths. They are normally theme-asset
    // paths. v4 also switches ActiveIcon shadows to the original static shadow
    // generator, so keep corrected products isolated from stale software-blur entries.
    // v7 anchors the larger, centered live-shadow sibling around the original
    // ActiveIcon background. Its canvas is not the static icon texture, so it
    // uses symmetric sibling padding rather than the static texture's 1/4
    // artwork placement.
    private static final String ACTIVE_ICON_SHADOW_CACHE_DIR = "active_icon_shadow_v7";
    public static final String KEY_DYNAMIC_WEATHER_CALENDAR =
            "launcher_dynamic_weather_calendar_enabled";

    private static final Map<Class<?>, Map<String, Method>> PIXEL_GRID_METHODS = new HashMap<>();
    private static final Map<Class<?>, Map<String, Field>> GEOMETRY_FIELDS = new HashMap<>();
    private static final Class<?>[] NO_GEOMETRY_ARGS = new Class<?>[0];
    private static final Class<?>[] INT_GEOMETRY_ARG = {Integer.TYPE};
    private static final Class<?>[] STRING_GEOMETRY_ARG = {String.class};
    private static final Class<?>[] FLOAT_GEOMETRY_ARGS = {Float.TYPE, Float.TYPE, Float.TYPE};
    private static final Map<Object, float[]> OVERVIEW_ICON_FACTORS = new java.util.WeakHashMap<>();

    private LauncherSettingBridge() {
    }

    public static void traceThemeBarState(String stage, int flags) {
        try {
            Class<?> constants = Class.forName("com.smartisanos.launcher.data.Constants");
            Log.w("LauncherThemeBar", "stage=" + stage + " flags=" + Integer.toHexString(flags)
                    + " transparent=" + readStaticField(constants, "isTransparentTheme")
                    + " gaussian=" + readStaticField(constants, "sIsGaussianTheme")
                    + " desktop=" + readStaticField(constants, "sGaussianResSuffix")
                    + " status=" + readStaticField(constants, "sStatusbarColorSuffix")
                    + " appTextColor=" + readStaticField(constants, "app_text_color"));
        } catch (Exception error) {
            Log.w("LauncherThemeBar", "STATE_UNAVAILABLE", error);
        }
    }

    public static void applyDesktopStatusBarAppearance(Window window, int appTextColor) {
        if (window == null) return;
        boolean darkText = (appTextColor & 0x00ffffff) < 0x00808080;
        View decor = window.getDecorView();
        if (Build.VERSION.SDK_INT >= 23) {
            int flags = decor.getSystemUiVisibility();
            flags = darkText ? flags | View.SYSTEM_UI_FLAG_LIGHT_STATUS_BAR
                    : flags & ~View.SYSTEM_UI_FLAG_LIGHT_STATUS_BAR;
            decor.setSystemUiVisibility(flags);
        }
        if (Build.VERSION.SDK_INT >= 30) {
            WindowInsetsController controller = window.getInsetsController();
            if (controller != null) {
                // Explicit appearance ownership takes precedence over legacy flags.
                // Both interfaces must receive the same resolved application text color.
                controller.setSystemBarsAppearance(darkText
                                ? WindowInsetsController.APPEARANCE_LIGHT_STATUS_BARS : 0,
                        WindowInsetsController.APPEARANCE_LIGHT_STATUS_BARS);
            }
        }
        traceThemeBarState("WINDOW_APPLIED", decor.getSystemUiVisibility());
        if (Build.VERSION.SDK_INT >= 30 && window.getInsetsController() != null) {
            Log.w("LauncherThemeBar", "appearance="
                    + Integer.toHexString(window.getInsetsController().getSystemBarsAppearance()));
        }
    }

    public static boolean readBool(Context context, String key, boolean defValue) {
        if (context == null || key == null) {
            return defValue;
        }
        try {
            android.content.SharedPreferences prefs =
                    context.getSharedPreferences("launcher_settings", Context.MODE_PRIVATE);
            if (prefs.contains(key)) {
                return prefs.getBoolean(key, defValue);
            }
        } catch (Throwable ignored) {
        }
        try {
            android.content.SharedPreferences prefs =
                    context.getSharedPreferences("com.smartisanos.launcher_prefs", Context.MODE_PRIVATE);
            if (prefs.contains(key)) {
                return prefs.getBoolean(key, defValue);
            }
        } catch (Throwable ignored) {
        }
        try {
            String value = Settings.System.getString(context.getContentResolver(), key);
            if (value != null) {
                return "1".equals(value) || Boolean.parseBoolean(value);
            }
        } catch (Throwable ignored) {
        }
        try {
            String value = Settings.Global.getString(context.getContentResolver(), key);
            if (value != null) {
                return "1".equals(value) || Boolean.parseBoolean(value);
            }
        } catch (Throwable ignored) {
        }
        return defValue;
    }

    public static boolean dynamicWeatherCalendarEnabled(Context context) {
        return readBool(context, KEY_DYNAMIC_WEATHER_CALENDAR, false);
    }

    /** Available to original smali call sites which do not carry a Context. */
    public static boolean dynamicWeatherCalendarEnabled() {
        try {
            Class<?> proxy = Class.forName("com.smartisanos.launcher.ja");
            Object instance = proxy.getMethod("getInstance").invoke(null);
            if (instance != null) {
                Object application = proxy.getMethod("getApplication").invoke(instance);
                if (application instanceof Context) {
                    return dynamicWeatherCalendarEnabled((Context) application);
                }
            }
        } catch (Throwable ignored) {
        }
        return false;
    }

    public static boolean readTransparentMode(Context context) {
        if (context == null) {
            return false;
        }
        final String key = "launcher_grid_theme";
        try {
            android.content.SharedPreferences prefs =
                    context.getSharedPreferences(SETTINGS_PREFS, Context.MODE_PRIVATE);
            if (prefs.contains(key)) {
                try {
                    return prefs.getInt(key, 0) == 1;
                } catch (Throwable ignored) {
                    return prefs.getBoolean(key, false);
                }
            }
        } catch (Throwable ignored) {
        }
        try {
            android.content.SharedPreferences prefs =
                    context.getSharedPreferences(PREFS, Context.MODE_PRIVATE);
            if (prefs.contains(key)) {
                try {
                    return prefs.getInt(key, 0) == 1;
                } catch (Throwable ignored) {
                    return prefs.getBoolean(key, false);
                }
            }
        } catch (Throwable ignored) {
        }
        try {
            return Settings.Global.getInt(context.getContentResolver(), key, 0) == 1;
        } catch (Throwable ignored) {
        }
        try {
            return Settings.System.getInt(context.getContentResolver(), key, 0) == 1;
        } catch (Throwable ignored) {
        }
        return false;
    }

    public static String readString(Context context, String key, String defValue) {
        if (context == null || key == null) {
            return defValue;
        }
        try {
            android.content.SharedPreferences prefs =
                    context.getSharedPreferences("launcher_settings", Context.MODE_PRIVATE);
            if (prefs.contains(key)) {
                String value = prefs.getString(key, defValue);
                if (value != null && value.length() > 0) {
                    return value;
                }
            }
        } catch (Throwable ignored) {
        }
        try {
            android.content.SharedPreferences prefs =
                    context.getSharedPreferences("com.smartisanos.launcher_prefs", Context.MODE_PRIVATE);
            if (prefs.contains(key)) {
                String value = prefs.getString(key, defValue);
                if (value != null && value.length() > 0) {
                    return value;
                }
            }
        } catch (Throwable ignored) {
        }
        try {
            String value = Settings.System.getString(context.getContentResolver(), key);
            if (value != null && value.length() > 0) {
                return value;
            }
        } catch (Throwable ignored) {
        }
        try {
            String value = Settings.Global.getString(context.getContentResolver(), key);
            if (value != null && value.length() > 0) {
                return value;
            }
        } catch (Throwable ignored) {
        }
        return defValue;
    }

    public static int readIconSizePercent(Context context) {
        return normalizeIconSizePercent(readInt(context, KEY_ICON_SIZE, 100));
    }

    /** Applies the saved desktop-label increment after original resources are loaded. */
    public static void applyDesktopTextSize(Context context) {
        int extra = Math.max(0, Math.min(10, readInt(context, KEY_DESKTOP_TEXT_SIZE, 0)));
        extra = ((extra + 1) / 2) * 2;
        try {
            Class<?> constants = Class.forName("com.smartisanos.launcher.data.Constants");
            Class<?> metrics = Class.forName(
                    "com.smartisanos.launcher.data.DesktopLabelMetrics");
            metrics.getMethod("setDesktopTextSizeAdjustment", Integer.TYPE)
                    .invoke(null, Integer.valueOf(extra));
            if (extra == 0) return;
            int applied = 0;
            java.util.Set<Object> adjusted = java.util.Collections.newSetFromMap(new java.util.IdentityHashMap<Object,Boolean>());
            for (int mode : new int[] {com.smartisanos.launcher.data.DesktopLabelMetrics.GRID_12,
                    com.smartisanos.launcher.data.DesktopLabelMetrics.LEGACY_ENGINE_KEY_GRID_20,
                    com.smartisanos.launcher.data.DesktopLabelMetrics.GRID_20}) {
                Object property = constants.getMethod("mode", Integer.TYPE)
                        .invoke(null, Integer.valueOf(mode));
                if (property == null || !adjusted.add(property)) continue;
                int columns = property.getClass().getField("page_cell_col_num").getInt(property);
                int rows = property.getClass().getField("page_cell_row_num").getInt(property);
                if (columns * rows != 12 && columns * rows != 20) continue;
                Field field = property.getClass().getField("text_font_size");
                field.setInt(property, Math.max(1, field.getInt(property) + extra));
                applied++;
            }
            Log.i(TAG, "DESKTOP_TEXT_SIZE_APPLIED extra=" + extra + " modes=" + applied);
        } catch (Throwable error) {
            Log.w(TAG, "DESKTOP_TEXT_SIZE_APPLY_FAILED", error);
        }
    }

    /** Geometry-only mapping owned by IconVisualMetrics; the user value is unchanged. */
    public static int readIconGeometryPercent(Context context) {
        return IconVisualMetrics.geometryPercentForUser(readIconSizePercent(context));
    }

    /** Low-frequency trace for the single user-size input and the LIVE root owner. */
    public static void traceActiveIconSize(String stage, Object root, float requestedScale) {
        try {
            Context context = applicationContext();
            int percent = readIconSizePercent(context);
            String type = root != null && root.getClass().getName().endsWith(".H")
                    ? "weather" : "calendar";
            Object scale = root == null ? null : invoke(root, "getScale");
            Log.i(TAG, "ACTIVE_ICON_SIZE_TRACE stage=" + stage
                    + " type=" + type
                    + " iconSizePercent=" + percent
                    + " iconSizeFactor=" + (percent / 100.0f)
                    + " Constants.icon_scale=" + constantFloat("icon_scale", 0.0f)
                    + " rootScale=" + vector2(scale)
                    + " requestedScale=" + requestedScale);
        } catch (Throwable error) {
            Log.w(TAG, "ACTIVE_ICON_SIZE_TRACE_FAILED stage=" + stage, error);
        }
    }

    /**
     * Places the original cached ActiveIcon artwork into the same physical
     * texture contract as an ordinary static icon. SceneNode geometry remains
     * untouched; the root is used only to locate the matching live shadow
     * texture so cached and live states share one visual owner.
     */
    public static Bitmap composeActiveIconToBaseBounds(
            Object activeRoot, Bitmap base, Bitmap active) {
        if (active == null) return base;
        // The ordinary icon and ActiveIcon share Pe(). Rebind its projection to
        // the current live artwork before any contact shadow is composited.
        if (IconIlluminationCompat.enabled()) {
            try {
                Object cell = readPrivateField(activeRoot, "qP");
                Object item = readPrivateField(cell, "Rj");
                if (!IconIlluminationCompat.prepare(item, active)) {
                    Log.w(TAG, "ACTIVE_ICON_PROJECTION_PREPARE_FAILED");
                }
            } catch (Exception error) {
                Log.w(TAG, "ACTIVE_ICON_PROJECTION_PREPARE_FAILED", error);
            }
        }
        ActiveIconRasterSpec raster = ActiveIconRasterSpec.resolve();
        if (raster == null || raster.physicalArtworkWidth <= 0
                || raster.physicalTextureWidth <= 0) {
            return active;
        }
        int width = raster.physicalTextureWidth;
        int height = raster.physicalTextureHeight;
        int artworkWidth = raster.physicalArtworkWidth;
        int artworkHeight = raster.physicalArtworkHeight;
        int dstLeft = Math.round((width - artworkWidth) * 0.5f);
        int dstTop = Math.round((height - artworkHeight) * 0.25f);
        Paint paint = new Paint(Paint.ANTI_ALIAS_FLAG
                | Paint.FILTER_BITMAP_FLAG | Paint.DITHER_FLAG);
        EffectiveIconShadowSpec shadowSpec = effectiveIconShadowSpec();
        boolean logCachedFrame = shouldLogCachedFrame("CACHED_ACTIVE", width, height, shadowSpec);
        if (logCachedFrame) {
            logCachedFrameComposeStarted("CACHED_ACTIVE", width, height, shadowSpec);
        }
        Bitmap result = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(result);

        Bitmap sharedShadow = null;
        try {
            Object shadowNode = findLiveShadow(activeRoot);
            if (shadowNode != null) {
                Object texture = invoke(shadowNode, "getTextureName", Integer.valueOf(0));
                if (texture instanceof String) {
                    String path = (String) texture;
                    sharedShadow = BitmapFactory.decodeFile(path);
                    if (sharedShadow == null) {
                        sharedShadow = decodeActiveIconShadowSource(path, "CACHED_ACTIVE");
                    }
                }
            }
        } catch (Throwable error) {
            Log.w(TAG, "ACTIVE_ICON_CACHED_SHARED_SHADOW_LOOKUP_FAILED class="
                    + error.getClass().getSimpleName());
        }
        if (sharedShadow != null && !sharedShadow.isRecycled()) {
            float artworkCenterX = dstLeft + artworkWidth * 0.5f;
            float artworkCenterY = dstTop + artworkHeight * 0.5f;
            float shadowLeft = artworkCenterX - sharedShadow.getWidth() * 0.5f;
            float shadowTop = artworkCenterY - sharedShadow.getHeight() * 0.5f;
            canvas.drawBitmap(sharedShadow, shadowLeft, shadowTop, paint);
            if (logCachedFrame) {
                Log.d(TAG, "ACTIVE_ICON_CACHED_FRAME_SHADOW_CREATED type=CACHED_ACTIVE"
                        + " owner=DynamicShadowNode"
                        + " shadowWidth=" + sharedShadow.getWidth()
                        + " shadowHeight=" + sharedShadow.getHeight()
                        + shadowLogSuffix(shadowSpec));
            }
            sharedShadow.recycle();
        }

        canvas.drawBitmap(active,
                new android.graphics.Rect(0, 0, active.getWidth(), active.getHeight()),
                new android.graphics.Rect(dstLeft, dstTop,
                        dstLeft + artworkWidth, dstTop + artworkHeight), paint);
        if (base != null && base != result && !base.isRecycled()) base.recycle();
        if (active != result && !active.isRecycled()) active.recycle();
        if (logCachedFrame) {
            Log.d(TAG, "ACTIVE_ICON_CACHED_FRAME_COMPOSE_FINISHED type=CACHED_ACTIVE"
                    + " width=" + width + " height=" + height
                    + " artwork=" + artworkWidth + "x" + artworkHeight
                    + " opticalScale=removed"
                    + " rasterScale=" + raster.rasterScale
                    + shadowLogSuffix(shadowSpec));
        }
        return result;
    }

    /**
     * Reads the exact mode and arrays already selected by the original Cell path.
     * ICON_TYPE owns the ordinary theme's Dark/Light choice and the original
     * aero/trans/glime override. Wallpaper suffixes describe other theme
     * resources and must not select the icon shadow.
     */
    private static EffectiveIconShadowSpec effectiveIconShadowSpec() {
        try {
            Class<?> constants = Class.forName("com.smartisanos.launcher.data.Constants");
            String suffix = (String) readStaticField(constants, "sGaussianResSuffix");
            Enum<?> iconType = (Enum<?>) readStaticField(constants, "ICON_TYPE");
            int mode = iconType.ordinal();
            if (mode < SHADOW_DARK || mode > SHADOW_TRANSPARENT) {
                throw new IllegalStateException("Unknown original icon shadow type: " + iconType);
            }
            int[] radii = (int[]) readStaticField(constants,
                    mode == SHADOW_TRANSPARENT
                            ? "ICON_SHADOW_RADIUS_TRANSPARENT" : "ICON_SHADOW_RADIUS");
            int[][] allColors = (int[][]) readStaticField(constants, "ICON_SHADOW_COLOR");
            if (radii == null || allColors == null || mode >= allColors.length || allColors[mode] == null) {
                throw new IllegalStateException("Original icon shadow arrays are unavailable");
            }
            EffectiveIconShadowSpec spec = new EffectiveIconShadowSpec(mode, radii, allColors[mode], suffix);
            logEffectiveIconShadowSpec(spec);
            return spec;
        } catch (Throwable error) {
            Log.w(TAG, "ICON_SHADOW_CONSTANTS_RESOLVE_FAILED class="
                    + error.getClass().getSimpleName() + " message=" + error.getMessage());
            return null;
        }
    }

    /** Final raster identity follows the same original mode and resource arrays. */
    public static String iconShadowCacheToken() {
        EffectiveIconShadowSpec spec = effectiveIconShadowSpec();
        return spec == null ? "unavailable" : spec.mode + ":"
                + Arrays.toString(spec.radii) + ":" + Arrays.toString(spec.colors);
    }

    private static Object readStaticField(Class<?> owner, String name) throws Exception {
        Field field = owner.getDeclaredField(name);
        field.setAccessible(true);
        return field.get(null);
    }

    /**
     * Renders the ActiveIcon shadow with the same original helper and vertical
     * anchor used by regular static icons. The returned bitmap contains only
     * the two generated shadow layers; the live background remains a separate
     * original ActiveIcon SceneNode.
     */
    private static Bitmap createActiveIconShadowWithOriginalGenerator(
            Bitmap silhouette, EffectiveIconShadowSpec spec, float physicalScale,
            int canvasSize) {
        if (silhouette == null || spec == null || canvasSize <= 0) {
            return null;
        }
        float safeScale = physicalScale > 0.0f ? physicalScale : 1.0f;
        Bitmap result = Bitmap.createBitmap(
                canvasSize, canvasSize, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(result);
        Paint paint = new Paint(Paint.ANTI_ALIAS_FLAG
                | Paint.FILTER_BITMAP_FLAG | Paint.DITHER_FLAG);
        // The shadow texture belongs to a SceneNode that is larger than, but
        // centered on, the original live background node. Place the silhouette
        // at the symmetric in-canvas padding so it overlaps that background;
        // the original helper's +sqrt(radius) placement then remains below the
        // artwork. The static texture's 1/4 anchor would lift this sibling's
        // shadow above the live icon.
        float artworkTop = (canvasSize - silhouette.getHeight()) * 0.5f;
        int generated = 0;
        for (int i = 0; i < spec.radii.length && i < spec.colors.length; i++) {
            float radius = spec.radii[i] * safeScale;
            if (radius <= 0.0f) {
                continue;
            }
            Bitmap shadow = invokeOriginalStaticShadow(
                    silhouette, radius, spec.colors[i]);
            if (shadow == null) {
                continue;
            }
            float shadowLeft = (canvasSize - shadow.getWidth()) * 0.5f;
            float shadowTop = artworkTop + Math.round(Math.sqrt(radius));
            if (spec.mode == SHADOW_TRANSPARENT) {
                shadowTop += 2.0f * safeScale;
            }
            canvas.drawBitmap(shadow, shadowLeft, shadowTop, paint);
            shadow.recycle();
            generated++;
        }
        if (generated == 0) {
            result.recycle();
            return null;
        }
        Log.i(TAG, "ACTIVE_ICON_ORIGINAL_SHADOW_COMPOSED mode=" + spec.mode
                + " generatedLayers=" + generated
                + " artwork=" + silhouette.getWidth() + 'x' + silhouette.getHeight()
                + " texture=" + canvasSize + 'x' + canvasSize
                + " physicalScale=" + safeScale
                + " artworkTop=" + artworkTop);
        return result;
    }

    /**
     * Composes a managed static icon with the same shadow generator and vertical
     * anchor used by the original Cell pipeline. The artwork is already at its
     * final physical size, so this stage never enlarges a logical-size bitmap.
     */
    public static Bitmap composeStaticIconTextureWithOriginalShadow(
            Bitmap artwork, int textureSize, float physicalScale) {
        if (artwork == null || artwork.isRecycled() || textureSize <= 0) {
            return null;
        }
        EffectiveIconShadowSpec spec = effectiveIconShadowSpec();
        Bitmap result = Bitmap.createBitmap(
                textureSize, textureSize, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(result);
        Paint paint = new Paint();
        paint.setAntiAlias(true);
        float artworkLeft = (textureSize - artwork.getWidth()) * 0.5f;
        float artworkTop = (textureSize - artwork.getHeight()) * 0.25f;
        float safeScale = physicalScale > 0.0f ? physicalScale : 1.0f;
        // The original static helper consumes the complete artwork alpha.
        Bitmap silhouette = artwork;
        int generated = 0;
        if (spec != null && silhouette != null) {
            for (int i = 0; i < spec.radii.length && i < spec.colors.length; i++) {
                float radius = spec.radii[i] * safeScale;
                if (radius <= 0.0f) {
                    continue;
                }
                Bitmap shadow = invokeOriginalStaticShadow(
                        silhouette, radius, spec.colors[i]);
                if (shadow == null) {
                    continue;
                }
                float shadowLeft = (textureSize - shadow.getWidth()) / 2;
                float shadowTop = artworkTop + Math.round(Math.sqrt(radius));
                if (spec.mode == SHADOW_TRANSPARENT) {
                    shadowTop += 2.0f * safeScale;
                }
                canvas.drawBitmap(shadow, shadowLeft, shadowTop, paint);
                shadow.recycle();
                generated++;
            }
        }
        if (silhouette != null && silhouette != artwork && !silhouette.isRecycled()) {
            silhouette.recycle();
        }
        // Match the original independent, unfiltered body copy.
        Paint artworkPaint = new Paint();
        artworkPaint.setFilterBitmap(false);
        canvas.drawBitmap(artwork, artworkLeft, artworkTop, artworkPaint);
        Log.i(TAG, "STATIC_ICON_ORIGINAL_SHADOW_COMPOSED mode="
                + (spec == null ? -1 : spec.mode)
                + " generatedLayers=" + generated
                + " artwork=" + artwork.getWidth() + 'x' + artwork.getHeight()
                + " texture=" + textureSize + 'x' + textureSize
                + " physicalScale=" + safeScale
                + " artworkTop=" + artworkTop);
        return result;
    }

    /**
     * Removes only low-alpha exterior pixels from the shadow mask. The visible
     * artwork remains untouched, while a legacy baked PNG shadow does not
     * become a second launcher-generated shadow.
     */
    private static Bitmap createStaticShadowSilhouette(Bitmap artwork) {
        try {
            int width = artwork.getWidth();
            int height = artwork.getHeight();
            int[] pixels = new int[width * height];
            artwork.getPixels(pixels, 0, width, 0, 0, width, height);
            for (int i = 0; i < pixels.length; i++) {
                if ((pixels[i] >>> 24) < STATIC_ICON_SHADOW_ALPHA_CUTOFF) {
                    pixels[i] = 0;
                }
            }
            Bitmap silhouette = Bitmap.createBitmap(
                    width, height, Bitmap.Config.ARGB_8888);
            silhouette.setPixels(pixels, 0, width, 0, 0, width, height);
            return silhouette;
        } catch (Throwable error) {
            Log.w(TAG, "STATIC_ICON_SHADOW_MASK_FAILED class="
                    + error.getClass().getSimpleName());
            return artwork;
        }
    }

    private static Bitmap invokeOriginalStaticShadow(
            Bitmap silhouette, float radius, int color) {
        try {
            Method method = sOriginalStaticShadowMethod;
            if (method == null && !sOriginalStaticShadowResolveFailed) {
                synchronized (LauncherSettingBridge.class) {
                    method = sOriginalStaticShadowMethod;
                    if (method == null && !sOriginalStaticShadowResolveFailed) {
                        Class<?> helper = Class.forName(
                                "com.smartisanos.launcher.data.L");
                        method = helper.getDeclaredMethod("a",
                                Bitmap.class, Canvas.class,
                                Float.TYPE, Integer.TYPE);
                        method.setAccessible(true);
                        sOriginalStaticShadowMethod = method;
                    }
                }
            }
            if (method == null) {
                return null;
            }
            Object value = method.invoke(
                    null, silhouette, new Canvas(), radius, color);
            return value instanceof Bitmap ? (Bitmap) value : null;
        } catch (Throwable error) {
            sOriginalStaticShadowResolveFailed = true;
            Log.w(TAG, "STATIC_ICON_ORIGINAL_SHADOW_FAILED class="
                    + error.getClass().getSimpleName()
                    + " message=" + error.getMessage());
            return null;
        }
    }

    private static void logEffectiveIconShadowSpec(EffectiveIconShadowSpec spec) {
        String key = spec.mode + ":" + java.util.Arrays.toString(spec.radii) + ":"
                + java.util.Arrays.toString(spec.colors) + ":" + spec.gaussianSuffix;
        if (!key.equals(sLastLoggedShadowSpec)) {
            sLastLoggedShadowSpec = key;
            Log.d(TAG, "ICON_SHADOW_EFFECTIVE_SPEC mode=" + spec.mode
                    + " radii=" + java.util.Arrays.toString(spec.radii)
                    + " colors=" + java.util.Arrays.toString(spec.colors)
                    + " sGaussianResSuffix=" + spec.gaussianSuffix
                    + " thread=" + Thread.currentThread().getName());
            Log.d(TAG, "ICON_SHADOW_CONSTANTS_RESOLVED mode=" + spec.mode
                    + " radii=" + Arrays.toString(spec.radii)
                    + " colors=" + Arrays.toString(spec.colors)
                    + " sGaussianResSuffix=" + spec.gaussianSuffix
                    + " thread=" + Thread.currentThread().getName());
        }
    }

    /** Size of the centered shadow node. The original background remains unchanged above it. */
    public static float activeIconLiveShadowNodeSize(float backgroundSize) {
        EffectiveIconShadowSpec spec = effectiveIconShadowSpec();
        return Math.max(1.0f, backgroundSize + shadowPadding(spec) * 2.0f);
    }

    /**
     * Creates a transparent, shadow-only texture for the live SMEngine node.  It is
     * deliberately separate from the original background texture so WeatherView and
     * CalendarView keep their original animated backgrounds, digits and foregrounds.
     */
    public static String createActiveIconLiveShadowTexture(
            String sourcePath, float backgroundSize, String type) {
        EffectiveIconShadowSpec spec = effectiveIconShadowSpec();
        Context context = applicationContext();
        if (sourcePath == null || context == null || spec == null) {
            Log.w(TAG, "ACTIVE_ICON_LIVE_SHADOW_CACHE_MISS type=" + type
                    + " source=" + sourcePath + " context=" + (context != null)
                    + shadowLogSuffix(spec));
            return null;
        }
        float physicalScale =
                ActiveIconRasterSpec.physicalScaleForActiveBackground(backgroundSize);
        int baseSize = Math.max(1, Math.round(backgroundSize * physicalScale));
        int padding = Math.max(1, Math.round(shadowPadding(spec) * physicalScale));
        int canvasSize = baseSize + padding * 2;
        String key = ActiveIconRasterSpec.cacheKey(type, sourcePath,
                Math.round(backgroundSize),
                Math.round(activeIconLiveShadowNodeSize(backgroundSize)),
                baseSize, canvasSize) + ':'
                + spec.mode + ':' + Arrays.toString(spec.radii) + ':' + Arrays.toString(spec.colors)
                + ':' + readIconSizePercent(context);
        synchronized (ACTIVE_ICON_SHADOW_LOCK) {
            String cached = ACTIVE_ICON_LIVE_SHADOW_CACHE.get(key);
            if (cached != null && new File(cached).isFile()) {
                Log.d(TAG, "ACTIVE_ICON_LIVE_SHADOW_CACHE_HIT type=" + type
                        + " canvas=" + canvasSize + " path=" + cached + shadowLogSuffix(spec));
                return cached;
            }
            Log.d(TAG, "ACTIVE_ICON_LIVE_SHADOW_CACHE_MISS type=" + type
                    + " base=" + baseSize + " canvas=" + canvasSize + shadowLogSuffix(spec));
            Bitmap source = decodeActiveIconShadowSource(sourcePath, type);
            if (source == null) {
                Log.w(TAG, "ACTIVE_ICON_LIVE_SHADOW_BITMAP_CREATE_FAILED type=" + type
                        + " source=" + sourcePath);
                return null;
            }
            Bitmap silhouette = Bitmap.createBitmap(
                    baseSize, baseSize, Bitmap.Config.ARGB_8888);
            Canvas silhouetteCanvas = new Canvas(silhouette);
            Paint paint = new Paint(Paint.ANTI_ALIAS_FLAG | Paint.FILTER_BITMAP_FLAG);
            float scale = Math.min(baseSize / (float) source.getWidth(),
                    baseSize / (float) source.getHeight());
            float drawWidth = source.getWidth() * scale;
            float drawHeight = source.getHeight() * scale;
            silhouetteCanvas.drawBitmap(source, null,
                    new android.graphics.RectF((baseSize - drawWidth) * 0.5f,
                            (baseSize - drawHeight) * 0.5f,
                            (baseSize + drawWidth) * 0.5f,
                            (baseSize + drawHeight) * 0.5f), paint);
            source.recycle();
            Bitmap shadowSilhouette = createStaticShadowSilhouette(silhouette);
            Bitmap shadow = createActiveIconShadowWithOriginalGenerator(
                    shadowSilhouette, spec, physicalScale, canvasSize);
            if (shadowSilhouette != silhouette && !shadowSilhouette.isRecycled()) {
                shadowSilhouette.recycle();
            }
            silhouette.recycle();
            if (shadow == null) {
                return null;
            }
            File dir = new File(context.getCacheDir(), ACTIVE_ICON_SHADOW_CACHE_DIR);
            if (!dir.isDirectory() && !dir.mkdirs()) {
                shadow.recycle();
                Log.w(TAG, "ACTIVE_ICON_LIVE_SHADOW_BITMAP_CREATE_FAILED type=" + type
                        + " cacheDir=" + dir);
                return null;
            }
            File output = new File(dir, Integer.toHexString(key.hashCode()) + ".png");
            FileOutputStream stream = null;
            try {
                stream = new FileOutputStream(output);
                if (!shadow.compress(Bitmap.CompressFormat.PNG, 100, stream)) {
                    throw new IllegalStateException("PNG compression failed");
                }
            } catch (Throwable error) {
                Log.w(TAG, "ACTIVE_ICON_LIVE_SHADOW_BITMAP_CREATE_FAILED type=" + type
                        + " class=" + error.getClass().getSimpleName());
                return null;
            } finally {
                shadow.recycle();
                if (stream != null) {
                    try { stream.close(); } catch (Throwable ignored) { }
                }
            }
            String path = output.getAbsolutePath();
            ACTIVE_ICON_LIVE_SHADOW_CACHE.put(key, path);
            Log.d(TAG, "ACTIVE_ICON_LIVE_SHADOW_BITMAP_CREATED type=" + type
                    + " width=" + canvasSize + " height=" + canvasSize
                    + " physicalScale=" + physicalScale
                    + " outputBytes=" + output.length() + shadowLogSuffix(spec));
            Log.d(TAG, "ACTIVE_ICON_LIVE_BACKGROUND_TEXTURE_CREATED type=" + type
                    + " width=" + baseSize + " height=" + baseSize
                    + " shadowWidth=" + canvasSize + " shadowHeight=" + canvasSize
                    + " logicalBackground=" + backgroundSize
                    + shadowLogSuffix(spec));
            return path;
        }
    }

    /**
     * pb.path() produces a path relative to the active theme.  Keep the dynamic-node
     * shadow on the exact same asset loading path as the original Weather/Calendar
     * nodes instead of assuming that value is a readable filesystem path.
     */
    private static Bitmap decodeActiveIconShadowSource(String sourcePath, String type) {
        File sourceFile = new File(sourcePath);
        Log.d(TAG, "ACTIVE_ICON_SHADOW_SOURCE_RESOLVED type=" + type
                + " path=" + sourcePath + " exists=" + sourceFile.exists()
                + " isFile=" + sourceFile.isFile() + " bytes=" + sourceFile.length());

        Bitmap original = null;
        String route = "theme_asset";
        try {
            Class<?> imageClass = Class.forName("com.smartisanos.smengine.s");
            Method getBitmap = imageClass.getMethod("getBitmap", String.class);
            Object result = getBitmap.invoke(null, sourcePath);
            if (result instanceof Bitmap) {
                original = (Bitmap) result;
            }
        } catch (Throwable error) {
            route = "theme_asset_failed_" + error.getClass().getSimpleName();
            Log.w(TAG, "ACTIVE_ICON_SHADOW_THEME_ASSET_DECODE_FAILED type=" + type
                    + " path=" + sourcePath + " class=" + error.getClass().getSimpleName());
        }
        if (original == null && sourceFile.isFile()) {
            route = "file";
            original = BitmapFactory.decodeFile(sourcePath);
        }
        if (original == null) {
            Log.w(TAG, "ACTIVE_ICON_SHADOW_SOURCE_DECODE_FAILED type=" + type
                    + " path=" + sourcePath + " route=" + route);
            return null;
        }
        try {
            Bitmap copy = original.copy(Bitmap.Config.ARGB_8888, false);
            if (copy != null) {
                Log.d(TAG, "ACTIVE_ICON_SHADOW_SOURCE_DECODED type=" + type
                        + " route=" + route + " width=" + copy.getWidth()
                        + " height=" + copy.getHeight() + " hasAlpha=" + copy.hasAlpha());
                return copy;
            }
        } catch (Throwable error) {
            Log.w(TAG, "ACTIVE_ICON_SHADOW_SOURCE_COPY_FAILED type=" + type
                    + " class=" + error.getClass().getSimpleName());
        } finally {
            if (!original.isRecycled()) original.recycle();
        }
        return null;
    }

    public static void logActiveIconLiveShadowNodeAttached(
            String type, float backgroundSize, float shadowSize, String path) {
        Log.d(TAG, "ACTIVE_ICON_LIVE_SHADOW_NODE_ATTACHED type=" + type
                + " backgroundSize=" + backgroundSize + " shadowSize=" + shadowSize
                + " path=" + path);
        Log.d(TAG, "ACTIVE_ICON_LIVE_SHADOW_NODE_VISIBLE type=" + type
                + " backgroundSize=" + backgroundSize + " shadowSize=" + shadowSize);
    }

    /** Logs the real SMEngine placement after setImageName/addChild without a Java dependency on it. */
    public static void logActiveIconLiveShadowNodeState(String type, Object node) {
        if (node == null) {
            Log.w(TAG, "ACTIVE_ICON_LIVE_SHADOW_NODE_STATE type=" + type + " node=null");
            return;
        }
        try {
            Class<?> clazz = node.getClass();
            Object parent = clazz.getMethod("getParent").invoke(node);
            Object layer = clazz.getMethod("getLayer").invoke(node);
            Object queue = clazz.getMethod("getRenderQueue").invoke(node);
            Object visible = clazz.getMethod("isVisible").invoke(node);
            Log.d(TAG, "ACTIVE_ICON_LIVE_SHADOW_NODE_STATE type=" + type
                    + " node=" + clazz.getName()
                    + " parent=" + (parent == null ? "null" : parent.getClass().getName())
                    + " layer=" + layer + " queue=" + queue + " visible=" + visible);
        } catch (Throwable error) {
            Log.w(TAG, "ACTIVE_ICON_LIVE_SHADOW_NODE_STATE_FAILED type=" + type
                    + " class=" + error.getClass().getSimpleName());
        }
    }

    private static long sActiveIconGeometryGeneration;
    private static final java.util.Map<Object, String> ACTIVE_ICON_STATES =
            java.util.Collections.synchronizedMap(new java.util.WeakHashMap<Object, String>());

    /** Re-sync at the original LIVE/STATIC state boundary without a delay. */
    public static void syncActiveIconState(Object activeRoot, String state) {
        if (activeRoot == null) return;
        ACTIVE_ICON_STATES.put(activeRoot, state == null ? "LIVE" : state);
        try {
            Object cell = readPrivateField(activeRoot, "qP");
            if (cell != null) syncActiveIconToStaticArtwork(cell, null);
        } catch (Throwable error) {
            Log.w(TAG, "ACTIVE_ICON_STATE_SYNC_FAILED state=" + state
                    + " class=" + error.getClass().getSimpleName());
        }
    }

    /** Matches LIVE to the current STATIC Cell geometry without changing STATIC. */
    public static void syncActiveIconToStaticArtwork(Object cell, Object staticIconNode) {
        try {
            Object values = readPrivateField(cell, "sc");
            if (!(values instanceof Object[])) {
                Log.i(TAG, "ACTIVE_ICON_GEOMETRY_SYNC_DEFER reason=sc_unavailable");
                return;
            }
            Object[] nodes = (Object[]) values;
            // sc[1] is the ordinary-application artwork node and is deliberately
            // not created for Weather/Calendar.  sc[0] is only a possible cached
            // texture node; some original ActiveIcon lifecycles do not publish it.
            if (staticIconNode == null && nodes.length > 0) staticIconNode = nodes[0];
            if (nodes.length <= 7 || nodes[7] == null) {
                return;
            }
            Object activeRoot = nodes[7];
            String type = activeRoot.getClass().getName().endsWith(".H") ? "weather" : "calendar";
            Object activeBase = findActiveIconBase(activeRoot, type);
            if (activeBase == null) {
                Log.i(TAG, "ACTIVE_ICON_GEOMETRY_SYNC_DEFER reason=active_base_unavailable"
                        + " type=" + type + " children=" + activeIconChildNames(activeRoot));
                return;
            }
            ActiveIconRasterSpec raster = ActiveIconRasterSpec.resolve();
            if (raster == null || raster.rasterScale <= 0.0f) {
                Log.i(TAG, "ACTIVE_ICON_GEOMETRY_SYNC_DEFER reason=raster_unavailable type=" + type);
                return;
            }

            Object baseScale = invoke(activeBase, "getScale");
            Rect activeBaseRect = worldRect(activeBase);

            float logicalArtwork = Math.max(1.0f, raster.logicalArtworkWidth);
            float logicalArtworkHeight = Math.max(1.0f, raster.logicalArtworkHeight);
            float logicalTexture = Math.max(1.0f, raster.physicalTextureWidth / raster.rasterScale);
            float logicalTextureHeight = Math.max(1.0f,
                    raster.physicalTextureHeight / raster.rasterScale);
            Object staticScale = staticIconNode == null ? invoke(cell, "getScale")
                    : invoke(staticIconNode, "getScale");
            Rect staticRect = staticIconNode == null ? null : worldRect(staticIconNode);
            String oracle;
            float staticArtworkWorldWidth;
            float staticArtworkWorldHeight;
            if (staticRect != null && staticRect.width > 0.0f && staticRect.height > 0.0f) {
                oracle = "STATIC_NODE";
                staticArtworkWorldWidth = staticRect.width * logicalArtwork / logicalTexture;
                staticArtworkWorldHeight = staticRect.height
                        * logicalArtworkHeight / logicalTextureHeight;
            } else {
                // The original renderer can keep an invisible node out of the
                // published world-bounds tree.  sc[0] and sc[7] are siblings in
                // the same Cell, so sc[0]'s resolved local display scale is the
                // next real STATIC geometry oracle; unlike raster metrics it
                // already includes grid and user-size changes.
                float staticLocalWidth = Math.abs(floatField(staticScale, "x"));
                float staticLocalHeight = Math.abs(floatField(staticScale, "y"));
                if (staticIconNode != null && staticLocalWidth > 0.0f
                        && staticLocalHeight > 0.0f) {
                    Object rootScale = invoke(activeRoot, "getScale");
                    float rootX = floatField(rootScale, "x");
                    float rootY = floatField(rootScale, "y");
                    float rootZ = floatField(rootScale, "z");
                    float baseHalfWidth = Math.abs(floatField(baseScale, "x"));
                    float baseHalfHeight = Math.abs(floatField(baseScale, "y"));
                    float currentHalfWidth = baseHalfWidth * Math.abs(rootX);
                    float currentHalfHeight = baseHalfHeight * Math.abs(rootY);
                    float staticArtworkHalfWidth = staticLocalWidth
                            * logicalArtwork / logicalTexture;
                    float staticArtworkHalfHeight = staticLocalHeight
                            * logicalArtworkHeight / logicalTextureHeight;
                    if (currentHalfWidth > 0.0f && currentHalfHeight > 0.0f) {
                        float widthCorrection = staticArtworkHalfWidth / currentHalfWidth;
                        float heightCorrection = staticArtworkHalfHeight / currentHalfHeight;
                        float correction = Math.min(widthCorrection, heightCorrection);
                        invoke(activeRoot, "setScale", Float.valueOf(rootX * correction),
                                Float.valueOf(rootY * correction), Float.valueOf(rootZ));
                        invoke(activeRoot, "updateGeometricState");
                        Log.i(TAG, "ICON_CONTRACT_ACTIVE_SYNC type=" + type.toUpperCase()
                                + " state=" + (ACTIVE_ICON_STATES.get(activeRoot) == null
                                ? "LIVE" : ACTIVE_ICON_STATES.get(activeRoot))
                                + " staticOracle=STATIC_NODE_LOCAL_SCALE"
                                + " staticIndex=0"
                                + " iconSizePercent=" + raster.iconSizePercent
                                + " staticTextureHalf=" + staticLocalWidth + "x" + staticLocalHeight
                                + " staticArtworkHalf=" + staticArtworkHalfWidth + "x"
                                + staticArtworkHalfHeight
                                + " activeArtworkHalfBefore=" + currentHalfWidth + "x"
                                + currentHalfHeight
                                + " finalWidthRatio="
                                + ((baseHalfWidth * Math.abs(rootX * correction))
                                / staticArtworkHalfWidth)
                                + " finalHeightRatio="
                                + ((baseHalfHeight * Math.abs(rootY * correction))
                                / staticArtworkHalfHeight)
                                + " centerDeltaX=0.0 centerDeltaY=0.0"
                                + " rootScaleAfter=" + vector2(invoke(activeRoot, "getScale")));
                        return;
                    }
                }
                // STATIC is the only final geometry oracle.  If its real node is
                // not published yet, defer; never substitute physical raster
                // dimensions for SMEngine logical/world geometry.
                Log.i(TAG, "ACTIVE_ICON_GEOMETRY_SYNC_DEFER reason=static_oracle_unavailable"
                        + " type=" + type + " staticIndex=0");
                logActiveIconCellNodes(type, nodes);
                logActiveIconNodeTree(type, activeRoot, activeBase,
                        findLiveShadow(activeRoot));
                return;
            }
            if (activeBaseRect == null || activeBaseRect.width <= 0.0f
                    || activeBaseRect.height <= 0.0f) {
                Log.i(TAG, "ACTIVE_ICON_GEOMETRY_SYNC_DEFER reason=static_node_bounds_unavailable"
                        + " type=" + type);
                return;
            }
            float widthCorrection = staticArtworkWorldWidth / activeBaseRect.width;
            float heightCorrection = staticArtworkWorldHeight / activeBaseRect.height;
            float uniformCorrection = widthCorrection;
            float liveBodyWorldBeforeWidth = activeBaseRect.width;
            float liveBodyWorldBeforeHeight = activeBaseRect.height;
            Object rootScale = invoke(activeRoot, "getScale");
            float rootX = floatField(rootScale, "x");
            float rootY = floatField(rootScale, "y");
            float rootZ = floatField(rootScale, "z");
            String rootScaleBefore = vector2(rootScale);
            Log.i(TAG, "ACTIVEICON_BASELINE_ALIGN"
                    + " type=" + type
                    + " oracle=" + oracle
                    + " iconSizePercent=" + readIconSizePercent(applicationContext())
                    + " staticTextureWorld=" + staticRect.width + "x" + staticRect.height
                    + " logicalArtwork=" + logicalArtwork + "x" + logicalArtworkHeight
                    + " logicalTexture=" + logicalTexture + "x" + logicalTextureHeight
                    + " staticArtworkWorld=" + staticArtworkWorldWidth + "x"
                    + staticArtworkWorldHeight
                    + " liveBodyWorldBefore=" + liveBodyWorldBeforeWidth + "x"
                    + liveBodyWorldBeforeHeight
                    + " rootScaleBefore=" + rootScaleBefore
                    + " widthCorrection=" + widthCorrection
                    + " heightCorrection=" + heightCorrection
                    + " uniformCorrection=" + uniformCorrection);
            invoke(activeRoot, "setScale", Float.valueOf(rootX * uniformCorrection),
                    Float.valueOf(rootY * uniformCorrection), Float.valueOf(rootZ));
            invoke(activeRoot, "updateGeometricState");
            activeBaseRect = worldRect(activeBase);
            if (activeBaseRect == null) return;
            for (int attempt = 0; attempt < 2; attempt++) {
                float deltaX = staticRect.centerX - activeBaseRect.centerX;
                float deltaY = staticRect.centerY - activeBaseRect.centerY;
                if (Math.abs(deltaX) <= 0.5f && Math.abs(deltaY) <= 0.5f) break;
                Object translate = invoke(activeRoot, "getLocation");
                float translateX = floatField(translate, "x");
                float translateY = floatField(translate, "y");
                float translateZ = floatField(translate, "z");
                invoke(activeRoot, "setTranslate", Float.valueOf(translateX + deltaX),
                        Float.valueOf(translateY + deltaY), Float.valueOf(translateZ));
                invoke(activeRoot, "updateGeometricState");
                activeBaseRect = worldRect(activeBase);
                if (activeBaseRect == null) return;
            }
            Log.i(TAG, "ACTIVEICON_BASELINE_ALIGN type=" + type
                    + " oracle=" + oracle
                    + " iconSizePercent=" + readIconSizePercent(applicationContext())
                    + " staticTextureWorld=" + staticRect.width + "x" + staticRect.height
                    + " staticArtworkWorld=" + staticArtworkWorldWidth + "x"
                    + staticArtworkWorldHeight
                    + " liveBodyWorldBefore=" + liveBodyWorldBeforeWidth + "x"
                    + liveBodyWorldBeforeHeight
                    + " rootScaleBefore=" + rootScaleBefore
                    + " widthCorrection=" + widthCorrection
                    + " heightCorrection=" + heightCorrection
                    + " uniformCorrection=" + uniformCorrection
                    + " rootScaleAfter=" + vector2(invoke(activeRoot, "getScale"))
                    + " liveBodyWorldAfter=" + activeBaseRect.width + "x"
                    + activeBaseRect.height);
            float finalWidthRatio = activeBaseRect.width
                    / Math.max(1.0f, staticArtworkWorldWidth);
            float finalHeightRatio = activeBaseRect.height
                    / Math.max(1.0f, staticArtworkWorldHeight);
            float centerDeltaX = activeBaseRect.centerX - staticRect.centerX;
            float centerDeltaY = activeBaseRect.centerY - staticRect.centerY;
            long generation = ++sActiveIconGeometryGeneration;
            Object shadow = findLiveShadow(activeRoot);
            Rect shadowFinalRect = shadow == null ? null : worldRect(shadow);
            Log.i(TAG, "ACTIVE_ICON_GEOMETRY_VERIFY type=" + type
                    + " mode=" + activeIconMode(cell)
                    + " staticTextureWorldRect=" + staticRect
                    + " staticArtworkLogicalRect="
                    + staticArtworkWorldWidth + "x" + staticArtworkWorldHeight
                    + " activeBackgroundLogicalRect="
                    + activeBaseRect.width + "x" + activeBaseRect.height
                    + " staticToLiveWidthRatio=" + widthCorrection
                    + " staticToLiveHeightRatio=" + heightCorrection
                    + " finalActiveToStaticWidthRatio=" + finalWidthRatio
                    + " finalActiveToStaticHeightRatio=" + finalHeightRatio
                    + " centerDeltaX=" + centerDeltaX
                    + " centerDeltaY=" + centerDeltaY
                    + " staticVisible=" + (staticIconNode == null
                    ? "NOT_CREATED" : invoke(staticIconNode, "isVisible"))
                    + " activeRootVisible=" + invoke(activeRoot, "isVisible")
                    + " activeBackgroundVisible=" + invoke(activeBase, "isVisible")
                    + " staticScale=" + vector2(staticScale)
                    + " activeBaseScale=" + vector2(baseScale)
                    + " iconSizePercent=" + readIconSizePercent(applicationContext())
                    + " rootScaleBefore=" + rootScaleBefore
                    + " rootScaleAfter=" + vector2(invoke(activeRoot, "getScale"))
                    + " shadowWorldRect=" + shadowFinalRect
                    + " commonParentAppliedOnce=true"
                    + " generation=" + generation);
            String state = ACTIVE_ICON_STATES.get(activeRoot);
            if (state == null) state = "LIVE";
            Log.i(TAG, "ICON_CONTRACT_ACTIVE_SYNC type=" + type.toUpperCase()
                    + " state=" + state
                    + " finalWidthRatio=" + finalWidthRatio
                    + " finalHeightRatio=" + finalHeightRatio
                    + " centerDeltaX=" + centerDeltaX
                    + " centerDeltaY=" + centerDeltaY
                    + " staticOracle=" + oracle + " generation=" + generation);
            logActiveIconNodeTree(type, activeRoot, activeBase, shadow);
        } catch (Throwable error) {
            Log.w(TAG, "ACTIVE_ICON_GEOMETRY_VERIFY_FAILED class="
                    + error.getClass().getSimpleName());
        }
    }

    /**
     * Dynamic weather/calendar owns its shadow while its original ActiveIcon
     * root exists. Ordinary Cells and disabled dynamic icons retain sc[27].
     */
    public static void applyActiveIconShadowOwnership(Object cell) {
        try {
            Object values = readPrivateField(cell, "sc");
            if (!(values instanceof Object[])) return;
            Object[] nodes = (Object[]) values;
            Object activeRoot = nodes.length > 7 ? nodes[7] : null;
            Object cellShadow = nodes.length > 27 ? nodes[27] : null;
            if (cellShadow == null) return;
            Object dynamicShadow = activeRoot == null ? null : findLiveShadow(activeRoot);
            boolean projection = IconIlluminationCompat.enabled();
            boolean dynamicOwnsShadow = dynamicShadow != null;
            // Original L.a retains the contact shadow underneath sc[27]'s moving projection.
            // LiveShadow remains the ActiveIcon contact owner; sc[27] owns only projection.
            invoke(cellShadow, "setVisibility", Boolean.valueOf(projection || !dynamicOwnsShadow));
            Log.i(TAG, "ACTIVE_ICON_SHADOW_OWNERSHIP owner="
                    + (dynamicOwnsShadow ? "DynamicShadowNode" : "OrdinaryCellShadow")
                    + " ordinaryCellShadowVisible=" + (projection || !dynamicOwnsShadow)
                    + " liveShadowVisible=" + dynamicOwnsShadow);
        } catch (Throwable error) {
            Log.w(TAG, "ACTIVE_ICON_SHADOW_OWNERSHIP_FAILED class="
                    + error.getClass().getSimpleName());
        }
    }

    private static void logActiveIconNodeTree(
            String type, Object root, Object base, Object shadow) {
        try {
            int childCount = ((Integer) invoke(root, "getChildCount")).intValue();
            StringBuilder tree = new StringBuilder(256);
            tree.append("ACTIVE_ICON_NODE_TREE type=").append(type)
                    .append(" root=").append(invoke(root, "getName"))
                    .append(" state=").append(ACTIVE_ICON_STATES.get(root))
                    .append(" rootVisible=").append(invoke(root, "isVisible"))
                    .append(" rootScale=").append(vector2(invoke(root, "getScale")))
                    .append(" rootWorld=").append(worldRect(root))
                    .append(" childCount=").append(childCount);
            for (int i = 0; i < childCount; i++) {
                Object child = invoke(root, "getChildAt", Integer.valueOf(i));
                tree.append(" | ").append(invoke(child, "getName"))
                        .append("{class=").append(child.getClass().getSimpleName())
                        .append(",visible=").append(invoke(child, "isVisible"))
                        .append(",layer=").append(invoke(child, "getLayer"))
                        .append(",queue=").append(invoke(child, "getRenderQueue"))
                        .append(",scale=").append(vector2(invoke(child, "getScale")))
                        .append(",world=").append(worldRect(child))
                        .append(",texture=").append(invoke(child, "getTextureName",
                                Integer.valueOf(0)))
                        .append('}');
            }
            tree.append(" baseIsChild=").append(base != null)
                    .append(" shadowIsChild=").append(shadow != null);
            Log.i(TAG, tree.toString());
        } catch (Throwable error) {
            Log.w(TAG, "ACTIVE_ICON_NODE_TREE_FAILED type=" + type
                    + " class=" + error.getClass().getSimpleName());
        }
    }

    private static String activeIconMode(Object cell) {
        try {
            Object value = invoke(cell, "getSinglePageMode");
            return Integer.valueOf(0).equals(value) ? "12" : "20";
        } catch (Throwable ignored) {
            return "unknown";
        }
    }

    private static Object findActiveIconBase(Object activeRoot, String type) throws Exception {
        int count = ((Integer) invoke(activeRoot, "getChildCount")).intValue();
        String expected = "weather".equals(type) ? "weatherView_back" : "calenderBg";
        for (int i = 0; i < count; i++) {
            Object child = invoke(activeRoot, "getChildAt", Integer.valueOf(i));
            Object name = invoke(child, "getName");
            if (expected.equals(name)) return child;
        }
        return null;
    }

    private static Object findLiveShadow(Object activeRoot) throws Exception {
        int count = ((Integer) invoke(activeRoot, "getChildCount")).intValue();
        for (int i = 0; i < count; i++) {
            Object child = invoke(activeRoot, "getChildAt", Integer.valueOf(i));
            Object name = invoke(child, "getName");
            if (name instanceof String && ((String) name).endsWith("LiveShadow")) return child;
        }
        return null;
    }

    private static Rect worldRect(Object node) throws Exception {
        Object volume = invoke(node, "getWorldBoundingVolume");
        if (volume == null) return null;
        Object first = invoke(volume, "Qj");
        Object second = invoke(volume, "Pj");
        float firstX = floatField(first, "x");
        float firstY = floatField(first, "y");
        float secondX = floatField(second, "x");
        float secondY = floatField(second, "y");
        return new Rect(Math.min(firstX, secondX), Math.min(firstY, secondY),
                Math.max(firstX, secondX), Math.max(firstY, secondY));
    }

    /** Keeps a stationary, directly drawn static texture on physical texel boundaries. */
    public static void alignStaticIconPixelGrid(Object cell) {
        try {
            Object item = readPrivateField(cell, "Rj");
            if (item == null || ((Number) readPrivateField(item, "itemType")).intValue() != 0) return;
            int mode = ((Number) readPrivateField(cell, "fH")).intValue();
            if (mode == 8) return;
            Object[] nodes = (Object[]) readPrivateField(cell, "sc");
            if (nodes == null || nodes[0] == null || nodes[7] != null) return;
            Object node = nodes[0];
            if (invokePixelGrid(node, "getRenderTarget") != null) return;
            // Animated and transformed scenes retain their original continuous coordinates.
            for (Object parent = cell; parent != null; parent = invokePixelGrid(parent, "getParent")) {
                if (((Number) invokePixelGrid(parent, "getAnimationState")).intValue() != 0) return;
                Object scale = invokePixelGrid(parent, "getScale");
                if (Math.abs(floatField(scale, "x") - 1f) > 0.0001f
                        || Math.abs(floatField(scale, "y") - 1f) > 0.0001f) return;
            }
            Object renderer = Class.forName("com.smartisanos.smengine.Ra")
                    .getMethod("getInstance").invoke(null);
            Object camera = invokePixelGrid(invokePixelGrid(renderer, "at"), "Vj");
            String textureName = (String) invokePixelGrid(node, "getTextureName", Integer.valueOf(0));
            Object texture = invokePixelGrid(invokePixelGrid(renderer, "rt"), "bb", textureName);
            if (texture == null) return;
            float[] corners = new float[12];
            node.getClass().getMethod("getCornerPointScreenCoord",
                    Class.forName("com.smartisanos.smengine.Camera"), float[].class)
                    .invoke(node, camera, corners);
            float width = corners[3] - corners[0];
            float height = corners[4] - corners[1];
            float textureWidth = ((Number) invokePixelGrid(texture, "getWidth")).floatValue();
            float textureHeight = ((Number) invokePixelGrid(texture, "getHeight")).floatValue();
            if (width <= 0f || height <= 0f || Math.abs(width - textureWidth) > 0.01f
                    || Math.abs(height - textureHeight) > 0.01f) return;
            float dx = Math.round(corners[0]) - corners[0];
            float dy = Math.round(corners[1]) - corners[1];
            if (Math.abs(dx) < 0.001f && Math.abs(dy) < 0.001f) return;
            Object position = invokePixelGrid(node, "getLocation");
            float localWidth = ((Number) invokePixelGrid(node, "getWidth")).floatValue();
            float localHeight = ((Number) invokePixelGrid(node, "getHeight")).floatValue();
            invokePixelGrid(node, "setTranslate", Float.valueOf(floatField(position, "x") + dx * localWidth / width),
                    Float.valueOf(floatField(position, "y") + dy * localHeight / height),
                    Float.valueOf(floatField(position, "z")));
            invokePixelGrid(node, "updateGeometricState");
        } catch (Exception error) {
            Log.w(TAG, "STATIC_ICON_PIXEL_GRID_FAILED", error);
        }
    }

    private static Object invokePixelGrid(Object target, String name, Object... arguments)
            throws Exception {
        return pixelGridMethod(target.getClass(), name, arguments.length).invoke(target, arguments);
    }

    private static Method pixelGridMethod(Class<?> type, String name, int argumentCount)
            throws Exception {
        Method selected;
        synchronized (PIXEL_GRID_METHODS) {
            Map<String, Method> methods = PIXEL_GRID_METHODS.get(type);
            if (methods == null) {
                methods = new HashMap<>();
                PIXEL_GRID_METHODS.put(type, methods);
            }
            String key = name + ":" + argumentCount;
            selected = methods.get(key);
            if (selected == null) {
                // These hot paths have fixed engine signatures. Do not enumerate the hundreds
                // of inherited SceneNode methods or select an overload by arity alone.
                Class<?>[] types = NO_GEOMETRY_ARGS;
                if ("getTextureName".equals(name) || "mode".equals(name)) types = INT_GEOMETRY_ARG;
                else if ("bb".equals(name)) types = STRING_GEOMETRY_ARG;
                else if ("setTranslate".equals(name) || "setScale".equals(name)) types = FLOAT_GEOMETRY_ARGS;
                selected = type.getMethod(name, types);
                methods.put(key, selected);
            }
        }
        return selected;
    }

    private static Field geometryField(Object target, String name) throws Exception {
        synchronized (GEOMETRY_FIELDS) {
            Class<?> actualType = target.getClass();
            Map<String, Field> fields = GEOMETRY_FIELDS.get(actualType);
            if (fields == null) {
                fields = new HashMap<>();
                GEOMETRY_FIELDS.put(actualType, fields);
            }
            if (fields.containsKey(name)) return fields.get(name);
            for (Class<?> type = actualType; type != null; type = type.getSuperclass()) {
                try {
                    Field field = type.getDeclaredField(name);
                    field.setAccessible(true);
                    fields.put(name, field);
                    return field;
                } catch (NoSuchFieldException ignored) { }
            }
            fields.put(name, null);
            return null;
        }
    }

    private static Object readGeometryField(Object target, String name) throws Exception {
        if (target == null) return null;
        Field field = geometryField(target, name);
        return field == null ? null : field.get(target);
    }

    private static float geometryFloat(Object target, String name) throws Exception {
        return target == null ? 0f : geometryField(target, name).getFloat(target);
    }

    /** Counteracts overview page stretching on icon content, leaving the grid in place. */
    public static void preserveOverviewIconAspect(Object cell, int displayMode) {
        try {
            int sourceMode = ((Number) readGeometryField(cell, "fH")).intValue();
            // Desktop options are 12 (3x4) and 20 (4x5); legacy keys are compatibility-only.
            if (sourceMode != 12 && sourceMode != 9) return;
            Object parent = invokePixelGrid(cell, "getParent");
            if (parent == null || !Class.forName("com.smartisanos.launcher.view.b.M")
                    .isInstance(parent)) return;
            float factor = 1f;
            if (displayMode == 13 || displayMode == 10) {
                Class<?> constants = Class.forName("com.smartisanos.launcher.data.Constants");
                Method mode = pixelGridMethod(constants, "mode", 1);
                Object source = mode.invoke(null, sourceMode);
                Object target = mode.invoke(null, displayMode);
                float sx = geometryFloat(target, "page_width") / geometryFloat(source, "page_width");
                float sy = geometryFloat(target, "page_height") / geometryFloat(source, "page_height");
                if (sx <= 0f || sy <= 0f) return;
                factor = sx / sy;
            }
            Object[] nodes = (Object[]) readGeometryField(cell, "sc");
            for (int slot : new int[] {0, 7}) {
                if (nodes == null || nodes[slot] == null) continue;
                Object node = nodes[slot];
                Object scale = invokePixelGrid(node, "getScale");
                float x = geometryFloat(scale, "x"), y = geometryFloat(scale, "y");
                float[] previous = OVERVIEW_ICON_FACTORS.get(node);
                // Rebinding an ActiveIcon can replace its scale between mode changes.
                // Only undo our own correction when that corrected scale still exists.
                float baseY = previous != null
                        && Math.abs(x - previous[1]) < 0.001f
                        && Math.abs(y - previous[2]) < 0.001f ? previous[0] : y;
                float targetY = baseY * factor;
                if (Math.abs(targetY - y) > 0.001f) {
                    invokePixelGrid(node, "setScale", Float.valueOf(x), Float.valueOf(targetY),
                            Float.valueOf(geometryFloat(scale, "z")));
                    invokePixelGrid(node, "updateGeometricState");
                }
                if (factor == 1f) OVERVIEW_ICON_FACTORS.remove(node);
                else OVERVIEW_ICON_FACTORS.put(node, new float[] {baseY, x, targetY});
            }
        } catch (Exception error) {
            Log.w(TAG, "OVERVIEW_ICON_ASPECT_FAILED", error);
        }
    }

    private static Object invoke(Object target, String name, Object... arguments) throws Exception {
        for (Method method : target.getClass().getMethods()) {
            if (name.equals(method.getName()) && method.getParameterTypes().length == arguments.length) {
                return method.invoke(target, arguments);
            }
        }
        throw new NoSuchMethodException(name);
    }

    private static Object readPrivateField(Object target, String name) throws Exception {
        for (Class<?> type = target == null ? null : target.getClass(); type != null; type = type.getSuperclass()) {
            try {
                Field field = type.getDeclaredField(name);
                field.setAccessible(true);
                return field.get(target);
            } catch (NoSuchFieldException ignored) {
            }
        }
        return null;
    }

    private static float floatField(Object target, String name) throws Exception {
        if (target == null) return 0.0f;
        return target.getClass().getField(name).getFloat(target);
    }

    private static void logActiveIconCellNodes(String type, Object[] nodes) {
        try {
            StringBuilder result = new StringBuilder(256);
            result.append("ACTIVE_ICON_CELL_NODES type=").append(type);
            for (int i = 0; i < nodes.length; i++) {
                Object node = nodes[i];
                if (node == null) continue;
                result.append(" | sc[").append(i).append("]{")
                        .append(node.getClass().getSimpleName())
                        .append(",name=").append(invoke(node, "getName"))
                        .append(",visible=").append(invoke(node, "isVisible"))
                        .append(",scale=").append(vector2(invoke(node, "getScale")))
                        .append(",world=").append(worldRect(node))
                        .append(",texture=").append(invoke(node, "getTextureName",
                                Integer.valueOf(0))).append('}');
            }
            Log.i(TAG, result.toString());
        } catch (Throwable error) {
            Log.w(TAG, "ACTIVE_ICON_CELL_NODES_FAILED type=" + type
                    + " class=" + error.getClass().getSimpleName());
        }
    }

    private static float number(Object value) {
        return value instanceof Number ? ((Number) value).floatValue() : 0.0f;
    }

    private static String activeIconChildNames(Object activeRoot) throws Exception {
        StringBuilder result = new StringBuilder("[");
        int count = ((Integer) invoke(activeRoot, "getChildCount")).intValue();
        for (int i = 0; i < count; i++) {
            if (i > 0) result.append(',');
            Object child = invoke(activeRoot, "getChildAt", Integer.valueOf(i));
            result.append(invoke(child, "getName"));
        }
        return result.append(']').toString();
    }

    private static float constantFloat(String name, float fallback) {
        try {
            Class<?> constants = Class.forName("com.smartisanos.launcher.data.Constants");
            return constants.getField(name).getFloat(null);
        } catch (Throwable ignored) {
            return fallback;
        }
    }

    private static String vector2(Object vector) {
        try {
            return "(" + floatField(vector, "x") + "," + floatField(vector, "y") + ")";
        } catch (Throwable ignored) {
            return "null";
        }
    }

    private static final class Rect {
        final float left;
        final float top;
        final float right;
        final float bottom;
        final float width;
        final float height;
        final float centerX;
        final float centerY;

        Rect(float left, float top, float right, float bottom) {
            this.left = left;
            this.top = top;
            this.right = right;
            this.bottom = bottom;
            width = right - left;
            height = bottom - top;
            centerX = (left + right) * 0.5f;
            centerY = (top + bottom) * 0.5f;
        }
    }

    private static Context applicationContext() {
        try {
            Class<?> proxy = Class.forName("com.smartisanos.launcher.ja");
            Object instance = proxy.getMethod("getInstance").invoke(null);
            Object application = proxy.getMethod("getApplication").invoke(instance);
            return application instanceof Context ? (Context) application : null;
        } catch (Throwable error) {
            Log.w(TAG, "ACTIVE_ICON_LIVE_SHADOW_CONTEXT_UNAVAILABLE class="
                    + error.getClass().getSimpleName());
            return null;
        }
    }

    private static int shadowPadding(EffectiveIconShadowSpec spec) {
        int largestRadius = 0;
        if (spec != null) {
            for (int radius : spec.radii) largestRadius = Math.max(largestRadius, radius);
        }
        return Math.max(2, largestRadius * 2 + 1);
    }

    private static void logCachedFrameComposeStarted(
            String type, int width, int height, EffectiveIconShadowSpec spec) {
        Log.d(TAG, "ACTIVE_ICON_CACHED_FRAME_COMPOSE_STARTED type=" + type
                + " width=" + width + " height=" + height + shadowLogSuffix(spec));
    }

    private static boolean shouldLogCachedFrame(
            String type, int width, int height, EffectiveIconShadowSpec spec) {
        String key = type + ':' + width + ':' + height + ':'
                + (spec == null ? "unavailable" : spec.mode + ":"
                + Arrays.toString(spec.radii) + ':' + Arrays.toString(spec.colors));
        synchronized (LOGGED_CACHED_FRAME_COMPOSITIONS) {
            return LOGGED_CACHED_FRAME_COMPOSITIONS.add(key);
        }
    }

    private static String shadowLogSuffix(EffectiveIconShadowSpec spec) {
        return spec == null ? " mode=unavailable thread=" + Thread.currentThread().getName()
                : " mode=" + spec.mode + " radii=" + Arrays.toString(spec.radii)
                + " colors=" + Arrays.toString(spec.colors)
                + " thread=" + Thread.currentThread().getName();
    }

    private static final class EffectiveIconShadowSpec {
        final int mode;
        final int[] radii;
        final int[] colors;
        final String gaussianSuffix;

        EffectiveIconShadowSpec(int mode, int[] radii, int[] colors, String gaussianSuffix) {
            this.mode = mode;
            this.radii = radii.clone();
            this.colors = colors.clone();
            this.gaussianSuffix = gaussianSuffix;
        }
    }

    public static boolean isDynamicIconPackage(String packageName) {
        if (packageName == null) return false;
        return WeatherBridge.isWeatherPackage(packageName, null, null)
                || com.smartisanos.launcher.compat.CalendarAppDetector
                        .isCalendarPackage(applicationContext(), packageName)
                || "com.smartisanos.clock".equals(packageName);
    }

    /** Dynamic/normal mode changes must bypass the launcher's APK-icon MD5 shortcut. */
    public static boolean shouldForceDynamicIconDatabaseWrite(String packageName) {
        return isDynamicIconPackage(packageName);
    }

    public static void ensureTransparentThemeRegistered(Context context) {
        transparentTheme(context);
    }

    public static Object transparentTheme(Context context) {
        if (context == null || !packageInstalled(context, "com.smartisanos.launcher.theme.trans")) {
            return null;
        }
        Object theme = null;
        try {
            Class<?> themeClass = Class.forName("com.smartisanos.launcher.theme.v");
            theme = themeClass.getConstructor(String.class).newInstance("smartisan_theme_trans");
            themeClass.getField("mPackage").set(theme, "com.smartisanos.launcher.theme.trans");
            themeClass.getField("mName").set(theme, "透明");
            themeClass.getField("mResources").set(theme,
                    context.getPackageManager().getResourcesForApplication("com.smartisanos.launcher.theme.trans"));

            Class<?> manager = Class.forName("com.smartisanos.launcher.theme.X");
            java.lang.reflect.Field themeMapField = manager.getDeclaredField("gu");
            themeMapField.setAccessible(true);
            Object themeMapValue = themeMapField.get(null);
            if (themeMapValue instanceof Map) {
                ((Map) themeMapValue).put("smartisan_theme_trans", theme);
            }
            java.lang.reflect.Field themeListField = manager.getDeclaredField("fu");
            themeListField.setAccessible(true);
            Object themeListValue = themeListField.get(null);
            if (themeListValue instanceof List && !((List) themeListValue).contains("smartisan_theme_trans")) {
                ((List) themeListValue).add("smartisan_theme_trans");
            }
            try {
                java.lang.reflect.Field packageMapField = manager.getDeclaredField("hu");
                packageMapField.setAccessible(true);
                Object packageMapValue = packageMapField.get(null);
                if (packageMapValue instanceof Map) {
                    ((Map) packageMapValue).put("com.smartisanos.launcher.theme.trans", "smartisan_theme_trans");
                }
            } catch (Throwable ignored) {
            }
        } catch (Throwable ignored) {
        }
        if (theme != null) {
            return theme;
        }
        try {
            Class<?> manager = Class.forName("com.smartisanos.launcher.theme.X");
            java.lang.reflect.Field themeMapField = manager.getDeclaredField("gu");
            themeMapField.setAccessible(true);
            Object themeMapValue = themeMapField.get(null);
            if (themeMapValue instanceof Map) {
                return ((Map) themeMapValue).get("smartisan_theme_trans");
            }
        } catch (Throwable ignored) {
        }
        return null;
    }

    private static int readInt(Context context, String key, int defValue) {
        if (context == null || key == null) {
            return defValue;
        }
        try {
            android.content.SharedPreferences prefs =
                    context.getSharedPreferences(SETTINGS_PREFS, Context.MODE_PRIVATE);
            if (prefs.contains(key)) {
                return prefs.getInt(key, defValue);
            }
        } catch (Throwable ignored) {
        }
        try {
            android.content.SharedPreferences prefs =
                    context.getSharedPreferences(PREFS, Context.MODE_PRIVATE);
            if (prefs.contains(key)) {
                return prefs.getInt(key, defValue);
            }
        } catch (Throwable ignored) {
        }
        try {
            return Settings.Global.getInt(context.getContentResolver(), key, defValue);
        } catch (Throwable ignored) {
        }
        try {
            return Settings.System.getInt(context.getContentResolver(), key, defValue);
        } catch (Throwable ignored) {
        }
        return defValue;
    }

    private static boolean packageInstalled(Context context, String pkg) {
        try {
            context.getPackageManager().getPackageInfo(pkg, 0);
            return true;
        } catch (Throwable ignored) {
            return false;
        }
    }

    private static int normalizeIconSizePercent(int percent) {
        if (percent == 0) {
            return 100;
        }
        if (percent == 1) {
            return 110;
        }
        if (percent == 2) {
            return 120;
        }
        if (percent < 50) {
            return 50;
        }
        if (percent > 150) {
            return 150;
        }
        return percent;
    }

}
