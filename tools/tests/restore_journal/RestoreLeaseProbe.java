package com.smartisanos.launcher.backup;

import android.content.Context;
import android.os.Looper;
import android.os.Handler;
import android.os.Process;
import android.os.SystemClock;
import java.io.File;
import java.lang.reflect.Constructor;
import org.json.JSONObject;

/** Real cross-process Android writer lease with isolated archive/import boundaries. */
public final class RestoreLeaseProbe {
    static File root;
    static int checks;
    static void check(boolean value,String message) {
        checks++;if(!value)throw new AssertionError(message);
    }
    static Context context() throws Exception {
        Class<?> type=Class.forName("com.smartisanos.launcher.backup.DeviceCheckpointProbe$ProbeContext");
        Constructor<?> constructor=type.getDeclaredConstructor(File.class);constructor.setAccessible(true);
        return (Context)constructor.newInstance(new File(root,"data"));
    }
    static void marker(String name,String value) throws Exception {
        BackupFileUtils.writeBytes(new File(root,name),value.getBytes(BackupFileUtils.UTF_8));
    }
    static RestoreOperationJournal.Entry seed(Context context,String phase) throws Exception {
        RestoreOperationJournal.Entry entry=new RestoreOperationJournal.Entry();entry.operationToken="lease-probe";
        entry.stagingPath=new File(context.getCacheDir(),"staging").getPath();
        entry.rollbackPath=DesktopRestoreController.rollbackArchive(context).getPath();
        BackupFileUtils.writeBytes(new File(entry.stagingPath,"source.slauncherbackup"),new byte[]{1});
        BackupFileUtils.writeBytes(new File(entry.rollbackPath),new byte[]{2});
        new RestoreOperationJournal(context).write(entry,RestoreOperationJournal.State.valueOf(phase),null);
        return entry;
    }
    static void writer(Context context,String phase,String completePhase) throws Exception {
        try(BackupOperationLock.RestoreWriter writer=BackupOperationLock.acquireRestoreWriter(context)) {
            RestoreOperationJournal.Entry entry=seed(context,phase);
            marker("writer.ready",Integer.toString(Process.myPid()));
            long deadline=SystemClock.elapsedRealtime()+15000;
            while(!new File(root,"release").isFile()) {
                if(SystemClock.elapsedRealtime()>deadline)throw new AssertionError("writer release fixture timeout");
                Thread.sleep(10);
            }
            new RestoreOperationJournal(context).write(entry,RestoreOperationJournal.State.valueOf(completePhase),null);
        }
        System.out.println("WRITER_RELEASED");
    }
    static void guard(final Context context,final boolean expectedRollback) throws Exception {
        Effects.clear();
        new Handler(Looper.getMainLooper()).post(new Runnable(){public void run(){
            try { marker("main.heartbeat","delivered"); } catch(Exception error){throw new AssertionError(error);}
        }});
        marker("guard.entered",Integer.toString(Process.myPid()));
        long start=SystemClock.elapsedRealtime();
        RestoreRecoveryGuard.beforeLauncherDatabaseInit(context);
        final long elapsed=SystemClock.elapsedRealtime()-start;
        marker("guard.returned",Long.toString(elapsed));
        check(new RestoreOperationJournal(context).read().state==RestoreOperationJournal.State.IDLE,"guard finishes terminal journal");
        check(new File(DesktopRestoreController.rollbackArchive(context).getPath()).isFile(),"latest undo archive remains");
        int imports=java.util.Collections.frequency(Effects.events,"DB");
        check(imports==(expectedRollback?1:0),"correct import count after writer release");
        if(expectedRollback) {
            check(Effects.lastArchive.equals(DesktopRestoreController.rollbackArchive(context)),"interrupted guard selects rollback archive");
            check("RESTORE_RECOVERY_ROLLED_BACK".equals(context.getSharedPreferences(DesktopBackupController.PREFS,0).getString("pending_restore_toast","")),"guard records rollback result");
        }
        try(BackupOperationLock.RestoreWriter writer=BackupOperationLock.acquireRestoreWriter(context)) {
            check(true,"writer lease can be reacquired after guard finishes");
        }
        new Handler(Looper.getMainLooper()).post(new Runnable(){public void run(){
            try {
                check(new File(root,"main.heartbeat").isFile(),"queued MAIN work resumes after safety gate");
                JSONObject result=new JSONObject().put("checks",checks).put("wait_and_recovery_ms",elapsed)
                        .put("imports",java.util.Collections.frequency(Effects.events,"DB"))
                        .put("guard_pid",Process.myPid());
                System.out.println("PASS RESTORE_LEASE "+result.toString());System.exit(0);
            } catch(Exception error){throw new AssertionError(error);}
        }});
        Looper.loop();
    }
    public static void main(String[] args) throws Exception {
        root=new File(args[0]).getCanonicalFile();
        if(!root.getPath().startsWith("/data/local/tmp/smartisan-restore-lease-"))throw new IllegalArgumentException("outside isolated workspace");
        root.mkdirs();Looper.prepareMainLooper();Context context=context();
        if(args[1].equals("writer"))writer(context,args[2],args[3]);
        else if(args[1].equals("guard"))guard(context,Boolean.parseBoolean(args[2]));
        else throw new IllegalArgumentException("unknown mode");
    }
}
