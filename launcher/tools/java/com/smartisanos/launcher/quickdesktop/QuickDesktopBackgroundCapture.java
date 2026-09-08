package com.smartisanos.launcher.quickdesktop;

import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.opengl.GLSurfaceView;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.view.SurfaceView;
import android.view.View;
import android.view.ViewGroup;

/** Captures the already-rendered launcher GL framebuffer and prepares fixed background layers. */
public final class QuickDesktopBackgroundCapture {
    private static final String TAG = "QuickDesktopHost";
    private static final int CAPTURE_WIDTH = 240;
    private static final int BLUR_RADIUS = 14;
    private static final int BLUR_PASSES = 2;
    private static final Handler MAIN = new Handler(Looper.getMainLooper());

    private static volatile boolean glCaptureRequested;
    private static volatile int generation;
    private static volatile int pendingGeneration;
    private static volatile QuickDesktopHostView pendingHost;

    private QuickDesktopBackgroundCapture() {
    }

    static void schedule(final ViewGroup root, final QuickDesktopHostView host, long delayMillis) {
        if (root == null || host == null) {
            return;
        }
        final int requestGeneration = ++generation;
        root.postDelayed(new Runnable() {
            @Override
            public void run() {
                if (requestGeneration != generation || !root.isAttachedToWindow()) {
                    return;
                }
                pendingHost = host;
                pendingGeneration = requestGeneration;
                glCaptureRequested = true;
                SurfaceView surfaceView = findSurfaceView(root);
                if (surfaceView instanceof GLSurfaceView) {
                    ((GLSurfaceView) surfaceView).requestRender();
                }
                Log.i(TAG, "QD_BACKGROUND_GL_CAPTURE_REQUEST");
            }
        }, Math.max(0L, delayMillis));
    }

    public static boolean isGlCaptureRequested() {
        return glCaptureRequested;
    }

    /** Takes ownership of rawBitmap. Called from the launcher renderer thread. */
    public static void onGlFrame(final Bitmap rawBitmap) {
        if (!glCaptureRequested) {
            if (rawBitmap != null) rawBitmap.recycle();
            return;
        }
        glCaptureRequested = false;
        final int requestGeneration = pendingGeneration;
        final QuickDesktopHostView host = pendingHost;
        pendingHost = null;
        if (rawBitmap == null || host == null || requestGeneration != generation) {
            if (rawBitmap != null) rawBitmap.recycle();
            Log.w(TAG, "QD_BACKGROUND_GL_CAPTURE_EMPTY");
            return;
        }
        Thread worker = new Thread(new Runnable() {
            @Override
            public void run() {
                Matrix flip = new Matrix();
                flip.setScale(1.0f, -1.0f);
                final Bitmap sharpBitmap = Bitmap.createBitmap(rawBitmap, 0, 0,
                        rawBitmap.getWidth(), rawBitmap.getHeight(), flip, false);
                rawBitmap.recycle();
                if (!hasVisibleContent(sharpBitmap)) {
                    sharpBitmap.recycle();
                    Log.w(TAG, "QD_BACKGROUND_GL_CAPTURE_REJECTED reason=blank");
                    return;
                }
                int blurWidth = Math.min(CAPTURE_WIDTH, sharpBitmap.getWidth());
                int blurHeight = Math.max(1, Math.round(sharpBitmap.getHeight()
                        * (blurWidth / (float) sharpBitmap.getWidth())));
                final Bitmap blurBitmap = Bitmap.createScaledBitmap(
                        sharpBitmap, blurWidth, blurHeight, true);
                blur(blurBitmap, BLUR_RADIUS, BLUR_PASSES);
                MAIN.post(new Runnable() {
                    @Override
                    public void run() {
                        if (requestGeneration == generation) {
                            host.setBackgroundSnapshots(sharpBitmap, blurBitmap);
                        } else {
                            sharpBitmap.recycle();
                            blurBitmap.recycle();
                        }
                    }
                });
            }
        }, "QuickDesktopBackground");
        worker.setDaemon(true);
        worker.start();
    }

    private static SurfaceView findSurfaceView(View view) {
        if (view instanceof GLSurfaceView) return (SurfaceView) view;
        if (view instanceof ViewGroup) {
            ViewGroup group = (ViewGroup) view;
            for (int index = 0; index < group.getChildCount(); index++) {
                SurfaceView result = findSurfaceView(group.getChildAt(index));
                if (result != null) return result;
            }
        }
        return view instanceof SurfaceView ? (SurfaceView) view : null;
    }

    private static boolean hasVisibleContent(Bitmap bitmap) {
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        int first = bitmap.getPixel(width / 2, height / 2);
        int different = 0;
        for (int y = 1; y <= 7; y++) {
            for (int x = 1; x <= 7; x++) {
                if (bitmap.getPixel(width * x / 8, height * y / 8) != first) different++;
            }
        }
        return different >= 3;
    }

    private static void blur(Bitmap bitmap, int radius, int passes) {
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        int[] pixels = new int[width * height];
        int[] scratch = new int[pixels.length];
        bitmap.getPixels(pixels, 0, width, 0, 0, width, height);
        for (int pass = 0; pass < passes; pass++) {
            blurHorizontal(pixels, scratch, width, height, radius);
            blurVertical(scratch, pixels, width, height, radius);
        }
        bitmap.setPixels(pixels, 0, width, 0, 0, width, height);
    }

    private static void blurHorizontal(int[] source, int[] target, int width, int height,
                                       int radius) {
        int diameter = radius * 2 + 1;
        for (int y = 0; y < height; y++) {
            int row = y * width;
            int a = 0, r = 0, g = 0, b = 0;
            for (int offset = -radius; offset <= radius; offset++) {
                int color = source[row + clamp(offset, 0, width - 1)];
                a += color >>> 24;
                r += (color >> 16) & 0xff;
                g += (color >> 8) & 0xff;
                b += color & 0xff;
            }
            for (int x = 0; x < width; x++) {
                target[row + x] = ((a / diameter) << 24) | ((r / diameter) << 16)
                        | ((g / diameter) << 8) | (b / diameter);
                int removed = source[row + clamp(x - radius, 0, width - 1)];
                int added = source[row + clamp(x + radius + 1, 0, width - 1)];
                a += (added >>> 24) - (removed >>> 24);
                r += ((added >> 16) & 0xff) - ((removed >> 16) & 0xff);
                g += ((added >> 8) & 0xff) - ((removed >> 8) & 0xff);
                b += (added & 0xff) - (removed & 0xff);
            }
        }
    }

    private static void blurVertical(int[] source, int[] target, int width, int height,
                                     int radius) {
        int diameter = radius * 2 + 1;
        for (int x = 0; x < width; x++) {
            int a = 0, r = 0, g = 0, b = 0;
            for (int offset = -radius; offset <= radius; offset++) {
                int color = source[clamp(offset, 0, height - 1) * width + x];
                a += color >>> 24;
                r += (color >> 16) & 0xff;
                g += (color >> 8) & 0xff;
                b += color & 0xff;
            }
            for (int y = 0; y < height; y++) {
                target[y * width + x] = ((a / diameter) << 24) | ((r / diameter) << 16)
                        | ((g / diameter) << 8) | (b / diameter);
                int removed = source[clamp(y - radius, 0, height - 1) * width + x];
                int added = source[clamp(y + radius + 1, 0, height - 1) * width + x];
                a += (added >>> 24) - (removed >>> 24);
                r += ((added >> 16) & 0xff) - ((removed >> 16) & 0xff);
                g += ((added >> 8) & 0xff) - ((removed >> 8) & 0xff);
                b += (added & 0xff) - (removed & 0xff);
            }
        }
    }

    private static int clamp(int value, int minimum, int maximum) {
        return Math.max(minimum, Math.min(maximum, value));
    }
}
