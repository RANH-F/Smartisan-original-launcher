package com.smartisanos.launcher.model;

import android.content.Context;
import android.content.Intent;
import android.content.ComponentName;
import android.content.pm.ApplicationInfo;
import android.content.pm.ResolveInfo;
import android.content.pm.LauncherApps;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.UserHandle;
import android.text.TextUtils;
import android.util.Log;

import java.util.List;

/** Sole authority for package existence used by model/removal business decisions. */
public final class PackageStateRepository {
    private static final String TAG = "PackageStateRepository";
    private final Context app;
    private final ProfileRepository profiles;

    public PackageStateRepository(Context context, ProfileRepository profileRepository) {
        app = context == null ? null : context.getApplicationContext();
        profiles = profileRepository == null ? new ProfileRepository(context) : profileRepository;
    }

    public PackageStateResult query(LauncherItemKey key, UserHandle user, boolean replacing) {
        if (key == null || !key.isValid() || app == null || user == null) {
            return result(key, PackageState.UNKNOWN, false, "invalid_key_or_context", "none");
        }
        if (replacing) return result(key, PackageState.REPLACING, false, "event_replacing", "event");
        ProfileState profile = profiles.stateFor(user);
        if (profile == ProfileState.QUIET) return result(key, PackageState.PROFILE_QUIET, false, "profile_quiet", "profile");
        if (profile == ProfileState.LOCKED) return result(key, PackageState.PROFILE_LOCKED, false, "profile_locked", "profile");
        if (profile != ProfileState.AVAILABLE) return result(key, PackageState.PROFILE_UNAVAILABLE, false, "profile_" + profile, "profile");
        try {
            PackageManager pm = app.getPackageManager();
            if (pm == null) return result(key, PackageState.UNKNOWN, false, "package_manager_missing", "pm");
            if (profiles.userId(user) == 0) {
                try {
                    pm.getPackageInfo(key.packageName, 0);
                } catch (PackageManager.NameNotFoundException missing) {
                    return result(key, PackageState.REMOVED_CONFIRMED, false, "pm_name_not_found", "pm");
                }
                return visibleState(key, pm, user, "pm");
            }
            if (Build.VERSION.SDK_INT < 21) return result(key, PackageState.UNKNOWN, false, "profile_api_unavailable", "platform");
            LauncherApps apps = (LauncherApps) app.getSystemService(Context.LAUNCHER_APPS_SERVICE);
            if (apps == null) return result(key, PackageState.UNKNOWN, false, "launcher_apps_missing", "launcher_apps");
            List activities = apps.getActivityList(key.packageName, user);
            if (activities != null && !activities.isEmpty()) return result(key, PackageState.PRESENT, true, "launcher_activity_visible", "launcher_apps");
            // Empty profile lists are never absence proof: quiet/locked/ROM filtering are common.
            return result(key, PackageState.TEMPORARILY_UNAVAILABLE, false, "launcher_activity_not_visible", "launcher_apps");
        } catch (SecurityException error) {
            return result(key, PackageState.UNKNOWN, false, "security_exception", "platform");
        } catch (Throwable error) {
            return result(key, PackageState.UNKNOWN, false, error.getClass().getSimpleName(), "platform");
        }
    }

    private PackageStateResult visibleState(LauncherItemKey key, PackageManager pm, UserHandle user, String source) {
        Intent intent = new Intent(Intent.ACTION_MAIN).addCategory(Intent.CATEGORY_LAUNCHER).setPackage(key.packageName);
        List matches = pm.queryIntentActivities(intent, 0);
        if (matches == null || matches.isEmpty()) return result(key, PackageState.DISABLED, false, "no_launcher_activity", source);
        return result(key, PackageState.PRESENT, true, "package_present", source);
    }

    /** Component changes are not package removal. Null means retain, including filtered profiles. */
    public List<ResolveInfo> launcherComponentsForRefresh(String pkg, int userId) {
        if (app == null || userId != 0 || TextUtils.isEmpty(pkg)) return null;
        UserHandle user = profiles.userForLegacyId(userId);
        if (profiles.stateFor(user) != ProfileState.AVAILABLE) return null;
        try {
            PackageManager pm = app.getPackageManager();
            ApplicationInfo info = pm.getApplicationInfo(pkg, 0);
            if (!info.enabled || (info.flags & ApplicationInfo.FLAG_SUSPENDED) != 0) return null;
            return pm.queryIntentActivities(new Intent(Intent.ACTION_MAIN)
                    .addCategory(Intent.CATEGORY_LAUNCHER).setPackage(pkg), 0);
        } catch (Exception error) {
            Log.w(TAG, "[COMPONENT][RETAIN] pkg=" + pkg + " reason=query_failed", error);
            return null;
        }
    }

    public boolean isLauncherComponentExplicitlyDisabled(String pkg, String component, int userId) {
        if (app == null || userId != 0 || TextUtils.isEmpty(pkg) || TextUtils.isEmpty(component)) return false;
        try {
            ComponentName name = ComponentName.unflattenFromString(component);
            if (name == null) name = new ComponentName(pkg, component.startsWith(".") ? pkg + component : component);
            if (!pkg.equals(name.getPackageName())) return false;
            int state = app.getPackageManager().getComponentEnabledSetting(name);
            return state == PackageManager.COMPONENT_ENABLED_STATE_DISABLED
                    || state == PackageManager.COMPONENT_ENABLED_STATE_DISABLED_USER
                    || (state == PackageManager.COMPONENT_ENABLED_STATE_DEFAULT
                        && !app.getPackageManager().getActivityInfo(name,
                                PackageManager.MATCH_DISABLED_COMPONENTS).enabled);
        } catch (Exception error) {
            return false;
        }
    }
    private PackageStateResult result(LauncherItemKey key, PackageState state, boolean visible, String reason, String source) {
        PackageStateResult result = new PackageStateResult(key, state, visible, source, reason);
        Log.i(TAG, "[PACKAGE][STATE] key=" + key + " state=" + state + " reason=" + reason + " source=" + source);
        return result;
    }
    public static final class PackageStateResult {
        public final LauncherItemKey key; public final PackageState state;
        public final boolean launcherActivityVisible; public final String source; public final String reason;
        PackageStateResult(LauncherItemKey key, PackageState state, boolean visible, String source, String reason) {
            this.key = key; this.state = state; launcherActivityVisible = visible; this.source = source; this.reason = reason;
        }
    }
}
