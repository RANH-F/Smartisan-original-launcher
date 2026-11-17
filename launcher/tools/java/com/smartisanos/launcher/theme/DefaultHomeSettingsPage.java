package com.smartisanos.launcher.theme;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.os.Build;
import android.provider.Settings;
import android.util.Log;
import android.view.View;
import java.util.List;

import static com.smartisanos.launcher.theme.MaintainedLauncherSettingsHost.*;
import com.smartisanos.launcher.theme.MaintainedLauncherSettingsHost.SettingsResourceContext;

/** Owns default HOME guidance; uses the existing settings resources and navigation. */
final class DefaultHomeSettingsPage {
    private static final String LOG_TAG = "MaintainedSettings";
    static final int REQUEST_DEFAULT_HOME = 54041;
    static final String PREF_DEFAULT_HOME_PENDING = "default_home_pending_v1";
    static final String PREF_DEFAULT_HOME_RETURN_PAGE = "default_home_return_page_v2";

    private DefaultHomeSettingsPage() {}

    static boolean isDefaultHomePage(String page) {
        return "DEFAULT_HOME".equals(page);
    }

    static void showDefaultHomePage(final Activity activity, boolean forward) {
        try {
            SettingsResourceContext context = createSettingsContext(activity);
            Resources resources = context.getResources();
            View root = inflate(activity, context, "setting_default_home");
            bindBackTitle(activity, resources, root, "view_title", text(resources, "default_home_page_title"), "DEFAULT_HOME",
                    new Runnable() { public void run() { leaveDefaultHomePage(activity); } });
            click(activity, resources, root, "default_home_primary", new View.OnClickListener() {
                public void onClick(View v) {
                    openDefaultHomeSettings(activity, defaultHomeState(activity) != 1);
                }
            });
            click(activity, resources, root, "default_home_recheck", new View.OnClickListener() {
                public void onClick(View v) {
                    showDefaultHomeCheck(activity);
                }
            });
            updateDefaultHomePage(activity, resources, root, defaultHomeState(activity));
            setSettingsContentView(activity, context, resources, root, forward);
        } catch (Exception error) {
            Log.w(LOG_TAG, "DEFAULT_HOME_PAGE unavailable", error);
            Resources resources = getMaintainedResources(activity);
            showInfoDialog(activity, text(resources, "default_home_page_title"),
                    text(resources, "default_home_page_unavailable"));
        }
    }

    private static void leaveDefaultHomePage(Activity activity) {
        activity.getSharedPreferences("launcher_settings", Context.MODE_PRIVATE).edit()
                .remove(PREF_DEFAULT_HOME_PENDING).remove(PREF_DEFAULT_HOME_RETURN_PAGE).apply();
        backToMainAction(activity).run();
    }

    private static void updateDefaultHomePage(Activity activity, Resources resources, View root, int state) {
        setText(find(resources, root, "default_home_status"), text(resources, state == 1 ? "default_home_status_confirmed"
                : state == 0 ? "default_home_status_unset" : "default_home_status_unknown"));
        View retry = find(resources, root, "default_home_recheck");
        if (retry != null) retry.setVisibility(state < 0 ? View.VISIBLE : View.GONE);
        View primary = find(resources, root, "default_home_primary");
        if (primary != null) primary.setBackgroundResource(drawable(resources,
                state < 0 ? "setting_item_up" : "selector_setting_sub_item_bg_single"));
        View instructions = find(resources, root, "default_home_instructions");
        if (instructions != null) instructions.setVisibility(state == 1 ? View.GONE : View.VISIBLE);
        setText(instructions, defaultHomeStatusMessage(resources, state));
        View tips = find(resources, root, "default_home_tips");
        View heading = find(resources, root, "default_home_tips_title");
        if (tips != null) tips.setVisibility(state == 1 ? View.GONE : View.VISIBLE);
        if (heading != null) heading.setVisibility(state == 1 ? View.GONE : View.VISIBLE);
        setText(tips, defaultHomeHelpMessage(resources, Build.MANUFACTURER, Build.BRAND));
    }

    static boolean canOpenVivoRecents(Context context) {
        return defaultHomeState(context) == 1 && Build.VERSION.SDK_INT == 37
                && "vivo".equalsIgnoreCase(Build.MANUFACTURER)
                && "V2458A".equalsIgnoreCase(Build.MODEL);
    }

    static void openVivoRecents(Activity activity) {
        if (!canOpenVivoRecents(activity)) return;
        Intent intent = new Intent(Intent.ACTION_MAIN)
                .setClassName("com.bbk.launcher2", "com.android.quickstep.RecentsActivity")
                .addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
        try {
            activity.startActivity(intent);
            Log.i(LOG_TAG, "VIVO_RECENTS_TEST launch_requested");
        } catch (ActivityNotFoundException | SecurityException error) {
            Log.w(LOG_TAG, "VIVO_RECENTS_TEST launch_failed", error);
            Resources resources = getMaintainedResources(activity);
            showInfoDialog(activity, text(resources, "setting_open_recents"),
                    text(resources, "default_home_test_vivo_recents_unavailable"));
        }
    }

    /** 1 = confirmed, 0 = system reports another holder, -1 = inconclusive. */
    private static int defaultHomeState(Context context) {
        if (context == null) return -1;
        if (Build.VERSION.SDK_INT >= 29) {
            try {
                Object manager = context.getSystemService("role");
                if (manager != null) {
                    Class<?> cls = Class.forName("android.app.role.RoleManager");
                    String home = (String) cls.getField("ROLE_HOME").get(null);
                    if ((Boolean) cls.getMethod("isRoleAvailable", String.class).invoke(manager, home)) {
                        return (Boolean) cls.getMethod("isRoleHeld", String.class)
                                .invoke(manager, home) ? 1 : 0;
                    }
                }
            } catch (Exception error) {
                Log.w(LOG_TAG, "DEFAULT_HOME_CHECK role_query_failed", error);
                return -1;
            }
        }
        try {
            Intent home = new Intent(Intent.ACTION_MAIN).addCategory(Intent.CATEGORY_HOME);
            PackageManager pm = context.getPackageManager();
            ResolveInfo resolved = pm.resolveActivity(home, PackageManager.MATCH_DEFAULT_ONLY);
            if (resolved == null || resolved.activityInfo == null) return -1;
            ActivityInfo selected = resolved.activityInfo;
            // A resolver/chooser is not a selected launcher. Require an exact HOME candidate.
            List<ResolveInfo> candidates = pm.queryIntentActivities(home, PackageManager.MATCH_DEFAULT_ONLY);
            if (candidates == null) return -1;
            for (ResolveInfo candidate : candidates) {
                ActivityInfo info = candidate == null ? null : candidate.activityInfo;
                if (info != null && selected.packageName != null && selected.name != null
                        && selected.packageName.equals(info.packageName) && selected.name.equals(info.name)) {
                    return context.getPackageName().equals(selected.packageName) ? 1 : 0;
                }
            }
        } catch (RuntimeException error) {
            Log.w(LOG_TAG, "DEFAULT_HOME_CHECK resolver_query_failed", error);
        }
        return -1;
    }

    private static String defaultHomeStatusMessage(Resources resources, int state) {
        return text(resources, state == 1 ? "default_home_message_confirmed"
                : state < 0 ? "default_home_message_unknown" : "default_home_message_unset");
    }

    static void checkDefaultHomeReturn(final Activity activity) {
        SharedPreferences prefs = activity.getSharedPreferences("launcher_settings", Context.MODE_PRIVATE);
        if (!prefs.getBoolean(PREF_DEFAULT_HOME_PENDING, false)) return;
        // Consume the result now; retain the return destination until the page is visible.
        prefs.edit().remove(PREF_DEFAULT_HOME_PENDING).apply();
        showDefaultHomeCheck(activity);
    }

    static void showDefaultHomeCheck(final Activity activity) {
        int state = defaultHomeState(activity);
        Log.i(LOG_TAG, "DEFAULT_HOME_CHECK state=" + state);
        if (!canShowDialog(activity)) return;
        View content = activity.findViewById(android.R.id.content);
        if (!isDefaultHomePage(settingsPageId(content))) return;
        updateDefaultHomePage(activity, getMaintainedResources(activity), content, state);
    }

    private static String defaultHomeHelpMessage(Resources resources, String manufacturer, String brand) {
        String device = (manufacturer + " " + brand).toLowerCase(java.util.Locale.ROOT);
        String key = "default_home_help_generic";
        if (device.contains("vivo") || device.contains("iqoo")) {
            key = "default_home_help_vivo";
        } else if (device.contains("oppo") || device.contains("realme") || device.contains("oneplus")) {
            key = "default_home_help_oppo";
        }
        return text(resources, key);
    }

    private static void openDefaultHomeSettings(Activity activity) {
        openDefaultHomeSettings(activity, true);
    }

    private static void openDefaultHomeSettings(Activity activity, boolean allowRoleRequest) {
        logOperation(activity, "ACTION", "open_default_home_settings");
        SharedPreferences prefs = activity.getSharedPreferences("launcher_settings", Context.MODE_PRIVATE);
        String page = settingsPageId(activity.findViewById(android.R.id.content));
        if (!isDefaultHomePage(page)) page = "DEFAULT_HOME";
        if (!prefs.edit().putBoolean(PREF_DEFAULT_HOME_PENDING, true)
                .putString(PREF_DEFAULT_HOME_RETURN_PAGE, page).commit()) {
            Resources resources = getMaintainedResources(activity);
            showInfoDialog(activity, text(resources, "default_home_page_title"),
                    text(resources, "default_home_save_failed"));
            return;
        }
        if (allowRoleRequest && requestHomeRole(activity)) return;
        for (String action : new String[] { "android.settings.HOME_SETTINGS",
                "android.settings.MANAGE_DEFAULT_APPS_SETTINGS",
                "miui.intent.action.PREFERRED_APPLICATION_SETTINGS", Settings.ACTION_SETTINGS }) {
            try {
                activity.startActivityForResult(new Intent(action), REQUEST_DEFAULT_HOME);
                return;
            } catch (ActivityNotFoundException | SecurityException error) {
                Log.i(LOG_TAG, "DEFAULT_HOME_OPEN unavailable action=" + action);
            }
        }
        prefs.edit().remove(PREF_DEFAULT_HOME_PENDING).remove(PREF_DEFAULT_HOME_RETURN_PAGE).apply();
        View root = activity.findViewById(android.R.id.content);
        if (root != null) setText(find(getMaintainedResources(activity), root, "default_home_instructions"),
                text(getMaintainedResources(activity), "default_home_open_failed"));
    }

    private static boolean requestHomeRole(Activity activity) {
        if (Build.VERSION.SDK_INT < 29) {
            return false;
        }
        try {
            Object roleManager = activity.getSystemService("role");
            if (roleManager == null) return false;
            Class<?> cls = Class.forName("android.app.role.RoleManager");
            String roleHome = (String) cls.getField("ROLE_HOME").get(null);
            Boolean available = (Boolean) cls.getMethod("isRoleAvailable", String.class).invoke(roleManager, roleHome);
            if (!available.booleanValue()) return false;
            Boolean held = (Boolean) cls.getMethod("isRoleHeld", String.class).invoke(roleManager, roleHome);
            if (held.booleanValue()) return false;
            Intent intent = (Intent) cls.getMethod("createRequestRoleIntent", String.class).invoke(roleManager, roleHome);
            activity.startActivityForResult(intent, REQUEST_DEFAULT_HOME);
            return true;
        } catch (Throwable ignored) {
            return false;
        }
    }

    private static String text(Resources resources, String name) {
        return resources.getString(resources.getIdentifier(name, "string", "com.smartisanos.home"));
    }
}
