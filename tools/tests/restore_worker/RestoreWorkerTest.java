package com.smartisanos.launcher.backup;

import android.app.ActivityManager;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.util.AtomicFile;
import android.view.Choreographer;
import com.smartisanos.launcher.reload.LauncherColdReloadCoordinator;
import com.smartisanos.launcher.reload.ReloadProtocol;
import com.smartisanos.launcher.reload.ReloadTransitionActivity;
import java.io.File;
import java.io.FileOutputStream;
import java.lang.reflect.Method;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import static com.smartisanos.launcher.backup.RestoreOperationJournal.State.*;

public class RestoreWorkerTest {
    static int checks, cases;
    static File root;
    static void check(boolean value, String reason) {
        checks++;
        if (!value) throw new AssertionError(reason + " events=" + Effects.events);
    }
    static Context fresh() {
        Handler.all(); Choreographer.frames.clear(); Effects.clear(); AtomicFile.failState="";
        ActivityManager.alive=false;
        return new Context(new File(root,"case"+(cases++)));
    }
    static void write(File file) throws Exception {
        file.getParentFile().mkdirs(); try(FileOutputStream out=new FileOutputStream(file)){out.write(1);}
    }
    static RestoreOperationJournal.Entry entry(Context c) throws Exception {
        RestoreOperationJournal.Entry e=new RestoreOperationJournal.Entry();
        e.operationToken="token";e.stagingPath=new File(c.getCacheDir(),"staging").getAbsolutePath();
        e.rollbackPath=DesktopRestoreController.rollbackArchive(c).getAbsolutePath();
        write(new File(e.stagingPath,"source.slauncherbackup"));write(new File(e.rollbackPath));
        new RestoreOperationJournal(c).write(e,WAITING_TRANSITION,null);return e;
    }
    static ReloadTransitionActivity activity(Context c) {
        ReloadTransitionActivity a=new ReloadTransitionActivity(c);
        a.intent.putExtra(ReloadProtocol.EXTRA_MAIN_PROCESS_PID,700);return a;
    }
    static void request(ReloadTransitionActivity a, boolean retry, String reason) throws Exception {
        Method method;
        if(retry)method=LauncherColdReloadCoordinator.class.getDeclaredMethod("retryStartLauncher",android.app.Activity.class,String.class,String.class,int.class,String.class);
        else method=LauncherColdReloadCoordinator.class.getDeclaredMethod("waitForOldMainExitAndStartLauncher",android.app.Activity.class,String.class,int.class,String.class,int.class,String.class);
        method.setAccessible(true);
        if(retry)method.invoke(null,a,"token",reason,12,"normal");
        else method.invoke(null,a,"token",700,reason,12,"normal");
    }
    static void cancel() throws Exception {
        Method m=LauncherColdReloadCoordinator.class.getDeclaredMethod("cancelPendingLauncherStart",String.class);
        m.setAccessible(true);m.invoke(null,"token");
    }
    static void entered(CountDownLatch latch) throws Exception {check(latch.await(5,TimeUnit.SECONDS),"worker entered fixture");}
    static void completeApply() throws Exception {
        Effects.importRelease.countDown();Handler.one();
    }
    static void pumpUntil(CountDownLatch latch) throws Exception {
        while(latch.getCount()!=0)Handler.one();
    }
    static void writerProcesses(Context c) throws Exception {
        String java=new File(System.getProperty("java.home"),"bin/java.exe").getAbsolutePath();
        for(boolean kill:new boolean[]{false,true}){
            Process child=new ProcessBuilder(java,"-cp",System.getProperty("java.class.path"),
                    RestoreWorkerTest.class.getName(),c.root.getAbsolutePath(),"hold").start();
            java.io.BufferedReader lines=new java.io.BufferedReader(new java.io.InputStreamReader(child.getInputStream()));
            check("HELD".equals(lines.readLine()),"child process owns OS lock");
            CountDownLatch waiting=new CountDownLatch(1),acquired=new CountDownLatch(1);
            Thread waiter=new Thread(new Runnable(){public void run(){waiting.countDown();
                try(BackupOperationLock.RestoreWriter w=BackupOperationLock.acquireRestoreWriter(c)){acquired.countDown();}
                catch(Exception error){throw new AssertionError(error);}}});
            waiter.start();entered(waiting);
            check(!acquired.await(150,TimeUnit.MILLISECONDS),"another process cannot acquire active writer");
            if(kill)child.destroyForcibly();else{child.getOutputStream().write(1);child.getOutputStream().flush();}
            check(child.waitFor(5,TimeUnit.SECONDS),"child exits");entered(acquired);waiter.join(5000);
            check(!waiter.isAlive(),"writer released on completion or process death");
        }
    }
    static void awaitCleanup() throws Exception {
        for(Thread thread:Thread.getAllStackTraces().keySet()) {
            if(thread.getName().equals("DesktopRestoreCleanup")) {
                thread.join(5000);check(!thread.isAlive(),"cleanup completes within fixture bound");
            }
        }
        Handler.all();
    }
    static void cleanupCases() throws Exception {
        for(boolean undo:new boolean[]{false,true}) {
            Context c=fresh();RestoreOperationJournal.Entry e=entry(c);e.undo=undo;
            RestoreOperationJournal journal=new RestoreOperationJournal(c);journal.write(e,COMMITTED,null);
            // Holding the real writer lease makes the worker wait without blocking MAIN.
            BackupOperationLock.RestoreWriter writer=BackupOperationLock.acquireRestoreWriter(c);
            AtomicFile.writeThread=null;
            DesktopRestoreController.onLauncherFirstFrame(c,"token","BACKUP_RESTORE");
            DesktopRestoreController.onLauncherFirstFrame(c,"token","BACKUP_RESTORE");
            check(journal.read().state==COMMITTED&&AtomicFile.writeThread==null,"no journal IO while writer owned");
            check(BackupOperationLock.isBusy(),"cleanup reserves existing operation gate");
            check(!DesktopRestoreController.beginUndo(c,null),"next undo cannot reuse archive during cleanup");
            final boolean[] heartbeat={false};new Handler(Looper.getMainLooper()).post(new Runnable(){public void run(){heartbeat[0]=true;}});
            Handler.one();check(heartbeat[0]&&Effects.events.isEmpty(),"first frame MAIN responds before cleanup success");
            writer.close();awaitCleanup();
            check(AtomicFile.writeThread!=null&&AtomicFile.writeThread!=Looper.MAIN,"cleanup checkpoint writes off MAIN");
            check(journal.read().state==IDLE&&!new File(e.stagingPath).exists(),"durable reset then staging removed");
            check(new File(e.rollbackPath).exists()!=undo,"normal restore keeps undo; undo completion removes archive");
            check(java.util.Collections.frequency(Effects.events,"TOAST:"+(undo?"UNDO_COMPLETE":"RESTORE_COMPLETE"))==1,"duplicate first frame reports once on MAIN");
            check(Effects.events.contains("PRIME")!=undo,"hydrate only normal successful restore");
            check(!BackupOperationLock.isBusy(),"cleanup releases operation owner");
        }
        for(String failure:new String[]{"CLEANING","IDLE"}) {
            Context c=fresh();RestoreOperationJournal.Entry e=entry(c);e.undo=true;
            RestoreOperationJournal journal=new RestoreOperationJournal(c);journal.write(e,COMMITTED,null);
            AtomicFile.failState=failure;DesktopRestoreController.onLauncherFirstFrame(c,"token","BACKUP_RESTORE_ROLLBACK");awaitCleanup();
            check(new File(e.stagingPath).exists()&&new File(e.rollbackPath).exists(),"failed checkpoint retains source and undo");
            check(!Effects.events.contains("TOAST:UNDO_COMPLETE")&&!Effects.events.contains("PRIME"),"no success or hydrate after failed checkpoint");
            check(Effects.events.contains("TOAST:RESTORE_JOURNAL_WRITE_FAILED"),"specific failure callback on MAIN");
            check(!BackupOperationLock.isBusy(),"failed cleanup releases transient gate");AtomicFile.failState="";
            check(journal.read().state==(failure.equals("IDLE")?CLEANING:COMMITTED),"last durable checkpoint retained");
        }
        for(int mismatch=0;mismatch<3;mismatch++) {
            Context c=fresh();RestoreOperationJournal.Entry e=entry(c);
            RestoreOperationJournal journal=new RestoreOperationJournal(c);journal.write(e,mismatch==1?READY:COMMITTED,null);
            if(mismatch==2)BackupOperationLock.acquire("new-operation");
            DesktopRestoreController.onLauncherFirstFrame(c,mismatch==0?"stale":"token","BACKUP_RESTORE");awaitCleanup();
            check(journal.read().state==(mismatch==1?READY:COMMITTED)&&new File(e.rollbackPath).isFile(),"stale token/nonterminal/busy owner keep journal and archive");
            check(Effects.events.isEmpty(),"ignored callback has no UI effects");
            if(mismatch==2){check(BackupOperationLock.owns("new-operation"),"old cleanup cannot release newer owner");BackupOperationLock.release("new-operation");}
        }
        Context replaced=fresh();RestoreOperationJournal.Entry previous=entry(replaced);
        RestoreOperationJournal replacementJournal=new RestoreOperationJournal(replaced);replacementJournal.write(previous,COMMITTED,null);
        BackupOperationLock.RestoreWriter held=BackupOperationLock.acquireRestoreWriter(replaced);
        DesktopRestoreController.onLauncherFirstFrame(replaced,"token","BACKUP_RESTORE");
        previous.operationToken="replacement";replacementJournal.write(previous,COMMITTED,null);
        held.close();awaitCleanup();
        check(replacementJournal.read().operationToken.equals("replacement")&&replacementJournal.read().state==COMMITTED,"cleanup rereads token after acquiring writer lease");
        check(new File(previous.stagingPath).exists()&&new File(previous.rollbackPath).exists()&&Effects.events.isEmpty(),"replaced journal has no stale cleanup effects");
        Context c=fresh();RestoreOperationJournal.Entry e=entry(c);
        new RestoreOperationJournal(c).write(e,ROLLED_BACK,null);
        DesktopRestoreController.onLauncherFirstFrame(c,"token","BACKUP_RESTORE");awaitCleanup();
        check(Effects.events.contains("TOAST:RESTORE_ROLLED_BACK")&&!Effects.events.contains("PRIME"),"rollback result retained without hydration");
    }
    public static void main(String[] args) throws Exception {
        root=new File(args[0]);
        if("hold".equals(args[1])){
            try(BackupOperationLock.RestoreWriter w=BackupOperationLock.acquireRestoreWriter(new Context(root))){
                System.out.println("HELD");System.out.flush();System.in.read();}return;
        }
        Looper.getMainLooper();
        if("cleanup-baseline".equals(args[1])) {
            Context c=fresh();RestoreOperationJournal.Entry e=entry(c);
            new RestoreOperationJournal(c).write(e,COMMITTED,null);
            DesktopRestoreController.onLauncherFirstFrame(c,e.operationToken,"BACKUP_RESTORE");
            check(new RestoreOperationJournal(c).read().state==IDLE,"baseline synchronously resets journal before returning to first frame");
            check(!new File(e.stagingPath).exists(),"baseline recursively deletes staging before returning to first frame");
            System.out.println("BASELINE_FIRST_FRAME_SYNCHRONOUS_CLEANUP checks="+checks);return;
        }
        if("baseline".equals(args[1])) {
            Context c=fresh();entry(c);ReloadTransitionActivity a=activity(c);
            request(a,false,"BACKUP_RESTORE");Handler.one();
            check(Effects.importThread==Looper.MAIN,"baseline imports on MAIN");
            check(a.launches==1,"baseline launches after synchronous work");
            System.out.println("BASELINE_RELOAD_IMPORT_ON_MAIN checks="+checks);return;
        }
        cleanupCases();
        // Both initial start and retry must wait for process disappearance.
        for(boolean retry:new boolean[]{false,true}){
            Context c=fresh();entry(c);ReloadTransitionActivity a=activity(c);ActivityManager.alive=true;
            request(a,retry,"BACKUP_RESTORE");Handler.one();
            check(Effects.importThread==null&&a.launches==0,"no writes while old PID is alive");
            ActivityManager.alive=false;Effects.blockImport=true;Choreographer.pulse();Handler.one();entered(Effects.importEntered);
            check(Effects.importThread!=Looper.MAIN,"import runs off MAIN");check(a.applying==1&&a.finished==0,"apply owns loading stage");
            final boolean[] heartbeat={false};new Handler(Looper.getMainLooper()).post(new Runnable(){public void run(){heartbeat[0]=true;}});
            Handler.one();check(heartbeat[0]&&a.launches==0,"MAIN responds while importer is blocked");
            check(!DesktopRestoreController.applyPreparedAfterOldProcessExitAsync(c,"token","BACKUP_RESTORE",null),"duplicate worker rejected");
            completeApply();check(a.launches==1&&a.finished==1,"launch only after successful apply");
            check(a.startThread==Looper.MAIN,"startActivity returns to MAIN");
            check(new RestoreOperationJournal(c).read().state==COMMITTED,"durable commit before launch");
        }
        for(String reason:new String[]{"BACKUP_RESTORE","BACKUP_RESTORE_ROLLBACK"}){
            Context c=fresh();RestoreOperationJournal.Entry e=entry(c);ReloadTransitionActivity a=activity(c);
            request(a,true,reason);Handler.one();Handler.one();
            check(a.launches==1,"restore and undo handoff");
            check(Effects.lastArchive.equals(reason.endsWith("ROLLBACK")?new File(e.rollbackPath):new File(e.stagingPath,"source.slauncherbackup")),"correct source archive");
        }
        // Destroy/cancel invalidates the completion without interrupting durable writes.
        for(int mode=0;mode<3;mode++){
            Context c=fresh();entry(c);ReloadTransitionActivity a=activity(c);Effects.blockImport=true;
            request(a,true,"BACKUP_RESTORE");Handler.one();entered(Effects.importEntered);
            if(mode==0){a.destroyed=true;cancel();}else if(mode==1)a.finishing=true;else cancel();
            completeApply();check(a.launches==0,"stale Activity completion cannot launch");
            check(new RestoreOperationJournal(c).read().state==COMMITTED,"cancelled cover still finishes safe transaction");
            if(mode==0){Effects.clear();ReloadTransitionActivity replacement=activity(c);request(replacement,true,"BACKUP_RESTORE");Handler.one();Handler.one();
                check(replacement.launches==1&&Effects.events.isEmpty(),"new cover can retry terminal journal without reimport");}
        }
        // Existing non-restore reload reasons keep their direct launch path after the exit gate.
        for(String reason:new String[]{"GRID_MODE_CHANGE","THEME_CHANGE","ICON_SIZE_CHANGE"}) {
            for(boolean retry:new boolean[]{false,true}) {
                Context other=fresh();ReloadTransitionActivity cover=activity(other);
                request(cover,retry,reason);Handler.one();
                check(cover.launches==1&&cover.applying==0&&Effects.events.isEmpty(),"other reload reason keeps existing path");
            }
        }
        // Failed checkpoint remains blocked; retry must select the existing rollback.
        Context c=fresh();RestoreOperationJournal.Entry e=entry(c);ReloadTransitionActivity a=activity(c);
        AtomicFile.failState="DATABASE_COMMITTED";request(a,true,"BACKUP_RESTORE");Handler.one();Handler.one();
        check(a.launches==0&&a.failed==1,"checkpoint failure cannot start launcher");
        AtomicFile.failState="";Effects.clear();request(a,true,"BACKUP_RESTORE");Handler.one();Handler.one();
        check(a.launches==1&&Effects.lastArchive.equals(new File(e.rollbackPath)),"retry rolls back partial import");
        check(new RestoreOperationJournal(c).read().state==ROLLED_BACK,"retry terminal rollback");
        c=fresh();entry(c);a=activity(c);a.failStart=true;request(a,true,"BACKUP_RESTORE");Handler.one();Handler.one();
        check(a.launches==0&&a.failed==1,"launch failure reports on MAIN after commit");
        // Undo acceptance must return while archive IO is deliberately blocked.
        c=fresh();write(DesktopRestoreController.rollbackArchive(c));Effects.blockRead=true;
        check(DesktopRestoreController.beginUndo(c,null),"undo accepted");entered(Effects.readEntered);
        check(Effects.readThread!=Looper.MAIN,"undo extraction off MAIN");check(c.transitions==0,"no transition before undo extraction");
        check(BackupOperationLock.isBusy(),"undo retains operation owner");
        Effects.readRelease.countDown();Handler.one();
        check(c.transitions==1&&c.transitionThread==Looper.MAIN,"undo handoff on MAIN");
        BackupOperationLock.release(new RestoreOperationJournal(c).read().operationToken);
        c=fresh();check(!DesktopRestoreController.beginUndo(c,null),"missing undo rejected synchronously");
        write(DesktopRestoreController.rollbackArchive(c));BackupOperationLock.acquire("busy");
        check(!DesktopRestoreController.beginUndo(c,null),"busy undo rejected");BackupOperationLock.release("busy");
        // HOME/startup recovery serializes with the reload writer, rather than racing its DB.
        c=fresh();entry(c);Effects.blockImport=true;final Context startup=c;
        CountDownLatch applied=new CountDownLatch(1),guardDone=new CountDownLatch(1),guardStarted=new CountDownLatch(1);
        check(DesktopRestoreController.applyPreparedAfterOldProcessExitAsync(c,"token","BACKUP_RESTORE",new DesktopRestoreController.ApplyListener(){public void onApplied(boolean ok){check(ok,"worker success");applied.countDown();}}),"startup fixture worker accepted");
        entered(Effects.importEntered);
        Thread guard=new Thread(new Runnable(){public void run(){guardStarted.countDown();RestoreRecoveryGuard.beforeLauncherDatabaseInit(startup);guardDone.countDown();}});
        guard.start();entered(guardStarted);check(!guardDone.await(150,TimeUnit.MILLISECONDS),"startup guard waits for writer");
        Effects.importRelease.countDown();pumpUntil(applied);entered(guardDone);guard.join(5000);
        check(new RestoreOperationJournal(c).read().state==IDLE,"guard rereads completed journal after acquiring lock");
        check(java.util.Collections.frequency(Effects.events,"DB")==1,"guard does not concurrently reimport");
        writerProcesses(fresh());
        // READY callbacks queued for a discarded preview may not reopen the old page.
        for(boolean replace:new boolean[]{false,true}) {
            Context previewContext=fresh();
            final int[] previews=new int[2];
            DesktopRestoreController.Listener first=new DesktopRestoreController.Listener(){
                public void onState(String s,boolean c){}public void onComplete(BackupRestoreResult r){}
                public void onPreview(BackupArchiveReader.ValidatedBackup b,RestoreMergePlanner.Plan p){previews[0]++;}};
            java.lang.reflect.Method validate=DesktopRestoreController.class.getDeclaredMethod("validate",Context.class,android.net.Uri.class,String.class,DesktopBackupController.CancellationToken.class,DesktopRestoreController.Listener.class);
            validate.setAccessible(true);
            BackupOperationLock.acquire("old-preview");
            validate.invoke(null,previewContext,new android.net.Uri(),"old-preview",new DesktopBackupController.CancellationToken(),first);
            check(new RestoreOperationJournal(previewContext).read().state==READY,"old preview prepared");
            DesktopRestoreController.discardPreparedRestore(previewContext);
            if(replace) {
                DesktopRestoreController.Listener second=new DesktopRestoreController.Listener(){
                    public void onState(String s,boolean c){}public void onComplete(BackupRestoreResult r){}
                    public void onPreview(BackupArchiveReader.ValidatedBackup b,RestoreMergePlanner.Plan p){previews[1]++;}};
                BackupOperationLock.acquire("new-preview");
                validate.invoke(null,previewContext,new android.net.Uri(),"new-preview",new DesktopBackupController.CancellationToken(),second);
            }
            Handler.all();check(previews[0]==0&&previews[1]==(replace?1:0),"only current READY preview can publish");
            DesktopRestoreController.discardPreparedRestore(previewContext);
        }
        System.out.println("PASS RESTORE_WORKER_CHECKS="+checks);
    }
}
