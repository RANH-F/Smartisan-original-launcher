package com.smartisanos.launcher.quickdesktop;

import android.graphics.Bitmap;
import android.os.Looper;
import java.lang.reflect.Field;

/** Production capture handoff: cancellation while readPixels runs must retain the new owner. */
public final class QuickDesktopCaptureGenerationProbe {
    private static int checks;
    private static void check(boolean ok, String why) {
        if (!ok) throw new AssertionError(why);
        checks++;
    }
    private static Field field(String name) throws Exception {
        Field f = QuickDesktopBackgroundCapture.class.getDeclaredField(name);
        f.setAccessible(true);
        return f;
    }
    private static void publish(int generation, Object host) throws Exception {
        field("generation").setInt(null, generation);
        field("pendingGeneration").setInt(null, generation);
        field("pendingHost").set(null, host);
        field("glCaptureRequested").setBoolean(null, true);
    }
    public static void main(String[] args) {
        try {
            if (Looper.myLooper() == null) Looper.prepareMainLooper();
            Class<?> type = Class.forName("sun.misc.Unsafe");
            Field f = type.getDeclaredField("theUnsafe");
            f.setAccessible(true);
            Object host = type.getMethod("allocateInstance", Class.class)
                    .invoke(f.get(null), QuickDesktopHostView.class);
            publish(10, host);
            int old = QuickDesktopBackgroundCapture.takeGlCaptureGeneration();
            check(old == 10, "wrong first claim");
            check(QuickDesktopBackgroundCapture.takeGlCaptureGeneration() == 0, "duplicate claim");
            QuickDesktopBackgroundCapture.cancel("probe-cancel-in-read");
            publish(12, host);
            Bitmap oldFrame = Bitmap.createBitmap(8, 8, Bitmap.Config.ARGB_8888);
            QuickDesktopBackgroundCapture.onGlFrame(oldFrame, old);
            check(oldFrame.isRecycled(), "cancelled read not discarded");
            check(field("pendingHost").get(null) == host, "old read stole new host");
            check(QuickDesktopBackgroundCapture.takeGlCaptureGeneration() == 12, "new request lost");
            QuickDesktopBackgroundCapture.cancel("probe-cancel-after-claim");
            Bitmap lateFrame = Bitmap.createBitmap(8, 8, Bitmap.Config.ARGB_8888);
            QuickDesktopBackgroundCapture.onGlFrame(lateFrame, 12);
            check(lateFrame.isRecycled(), "late completion retained");
            check(QuickDesktopBackgroundCapture.takeGlCaptureGeneration() == 0, "cancel still requested");
            publish(14, host);
            int valid = QuickDesktopBackgroundCapture.takeGlCaptureGeneration();
            QuickDesktopBackgroundCapture.onGlFrame(null, valid);
            check(field("pendingHost").get(null) == null, "empty result retained host");
            check(QuickDesktopBackgroundCapture.takeGlCaptureGeneration() == 0, "empty result retried");
            System.out.println("PASS CAPTURE_GENERATION checks=" + checks);
            System.exit(0);
        } catch (Throwable error) { error.printStackTrace(); System.exit(1); }
    }
}
