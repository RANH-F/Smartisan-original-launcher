package com.smartisanos.launcher.quickdesktop;

import android.graphics.Bitmap;
import android.opengl.GLSurfaceView;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.view.SurfaceView;
import android.view.View;
import android.view.ViewGroup;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/** Captures the already-rendered launcher GL framebuffer and prepares fixed background layers. */
public final class QuickDesktopBackgroundCapture {
    private static final String TAG = "QuickDesktopHost";
    private static final int CAPTURE_WIDTH = 240;
    private static final int BLUR_RADIUS = 14;
    private static final int BLUR_PASSES = 2;
    private static final Handler MAIN = new Handler(Looper.getMainLooper());
    private static final ExecutorService WORKER = Executors.newSingleThreadExecutor();
    private static final Object REQUEST_LOCK = new Object();

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
        final int requestGeneration;
        synchronized (REQUEST_LOCK) {
            requestGeneration = ++generation;
        }
        root.postDelayed(new Runnable() {
            @Override
            public void run() {
                synchronized (REQUEST_LOCK) {
                    if (requestGeneration != generation || !root.isAttachedToWindow()) {
                        return;
                    }
                    pendingHost = host;
                    pendingGeneration = requestGeneration;
                    glCaptureRequested = true;
                }
                SurfaceView surfaceView = findSurfaceView(root);
                if (surfaceView instanceof GLSurfaceView) {
                    ((GLSurfaceView) surfaceView).requestRender();
                }
                Log.i(TAG, "QD_BACKGROUND_GL_CAPTURE_REQUEST");
            }
        }, Math.max(0L, delayMillis));
    }

    static void cancel(String reason) {
        synchronized (REQUEST_LOCK) {
            generation++;
            glCaptureRequested = false;
            pendingGeneration = 0;
            pendingHost = null;
        }
        Log.i(TAG, "QD_BACKGROUND_CANCEL reason=" + reason);
    }

    /** Claim the request before readPixels, so cancellation cannot relabel an in-flight frame. */
    public static int takeGlCaptureGeneration() {
        synchronized (REQUEST_LOCK) {
            if (!glCaptureRequested || pendingGeneration != generation) return 0;
            glCaptureRequested = false;
            return pendingGeneration;
        }
    }

    /** Takes ownership of rawBitmap. Called from the launcher renderer thread. */
    public static void onGlFrame(final Bitmap rawBitmap, final int requestGeneration) {
        final QuickDesktopHostView host;
        synchronized (REQUEST_LOCK) {
            host = requestGeneration == generation && requestGeneration == pendingGeneration
                    ? pendingHost : null;
            if (host != null) pendingHost = null;
        }
        if (rawBitmap == null || host == null || requestGeneration != generation) {
            if (rawBitmap != null) rawBitmap.recycle();
            Log.w(TAG, "QD_BACKGROUND_GL_CAPTURE_EMPTY");
            return;
        }
        WORKER.execute(new Runnable() {
            @Override
            public void run() {
                if (requestGeneration != generation) {
                    rawBitmap.recycle();
                    return;
                }
                // The Host ImageViews flip the framebuffer vertically. Keep rawBitmap as the
                // sharp layer so capture never creates a second full-resolution Bitmap.
                final Bitmap sharpBitmap = rawBitmap;
                if (!hasVisibleContent(sharpBitmap)) {
                    sharpBitmap.recycle();
                    Log.w(TAG, "QD_BACKGROUND_GL_CAPTURE_REJECTED reason=blank");
                    return;
                }
                if (requestGeneration != generation) {
                    sharpBitmap.recycle();
                    return;
                }
                int blurWidth = Math.min(CAPTURE_WIDTH, sharpBitmap.getWidth());
                int blurHeight = Math.max(1, Math.round(sharpBitmap.getHeight()
                        * (blurWidth / (float) sharpBitmap.getWidth())));
                final Bitmap blurBitmap = Bitmap.createScaledBitmap(
                        sharpBitmap, blurWidth, blurHeight, true);
                if (requestGeneration != generation) {
                    sharpBitmap.recycle();
                    if (blurBitmap != sharpBitmap) blurBitmap.recycle();
                    return;
                }
                blur(blurBitmap, BLUR_RADIUS, BLUR_PASSES);
                MAIN.post(new Runnable() {
                    @Override
                    public void run() {
                        if (requestGeneration == generation) {
                            host.setBackgroundSnapshots(sharpBitmap, blurBitmap);
                            QuickDesktopController.onBackgroundReady(host);
                        } else {
                            sharpBitmap.recycle();
                            blurBitmap.recycle();
                        }
                    }
                });
            }
        });
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
