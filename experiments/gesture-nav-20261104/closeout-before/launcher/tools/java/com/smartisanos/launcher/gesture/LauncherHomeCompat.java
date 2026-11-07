package com.smartisanos.launcher.gesture;

import android.app.Activity;
import android.app.KeyguardManager;
import android.content.Context;
import android.graphics.RectF;
import android.os.Handler;
import android.os.Looper;
import com.smartisanos.launcher.model.ProfileRepository;
import com.smartisanos.launcher.model.ProfileState;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.opengl.GLSurfaceView;
import android.os.Build;
import android.os.Bundle;
import android.os.Message;
import android.os.PowerManager;
import android.os.Process;
import android.os.SystemClock;
import android.os.Trace;
import android.provider.Settings;
import android.util.Log;
import android.view.SurfaceView;
import android.view.View;
import android.view.WindowManager;
import com.smartisanos.launcher.theme.LauncherSettingBridge;
import java.lang.ref.WeakReference;
import java.util.concurrent.atomic.AtomicInteger;

/** Reuses the original HOME scene; optional markers never imply display presentation. */
public final class LauncherHomeCompat {
    private static final String TAG = "SmartisanHome";
    private static final String EXTRA_FROM_HOME_KEY = "android.intent.extra.FROM_HOME_KEY";
    private static final String DIAGNOSTICS = "launcher_home_diagnostics_enabled";
    private static final String ATTACHMENT = "launcher_home_surface_attachment_experiment";
    private static final String WALLPAPER = "launcher_home_opaque_wallpaper_experiment";
    private static volatile boolean diagnostics;
    private static volatile int resume;
    private static volatile int surfaceGeneration;
    private static volatile int contextGeneration;
    private static volatile int sceneIdentity;
    private static volatile int frameIndex;
    private static final AtomicInteger FRAMES = new AtomicInteger();
    private static final AtomicInteger REDRAW_IDS = new AtomicInteger();
    private static WeakReference<GLSurfaceView> surfaceRef;
    private static WeakReference<Activity> activityRef;
    private static boolean originalWallpaper;
    private static boolean wallpaperCaptured;
    private static boolean wallpaperAdjusted;
    private static int lifecycleStrategy;
    private static boolean experimentPaused;

    public static final String ICON_ANIMATION_SETTING = "launcher_home_icon_animation_enabled";
    private static final HomeGestureContract.State GESTURES = new HomeGestureContract.State();
    private static volatile GestureWork gestureWork;
    private static Handler gestureHandler;
    private static Runnable gestureExpiry;
    private static boolean homeResumed;
    private static volatile boolean geometryCapture;

    private static final class GestureWork {
        final HomeGestureContract.Request request;
        final WeakReference<Activity> owner;
        final ProfileRepository profiles;
        final long userSerial;
        // Captured on the UI thread. Bound only after a completed original resume.
        int width, height, rotation, surfaceGen, scene;
        volatile boolean ready;
        GestureWork(HomeGestureContract.Request request, Activity activity,
                ProfileRepository profiles, long userSerial) {
            this.request = request;
            owner = new WeakReference<Activity>(activity);
            this.profiles = profiles;
            this.userSerial = userSerial;
        }
    }

    private LauncherHomeCompat() { }

    /** Returns true when the alias has handed off; it never initializes an original scene. */
    public static boolean redirectLauncherAlias(Activity activity) {
        if (activity == null || activity.getComponentName() == null
                || !"com.smartisanos.launcher.LauncherAlias".equals(
                        activity.getComponentName().getClassName())) return false;
        Intent home = createLauncherHomeIntent(activity);
        if (home.getComponent() != null) return false;
        if (activity.getIntent() != null) home.putExtras(activity.getIntent());
        home.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK | Intent.FLAG_ACTIVITY_CLEAR_TOP
                | Intent.FLAG_ACTIVITY_SINGLE_TOP);
        // Mark the alias finishing before task lookup, or singleTask can deliver
        // the HOME intent back to this alias and finish the intended destination.
        activity.finish();
        try {
            activity.startActivity(home);
            Log.i(TAG, "HOME_ENTRY_REDIRECTED alias=LauncherAlias target=Launcher");
        } catch (android.content.ActivityNotFoundException | SecurityException error) {
            Log.w(TAG, "HOME_ENTRY_REDIRECT_FAILED", error);
        }
        return true;
    }

    /** Shared by entry, settings and coordinated reload; callers retain their own flags/extras. */
    public static Intent createLauncherHomeIntent(Context context) {
        Intent home = new Intent(Intent.ACTION_MAIN).addCategory(Intent.CATEGORY_HOME);
        // Pie treats an app-specified component as a standard task. A package
        // restriction still resolves our single HOME entry without changing HOME.
        if (isCurrentDefaultHome(context)) home.setPackage(context.getPackageName());
        else home.setClassName(context.getPackageName(), "com.smartisanos.launcher.Launcher");
        return home;
    }

    private static int setting(Context context, String key) {
        try { return Settings.Global.getInt(context.getContentResolver(), key, 0); }
        catch (SecurityException error) { return 0; }
    }

    private static boolean diagnosticsEnabled(Context context) {
        return Log.isLoggable(TAG, Log.DEBUG) || setting(context, DIAGNOSTICS) != 0;
    }

    public static void onLauncherCreated(Activity activity) {
        activityRef = new WeakReference<Activity>(activity);
        homeResumed = false;
        wallpaperCaptured = false;
        wallpaperAdjusted = false;
        diagnostics = diagnosticsEnabled(activity);
        mark("ACTIVITY_CREATE");
        acceptGestureContract(activity, activity.getIntent(), "CREATE");
    }

    public static void bindSurface(GLSurfaceView surface) {
        surfaceRef = new WeakReference<GLSurfaceView>(surface);
        diagnostics = diagnosticsEnabled(surface.getContext());
        lifecycleStrategy = 0;
        experimentPaused = false;
        applySurfaceExperiment(surface);
        mark("SURFACE_BIND");
    }

    private static void applySurfaceExperiment(GLSurfaceView surface) {
        // The default path keeps the original platform lifecycle. The API-34
        // experiment is isolated and changes no EGL, format, z-order or engine code.
        if (Build.VERSION.SDK_INT < 34) return;
        int requested = diagnostics && setting(surface.getContext(), ATTACHMENT) != 0 ? 2 : 0;
        if (requested == lifecycleStrategy) return;
        Api34.apply(surface, requested);
        lifecycleStrategy = requested;
        mark("SURFACE_LIFECYCLE strategy=" + requested);
    }

    private static final class Api34 {
        static void apply(SurfaceView surface, int strategy) {
            surface.setSurfaceLifecycle(strategy == 2
                    ? SurfaceView.SURFACE_LIFECYCLE_FOLLOWS_ATTACHMENT
                    : SurfaceView.SURFACE_LIFECYCLE_DEFAULT);
        }
    }

    public static void onLauncherResuming(Activity activity) {
        diagnostics = diagnosticsEnabled(activity);
        resume++;
        frameIndex = 0;
        FRAMES.set(diagnostics ? 4 : 0);
        GLSurfaceView surface = surface();
        if (surface != null) {
            if (experimentPaused) {
                surface.onResume();
                experimentPaused = false;
                mark("EXPERIMENT_GL_RESUME");
            }
            applySurfaceExperiment(surface);
        }
        applyWallpaperExperiment(activity);
        window(activity, "RESUME_BEGIN");
    }

    public static void onLauncherResumed(Activity activity) {
        // J/Eb already restore their existing scene and request an engine update.
        // Do not hide/show a valid Surface, re-layout it, or recreate its textures.
        window(activity, "RESUME_END");
        geometryCapture = Log.isLoggable("HomeGeometry", Log.DEBUG);
        if (geometryCapture && surface()!=null) {
            int[] location=new int[2]; surface().getLocationOnScreen(location);
            Log.i("HomeGeometry", "SURFACE width="+surface().getWidth()+" height="+surface().getHeight()
                    +" x="+location[0]+" y="+location[1]+" scene="+sceneIdentity+" generation="+surfaceGeneration);
        }
        homeResumed = true;
        prepareGestureFrame(activity);
    }

    private static void applyWallpaperExperiment(Activity activity) {
        boolean experiment = diagnostics && setting(activity, WALLPAPER) != 0;
        if (!experiment && !wallpaperAdjusted) return;
        int flag = WindowManager.LayoutParams.FLAG_SHOW_WALLPAPER;
        if (!wallpaperCaptured) {
            originalWallpaper = (activity.getWindow().getAttributes().flags & flag) != 0;
            wallpaperCaptured = true;
        }
        String theme = LauncherSettingBridge.readString(activity, "launcher_theme", "smartisan_theme_black");
        boolean wallpaperTheme = LauncherSettingBridge.readTransparentMode(activity)
                || "smartisan_theme_aero".equals(theme) || "smartisan_theme_trans".equals(theme);
        boolean show = originalWallpaper;
        if (!wallpaperTheme && experiment) show = false;
        boolean current = (activity.getWindow().getAttributes().flags & flag) != 0;
        if (current != show) {
            if (show) activity.getWindow().addFlags(flag);
            else activity.getWindow().clearFlags(flag);
            mark("WALLPAPER_AB show=" + show + " theme=" + theme);
        }
        wallpaperAdjusted = show != originalWallpaper;
    }

    public static void onLauncherPaused(Activity activity) {
        homeResumed = false;
        cancelGestureFor(activity, "pause");
        window(activity, "PAUSE");
    }
    public static void onLauncherStopped(Activity activity) {
        cancelGestureFor(activity, "stop");
        window(activity, "STOP");
        // A retained Surface must not keep scheduling engine updates
        // running behind another app. The experiment alone uses the existing
        // GLSurfaceView pause/resume API; the default lifecycle is unchanged.
        GLSurfaceView surface = surface();
        if (lifecycleStrategy == 2 && surface != null && !experimentPaused) {
            surface.onPause();
            experimentPaused = true;
            mark("EXPERIMENT_GL_PAUSE");
        }
    }
    public static void onLauncherFocusChanged(Activity activity, boolean focused) {
        window(activity, "FOCUS value=" + focused);
    }
    public static void onHomeIntent(Activity activity, Intent intent) {
        if (!isStandardAndroidHome(intent)) cancelGestureFor(activity, "non_home_intent");
        acceptGestureContract(activity, intent, "NEW_INTENT");
        if (isStandardAndroidHome(intent)) {
            window(activity, "HOME_INTENT");
            // Posted after the original onNewIntent/J.a handler, never changes its ordering.
            scheduleGesturePreparation();
        }
    }

    public static void onIconAnimationSettingChanged(Context context) {
        if (!LauncherSettingBridge.readBool(context, ICON_ANIMATION_SETTING, false)) {
            cancelGesture("setting_off");
        }
    }

    private static void acceptGestureContract(Activity activity, Intent intent, String source) {
        if (!isStandardAndroidHome(intent)) return;
        cancelGesture("new_home");
        if (Build.VERSION.SDK_INT < 30) return;
        try {
            // Disabled/no-contract HOME never allocates a handler, request or GL job.
            if (!intent.hasExtra(HomeGestureContract.EXTRA)) return;
            HomeGestureContract.Request request = HomeGestureContract.consume(intent,
                    LauncherSettingBridge.readBool(activity, ICON_ANIMATION_SETTING, false),
                    SystemClock.uptimeMillis());
            request = GESTURES.start(request, SystemClock.uptimeMillis());
            if (request == null) return;
            ProfileRepository profiles = new ProfileRepository(activity);
            long userSerial = profiles.serialFor(request.user);
            if (userSerial < 0 || profiles.stateFor(request.user) != ProfileState.AVAILABLE) {
                GESTURES.cancel();
                // No Binder token is retained without a scheduled expiry.
                GESTURES.expire(request.received + HomeGestureContract.DEADLINE_MS);
                gestureLog(request, "fallback=profile_unavailable");
                return;
            }
            if (gestureHandler == null) gestureHandler = new Handler(Looper.getMainLooper());
            final GestureWork work = new GestureWork(request, activity, profiles, userSerial);
            gestureWork = work;
            if (gestureExpiry != null) gestureHandler.removeCallbacks(gestureExpiry);
            gestureExpiry = new Runnable() {
                @Override public void run() {
                    if (gestureExpiry == this) gestureExpiry = null;
                    GESTURES.expire(SystemClock.uptimeMillis());
                    if (gestureWork == work) cancelGesture("timeout");
                }
            };
            if (!gestureHandler.postAtTime(gestureExpiry,
                    request.received + HomeGestureContract.DEADLINE_MS)) {
                cancelGesture("handler_closed");
                GESTURES.clear();
                gestureExpiry = null;
            }
            gestureLog(request, "received source=" + source + " userSerial=" + userSerial);
        } catch (android.os.BadParcelableException | ClassCastException | IllegalArgumentException error) {
            cancelGesture("malformed");
            try { intent.removeExtra(HomeGestureContract.EXTRA); }
            catch (android.os.BadParcelableException ignored) { /* Unusable parcel; HOME still proceeds. */ }
        }
    }

    private static void prepareGestureFrame(Activity activity) {
        GestureWork work = gestureWork;
        if (work == null || work.owner.get() != activity
                || !homeResumed || sceneIdentity == 0
                || !GESTURES.current(work.request, SystemClock.uptimeMillis())) return;
        KeyguardManager keyguard = (KeyguardManager) activity.getSystemService(Context.KEYGUARD_SERVICE);
        PowerManager power = (PowerManager) activity.getSystemService(Context.POWER_SERVICE);
        if (activity.isFinishing() || activity.isDestroyed()
                || (power != null && !power.isInteractive())
                || (keyguard != null && keyguard.isKeyguardLocked())) {
            cancelGesture("owner_unavailable_or_locked");
            return;
        }
        GLSurfaceView view = surface();
        if (view == null || view.getDisplay() == null || !view.isAttachedToWindow()
                || view.getWidth() <= 0 || view.getHeight() <= 0
                || !view.getHolder().getSurface().isValid()) return;
        int[] origin=new int[2]; view.getLocationOnScreen(origin);
        if(origin[0]!=0 || origin[1]!=0 || !gestureSurfaceUntransformed(view) || view.getDisplay().getRotation()!=0) {
            cancelGesture("surface_transform_unverified"); return;
        }
        work.width = view.getWidth(); work.height = view.getHeight();
        work.rotation = view.getDisplay().getRotation();
        work.surfaceGen = surfaceGeneration; work.scene = sceneIdentity;
        work.ready = true;
    }

    private static boolean gestureSurfaceUntransformed(View view) {
        for(int depth=0;view!=null;depth++) {
            if(depth>=64 || view.getScaleX()!=1f || view.getScaleY()!=1f
                    || view.getRotation()!=0f || view.getRotationX()!=0f || view.getRotationY()!=0f
                    || view.getTranslationX()!=0f || view.getTranslationY()!=0f) return false;
            Object parent=view.getParent();view=parent instanceof View?(View)parent:null;
        }
        return true;
    }

    private static void scheduleGesturePreparation() {
        final GestureWork work = gestureWork;
        if (work == null) return;
        gestureHandler.post(new Runnable() {
            @Override public void run() {
                Activity owner = work.owner.get();
                if (gestureWork == work && owner != null) prepareGestureFrame(owner);
            }
        });
    }

    /** One read-only lookup on the next original GL frame; no queue waits or requestRender. */
    private static void sampleGestureFrame() {
        final GestureWork work = gestureWork;
        if (work == null || !work.ready) return;
        if (!GESTURES.current(work.request, SystemClock.uptimeMillis())) return;
        final HomeGestureContract.Request request = GESTURES.claim(SystemClock.uptimeMillis());
        if (request != work.request) return;
        HomeIconTarget.Result found;
        try {
            if (work.surfaceGen != surfaceGeneration || work.scene != sceneIdentity) {
                found = new HomeIconTarget.Result(null, "scene_or_surface_changed");
            } else {
                found = HomeIconTarget.resolve(request.component, request.user, work.profiles, work.width, work.height);
            }
        } catch (ReflectiveOperationException | ClassCastException | IllegalArgumentException error) {
            found = new HomeIconTarget.Result(null, "model_unavailable_" + error.getClass().getSimpleName());
        }
        final HomeIconTarget.Result result = found;
        gestureHandler.post(new Runnable() {
            @Override public void run() { completeGestureFrame(work, result); }
        });
    }

    private static void completeGestureFrame(GestureWork work, HomeIconTarget.Result result) {
        if (gestureWork != work || !GESTURES.current(work.request, SystemClock.uptimeMillis())) return;
        Activity owner = work.owner.get();
        GLSurfaceView view = surface();
        if (owner == null || owner.isFinishing() || owner.isDestroyed() || view == null
                || !LauncherSettingBridge.readBool(owner, ICON_ANIMATION_SETTING, false)
                || view.getDisplay() == null || view.getDisplay().getRotation() != work.rotation
                || view.getWidth() != work.width || view.getHeight() != work.height
                || work.surfaceGen != surfaceGeneration || work.scene != sceneIdentity
                || !view.isAttachedToWindow() || !view.getHolder().getSurface().isValid()) {
            cancelGesture("stale_owner_or_geometry");
            return;
        }
        KeyguardManager keyguard = (KeyguardManager) owner.getSystemService(Context.KEYGUARD_SERVICE);
        PowerManager power = (PowerManager) owner.getSystemService(Context.POWER_SERVICE);
        if ((keyguard != null && keyguard.isKeyguardLocked())
                || (power != null && !power.isInteractive())) {
            cancelGesture("locked_before_reply");
            return;
        }
        int[] origin=new int[2]; view.getLocationOnScreen(origin);
        if(origin[0]!=0 || origin[1]!=0 || !gestureSurfaceUntransformed(view)) {
            cancelGesture("surface_moved_before_reply");return;
        }
        if (result.position == null) {
            cancelGesture(result.reason);
            return;
        }
        // The resolver admits only the calibrated static-composer subset.
        if (!HomeGestureContract.validPosition(result.position)
                || !GESTURES.finish(work.request, SystemClock.uptimeMillis())) {
            cancelGesture("invalid_position");
            return;
        }
        gestureWork = null;
        try {
            HomeGestureContract.send(work.request, result.position);
            gestureLog(work.request, "sent rect=" + result.position + " source=" + result.reason
                    + " surface=false system_target_applied=unknown visual=unknown");
        } catch (android.os.RemoteException | IllegalArgumentException error) {
            gestureLog(work.request, "fallback=callback_failed");
        }
    }

    private static void cancelGestureFor(Activity activity, String reason) {
        GestureWork work = gestureWork;
        if (work != null && work.owner.get() == activity) cancelGesture(reason);
    }

    private static void cancelGesture(String reason) {
        GestureWork work = gestureWork;
        gestureWork = null;
        GESTURES.cancel();
        if (work != null) gestureLog(work.request, "fallback=" + reason);
        // A single bounded expiry also clears the recent callback token after cancellation.
    }

    private static void gestureLog(HomeGestureContract.Request request, String event) {
        Log.i(TAG, "GESTURE_S1 requestId=" + request.id + " " + event
                + " component=" + request.component.flattenToShortString()
                + " elapsed_ns=" + SystemClock.elapsedRealtimeNanos());
    }

    public static void onLauncherDestroyed(Activity activity) {
        cancelGestureFor(activity, "destroy");
        window(activity, "ACTIVITY_DESTROY");
        Activity current = activityRef == null ? null : activityRef.get();
        if (current == activity) {
            homeResumed = false;
            GESTURES.clear();
            if (gestureHandler != null && gestureExpiry != null)
                gestureHandler.removeCallbacks(gestureExpiry);
            gestureExpiry = null;
            activityRef = null;
            surfaceRef = null;
            FRAMES.set(0);
        }
    }

    public static void onSurfaceAttached(GLSurfaceView surface) { surfaceEvent(surface, "ATTACH"); }
    public static void onSurfaceDetached(GLSurfaceView surface) {
        cancelGesture("surface_detached");
        surfaceEvent(surface, "DETACH");
    }
    public static void onWindowVisibilityChanged(GLSurfaceView surface, int visibility) {
        surfaceEvent(surface, "WINDOW_VISIBLE value=" + visibility);
    }
    public static void onSurfaceCreated(GLSurfaceView surface) {
        surfaceGeneration++;
        surfaceEvent(surface, "SURFACE_CREATE");
    }
    public static void onSurfaceDestroyed(GLSurfaceView surface) {
        cancelGesture("surface_destroyed");
        surfaceEvent(surface, "SURFACE_DESTROY");
    }
    public static void onSurfaceSizeChanged(GLSurfaceView surface, int width, int height) {
        GestureWork work = gestureWork;
        if (work != null && work.ready && (work.width != width || work.height != height))
            cancelGesture("size_changed");
        else if (work != null && !work.ready) scheduleGesturePreparation();
        surfaceEvent(surface, "SURFACE_SIZE width=" + width + " height=" + height);
    }

    /** Observe the actual platform callback without changing its thread or ordering. */
    public static Runnable traceSurfaceRedraw(GLSurfaceView view, final Runnable finishDrawing) {
        if (!diagnostics) return finishDrawing;
        final int id = REDRAW_IDS.incrementAndGet();
        mark("SURFACE_REDRAW_REQUEST id=" + id + " view=" + System.identityHashCode(view));
        return new Runnable() {
            @Override public void run() {
                mark("SURFACE_REDRAW_CALLBACK_BEGIN id=" + id + " presented=unknown");
                try {
                    finishDrawing.run();
                } finally {
                    mark("SURFACE_REDRAW_CALLBACK_END id=" + id + " presented=unknown");
                }
            }
        };
    }
    public static void onEglContextCreated() {
        contextGeneration++;
        mark("EGL_CONTEXT_CREATE");
    }
    public static int getEglContextGeneration() {
        return contextGeneration;
    }
    public static void onRendererSizeChanged(int width, int height) {
        mark("GL_SURFACE_SIZE width=" + width + " height=" + height);
    }
    public static void onSceneCreate(Object scene) {
        GestureWork work = gestureWork;
        if (work != null && work.ready) cancelGesture("scene_changed");
        sceneIdentity = System.identityHashCode(scene);
        if (work != null && !work.ready) scheduleGesturePreparation();
        mark("SCENE_CREATE");
    }

    /** Before GLSurfaceView performs EGL swap; this is not a first-present signal. */
    public static void onRendererFrameComplete() {
        if (geometryCapture) { geometryCapture=false; HomeGeometryDiagnostics.capture(); }
        if (gestureWork != null) sampleGestureFrame();
        if (!diagnostics || FRAMES.get() <= 0) return;
        int left = FRAMES.getAndDecrement();
        if (left <= 0) return;
        final int session = resume;
        final int generation = surfaceGeneration;
        final int index = ++frameIndex;
        mark("GL_DRAW_COMPLETE frame=" + index + " presented=unknown");
        GLSurfaceView surface = surface();
        if (surface == null) return;
        surface.queueEvent(new Runnable() {
            @Override public void run() {
                if (diagnostics && resume == session && surfaceGeneration == generation) {
                    // The next GL loop follows the swap attempt. It gives neither
                    // a swap return code nor a compositor/display present fence.
                    mark("GL_LOOP_AFTER_SWAP_ATTEMPT frame=" + index + " presented=unknown");
                }
            }
        });
    }

    private static GLSurfaceView surface() { return surfaceRef == null ? null : surfaceRef.get(); }

    private static void surfaceEvent(GLSurfaceView surface, String event) {
        if (!diagnostics) return;
        mark(event + " view=" + System.identityHashCode(surface)
                + " valid=" + surface.getHolder().getSurface().isValid()
                + " attached=" + surface.isAttachedToWindow()
                + " visibility=" + surface.getVisibility()
                + " windowVisibility=" + surface.getWindowVisibility());
    }

    private static void window(Activity activity, String event) {
        if (!diagnostics) return;
        KeyguardManager keyguard = (KeyguardManager) activity.getSystemService(Context.KEYGUARD_SERVICE);
        PowerManager power = (PowerManager) activity.getSystemService(Context.POWER_SERVICE);
        View decor = activity.getWindow().getDecorView();
        GLSurfaceView surface = surface();
        mark(event + " activity=" + System.identityHashCode(activity)
                + " focus=" + activity.hasWindowFocus()
                + " decorVisibility=" + decor.getWindowVisibility()
                + " flags=" + Integer.toHexString(activity.getWindow().getAttributes().flags)
                + " surfaceValid=" + (surface != null && surface.getHolder().getSurface().isValid())
                + " interactive=" + (power != null && power.isInteractive())
                + " locked=" + (keyguard != null && keyguard.isKeyguardLocked()));
    }

    public static void mark(String event) {
        if (!diagnostics) return;
        Log.i(TAG, "HOME_TIMING " + event + " elapsed_ns=" + SystemClock.elapsedRealtimeNanos()
                + " monotonic_ns=" + System.nanoTime() + " pid=" + Process.myPid()
                + " resume=" + resume + " surfaceGen=" + surfaceGeneration
                + " contextGen=" + contextGeneration + " scene=" + sceneIdentity
                + " thread=" + Thread.currentThread().getName());
        String trace = "HOME:" + event;
        Trace.beginSection(trace.length() > 120 ? trace.substring(0, 120) : trace);
        Trace.endSection();
    }


    public static void logHomeIntentReceived(Intent intent) {
        if (intent == null) {
            return;
        }
        Log.i(TAG, "HOME_INTENT_RECEIVED action=" + intent.getAction()
                + " categories=" + intent.getCategories()
                + " flags=0x" + Integer.toHexString(intent.getFlags())
                + " FROM_HOME_KEY=" + intent.getBooleanExtra(EXTRA_FROM_HOME_KEY, false));
    }

    public static boolean isStandardAndroidHome(Intent intent) {
        return intent != null
                && Intent.ACTION_MAIN.equals(intent.getAction())
                && intent.hasCategory(Intent.CATEGORY_HOME);
    }

    public static boolean isCurrentDefaultHome(Context context) {
        if (context == null) {
            return false;
        }
        try {
            Intent home = new Intent(Intent.ACTION_MAIN);
            home.addCategory(Intent.CATEGORY_HOME);
            ResolveInfo resolved = context.getPackageManager().resolveActivity(
                    home, PackageManager.MATCH_DEFAULT_ONLY);
            return resolved != null
                    && resolved.activityInfo != null
                    && context.getPackageName().equals(resolved.activityInfo.packageName);
        } catch (Throwable error) {
            Log.w(TAG, "HOME_GATE_DEFAULT_HOME query_failed", error);
            return false;
        }
    }

    public static void logHomeGateFlags(int flags) {
        boolean broughtToFront = (flags & 0x00400000) == 0x00400000;
        Log.i(TAG, "HOME_FLAGS_HEX flags=0x" + Integer.toHexString(flags));
        Log.i(TAG, "HOME_GATE_FLAGS flags=0x" + Integer.toHexString(flags));
        Log.i(TAG, "HOME_BROUGHT_TO_FRONT " + broughtToFront);
        Log.i(TAG, "HOME_GATE_BROUGHT_TO_FRONT " + broughtToFront);
        Log.i(TAG, "HOME_ALREADY_ON_HOME " + !broughtToFront);
        Log.i(TAG, "HOME_GATE_ALREADY_ON_HOME " + !broughtToFront);
    }

    public static void logHomeGate(String gate, boolean value) {
        Log.i(TAG, gate + " " + value);
    }

    public static void logHomeGateEvent(String event) {
        Log.i(TAG, event);
    }

    public static void logPageViewNotReady() {
        logHomeGateEvent("HOME_GATE_PAGE_VIEW_NOT_READY");
    }

    public static void logOriginalHomeNoOp() {
        logHomeGateEvent("HOME_ALREADY_ON_FIRST_PAGE reason=original_noop_or_debounced");
    }

    public static void logOriginalHomeAnimationRequested() {
        logHomeGateEvent("HOME_CREATE_SCROLL_EVENT_SENT");
        logHomeGateEvent("HOME_RETURN_TO_FIRST_PAGE original_animation_requested=true");
    }
}
