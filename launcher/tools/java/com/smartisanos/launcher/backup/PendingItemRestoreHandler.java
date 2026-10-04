package com.smartisanos.launcher.backup;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.util.AtomicFile;
import android.util.Log;

import org.json.JSONArray;
import org.json.JSONObject;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.HashSet;
import java.util.TreeSet;

/** Materializes restore entries whose packages were absent when the archive was applied. */
public final class PendingItemRestoreHandler {
    private static final String TAG = "PendingItemRestore";

    private PendingItemRestoreHandler() {}

    public static void onPackageAdded(Context context, String packageName) {
        if (context == null || packageName == null || packageName.length() == 0) return;
        File file = new File(new File(context.getFilesDir(), "backup_restore"), "pending_items.json");
        if (!file.isFile()) return;
        try {
            JSONObject root = read(file);
            JSONArray source = root.optJSONArray("items");
            if (source == null || source.length() == 0) return;
            JSONArray remaining = new JSONArray();
            JSONArray matching = new JSONArray();
            for (int i = 0; i < source.length(); i++) {
                JSONObject item = source.getJSONObject(i);
                if (packageName.equals(item.optString("packageName", ""))
                        && RestoreMergePlanner.isInstalled(context, item)) matching.put(item);
                else remaining.put(item);
            }
            if (matching.length() == 0) return;
            int resolved = insertAtDesktopEnd(context, matching);
            if (resolved != matching.length()) return;
            root.put("items", remaining);
            write(file, root);
            Log.i(TAG, "PENDING_ITEMS_RESTORED pkg=" + packageName + " resolved=" + resolved
                    + " remaining=" + remaining.length());
        } catch (Throwable error) {
            Log.w(TAG, "PENDING_ITEMS_RESTORE_FAILED pkg=" + packageName, error);
        }
    }

    private static int insertAtDesktopEnd(Context context, JSONArray items) throws Exception {
        DesktopRestoreController.ensureDatabaseProvider(context);
        SQLiteDatabase database = LayoutSnapshotExporter.database(true);
        int gridMode = context.getSharedPreferences("com.smartisanos.launcher_prefs", 0)
                .getInt("prefs_key_launcher_mode", 12) == 20 ? 20 : 12;
        int capacity = gridMode == 20 ? 20 : 12;
        int restored = 0;
        database.beginTransaction();
        try {
            // A crash or AtomicFile failure can leave pending rows after the DB commit.
            // Reuse the restore identity contract, including profile/type/shortcut id.
            HashSet<String> existingKeys = new HashSet<String>();
            Cursor existing = database.query("table_iteminfos", null, "packageName=?",
                    new String[]{items.getJSONObject(0).optString("packageName", "")}, null, null, null);
            try {
                while (existing.moveToNext())
                    existingKeys.add(RestoreMergePlanner.stableKey(RestoreMergePlanner.cursorRow(existing)));
            } finally { existing.close(); }
            long nextId = queryLong(database, "SELECT COALESCE(MAX(_id),0) FROM table_iteminfos") + 1L;
            int page = (int) queryLong(database, "SELECT COALESCE(MAX(pageIndex),0) FROM table_iteminfos"
                    + " WHERE pageIndex>=0 AND cellIndex>=0 AND (folderIndex<0 OR itemType=2)");
            int cell = (int) queryLong(database, "SELECT COALESCE(MAX(cellIndex),-1) FROM table_iteminfos"
                    + " WHERE pageIndex=" + page + " AND cellIndex>=0 AND (folderIndex<0 OR itemType=2)");
            JSONArray pages = LayoutSnapshotExporter.readPageRows(database);
            TreeSet<Long> unusedSlots = new TreeSet<Long>();
            HashSet<Integer> existingPages = new HashSet<Integer>();
            long maxPageId = 0L;
            int pageRows = pages.length();
            for (int i = 0; i < pages.length(); i++) {
                JSONObject row = pages.getJSONObject(i);
                maxPageId = Math.max(maxPageId, row.getLong("_id"));
                if (LayoutSnapshotExporter.isUnusedPageSlot(row)) unusedSlots.add(row.getLong("_id"));
                else existingPages.add(row.getInt("pageIndex"));
            }
            for (int i = 0; i < items.length(); i++) {
                JSONObject item = items.getJSONObject(i);
                String key = RestoreMergePlanner.stableKey(item);
                if (existingKeys.contains(key)) {
                    restored++;
                    continue;
                }
                cell++;
                if (cell >= capacity) {
                    page++;
                    cell = 0;
                }
                if (!existingPages.contains(page)) {
                    boolean reuseSlot = !unusedSlots.isEmpty();
                    long pageId = LayoutSnapshotImporter.nextRestorePageId(unusedSlots, maxPageId, pageRows, page);
                    LayoutSnapshotImporter.persistPage(database, LayoutSnapshotImporter.defaultPage(pageId, page), reuseSlot);
                    maxPageId = Math.max(maxPageId, pageId);
                    if (!reuseSlot) pageRows++;
                    existingPages.add(page);
                }
                ContentValues values = new ContentValues();
                values.put("_id", nextId++);
                values.put("intent", item.optString("intent", ""));
                values.put("itemType", item.optInt("itemType", 0));
                values.put("pageIndex", page);
                values.put("cellIndex", cell);
                values.put("folderIndex", -1);
                values.put("title", label(context, item));
                values.put("packageName", item.optString("packageName", ""));
                values.put("componentName", item.optString("componentName", ""));
                values.put("user", item.optInt("user", 0));
                database.insertOrThrow("table_iteminfos", null, values);
                existingKeys.add(key);
                restored++;
            }
            database.setTransactionSuccessful();
        } finally {
            database.endTransaction();
        }
        return restored;
    }

    private static long queryLong(SQLiteDatabase database, String sql) {
        Cursor cursor = database.rawQuery(sql, null);
        try { return cursor.moveToFirst() ? cursor.getLong(0) : 0L; }
        finally { cursor.close(); }
    }

    private static String label(Context context, JSONObject item) {
        try {
            android.content.ComponentName component = android.content.ComponentName.unflattenFromString(
                    item.optString("componentName", ""));
            if (component != null) return String.valueOf(context.getPackageManager()
                    .getActivityInfo(component, 0).loadLabel(context.getPackageManager()));
        } catch (Throwable ignored) {}
        return item.optString("packageName", "");
    }

    private static JSONObject read(File file) throws Exception {
        FileInputStream input = new AtomicFile(file).openRead();
        ByteArrayOutputStream output = new ByteArrayOutputStream();
        try {
            byte[] buffer = new byte[8192];
            int count;
            while ((count = input.read(buffer)) != -1) output.write(buffer, 0, count);
        } finally { input.close(); }
        return new JSONObject(new String(output.toByteArray(), BackupFileUtils.UTF_8));
    }

    private static void write(File file, JSONObject root) throws Exception {
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
