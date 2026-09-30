package com.smartisanos.launcher.backup;

import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.content.Context;
import android.util.Log;

import com.smartisanos.launcher.profile.DoppelgangerCompat;

import org.json.JSONArray;
import org.json.JSONObject;

import java.lang.reflect.Method;

public final class LayoutSnapshotExporter {
    private static final String[] PAGE_COLUMNS = {
            "_id", "pageIndex", "status", "containment", "pageTitle", "data1", "data2", "data3"
    };
    private static final String[] ITEM_COLUMNS = {
            "_id", "intent", "itemType", "area", "pageIndex", "cellIndex", "folderIndex",
            "title", "lastActivateTime", "messagesNumber", "newlyInstalled", "packageName",
            "componentName", "user", "usage_count", "data1", "data2", "data3"
    };

    private LayoutSnapshotExporter() {}

    public static JSONObject exportStableSnapshot() throws Exception {
        return exportStableSnapshot(null);
    }

    public static JSONObject exportStableSnapshot(Context context) throws Exception {
        SQLiteDatabase database = database(false);
        database.beginTransactionNonExclusive();
        try {
            JSONObject root = new JSONObject();
            root.put("schemaVersion", BackupManifest.DATABASE_SCHEMA_VERSION);
            root.put("pages", normalizeReservedPages(readTable(database, "table_pageinfos",
                    PAGE_COLUMNS, "pageIndex ASC, _id ASC")));
            JSONArray items = readTable(database, "table_iteminfos", ITEM_COLUMNS,
                    "pageIndex ASC, cellIndex ASC, folderIndex ASC, _id ASC");
            annotateIdentity(context, items);
            root.put("items", items);
            validate(root);
            database.setTransactionSuccessful();
            return root;
        } finally {
            database.endTransaction();
        }
    }

    private static void annotateIdentity(Context context, JSONArray items) throws Exception {
        for (int i = 0; i < items.length(); i++) {
            JSONObject item = items.getJSONObject(i);
            String packageName = item.optString("packageName", "");
            String componentName = item.optString("componentName", "");
            int sourceUserId = item.optInt("user", 0);
            long sourceSerial = sourceUserId > 0 && context != null
                    ? DoppelgangerCompat.profileSerialForUserId(context, sourceUserId) : 0L;
            boolean shortcut = RestoreMergePlanner.isShortcut(item);
            boolean doppelganger = context != null && sourceUserId > 0
                    && DoppelgangerCompat.isDoppelganger(context, packageName,
                    componentName, sourceUserId);
            item.put("identityKind", shortcut
                    ? (doppelganger ? DoppelgangerCompat.KIND_DOPPELGANGER_SHORTCUT
                    : DoppelgangerCompat.KIND_PRIMARY_SHORTCUT)
                    : (doppelganger ? DoppelgangerCompat.KIND_DOPPELGANGER_APP
                    : DoppelgangerCompat.KIND_PRIMARY_APP));
            item.put("sourceUserId", sourceUserId);
            item.put("sourceProfileSerial", sourceSerial);
            item.put("diagnosticOnly", true);
            
            // Wipe volatile runtime states that shouldn't be restored across devices
            if (item.has("messagesNumber")) item.put("messagesNumber", 0);
            if (item.has("lastActivateTime")) item.put("lastActivateTime", 0);
            if (item.has("usage_count")) item.put("usage_count", 0);
        }
    }

    static SQLiteDatabase database(boolean writable) throws Exception {
        Class<?> providerClass = Class.forName("com.smartisanos.launcher.data.C");
        Object provider = providerClass.getMethod("getInstance").invoke(null);
        if (provider == null) throw new IllegalStateException("DatabaseProvider is not initialized");
        Method method = providerClass.getMethod(writable ? "getWritableDatabase" : "getReadableDatabase");
        return (SQLiteDatabase) method.invoke(provider);
    }

    private static JSONArray readTable(SQLiteDatabase database, String table, String[] requested,
            String order) throws Exception {
        JSONArray rows = new JSONArray();
        Cursor cursor = database.query(table, null, null, null, null, null, order);
        try {
            while (cursor.moveToNext()) {
                JSONObject row = new JSONObject();
                for (String column : requested) {
                    int index = cursor.getColumnIndex(column);
                    if (index < 0 || cursor.isNull(index)) continue;
                    switch (cursor.getType(index)) {
                        case Cursor.FIELD_TYPE_INTEGER: row.put(column, cursor.getLong(index)); break;
                        case Cursor.FIELD_TYPE_FLOAT: row.put(column, cursor.getDouble(index)); break;
                        case Cursor.FIELD_TYPE_STRING: row.put(column, cursor.getString(index)); break;
                        default: break;
                    }
                }
                rows.put(row);
            }
        } finally {
            cursor.close();
        }
        return rows;
    }

    public static void validate(JSONObject root) throws Exception {
        JSONArray pages = root.getJSONArray("pages");
        JSONArray items = root.getJSONArray("items");
        if (pages.length() > 1000 || items.length() > 20000) {
            throw new IllegalArgumentException("Layout limits exceeded: pages=" + pages.length()
                    + " items=" + items.length());
        }
        java.util.HashSet<Long> pageIds = new java.util.HashSet<Long>();
        for (int i = 0; i < pages.length(); i++) {
            JSONObject page = pages.getJSONObject(i);
            // The original launcher persists special boards with negative page indexes
            // (for example -1/-2). They are part of the stable database model and must
            // round-trip just like ordinary Home boards.
            checkedInt(page, "pageIndex", -100, 999);
            // pageIndex is not a primary key in the original database. Special
            // boards can legitimately share it and are distinguished by _id,
            // containment and status.
            long id = page.optLong("_id", -1L);
            if (id <= 0L || !pageIds.add(Long.valueOf(id))) {
                throw new IllegalArgumentException("Invalid page id");
            }
        }
        java.util.HashSet<Long> ids = new java.util.HashSet<Long>();
        for (int i = 0; i < items.length(); i++) {
            JSONObject item = items.getJSONObject(i);
            long id = item.optLong("_id", -1L);
            if (id <= 0 || !ids.add(Long.valueOf(id))) throw new IllegalArgumentException("Invalid item id");
            checkedInt(item, "itemType", 0, 255);
            checkedInt(item, "pageIndex", -100, 999);
            checkedInt(item, "cellIndex", -1, 100000);
            checkedInt(item, "folderIndex", -1, 100000);
            String packageName = item.optString("packageName", "");
            String componentName = item.optString("componentName", "");
            if (packageName.length() > 512 || componentName.length() > 1024) {
                throw new IllegalArgumentException("Invalid component identity");
            }
        }
    }

    /** The original database preallocates 1000 page rows, including unused -1 slots. */
    static boolean isUnusedPageSlot(JSONObject page) {
        if (page.optInt("pageIndex", Integer.MIN_VALUE) != -1
                || page.optInt("status", -1) != 0
                || page.optString("pageTitle", "").length() != 0) return false;
        if (page.has("containment") && !page.isNull("containment")
                && page.optInt("containment", -1) != 0) return false;
        for (String key : new String[]{"data1", "data2", "data3"}) {
            if (page.has(key) && !page.isNull(key)) return false;
        }
        return page.optLong("_id", -1L) > 0L;
    }

    private static JSONArray normalizeReservedPages(JSONArray pages) throws Exception {
        if (pages.length() <= 1000) return pages;
        java.util.TreeMap<Long, JSONObject> extra = new java.util.TreeMap<Long, JSONObject>();
        java.util.TreeSet<Long> slots = new java.util.TreeSet<Long>();
        for (int i = 0; i < pages.length(); i++) {
            JSONObject page = pages.getJSONObject(i);
            long id = page.getLong("_id");
            if (id > 1000L && !isUnusedPageSlot(page)) extra.put(id, page);
            else if (id <= 1000L && isUnusedPageSlot(page)) slots.add(id);
        }
        if (extra.size() > slots.size()) {
            throw new IllegalArgumentException("No reserved page slots for overflow: pages="
                    + pages.length() + " active=" + extra.size());
        }
        java.util.HashMap<Long, JSONObject> replacements = new java.util.HashMap<Long, JSONObject>();
        for (JSONObject page : extra.values()) {
            long slotId = slots.pollFirst();
            JSONObject replacement = new JSONObject(page.toString());
            replacement.put("_id", slotId);
            replacements.put(slotId, replacement);
        }
        JSONArray normalized = new JSONArray();
        for (int i = 0; i < pages.length(); i++) {
            JSONObject page = pages.getJSONObject(i);
            long id = page.getLong("_id");
            if (id > 1000L && (extra.containsKey(id) || isUnusedPageSlot(page))) continue;
            JSONObject replacement = replacements.get(id);
            normalized.put(replacement == null ? page : replacement);
        }
        if (normalized.length() > 1000) {
            throw new IllegalArgumentException("Layout limits exceeded: pages=" + normalized.length());
        }
        Log.i("DesktopBackup", "BACKUP_PAGE_SLOTS_NORMALIZED original=" + pages.length()
                + " normalized=" + normalized.length() + " remapped=" + replacements.size());
        return normalized;
    }

    private static int checkedInt(JSONObject json, String key, int min, int max) throws Exception {
        long value = json.getLong(key);
        if (value < min || value > max) {
            throw new IllegalArgumentException("Invalid " + key + ": " + value);
        }
        return (int) value;
    }
}
