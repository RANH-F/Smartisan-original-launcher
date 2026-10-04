package com.smartisanos.launcher.backup;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.SharedPreferences;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import java.io.File;
import java.io.FileOutputStream;
import java.lang.reflect.Proxy;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import static com.smartisanos.launcher.backup.BackupOperationJournal.State.*;

/** Real Android IO/Looper with a controlled document-provider deletion boundary. */
public final class BackupStartupCleanupProbe {
    static int checks, fixtures;
    static File root;
    static Thread mainThread;
    static volatile Thread providerThread;
    static volatile boolean blockProvider, failProvider, heartbeat;
    static CountDownLatch providerEntered, providerRelease;
    static void check(boolean valid, String label) {
        checks++;if (!valid) throw new AssertionError(label);
    }
    public static void deleteProvider(Context context, Uri uri) {
        providerThread = Thread.currentThread();providerEntered.countDown();
        if (blockProvider) {
            try { if (!providerRelease.await(5, TimeUnit.SECONDS)) throw new AssertionError("provider fixture timed out"); }
            catch (InterruptedException error) { throw new AssertionError(error); }
        }
        if (failProvider) throw new SecurityException("fixture permission revoked");
    }
    static final class ProbeContext extends ContextWrapper {
        final File dir;
        final Map<String,Object> values = new HashMap<>();
        final SharedPreferences prefs;
        ProbeContext(File directory) {
            super(null);dir=directory;
            final Object[] editor = new Object[1];
            editor[0] = Proxy.newProxyInstance(getClass().getClassLoader(), new Class<?>[]{SharedPreferences.Editor.class}, new InvocationHandler() {
                public Object invoke(Object proxy,Method method,Object[] args) {
                String name=method.getName();
                if(name.equals("commit"))return true;
                if(name.equals("apply"))return null;
                if(name.equals("clear"))values.clear();
                else if(name.equals("remove"))values.remove(args[0]);
                else if(name.startsWith("put"))values.put((String)args[0],args[1]);
                return editor[0];}
            });
            prefs=(SharedPreferences)Proxy.newProxyInstance(getClass().getClassLoader(),new Class<?>[]{SharedPreferences.class},new InvocationHandler(){
                public Object invoke(Object proxy,Method method,Object[] args) {
                String name=method.getName();if(name.equals("edit"))return editor[0];
                if(name.equals("getAll"))return new HashMap<>(values);
                if(name.equals("contains"))return values.containsKey(args[0]);
                if(name.startsWith("get"))return values.containsKey(args[0])?values.get(args[0]):args[1];
                return null;}
            });
        }
        public File getFilesDir(){File f=new File(dir,"files");f.mkdirs();return f;}
        public File getCacheDir(){File f=new File(dir,"cache");f.mkdirs();return f;}
        public Context getApplicationContext(){return this;}
        public SharedPreferences getSharedPreferences(String name,int mode){return prefs;}
    }
    static ProbeContext fresh() {
        providerThread=null;blockProvider=false;failProvider=false;heartbeat=false;
        providerEntered=new CountDownLatch(1);providerRelease=new CountDownLatch(1);
        return new ProbeContext(new File(root,"case"+(fixtures++)));
    }
    static BackupOperationJournal.Entry seed(ProbeContext c,BackupOperationJournal.State state) throws Exception {
        BackupOperationJournal.Entry e=new BackupOperationJournal.Entry();e.token="old-backup";
        e.stagingPath=new File(c.getCacheDir(),"old-staging").getPath();e.partialUri="content://fixture/partial";
        File staging=new File(e.stagingPath);staging.mkdirs();
        try(FileOutputStream out=new FileOutputStream(new File(staging,"archive.partial"))){out.write(1);}
        check(new BackupOperationJournal(c).write(e,state,null),"fixture journal committed");return e;
    }
    static void onMain(final Runnable work) throws Exception {
        final CountDownLatch done=new CountDownLatch(1);
        new Handler(Looper.getMainLooper()).post(new Runnable(){public void run(){work.run();done.countDown();}});
        check(done.await(5,TimeUnit.SECONDS),"MAIN call completed");
    }
    static void cleanupOnMain(final Context context) throws Exception {
        onMain(new Runnable(){public void run(){DesktopBackupController.cleanupInterruptedBackup(context);}});
    }
    static void finished() throws Exception {
        for(Thread thread:Thread.getAllStackTraces().keySet())if(thread.getName().equals("DesktopBackupCleanup")) {
            thread.join(5000);check(!thread.isAlive(),"cleanup worker finished");
        }
        check(!BackupOperationLock.isBusy(),"cleanup releases operation gate");
    }
    static void cases(boolean baseline) throws Exception {
        if(baseline) {
            ProbeContext c=fresh();seed(c,COPYING_TO_DESTINATION);
            cleanupOnMain(c);
            check(providerThread==mainThread,"baseline deletes provider document on MAIN");
            check(new BackupOperationJournal(c).read().state==IDLE,"baseline reset occurs before MAIN returns");
            System.out.println("BASELINE_BACKUP_STARTUP_PROVIDER_ON_MAIN checks="+checks);return;
        }
        for(BackupOperationJournal.State state:BackupOperationJournal.State.values()) {
            ProbeContext c=fresh();BackupOperationJournal.Entry e=seed(c,state);
            cleanupOnMain(c);finished();
            boolean ignored=state==IDLE||state==COMPLETE;
            check(new BackupOperationJournal(c).read().state==(ignored?state:IDLE),"journal semantics "+state);
            check(new File(e.stagingPath).exists()==ignored,"staging semantics "+state);
            check((providerThread==null)==ignored,"provider call semantics "+state);
            check(providerThread==null||providerThread!=mainThread,"provider never on MAIN "+state);
            check(c.prefs.getBoolean("last_backup_incomplete",false)==(!ignored&&state!=PREVIEW_READY),"incomplete notice semantics "+state);
        }
        final ProbeContext blocked=fresh();BackupOperationJournal.Entry e=seed(blocked,COPYING_TO_DESTINATION);blockProvider=true;
        cleanupOnMain(blocked);
        check(providerEntered.await(5,TimeUnit.SECONDS),"provider blocker entered");
        check(BackupOperationLock.isBusy(),"blocked cleanup retains operation owner");
        check(!BackupOperationLock.acquire("new-backup"),"new backup/restore cannot overlap cleanup");
        onMain(new Runnable(){public void run(){heartbeat=true;DesktopBackupController.cleanupInterruptedBackup(blocked);}});
        check(heartbeat&&new BackupOperationJournal(blocked).read().state==COPYING_TO_DESTINATION,"MAIN responds before provider completes");
        providerRelease.countDown();finished();
        check(new BackupOperationJournal(blocked).read().state==IDLE,"blocked provider completion resets journal");
        ProbeContext busy=fresh();BackupOperationJournal.Entry active=seed(busy,BUILDING_ARCHIVE);
        check(BackupOperationLock.acquire("active-backup"),"active operation owns gate");
        cleanupOnMain(busy);
        check(BackupOperationLock.owns("active-backup")&&new File(active.stagingPath).isDirectory(),"startup cleanup cannot delete active backup");
        check(new BackupOperationJournal(busy).read().state==BUILDING_ARCHIVE&&providerThread==null,"active journal preserved");
        BackupOperationLock.release("active-backup");
        ProbeContext revoked=fresh();seed(revoked,COPYING_TO_DESTINATION);failProvider=true;
        cleanupOnMain(revoked);finished();
        check(new BackupOperationJournal(revoked).read().state==IDLE&&revoked.prefs.getBoolean("last_backup_incomplete",false),"revoked provider keeps original incomplete notice policy");
        cleanupOnMain(null);check(!BackupOperationLock.isBusy(),"null context ignored");
        System.out.println("PASS BACKUP_STARTUP_CLEANUP_CHECKS="+checks);
    }
    public static void main(final String[] args) throws Exception {
        root=new File(args[0]).getCanonicalFile();
        if(!root.getPath().startsWith("/data/local/tmp/smartisan-backup-startup-"))throw new IllegalArgumentException("outside isolated workspace");
        root.mkdirs();Looper.prepareMainLooper();mainThread=Thread.currentThread();
        new Thread(new Runnable(){public void run(){try{cases(args[1].equals("baseline"));System.exit(0);}catch(Exception error){throw new AssertionError(error);}}},"ProbeCases").start();
        Looper.loop();
    }
}
