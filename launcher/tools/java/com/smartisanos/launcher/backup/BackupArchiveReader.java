package com.smartisanos.launcher.backup;

import org.json.JSONObject;

import java.io.File;

public final class BackupArchiveReader {
    private BackupArchiveReader() {}

    public static ValidatedBackup read(File archive, File extractionDirectory) throws Exception {
        return BackupValidator.validateAndExtract(archive, extractionDirectory);
    }

    public static final class ValidatedBackup {
        public final File archive;
        public final File extractedRoot;
        public final BackupManifest manifest;
        public final JSONObject layout;
        public final JSONObject settings;
        public final JSONObject theme;
        public final JSONObject icons;
        public final JSONObject shortcutIcons;
        public final JSONObject portableSources;
        public String sourceName = "";

        ValidatedBackup(File archive, File extractedRoot, BackupManifest manifest,
                JSONObject layout, JSONObject settings, JSONObject theme, JSONObject icons,
                JSONObject shortcutIcons, JSONObject portableSources) {
            this.archive = archive;
            this.extractedRoot = extractedRoot;
            this.manifest = manifest;
            this.layout = layout;
            this.settings = settings;
            this.theme = theme;
            this.icons = icons;
            this.shortcutIcons = shortcutIcons;
            this.portableSources = portableSources;
        }

        public int itemCount() { return layout.optJSONArray("items") == null ? 0 : layout.optJSONArray("items").length(); }
        public int pageCount() {
            org.json.JSONArray items = layout.optJSONArray("items");
            if (items == null) return 0;
            java.util.HashSet<Integer> usedPages = new java.util.HashSet<Integer>();
            for (int i = 0; i < items.length(); i++) {
                org.json.JSONObject item = items.optJSONObject(i);
                if (item == null || item.optInt("folderIndex", -1) >= 0
                        || item.optInt("cellIndex", -1) < 0) continue;
                int pageIndex = item.optInt("pageIndex", -1);
                if (pageIndex >= 0) usedPages.add(Integer.valueOf(pageIndex));
            }
            return usedPages.size();
        }
        public int customIconCount() {
            org.json.JSONArray records = icons.optJSONArray("records");
            int count = 0;
            if (records != null) for (int i = 0; i < records.length(); i++)
                if (records.optJSONObject(i) != null && records.optJSONObject(i).has("customFile")) count++;
            return count;
        }
    }
}
