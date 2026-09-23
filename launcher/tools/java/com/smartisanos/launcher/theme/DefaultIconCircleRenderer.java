package com.smartisanos.launcher.theme;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.AdaptiveIconDrawable;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;

/** Builds a canonical DEFAULT source. It deliberately has no layout or Scene knowledge. */
public final class DefaultIconCircleRenderer {
    public static final String PREFS = "com.smartisanos.launcher_prefs";
    public static final String KEY_SHAPE = "launcher_default_icon_shape_v1";
    public static final String SHAPE_FOLLOW_APP = "follow_app";
    public static final String SHAPE_CIRCLE = "circle";
    public static final String VERSION = "default-circle:v6-adaptive-opaque-cover";

    // Median alpha envelope measured from five complete circular IMPROVED assets.
    private static final float CIRCLE_ENVELOPE_RATIO = 0.9791667f;
    private DefaultIconCircleRenderer() {
    }

    public static boolean isCircleEnabled(Context context) {
        if (context == null) return true;
        return SHAPE_CIRCLE.equals(context.getSharedPreferences(PREFS, Context.MODE_PRIVATE)
                .getString(KEY_SHAPE, SHAPE_CIRCLE));
    }

    public static String shapeToken(Context context) {
        return isCircleEnabled(context) ? SHAPE_CIRCLE : SHAPE_FOLLOW_APP;
    }

    public static boolean setCircleEnabled(Context context, boolean enabled) {
        if (context == null) return false;
        // The settings flow immediately cold-reloads Launcher. Persist synchronously so the
        // replacement process cannot observe the previous shape value.
        return context.getSharedPreferences(PREFS, Context.MODE_PRIVATE).edit()
                .putString(KEY_SHAPE, enabled ? SHAPE_CIRCLE : SHAPE_FOLLOW_APP).commit();
    }

    public static Bitmap render(Drawable drawable, int canonicalCanvasSize) {
        if (drawable == null || canonicalCanvasSize <= 0) return null;
        Bitmap result = Bitmap.createBitmap(canonicalCanvasSize, canonicalCanvasSize,
                Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(result);
        float diameter = canonicalCanvasSize * CIRCLE_ENVELOPE_RATIO;
        float inset = (canonicalCanvasSize - diameter) * 0.5f;
        RectF circleBounds = new RectF(inset, inset, inset + diameter, inset + diameter);

        if (drawable instanceof AdaptiveIconDrawable) {
            Bitmap adaptiveSource = Bitmap.createBitmap(canonicalCanvasSize, canonicalCanvasSize,
                    Bitmap.Config.ARGB_8888);
            // Layers may contain their own transparent inset. Resolve coverage before mapping
            // into the output circle; applying the output inset here would apply it twice.
            drawAdaptive(new Canvas(adaptiveSource), (AdaptiveIconDrawable) drawable,
                    new RectF(0, 0, canonicalCanvasSize, canonicalCanvasSize));
            drawBitmapCircle(canvas, adaptiveSource, inscribedOpaqueCrop(adaptiveSource),
                    circleBounds);
            adaptiveSource.recycle();
        } else {
            Bitmap source = Bitmap.createBitmap(canonicalCanvasSize, canonicalCanvasSize,
                    Bitmap.Config.ARGB_8888);
            Canvas sourceCanvas = new Canvas(source);
            drawDrawable(sourceCanvas, drawable,
                    new RectF(0, 0, canonicalCanvasSize, canonicalCanvasSize), true, false);
            Rect crop = inscribedOpaqueCrop(source);
            drawBitmapCircle(canvas, source, crop, circleBounds);
            source.recycle();
        }
        return result;
    }

    /**
     * Finds the largest centered source circle supported by the outer alpha silhouette.
     * Rounded squares and octagons therefore cover the output circle without inventing a
     * background color. Irregular silhouettes that do not surround the center fall back to
     * their visible square and are never amplified without a bounded source envelope.
     */
    private static Rect inscribedOpaqueCrop(Bitmap source) {
        final int alphaCutoff = 40;
        int width = source.getWidth();
        int height = source.getHeight();
        int left = width, top = height, right = -1, bottom = -1;
        int[] pixels = new int[width * height];
        source.getPixels(pixels, 0, width, 0, 0, width, height);
        for (int y = 0; y < height; y++) {
            for (int x = 0; x < width; x++) {
                if ((pixels[y * width + x] >>> 24) >= alphaCutoff) {
                    if (x < left) left = x;
                    if (x > right) right = x;
                    if (y < top) top = y;
                    if (y > bottom) bottom = y;
                }
            }
        }
        if (right < left || bottom < top) return new Rect(0, 0, width, height);
        float centerX = (left + right + 1) * 0.5f;
        float centerY = (top + bottom + 1) * 0.5f;
        float maxRadius = Math.min(Math.min(centerX, width - centerX),
                Math.min(centerY, height - centerY));
        float minimumBoundary = Float.MAX_VALUE;
        final int rayCount = 96;
        for (int ray = 0; ray < rayCount; ray++) {
            double angle = Math.PI * 2.0 * ray / rayCount;
            float boundary = 0f;
            for (float radius = 0f; radius <= maxRadius; radius += 1f) {
                int x = Math.min(width - 1, Math.max(0,
                        Math.round(centerX + (float) Math.cos(angle) * radius)));
                int y = Math.min(height - 1, Math.max(0,
                        Math.round(centerY + (float) Math.sin(angle) * radius)));
                if ((pixels[y * width + x] >>> 24) >= alphaCutoff) boundary = radius;
            }
            if (boundary <= 0f) {
                minimumBoundary = 0f;
                break;
            }
            minimumBoundary = Math.min(minimumBoundary, boundary);
        }
        float visibleHalf = Math.max(right - left + 1, bottom - top + 1) * 0.5f;
        float cropHalf = minimumBoundary >= visibleHalf * 0.25f
                ? minimumBoundary : Math.min(right - left + 1, bottom - top + 1) * 0.5f;
        int cropLeft = Math.max(0, Math.round(centerX - cropHalf));
        int cropTop = Math.max(0, Math.round(centerY - cropHalf));
        int cropRight = Math.min(width, Math.round(centerX + cropHalf));
        int cropBottom = Math.min(height, Math.round(centerY + cropHalf));
        int side = Math.max(1, Math.min(cropRight - cropLeft, cropBottom - cropTop));
        cropLeft = Math.max(0, Math.round(centerX - side * 0.5f));
        cropTop = Math.max(0, Math.round(centerY - side * 0.5f));
        return new Rect(cropLeft, cropTop, cropLeft + side, cropTop + side);
    }

    private static void drawAdaptive(Canvas canvas, AdaptiveIconDrawable adaptive,
            RectF circleBounds) {
        Drawable background = adaptive.getBackground();
        Drawable foreground = adaptive.getForeground();
        if (background != null) drawDrawable(canvas, background, circleBounds, false, false);
        // Drawing the foreground inside the canonical circle preserves its complete safe-zone
        // content and avoids the crop caused by scaling an already masked final bitmap.
        if (foreground != null) drawDrawable(canvas, foreground, circleBounds, true, false);
    }

    /** Draws the final circle as an anti-aliased primitive instead of a hard clipPath edge. */
    private static void drawBitmapCircle(Canvas canvas, Bitmap source, Rect sourceBounds,
            RectF circleBounds) {
        BitmapShader shader = new BitmapShader(source, Shader.TileMode.CLAMP,
                Shader.TileMode.CLAMP);
        Matrix matrix = new Matrix();
        matrix.setRectToRect(new RectF(sourceBounds), circleBounds, Matrix.ScaleToFit.FILL);
        shader.setLocalMatrix(matrix);
        Paint paint = new Paint(Paint.ANTI_ALIAS_FLAG | Paint.FILTER_BITMAP_FLAG
                | Paint.DITHER_FLAG);
        paint.setShader(shader);
        canvas.drawOval(circleBounds, paint);
    }

    private static void drawDrawable(Canvas canvas, Drawable drawable, RectF destination,
            boolean preserveAspectRatio, boolean cover) {
        RectF target = new RectF(destination);
        if (preserveAspectRatio) {
            int width = drawable.getIntrinsicWidth();
            int height = drawable.getIntrinsicHeight();
            if (drawable instanceof BitmapDrawable) {
                Bitmap bitmap = ((BitmapDrawable) drawable).getBitmap();
                if (bitmap != null && !bitmap.isRecycled()) {
                    width = bitmap.getWidth();
                    height = bitmap.getHeight();
                    ((BitmapDrawable) drawable).setFilterBitmap(true);
                }
            }
            if (width > 0 && height > 0) {
                float scale = cover
                        ? Math.max(destination.width() / width, destination.height() / height)
                        : Math.min(destination.width() / width, destination.height() / height);
                float drawWidth = width * scale;
                float drawHeight = height * scale;
                target.set(destination.centerX() - drawWidth * 0.5f,
                        destination.centerY() - drawHeight * 0.5f,
                        destination.centerX() + drawWidth * 0.5f,
                        destination.centerY() + drawHeight * 0.5f);
            }
        }
        Rect previous = new Rect(drawable.getBounds());
        drawable.setBounds(Math.round(target.left), Math.round(target.top),
                Math.round(target.right), Math.round(target.bottom));
        drawable.draw(canvas);
        drawable.setBounds(previous);
    }
}
