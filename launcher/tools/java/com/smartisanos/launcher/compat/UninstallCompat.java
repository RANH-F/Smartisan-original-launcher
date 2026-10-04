package com.smartisanos.launcher.compat;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.UserHandle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import android.widget.Toast;

import com.smartisanos.launcher.model.ProfileRepository;

/**
 * Cross-ROM uninstall bridge.
 *
 * The original Smartisan launcher calls android.content.pm.ApplicationManager,
 * a Smartisan OS private API. On ordinary Android ROMs that API is absent or a
 * no-op compatibility stub, so the launcher can remove its icon while the APK
 * remains installed. This bridge starts the public system uninstaller instead.
 */
public final class UninstallCompat {
    private static final String TAG = "UninstallCompat";
    private static volatile boolean sPendingSystemUninstall;
    private static volatile Object sPendingItem;
    private static volatile boolean sRemovalCommitted;

    private UninstallCompat() {
    }

    public static void requestUninstall(String packageName) {
        // Package-only callers (for example theme removal) address the current user.
        requestUninstall(packageName, null);
    }

    private static void requestUninstall(String packageName, Object item) {
        if (TextUtils.isEmpty(packageName)) {
            return;
        }
        if (sPendingSystemUninstall) {
            Log.w(TAG, "Uninstall ignored: another system confirmation is pending");
            return;
        }
        Context context = null;
        try {
            Object launcherApp = Class.forName("com.smartisanos.launcher.ja")
                    .getMethod("getInstance").invoke(null);
            if (launcherApp != null) {
                Object app = launcherApp.getClass().getMethod("getApplication").invoke(launcherApp);
                if (app instanceof Context) {
                    context = (Context) app;
                }
            }
        } catch (Throwable ignored) {
        }
        if (context == null) {
            try {
                Object launcher = Class.forName("com.smartisanos.launcher.J")
                        .getMethod("getInstance").invoke(null);
                Object ctx = launcher == null ? null : launcher.getClass().getMethod("getContext").invoke(launcher);
                if (ctx instanceof Context) {
                    context = (Context) ctx;
                }
            } catch (Throwable ignored) {
            }
        }
        if (context == null) {
            queueSceneCleanup();
            Log.w(TAG, "requestUninstall ignored: no context for " + packageName);
            return;
        }
        UserHandle target = currentUserTarget(context, item);
        if (target == null) {
            cancelSystemUninstallScene();
            final Context toastContext = context;
            new Handler(Looper.getMainLooper()).post(new Runnable() {
                @Override public void run() {
                    Toast.makeText(toastContext, "无法安全卸载此用户的应用，请到系统设置中操作", Toast.LENGTH_LONG).show();
                }
            });
            return;
        }
        sPendingItem = item;
        sRemovalCommitted = false;
        sPendingSystemUninstall = true;
        try {
            Intent intent = new Intent(Intent.ACTION_UNINSTALL_PACKAGE, Uri.parse("package:" + packageName));
            intent.putExtra(Intent.EXTRA_RETURN_RESULT, false);
            intent.putExtra(Intent.EXTRA_USER, target);
            intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
            context.startActivity(intent);
        } catch (Throwable t) {
            try {
                Intent fallback = new Intent(Intent.ACTION_DELETE, Uri.parse("package:" + packageName));
                fallback.putExtra(Intent.EXTRA_USER, target);
                fallback.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
                context.startActivity(fallback);
            } catch (Throwable fallbackError) {
                sPendingSystemUninstall = false;
                sPendingItem = null;
                queueSceneCleanup();
                Log.w(TAG, "requestUninstall failed for " + packageName, fallbackError);
                try {
                    Toast.makeText(context, "无法打开系统卸载界面", Toast.LENGTH_SHORT).show();
                } catch (Throwable ignored) {
                }
            }
        }
    }

    private static UserHandle currentUserTarget(Context context, Object item) {
        int legacyUser = 0;
        try {
            if (item != null) {
                Object value = item.getClass().getField("userId").get(item);
                if (!(value instanceof Number)) return null;
                legacyUser = ((Number) value).intValue();
            }
        } catch (ReflectiveOperationException | ClassCastException error) {
            Log.w(TAG, "Uninstall blocked: item user identity unavailable", error);
            return null;
        }
        ProfileRepository profiles = new ProfileRepository(context);
        UserHandle target = legacyUser < 0 ? null : profiles.userForLegacyId(legacyUser);
        UserHandle current = profiles.userForLegacyId(0);
        if (target == null || profiles.serialFor(target) < 0L || !target.equals(current)) {
            // An OEM installer may ignore EXTRA_USER. No verified cross-user route exists here.
            // Never fall back to a package-only uninstall of a different user's application.
            Log.w(TAG, "Uninstall blocked: unsupported or unknown target user=" + legacyUser);
            return null;
        }
        return target;
    }

    /** Preserve the trash scene under system confirmation; restore it on return. */
    public static boolean isSystemUninstallPending() {
        return sPendingSystemUninstall;
    }

    public static void onLauncherResumed() {
        if (!sPendingSystemUninstall) return;
        sPendingSystemUninstall = false;
        Object item = sPendingItem;
        sPendingItem = null;
        boolean removed = sRemovalCommitted;
        sRemovalCommitted = false;
        if (removed || (item != null
                && com.smartisanos.launcher.model.LauncherModelRepository.finishSystemUninstall(item))) {
            // Keep Sc.SO: the confirmed item-level removal owns the original trash animation.
            return;
        }
        cancelSystemUninstallScene();
    }

    private static void cancelSystemUninstallScene() {
        try {
            Class.forName("com.smartisanos.launcher.a.oa")
                    .getMethod("cancelSystemUninstall").invoke(null);
        } catch (Throwable error) {
            Log.w(TAG, "Cannot queue animated uninstall cancellation", error);
            queueSceneCleanup();
        }
    }

    /** Called only after the existing guarded item-level executor accepted removal. */
    public static void onRemovalCommitted(Object item) {
        Object pending = sPendingItem;
        if (pending == null || item == null) return;
        try {
            long expected = ((Number) pending.getClass().getField("id").get(pending)).longValue();
            long actual = ((Number) item.getClass().getField("id").get(item)).longValue();
            int expectedUser = ((Number) pending.getClass().getField("userId").get(pending)).intValue();
            int actualUser = ((Number) item.getClass().getField("userId").get(item)).intValue();
            if (expected >= 0 && expected == actual && expectedUser == actualUser) sRemovalCommitted = true;
        } catch (ReflectiveOperationException ignored) {
        }
    }

    private static void queueSceneCleanup() {
        try {
            // fd queues the existing GL event; hd must never run on this thread.
            Class.forName("com.smartisanos.launcher.a.oa").getMethod("fd").invoke(null);
        } catch (Throwable error) {
            Log.w(TAG, "Cannot queue uninstall scene cleanup", error);
        }
    }

    public static void requestUninstallItem(Object itemInfo) {
        if (itemInfo == null) {
            return;
        }
        try {
            Object type = itemInfo.getClass().getField("itemType").get(itemInfo);
            if (!(type instanceof Number) || ((Number) type).intValue() != 0) return;
            Object value = itemInfo.getClass().getField("packageName").get(itemInfo);
            if (value instanceof String) {
                requestUninstall((String) value, itemInfo);
            }
        } catch (Throwable t) {
            Log.w(TAG, "requestUninstallItem ignored", t);
        }
    }
}
