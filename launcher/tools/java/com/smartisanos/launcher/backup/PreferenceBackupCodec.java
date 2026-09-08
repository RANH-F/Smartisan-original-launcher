package com.smartisanos.launcher.backup;

import android.content.Context;
import android.content.SharedPreferences;
import android.util.Log;

import com.smartisanos.launcher.quickdesktop.QuickDesktopController;

import org.json.JSONArray;
import org.json.JSONObject;

import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

/**
 * Encodes / decodes Launcher shared-preference settings into the backup archive.
 *
 * BACKUP POLICY
 * =============
 * Only settings that are:
 *   (a) fully owned by the Launcher process, and
 *   (b) portable across devices without requiring Android system permissions
 * may appear in PORTABLE_KEYS.
 *
 * NON_PORTABLE_PERMISSION_KEYS lists every key that must NEVER enter the archive.
 * A key belongs here if enabling it requires:
 *   - Runtime permission (LOCATION, CONTACTS, …)
 *   - Notification Listener access
 *   - Usage Stats / AppOps access
 *   - Overlay / SYSTEM_ALERT_WINDOW
 *   - Accessibility service
 *   - Android Role (default launcher role counts as implicit)
 *   - OEM-specific white-listing
 * Rules: encode() must not write these keys; restore() must silently ignore them
 * even if they are present in an old archive.
 */
public final class PreferenceBackupCodec {
    private static final String TAG = "PreferenceBackup";
    private static final String QUICK_DESKTOP_PREFS = "quick_desktop_private";

    private static final String[] FILES = {
            "launcher_settings", "com.smartisanos.launcher_prefs", "launcher_dynamic_weather",
            QUICK_DESKTOP_PREFS
    };

    /**
     * Keys that are EXCLUDED from backup because they depend on system permissions or
     * Android grants that cannot be reliably migrated across devices.
     *
     * automatic_location             – requires ACCESS_COARSE_LOCATION / ACCESS_FINE_LOCATION
     * launcher_dynamic_weather_calendar_enabled – reads location; controlled by automatic_location
     * launcher_hide_badge            – requires Notification Listener access
     * launcher_badge_swipe_clean     – requires Notification Listener access (same gate as hide_badge)
     * swipe_down_system_panels_enabled – requires SYSTEM_ALERT_WINDOW / OEM panel API
     */
    private static final Set<String> NON_PORTABLE_PERMISSION_KEYS = new HashSet<String>(Arrays.asList(
            "automatic_location",
            "launcher_dynamic_weather_calendar_enabled",
            "launcher_hide_badge",
            "launcher_badge_swipe_clean",
            "swipe_down_system_panels_enabled"
    ));

    /**
     * Keys that are safe to backup and restore across devices.
     * No Android system permission is required for these to take effect.
     */
    private static final Set<String> PORTABLE_KEYS = new HashSet<String>(Arrays.asList(
            // Grid / layout
            "prefs_key_launcher_mode",
            "launcher_icon_size",
            "launcher_page_animation",
            // Theme
            "launcher_theme",
            "launcher_grid_theme",
            "launcher_transparent_theme",
            "launcher_aero_theme",
            "launcher_page_mode",
            // Search / gestures (no permission gate)
            "swipe_up_search_enabled",
            "vertical_gesture_direction_reversed",
            "launcher_search_page_enabled",
            // Display
            "launcher_hide_lable",
            "launcher_hide_navigation_bar",
            "launcher_unlock_animation_enabled",
            "dock_slide_reverse_enabled",
            // Icon source / pack (no permission gate; missing pack falls back gracefully)
            "launcher_global_icon_source_v2",
            "launcher_improved_icon_enabled",
            "prefs_key_selected_icon_pack",
            "launcher_icon_source",
            "launcher_icon_pack",
            "icon_pack_package",
            "use_improved_app_icon",
            "active_icon_enabled",
            // Weather city (city name is user data; location permission not required to display)
            "manual_city",
            "manual_station_id",
            "manual_latitude_bits",
            "manual_longitude_bits",
            // Negative-one screen fixed-card configuration
            "enabled",
            "card_music_payment",
            "card_shortcuts",
            "card_calendar",
            "card_life",
            "custom_header_text",
            "selected_music_package",
            "payment_provider"
    ));

    private PreferenceBackupCodec() {}

    public static JSONObject encode(Context context) throws Exception {
        JSONObject root = new JSONObject();
        root.put("version", 1);
        JSONObject files = new JSONObject();
        for (String file : FILES) {
            JSONObject values = new JSONObject();
            Map<String, ?> all = portableValues(context, file);
            for (String key : PORTABLE_KEYS) {
                if (NON_PORTABLE_PERMISSION_KEYS.contains(key)) {
                    // Should never happen given the two sets are disjoint, but guard anyway.
                    Log.w(TAG, "BACKUP_EXCLUDED_PERMISSION_SETTING key=" + key + " (skipped)");
                    continue;
                }
                if (!all.containsKey(key)) continue;
                JSONObject typed = encodeValue(all.get(key));
                if (typed != null) {
                    values.put(key, typed);
                    Log.i(TAG, "BACKUP_PORTABLE_SETTING key=" + key);
                }
            }
            files.put(file, values);
            Log.i(TAG, "BACKUP_PREFERENCE_FILE file=" + file + " count=" + values.length());
        }
        // Explicit audit log for excluded permission keys
        for (String key : NON_PORTABLE_PERMISSION_KEYS) {
            Log.i(TAG, "BACKUP_EXCLUDED_PERMISSION_SETTING key=" + key);
        }
        root.put("files", files);
        return root;
    }

    public static void restore(Context context, JSONObject root) throws Exception {
        JSONObject files = root.getJSONObject("files");
        for (String file : FILES) {
            JSONObject values = files.optJSONObject(file);
            if (values == null) continue;
            SharedPreferences.Editor editor =
                    context.getSharedPreferences(file, Context.MODE_PRIVATE).edit();
            java.util.Iterator<String> names = values.keys();
            while (names.hasNext()) {
                String key = names.next();
                if (NON_PORTABLE_PERMISSION_KEYS.contains(key)) {
                    // Old archive may contain these; silently ignore — do NOT restore.
                    Log.i(TAG, "RESTORE_IGNORED_PERMISSION_SETTING key=" + key);
                    continue;
                }
                if (!PORTABLE_KEYS.contains(key)) continue;
                apply(editor, key, values.getJSONObject(key));
                Log.i(TAG, "RESTORE_PORTABLE_SETTING key=" + key);
            }
            if (!editor.commit()) throw new IllegalStateException("Preference commit failed: " + file);
            Log.i(TAG, "RESTORE_PREFERENCE_FILE file=" + file + " count=" + values.length());
        }
    }

    /**
     * A SharedPreferences file does not contain keys that still use their default value.  A
     * backup must nevertheless describe the complete logical Quick Desktop state; otherwise a
     * default-on switch backed up before its first edit cannot overwrite a later off value.
     */
    private static Map<String, ?> portableValues(Context context, String file) {
        Map<String, ?> stored = context.getSharedPreferences(file, Context.MODE_PRIVATE).getAll();
        if (!QUICK_DESKTOP_PREFS.equals(file)) return stored;

        HashMap<String, Object> complete = new HashMap<String, Object>();
        complete.putAll(stored);
        complete.put("enabled", QuickDesktopController.isEnabled(context));
        complete.put("card_music_payment", QuickDesktopController.isCardEnabled(context,
                QuickDesktopController.CARD_MUSIC_PAYMENT));
        complete.put("card_shortcuts", QuickDesktopController.isCardEnabled(context,
                QuickDesktopController.CARD_SHORTCUTS));
        complete.put("card_calendar", QuickDesktopController.isCardEnabled(context,
                QuickDesktopController.CARD_CALENDAR));
        complete.put("card_life", QuickDesktopController.isCardEnabled(context,
                QuickDesktopController.CARD_LIFE));
        complete.put("custom_header_text", QuickDesktopController.getCustomHeaderText(context));
        complete.put("selected_music_package", QuickDesktopController.getSelectedMusicPackage(context));
        complete.put("payment_provider", QuickDesktopController.getPaymentProvider(context));
        return complete;
    }

    private static JSONObject encodeValue(Object value) throws Exception {
        JSONObject out = new JSONObject();
        if (value instanceof Boolean) { out.put("type", "boolean"); out.put("value", value); }
        else if (value instanceof Integer) { out.put("type", "int"); out.put("value", value); }
        else if (value instanceof Long) { out.put("type", "long"); out.put("value", value); }
        else if (value instanceof Float) { out.put("type", "float"); out.put("value", value); }
        else if (value instanceof String) { out.put("type", "string"); out.put("value", value); }
        else if (value instanceof Set) {
            out.put("type", "stringSet");
            JSONArray array = new JSONArray();
            for (Object item : (Set) value) if (item instanceof String) array.put(item);
            out.put("value", array);
        } else return null;
        return out;
    }

    private static void apply(SharedPreferences.Editor editor, String key, JSONObject typed) throws Exception {
        String type = typed.getString("type");
        if ("boolean".equals(type)) editor.putBoolean(key, typed.getBoolean("value"));
        else if ("int".equals(type)) editor.putInt(key, typed.getInt("value"));
        else if ("long".equals(type)) editor.putLong(key, typed.getLong("value"));
        else if ("float".equals(type)) editor.putFloat(key, (float) typed.getDouble("value"));
        else if ("string".equals(type)) editor.putString(key, typed.getString("value"));
        else if ("stringSet".equals(type)) {
            JSONArray array = typed.getJSONArray("value");
            HashSet<String> values = new HashSet<String>();
            for (int i = 0; i < array.length(); i++) values.add(array.getString(i));
            editor.putStringSet(key, values);
        } else throw new IllegalArgumentException("Unsupported preference type: " + type);
    }
}
