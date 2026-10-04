package com.smartisanos.launcher.backup;

import android.content.ContentValues;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.SharedPreferences;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.os.Looper;

import com.smartisanos.launcher.ShortcutCompatBridge;
import com.smartisanos.launcher.model.PackageState;

import org.json.JSONArray;
import org.json.JSONObject;

import java.io.File;
import java.lang.reflect.Proxy;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;

/** Actual production rebuild with deterministic profile facts and isolated SQLite files. */
public final class RestoreProfileProbe {
    private static File root;
    private static Context systemContext;
    private static int checks, fixture;
    private static final String PKG = "f03.clone.only";

    private static final class ProbeContext extends ContextWrapper {
        private final File directory;
        ProbeContext(File directory) { super(null); this.directory = directory; }
        public Context getApplicationContext() { return this; }
        public android.content.pm.PackageManager getPackageManager() { return new PrimaryAbsentPackageManager(); }
        public File getFilesDir() { File file = new File(directory, "files"); file.mkdirs(); return file; }
        public File getCacheDir() { File file = new File(directory, "cache"); file.mkdirs(); return file; }
        public SharedPreferences getSharedPreferences(String name, int mode) {
            return (SharedPreferences) Proxy.newProxyInstance(getClass().getClassLoader(),
                    new Class<?>[]{SharedPreferences.class}, new InvocationHandler() {
                    public Object invoke(Object proxy, Method method, Object[] args) {
                        if (method.getName().startsWith("get") && args != null && args.length == 2) return args[1];
                        throw new AssertionError("Unexpected preference operation " + method.getName());
                    }
                    });
        }
    }
    private static void check(boolean condition, String label) {
        checks++;
        if (!condition) throw new AssertionError(label);
        System.out.println("PASS " + label);
    }
    private static ProbeContext fresh() throws Exception {
        if (LayoutSnapshotExporter.db != null) LayoutSnapshotExporter.db.close();
        Fixture.reset();
        File directory = new File(root, "case" + fixture++); directory.mkdirs();
        LayoutSnapshotExporter.db = SQLiteDatabase.openOrCreateDatabase(new File(directory, "fixture.db"), null);
        SQLiteDatabase db = LayoutSnapshotExporter.db;
        db.execSQL("CREATE TABLE table_pageinfos (_id INTEGER PRIMARY KEY,pageIndex INTEGER,status INTEGER,containment INTEGER,pageTitle TEXT,data1 TEXT,data2 TEXT,data3 TEXT)");
        db.execSQL("CREATE TABLE table_iteminfos (_id INTEGER PRIMARY KEY,intent TEXT,itemType INTEGER,area INTEGER,pageIndex INTEGER,cellIndex INTEGER,folderIndex INTEGER,title TEXT,lastActivateTime INTEGER,messagesNumber INTEGER,newlyInstalled INTEGER,packageName TEXT,componentName TEXT,user INTEGER,usage_count INTEGER,data1 TEXT,data2 TEXT,data3 TEXT)");
        db.execSQL("CREATE TABLE table_icons (owner INTEGER)");
        db.execSQL("INSERT INTO table_pageinfos (_id,pageIndex,status,containment) VALUES (1,0,0,0)");
        return new ProbeContext(directory);
    }
    private static JSONObject app(long id, int user, String component) throws Exception {
        return new JSONObject().put("_id", id).put("user", user).put("packageName", PKG)
                .put("componentName", PKG + "/" + component).put("itemType", 0).put("area", 0)
                .put("pageIndex", 0).put("cellIndex", 0).put("folderIndex", -1).put("title", "fixture");
    }
    private static JSONObject shortcut(long id, int user, long serial, String shortcutId) throws Exception {
        return app(id, user, "ShortcutBridge").put("itemType", 1).put("data1", shortcutId)
                .put("intent", ShortcutCompatBridge.createLaunchIntent(systemContext, PKG, shortcutId, serial, false).toUri(0));
    }
    private static void current(JSONObject item) throws Exception {
        ContentValues values = new ContentValues();
        java.util.Iterator<String> keys = item.keys();
        while (keys.hasNext()) {
            String key = keys.next(); Object value = item.get(key);
            if (value instanceof Number) values.put(key, ((Number) value).longValue());
            else values.put(key, value.toString());
        }
        LayoutSnapshotExporter.db.insertOrThrow("table_iteminfos", null, values);
    }
    private static JSONObject layout(JSONObject... items) throws Exception {
        JSONArray array = new JSONArray(); for (JSONObject item : items) array.put(item);
        return new JSONObject().put("pages", new JSONArray().put(new JSONObject().put("_id", 1)
                .put("pageIndex", 0).put("status", 0).put("containment", 0))).put("items", array);
    }
    private static RestoreMergePlanner.Plan preview(Context context, JSONObject layout) throws Exception {
        BackupArchiveReader.ValidatedBackup backup = new BackupArchiveReader.ValidatedBackup(); backup.layout = layout;
        return RestoreMergePlanner.plan(context, backup);
    }
    private static File pending(Context context) { return new File(context.getFilesDir(), "backup_restore/pending_items.json"); }
    private static LayoutSnapshotImporter.ImportResult restore(Context context, JSONObject layout) throws Exception {
        pending(context).getParentFile().mkdirs();
        return LayoutSnapshotImporter.restore(context, layout, 12, pending(context), new JSONObject(), context.getCacheDir());
    }
    private static long count(String where) {
        Cursor cursor = LayoutSnapshotExporter.db.rawQuery("SELECT COUNT(*) FROM table_iteminfos" + where, null);
        try { cursor.moveToFirst(); return cursor.getLong(0); } finally { cursor.close(); }
    }
    private static int pendingCount(Context context) throws Exception {
        return BackupFileUtils.readJson(pending(context), 1024 * 1024).getJSONArray("items").length();
    }
    private static void matrix() throws Exception {
        for (PackageState state : PackageState.values()) {
            ProbeContext context = fresh(); Fixture.states.put(10, state);
            current(app(10, 10, "Main")); JSONObject layout = layout();
            boolean preserve = state != PackageState.REMOVED_CONFIRMED;
            check(preview(context, layout).preservedNewAppCount == (preserve ? 1 : 0), "preview current clone " + state);
            LayoutSnapshotImporter.ImportResult result = restore(context, layout);
            check(result.preserved == (preserve ? 1 : 0), "actual rebuild current clone " + state);
            check(count(" WHERE user=10") == (preserve ? 1 : 0), "clone target user retained " + state);
            check(count(" WHERE user=0") == 0, "clone never reclassified as primary " + state);
            check(Fixture.lastUser == 10 && Fixture.lastKey.userSerial == 1010, "runtime identity uses target profile " + state);
            check(RestoreMergePlanner.isInstalled(context, app(1, 10, "Main"))
                    == (state == PackageState.PRESENT || state == PackageState.DISABLED), "pending activation requires positive fact " + state);
        }
    }
    private static void identities() throws Exception {
        ProbeContext context = fresh(); Fixture.states.put(10, PackageState.PRESENT);
        current(app(10, 10, "Main"));
        JSONObject backup = app(1, 20, "Main").put("sourceUserId", 20).put("sourceProfileSerial", 9020);
        JSONObject source = layout(backup);
        check(preview(context, source).preservedNewItemCount == 0, "preview deduplicates after target remap");
        check(restore(context, source).preserved == 0, "import deduplicates after target remap");
        check(count("") == 1 && count(" WHERE user=10") == 1, "different source serial has one target row");
        check(backup.getInt("user") == 20 && backup.getLong("sourceProfileSerial") == 9020, "archive source identity unchanged");

        context = fresh(); Fixture.states.put(10, PackageState.PRESENT); Fixture.states.put(20, PackageState.PRESENT);
        current(app(10, 20, "Main")); source = layout(app(1, 20, "Main"));
        check(preview(context, source).preservedNewItemCount == 1, "source id collision cannot hide other current profile");
        check(restore(context, source).preserved == 1, "other current profile survives rebuild");
        check(count(" WHERE user=10") == 1 && count(" WHERE user=20") == 1, "same component across profiles remains distinct");

        context = fresh(); Fixture.states.put(10, PackageState.PRESENT);
        current(app(10, 10, "Other")); source = layout(app(1, 20, "Main"));
        check(restore(context, source).preserved == 1 && count("") == 2, "same package different components preserved");

        context = fresh(); Fixture.states.put(10, PackageState.PRESENT);
        current(shortcut(10, 10, 1010, "pinned")); source = layout();
        check(preview(context, source).preservedNewShortcutCount == 1, "current pinned shortcut preview preserved");
        check(restore(context, source).preserved == 1 && count(" WHERE itemType=1 AND user=10") == 1, "current pinned shortcut survives rebuild");
        context = fresh(); Fixture.states.put(10, PackageState.PRESENT);
        current(shortcut(10, 10, 1010, "pinned")); source = layout(shortcut(1, 20, 9020, "pinned"));
        check(preview(context, source).preservedNewShortcutCount == 0, "shortcut dedup uses remapped target serial");
        check(restore(context, source).preserved == 0 && count("") == 1, "shortcut remap does not duplicate current row");

        context = fresh(); Fixture.invalidSerial = true; current(app(10, 10, "Main")); source = layout();
        check(preview(context, source).preservedNewItemCount == 1, "unknown serial preserves current preview");
        check(restore(context, source).preserved == 1 && count(" WHERE user=10") == 1, "unknown serial survives actual clear and rebuild");

        context = fresh(); Fixture.resolve = false; Fixture.states.put(10, PackageState.PROFILE_LOCKED);
        current(app(10, 10, "Main")); source = layout(app(1, 20, "Main"));
        check(restore(context, source).preserved == 1 && count(" WHERE user=10") == 1, "unresolved archive profile cannot discard locked current row");

        context = fresh(); Fixture.states.put(0, PackageState.PRESENT); Fixture.states.put(10, PackageState.UNKNOWN);
        current(app(10, 10, "NewClone"));
        JSONObject folder = app(5, 0, "").put("itemType", 2).put("packageName", "com.smartisan.folder")
                .put("componentName", "").put("folderIndex", 0);
        JSONObject child = app(6, 0, "Child").put("folderIndex", 5);
        source = layout(folder, child);
        check(preview(context, source).folderCount == 1, "folder remains structural in preview");
        LayoutSnapshotImporter.ImportResult topology = restore(context, source);
        check(topology.restored == 2 && topology.preserved == 1, "folder child and uncertain clone rebuilt together");
        check(count(" WHERE itemType=2 AND _id=5") == 1 && count(" WHERE folderIndex=5") == 1, "folder parent child identity unchanged");
        check(FolderTopologyValidator.validateDatabase(LayoutSnapshotExporter.db).valid, "folder topology remains valid");
        check(count(" WHERE user=10 AND folderIndex=-1") == 1, "preserved clone remains a root item");
    }
    private static void archiveAndPending() throws Exception {
        ProbeContext context = fresh(); Fixture.states.put(0, PackageState.UNKNOWN);
        JSONObject source = layout(app(1, 0, "Main"));
        check(preview(context, source).missingAppCount == 0, "unknown is not reported as confirmed missing");
        check(restore(context, source).restored == 1 && count("") == 1 && pendingCount(context) == 0, "unknown archive row retained instead of dropped");
        context = fresh(); source = layout(app(1, 0, "Main"));
        check(preview(context, source).missingAppCount == 1, "confirmed missing preview");
        check(restore(context, source).missing == 1 && count("") == 0 && pendingCount(context) == 1, "confirmed missing remains pending");

        context = fresh(); Fixture.states.put(10, PackageState.REMOVED_CONFIRMED);
        restore(context, layout(app(1, 20, "Main")));
        JSONObject pendingItem = BackupFileUtils.readJson(pending(context), 1024 * 1024).getJSONArray("items").getJSONObject(0);
        check(pendingItem.getInt("user") == 10 && pendingItem.getLong("targetProfileSerial") == 1010, "pending persists target profile serial");
        Fixture.states.put(0, PackageState.PRESENT); Fixture.states.put(10, PackageState.PROFILE_QUIET);
        PendingItemRestoreHandler.onPackageAdded(context, PKG);
        check(count("") == 0 && pendingCount(context) == 1, "primary presence cannot activate quiet clone pending");
        Fixture.states.put(10, PackageState.UNKNOWN); PendingItemRestoreHandler.onPackageAdded(context, PKG);
        check(count("") == 0 && pendingCount(context) == 1, "query unknown cannot activate pending");
        Fixture.states.put(10, PackageState.PRESENT); PendingItemRestoreHandler.onPackageAdded(context, PKG);
        check(count(" WHERE user=10") == 1 && pendingCount(context) == 0, "positive clone presence activates correct pending row");

        context = fresh(); Fixture.states.put(10, PackageState.PRESENT);
        JSONObject stale = app(1, 10, "Main").put("targetProfileSerial", 9999);
        pending(context).getParentFile().mkdirs(); BackupFileUtils.writeJson(pending(context), new JSONObject().put("version", 1).put("items", new JSONArray().put(stale)));
        PendingItemRestoreHandler.onPackageAdded(context, PKG);
        check(count("") == 0 && pendingCount(context) == 1, "stale target serial cannot activate reused user id");
    }
    public static void main(String[] args) throws Exception {
        root = new File(args[0]).getCanonicalFile();
        if (!root.getPath().startsWith("/data/local/tmp/smartisan-restore-profiles-f03-")) throw new IllegalArgumentException("Unsafe probe root");
        root.mkdirs(); Looper.prepareMainLooper();
        systemContext = new ProbeContext(root);
        if (args[1].equals("baseline")) {
            ProbeContext context = fresh(); Fixture.states.put(10, PackageState.PRESENT); current(app(10, 10, "Main"));
            int preview = preview(context, layout()).preservedNewItemCount;
            LayoutSnapshotImporter.ImportResult result = restore(context, layout());
            check(preview == 0 && result.preserved == 0 && count("") == 0, "baseline drops clone-only current row");
            System.out.println("BASELINE_LOSS_REPRODUCED preview=0 preserved=0 finalRows=0");
        } else {
            matrix(); identities(); archiveAndPending();
            System.out.println("PASS RESTORE_PROFILE_CHECKS=" + checks);
        }
        LayoutSnapshotExporter.db.close();
    }
}
