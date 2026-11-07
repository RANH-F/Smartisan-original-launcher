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
    public static final String VERSION = "default-circle:v14-transparent-artwork";

    // Median alpha envelope measured from five complete circular IMPROVED assets.
    private static final float CIRCLE_ENVELOPE_RATIO = 0.9791667f;
    private static final int PLATE_ALPHA_MIN = 248;
    private DefaultIconCircleRenderer() {
    }

    /** Only actual APK fallback artwork is framed; matched managed artwork stays intact. */
    public static boolean appliesToSelection(boolean enabled, String effectiveType) {
        return enabled && "DEFAULT".equals(effectiveType);
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

        Bitmap source = Bitmap.createBitmap(canonicalCanvasSize, canonicalCanvasSize,
                Bitmap.Config.ARGB_8888);
        Canvas sourceCanvas = new Canvas(source);
        if (android.os.Build.VERSION.SDK_INT >= 26 && drawable instanceof AdaptiveIconDrawable) {
            AdaptiveIconDrawable adaptive = (AdaptiveIconDrawable) drawable;
            // Compose the fallback and background before applying the circle once.
            sourceCanvas.drawColor(0xfff2f2f2);
            if (adaptive.getBackground() != null) {
                float extra = canonicalCanvasSize * AdaptiveIconDrawable.getExtraInsetFraction();
                drawDrawable(sourceCanvas, adaptive.getBackground(),
                        new RectF(-extra, -extra, canonicalCanvasSize + extra,
                                canonicalCanvasSize + extra), false, false);
            }
            drawBitmapCircle(canvas, source, new Rect(0, 0, canonicalCanvasSize,
                    canonicalCanvasSize), circleBounds);
            source.eraseColor(0);
            if (adaptive.getForeground() != null) {
                drawDrawable(sourceCanvas, adaptive.getForeground(),
                        new RectF(0, 0, canonicalCanvasSize, canonicalCanvasSize), true, false);
            }
        } else {
            drawDrawable(sourceCanvas, drawable,
                    new RectF(0, 0, canonicalCanvasSize, canonicalCanvasSize), true, false);
        }
        drawCompleteArtwork(canvas, source, circleBounds,
                !(android.os.Build.VERSION.SDK_INT >= 26 && drawable instanceof AdaptiveIconDrawable));
        source.recycle();
        return result;
    }

    /** Fits every visible source pixel inside the circle, retaining a four-percent radial gap. */
    private static void drawCompleteArtwork(Canvas canvas, Bitmap source, RectF circleBounds,
            boolean neutralFallback) {
        int width = source.getWidth(), height = source.getHeight();
        int[] pixels = new int[width * height];
        source.getPixels(pixels, 0, width, 0, 0, width, height);
        int left = width, top = height, right = -1, bottom = -1;
        int[] rowLeft = new int[height], rowRight = new int[height];
        for (int y = 0; y < height; y++) {
            int first = 0, last = width - 1, offset = y * width;
            while (first < width && (pixels[offset + first] >>> 24) == 0) first++;
            rowLeft[y] = first;
            if (first == width) continue;
            while (last > first && (pixels[offset + last] >>> 24) == 0) last--;
            rowRight[y] = last;
            left = Math.min(left, first); right = Math.max(right, last);
            top = Math.min(top, y); bottom = y;
        }
        if (right < left) {
            return;
        }
        float cx = (left + right + 1) * .5f, cy = (top + bottom + 1) * .5f;
        double radius = 0;
        for (int y = top; y <= bottom; y++) {
            if (rowLeft[y] == width) continue;
            // For a fixed row the farthest pixel is one of its two alpha endpoints.
            // Interior holes cannot increase this radius; retain full pixel extents.
            double dx = Math.max(Math.abs(rowLeft[y] + .5 - cx),
                    Math.abs(rowRight[y] + .5 - cx)) + .5;
            double dy = Math.abs(y + .5 - cy) + .5;
            radius = Math.max(radius, dx * dx + dy * dy);
        }
        // Keep padding already supplied by an app; only shrink artwork that would hit the rim.
        float scale = Math.min(1f, (float) (circleBounds.width() * .5 * .96
                / Math.max(1, Math.sqrt(radius))));
        Matrix matrix = new Matrix();
        matrix.setScale(scale, scale);
        matrix.postTranslate(circleBounds.centerX() - cx * scale,
                circleBounds.centerY() - cy * scale);
        // A ROM can place a complete legacy plate inside an adaptive foreground.
        // Use the same conservative plate classifier for both drawable forms.
        // Genuine adaptive glyphs keep their already-composed app background.
        // Opaque bounds cannot exceed the alpha envelope already found above.
        // Small glyphs therefore need no second full-canvas background scan.
        boolean possiblePlate = right - left + 1 >= width * .6f
                && bottom - top + 1 >= height * .6f;
        if (possiblePlate && drawLegacyBackground(canvas, source, pixels, circleBounds, matrix)) {
            // The shader already contains the complete artwork at this matrix.
            // Redrawing the original also restores its obsolete rounded edge/shadow.
            return;
        }
        if (neutralFallback) {
            // An unrecognized legacy contour is finished transparent artwork, not a plate.
            // Preserve its full canvas, silhouette and padding just as follow-app does.
            canvas.drawBitmap(source, 0f, 0f, null);
            return;
        }
        Paint paint = new Paint(Paint.ANTI_ALIAS_FLAG | Paint.FILTER_BITMAP_FLAG);
        canvas.drawBitmap(source, matrix, paint);
    }

    /** Extends a solid plate using its complete artwork, preserving the foreground matrix. */
    private static boolean drawLegacyBackground(Canvas canvas, Bitmap source, int[] pixels,
            RectF circleBounds, Matrix artworkMatrix) {
        int width = source.getWidth(), height = source.getHeight();
        int left = width, top = height, right = -1, bottom = -1;
        for (int y = 0; y < height; y++) {
            for (int x = 0; x < width; x++) {
                if ((pixels[y * width + x] >>> 24) < PLATE_ALPHA_MIN) continue;
                left = Math.min(left, x); right = Math.max(right, x);
                top = Math.min(top, y); bottom = Math.max(bottom, y);
            }
        }
        int w = right - left + 1, h = bottom - top + 1;
        if (w < width * .6f || h < height * .6f
                || Math.min(w, h) < Math.max(w, h) * .95f) return false;
        int opaque = 0;
        int[] rowFirst = new int[h], rowLast = new int[h], rowCount = new int[h];
        for (int y = top; y <= bottom; y++) {
            int first = right + 1, last = left - 1, count = 0;
            for (int x = left; x <= right; x++) {
                if ((pixels[y * width + x] >>> 24) >= PLATE_ALPHA_MIN) {
                    if (first > right) first = x;
                    last = x;
                    count++;
                    // This private copy supplies only the surrogate background.
                    pixels[y * width + x] |= 0xff000000;
                }
            }
            opaque += count;
            rowFirst[y - top] = first;
            rowLast[y - top] = last;
            rowCount[y - top] = count;
        }
        boolean rounded = opaque < w * h * .995f;
        if (rounded) {
            // A large, opaque circular plate can also supply the backdrop. It
            // must have a circular contour and matching side colors, not a ring,
            // disconnected glyph, badge or arbitrary near-round silhouette.
            boolean circular = opaque < w * h * .88f
                    && isCircularPlate(pixels, width, left, top, w, h, opaque,
                            rowFirst, rowLast, rowCount);
            if (!circular && opaque < w * h * .88f) return false;
            int tolerance = Math.max(2, Math.round(w * .03f));
            for (int y = 0; !circular && y < h; y++) {
                int first = rowFirst[y], last = rowLast[y];
                // High total coverage and the monotone symmetric contour already
                // reject glyphs. A rounded plate's first opaque chord may be short.
                if (rowCount[y] != last - first + 1
                        || Math.abs((first - left) - (right - last)) > tolerance) return false;
                // Top and bottom corner radii may differ. Each half must taper
                // continuously, rather than requiring identical opposing rows.
                if (y > 0 && y <= h / 2 && (first > rowFirst[y - 1] + tolerance
                        || last < rowLast[y - 1] - tolerance)) return false;
                if (y > h / 2 && (first < rowFirst[y - 1] - tolerance
                        || last > rowLast[y - 1] + tolerance)) return false;
                if (y >= h / 3 && y <= h * 2 / 3
                        && (first - left > tolerance || right - last > tolerance)) return false;
            }
            // Fill only the transparent corners of our pixel copy. Sampling the
            // nearest opaque endpoint of each row preserves vertical gradients.
            // The source Bitmap and all foreground pixels remain untouched.
            for (int y = top; y <= bottom; y++) {
                int first = rowFirst[y - top], last = rowLast[y - top];
                int start = y * width;
                int leftColor = pixels[start + first] | 0xff000000;
                int rightColor = pixels[start + last] | 0xff000000;
                for (int x = left; x < first; x++) pixels[start + x] = leftColor;
                for (int x = last + 1; x <= right; x++) pixels[start + x] = rightColor;
            }
        }
        Bitmap backdrop = rounded
                ? Bitmap.createBitmap(pixels, top * width + left, width, w, h, Bitmap.Config.ARGB_8888)
                : Bitmap.createBitmap(source, left, top, w, h);
        try {
            BitmapShader shader = new BitmapShader(backdrop, Shader.TileMode.CLAMP,
                    Shader.TileMode.CLAMP);
            Matrix matrix = new Matrix(artworkMatrix);
            matrix.preTranslate(left, top);
            shader.setLocalMatrix(matrix);
            Paint paint = new Paint(Paint.ANTI_ALIAS_FLAG | Paint.FILTER_BITMAP_FLAG);
            paint.setShader(shader);
            // Replace the previous adaptive background instead of stacking two
            // anti-aliased circle edges, which would retain a pale outer fringe.
            canvas.drawColor(0, android.graphics.PorterDuff.Mode.CLEAR);
            canvas.drawOval(circleBounds, paint);
        } finally {
            if (backdrop != source) backdrop.recycle();
        }
        return true;
    }

    private static boolean isCircularPlate(int[] pixels, int stride, int left, int top,
            int width, int height, int opaque, int[] rowFirst, int[] rowLast, int[] rowCount) {
        // Small circular foreground glyphs are not a complete app plate.
        // Keep their existing app/neutral background and intrinsic padding.
        if (width < stride * .78f || height < (pixels.length / stride) * .78f) return false;
        float coverage = opaque / (float) (width * height);
        if (coverage < .74f || coverage > .84f) return false;
        float cx = left + (width - 1) * .5f, cy = top + (height - 1) * .5f;
        float rx = Math.max(1, (width - 1) * .5f);
        float ry = Math.max(1, (height - 1) * .5f);
        // A radial envelope avoids unstable chord lengths at the first AA row.
        // Allow about two source pixels of alpha/filtering uncertainty.
        float tolerance = Math.max(.03f, 8f / Math.min(width, height));
        for (int y = 0; y < height; y++) {
            int first = rowFirst[y], last = rowLast[y];
            if (first > last || rowCount[y] != last - first + 1) return false;
            float dy = (top + y - cy) / ry;
            float dx1 = (first - cx) / rx, dx2 = (last - cx) / rx;
            if (Math.abs(dx1 * dx1 + dy * dy - 1) > tolerance
                    || Math.abs(dx2 * dx2 + dy * dy - 1) > tolerance) return false;
            int a = pixels[(top + y) * stride + first];
            int b = pixels[(top + y) * stride + last];
            for (int shift = 0; shift <= 16; shift += 8) {
                if (Math.abs(((a >> shift) & 255) - ((b >> shift) & 255)) > 24) return false;
            }
        }
        return true;
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
