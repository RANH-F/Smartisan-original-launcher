package com.smartisanos.launcher.backup;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.ContentValues;
import android.content.SharedPreferences;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.os.Looper;

import com.smartisanos.launcher.model.PackageState;
import org.json.JSONArray;
import org.json.JSONObject;
import java.io.File;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;

/** Real production pending allocation/export/import on an isolated SQLite database. */
public final class RestorePageProbe {
    public static SQLiteDatabase db;
    private static File root;
    private static int fixture, checks;
    private static final String PKG = "f02.pending.fixture";
    private static final class ProbeContext extends ContextWrapper {
        final File directory; final int grid;
        ProbeContext(File directory, int grid) { super(null); this.directory = directory; this.grid = grid; }
        public Context getApplicationContext() { return this; }
        public File getFilesDir() { File path = new File(directory, "files"); path.mkdirs(); return path; }
        public File getCacheDir() { File path = new File(directory, "cache"); path.mkdirs(); return path; }
        public android.content.pm.PackageManager getPackageManager() { return new PrimaryAbsentPackageManager(); }
        public SharedPreferences getSharedPreferences(String name, int mode) {
            return (SharedPreferences) Proxy.newProxyInstance(getClass().getClassLoader(),
                    new Class<?>[]{SharedPreferences.class}, new InvocationHandler() {
                public Object invoke(Object proxy, Method method, Object[] args) {
                    if (method.getName().equals("getInt")) return grid;
                    if (method.getName().startsWith("get") && args != null && args.length == 2) return args[1];
                    throw new AssertionError("Unexpected preference query");
                }
            });
        }
    }
    private static void check(boolean condition, String label) {
        checks++; if (!condition) throw new AssertionError(label);
        System.out.println("PASS " + label);
    }
    private static ProbeContext fresh(int grid, int pages) throws Exception {
        if (db != null) db.close(); Fixture.reset(); Fixture.states.put(0, PackageState.PRESENT);
        File directory = new File(root, "case" + fixture++); directory.mkdirs();
        db = SQLiteDatabase.openOrCreateDatabase(new File(directory, "fixture.db"), null);
        db.execSQL("CREATE TABLE table_pageinfos (_id INTEGER PRIMARY KEY,pageIndex INTEGER,status INTEGER,containment INTEGER,pageTitle TEXT,data1 TEXT,data2 TEXT,data3 TEXT)");
        // Original ITEM schema v12: area was removed in v4; intent remains nullable.
        db.execSQL("CREATE TABLE table_iteminfos (_id INTEGER PRIMARY KEY,intent TEXT,itemType INTEGER,pageIndex INTEGER,cellIndex INTEGER,folderIndex INTEGER,title TEXT,messagesNumber INTEGER,newlyInstalled INTEGER,packageName TEXT,componentName TEXT,user INTEGER,usage_count INTEGER,data1 TEXT,data2 TEXT,data3 TEXT)");
        db.execSQL("CREATE TABLE table_icons (owner INTEGER)");
        db.beginTransaction();
        try {
            for (int i = 1; i <= pages; i++) db.execSQL("INSERT INTO table_pageinfos (_id,pageIndex,status,containment,pageTitle) VALUES (?,?,0,0,'')", new Object[]{i, i == 1 ? 0 : -1});
            db.setTransactionSuccessful();
        } finally { db.endTransaction(); }
        return new ProbeContext(directory, grid);
    }
    private static JSONObject item(long id, int page, int cell, String component) throws Exception {
        return new JSONObject().put("_id", id).put("intent", "").put("itemType", 0).put("area", 0)
                .put("pageIndex", page).put("cellIndex", cell).put("folderIndex", -1)
                .put("title", "fixture").put("packageName", PKG).put("componentName", PKG + "/" + component).put("user", 0);
    }
    private static void insert(JSONObject json) throws Exception {
        ContentValues values = new ContentValues(); java.util.Iterator<String> keys = json.keys();
        while (keys.hasNext()) { String key = keys.next(); if (key.equals("area")) continue; Object value = json.get(key);
            if (value instanceof Number) values.put(key, ((Number) value).longValue()); else values.put(key, value.toString()); }
        db.insertOrThrow("table_iteminfos", null, values);
    }
    private static void fill(int page, int capacity) throws Exception {
        db.beginTransaction();
        try { for (int i = 0; i < capacity; i++) insert(item(10000L + page * 100L + i, page, i, "Existing" + i)); db.setTransactionSuccessful(); }
        finally { db.endTransaction(); }
    }
    private static long scalar(String sql) {
        Cursor cursor = db.rawQuery(sql, null); try { if (!cursor.moveToFirst()) return -1; return cursor.getLong(0); } finally { cursor.close(); }
    }
    private static File pending(ProbeContext context) { return new File(context.getFilesDir(), "backup_restore/pending_items.json"); }
    private static void pending(ProbeContext context, int count) throws Exception {
        pending(context, count, 0);
    }
    private static void pending(ProbeContext context, int count, int offset) throws Exception {
        JSONArray items = new JSONArray(); for (int i = 0; i < count; i++) items.put(item(1 + i, 0, 0, "Pending" + (i + offset)));
        BackupFileUtils.writeJson(pending(context), new JSONObject().put("version", 1).put("items", items));
    }
    private static int pendingCount(ProbeContext context) throws Exception { return BackupFileUtils.readJson(pending(context), 1024 * 1024).getJSONArray("items").length(); }
    private static void activate(ProbeContext context) { PendingItemRestoreHandler.onPackageAdded(context, PKG); }
    private static void placement(int count, int page, int cell) {
        check(scalar("SELECT COUNT(*) FROM table_iteminfos WHERE componentName LIKE '%/Pending%'") == count, "pending count " + count);
        check(scalar("SELECT pageIndex FROM table_iteminfos WHERE componentName='" + PKG + "/Pending0'") == page, "pending page " + page);
        check(scalar("SELECT cellIndex FROM table_iteminfos WHERE componentName='" + PKG + "/Pending0'") == cell, "pending cell " + cell);
    }
    private static String pageRows() throws Exception { return LayoutSnapshotExporter.readPageRows(db).toString(); }
    private static void basicAndRoundTrip(int grid) throws Exception {
        ProbeContext context = fresh(grid, 1000); fill(0, grid); pending(context, 1); activate(context);
        placement(1, 1, 0);
        check(scalar("SELECT COUNT(*) FROM table_pageinfos") == 1000, "1000 rows remain bounded " + grid);
        check(scalar("SELECT pageIndex FROM table_pageinfos WHERE _id=2") == 1, "lowest unused slot reused " + grid);
        check(pendingCount(context) == 0, "pending consumed after success " + grid);
        activate(context); check(scalar("SELECT COUNT(*) FROM table_iteminfos") == grid + 1, "repeat broadcast does not duplicate consumed batch " + grid);
        JSONObject snapshot = LayoutSnapshotExporter.exportStableSnapshot(context);
        check(snapshot.getJSONArray("pages").length() == 1000, "real exporter accepts allocated layout " + grid);
        File restorePending = new File(context.getFilesDir(), "backup_restore/roundtrip.json");
        LayoutSnapshotImporter.ImportResult result = LayoutSnapshotImporter.restore(context, snapshot, grid, restorePending, new JSONObject(), context.getCacheDir());
        check(result.restored == grid + 1 && result.preserved == 0, "real importer round trip " + grid);
        placement(1, 1, 0);
        check(scalar("SELECT COUNT(*) FROM table_pageinfos") == 1000, "roundtrip preserves slot row count " + grid);

        context = fresh(grid, 1000); fill(0, grid - 1); pending(context, 1); activate(context);
        placement(1, 0, grid - 1); check(scalar("SELECT COUNT(*) FROM table_pageinfos WHERE pageIndex>=0") == 1, "available last cell needs no new page " + grid);
        context = fresh(grid, 1); fill(0, grid); pending(context, 1); activate(context);
        placement(1, 1, 0); check(scalar("SELECT COUNT(*) FROM table_pageinfos") == 2, "nonpreallocated db appends bounded page " + grid);
        context = fresh(grid, 1000); pending(context, 1); activate(context);
        placement(1, 0, 0); check(scalar("SELECT COUNT(*) FROM table_pageinfos") == 1000, "empty desktop begins on page zero " + grid);
        context = fresh(grid, 0); pending(context, 1); activate(context);
        placement(1, 0, 0); check(scalar("SELECT COUNT(*) FROM table_pageinfos") == 1, "missing page zero created in empty table " + grid);

        context = fresh(grid, 1000); fill(0, grid); pending(context, grid + 2); activate(context);
        placement(grid + 2, 1, 0);
        check(scalar("SELECT MAX(pageIndex) FROM table_iteminfos") == 2, "batch spans pages " + grid);
        check(scalar("SELECT COUNT(*) FROM table_pageinfos") == 1000 && pendingCount(context) == 0, "batch uses slots without overflow " + grid);
        JSONArray next = new JSONArray().put(item(1, 0, 0, "NextBatch"));
        BackupFileUtils.writeJson(pending(context), new JSONObject().put("version", 1).put("items", next));
        activate(context);
        check(scalar("SELECT COUNT(*) FROM table_iteminfos WHERE pageIndex=2") == 3, "successive distinct batch appends at actual last item " + grid);
    }
    private static void protectedAndRollback(int grid) throws Exception {
        ProbeContext context = fresh(grid, 1000); fill(0, grid);
        db.execSQL("UPDATE table_pageinfos SET status=1 WHERE _id=2");
        db.execSQL("UPDATE table_pageinfos SET pageTitle='special' WHERE _id=3");
        db.execSQL("UPDATE table_pageinfos SET data1='metadata' WHERE _id=4");
        db.execSQL("UPDATE table_pageinfos SET containment=1 WHERE _id=5");
        db.execSQL("UPDATE table_pageinfos SET pageIndex=-2 WHERE _id=6");
        pending(context, 1); activate(context);
        check(scalar("SELECT pageIndex FROM table_pageinfos WHERE _id=7") == 1, "special rows excluded from reuse " + grid);
        check(scalar("SELECT COUNT(*) FROM table_pageinfos WHERE (_id=2 AND status=1) OR (_id=3 AND pageTitle='special') OR (_id=4 AND data1='metadata') OR (_id=5 AND containment=1) OR (_id=6 AND pageIndex=-2)") == 5, "all special metadata retained " + grid);

        context = fresh(grid, 1000); fill(0, grid); db.execSQL("UPDATE table_pageinfos SET status=1 WHERE _id>=2");
        String before = pageRows(); pending(context, 1); activate(context);
        check(before.equals(pageRows()), "no slot failure leaves pages unchanged " + grid);
        check(scalar("SELECT COUNT(*) FROM table_iteminfos") == grid && pendingCount(context) == 1, "no slot failure retains db and pending " + grid);

        context = fresh(grid, 1000); fill(0, grid); db.execSQL("UPDATE table_pageinfos SET status=1 WHERE _id>=3");
        before = pageRows(); pending(context, grid + 1); activate(context);
        check(before.equals(pageRows()), "later capacity failure rolls back first reused slot " + grid);
        check(scalar("SELECT COUNT(*) FROM table_iteminfos") == grid && pendingCount(context) == grid + 1, "partial batch rolls back all inserted items " + grid);

        context = fresh(grid, 1000); db.execSQL("UPDATE table_pageinfos SET pageIndex=999 WHERE _id=1"); fill(999, grid);
        before = pageRows(); pending(context, 1); activate(context);
        check(before.equals(pageRows()) && pendingCount(context) == 1, "page index 1000 rejected despite spare slots " + grid);
        check(scalar("SELECT COUNT(*) FROM table_iteminfos") == grid, "index overflow leaves items unchanged " + grid);

        context = fresh(grid, 1000); db.execSQL("UPDATE table_pageinfos SET pageIndex=_id-1"); fill(999, grid);
        before = pageRows(); pending(context, 1); activate(context);
        check(before.equals(pageRows()) && scalar("SELECT COUNT(*) FROM table_iteminfos") == grid && pendingCount(context) == 1, "all allocated page rows leave pending intact " + grid);

        context = fresh(grid, 999); fill(0, grid); db.execSQL("UPDATE table_pageinfos SET pageIndex=-2,status=1 WHERE _id>=2");
        pending(context, 1); activate(context); placement(1, 1, 0);
        check(scalar("SELECT COUNT(*) FROM table_pageinfos") == 1000, "last allowed row appended without spare slots " + grid);
        before = pageRows(); pending(context, grid, 1); activate(context);
        check(before.equals(pageRows()) && scalar("SELECT COUNT(*) FROM table_iteminfos") == grid + 1 && pendingCount(context) == grid, "next batch crossing row limit rolls back " + grid);

        context = fresh(grid, 1000); fill(0, grid); db.execSQL("UPDATE table_pageinfos SET pageIndex=1,pageTitle='existing-next' WHERE _id=2");
        pending(context, 1); activate(context); placement(1, 1, 0);
        check(scalar("SELECT COUNT(*) FROM table_pageinfos WHERE pageIndex=1") == 1, "existing empty destination page not duplicated " + grid);
        check(scalar("SELECT COUNT(*) FROM table_pageinfos WHERE _id=2 AND pageTitle='existing-next'") == 1, "existing destination metadata unchanged " + grid);

        context = fresh(grid, 1000); insert(item(50, 0, grid - 1, "Folder").put("itemType", 2).put("folderIndex", 0).put("packageName", "com.smartisan.folder"));
        pending(context, 1); activate(context); placement(1, 1, 0);
        check(scalar("SELECT COUNT(*) FROM table_iteminfos WHERE itemType=2 AND _id=50") == 1, "root folder occupies its original cell " + grid);
        context = fresh(grid, 1000); insert(item(50, 0, grid - 1, "Folder").put("itemType", 2).put("folderIndex", 0).put("packageName", "com.smartisan.folder"));
        JSONObject snapshot = LayoutSnapshotExporter.exportStableSnapshot(context);
        insert(item(60, 0, grid - 2, "PreservedAfterFolder"));
        File restorePending = new File(context.getFilesDir(), "backup_restore/folder-roundtrip.json"); restorePending.getParentFile().mkdirs();
        LayoutSnapshotImporter.ImportResult result = LayoutSnapshotImporter.restore(context, snapshot, grid, restorePending, new JSONObject(), context.getCacheDir());
        check(result.preserved == 1 && scalar("SELECT pageIndex FROM table_iteminfos WHERE componentName LIKE '%/PreservedAfterFolder'") == 1, "main importer respects full root folder page " + grid);
        check(scalar("SELECT cellIndex FROM table_iteminfos WHERE componentName LIKE '%/PreservedAfterFolder'") == 0 && scalar("SELECT COUNT(*) FROM table_pageinfos") == 1000, "main importer uses same slot rule after folder " + grid);
    }
    private static void pendingIdentityAndRetry(boolean baseline) throws Exception {
        ProbeContext context = fresh(12, 1000);
        pending(context, 1);
        // DB and JSON files have separate commits. Fail only the JSON checkpoint.
        android.system.Os.chmod(pending(context).getParent(), 0550);
        android.system.Os.chmod(pending(context).getPath(), 0440);
        try {
            activate(context);
            check(scalar("SELECT COUNT(*) FROM table_iteminfos") == 1 && pendingCount(context) == 1, "JSON EACCES retains pending after DB commit");
            activate(context);
            if (baseline) {
                check(scalar("SELECT COUNT(*) FROM table_iteminfos") == 2, "baseline retry duplicates committed pending identity");
                System.out.println("BASELINE_PENDING_DUPLICATE_REPRODUCED rows=2");return;
            }
            check(scalar("SELECT COUNT(*) FROM table_iteminfos") == 1 && pendingCount(context) == 1, "retry while JSON unwritable does not reinsert");
        } finally {
            android.system.Os.chmod(pending(context).getParent(), 0770);
            android.system.Os.chmod(pending(context).getPath(), 0660);
        }
        activate(context);check(pendingCount(context) == 0 && scalar("SELECT COUNT(*) FROM table_iteminfos") == 1, "repaired JSON consumes existing DB identity");
        check(scalar("SELECT pageIndex FROM table_iteminfos") == 0 && scalar("SELECT cellIndex FROM table_iteminfos") == 0, "retry retains committed placement");
        String before=pageRows();pending(context,1);activate(context);
        check(before.equals(pageRows())&&scalar("SELECT COUNT(*) FROM table_iteminfos")==1,"stale pending replay preserves pages and row");

        context=fresh(12,1000);Fixture.states.put(10,PackageState.PRESENT);
        JSONObject primary=item(50,0,4,"Main");insert(primary);
        JSONObject clone=item(1,0,0,"Main").put("user",10).put("targetProfileSerial",1010);
        JSONArray identities=new JSONArray().put(clone).put(clone)
                .put(item(2,0,0,"Second").put("user",10).put("targetProfileSerial",1010))
                .put(item(3,0,0,"Main").put("user",0))
                .put(item(4,0,0,"Main").put("itemType",5));
        BackupFileUtils.writeJson(pending(context),new JSONObject().put("items",identities));activate(context);
        check(scalar("SELECT COUNT(*) FROM table_iteminfos WHERE user=0 AND itemType=0")==1,"primary identity matches existing row");
        check(scalar("SELECT COUNT(*) FROM table_iteminfos WHERE user=10")==2,"same-package profiles/components remain distinct and batch duplicates coalesce");
        check(scalar("SELECT COUNT(*) FROM table_iteminfos WHERE itemType=5")==1,"different item type is not consumed as existing application");
        check(scalar("SELECT cellIndex FROM table_iteminfos WHERE _id=50")==4,"existing application position is preserved");
        check(pendingCount(context)==0,"all resolved identities consumed");

        context=fresh(12,1000);
        String shortcutA=new android.content.Intent().putExtra("smartisan.shortcut.package",PKG)
                .putExtra("smartisan.shortcut.id","a").putExtra("smartisan.shortcut.user_serial",1000L).toUri(0);
        String shortcutB=new android.content.Intent().putExtra("smartisan.shortcut.package",PKG)
                .putExtra("smartisan.shortcut.id","b").putExtra("smartisan.shortcut.user_serial",1000L).toUri(0);
        JSONObject shortcut=item(50,0,2,"OldBridge").put("itemType",1).put("intent",shortcutA);insert(shortcut);
        JSONObject sameShortcut=item(1,0,0,"NewBridge").put("itemType",1).put("intent",shortcutA);
        JSONObject otherShortcut=item(2,0,0,"NewBridge").put("itemType",1).put("intent",shortcutB);
        BackupFileUtils.writeJson(pending(context),new JSONObject().put("items",new JSONArray().put(sameShortcut).put(otherShortcut)));activate(context);
        check(scalar("SELECT COUNT(*) FROM table_iteminfos")==2&&pendingCount(context)==0,"shortcut id distinguishes shared bridge and ignores bridge migration");
        check(scalar("SELECT cellIndex FROM table_iteminfos WHERE _id=50")==2,"existing shortcut placement retained");

        context=fresh(12,1000);Fixture.states.put(10,PackageState.PROFILE_QUIET);
        BackupFileUtils.writeJson(pending(context),new JSONObject().put("items",new JSONArray().put(clone)));activate(context);
        check(pendingCount(context)==1&&scalar("SELECT COUNT(*) FROM table_iteminfos")==0,"quiet clone not inferred from primary presence");
        Fixture.states.put(10,PackageState.PRESENT);activate(context);
        check(pendingCount(context)==0&&scalar("SELECT COUNT(*) FROM table_iteminfos WHERE user=10")==1,"available clone activates its target identity");
        context=fresh(12,1000);db.execSQL("CREATE TRIGGER fail_pending BEFORE INSERT ON table_iteminfos BEGIN SELECT RAISE(ABORT,'fixture DB failure'); END");pending(context,1);activate(context);
        check(pendingCount(context)==1&&scalar("SELECT COUNT(*) FROM table_iteminfos")==0,"DB failure retains pending without consumption");
        check(scalar("SELECT COUNT(*) FROM table_pageinfos WHERE pageIndex>=0")==1,"DB failure rolls back page writes");
        db.execSQL("DROP TRIGGER fail_pending");activate(context);
        check(pendingCount(context)==0&&scalar("SELECT COUNT(*) FROM table_iteminfos")==1,"DB repair retries safely");
    }
    public static void main(String[] args) throws Exception {
        root = new File(args[0]).getCanonicalFile();
        if (!root.getPath().startsWith("/data/local/tmp/smartisan-restore-pages-f02-")) throw new IllegalArgumentException("Unsafe probe workspace");
        root.mkdirs(); Looper.prepareMainLooper();
        if (args[1].equals("pending-seed")) {
            root=new File(root,"restart");root.mkdirs();
            ProbeContext context=fresh(12,1000);pending(context,1);
            android.system.Os.chmod(pending(context).getParent(),0550);
            android.system.Os.chmod(pending(context).getPath(),0440);activate(context);
            check(scalar("SELECT COUNT(*) FROM table_iteminfos")==1&&pendingCount(context)==1,"seed DB committed and JSON retained");
            System.out.println("PENDING_CHECKPOINT_READY");System.out.flush();
            android.system.Os.kill(android.os.Process.myPid(),android.system.OsConstants.SIGKILL);
        } else if (args[1].equals("pending-restart")) {
            root=new File(root,"restart");Fixture.reset();Fixture.states.put(0,PackageState.PRESENT);
            File directory=new File(root,"case0");db=SQLiteDatabase.openOrCreateDatabase(new File(directory,"fixture.db"),null);
            ProbeContext context=new ProbeContext(directory,12);
            check(scalar("SELECT COUNT(*) FROM table_iteminfos")==1&&pendingCount(context)==1,"DB and pending survive SIGKILL");
            android.system.Os.chmod(pending(context).getParent(),0770);
            android.system.Os.chmod(pending(context).getPath(),0660);activate(context);
            check(scalar("SELECT COUNT(*) FROM table_iteminfos")==1&&pendingCount(context)==0,"new process consumes pending without duplicate");
            check(scalar("SELECT cellIndex FROM table_iteminfos")==0,"new process retains original placement");
            System.out.println("PASS PENDING_RESTART_CHECKS="+checks);
        } else if (args[1].equals("pending-baseline")) {
            pendingIdentityAndRetry(true);
        } else if (args[1].equals("pending")) {
            pendingIdentityAndRetry(false);
            System.out.println("PASS PENDING_IDENTITY_CHECKS=" + checks);
        } else if (args[1].equals("baseline")) {
            ProbeContext context = fresh(12, 1000); fill(0, 12); pending(context, 1); activate(context);
            check(scalar("SELECT COUNT(*) FROM table_pageinfos") == 1001, "baseline creates row 1001");
            check(scalar("SELECT COUNT(*) FROM table_pageinfos WHERE pageIndex=-1") == 999, "baseline ignores reserved slots");
            System.out.println("BASELINE_PAGE_OVERFLOW_REPRODUCED pageRows=1001 unused=999");
        } else {
            for (int grid : new int[]{12, 20}) { basicAndRoundTrip(grid); protectedAndRollback(grid); }
            System.out.println("PASS RESTORE_PAGE_CHECKS=" + checks);
        }
        db.close();
    }
}
