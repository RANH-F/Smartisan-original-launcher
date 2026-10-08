package com.smartisanos.home.settings.icons;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.SharedPreferences;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteStatement;
import android.os.CancellationSignal;
import android.os.Looper;
import java.io.File;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;

/** Real Android SQLite/XML in a shell-owned cache. Launcher preferences/data are never written. */
public final class DirectoryProbe {
    static int checks;
    static void check(boolean value,String label) { if(!value)throw new AssertionError(label);checks++; }
    static final class Base extends ContextWrapper {
        final File cache;
        Base(Context context,File cache){super(context);this.cache=cache;cache.mkdirs();}
        public File getCacheDir(){return cache;}
        public Context getApplicationContext(){return this;}
        public SharedPreferences getSharedPreferences(String name,int mode) {
            // Only the selected-pack string is read by the production pack owner.
            return (SharedPreferences)java.lang.reflect.Proxy.newProxyInstance(SharedPreferences.class.getClassLoader(),
                new Class[]{SharedPreferences.class},new java.lang.reflect.InvocationHandler() {
                  public Object invoke(Object p,Method m,Object[] args) {
                    if(m.getName().equals("getString"))return args[1];
                    if(m.getName().equals("getBoolean"))return args[1];
                    if(m.getName().equals("getLong"))return args[1];
                    if(m.getName().equals("getAll"))return java.util.Collections.emptyMap();
                    if(m.getName().equals("contains"))return false;
                    throw new UnsupportedOperationException(m.getName());
                  }
                });
        }
    }
    static SQLiteDatabase database(Context context)throws Exception {
        Method method=IconPackManager.class.getDeclaredMethod("searchDb",Context.class);method.setAccessible(true);
        return (SQLiteDatabase)method.invoke(null,context);
    }
    static void run(Context context)throws Exception {
        SQLiteDatabase db=database(context);
        for(int packs:new int[]{0,1,5,20}) {
            db.delete("icons",null,null);db.delete("packs",null,null);
            db.beginTransaction();
            try {
                SQLiteStatement insert=db.compileStatement("INSERT INTO icons(pack,drawable,name,name_n,category,terms,version) VALUES(?,?,?,?,?,?,?)");
                try {
                    for(int p=0;p<packs;p++)for(int i=0;i<5000;i++) {
                        String name=i%1000==0?"Chrome":"icon_"+i;
                        insert.bindString(1,"fixture.pack"+p);insert.bindString(2,"icon_"+i);insert.bindString(3,name);
                        insert.bindString(4,name.toLowerCase(java.util.Locale.ROOT));insert.bindString(5,"other");
                        insert.bindString(6,"|"+name.toLowerCase(java.util.Locale.ROOT)+"|com.fixture.application"+i+"|fixture.pack"+p+"|");
                        insert.bindLong(7,1L);insert.executeInsert();
                    }
                }finally{insert.close();}db.setTransactionSuccessful();
            }finally{db.endTransaction();}
            long started=android.os.SystemClock.uptimeMillis();
            IconPackManager.SearchSnapshot empty=IconPackManager.searchDirectory(context,"never_matches_any_entry",null,new CancellationSignal());
            long emptyMs=android.os.SystemClock.uptimeMillis()-started;
            check(empty.size()==0,"empty result");
            IconPackManager.SearchSnapshot match=IconPackManager.searchDirectory(context,"chrome",null,new CancellationSignal());
            check(match.size()==packs*5,"0/1/5/20 pack matching");
            IconPackManager.SearchSnapshot all=IconPackManager.searchDirectory(context,"",null,new CancellationSignal());
            check(all.size()==packs*5000,"all declared rows retained");
            for(int offset=0;offset<all.size();offset+=5000) {
                List<IconLibrarySearchIndex.Entry> page=IconPackManager.readSearchPage(context,all,offset,60,new CancellationSignal());
                check(page.size()==60,"page has 60 rows");check(page.get(0).isPack(),"PACK descriptor remains typed");
            }
            CancellationSignal cancelled=new CancellationSignal();cancelled.cancel();
            try {IconPackManager.searchDirectory(context,"chrome",null,cancelled);throw new AssertionError("cancel ignored");}
            catch(android.os.OperationCanceledException expected){checks++;}
            System.out.println("DIRECTORY_SQL packs="+packs+" rows="+all.size()+" emptyMs="+emptyMs+" matches="+match.size());
        }
        db.delete("icons",null,null);db.delete("packs",null,null);
        IconLibraryCatalog catalog=IconLibraryCatalog.load(context);
        for (String term : new String[]{"微信", "日历", "浏览器"}) {
            List<IconLibrarySearchIndex.Entry> matches = IconLibrarySearchIndex.search(catalog.entries,term,null,null);
            check(matches.size()>0,"Chinese query returned no catalog entries: "+term);
            System.out.println("CATALOG_CHINESE_QUERY text="+term+" count="+matches.size());
        }
        int installedMatches = 0;
        for (android.content.pm.ApplicationInfo app : context.getPackageManager().getInstalledApplications(0)) {
            IconLibrarySearchIndex.Entry entry = catalog.entryForPackage(app.packageName);
            if (entry == null) continue;
            String label = IconLibrarySearchIndex.normalize(context.getPackageManager().getApplicationLabel(app).toString());
            check(entry.searchText.contains("|" + label + "|"), "installed label absent from string-only index: " + app.packageName);
            installedMatches++;
        }
        check(installedMatches > 0, "no installed applications joined to catalog");
        System.out.println("CATALOG_INSTALLED_LABELS matches="+installedMatches);
        IconPreviewRepository.RequestSession session=new IconPreviewRepository.RequestSession();
        long begin=android.os.SystemClock.uptimeMillis();
        IconPackManager.prepareSearchIndex(context,session,catalog);
        long cold=android.os.SystemClock.uptimeMillis()-begin;
        IconPackManager.SearchSnapshot real=IconPackManager.searchDirectory(context,"",null,new CancellationSignal());
        long modified=new File(context.getCacheDir(),"icon_pack_search_v1.db").lastModified();
        begin=android.os.SystemClock.uptimeMillis();IconPackManager.prepareSearchIndex(context,session,catalog);
        long warm=android.os.SystemClock.uptimeMillis()-begin;
        check(new File(context.getCacheDir(),"icon_pack_search_v1.db").lastModified()==modified,"warm index not rewritten");
        Field ready=IconPackManager.class.getDeclaredField("sSearchReadyGeneration");ready.setAccessible(true);ready.setLong(null,-1L);
        begin=android.os.SystemClock.uptimeMillis();IconPackManager.prepareSearchIndex(context,session,catalog);
        long diskWarm=android.os.SystemClock.uptimeMillis()-begin;
        check(new File(context.getCacheDir(),"icon_pack_search_v1.db").lastModified()==modified,"disk index reused after memory cache loss");
        Field generation=IconPackManager.class.getDeclaredField("sPackGeneration");generation.setAccessible(true);generation.setLong(null,generation.getLong(null)+1);
        try{IconPackManager.readSearchPage(context,real,0,60,new CancellationSignal());if(real.size()>0)throw new AssertionError("stale generation accepted");}
        catch(android.os.OperationCanceledException expected){checks++;}
        System.out.println("DIRECTORY_REAL rows="+real.size()+" coldMs="+cold+" warmMs="+warm+" diskWarmMs="+diskWarm);
        System.out.println("PASS ICON_DIRECTORY_ANDROID checks="+checks+"; shell-owned data, no UI/frame claim");
    }
    public static void main(String[] args)throws Exception {
        Looper.prepareMainLooper();Class<?> type=Class.forName("android.app.ActivityThread");
        Object thread=type.getMethod("systemMain").invoke(null);
        Context system=(Context)type.getMethod("getSystemContext").invoke(thread);
        Context app=system.createPackageContext("com.smartisanos.launcher",0);
        Context context=new Base(app,new File("/data/local/tmp/icon-directory-probe-"+android.os.SystemClock.uptimeMillis()));
        final Throwable[] failure=new Throwable[1];
        Thread worker=new Thread(new Runnable(){public void run(){try{DirectoryProbe.run(context);}catch(Throwable error){failure[0]=error;}}},"directory-probe");worker.start();worker.join();
        if(failure[0]!=null)throw new RuntimeException(failure[0]);
    }
}
