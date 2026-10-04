package com.smartisanos.launcher.quicksearch.ui;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.res.AssetManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Looper;
import android.util.DisplayMetrics;
import java.io.File;
import java.io.FileOutputStream;
import java.lang.reflect.Proxy;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.CountDownLatch;

/** Shell-isolated filesystem and preferences; the production resource owner loads real APK assets. */
public final class SearchResourcesProbe {
    private static int checks;
    private static void check(boolean ok, String message) {
        if (!ok) throw new AssertionError(message);
        checks++;
    }
    private static final class Base extends ContextWrapper {
        final File directory, source;
        final Resources resources;
        final SharedPreferences prefs;
        boolean badAssets;
        Base(Context context, File directory, File source, SharedPreferences prefs,
             Configuration config, DisplayMetrics metrics) {
            super(context);
            this.directory=directory; this.source=source; this.prefs=prefs;
            resources=new Resources(context.getAssets(), metrics, config);
        }
        public File getCacheDir() { return directory; }
        public Resources getResources() { return resources; }
        public AssetManager getAssets() {
            if (!badAssets) return super.getAssets();
            try { return AssetManager.class.newInstance(); }
            catch (Exception e) { throw new IllegalStateException(e); }
        }
        public ApplicationInfo getApplicationInfo() {
            ApplicationInfo info=new ApplicationInfo(super.getApplicationInfo());
            info.sourceDir=source.getAbsolutePath(); return info;
        }
        public SharedPreferences getSharedPreferences(String name, int mode) { return prefs; }
    }
    private static SharedPreferences preferences() {
        final Map<String,Object> values=new HashMap<String,Object>();
        final SharedPreferences.Editor[] editor=new SharedPreferences.Editor[1];
        editor[0]=(SharedPreferences.Editor)Proxy.newProxyInstance(SearchResourcesProbe.class.getClassLoader(),
                new Class[]{SharedPreferences.Editor.class}, new InvocationHandler() {
                public Object invoke(Object proxy, Method method, Object[] args) {
                    String name=method.getName();
                    if (name.startsWith("put")) {values.put((String)args[0],args[1]); return editor[0];}
                    if (name.equals("apply")) return null;
                    if (name.equals("commit")) return true;
                    throw new UnsupportedOperationException(name);
                }});
        return (SharedPreferences)Proxy.newProxyInstance(SearchResourcesProbe.class.getClassLoader(),
                new Class[]{SharedPreferences.class}, new InvocationHandler() {
                public Object invoke(Object proxy, Method method, Object[] args) {
                    String name=method.getName();
                    if (name.equals("edit")) return editor[0];
                    if (name.equals("getLong") || name.equals("getString"))
                        return values.containsKey(args[0]) ? values.get(args[0]) : args[1];
                    throw new UnsupportedOperationException(name);
                }});
    }
    public static void main(String[] args) {
        try { run(); System.exit(0); }
        catch (Throwable error) { error.printStackTrace(); System.exit(1); }
    }
    private static void run() throws Exception {
        Looper.prepareMainLooper();
        Class<?> type=Class.forName("android.app.ActivityThread");
        Object thread=type.getMethod("systemMain").invoke(null);
        Context system=(Context)type.getMethod("getSystemContext").invoke(thread);
        Context app=system.createPackageContext("com.smartisanos.launcher",0);
        File directory=new File("/data/local/tmp/smartisan-search-res-probe-"+android.os.Process.myPid());
        check(directory.mkdirs(),"isolated directory unavailable");
        File source=new File(directory,"source-stamp");
        try (FileOutputStream out=new FileOutputStream(source)) {out.write(1);}
        Configuration config=new Configuration(app.getResources().getConfiguration());
        DisplayMetrics metrics=new DisplayMetrics(); metrics.setTo(app.getResources().getDisplayMetrics());
        SharedPreferences prefs=preferences();
        Base first=new Base(app,directory,source,prefs,config,metrics);
        Context a=OriginalQuickSearchResources.create(first);
        long warmStart=android.os.SystemClock.elapsedRealtimeNanos();
        for(int i=0;i<100;i++) {
            Base current=new Base(app,directory,source,prefs,config,metrics);
            Context b=OriginalQuickSearchResources.create(current);
            check(a.getResources()==b.getResources(),"repeat rebuilt resources");
            check(a.getAssets()==b.getAssets(),"repeat rebuilt assets");
            check(((ContextWrapper)b).getBaseContext()==current,"retained previous base");
            check(a.getTheme()!=b.getTheme(),"shared a caller theme");
        }
        double warmMs=(android.os.SystemClock.elapsedRealtimeNanos()-warmStart)/1e6;
        for(int i=0;i<4;i++) {
            Configuration changed=new Configuration(config);
            if(i==0) changed.setLocale(Locale.ENGLISH);
            if(i==1) changed.fontScale=config.fontScale+.25f;
            if(i==2) changed.orientation=config.orientation==1?2:1;
            if(i==3) changed.uiMode^=Configuration.UI_MODE_NIGHT_MASK;
            Context b=OriginalQuickSearchResources.create(new Base(app,directory,source,prefs,changed,metrics));
            check(a.getResources()!=b.getResources(),"configuration reused old resources");
            check(b.getResources().getConfiguration().equals(changed),"wrong configuration");
            a=OriginalQuickSearchResources.create(first);
        }
        DisplayMetrics changed=new DisplayMetrics(); changed.setTo(metrics); changed.densityDpi+=20;
        Configuration densityConfig=new Configuration(config); densityConfig.densityDpi=changed.densityDpi;
        Context density=OriginalQuickSearchResources.create(new Base(app,directory,source,prefs,densityConfig,changed));
        check(density.getResources()!=a.getResources(),"density reused old resources");
        a=OriginalQuickSearchResources.create(first);
        try(FileOutputStream out=new FileOutputStream(source,true)) {out.write(2);}
        Context upgrade=OriginalQuickSearchResources.create(first);
        check(upgrade.getResources()!=a.getResources(),"source change not invalidated");
        check(OriginalQuickSearchResources.isPrepared(first),"prepared key missing");
        File resource=new File(new File(directory,"quicksearch_original_res"),"original-quicksearch-res.apk");
        long oldLength=resource.length();
        try(FileOutputStream out=new FileOutputStream(source,true)) {out.write(3);}
        first.badAssets=true;
        boolean failed=false;
        try {OriginalQuickSearchResources.create(first);} catch(IllegalStateException expected) {failed=true;}
        check(failed,"copy failure silently accepted");
        check(!OriginalQuickSearchResources.isPrepared(first),"failure published resource key");
        check(resource.length()==oldLength,"failed copy destroyed existing resource file");
        first.badAssets=false;
        Context recovered=OriginalQuickSearchResources.create(first);
        check(OriginalQuickSearchResources.isPrepared(first),"failed copy cannot retry");
        check(resource.delete(),"isolated resource removal failed");
        Context afterRemoval=OriginalQuickSearchResources.create(first);
        check(afterRemoval.getResources()!=recovered.getResources(),"deleted disk cache stayed valid");
        final Resources[] concurrent=new Resources[8]; final Throwable[] errors=new Throwable[8];
        CountDownLatch ready=new CountDownLatch(8),go=new CountDownLatch(1),done=new CountDownLatch(8);
        for(int i=0;i<8;i++) { final int index=i; new Thread(new Runnable() { public void run() {
            ready.countDown();
            try {go.await();concurrent[index]=OriginalQuickSearchResources.create(first).getResources();}
            catch(Throwable error) {errors[index]=error;} finally {done.countDown();}
        }}).start(); }
        ready.await(); go.countDown(); done.await();
        for(int i=0;i<8;i++) {check(errors[i]==null,"concurrent caller failed");
            check(concurrent[i]==afterRemoval.getResources(),"concurrent resource duplicate");}
        System.out.println("PASS SEARCH_RESOURCES checks="+checks+" warm100_ms="+warmMs);
    }
}
