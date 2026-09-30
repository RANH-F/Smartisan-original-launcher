package com.smartisanos.launcher.backup;

import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.BitmapFactory;
import android.util.Log;

import com.smartisanos.launcher.data.redirectIcon.RedirectIconDB;
import com.smartisanos.launcher.data.redirectIcon.RedirectIconInfo;

import org.json.JSONArray;
import org.json.JSONObject;

import java.io.File;
import java.util.List;

public final class IconBackupCodec {
    private static final long MAX_ICON_BYTES = 10L * 1024L * 1024L;

    private IconBackupCodec() {}

    public static JSONObject encode(Context context, File customOutputDirectory) throws Exception {
        BackupFileUtils.ensureDirectory(customOutputDirectory);
        JSONObject root = new JSONObject();
        root.put("version", 1);
        JSONArray records = new JSONArray();
        List<RedirectIconInfo> infos = RedirectIconDB.listAllInfo(context);
        for (RedirectIconInfo summary : infos) {
            if (summary == null || empty(summary.packageName) || empty(summary.componentName)) continue;
            RedirectIconInfo info = RedirectIconDB.getRedirectIconInfo(
                    context, summary.packageName, summary.componentName);
            JSONObject record = new JSONObject();
            String mode = RedirectIconDB.modeOf(info);
            String drawable = info.drawableName == null ? "" : info.drawableName;
            boolean customIconValid = true;
            if (RedirectIconDB.MODE_CUSTOM.equals(mode)) {
                customIconValid = info.iconData != null && info.iconData.length <= MAX_ICON_BYTES
                        && BitmapFactory.decodeByteArray(info.iconData, 0, info.iconData.length) != null;
            }
            if (RedirectIconDB.MODE_CUSTOM.equals(mode) && !customIconValid) {
                Log.w("DesktopBackup", "BACKUP_CUSTOM_ICON_MISSING fallback=original package="
                        + info.packageName);
                mode = RedirectIconDB.MODE_ORIGINAL;
                drawable = RedirectIconDB.MODE_ORIGINAL;
            }
            record.put("packageName", info.packageName);
            record.put("componentName", info.componentName);
            record.put("mode", mode);
            record.put("drawableName", drawable);
            record.put("use", info.useImprovedAppIcon);
            record.put("installTime", info.installTime);
            record.put("ownerId", info.ownerId);
            record.put("displayName", info.displayName == null ? "" : info.displayName);
            record.put("originalName", info.originalName == null ? "" : info.originalName);
            if (RedirectIconDB.MODE_CUSTOM.equals(mode)) {
                String fileName = Integer.toHexString(primaryKey(info).hashCode()) + ".png";
                BackupFileUtils.writeBytes(new File(customOutputDirectory, fileName), info.iconData);
                record.put("customFile", fileName);
            }
            records.put(record);
        }
        root.put("records", records);
        return root;
    }

    public static void restore(Context context, JSONObject root, File extractedRoot) throws Exception {
        JSONArray records = root.getJSONArray("records");
        if (records.length() > 10000) throw new IllegalArgumentException("Too many icon records");
        File current = new File(context.getFilesDir(), "redirect_icons");
        File next = new File(context.getFilesDir(), "redirect_icons.restore");
        File previous = new File(context.getFilesDir(), "redirect_icons.before_restore");
        BackupFileUtils.deleteRecursively(next);
        BackupFileUtils.ensureDirectory(next);

        SharedPreferences prefs = context.getSharedPreferences("redirect_icon_db", Context.MODE_PRIVATE);
        SharedPreferences.Editor editor = prefs.edit().clear();
        StringBuilder index = new StringBuilder();
        for (int i = 0; i < records.length(); i++) {
            JSONObject record = records.getJSONObject(i);
            String pkg = checkedIdentity(record, "packageName", 512);
            String cmp = checkedIdentity(record, "componentName", 1024);
            String key = pkg + ";" + cmp;
            String prefix = "r." + key + ".";
            String mode = record.optString("mode", RedirectIconDB.MODE_ORIGINAL);
            String drawable = record.optString("drawableName", mode);
            if (RedirectIconDB.MODE_CUSTOM.equals(mode)
                    && record.optString("customFile", "").length() == 0) {
                Log.w("DesktopBackup", "RESTORE_CUSTOM_ICON_MISSING fallback=original package=" + pkg);
                mode = RedirectIconDB.MODE_ORIGINAL;
                drawable = RedirectIconDB.MODE_ORIGINAL;
            }
            if (!validMode(mode, drawable)) throw new IllegalArgumentException("Invalid icon mode");
            editor.putString(prefix + "pkg", pkg);
            editor.putString(prefix + "cmp", cmp);
            editor.putString(prefix + "drawable", drawable);
            editor.putBoolean(prefix + "use", record.optBoolean("use", false));
            editor.putLong(prefix + "install", record.optLong("installTime", 0L));
            editor.putLong(prefix + "owner", record.optLong("ownerId", 0L));
            putOptional(editor, prefix + "display_name", record.optString("displayName", ""));
            putOptional(editor, prefix + "original_name", record.optString("originalName", ""));
            if (index.length() > 0) index.append('\n');
            index.append(key);

            if (RedirectIconDB.MODE_CUSTOM.equals(mode)) {
                String name = record.optString("customFile", "");
                try {
                    name = checkedFileName(name);
                    File source = new File(new File(extractedRoot, "icons/custom"), name);
                    byte[] data = BackupFileUtils.readBytes(source, MAX_ICON_BYTES);
                    if (BitmapFactory.decodeByteArray(data, 0, data.length) == null) {
                        throw new IllegalArgumentException("Invalid custom PNG");
                    }
                    BackupFileUtils.writeBytes(new File(next, Integer.toHexString(key.hashCode()) + ".png"), data);
                } catch (Exception invalidCustomIcon) {
                    Log.w("DesktopBackup", "RESTORE_CUSTOM_ICON_INVALID fallback=original package=" + pkg,
                            invalidCustomIcon);
                    editor.putString(prefix + "drawable", RedirectIconDB.MODE_ORIGINAL);
                }
            }
        }
        editor.putString("__index__", index.toString());
        if (!editor.commit()) throw new IllegalStateException("Icon preference commit failed");

        BackupFileUtils.deleteRecursively(previous);
        if (current.exists() && !current.renameTo(previous)) {
            throw new IllegalStateException("Cannot stage current icon directory");
        }
        if (!next.renameTo(current)) {
            if (previous.exists()) previous.renameTo(current);
            throw new IllegalStateException("Cannot activate restored icon directory");
        }
        BackupFileUtils.deleteRecursively(previous);
        RedirectIconDB.invalidateCaches();
    }

    private static void putOptional(SharedPreferences.Editor editor, String key, String value) {
        if (value == null || value.length() == 0) editor.remove(key); else editor.putString(key, value);
    }

    private static boolean validMode(String mode, String drawable) {
        if (RedirectIconDB.MODE_ORIGINAL.equals(mode) || RedirectIconDB.MODE_AUTO.equals(mode)
                || RedirectIconDB.MODE_CUSTOM.equals(mode)) return true;
        if (RedirectIconDB.MODE_RESOURCE.equals(mode)) return drawable.startsWith("resource:");
        return RedirectIconDB.MODE_PACK.equals(mode) && drawable.startsWith("pack:");
    }

    private static String checkedIdentity(JSONObject object, String key, int max) throws Exception {
        String value = object.getString(key);
        if (value.length() == 0 || value.length() > max || value.indexOf('\n') >= 0) {
            throw new IllegalArgumentException("Invalid " + key);
        }
        return value;
    }

    private static String checkedFileName(String value) {
        if (value.length() == 0 || value.contains("/") || value.contains("\\") || value.contains("..")) {
            throw new IllegalArgumentException("Invalid icon file name");
        }
        return value;
    }

    private static String primaryKey(RedirectIconInfo info) {
        return info.packageName + ";" + info.componentName;
    }

    private static boolean empty(String value) { return value == null || value.length() == 0; }
}
