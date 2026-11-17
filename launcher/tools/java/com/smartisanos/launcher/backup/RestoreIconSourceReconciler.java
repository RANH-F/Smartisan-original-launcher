package com.smartisanos.launcher.backup;

import android.content.Context;
import android.content.SharedPreferences;
import android.util.Log;

import com.smartisanos.home.settings.icons.IconPackManager;
import com.smartisanos.home.settings.icons.IconSourceManager;
import com.smartisanos.launcher.theme.MaintainedLauncherSettingsHost;
import com.smartisanos.launcher.data.redirectIcon.RedirectIconDB;
import com.smartisanos.launcher.theme.IconRasterDiagnostics;
import com.smartisanos.launcher.theme.MaintainedLauncherSettingsHost.ApplyReason;

import org.json.JSONArray;
import org.json.JSONObject;

import java.io.File;
import java.util.Collection;
import java.util.HashSet;

public final class RestoreIconSourceReconciler {
    private static final String TAG = "RestoreIconSource";
    private static final String PREF_PENDING = "restore_icon_source_reconcile_pending";
    private static final String PREF_SHARED = "restore_iconhub_choices";
    private static final String PREF_TOKEN = "restore_icon_source_token";
    private static final String CACHE_DIR = "online_icon_cache_v4";
    private static final long MAX_SOURCE_BYTES = 512L * 1024L;

    private RestoreIconSourceReconciler() {}

    /**
     * Stores the raw improved-icon sources that are otherwise only a disposable
     * download cache.  Final Launcher textures remain derived data and are never
     * put in the archive.
     */
    public static JSONObject encodePortableSources(Context context, File outputDirectory, JSONObject layout, JSONObject icons)
            throws Exception {
        BackupFileUtils.ensureDirectory(outputDirectory);
        JSONObject root = new JSONObject();
        root.put("version", 1);
        JSONArray records = new JSONArray();
        File cache = new File(context.getFilesDir(), CACHE_DIR);
        File[] files = cache.listFiles();
        HashSet<String> required = requiredSourceFiles(layout, icons);
        collectAutomaticSourceFiles(context, layout, icons, required);
        int skipped = 0;
        long totalBytes = 0L;
        if (files != null) {
            java.util.Arrays.sort(files, new java.util.Comparator<File>() {
                public int compare(File left, File right) {
                    return left.getName().compareTo(right.getName());
                }
            });
            for (File source : files) {
                String name = source.getName();
                if (!source.isFile() || !isPortableSourceName(name)) continue;
                // Historical hash filenames do not carry their source identity. Keep
                // that small compatibility set until it can be mapped without guessing.
                if (!required.contains(name) && !name.matches("[0-9a-f]+\\.png")) { skipped++; continue; }
                if (source.length() <= 0 || source.length() > MAX_SOURCE_BYTES) {
                    Log.w(TAG, "BACKUP_ICON_SOURCE_REJECTED file=" + name
                            + " bytes=" + source.length());
                    continue;
                }
                byte[] data = BackupFileUtils.readBytes(source, MAX_SOURCE_BYTES);
                if (!validSource(data)) {
                    Log.w(TAG, "BACKUP_ICON_SOURCE_REJECTED file=" + name);
                    continue;
                }
                BackupFileUtils.writeBytes(new File(outputDirectory, name), data);
                totalBytes += data.length;
                JSONObject record = new JSONObject();
                record.put("portableFile", name);
                record.put("sha256", sha256(data));
                records.put(record);
            }
        }
        root.put("records", records);
        Log.i(TAG, "BACKUP_ICON_SOURCES count=" + records.length() + " bytes=" + totalBytes
                + " unreferencedSkipped=" + skipped);
        return root;
    }

    /** Include saved choices even if their apps currently have no desktop cell. */
    static HashSet<String> requiredSourceFiles(JSONObject layout, JSONObject icons) {
        HashSet<String> names = new HashSet<String>();
        JSONArray items = layout == null ? null : layout.optJSONArray("items");
        if (items != null) for (int i = 0; i < items.length(); i++) {
            JSONObject item = items.optJSONObject(i);
            if (item != null) addSourceIdentity(names, item.optString("packageName", ""));
        }
        JSONArray records = icons == null ? null : icons.optJSONArray("records");
        if (records != null) for (int i = 0; i < records.length(); i++) {
            JSONObject record = records.optJSONObject(i);
            if (record == null) continue;
            addSourceIdentity(names, record.optString("packageName", ""));
            String drawable = record.optString("drawableName", "");
            if (drawable.startsWith(RedirectIconDB.MODE_RESOURCE + ":")) {
                addSourceIdentity(names, drawable.substring((RedirectIconDB.MODE_RESOURCE + ":").length()));
            }
        }
        return names;
    }

    private static void collectAutomaticSourceFiles(Context context, JSONObject layout,
            JSONObject icons, HashSet<String> names) {
        HashSet<String> identities = new HashSet<String>();
        for (JSONObject source : new JSONObject[]{layout, icons}) {
            if (source == null) continue;
            JSONArray records = source.optJSONArray(source == layout ? "items" : "records");
            if (records == null) continue;
            for (int i = 0; i < records.length(); i++) {
                JSONObject record = records.optJSONObject(i);
                if (record == null) continue;
                String pkg = record.optString("packageName", "");
                String component = record.optString("componentName", "");
                if (pkg.length() == 0 || !identities.add(pkg + ";" + component)) continue;
                // Reuse the existing candidate and OEM alias owners, never resolve a bitmap
                // or schedule a download merely to decide what the archive must preserve.
                for (String id : MaintainedLauncherSettingsHost.desktopBackupImprovedSourceIds(context, pkg, component)) {
                    addSourceIdentity(names, id);
                }
            }
        }
    }

    private static void addSourceIdentity(HashSet<String> names, String identity) {
        if (identity == null || identity.length() == 0) return;
        // Existing online downloads use hash names; library-selected raw sources
        // use sourceId names. Preserve both owners and historical filenames.
        names.add(Integer.toHexString(identity.hashCode()) + ".png");
        if (isPortableSourceName(identity + ".png")) names.add(identity + ".png");
    }

    /** Atomically overlays archived raw sources on the current persistent cache. */
    public static void restorePortableSources(Context context, JSONObject root, File extractedRoot)
            throws Exception {
        JSONArray records = root == null ? null : root.optJSONArray("records");
        if (records == null || records.length() == 0) {
            Log.i(TAG, "RESTORE_ICON_SOURCES count=0 legacyArchive=true");
            return;
        }
        File current = new File(context.getFilesDir(), CACHE_DIR);
        File next = new File(context.getFilesDir(), CACHE_DIR + ".restore");
        File previous = new File(context.getFilesDir(), CACHE_DIR + ".before_restore");
        BackupFileUtils.deleteRecursively(next);
        BackupFileUtils.ensureDirectory(next);
        copyExistingSources(current, next);

        HashSet<String> names = new HashSet<String>();
        for (int i = 0; i < records.length(); i++) {
            JSONObject record = records.getJSONObject(i);
            String name = record.getString("portableFile");
            if (!isPortableSourceName(name) || !names.add(name)) {
                throw new IllegalArgumentException("Invalid portable icon source name");
            }
            File source = new File(new File(extractedRoot, "icons/sources"), name);
            byte[] data = BackupFileUtils.readBytes(source, MAX_SOURCE_BYTES);
            if (!validSource(data) || !sha256(data).equalsIgnoreCase(record.optString("sha256", ""))) {
                throw new IllegalArgumentException("Invalid portable icon source: " + name);
            }
            BackupFileUtils.writeBytes(new File(next, name), data);
        }

        BackupFileUtils.deleteRecursively(previous);
        if (current.exists() && !current.renameTo(previous)) {
            throw new IllegalStateException("Cannot stage current improved-icon cache");
        }
        if (!next.renameTo(current)) {
            if (previous.exists()) previous.renameTo(current);
            throw new IllegalStateException("Cannot activate restored improved-icon cache");
        }
        BackupFileUtils.deleteRecursively(previous);
        Log.i(TAG, "RESTORE_ICON_SOURCES count=" + records.length() + " legacyArchive=false");
    }

    public static void setPendingReconcile(Context context, String token, JSONObject icons) {
        if (context == null) return;
        IconRasterDiagnostics.markIconLifecycle("RESTORE");
        JSONObject shared = icons.optJSONObject("sharedChoices");
        if (!prefs(context).edit().putBoolean(PREF_PENDING, true)
                .putString(PREF_SHARED, shared == null ? "" : shared.toString())
                .putString(PREF_TOKEN, token).commit()) {
            Log.w(TAG, "RESTORE_ICON_SOURCE_PENDING_COMMIT_FAILED");
        }
    }

    public static void primeIconSourceAfterRestore(Context context) {
        if (context == null) return;
        SharedPreferences prefs = prefs(context);
        if (!prefs.getBoolean(PREF_PENDING, false)) return;

        IconSourceManager.Selection source = IconSourceManager.get(context);
        Log.i(TAG, "RESTORE_ICON_SOURCE_PRIME source=" + source.value());
        if (source.type == IconSourceManager.Type.PACK) {
            IconPackManager.preloadSelectedIconPackAsync(context);
        }
    }

    public static void onLauncherModelReady(Context context) {
        if (context == null) return;
        SharedPreferences prefs = prefs(context);
        if (!prefs.getBoolean(PREF_PENDING, false)) return;

        final String token = prefs.getString(PREF_TOKEN, "");
        IconRasterDiagnostics.markIconLifecycle("RESTORE");
        final String shared = prefs.getString(PREF_SHARED, "");

        IconSourceManager.Selection source = IconSourceManager.get(context);
        Log.i(TAG, "RESTORE_ICON_SOURCE_MODEL_READY token=" + token + " source=" + source.value());

        if (source.type == IconSourceManager.Type.PACK && !IconSourceManager.isInstalledIconPack(context, source.packageName)) {
            Log.w(TAG, "RESTORE_ICON_PACK_MISSING pack=" + source.packageName);
            IconSourceManager.set(context, IconSourceManager.Selection.defaultIcon());
            source = IconSourceManager.Selection.defaultIcon();
            MaintainedLauncherSettingsHost.persistGlobalIconSelection(context, source);
        }

        try {
            if (!shared.isEmpty()) {
                JSONObject choices = new JSONObject(shared);
                com.smartisanos.home.settings.icons.IconHubSource.queueRestoredChoices(context, choices);
            }
            prefs.edit().remove(PREF_PENDING).remove(PREF_TOKEN).remove(PREF_SHARED).commit();
        } catch (Exception error) {
            Log.w(TAG, "RESTORE_ICON_SHARED_CHOICES_FAILED", error);
        }

        MaintainedLauncherSettingsHost.reconcileCurrentGlobalIconSource(context, ApplyReason.RESTORE, false);
    }

    public static boolean queueIfPending(Context context, Collection<String> packages) {
        return false;
    }

    private static void copyExistingSources(File current, File next) throws Exception {
        File[] files = current.listFiles();
        if (files == null) return;
        for (File source : files) {
            String name = source.getName();
            if (!source.isFile() || !isPortableSourceName(name)) continue;
            if (source.length() <= 0 || source.length() > MAX_SOURCE_BYTES) continue;
            byte[] data = BackupFileUtils.readBytes(source, MAX_SOURCE_BYTES);
            if (validSource(data)) BackupFileUtils.writeBytes(new File(next, name), data);
        }
    }

    private static boolean validSource(byte[] data) {
        if (data == null || data.length < 8 || data.length > MAX_SOURCE_BYTES
                || data[0] != (byte) 0x89 || data[1] != 0x50 || data[2] != 0x4e
                || data[3] != 0x47 || data[4] != 0x0d || data[5] != 0x0a
                || data[6] != 0x1a || data[7] != 0x0a) return false;
        return IconBackupCodec.isValidImage(data, 48, 1024);
    }

    static boolean isPortableSourceName(String name) {
        if (name == null || name.length() > 260 || name.startsWith(".")) return false;
        if (!name.matches("[A-Za-z0-9._~-]+\\.png")) return false;
        String sourceId = name.substring(0, name.length() - 4);
        return sourceId.length() > 0 && !sourceId.contains("..")
                && !".".equals(sourceId) && !"..".equals(sourceId);
    }

    private static String sha256(byte[] data) throws Exception {
        return BackupFileUtils.hex(java.security.MessageDigest.getInstance("SHA-256").digest(data));
    }

    private static SharedPreferences prefs(Context context) {
        return context.getSharedPreferences(DesktopBackupController.PREFS, 0);
    }
}
