package com.smartisanos.launcher.quickdesktop;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.SharedPreferences;
import android.os.Looper;
import android.os.SystemClock;
import android.view.MotionEvent;
import android.widget.FrameLayout;
import java.lang.reflect.Field;
import java.lang.reflect.Proxy;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.ref.WeakReference;

/** No Launcher data or windows: real event/velocity APIs, controlled capture and View host. */
public final class QuickDesktopCaptureGateProbe {
    private static int checks;
    private static boolean enabled = true;

    private static final class RootProbe extends FrameLayout {
        static boolean closeDuringShow;
        RootProbe(Context context) { super(context); }
        @Override public android.os.IBinder getWindowToken() {
            if (closeDuringShow) {
                closeDuringShow = false;
                QuickDesktopController.onHomeIntent();
            }
            return null;
        }
    }

    private static void check(boolean condition, String message) {
        if (!condition) throw new AssertionError(message);
        checks++;
    }

    private static MotionEvent event(int action, float x, float y) {
        long now = SystemClock.uptimeMillis();
        return MotionEvent.obtain(now, now, action, x, y, 0);
    }

    private static int touch(int action, float x, float y) {
        com.smartisanos.launcher.view.Eb.publishProbeFrame();
        MotionEvent e = event(action, x, y);
        try { return QuickDesktopController.onTouch(e, 1); } finally { e.recycle(); }
    }

    private static void progress(float x) {
        MotionEvent e = event(MotionEvent.ACTION_MOVE, x, 800);
        try { QuickDesktopController.onProgress(.8f, e); } finally { e.recycle(); }
    }

    private static boolean ready() throws Exception {
        Field f = QuickDesktopController.class.getDeclaredField("backgroundReadyForGesture");
        f.setAccessible(true);
        return f.getBoolean(null);
    }

    private static boolean pendingOpen() throws Exception {
        Field f = QuickDesktopController.class.getDeclaredField("openAfterBackgroundReady");
        f.setAccessible(true);
        return f.getBoolean(null);
    }

    private static Object controllerField(String name) throws Exception {
        Field field = QuickDesktopController.class.getDeclaredField(name);
        field.setAccessible(true);
        return field.get(null);
    }

    private static int pointerDown(int count) {
        MotionEvent.PointerProperties[] properties = new MotionEvent.PointerProperties[count];
        MotionEvent.PointerCoords[] coordinates = new MotionEvent.PointerCoords[count];
        for (int i = 0; i < count; i++) {
            properties[i] = new MotionEvent.PointerProperties();
            properties[i].id = i;
            properties[i].toolType = MotionEvent.TOOL_TYPE_FINGER;
            coordinates[i] = new MotionEvent.PointerCoords();
            coordinates[i].x = 600 + i * 20;
            coordinates[i].y = 800 + i * 20;
            coordinates[i].pressure = 1;
            coordinates[i].size = 1;
        }
        long now = SystemClock.uptimeMillis();
        MotionEvent event = MotionEvent.obtain(now, now, MotionEvent.ACTION_POINTER_DOWN
                | ((count - 1) << MotionEvent.ACTION_POINTER_INDEX_SHIFT), count,
                properties, coordinates, 0, 0, 1, 1, 0, 0,
                android.view.InputDevice.SOURCE_TOUCHSCREEN, 0);
        try { return QuickDesktopController.onTouch(event, .5f); }
        finally { event.recycle(); }
    }

    public static void main(String[] args) throws Exception {
        try { runProbe(args.length == 1 && "--close-only".equals(args[0])); }
        catch (Throwable error) { error.printStackTrace(); System.exit(1); }
    }

    private static void closeAndCheckRetainedHost(QuickDesktopHostView host) throws Exception {
        int clearsBeforeClose = host.clears;
        QuickDesktopController.onHomeIntent();
        check(host.getOpenProgress() == 0 && !ready(), "HOME did not clear owner");
        check(host.clears == clearsBeforeClose + 1 && controllerField("hostView") == host,
                "closing a retained host must clear its background snapshots");
    }

    private static void runProbe(boolean closeOnly) throws Exception {
        if (Looper.myLooper() == null) Looper.prepareMainLooper();
        Class<?> activityThread = Class.forName("android.app.ActivityThread");
        Object thread = activityThread.getMethod("systemMain").invoke(null);
        Context system = ((Context) activityThread.getMethod("getSystemContext").invoke(thread))
                .createPackageContext("com.smartisanos.launcher", Context.CONTEXT_IGNORE_SECURITY);
        final SharedPreferences prefs = (SharedPreferences) Proxy.newProxyInstance(
                SharedPreferences.class.getClassLoader(), new Class<?>[]{SharedPreferences.class},
                new InvocationHandler() {
                    @Override public Object invoke(Object p, Method m, Object[] a) {
                        return m.getName().equals("getBoolean") ? enabled : null;
                    }
                });
        Context context = new ContextWrapper(system) {
            @Override public Context getApplicationContext() { return this; }
            @Override public SharedPreferences getSharedPreferences(String name, int mode) { return prefs; }
        };
        // This is a controller-only probe. Bypass OEM View constructors that require the
        // Launcher UID; host methods are controlled and no view is attached or drawn.
        Class<?> unsafeClass = Class.forName("sun.misc.Unsafe");
        Field unsafeField = unsafeClass.getDeclaredField("theUnsafe");
        unsafeField.setAccessible(true);
        Object unsafe = unsafeField.get(null);
        Method allocate = unsafeClass.getMethod("allocateInstance", Class.class);
        QuickDesktopHostView host = (QuickDesktopHostView) allocate.invoke(unsafe, QuickDesktopHostView.class);
        FrameLayout root = (FrameLayout) allocate.invoke(unsafe, RootProbe.class);
        Field viewContext = android.view.View.class.getDeclaredField("mContext");
        viewContext.setAccessible(true);
        viewContext.set(host, context);
        viewContext.set(root, context);
        Field hostField = QuickDesktopController.class.getDeclaredField("hostView");
        hostField.setAccessible(true);
        hostField.set(null, host);
        Field rootField = QuickDesktopController.class.getDeclaredField("rootRef");
        rootField.setAccessible(true);
        rootField.set(null, new WeakReference<android.view.ViewGroup>(root));
        if (closeOnly) {
            // Exercise cleanup without the shell process's OEM ViewConfiguration dependency.
            host.setOpenProgress(1f, "probe-open");
            closeAndCheckRetainedHost(host);
            System.out.println("PASS CAPTURE_GATE_CLOSE_ONLY checks=" + checks);
            return;
        }
        for (int i = 0; i < 20; i++) {
            touch(MotionEvent.ACTION_DOWN, 100, 800);
            progress(500); // Unaccepted progress must not grant ownership.
            touch(MotionEvent.ACTION_UP, 100, 800);
        }
        check(QuickDesktopBackgroundCapture.requests == 0, "ordinary operations captured");
        check(host.refreshes == 0 && host.clears == 0, "DOWN changed content/background");
        check(host.getOpenProgress() == 0, "unaccepted progress revealed host");

        for (int mode : new int[] {12, 9, 13, 10}) {
            com.smartisanos.launcher.view.Eb.displayMode = mode;
            touch(MotionEvent.ACTION_DOWN, 100, 800);
            check(QuickDesktopController.canRevealFromRoot(), "normal grid lost eligibility");
            touch(MotionEvent.ACTION_UP, 100, 800);
        }

        for (int mode : new int[] {8,11,0}) {
            com.smartisanos.launcher.view.Eb.displayMode = mode;
            for (int i=0;i<20;i++) {
                touch(MotionEvent.ACTION_DOWN,100,800);
                check(!QuickDesktopController.canRevealFromRoot(), "unsupported mode took RootView gesture");
                QuickDesktopController.requestShow(); progress(600);
                touch(MotionEvent.ACTION_UP,600,800);
            }
        }
        com.smartisanos.launcher.view.Eb.displayMode=12;
        com.smartisanos.launcher.view.Eb.editing=true;
        touch(MotionEvent.ACTION_DOWN,100,800); QuickDesktopController.requestShow();
        touch(MotionEvent.ACTION_UP,600,800);
        check(QuickDesktopBackgroundCapture.requests==0 && host.getOpenProgress()==0,
                "overview/editor left an invisible touch owner");
        com.smartisanos.launcher.view.Eb.editing=false;
        touch(MotionEvent.ACTION_DOWN,100,800);
        com.smartisanos.launcher.view.Eb.displayMode=8;
        com.smartisanos.launcher.view.Eb.publishProbeFrame();
        check(!QuickDesktopController.canRevealFromRoot(), "mode change kept old eligibility");
        QuickDesktopController.requestShow(); touch(MotionEvent.ACTION_UP,600,800);
        check(QuickDesktopBackgroundCapture.requests==0, "mode change captured");
        com.smartisanos.launcher.view.Eb.displayMode=12;

        for (int mode : new int[] {12,9,13,10}) {
            com.smartisanos.launcher.view.Eb.displayMode=mode;
            com.smartisanos.launcher.view.Eb.pageIndex=1;
            touch(MotionEvent.ACTION_DOWN,100,800);
            check(!QuickDesktopController.canRevealFromRoot(), "non-home page acquired host");
            QuickDesktopController.requestShow(); touch(MotionEvent.ACTION_UP,600,800);
        }
        com.smartisanos.launcher.view.Eb.pageIndex=0;
        com.smartisanos.launcher.view.Eb.displayMode=12;

        touch(MotionEvent.ACTION_DOWN, 100, 800);
        QuickDesktopController.onRootGestureCancelled();
        QuickDesktopController.requestShow(); // Original recognizer has accepted this sequence.
        check(touch(MotionEvent.ACTION_MOVE,600,800)==2, "accepted MOVE reached cancelled scene");
        QuickDesktopController.requestShow();
        check(QuickDesktopBackgroundCapture.requests == 1, "accepted sequence captured twice");
        check(host.refreshes == 1 && host.clears == 1, "accepted sequence not prepared once");
        check(!ready(), "empty snapshot allowed reveal");
        check(Math.abs(host.getOpenProgress() - .5f) < .001f, "physical progress changed");
        QuickDesktopBackgroundCapture.ready();
        check(ready(), "completed snapshot not accepted");
        check(touch(MotionEvent.ACTION_UP, 600, 800)==1, "accepted UP also reached GL page owner");
        check(host.getOpenProgress() == 1, "release no longer opens");
        closeAndCheckRetainedHost(host);

        touch(MotionEvent.ACTION_DOWN, 100, 2500);
        QuickDesktopController.requestShow();
        touch(MotionEvent.ACTION_UP, 600, 2500);
        check(QuickDesktopBackgroundCapture.requests == 1, "Dock candidate captured");

        touch(MotionEvent.ACTION_DOWN, 100, 800);
        QuickDesktopController.requestShow();
        progress(200);
        touch(MotionEvent.ACTION_CANCEL, 200, 800);
        QuickDesktopBackgroundCapture.ready();
        check(host.getOpenProgress() == 0 && !ready(), "cancel completion reopened host");

        touch(MotionEvent.ACTION_DOWN, 100, 800);
        QuickDesktopController.requestShow();
        progress(600);
        touch(MotionEvent.ACTION_UP, 600, 800); // Fast release before worker completion.
        check(!ready() && Math.abs(host.getOpenProgress() - .001f) < .0001f,
                "fast release animated before background was available");
        check(pendingOpen(), "fast release did not retain opening target");
        QuickDesktopBackgroundCapture.ready();
        check(ready() && Math.abs(host.getOpenProgress() - .001f) < .0001f,
                "unattached test window advanced pending opening");
        QuickDesktopController.onHomeIntent();
        check(!pendingOpen(), "HOME retained deferred opening");

        touch(MotionEvent.ACTION_DOWN,100,800); QuickDesktopController.requestShow(); progress(600);
        com.smartisanos.launcher.view.Eb.displayMode=8;
        com.smartisanos.launcher.view.Eb.publishProbeFrame();
        QuickDesktopBackgroundCapture.ready();
        check(host.getOpenProgress()==0 && !ready(), "late background covered overview");
        com.smartisanos.launcher.view.Eb.displayMode=12;

        touch(MotionEvent.ACTION_DOWN,100,800);
        QuickDesktopController.onRootGestureCancelled(); QuickDesktopController.requestShow(); progress(600);
        touch(MotionEvent.ACTION_UP,600,800); // Snapshot never completes: no actual window.
        int failedRequestCount=QuickDesktopBackgroundCapture.requests;
        touch(MotionEvent.ACTION_DOWN,100,800);
        check(QuickDesktopController.canRevealFromRoot() && host.getOpenProgress()==0,
                "unpresented opening blocked fresh DOWN");
        check(!QuickDesktopController.hasCancelledRootGesture(), "cancel flag leaked across DOWN");
        QuickDesktopBackgroundCapture.ready();
        check(!ready(), "unpresented old completion revived host");
        QuickDesktopController.requestShow();
        check(QuickDesktopBackgroundCapture.requests==failedRequestCount+1, "fresh opening lost capture");
        touch(MotionEvent.ACTION_CANCEL,100,800);

        touch(MotionEvent.ACTION_DOWN,100,800);
        QuickDesktopController.onRootGestureCancelled(); QuickDesktopController.requestShow();
        QuickDesktopBackgroundCapture.ready();
        RootProbe.closeDuringShow = true;
        progress(600);
        check(host.getOpenProgress()==0 && !ready(), "window-time cancellation revived hidden host");
        check(touch(MotionEvent.ACTION_UP,600,800)==1, "closed window leaked UP into cancelled target");
        touch(MotionEvent.ACTION_DOWN,100,800);
        check(QuickDesktopController.canRevealFromRoot(), "window-time cancellation blocked next gesture");
        touch(MotionEvent.ACTION_CANCEL,100,800);

        // Transfer a half-open root gesture to the original multi-pointer owner.
        for (int pointers = 2; pointers <= 4; pointers++) {
            for (boolean backgroundReady : new boolean[]{false, true}) {
                touch(MotionEvent.ACTION_DOWN, 100, 800);
                QuickDesktopController.onRootGestureCancelled();
                QuickDesktopController.requestShow();
                progress(600);
                if (backgroundReady) QuickDesktopBackgroundCapture.ready();
                for (int count = 2; count <= pointers; count++) {
                    check(pointerDown(count) == 0, "multi-pointer owner did not receive event");
                }
                check(host.getOpenProgress() == 0 && !ready(), "multi-pointer retained reveal");
                check(!QuickDesktopController.canRevealFromRoot(), "multi-pointer retained opening");
                check(!pendingOpen(), "multi-pointer retained delayed opening");
                check(controllerField("openingVelocityTracker") == null, "multi-pointer retained tracker");
                check(!QuickDesktopController.hasCancelledRootGesture(), "multi-pointer inherited old cancel owner");
                QuickDesktopBackgroundCapture.ready();
                QuickDesktopController.onBackgroundReady(host);
                check(host.getOpenProgress() == 0 && !ready(), "late frame reopened after multi-pointer");
                check(touch(MotionEvent.ACTION_MOVE, 650, 800) == 0, "multi-pointer MOVE was swallowed");
                check(touch(MotionEvent.ACTION_UP, 650, 800) == 0, "multi-pointer terminal was swallowed");
                touch(MotionEvent.ACTION_DOWN, 100, 800);
                check(QuickDesktopController.canRevealFromRoot(), "multi-pointer blocked next DOWN");
                touch(MotionEvent.ACTION_CANCEL, 100, 800);
            }
        }

        // Editing, Folder mode and leaving page zero must revoke a half-open candidate.
        for (int invalidOwner = 0; invalidOwner < 3; invalidOwner++) {
            for (boolean backgroundReady : new boolean[]{false, true}) {
                touch(MotionEvent.ACTION_DOWN, 100, 800);
                QuickDesktopController.onRootGestureCancelled();
                QuickDesktopController.requestShow(); progress(600);
                if (backgroundReady) QuickDesktopBackgroundCapture.ready();
                com.smartisanos.launcher.view.Eb.editing = invalidOwner == 0;
                com.smartisanos.launcher.view.Eb.displayMode = invalidOwner == 1 ? 8 : 12;
                com.smartisanos.launcher.view.Eb.pageIndex = invalidOwner == 2 ? 1 : 0;
                check(touch(MotionEvent.ACTION_MOVE, 650, 800) == 2, "revoked MOVE reached cancelled GL target");
                check(host.getOpenProgress() == 0 && !ready(), "invalid owner kept half-open host");
                check(!QuickDesktopController.canRevealFromRoot(), "invalid owner retained eligibility");
                check(controllerField("openingVelocityTracker") == null, "invalid owner retained tracker");
                QuickDesktopBackgroundCapture.ready();
                QuickDesktopController.onBackgroundReady(host);
                check(host.getOpenProgress() == 0 && !ready(), "late frame covered new workspace owner");
                check(touch(MotionEvent.ACTION_UP, 650, 800) == 1, "revoked terminal reached cancelled GL target");
                touch(MotionEvent.ACTION_DOWN, 100, 800);
                check(!QuickDesktopController.hasCancelledRootGesture(), "new owner inherited old CANCEL");
                check(!QuickDesktopController.canRevealFromRoot(), "new owner lost exclusion");
                touch(MotionEvent.ACTION_CANCEL, 100, 800);
                com.smartisanos.launcher.view.Eb.editing = false;
                com.smartisanos.launcher.view.Eb.displayMode = 12;
                com.smartisanos.launcher.view.Eb.pageIndex = 0;
                touch(MotionEvent.ACTION_DOWN, 100, 800);
                check(QuickDesktopController.canRevealFromRoot(), "workspace return blocked next DOWN");
                touch(MotionEvent.ACTION_CANCEL, 100, 800);
            }
        }

        for (int lifecycle = 0; lifecycle < 5; lifecycle++) {
            for (boolean backgroundReady : new boolean[]{false, true}) {
                touch(MotionEvent.ACTION_DOWN, 100, 800);
                QuickDesktopController.onRootGestureCancelled();
                QuickDesktopController.requestShow(); progress(600);
                if (backgroundReady) QuickDesktopBackgroundCapture.ready();
                if (lifecycle == 0) QuickDesktopController.onLauncherStopped();
                if (lifecycle == 1) QuickDesktopController.onHomeIntent();
                if (lifecycle == 2) {
                    QuickDesktopController.markActionLaunchPending("probe-covered");
                    QuickDesktopController.onLauncherStopped();
                }
                if (lifecycle == 3) {
                    QuickDesktopController.markSearchLaunchPending("probe-search");
                    QuickDesktopController.onSearchSurfaceReady();
                }
                if (lifecycle == 4) {
                    QuickDesktopController.markActionLaunchPending("probe-no-stop");
                    QuickDesktopController.onLauncherResumed();
                }
                check(host.getOpenProgress() == 0 && !ready(), "lifecycle retained host");
                check(!pendingOpen(), "lifecycle retained delayed open");
                check(controllerField("openingVelocityTracker") == null, "lifecycle retained tracker");
                check(!((Boolean) controllerField("actionLaunchPending")), "lifecycle retained action");
                check(!((Boolean) controllerField("searchLaunchPending")), "lifecycle retained search");
                QuickDesktopBackgroundCapture.ready();
                QuickDesktopController.onBackgroundReady(host);
                check(host.getOpenProgress() == 0 && !ready(), "late result revived covered host");
                touch(MotionEvent.ACTION_DOWN, 100, 800);
                check(QuickDesktopController.canRevealFromRoot(), "lifecycle blocked next DOWN");
                touch(MotionEvent.ACTION_CANCEL, 100, 800);
            }
        }
        touch(MotionEvent.ACTION_DOWN, 100, 800);
        QuickDesktopController.requestShow(); progress(600);
        QuickDesktopController.onLauncherResumed();
        check(host.getOpenProgress() > 0, "ordinary resume discarded active gesture");
        QuickDesktopController.onHomeIntent();
        for (boolean detach : new boolean[]{false, true}) {
            touch(MotionEvent.ACTION_DOWN, 100, 800);
            QuickDesktopController.requestShow(); progress(600);
            if (detach) QuickDesktopController.onHostDetached(host);
            else QuickDesktopController.onLauncherDestroyed();
            check(controllerField("hostView") == null, "destroy/detach retained host");
            check(host.getOpenProgress() == 0 && !ready(), "destroy/detach retained reveal");
            check(controllerField("openingVelocityTracker") == null, "destroy/detach retained tracker");
            QuickDesktopController.onBackgroundReady(host);
            check(!ready(), "detached completion revived host");
            hostField.set(null, host);
            rootField.set(null, new WeakReference<android.view.ViewGroup>(root));
            touch(MotionEvent.ACTION_DOWN, 100, 800);
            check(QuickDesktopController.canRevealFromRoot(), "replacement host blocked next DOWN");
            touch(MotionEvent.ACTION_CANCEL, 100, 800);
        }

        enabled = false;
        int requests = QuickDesktopBackgroundCapture.requests;
        touch(MotionEvent.ACTION_DOWN, 100, 800);
        QuickDesktopController.requestShow();
        progress(600);
        check(QuickDesktopBackgroundCapture.requests == requests, "disabled capture");
        QuickDesktopController.onLauncherDestroyed();
        check(!ready(), "destroyed host retained owner");
        System.out.println("PASS CAPTURE_GATE checks=" + checks);
        System.exit(0);
    }
}
