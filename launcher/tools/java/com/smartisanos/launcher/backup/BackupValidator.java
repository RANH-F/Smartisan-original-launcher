package com.smartisanos.launcher.backup;

import android.graphics.BitmapFactory;
import android.util.Log;

import org.json.JSONArray;
import org.json.JSONObject;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import java.util.zip.ZipInputStream;

public final class BackupValidator {
    public static final long MAX_ARCHIVE_BYTES = 100L * 1024L * 1024L;
    private static final long MAX_EXTRACTED_BYTES = 200L * 1024L * 1024L;
    private static final long MAX_ENTRY_BYTES = 20L * 1024L * 1024L;
    private static final int MAX_ENTRIES = 5000;
    private static final int MAX_JSON_DEPTH = 64;
    private static final String[] REQUIRED = {
            "manifest.json", "layout.json", "settings.json", "theme.json",
            "icons/redirects.json", "pending_items.json", "checksums.json", "complete.json"
    };

    private BackupValidator() {}

    public static BackupArchiveReader.ValidatedBackup validateAndExtract(File archive, File output)
            throws Exception {
        if (!archive.isFile() || archive.length() <= 0 || archive.length() > MAX_ARCHIVE_BYTES) {
            throw new BackupValidationException("RESTORE_INVALID_ARCHIVE", "Invalid archive size");
        }
        assertZipCentralDirectory(archive);
        BackupFileUtils.deleteRecursively(output);
        BackupFileUtils.ensureDirectory(output);
        Set<String> names = new HashSet<String>();
        long total = 0L;
        int count = 0;
        ZipInputStream input = new ZipInputStream(new java.io.BufferedInputStream(
                new java.io.FileInputStream(archive)));
        try {
            ZipEntry entry;
            while ((entry = input.getNextEntry()) != null) {
                count++;
                if (count > MAX_ENTRIES) throw invalid("Too many ZIP entries");
                String name = normalizeEntryName(entry.getName());
                if (!names.add(name)) throw invalid("Duplicate ZIP entry");
                if (entry.isDirectory()) continue;
                long declared = entry.getSize();
                if (declared > MAX_ENTRY_BYTES) throw invalid("ZIP entry too large");
                File target = safeChild(output, name);
                BackupFileUtils.ensureDirectory(target.getParentFile());
                FileOutputStream out = new FileOutputStream(target);
                long written;
                try { written = BackupFileUtils.copy(input, out, MAX_ENTRY_BYTES, null); }
                finally { out.close(); }
                total += written;
                if (total > MAX_EXTRACTED_BYTES) throw invalid("Expanded archive too large");
                input.closeEntry();
            }
        } finally {
            input.close();
        }
        for (String required : REQUIRED) if (!names.contains(required)) throw invalid("Missing required entry");

        JSONObject manifestJson = checkedJson(new File(output, "manifest.json"), 1024 * 1024L);
        BackupManifest manifest = BackupManifest.fromJson(manifestJson);
        if (manifest.formatVersion > BackupManifest.FORMAT_VERSION) {
            throw new BackupValidationException("RESTORE_FORMAT_TOO_NEW", "Backup format is newer");
        }
        if ((manifest.formatVersion != 1 && manifest.formatVersion != 2)
                || manifest.databaseSchemaVersion <= 0) {
            throw new BackupValidationException("RESTORE_SCHEMA_UNSUPPORTED", "Unsupported schema");
        }
        JSONObject complete = checkedJson(new File(output, "complete.json"), 256 * 1024L);
        if (!complete.optBoolean("complete", false)) throw invalid("Incomplete archive");
        JSONObject checksums = checkedJson(new File(output, "checksums.json"), 4 * 1024 * 1024L);
        Iterator<String> checksumNames = checksums.keys();
        Set<String> checkedNames = new HashSet<String>();
        while (checksumNames.hasNext()) {
            String rawName = checksumNames.next();
            String name = normalizeEntryName(rawName);
            if (!rawName.equals(name) || !checkedNames.add(name)) throw invalid("Unsafe checksum entry");
            File target = safeChild(output, name);
            if (!target.isFile() || !checksums.getString(rawName).equalsIgnoreCase(BackupFileUtils.sha256(target))) {
                throw new BackupValidationException("RESTORE_CHECKSUM_FAILED", "Checksum mismatch");
            }
        }
        for (String name : names) {
            if ("checksums.json".equals(name) || "complete.json".equals(name)) continue;
            File payload = safeChild(output, name);
            if (payload.isFile() && !checkedNames.contains(name)) {
                throw new BackupValidationException("RESTORE_CHECKSUM_FAILED",
                        "Payload missing checksum");
            }
        }
        JSONObject layout = checkedJson(new File(output, "layout.json"), MAX_ENTRY_BYTES);
        LayoutSnapshotExporter.validate(layout);
        JSONObject settings = checkedJson(new File(output, "settings.json"), MAX_ENTRY_BYTES);
        JSONObject theme = checkedJson(new File(output, "theme.json"), 1024 * 1024L);
        JSONObject icons = checkedJson(new File(output, "icons/redirects.json"), MAX_ENTRY_BYTES);
        File shortcutIndex = new File(output, "icons/shortcuts.json");
        JSONObject shortcutIcons = shortcutIndex.isFile()
                ? checkedJson(shortcutIndex, MAX_ENTRY_BYTES) : ShortcutIconBackupCodec.empty();
        checkedJson(new File(output, "pending_items.json"), MAX_ENTRY_BYTES);
        validateCustomIcons(output, icons);
        ShortcutIconBackupCodec.validate(layout, shortcutIcons, output);
        JSONObject portableSources = new JSONObject();
        if (new File(output, "icons/sources.json").exists()) {
            portableSources = checkedJson(new File(output, "icons/sources.json"), MAX_ENTRY_BYTES);
            validatePortableSources(output, portableSources);
        }
        return new BackupArchiveReader.ValidatedBackup(archive, output, manifest, layout,
                settings, theme, icons, shortcutIcons, portableSources);
    }

    private static void assertZipCentralDirectory(File archive) throws Exception {
        ZipFile file = new ZipFile(archive);
        try {
            if (file.size() <= 0 || file.size() > MAX_ENTRIES) throw invalid("Invalid ZIP directory");
        } finally { file.close(); }
    }

    private static JSONObject checkedJson(File file, long max) throws Exception {
        JSONObject json = BackupFileUtils.readJson(file, max);
        checkDepth(json, 0);
        return json;
    }

    private static void checkDepth(Object value, int depth) throws Exception {
        if (depth > MAX_JSON_DEPTH) throw invalid("JSON nesting too deep");
        if (value instanceof JSONObject) {
            Iterator<String> keys = ((JSONObject) value).keys();
            while (keys.hasNext()) checkDepth(((JSONObject) value).get(keys.next()), depth + 1);
        } else if (value instanceof JSONArray) {
            JSONArray array = (JSONArray) value;
            if (array.length() > 100000) throw invalid("JSON array too large");
            for (int i = 0; i < array.length(); i++) checkDepth(array.get(i), depth + 1);
        }
    }

    private static void validateCustomIcons(File root, JSONObject icons) throws Exception {
        JSONArray records = icons.getJSONArray("records");
        for (int i = 0; i < records.length(); i++) {
            String name = records.getJSONObject(i).optString("customFile", "");
            if (name.length() == 0) continue;
            String normalized = normalizeEntryName("icons/custom/" + name);
            File icon = safeChild(root, normalized);
            if (!icon.isFile()) {
                Log.w("DesktopBackup", "RESTORE_CUSTOM_ICON_MISSING fallback=original file=" + name);
                continue;
            }
            try {
                byte[] data = BackupFileUtils.readBytes(icon, 10L * 1024L * 1024L);
                if (data.length < 8 || data[0] != (byte) 0x89 || data[1] != 0x50
                        || data[2] != 0x4e || data[3] != 0x47 || data[4] != 0x0d
                        || data[5] != 0x0a || data[6] != 0x1a || data[7] != 0x0a
                        || BitmapFactory.decodeByteArray(data, 0, data.length) == null) {
                    Log.w("DesktopBackup", "RESTORE_CUSTOM_ICON_INVALID fallback=original file=" + name);
                }
            } catch (Exception unreadableIcon) {
                Log.w("DesktopBackup", "RESTORE_CUSTOM_ICON_UNREADABLE fallback=original file=" + name,
                        unreadableIcon);
            }
        }
    }

    private static void validatePortableSources(File root, JSONObject sources) throws Exception {
        JSONArray records = sources.optJSONArray("records");
        if (records == null) return;
        if (records.length() > 4096) throw invalid("Too many portable icon sources");
        java.util.HashSet<String> names = new java.util.HashSet<String>();
        for (int i = 0; i < records.length(); i++) {
            String name = records.getJSONObject(i).optString("portableFile", "");
            if (!RestoreIconSourceReconciler.isPortableSourceName(name) || !names.add(name)) {
                throw invalid("Invalid portable source name");
            }
            String normalized = normalizeEntryName("icons/sources/" + name);
            File icon = safeChild(root, normalized);
            byte[] data = BackupFileUtils.readBytes(icon, 512L * 1024L);
            if (data.length < 8 || data[0] != (byte) 0x89 || data[1] != 0x50
                    || data[2] != 0x4e || data[3] != 0x47 || data[4] != 0x0d
                    || data[5] != 0x0a || data[6] != 0x1a || data[7] != 0x0a) {
                throw invalid("Portable source is not PNG");
            }
            android.graphics.Bitmap bitmap = BitmapFactory.decodeByteArray(data, 0, data.length);
            if (bitmap == null || bitmap.getWidth() < 48 || bitmap.getHeight() < 48
                    || bitmap.getWidth() > 1024 || bitmap.getHeight() > 1024) {
                throw invalid("Invalid portable source dimensions");
            }
            String sha256 = BackupFileUtils.hex(java.security.MessageDigest.getInstance("SHA-256").digest(data));
            if (!sha256.equalsIgnoreCase(records.getJSONObject(i).optString("sha256", ""))) {
                throw invalid("Portable source SHA256 mismatch");
            }
        }
    }

    private static String normalizeEntryName(String name) throws BackupValidationException {
        if (name == null) throw invalid("Missing ZIP name");
        String normalized = name.replace('\\', '/');
        if (normalized.length() == 0 || normalized.startsWith("/") || normalized.contains("../")
                || normalized.contains("/..") || normalized.indexOf(':') >= 0
                || normalized.indexOf('\u0000') >= 0) throw invalid("Unsafe ZIP name");
        return normalized;
    }

    private static File safeChild(File root, String name) throws Exception {
        File child = new File(root, name);
        String rootPath = root.getCanonicalPath() + File.separator;
        if (!child.getCanonicalPath().startsWith(rootPath)) throw invalid("ZIP path traversal");
        return child;
    }

    private static BackupValidationException invalid(String detail) {
        return new BackupValidationException("RESTORE_INVALID_ARCHIVE", detail);
    }

    public static final class BackupValidationException extends Exception {
        public final String errorCode;
        BackupValidationException(String errorCode, String detail) { super(detail); this.errorCode = errorCode; }
    }
}
