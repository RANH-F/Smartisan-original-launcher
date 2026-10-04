package com.smartisanos.launcher.theme;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.util.DisplayMetrics;
import android.util.Log;

import com.smartisanos.launcher.profile.DoppelgangerCompat;

import java.util.HashSet;
import java.util.Set;
import java.util.Arrays;
import java.io.File;
import java.io.FileOutputStream;

/** Keeps normal static-icon cache-to-texture scaling observable and centralized. */
public final class IconRasterDiagnostics {
    private static final String TAG = "LauncherIconRaster";
    private static final Set<String> REPORTED = new HashSet<String>();
    private static final int DIAGNOSTIC_ALPHA_CUTOFF = 40;
    private static final String SOURCE_CANVAS_VERSION = "source-canvas:v13-default-circle-sync-pref";
    private static final String RASTER_CACHE_VERSION = "raster:v29-follow-app-content-box";

    /**
     * The original theme transition evicts target textures while the outgoing
     * scene can still draw one frame. Rebuild only our generated application
     * texture keys from their ItemInfo instead of treating them as APK paths.
     */
    public static Bitmap recoverMissingGeneratedTexture(String key) {
        if (key == null || !key.startsWith("target/--/")
                || !key.contains("#" + RASTER_CACHE_VERSION + ":")
                || (!key.contains(":STATIC_APPLICATION_COMPOSER:")
                && !key.contains(":ORIGINAL_ACTIVE_ICON:"))) {
            return null;
        }
        try {
            int idStart = "target/--/".length();
            int idEnd = key.indexOf('_', idStart);
            if (idEnd <= idStart) return missingGeneratedTexture(key, "invalid_item_id");
            long id = Long.parseLong(key.substring(idStart, idEnd));
            int modeStart = key.indexOf(":grid=");
            if (modeStart < 0) return missingGeneratedTexture(key, "missing_grid_mode");
            modeStart += ":grid=".length();
            int modeEnd = key.indexOf(':', modeStart);
            if (modeEnd < 0) return missingGeneratedTexture(key, "invalid_grid_mode");
            int pageMode = Integer.parseInt(key.substring(modeStart, modeEnd));
            Class<?> model = Class.forName("com.smartisanos.launcher.Aa");
            Object item = model.getMethod("i", Long.TYPE).invoke(null, Long.valueOf(id));
            if (item == null) return missingGeneratedTexture(key, "item_removed");
            Bitmap source = (Bitmap) model.getMethod("g", Long.TYPE)
                    .invoke(null, Long.valueOf(id));
            Bitmap restored = composeStaticApplicationIconTexture(item, source, pageMode);
            if (restored != null && !restored.isRecycled()) {
                Log.w(TAG, "ICON_GENERATED_TEXTURE_RECOVERED itemId=" + id
                        + " pageMode=" + pageMode);
                return restored;
            }
            return missingGeneratedTexture(key, "source_unavailable");
        } catch (Exception error) {
            Log.w(TAG, "ICON_GENERATED_TEXTURE_RECOVERY_FAILED", error);
            return missingGeneratedTexture(key, "recovery_failed");
        }
    }

    private static Bitmap missingGeneratedTexture(String key, String reason) {
        Log.w(TAG, "ICON_GENERATED_TEXTURE_STALE reason=" + reason + " key=" + key);
        return Bitmap.createBitmap(1, 1, Bitmap.Config.ARGB_8888);
    }
    private static final int CANONICAL_DEFAULT_SOURCE_SIZE = 256;
    private static final String BADGE_VERSION = "badge:v1";
    private static final String SHADOW_VERSION = "shadow:original-icon-type-v2";
    private static volatile String sLifecycle = "COLD";
    /** Enable only in an acceptance build; production builds do not write icon bitmaps. */
    private static final boolean DEBUG_RASTER_DUMP = false;

    private static final class VisibleBounds {
        final int left;
        final int top;
        final int right;
        final int bottom;

        VisibleBounds(int left, int top, int right, int bottom) {
            this.left = left;
            this.top = top;
            this.right = right;
            this.bottom = bottom;
        }

        int width() { return right - left + 1; }
        int height() { return bottom - top + 1; }
        float centerX() { return (left + right + 1) * 0.5f; }
        float centerY() { return (top + bottom + 1) * 0.5f; }
    }

    private static final class StaticSource {
        final Drawable drawable;
        final String type;
        final String identity;
        final boolean legacyDefaultBitmap;

        StaticSource(Drawable drawable, String type, String identity,
                boolean legacyDefaultBitmap) {
            this.drawable = drawable;
            this.type = type;
            this.identity = identity;
            this.legacyDefaultBitmap = legacyDefaultBitmap;
        }
    }

    /** The one physical raster contract used by every launcher icon source. */
    public static final class NormalIconRasterSpec {
        public final int logicalArtworkWidth;
        public final int logicalArtworkHeight;
        public final int logicalTextureWidth;
        public final int logicalTextureHeight;
        public final int physicalArtworkWidth;
        public final int physicalArtworkHeight;
        public final int physicalTextureWidth;
        public final int physicalTextureHeight;
        public final int artworkWidth;
        public final int textureWidth;
        public final float artworkInset;
        public final float rasterScale;
        public final String id;

        private NormalIconRasterSpec(int logicalArtworkWidth, int logicalArtworkHeight,
                int logicalTextureWidth, int logicalTextureHeight,
                int physicalArtworkWidth, int physicalArtworkHeight,
                int physicalTextureWidth, int physicalTextureHeight,
                float artworkInset, float rasterScale, String id) {
            this.logicalArtworkWidth = logicalArtworkWidth;
            this.logicalArtworkHeight = logicalArtworkHeight;
            this.logicalTextureWidth = logicalTextureWidth;
            this.logicalTextureHeight = logicalTextureHeight;
            this.physicalArtworkWidth = physicalArtworkWidth;
            this.physicalArtworkHeight = physicalArtworkHeight;
            this.physicalTextureWidth = physicalTextureWidth;
            this.physicalTextureHeight = physicalTextureHeight;
            // Compatibility aliases for the already-shipped static raster path.
            this.artworkWidth = physicalArtworkWidth;
            this.textureWidth = physicalTextureWidth;
            this.artworkInset = artworkInset;
            this.rasterScale = rasterScale;
            this.id = id;
        }
    }

    private IconRasterDiagnostics() {
    }

    /** The persisted iconRawData is a source cache; the returned bitmap is transient only. */
    public static Bitmap rasterizeStaticIcon(Bitmap source, int targetPx) {
        if (source == null || source.isRecycled() || targetPx <= 0) {
            return source;
        }
        int sourceWidth = source.getWidth();
        int sourceHeight = source.getHeight();
        reportSourceOnce(sourceWidth, sourceHeight, targetPx);
        if (sourceWidth == targetPx && sourceHeight == targetPx) {
            return source;
        }
        Bitmap textureInput = Bitmap.createBitmap(targetPx, targetPx, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(textureInput);
        Paint paint = new Paint(Paint.ANTI_ALIAS_FLAG | Paint.FILTER_BITMAP_FLAG);
        canvas.drawBitmap(source, new Rect(0, 0, sourceWidth, sourceHeight),
                new Rect(0, 0, targetPx, targetPx), paint);
        return textureInput;
    }

    /**
     * Persists source artwork, never a layout-sized texture.  BitmapDrawables,
     * online PNGs, redirect images and icon-pack drawables retain their native
     * raster; framework drawables are rendered only to their intrinsic bounds.
     */
    public static Bitmap sourceBitmap(android.graphics.drawable.Drawable drawable) {
        if (drawable == null) return null;
        String drawableType = drawable.getClass().getName();
        if (drawable instanceof android.graphics.drawable.BitmapDrawable) {
            Bitmap bitmap = ((android.graphics.drawable.BitmapDrawable) drawable).getBitmap();
            if (bitmap != null && !bitmap.isRecycled()) {
                Bitmap copy = bitmap.copy(Bitmap.Config.ARGB_8888, false);
                if (copy != null) {
                    Log.i(TAG, "ICON_RASTER_SOURCE_SELECTED sourceType=ORIGINAL_BITMAP"
                            + " drawableType=" + drawableType
                            + " sourceWidth=" + copy.getWidth() + " sourceHeight=" + copy.getHeight()
                            + " sourceIsOriginal=true sourceIsPreview=false"
                            + " sourceIsFinalTexture=false sourceIsScaledIntermediate=false"
                            + " ownsSourceBitmap=true");
                    return copy;
                }
            }
        }
        int width = drawable.getIntrinsicWidth();
        int height = drawable.getIntrinsicHeight();
        if (width <= 0) width = 1;
        if (height <= 0) height = width;
        Bitmap source = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(source);
        Rect previous = new Rect(drawable.getBounds());
        drawable.setBounds(0, 0, width, height);
        drawable.draw(canvas);
        drawable.setBounds(previous);
        Log.i(TAG, "ICON_RASTER_SOURCE_SELECTED sourceType=RESOURCE_OR_APK_DRAWABLE"
                + " drawableType=" + drawableType
                + " sourceWidth=" + width + " sourceHeight=" + height
                + " sourceIsOriginal=true sourceIsPreview=false"
                + " sourceIsFinalTexture=false sourceIsScaledIntermediate=false"
                + " ownsSourceBitmap=true");
        return source;
    }

    /** Decodes the persisted source bytes without Aa.h()'s layout-size resample. */
    public static Bitmap iconRawSource(Object itemInfo) {
        if (itemInfo == null) return null;
        try {
            Object value = itemInfo.getClass().getField("iconRawData").get(itemInfo);
            if (!(value instanceof byte[])) return null;
            byte[] bytes = (byte[]) value;
            return bytes.length == 0 ? null
                    : BitmapFactory.decodeByteArray(bytes, 0, bytes.length);
        } catch (Throwable ignored) {
            return null;
        }
    }

    /**
     * Keeps a desktop icon's native artwork intact.  Both managed sources and
     * ordinary PackageManager drawables are rendered directly into the final
     * physical artwork canvas; neither may first become an
     * icon_size_origin-sized intermediate bitmap.
     */
    public static Bitmap prepareStaticSource(Object itemInfo, Bitmap cachedSource) {
        if (isQuickLaunchItem(itemInfo)) return cachedSource;
        StaticSource resolved = resolveStaticSource(itemInfo, cachedSource);
        if (isDesktopSettingsShortcut(itemInfo) && resolved.drawable == null) return null;
        if (resolved.drawable != null) {
            if ("DEFAULT".equals(resolved.type)
                    && DefaultIconCircleRenderer.isCircleEnabled(
                    MaintainedLauncherSettingsHost.currentApplicationContext())) {
                return DefaultIconCircleRenderer.render(resolved.drawable,
                        CANONICAL_DEFAULT_SOURCE_SIZE);
            }
            return sourceBitmap(resolved.drawable);
        }
        return cachedSource;
    }

    /**
     * Only ordinary desktop static application Cells use the source-to-final
     * path. Active icons, folders, black/white special rendering and off-size
     * animation textures retain their original pipeline.
     */
    public static boolean useStaticApplicationPipeline(Object itemInfo,
            boolean blackWhite) {
        return !blackWhite && shouldUseHighResolutionDesktopRaster(itemInfo);
    }

    /**
     * The direct high-resolution texture path is a normal-desktop property,
     * not a managed-icon property.  Managed artwork was upgraded first, which
     * left default APK drawables on the old logical-bitmap path on 2K screens.
     */
    public static boolean shouldUseHighResolutionDesktopRaster(Object itemInfo) {
        return itemInfo != null
                && !isQuickLaunchItem(itemInfo)
                && (!isSpecialSettingButton(itemInfo) || isDesktopSettingsShortcut(itemInfo))
                && !itemInfo.getClass().getName().endsWith(".FolderInfo")
                && !itemField(itemInfo, "packageName").isEmpty()
                && !isOriginalActiveIcon(itemInfo);
    }

    /** The launcher-owned Settings control never participates in app icon replacement. */
    private static boolean isSpecialSettingButton(Object itemInfo) {
        String packageName = itemField(itemInfo, "packageName");
        String componentName = itemField(itemInfo, "componentName");
        String title = itemField(itemInfo, "title");
        return "com.smartisanos.launcher".equals(packageName)
                && (componentName.contains("Launcher") || componentName.contains("Setting")
                || title.contains("设置") || title.toLowerCase().contains("setting"));
    }

    private static boolean isDesktopSettingsShortcut(Object itemInfo) {
        return "com.smartisanos.launcher".equals(itemField(itemInfo, "packageName"))
                && "com.smartisanos.launcher.theme.ThemeChooserActivity".equals(
                        itemField(itemInfo, "componentName"));
    }

    /** Keeps projection masks available when an existing final texture is reused. */
    public static void prepareSettingsIconProjection(Object itemInfo, String key) {
        if (!IconIlluminationCompat.enabled() || key == null
                || !isDesktopSettingsShortcut(itemInfo)) return;
        android.content.Context context = MaintainedLauncherSettingsHost.currentApplicationContext();
        int resource = context.getResources().getIdentifier(
                "icon_setting", "drawable", context.getPackageName());
        if (resource == 0) {
            Log.w(TAG, "SETTINGS_ICON_PROJECTION_SOURCE_MISSING");
            return;
        }
        Bitmap artwork;
        try {
            artwork = sourceBitmap(context.getResources().getDrawable(resource));
        } catch (android.content.res.Resources.NotFoundException error) {
            Log.w(TAG, "SETTINGS_ICON_PROJECTION_SOURCE_MISSING", error);
            return;
        }
        if (artwork == null) return;
        try {
            IconIlluminationCompat.write(key, artwork, false);
        } finally {
            artwork.recycle();
        }
    }

    private static Drawable loadCurrentDesktopDrawable(Object itemInfo) {
        if (isDesktopSettingsShortcut(itemInfo)) {
            android.content.Context context = MaintainedLauncherSettingsHost.currentApplicationContext();
            if (context == null) return null;
            int resource = context.getResources().getIdentifier(
                    "icon_setting", "drawable", context.getPackageName());
            if (resource == 0) return null;
            try {
                return context.getResources().getDrawable(resource);
            } catch (android.content.res.Resources.NotFoundException error) {
                Log.w(TAG, "SETTINGS_ICON_SOURCE_MISSING", error);
                return null;
            }
        }
        try {
            Class<?> launcher = Class.forName("com.smartisanos.launcher.ja");
            Object instance = launcher.getMethod("getInstance").invoke(null);
            Object context = launcher.getMethod("getApplication").invoke(instance);
            if (!(context instanceof android.content.Context)) return null;
            int userId = Integer.parseInt(itemField(itemInfo, "userId"));
            return MaintainedLauncherSettingsHost.loadIconForDesktopItem(
                    (android.content.Context) context,
                    itemField(itemInfo, "packageName"),
                    itemField(itemInfo, "componentName"),
                    itemField(itemInfo, "title"), userId);
        } catch (Throwable ignored) {
            return null;
        }
    }

    /** Source Resolver: chooses RAW artwork only and never owns geometry. */
    private static StaticSource resolveStaticSource(Object itemInfo, Bitmap legacyBitmap) {
        if (itemInfo == null) {
            return new StaticSource(null, "DEFAULT", "NO_ITEM", legacyBitmap != null);
        }
        if (isDesktopSettingsShortcut(itemInfo)) {
            // Never treat a retained, already decorated DB texture as RAW.
            return new StaticSource(loadCurrentDesktopDrawable(itemInfo),
                    "RESOURCE", "launcher:icon_setting", false);
        }
        String selectedType = MaintainedLauncherSettingsHost.desktopIconSourceType(itemInfo);
        String identity = MaintainedLauncherSettingsHost.desktopIconSourceIdentity(itemInfo);
        Drawable drawable = loadCurrentDesktopDrawable(itemInfo);
        if (drawable != null) {
            return new StaticSource(drawable, selectedType, identity, false);
        }
        try {
            Class<?> launcher = Class.forName("com.smartisanos.launcher.ja");
            Object instance = launcher.getMethod("getInstance").invoke(null);
            Object value = launcher.getMethod("getApplication").invoke(instance);
            if (value instanceof android.content.Context) {
                int userId = Integer.parseInt(itemField(itemInfo, "userId"));
                drawable = MaintainedLauncherSettingsHost.loadDefaultIconForDesktopItem(
                        (android.content.Context) value,
                        itemField(itemInfo, "packageName"),
                        itemField(itemInfo, "componentName"), userId);
            }
        } catch (Throwable ignored) {
        }
        if (drawable != null) {
            Log.w(TAG, "ICON_CONTRACT_SOURCE_FALLBACK requested=" + selectedType
                    + " actual=DEFAULT reason=formal_source_unavailable identity=" + identity);
            return new StaticSource(drawable, "DEFAULT", "APK_DEFAULT", false);
        }
        // A legacy DB bitmap is accepted only as DEFAULT compatibility input;
        // it can never retain a managed IMPROVED/PACK/RESOURCE identity.
        return new StaticSource(null, "DEFAULT", "LEGACY_DB_UNKNOWN",
                legacyBitmap != null && !legacyBitmap.isRecycled());
    }

    public static void markIconLifecycle(String lifecycle) {
        if ("HOT".equals(lifecycle) || "RESTORE".equals(lifecycle)) {
            sLifecycle = lifecycle;
            Log.i(TAG, "ICON_CONTRACT_LIFECYCLE lifecycle=" + lifecycle);
        }
    }

    private static String lifecycleToken(Object itemInfo) {
        if (!"COLD".equals(sLifecycle)) return sLifecycle;
        android.content.Context context = MaintainedLauncherSettingsHost.currentApplicationContext();
        if (context != null && context.getSharedPreferences(
                "launcher_backup_settings", android.content.Context.MODE_PRIVATE)
                .getBoolean("restore_icon_source_reconcile_pending", false)) {
            return "RESTORE";
        }
        return "COLD";
    }

    private static String gridToken(int mode) {
        try {
            Class<?> constants = Class.forName("com.smartisanos.launcher.data.Constants");
            return String.valueOf(constants.getMethod("cellCount", Integer.TYPE)
                    .invoke(null, Integer.valueOf(mode)));
        } catch (ReflectiveOperationException error) {
            return "UNKNOWN_MODE_" + mode;
        }
    }

    private static void recycleIfOwned(Bitmap oldBitmap, Bitmap replacement) {
        if (oldBitmap != null && oldBitmap != replacement && !oldBitmap.isRecycled()) {
            oldBitmap.recycle();
        }
    }

    /**
     * Composes one final texture from source artwork.  The source is never
     * resized to the launcher logical size first; the only resample is directly
     * into the physical-artwork rectangle on the physical shadow texture.
     */
    public static Bitmap composeStaticIconTexture(Bitmap source) {
        return composeTexture(source, 0, null);
    }

    public static Bitmap composeStaticIconTexture(Bitmap source, int logicalTexturePx) {
        return composeTexture(source, logicalTexturePx, null);
    }

    /** Compatibility entry; DEFAULT now follows the same full-canvas rule. */
    public static Bitmap composeDefaultOpticalIconTexture(Object itemInfo, Bitmap source) {
        if (isQuickLaunchItem(itemInfo)) return source;
        return composeTexture(source, 0, itemInfo);
    }

    /** Unique final composer for every ordinary static application source. */
    public static Bitmap composeStaticApplicationIconTexture(Object itemInfo, Bitmap source) {
        if (isQuickLaunchItem(itemInfo)) return source;
        return composeTexture(source, 0, itemInfo);
    }

    public static Bitmap composeStaticApplicationIconTexture(Object itemInfo,
            Bitmap source, int pageMode) {
        if (isQuickLaunchItem(itemInfo)) return source;
        return composeTexture(source, 0, itemInfo, pageMode, resizeClassification(itemInfo));
    }

    public static Bitmap composeStaticApplicationIconTexture(Object itemInfo,
            Bitmap source, int pageMode, boolean resized) {
        if (isQuickLaunchItem(itemInfo)) return source;
        return composeTexture(source, 0, itemInfo, pageMode, resized);
    }

    /**
     * Compatibility entry for the old fallback path. It deliberately does not
     * infer scale from alpha bounds.
     */
    public static Bitmap composeNormalizedFallbackTexture(Bitmap source) {
        return composeTexture(source, 0, null);
    }

    /**
     * Resolves the exact physical contract already used by ordinary static icons.
     * Special sources must consume this value, never infer their own node-sized
     * target such as the retired 181px path.
     */
    public static NormalIconRasterSpec resolveNormalIconRasterSpec() {
        return resolveNormalIconRasterSpec(desktopPageMode());
    }

    private static NormalIconRasterSpec resolveNormalIconRasterSpec(int pageMode) {
        IconVisualMetrics metrics = IconVisualMetrics.resolve(pageMode);
        if (metrics == null) return null;
        return new NormalIconRasterSpec(
                metrics.logicalArtworkBox, metrics.logicalArtworkBox,
                metrics.logicalTextureBox, metrics.logicalTextureBox,
                metrics.physicalArtworkPx, metrics.physicalArtworkPx,
                metrics.physicalTexturePx, metrics.physicalTexturePx,
                (metrics.physicalTexturePx - metrics.physicalArtworkPx) * 0.5f,
                metrics.physicalScale, metrics.id);
    }

    private static Bitmap composeTexture(Bitmap source, int actualLogicalTexture, Object itemInfo) {
        return composeTexture(source, actualLogicalTexture, itemInfo, desktopPageMode());
    }

    private static Bitmap composeTexture(Bitmap source, int actualLogicalTexture,
            Object itemInfo, int pageMode) {
        return composeTexture(source, actualLogicalTexture, itemInfo, pageMode,
                resizeClassification(itemInfo));
    }

    private static Bitmap composeTexture(Bitmap source, int actualLogicalTexture,
            Object itemInfo, int pageMode, boolean resized) {
        StaticSource resolved = resolveStaticSource(itemInfo, source);
        Drawable rawDrawable = resolved.drawable;
        if (isDesktopSettingsShortcut(itemInfo) && rawDrawable == null) return source;
        boolean defaultCircle = "DEFAULT".equals(resolved.type)
                && DefaultIconCircleRenderer.isCircleEnabled(
                MaintainedLauncherSettingsHost.currentApplicationContext());
        if (defaultCircle && source != null && !source.isRecycled()) rawDrawable = null;
        if ((source == null || source.isRecycled()) && rawDrawable == null) return source;
        int logicalArtwork = layoutSize(pageMode, "icon_size_origin");
        int logicalTexture = layoutSize(pageMode, "icon_size_with_shadow");
        NormalIconRasterSpec spec = resolveNormalIconRasterSpec(pageMode);
        if (spec == null) return source;
        IconVisualMetrics visualMetrics = IconVisualMetrics.resolve(pageMode);
        if (visualMetrics == null) return source;
        float rasterScale = spec.rasterScale;
        int artwork = spec.artworkWidth;
        int texture = spec.textureWidth;
        if (actualLogicalTexture > 0 && logicalTexture > 0) {
            texture = Math.max(1, (int) Math.ceil(actualLogicalTexture * rasterScale));
            artwork = Math.max(1, Math.round(texture
                    * (logicalArtwork / (float) logicalTexture)));
        }
        int logicalContent = resized
                ? layoutSize(pageMode, "icon_size_origin_resize") : logicalArtwork;
        // Original MODE_9 supplies the legacy resize box; restored MODE_12/20 do not.
        // Follow their existing artwork box, as DesktopLabelMetrics already does.
        // A missing optional field must never shrink valid app artwork to one pixel.
        if (logicalContent <= 0) {
            logicalContent = logicalArtwork;
            synchronized (REPORTED) {
                if (REPORTED.add("missing-resize-box:" + pageMode)) {
                    Log.w(TAG, "ICON_RESIZE_BOX_ABSENT grid=" + pageMode
                            + " usingNormalArtwork=" + logicalArtwork);
                }
            }
        }
        float contentSize = Math.max(1f, Math.round(logicalContent * rasterScale));
        float contentInset = Math.max(0f, (artwork - contentSize) * 0.5f);
        Bitmap drawableBitmap = rawDrawable instanceof android.graphics.drawable.BitmapDrawable
                ? ((android.graphics.drawable.BitmapDrawable) rawDrawable).getBitmap() : null;
        Bitmap analysisSource = drawableBitmap != null && !drawableBitmap.isRecycled()
                ? drawableBitmap : source;
        VisibleBounds visibleBefore = analyzeVisibleBounds(analysisSource);
        int sourceWidth = rawDrawable == null ? source.getWidth()
                : rawDrawable.getIntrinsicWidth() > 0 ? rawDrawable.getIntrinsicWidth()
                : drawableBitmap != null ? drawableBitmap.getWidth() : artwork;
        int sourceHeight = rawDrawable == null ? source.getHeight()
                : rawDrawable.getIntrinsicHeight() > 0 ? rawDrawable.getIntrinsicHeight()
                : drawableBitmap != null ? drawableBitmap.getHeight() : sourceWidth;
        float sourceScale = Math.min(contentSize / Math.max(1, sourceWidth),
                contentSize / Math.max(1, sourceHeight));
        float drawWidth = sourceWidth * sourceScale;
        float drawHeight = sourceHeight * sourceScale;
        float drawLeftInArtwork = contentInset + (contentSize - drawWidth) * 0.5f;
        float drawTopInArtwork = contentInset + (contentSize - drawHeight) * 0.5f;
        Paint paint = new Paint(Paint.ANTI_ALIAS_FLAG | Paint.FILTER_BITMAP_FLAG | Paint.DITHER_FLAG);
        Bitmap physicalArtwork = Bitmap.createBitmap(
                artwork, artwork, Bitmap.Config.ARGB_8888);
        Canvas artworkCanvas = new Canvas(physicalArtwork);
        if (rawDrawable != null) {
            if (rawDrawable instanceof android.graphics.drawable.BitmapDrawable) {
                ((android.graphics.drawable.BitmapDrawable) rawDrawable).setFilterBitmap(true);
            }
            Rect oldBounds = new Rect(rawDrawable.getBounds());
            rawDrawable.setBounds(Math.round(drawLeftInArtwork), Math.round(drawTopInArtwork),
                    Math.round(drawLeftInArtwork + drawWidth),
                    Math.round(drawTopInArtwork + drawHeight));
            rawDrawable.draw(artworkCanvas);
            rawDrawable.setBounds(oldBounds);
        } else {
            artworkCanvas.drawBitmap(source, new Rect(0, 0, source.getWidth(), source.getHeight()),
                    new RectF(drawLeftInArtwork, drawTopInArtwork,
                            drawLeftInArtwork + drawWidth, drawTopInArtwork + drawHeight), paint);
        }
        VisibleBounds visibleAfter = analyzeVisibleBounds(physicalArtwork);
        if (isAcceptanceSample(itemInfo)) {
            Log.w(TAG, "SOURCE_CANVAS_FINAL_SCALE package=" + itemField(itemInfo, "packageName")
                    + " sourceScale=" + sourceScale
                    + " visibleBefore=" + boundsString(visibleBefore)
                    + " visibleAfter=" + boundsString(visibleAfter)
                    + " artworkBox=" + artwork + 'x' + artwork
                    + " finalDrawDst=" + drawLeftInArtwork + ',' + drawTopInArtwork + ','
                    + drawWidth + 'x' + drawHeight);
        }
        debugDump(itemInfo, "ARTWORK", physicalArtwork);
        Bitmap decoratedArtwork = decorateProfileIcon(itemInfo, physicalArtwork);
        if (decoratedArtwork != null && decoratedArtwork != physicalArtwork) {
            physicalArtwork.recycle();
            physicalArtwork = decoratedArtwork;
        }
        // The settings Cell retains its existing fixed-resource projection path.
        if (!isDesktopSettingsShortcut(itemInfo)) {
            IconIlluminationCompat.prepare(itemInfo, physicalArtwork);
        }
        Bitmap result = LauncherSettingBridge.composeStaticIconTextureWithOriginalShadow(
                physicalArtwork, texture, rasterScale);
        float artworkLeft = (texture - artwork) * 0.5f;
        float artworkTop = (texture - artwork) * 0.25f;
        float drawLeft = artworkLeft + drawLeftInArtwork;
        float drawTop = artworkTop + drawTopInArtwork;
        if (result == null) {
            result = Bitmap.createBitmap(texture, texture, Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(result);
            canvas.drawBitmap(physicalArtwork, artworkLeft, artworkTop, paint);
            Log.w(TAG, "ICON_STATIC_SHADOW_FALLBACK targetArtwork="
                    + artwork + " targetTexture=" + texture);
        }
        debugDump(itemInfo, "TEXTURE", result);
        debugMetrics(itemInfo, analysisSource, rawDrawable, visibleBefore, visibleAfter,
                sourceScale, false, drawLeftInArtwork, drawTopInArtwork,
                drawWidth, drawHeight, logicalArtwork, logicalTexture, artwork, texture, result);
        Log.i(TAG, "ICON_PIPELINE_SELECTED pipeline="
                + " pipeline=STATIC_APPLICATION_COMPOSER"
                + " sourceType=" + resolved.type
                + " sourceIdentity=" + resolved.identity
                + " contentBox=" + (resized ? "RESIZED" : "NORMAL")
                + " defaultShape=" + (defaultCircle ? "CIRCLE" : "FOLLOW_APP")
                + " source=" + sourceWidth + 'x' + sourceHeight
                + " finalContentBounds=" + Math.round(drawLeft) + ',' + Math.round(drawTop)
                + ',' + Math.round(drawWidth) + 'x' + Math.round(drawHeight)
                + " targetArtwork=" + artwork + " targetTexture=" + texture);
        if (sourceWidth < artwork || sourceHeight < artwork) {
            Log.w(TAG, "ICON_LOW_RES_SOURCE_LIMITED sourceWidth=" + sourceWidth
                    + " sourceHeight=" + sourceHeight + " targetWidth=" + artwork
                    + " fallbackOriginalSource=false");
        }
        reportPhysicalOnce(sourceWidth, sourceHeight, artwork, texture,
                logicalArtwork, logicalTexture, visualMetrics);
        if (analysisSource != null) {
            reportSourceCanvasOnce(itemInfo, analysisSource, visibleBefore,
                    physicalArtwork, sourceScale, artwork, texture);
        }
        Log.i(TAG, "ICON_CONTRACT_PIPELINE source=" + resolved.type
                + " lifecycle=" + lifecycleToken(itemInfo)
                + " grid=" + gridToken(pageMode)
                + " iconSize=" + visualMetrics.iconSizeSetting
                + " surface=" + visualMetrics.surfaceWidth
                + " composerCount=1 rawDirect=0 cacheHit=0 contentBox="
                + (resized ? "RESIZED" : "NORMAL")
                + " representation=" + (resolved.legacyDefaultBitmap
                ? "LEGACY_DEFAULT_BITMAP" : "RAW_DRAWABLE"));
        physicalArtwork.recycle();
        return result;
    }

    private static boolean isAcceptanceSample(Object itemInfo) {
        String pkg = itemField(itemInfo, "packageName");
        String title = itemField(itemInfo, "title").toLowerCase();
        return "com.android.bbksoundrecorder".equals(pkg)
                || "com.android.camera".equals(pkg)
                || "com.vivo.email".equals(pkg)
                || "in.hridayan.ashell".equals(pkg)
                || "com.tencent.mm".equals(pkg)
                || "com.vivo.agent".equals(pkg)
                || "com.vivo.gallery".equals(pkg)
                || "com.vivo.wallet".equals(pkg)
                || "com.android.VideoPlayer".equals(pkg)
                || "com.bbk.cloud".equals(pkg)
                || "com.vivo.weather".equals(pkg)
                || "com.bbk.calendar".equals(pkg)
                || "com.android.calendar".equals(pkg)
                || title.contains("ashell") || title.contains("智慧生活")
                || title.contains("jovi") || title.contains("相册")
                || title.contains("钱包") || title.contains("视频")
                || title.contains("云服务") || title.contains("天气")
                || title.contains("日历") || title.contains("weather")
                || title.contains("calendar");
    }

    private static boolean resizeClassification(Object itemInfo) {
        if (itemInfo == null) return false;
        try {
            Object color = itemInfo.getClass().getField("color").get(itemInfo);
            return color != null && color.getClass().getField("resize").getBoolean(color);
        } catch (Throwable ignored) {
            return false;
        }
    }

    private static String boundsString(VisibleBounds bounds) {
        return bounds == null ? "none" : bounds.left + "," + bounds.top + ','
                + bounds.right + ',' + bounds.bottom;
    }

    private static void debugDump(Object itemInfo, String stage, Bitmap bitmap) {
        if (!DEBUG_RASTER_DUMP || !isAcceptanceSample(itemInfo)
                || bitmap == null || bitmap.isRecycled()) return;
        FileOutputStream stream = null;
        try {
            android.content.Context context = MaintainedLauncherSettingsHost.currentApplicationContext();
            if (context == null) return;
            File directory = context.getExternalFilesDir("icon_raster_debug");
            if (directory == null || (!directory.isDirectory() && !directory.mkdirs())) return;
            String pkg = itemField(itemInfo, "packageName").replaceAll("[^A-Za-z0-9._-]", "_");
            String user = itemField(itemInfo, "userId").replaceAll("[^A-Za-z0-9._-]", "_");
            stream = new FileOutputStream(new File(directory,
                    "DEBUG_" + stage + '_' + pkg + "_u" + user + ".png"));
            bitmap.compress(Bitmap.CompressFormat.PNG, 100, stream);
        } catch (Throwable error) {
            Log.w(TAG, "DEBUG_RASTER_DUMP_FAILED stage=" + stage, error);
        } finally {
            if (stream != null) try { stream.close(); } catch (Throwable ignored) { }
        }
    }

    private static void debugMetrics(Object itemInfo, Bitmap analysis, Drawable drawable,
            VisibleBounds before, VisibleBounds after, float envelopeScale,
            boolean fitClampApplied, float drawLeft, float drawTop, float drawWidth,
            float drawHeight, int logicalArtwork, int logicalTexture, int physicalArtwork,
            int physicalTexture, Bitmap finalTexture) {
        if (!DEBUG_RASTER_DUMP || !isAcceptanceSample(itemInfo)) return;
        String type = drawable == null ? "none" : drawable.getClass().getName();
        Bitmap nativeBitmap = drawable instanceof android.graphics.drawable.BitmapDrawable
                ? ((android.graphics.drawable.BitmapDrawable) drawable).getBitmap() : null;
        int nativeWidth = nativeBitmap != null ? nativeBitmap.getWidth()
                : drawable != null ? drawable.getIntrinsicWidth() : analysis.getWidth();
        int nativeHeight = nativeBitmap != null ? nativeBitmap.getHeight()
                : drawable != null ? drawable.getIntrinsicHeight() : analysis.getHeight();
        boolean vector = type.contains("VectorDrawable");
        boolean adaptive = type.contains("AdaptiveIconDrawable");
        boolean cached = drawable == null;
        boolean limited = !vector && !adaptive
                && (nativeWidth < physicalArtwork || nativeHeight < physicalArtwork);
        debugAppend("RASTER_SAMPLE\tpackage=" + itemField(itemInfo, "packageName")
                + "\tcomponent=" + itemField(itemInfo, "componentName")
                + "\tuserId=" + itemField(itemInfo, "userId")
                + "\tsourceType=" + MaintainedLauncherSettingsHost.desktopIconSourceType(itemInfo)
                + "\tsourceRoute=" + MaintainedLauncherSettingsHost.desktopIconSourceIdentity(itemInfo)
                + "\tsourceNativeWidth=" + nativeWidth + "\tsourceNativeHeight=" + nativeHeight
                + "\tsourceIsVector=" + vector + "\tsourceIsAdaptive=" + adaptive
                + "\tsourceIsCachedBitmap=" + cached
                + "\tlogicalArtwork=" + logicalArtwork + "\tlogicalTexture=" + logicalTexture
                + "\tphysicalArtwork=" + physicalArtwork + "\tphysicalTexture=" + physicalTexture
                + "\tanalysisSize=" + analysis.getWidth() + 'x' + analysis.getHeight()
                + "\tenvelopeScale=" + envelopeScale
                + "\tfitClampApplied=" + fitClampApplied
                + "\tvisibleBefore=" + boundsString(before)
                + "\tvisibleAfter=" + boundsString(after)
                + "\tfinalDrawDst=" + drawLeft + ',' + drawTop + ',' + drawWidth + 'x' + drawHeight
                + "\tregisteredTexturePx=" + finalTexture.getWidth() + 'x' + finalTexture.getHeight()
                + "\tFLogicalSize=" + logicalTexture + 'x' + logicalTexture
                + "\tresampleCount=1\tSOURCE_LIMITED=" + limited);
    }

    private static void debugAppend(String line) {
        FileOutputStream stream = null;
        try {
            android.content.Context context = MaintainedLauncherSettingsHost.currentApplicationContext();
            if (context == null) return;
            File directory = context.getExternalFilesDir("icon_raster_debug");
            if (directory == null || (!directory.isDirectory() && !directory.mkdirs())) return;
            stream = new FileOutputStream(new File(directory, "metrics.tsv"), true);
            stream.write((line + "\n").getBytes("UTF-8"));
        } catch (Throwable error) {
            Log.w(TAG, "DEBUG_RASTER_METRICS_FAILED", error);
        } finally {
            if (stream != null) try { stream.close(); } catch (Throwable ignored) { }
        }
    }

    private static Bitmap decorateProfileIcon(Object itemInfo, Bitmap artwork) {
        if (itemInfo == null || artwork == null || artwork.isRecycled()) return artwork;
        try {
            String packageName = itemField(itemInfo, "packageName");
            String componentName = itemField(itemInfo, "componentName");
            int userId = Integer.parseInt(itemField(itemInfo, "userId"));
            android.content.Context context = MaintainedLauncherSettingsHost.currentApplicationContext();
            boolean compatIdentity = context != null && DoppelgangerCompat.isDoppelganger(
                    context, packageName, componentName, userId);
            boolean profileIdentity = context != null && isNonManagedLauncherProfile(
                    context, packageName, componentName, userId);
            if (context == null || (!compatIdentity && !profileIdentity)) {
                Log.i(TAG, "ICON_FINAL_COMPOSED packageName=" + packageName
                        + " componentName=" + componentName + " sourceType="
                        + MaintainedLauncherSettingsHost.desktopIconSourceType(itemInfo)
                        + " userId=" + userId + " badgeApplied=false"
                        + " compatIdentity=" + compatIdentity
                        + " profileIdentity=" + profileIdentity);
                return artwork;
            }
            Bitmap badged = MaintainedLauncherSettingsHost.doppelgangerBitmap(artwork);
            Log.i(TAG, "ICON_FINAL_COMPOSED packageName=" + packageName
                    + " componentName=" + componentName + " sourceType="
                    + MaintainedLauncherSettingsHost.desktopIconSourceType(itemInfo)
                    + " userId=" + userId + " badgeApplied=" + (badged != artwork)
                    + " compatIdentity=" + compatIdentity
                    + " profileIdentity=" + profileIdentity);
            return badged == null ? artwork : badged;
        } catch (Throwable ignored) {
            return artwork;
        }
    }

    private static boolean isNonManagedLauncherProfile(android.content.Context context,
                                                       String packageName, String componentName,
                                                       int userId) {
        if (userId <= 0 || context == null) return false;
        try {
            android.content.pm.LauncherApps apps = (android.content.pm.LauncherApps)
                    context.getSystemService(android.content.Context.LAUNCHER_APPS_SERVICE);
            if (apps == null) return false;
            java.util.List<android.os.UserHandle> profiles = apps.getProfiles();
            if (profiles == null) return false;
            android.os.UserManager users = (android.os.UserManager)
                    context.getSystemService(android.content.Context.USER_SERVICE);
            for (android.os.UserHandle profile : profiles) {
                if (profile == null || DoppelgangerCompat.userId(profile) != userId) continue;
                if (users != null) {
                    try {
                        java.lang.reflect.Method managed = android.os.UserManager.class
                                .getMethod("isManagedProfile", android.os.UserHandle.class);
                        if (((Boolean) managed.invoke(users, profile)).booleanValue()) return false;
                    } catch (Throwable ignored) {
                    }
                }
                java.util.List<android.content.pm.LauncherActivityInfo> activities =
                        apps.getActivityList(packageName, profile);
                if (activities == null) return false;
                for (android.content.pm.LauncherActivityInfo activity : activities) {
                    if (activity == null || activity.getComponentName() == null) continue;
                    if (componentName == null || componentName.length() == 0
                            || componentName.equals(activity.getComponentName().flattenToString())) {
                        return true;
                    }
                }
                return false;
            }
        } catch (Throwable ignored) {
        }
        return false;
    }

    private static VisibleBounds analyzeVisibleBounds(Bitmap bitmap) {
        if (bitmap == null || bitmap.isRecycled()
                || bitmap.getWidth() <= 0 || bitmap.getHeight() <= 0) {
            return null;
        }
        int left = bitmap.getWidth();
        int top = bitmap.getHeight();
        int right = -1;
        int bottom = -1;
        int[] row = new int[bitmap.getWidth()];
        try {
            for (int y = 0; y < bitmap.getHeight(); y++) {
                bitmap.getPixels(row, 0, bitmap.getWidth(), 0, y, bitmap.getWidth(), 1);
                for (int x = 0; x < bitmap.getWidth(); x++) {
                    if ((row[x] >>> 24) < DIAGNOSTIC_ALPHA_CUTOFF) continue;
                    if (x < left) left = x;
                    if (x > right) right = x;
                    if (y < top) top = y;
                    if (y > bottom) bottom = y;
                }
            }
        } catch (Throwable ignored) {
            return null;
        }
        return right < left || bottom < top
                ? null : new VisibleBounds(left, top, right, bottom);
    }

    private static void reportSourceRouteOnce(Object itemInfo, Bitmap source,
            String sourceRoute, String drawableClass, String detail) {
        if (source == null || source.isRecycled()) return;
        String key = "source-route:" + itemField(itemInfo, "packageName") + ':'
                + itemField(itemInfo, "componentName") + ':' + sourceRoute;
        synchronized (REPORTED) {
            if (!REPORTED.add(key)) return;
        }
        Log.w(TAG, "DEFAULT_ICON_SOURCE package=" + itemField(itemInfo, "packageName")
                + " component=" + itemField(itemInfo, "componentName")
                + " sourceRoute=" + sourceRoute + " drawableClass=" + drawableClass
                + " sourceWidth=" + source.getWidth() + " sourceHeight=" + source.getHeight()
                + " detail=" + detail);
        VisibleBounds bounds = analyzeVisibleBounds(source);
        if (bounds != null) {
            float ratioX = bounds.width() / (float) source.getWidth();
            float ratioY = bounds.height() / (float) source.getHeight();
            Log.w(TAG, "DEFAULT_ICON_VISIBLE_BOUNDS package="
                    + itemField(itemInfo, "packageName")
                    + " sourceWidth=" + source.getWidth() + " sourceHeight=" + source.getHeight()
                    + " left=" + bounds.left + " top=" + bounds.top + " right=" + bounds.right
                    + " bottom=" + bounds.bottom + " visibleWidth=" + bounds.width()
                    + " visibleHeight=" + bounds.height() + " visibleRatioX=" + ratioX
                    + " visibleRatioY=" + ratioY + " maxVisibleRatio=" + Math.max(ratioX, ratioY));
        }
    }

    private static void reportSourceCanvasOnce(Object itemInfo, Bitmap source,
            VisibleBounds before, Bitmap normalizedArtwork, float sourceScale,
            int artwork, int texture) {
        String packageName = itemField(itemInfo, "packageName");
        String component = itemField(itemInfo, "componentName");
        String key = "source-canvas:" + packageName + ':' + component;
        synchronized (REPORTED) {
            if (!REPORTED.add(key)) return;
        }
        VisibleBounds after = analyzeVisibleBounds(normalizedArtwork);
        float beforeX = before == null ? 0f : before.width() / (float) Math.max(1, source.getWidth());
        float beforeY = before == null ? 0f : before.height() / (float) Math.max(1, source.getHeight());
        float finalX = after == null ? 0f : after.width() / (float) Math.max(1, artwork);
        float finalY = after == null ? 0f : after.height() / (float) Math.max(1, artwork);
        boolean defaultCircle = "DEFAULT".equals(
                MaintainedLauncherSettingsHost.desktopIconSourceType(itemInfo))
                && DefaultIconCircleRenderer.isCircleEnabled(
                MaintainedLauncherSettingsHost.currentApplicationContext());
        Log.w(TAG, "DEFAULT_ICON_COMPOSE package=" + packageName
                + " logicalArtwork=" + currentLayoutSize("icon_size_origin")
                + " physicalArtwork=" + artwork
                + " logicalTexture=" + currentLayoutSize("icon_size_with_shadow")
                + " physicalTexture=" + texture + " sourceCanvasPolicy="
                + (defaultCircle ? "DEFAULT_CIRCLE_CANONICAL" : "SOURCE_FULL_BOUNDS")
                + " sourceScale=" + sourceScale
                + " finalVisibleWidth=" + (after == null ? 0 : after.width())
                + " finalVisibleHeight=" + (after == null ? 0 : after.height())
                + " finalVisibleRatio=" + Math.max(finalX, finalY)
                + " beforeVisibleRatio=" + Math.max(beforeX, beforeY)
                + " fitPolicy=" + (defaultCircle
                ? "DEFAULT_CIRCLE_CANONICAL" : "SOURCE_FULL_CANVAS")
                + " cacheVersion=" + RASTER_CACHE_VERSION);
        Log.w(TAG, "SOURCE_CANVAS_NORMALIZATION package=" + packageName
                + " component=" + component
                + " sourceSize=" + source.getWidth() + "x" + source.getHeight()
                + " visibleRatioBefore=" + Math.max(beforeX, beforeY)
                + " scale=" + sourceScale
                + " alphaGeometryUsed=false");
    }

    /** True only while the original active-icon controller owns the item. */
    public static boolean isOriginalActiveIcon(Object itemInfo) {
        String packageName = itemField(itemInfo, "packageName");
        boolean active = !packageName.isEmpty()
                && LauncherSettingBridge.dynamicWeatherCalendarEnabled()
                && LauncherSettingBridge.isDynamicIconPackage(packageName);
        if (active) {
            Log.i(TAG, "ICON_PIPELINE_SELECTED packageName=" + packageName
                    + " componentName=" + itemField(itemInfo, "componentName")
                    + " sourceType=ACTIVE_DYNAMIC pipeline=ORIGINAL_ACTIVE_ICON");
        }
        return active;
    }

    public static void reportActiveIconBypass(Object itemInfo) {
        Log.i(TAG, "ICON_ACTIVE_ICON_BYPASS_STATIC packageName="
                + itemField(itemInfo, "packageName") + " componentName="
                + itemField(itemInfo, "componentName")
                + " reason=original_active_icon_controller");
    }

    /** Called while iconRawData is persisted, before an active icon can be flattened. */
    public static void reportActiveIconRawBypass(String packageName) {
        Log.i(TAG, "ICON_ACTIVE_ICON_BYPASS_STATIC packageName=" + packageName
                + " stage=iconRawData reason=original_active_layers");
    }

    /** Keeps the SMEngine in-memory texture cache separate per physical raster. */
    public static String textureCacheKey(Object itemInfo, String baseKey) {
        if (baseKey == null || baseKey.contains("#" + RASTER_CACHE_VERSION + ":")) return baseKey;
        return textureCacheKey(itemInfo, baseKey, desktopPageMode());
    }

    public static String textureCacheKey(Object itemInfo, String baseKey,
            int pageMode) {
        if (baseKey == null) return null;
        int marker = baseKey.indexOf("#" + RASTER_CACHE_VERSION + ":");
        if (marker >= 0) baseKey = baseKey.substring(0, marker);
        return buildTextureCacheKey(itemInfo, baseKey, pageMode);
    }

    /**
     * Returns the cache identity that the real application Cell must also bind
     * to its SceneNode. Active and special icons retain their original Desktop
     * cache contract. Open Folder reuses the desktop representation (37301);
     * its LayoutProperty, not raster mode ownership, controls displayed size.
     */
    public static String applicationCellTextureCacheKey(Object itemInfo,
            String baseKey, int pageMode) {
        if (pageMode == 8 || !shouldUseHighResolutionDesktopRaster(itemInfo)) {
            return desktopTextureCacheKey(itemInfo, baseKey);
        }
        return textureCacheKey(itemInfo, baseKey, pageMode);
    }

    /** Only the real Open Folder application Cell bypasses scene-mode raster. */
    public static boolean usesSharedFolderApplicationTexture(Object itemInfo, int pageMode) {
        return pageMode == 8 && shouldUseHighResolutionDesktopRaster(itemInfo);
    }

    private static String buildTextureCacheKey(Object itemInfo, String baseKey,
            int pageMode) {
        if (isQuickLaunchItem(itemInfo)) return quickLaunchTextureCacheKey(itemInfo, baseKey);
        NormalIconRasterSpec spec = resolveNormalIconRasterSpec(pageMode);
        if (spec == null) return baseKey;
        IconVisualMetrics metrics = IconVisualMetrics.resolve(pageMode);
        if (metrics == null) return baseKey;
        int logicalArtwork = spec.logicalArtworkWidth;
        int logicalTexture = spec.logicalTextureWidth;
        int artwork = spec.artworkWidth;
        int texture = spec.textureWidth;
        String packageName = itemField(itemInfo, "packageName");
        String componentName = itemField(itemInfo, "componentName");
        String userId = itemField(itemInfo, "userId");
        String sourceHash = resolvedSourceHash(itemInfo);
        String sourceType = isDesktopSettingsShortcut(itemInfo) ? "RESOURCE"
                : MaintainedLauncherSettingsHost.desktopIconSourceType(itemInfo);
        String sourceIdentity = isDesktopSettingsShortcut(itemInfo) ? "launcher:icon_setting"
                : MaintainedLauncherSettingsHost.desktopIconSourceIdentity(itemInfo);
        String themeMode = String.valueOf(currentConstant("isTransparentTheme", 0));
        int iconPercent = Math.round(logicalArtwork * 100f / Math.max(1, baseIconSize(pageMode)));
        String pipeline = isOriginalActiveIcon(itemInfo) ? "ORIGINAL_ACTIVE_ICON"
                : "STATIC_APPLICATION_COMPOSER";
        String key = baseKey + "#" + RASTER_CACHE_VERSION + ':' + packageName + ':' + componentName + ':' + userId + ':'
                + sourceHash + ':' + sourceType + ':' + sourceIdentity + ':' + artwork + 'x' + artwork + ':' + texture + 'x' + texture
                + ":surface=" + metrics.surfaceWidth
                + ":logicalSurface=" + metrics.logicalSurfaceWidth
                + ":geometryRevision=" + IconVisualMetrics.REVISION
                + ':' + logicalArtwork + 'x' + logicalTexture
                + ':' + iconPercent + ':' + pageMode + ":grid=" + pageMode + ':' + themeMode + ':' + pipeline
                + ":representation=RAW_SOURCE"
                + ":sourceCanvasVersion=" + SOURCE_CANVAS_VERSION
                + ":contentBoxType=" + (resizeClassification(itemInfo) ? "RESIZED" : "NORMAL")
                + ":defaultShape=" + ("DEFAULT".equals(sourceType)
                ? DefaultIconCircleRenderer.shapeToken(
                MaintainedLauncherSettingsHost.currentApplicationContext()) : "not-default")
                + ":defaultShapeVersion=" + DefaultIconCircleRenderer.VERSION
                + ":fitPolicy=source-full-canvas"
                + ":alphaGeometryUsed=false"
                + ":badgeVersion=" + BADGE_VERSION
                + ":shadowVersion=" + SHADOW_VERSION
                + ("STATIC_APPLICATION_COMPOSER".equals(pipeline)
                ? ":full-alpha-unfiltered-v1" : "")
                + ":shadowSpec=" + LauncherSettingBridge.iconShadowCacheToken()
                + ":projection=" + (IconIlluminationCompat.enabled()
                ? IconIlluminationCompat.VERSION : "off");
        Log.i(TAG, "ICON_CACHE_PIPELINE_KEY packageName=" + packageName
                + " pipeline=" + pipeline + " finalCacheKey=" + key);
        return key;
    }

    private static String resolvedSourceHash(Object itemInfo) {
        if (isQuickLaunchItem(itemInfo)) return itemRawHash(itemInfo);
        Drawable drawable = loadCurrentDesktopDrawable(itemInfo);
        Bitmap bitmap = null;
        boolean owned = false;
        try {
            if (drawable instanceof android.graphics.drawable.BitmapDrawable) {
                bitmap = ((android.graphics.drawable.BitmapDrawable) drawable).getBitmap();
            } else if (drawable != null) {
                return "drawable:" + drawable.getClass().getName() + ':'
                        + drawable.getIntrinsicWidth() + 'x' + drawable.getIntrinsicHeight()
                        + ':' + MaintainedLauncherSettingsHost.desktopIconSourceIdentity(itemInfo);
            }
            if (bitmap == null || bitmap.isRecycled()) return itemRawHash(itemInfo);
            int width = bitmap.getWidth();
            int height = bitmap.getHeight();
            int hash = 17;
            int[] row = new int[Math.max(1, width)];
            for (int y = 0; y < height; y++) {
                bitmap.getPixels(row, 0, width, 0, y, width, 1);
                hash = 31 * hash + Arrays.hashCode(row);
            }
            return width + "x" + height + ':' + Integer.toHexString(hash);
        } catch (Throwable ignored) {
            return itemRawHash(itemInfo);
        } finally {
            if (owned && bitmap != null && !bitmap.isRecycled()) bitmap.recycle();
        }
    }

    /** Returns a size-aware key only for ordinary desktop static application Cells. */
    public static String desktopTextureCacheKey(Object itemInfo, String baseKey) {
        if (baseKey == null || itemInfo == null
                || itemInfo.getClass().getName().endsWith(".FolderInfo")
                || itemField(itemInfo, "packageName").isEmpty()) {
            return baseKey;
        }
        if (isOriginalActiveIcon(itemInfo)) {
            return ActiveIconRasterSpec.frameCacheKey(textureCacheKey(itemInfo, baseKey));
        }
        return textureCacheKey(itemInfo, baseKey);
    }

    public static void reportTextureCacheLookup(String key, boolean hit) {
        if (key == null) return;
        String reportKey = "lookup:" + key;
        synchronized (REPORTED) {
            if (!REPORTED.add(reportKey)) return;
        }
        Log.i(TAG, "finalCacheKey=" + key + " cacheHit=" + hit
                + " cacheSourceWasFinalTexture=false");
    }

    public static void reportFinalTexture(Bitmap texture, int physicalNodePx) {
        if (texture == null || texture.isRecycled() || physicalNodePx <= 0) {
            return;
        }
        int width = texture.getWidth();
        int height = texture.getHeight();
        String key = "final:" + width + 'x' + height + ':' + physicalNodePx;
        synchronized (REPORTED) {
            if (!REPORTED.add(key)) return;
        }
        boolean underSized = width < physicalNodePx || height < physicalNodePx;
        Log.i(TAG, "finalTexture=" + width + 'x' + height
                + " physicalNode=" + physicalNodePx + 'x' + physicalNodePx
                + " underSized=" + underSized + " cache=transientTexture");
    }

    private static void reportSourceOnce(int sourceWidth, int sourceHeight, int targetPx) {
        String key = "source:" + sourceWidth + 'x' + sourceHeight + ':' + targetPx;
        synchronized (REPORTED) {
            if (!REPORTED.add(key)) return;
        }
        DisplayMetrics metrics = android.content.res.Resources.getSystem().getDisplayMetrics();
        boolean sourceUnderTarget = sourceWidth < targetPx || sourceHeight < targetPx;
        Log.i(TAG, "source=iconRawData " + sourceWidth + 'x' + sourceHeight
                + " targetTexture=" + targetPx + 'x' + targetPx
                + " display=" + metrics.widthPixels + 'x' + metrics.heightPixels
                + " densityDpi=" + metrics.densityDpi
                + " sourceUnderTarget=" + sourceUnderTarget
                + " cache=rawSource->transientTexture");
    }

    private static void reportPhysicalOnce(int sourceWidth, int sourceHeight,
            int artwork, int texture, int logicalArtwork, int logicalTexture,
            IconVisualMetrics metrics) {
        String key = "physical:" + sourceWidth + 'x' + sourceHeight + ':'
                + artwork + ':' + texture + ':' + metrics.surfaceWidth;
        synchronized (REPORTED) {
            if (!REPORTED.add(key)) return;
        }
        Log.i(TAG, "sourceWidth=" + sourceWidth + " sourceHeight=" + sourceHeight
                + " sourceWasOriginal=true targetArtworkWidth=" + artwork
                + " targetTextureWidth=" + texture + " physicalNodeWidth=" + texture
                + " textureToPhysicalRatio=" + (texture / (float) Math.max(1, texture))
                + " logicalArtwork=" + logicalArtwork + " logicalTexture=" + logicalTexture
                + " renderSurface=" + metrics.surfaceWidth
                + " logicalSurface=" + metrics.logicalSurfaceWidth
                + " scale=" + metrics.physicalScale
                + " cacheHit=false cacheSourceWasFinalTexture=false");
        Log.i(TAG, "ICON_CONTRACT_GEOMETRY physicalArtwork=" + artwork
                + " physicalTexture=" + texture
                + " surface=" + metrics.surfaceWidth
                + " logicalSurface=" + metrics.logicalSurfaceWidth
                + " geometryRevision=" + IconVisualMetrics.REVISION);
    }

    private static int currentLayoutSize(String fieldName) {
        return layoutSize(desktopPageMode(), fieldName);
    }

    private static int layoutSize(int mode, String fieldName) {
        try {
            Class<?> constants = Class.forName("com.smartisanos.launcher.data.Constants");
            Object property = constants.getMethod("mode", Integer.TYPE).invoke(null, mode);
            return Math.round(property.getClass().getField(fieldName).getFloat(property));
        } catch (Throwable ignored) {
            return 0;
        }
    }

    public static int desktopRenderMode() { return desktopPageMode(); }

    private static int desktopPageMode() {
        try {
            Class<?> constants = Class.forName("com.smartisanos.launcher.data.Constants");
            int mode = constants.getField("SINGLE_PAGE_MODE").getInt(null);
            if (constants.getMethod("mode", Integer.TYPE).invoke(null, mode) != null) return mode;
        } catch (Throwable ignored) {
        }
        try {
            Class<?> constants = Class.forName("com.smartisanos.launcher.data.Constants");
            return ((Integer) constants.getMethod("getPAGE_1_3X3_MODE").invoke(null)).intValue();
        } catch (Throwable ignored) {
            return 0;
        }
    }

    private static int baseIconSize(int pageMode) {
        return Math.max(1, layoutSize(pageMode, "icon_size_origin"));
    }

    private static String itemField(Object item, String name) {
        if (item == null) return "";
        try {
            Object value = item.getClass().getField(name).get(item);
            return value == null ? "" : String.valueOf(value);
        } catch (Throwable ignored) {
            return "";
        }
    }

    private static boolean isQuickLaunchItem(Object item) {
        if (item == null) return false;
        try {
            Object value = item.getClass().getField("itemType").get(item);
            return value instanceof Number && ((Number) value).byteValue() == 1;
        } catch (Throwable ignored) {
            return false;
        }
    }

    private static String quickLaunchTextureCacheKey(Object itemInfo, String baseKey) {
        String packageName = itemField(itemInfo, "packageName");
        String shortcutId = itemField(itemInfo, "shortcutId");
        String userId = itemField(itemInfo, "userId");
        String userSerial = "unknown";
        try {
            Object intent = itemInfo.getClass().getField("intent").get(itemInfo);
            if (intent instanceof android.content.Intent) {
                userSerial = String.valueOf(((android.content.Intent) intent)
                        .getLongExtra("smartisan.shortcut.user_serial", Long.MIN_VALUE));
            }
        } catch (Throwable ignored) {
        }
        String sourceHash = quickLaunchIconHash(itemInfo);
        String key = baseKey + "#" + RASTER_CACHE_VERSION + ":quick-launch-final-source:"
                + packageName + ':' + shortcutId + ':' + userId + ':' + userSerial + ':' + sourceHash;
        Log.i(TAG, "QUICKLAUNCH_RENDER_SOURCE itemType=1 packageName=" + packageName
                + " shortcutId=" + shortcutId + " userSerial=" + userSerial
                + " sourceType=quick-launch-final-source textureKey=" + key);
        return key;
    }

    private static String itemRawHash(Object item) {
        if (item == null) return "0";
        try {
            Object value = item.getClass().getField("iconRawData").get(item);
            return value instanceof byte[] ? Integer.toHexString(Arrays.hashCode((byte[]) value)) : "0";
        } catch (Throwable ignored) {
            return "0";
        }
    }

    private static String quickLaunchIconHash(Object item) {
        if (item == null) return "0";
        try {
            Object value = item.getClass().getField("iconData").get(item);
            if (value instanceof byte[]) return Integer.toHexString(Arrays.hashCode((byte[]) value));
        } catch (Throwable ignored) {
        }
        return itemRawHash(item);
    }

    private static int currentConstant(String fieldName, int fallback) {
        try {
            Class<?> constants = Class.forName("com.smartisanos.launcher.data.Constants");
            return constants.getField(fieldName).getInt(null);
        } catch (Throwable ignored) {
            return fallback;
        }
    }

}
