package com.smartisanos.launcher.backup;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.util.AtomicFile;
import android.util.Log;

import com.smartisanos.launcher.ShortcutCompatBridge;
import com.smartisanos.launcher.profile.DoppelgangerCompat;

import org.json.JSONArray;
import org.json.JSONObject;

import java.io.File;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeSet;

public final class LayoutSnapshotImporter {
    private static final String TAG = "DesktopRestore";

    private static final String[] PAGE_COLUMNS = {
            "_id", "pageIndex", "status", "containment", "pageTitle", "data1", "data2", "data3"
    };
    private static final String[] ITEM_COLUMNS = {
            "_id", "intent", "itemType", "area", "pageIndex", "cellIndex", "folderIndex",
            "title", "lastActivateTime", "messagesNumber", "newlyInstalled", "packageName",
            "componentName", "user", "usage_count", "data1", "data2", "data3"
    };

    public static final class ImportResult {
        public int restored;
        public int missing;
        public int preserved;
        public int profileUnresolved;
        public int shortcutUnresolved;
    }

    private LayoutSnapshotImporter() {}

    public static ImportResult restore(Context context, JSONObject layout, int gridMode,
            File pendingFile, JSONObject shortcutIcons, File extractionRoot) throws Exception {
        
        Log.i(TAG, "===============================================");
        Log.i(TAG, "RESTORE PHASE 0: Pre-validation");
        Log.i(TAG, "===============================================");
        LayoutSnapshotExporter.validate(layout);
        FolderTopologyValidator.ValidationResult preCheck = FolderTopologyValidator.validate(layout);
        if (!preCheck.valid) {
            throw new IllegalStateException("Source layout has broken folder topology: " + preCheck.errorMessage);
        }

        SQLiteDatabase database = LayoutSnapshotExporter.database(true);
        JSONArray backupPages = layout.getJSONArray("pages");
        JSONArray backupItems = layout.getJSONArray("items");
        
        // Pass 1: Identify items to preserve
        Log.i(TAG, "RESTORE PHASE 1: Capture preserved items & shortcut fallbacks");
        List<JSONObject> currentItems = readCurrentItems(database);
        Map<String, ContentValues> shortcutFallback =
                ShortcutIconBackupCodec.captureCurrent(database, currentItems);
        ImportResult result = new ImportResult();
        JSONArray targetItems = new JSONArray();
        Set<String> backupKeys = new HashSet<String>();
        for (int i = 0; i < backupItems.length(); i++) {
            JSONObject target = remapIdentity(context, backupItems.getJSONObject(i), result);
            if (target == null) continue;
            targetItems.put(target);
            backupKeys.add(RestoreMergePlanner.stableKey(target));
        }
        ArrayList<JSONObject> preserved = new ArrayList<JSONObject>();
        for (JSONObject item : currentItems) {
            if (RestoreMergePlanner.isRestoreCandidate(item) && !RestoreMergePlanner.isMissingConfirmed(context, item)
                    && !backupKeys.contains(RestoreMergePlanner.stableKey(item))) {
                preserved.add(item);
                Log.i(TAG, "RESTORE_PRESERVE item=" + item.optString("packageName"));
            }
        }

        JSONArray pending = new JSONArray();

        database.beginTransaction();
        try {
            Log.i(TAG, "RESTORE PHASE 2: Wipe tables");
            database.delete("table_icons", null, null);
            database.delete("table_iteminfos", null, null);
            database.delete("table_pageinfos", null, null);

            Log.i(TAG, "RESTORE PHASE 3: Insert pages");
            Set<Integer> existingPageIndexes = new HashSet<Integer>();
            int maxPage = -1;
            long maxPageId = 0L;
            int pageRows = backupPages.length();
            TreeSet<Long> unusedPageSlots = new TreeSet<Long>();
            JSONObject lastPage = null;
            for (int i = 0; i < backupPages.length(); i++) {
                JSONObject page = backupPages.getJSONObject(i);
                maxPageId = Math.max(maxPageId, page.optLong("_id", 0L));
                if (LayoutSnapshotExporter.isUnusedPageSlot(page)) {
                    unusedPageSlots.add(Long.valueOf(page.getLong("_id")));
                }
                ContentValues values = values(page, PAGE_COLUMNS, false);
                if (database.insertOrThrow("table_pageinfos", null, values) < 0) {
                    throw new IllegalStateException("Page insert failed");
                }
                existingPageIndexes.add(Integer.valueOf(page.getInt("pageIndex")));
            }

            Log.i(TAG, "RESTORE PHASE 4: Classify and Remap Items");
            long maxId = 0L;
            int maxCell = -1;
            List<JSONObject> foldersToInsert = new ArrayList<>();
            List<JSONObject> itemsToInsert = new ArrayList<>();

            for (int i = 0; i < targetItems.length(); i++) {
                JSONObject item = targetItems.getJSONObject(i);
                maxId = Math.max(maxId, item.optLong("_id", 0L));
                
                // Track max layout coordinates for appending preserved items
                int pageIndex = item.optInt("pageIndex", -1);
                if (pageIndex >= 0 && (item.optInt("folderIndex", -1) < 0 || RestoreMergePlanner.isFolder(item))
                        && item.optInt("cellIndex", -1) >= 0) {
                    if (pageIndex > maxPage) {
                        maxPage = pageIndex;
                        maxCell = item.optInt("cellIndex", -1);
                    } else if (pageIndex == maxPage) {
                        maxCell = Math.max(maxCell, item.optInt("cellIndex", -1));
                    }
                }

                if (RestoreMergePlanner.isFolder(item)) {
                    foldersToInsert.add(item);
                } else {
                    itemsToInsert.add(item);
                }
            }

            Log.i(TAG, "RESTORE PHASE 5: Insert Folders (Structural)");
            for (JSONObject folder : foldersToInsert) {
                ContentValues values = values(folder, ITEM_COLUMNS, false);
                values.remove("icon");
                if (database.insertOrThrow("table_iteminfos", null, values) < 0) {
                    throw new IllegalStateException("Folder insert failed for _id=" + folder.optLong("_id"));
                }
                Log.i(TAG, "RESTORE_FOLDER_INSERTED _id=" + folder.optLong("_id") + " title=" + folder.optString("title"));
                result.restored++;
            }

            Log.i(TAG, "RESTORE PHASE 6: Insert Items & Children");
            for (JSONObject item : itemsToInsert) {
                if (RestoreMergePlanner.isShortcut(item) && !shortcutAvailable(context, item)) {
                    result.shortcutUnresolved++;
                    Log.i(TAG, "SHORTCUT_UNRESOLVED package="
                            + item.optString("packageName", "") + " shortcutId=" + shortcutId(item));
                }
                if (RestoreMergePlanner.isRestoreCandidate(item) && RestoreMergePlanner.isMissingConfirmed(context, item)) {
                    pending.put(pendingRecord(item));
                    result.missing++;
                    Log.i(TAG, "RESTORE_ITEM_PENDING pkg=" + item.optString("packageName"));
                    continue; // Skip insertion
                }

                ContentValues values = values(item, ITEM_COLUMNS, false);
                values.remove("icon");
                if (database.insertOrThrow("table_iteminfos", null, values) < 0) {
                    throw new IllegalStateException("Item insert failed");
                }
                result.restored++;
                Log.i(TAG, "RESTORE_ITEM_INSERTED pkg=" + item.optString("packageName") + " folderIndex=" + item.optLong("folderIndex", -1L));
            }

            Log.i(TAG, "RESTORE PHASE 7: Append Preserved Items");
            int capacity = gridMode == 20 ? 20 : 12;
            if (maxPage < 0) maxPage = 0;
            for (int i = 0; i < backupPages.length(); i++) {
                JSONObject page = backupPages.getJSONObject(i);
                if (page.optInt("pageIndex", -1) == maxPage) {
                    lastPage = page;
                    break;
                }
            }
            if (!existingPageIndexes.contains(Integer.valueOf(maxPage))) {
                boolean reuseSlot = !unusedPageSlots.isEmpty();
                long pageId = nextRestorePageId(unusedPageSlots, maxPageId, pageRows, maxPage);
                maxPageId = Math.max(maxPageId, pageId);
                lastPage = defaultPage(pageId, maxPage);
                persistPage(database, lastPage, reuseSlot);
                if (!reuseSlot) pageRows++;
                existingPageIndexes.add(Integer.valueOf(maxPage));
            }
            for (JSONObject item : preserved) {
                maxCell++;
                if (maxCell >= capacity) {
                    maxPage++;
                    maxCell = 0;
                    if (!existingPageIndexes.contains(Integer.valueOf(maxPage))) {
                        boolean reuseSlot = !unusedPageSlots.isEmpty();
                        long pageId = nextRestorePageId(unusedPageSlots, maxPageId, pageRows, maxPage);
                        maxPageId = Math.max(maxPageId, pageId);
                        JSONObject page = clonePage(lastPage, pageId, maxPage);
                        persistPage(database, page, reuseSlot);
                        if (!reuseSlot) pageRows++;
                        lastPage = page;
                        existingPageIndexes.add(Integer.valueOf(maxPage));
                    }
                }
                JSONObject copy = new JSONObject(item.toString());
                copy.put("_id", ++maxId);
                copy.put("pageIndex", maxPage);
                copy.put("cellIndex", maxCell);
                copy.put("folderIndex", -1);
                ContentValues values = values(copy, ITEM_COLUMNS, false);
                values.remove("icon");
                database.insertOrThrow("table_iteminfos", null, values);
                result.preserved++;
            }

            Log.i(TAG, "RESTORE PHASE 8: Shortcut Icons & Verification");
            ShortcutIconBackupCodec.restore(context, database, layout, shortcutIcons, extractionRoot,
                    shortcutFallback);
            
            verifyDatabase(database);
            FolderTopologyValidator.DbValidationResult dbCheck = FolderTopologyValidator.validateDatabase(database);
            if (!dbCheck.valid) {
                throw new IllegalStateException("Restored database has broken folder topology: " + dbCheck.errorMessage);
            }

            database.setTransactionSuccessful();
            Log.i(TAG, "RESTORE PHASE 9: Transaction Committed");
        } finally { database.endTransaction(); }
        
        writePending(pendingFile, pending);
        return result;
    }

    static JSONObject remapIdentity(Context context, JSONObject source,
                                             ImportResult result) throws Exception {
        JSONObject item = new JSONObject(source.toString());
        int sourceUserId = item.optInt("sourceUserId", item.optInt("user", 0));
        long sourceSerial = item.optLong("sourceProfileSerial", -1L);
        String kind = item.optString("identityKind", "");
        boolean doppelganger = DoppelgangerCompat.KIND_DOPPELGANGER_APP.equals(kind)
                || DoppelgangerCompat.KIND_DOPPELGANGER_SHORTCUT.equals(kind)
                || (kind.length() == 0 && sourceUserId > 0);
        if (!doppelganger) {
            item.put("user", 0);
            if (RestoreMergePlanner.isShortcut(item)) {
                long targetSerial = ShortcutCompatBridge.primaryUserSerial(context);
                item.put("targetProfileSerial", targetSerial);
                rewriteShortcutIntent(item, context, targetSerial, true);
            }
            return item;
        }
        DoppelgangerCompat.ResolvedProfile profile = DoppelgangerCompat.resolveDoppelganger(
                context, item.optString("packageName", ""), item.optString("componentName", ""),
                sourceSerial, sourceUserId);
        if (profile == null) {
            result.profileUnresolved++;
            Log.i(TAG, "RESTORE_PROFILE_UNRESOLVED package="
                    + item.optString("packageName", "") + " component="
                    + item.optString("componentName", "") + " sourceUserId="
                    + sourceUserId + " sourceSerial=" + sourceSerial);
            return null;
        }
        item.put("user", profile.userId);
        item.put("targetProfileSerial", profile.serial);
        if (RestoreMergePlanner.isShortcut(item)) {
            rewriteShortcutIntent(item, context, profile.serial, false);
        }
        Log.i(TAG, "RESTORE_ITEM_WRITTEN identityKind=" + kind
                + " package=" + item.optString("packageName", "") + " targetUserId="
                + profile.userId + " targetSerial=" + profile.serial);
        return item;
    }

    private static boolean shortcutAvailable(Context context, JSONObject item) {
        String shortcutId = shortcutId(item);
        if (shortcutId.length() == 0) return false;
        long serial = item.optLong("targetProfileSerial", item.optLong("sourceProfileSerial", 0L));
        return ShortcutCompatBridge.isPinnedAvailable(context, item.optString("packageName", ""),
                shortcutId, serial);
    }

    private static void rewriteShortcutIntent(JSONObject item, Context context, long targetSerial,
                                              boolean primaryFallback) throws Exception {
        String packageName = item.optString("packageName", "");
        String id = shortcutId(item);
        if (packageName.length() == 0 || id.length() == 0) return;
        item.put("intent", ShortcutCompatBridge.createLaunchIntent(context, packageName, id,
                targetSerial, primaryFallback).toUri(0));
        Log.i(TAG, "SHORTCUT_PROFILE_REMAP package=" + packageName
                + " shortcutId=" + id + " targetSerial=" + targetSerial);
    }

    private static String shortcutId(JSONObject item) {
        String id = item.optString("data1", "");
        if (id.length() != 0) return id;
        try {
            android.content.Intent intent = android.content.Intent.parseUri(
                    item.optString("intent", ""), 0);
            String value = intent.getStringExtra(ShortcutCompatBridge.EXTRA_ID);
            return value == null ? "" : value;
        } catch (Throwable ignored) {
            return "";
        }
    }

    private static List<JSONObject> readCurrentItems(SQLiteDatabase database) throws Exception {
        ArrayList<JSONObject> items = new ArrayList<JSONObject>();
        Cursor cursor = database.query("table_iteminfos", null, null, null, null, null,
                "pageIndex ASC, cellIndex ASC, folderIndex ASC, _id ASC");
        try {
            while (cursor.moveToNext()) {
                JSONObject row = new JSONObject();
                for (int i = 0; i < cursor.getColumnCount(); i++) {
                    if (cursor.isNull(i) || cursor.getType(i) == Cursor.FIELD_TYPE_BLOB) continue;
                    if (cursor.getType(i) == Cursor.FIELD_TYPE_INTEGER) row.put(cursor.getColumnName(i), cursor.getLong(i));
                    else if (cursor.getType(i) == Cursor.FIELD_TYPE_FLOAT) row.put(cursor.getColumnName(i), cursor.getDouble(i));
                    else row.put(cursor.getColumnName(i), cursor.getString(i));
                }
                items.add(row);
            }
        } finally { cursor.close(); }
        return items;
    }

    private static ContentValues values(JSONObject json, String[] allowed, boolean includeNull) throws Exception {
        ContentValues values = new ContentValues();
        for (String key : allowed) {
            if (!json.has(key) || json.isNull(key)) { if (includeNull) values.putNull(key); continue; }
            Object value = json.get(key);
            if (value instanceof Integer) values.put(key, (Integer) value);
            else if (value instanceof Long) values.put(key, (Long) value);
            else if (value instanceof Double) values.put(key, (Double) value);
            else if (value instanceof Boolean) values.put(key, ((Boolean) value).booleanValue() ? 1 : 0);
            else values.put(key, String.valueOf(value));
        }
        return values;
    }

    private static JSONObject pendingRecord(JSONObject item) throws Exception {
        JSONObject pending = new JSONObject();
        String[] keys = {"packageName", "componentName", "pageIndex", "cellIndex", "folderIndex", "user", "targetProfileSerial", "itemType", "intent"};
        for (String key : keys) if (item.has(key)) pending.put(key, item.get(key));
        return pending;
    }

    static long nextRestorePageId(TreeSet<Long> unusedSlots, long maxPageId, int pageRows,
            int pageIndex) {
        if (pageIndex < 0 || pageIndex > 999) throw new IllegalStateException("Desktop page index limit exceeded");
        if (!unusedSlots.isEmpty()) return unusedSlots.pollFirst().longValue();
        if (pageRows >= 1000) throw new IllegalStateException("No available page slot");
        return maxPageId + 1L;
    }

    static JSONObject defaultPage(long pageId, int pageIndex) throws Exception {
        JSONObject page = new JSONObject();
        page.put("_id", pageId);
        page.put("pageIndex", pageIndex);
        page.put("status", 0);
        page.put("containment", 0);
        page.put("pageTitle", "");
        return page;
    }

    private static JSONObject clonePage(JSONObject source, long pageId, int pageIndex) throws Exception {
        JSONObject page = new JSONObject(source == null
                ? defaultPage(pageId, pageIndex).toString() : source.toString());
        page.put("_id", pageId);
        page.put("pageIndex", pageIndex);
        page.put("status", 0);
        page.put("pageTitle", "");
        return page;
    }

    static void persistPage(SQLiteDatabase database, JSONObject page, boolean reuseSlot)
            throws Exception {
        ContentValues pageValues = values(page, PAGE_COLUMNS, reuseSlot);
        if (reuseSlot) {
            long pageId = page.getLong("_id");
            if (database.update("table_pageinfos", pageValues, "_id=?",
                    new String[]{String.valueOf(pageId)}) != 1) {
                throw new IllegalStateException("Reserved page slot update failed: " + pageId);
            }
            Log.i(TAG, "RESTORE_PAGE_SLOT_REUSED id=" + pageId
                    + " pageIndex=" + page.getInt("pageIndex"));
        } else {
            database.insertOrThrow("table_pageinfos", null, pageValues);
        }
    }

    private static void verifyDatabase(SQLiteDatabase database) throws Exception {
        Cursor pages = database.rawQuery("SELECT COUNT(*), COUNT(DISTINCT _id) FROM table_pageinfos", null);
        try {
            if (!pages.moveToFirst() || pages.getInt(0) <= 0 || pages.getInt(0) != pages.getInt(1))
                throw new IllegalStateException("Page verification failed");
        } finally { pages.close(); }
        Cursor duplicates = database.rawQuery(
                "SELECT COUNT(*) FROM (SELECT _id FROM table_iteminfos GROUP BY _id HAVING COUNT(*)>1)", null);
        try { if (!duplicates.moveToFirst() || duplicates.getInt(0) != 0) throw new IllegalStateException("Duplicate items"); }
        finally { duplicates.close(); }
    }

    private static void writePending(File file, JSONArray items) throws Exception {
        JSONObject root = new JSONObject();
        root.put("version", 1);
        root.put("items", items);
        AtomicFile atomic = new AtomicFile(file);
        FileOutputStream output = null;
        try {
            output = atomic.startWrite();
            output.write(root.toString().getBytes(BackupFileUtils.UTF_8));
            atomic.finishWrite(output);
        } catch (Throwable error) {
            if (output != null) atomic.failWrite(output);
            if (error instanceof Exception) throw (Exception) error;
            throw new Exception(error);
        }
    }
}
