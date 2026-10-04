package com.smartisanos.launcher.backup;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.SharedPreferences;
import android.os.Looper;
import android.os.Process;
import android.system.Os;
import android.system.OsConstants;

import java.io.File;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

import static com.smartisanos.launcher.backup.RestoreOperationJournal.State.*;

/** Production transaction owners with real Android journal IO and isolated import boundaries. */
public final class DeviceCheckpointProbe {
    private static File root;
    private static int fixture, checks;

    private static final class ProbeContext extends ContextWrapper {
        private final File directory;
        private final Map<String, SharedPreferences> preferences = new HashMap<>();
        ProbeContext(File directory) { super(null); this.directory = directory; }
        public File getFilesDir() { return mkdir("files"); }
        public File getCacheDir() { return mkdir("cache"); }
        private File mkdir(String name) { File file = new File(directory, name); file.mkdirs(); return file; }
        public Context getApplicationContext() { return this; }
        public Object getSystemService(String name) { return null; }
        public SharedPreferences getSharedPreferences(String name, int mode) {
            if (!preferences.containsKey(name)) preferences.put(name, memoryPreferences());
            return preferences.get(name);
        }
    }

    // Only diagnostic preferences are in memory; AtomicFile/JSON/permission checks use Android.
    private static SharedPreferences memoryPreferences() {
        final Map<String, Object> values = new HashMap<>();
        final Object[] editor = new Object[1];
        editor[0] = Proxy.newProxyInstance(DeviceCheckpointProbe.class.getClassLoader(),
                new Class<?>[]{SharedPreferences.Editor.class}, new InvocationHandler() {
            public Object invoke(Object proxy, Method method, Object[] args) {
                String name = method.getName();
                if (name.equals("commit")) return true;
                if (name.equals("apply")) return null;
                if (name.equals("clear")) values.clear();
                else if (name.equals("remove")) values.remove(args[0]);
                else if (name.startsWith("put")) values.put((String) args[0], args[1]);
                return editor[0];
            }
        });
        return (SharedPreferences) Proxy.newProxyInstance(DeviceCheckpointProbe.class.getClassLoader(),
                new Class<?>[]{SharedPreferences.class}, new InvocationHandler() {
            public Object invoke(Object proxy, Method method, Object[] args) {
                String name = method.getName();
                if (name.equals("edit")) return editor[0];
                if (name.equals("getAll")) return new HashMap<>(values);
                if (name.equals("contains")) return values.containsKey(args[0]);
                if (name.startsWith("get")) return values.containsKey(args[0]) ? values.get(args[0]) : args[1];
                return null;
            }
        });
    }

    private static void check(boolean valid, String label) {
        checks++;
        if (!valid) throw new AssertionError(label + " effects=" + Effects.events);
        System.out.println("PASS " + label);
    }
    private static void awaitCleanup() throws Exception {
        for (Thread thread : Thread.getAllStackTraces().keySet()) {
            if (thread.getName().equals("DesktopRestoreCleanup")) {
                thread.join(5000);
                check(!thread.isAlive(), "native cleanup worker finished");
            }
        }
        final java.util.concurrent.CountDownLatch delivered = new java.util.concurrent.CountDownLatch(1);
        new android.os.Handler(Looper.getMainLooper()).post(new Runnable() {
            public void run() { delivered.countDown(); }
        });
        check(delivered.await(5, java.util.concurrent.TimeUnit.SECONDS), "native cleanup MAIN callback delivered");
    }
    private static ProbeContext fresh() { Effects.clear(); return new ProbeContext(new File(root, "case" + fixture++)); }
    private static File journal(Context context) { return new File(context.getFilesDir(), "backup_restore/restore_journal.json"); }
    private static void write(File file, String text) throws Exception { BackupFileUtils.writeBytes(file, text.getBytes(BackupFileUtils.UTF_8)); }
    private static byte[] bytes(File file) throws Exception { return BackupFileUtils.readBytes(file, 256 * 1024); }
    private static RestoreOperationJournal.Entry entry(Context context) throws Exception {
        RestoreOperationJournal.Entry entry = new RestoreOperationJournal.Entry();
        entry.operationToken = "probe-token";
        entry.stagingPath = new File(context.getCacheDir(), "restore_staging/probe-token").getAbsolutePath();
        entry.rollbackPath = DesktopRestoreController.rollbackArchive(context).getAbsolutePath();
        write(new File(entry.stagingPath, "source.slauncherbackup"), "isolated-source");
        write(new File(entry.rollbackPath), "isolated-rollback");
        return entry;
    }
    private static void retained(RestoreOperationJournal.Entry entry) {
        check(new File(entry.stagingPath, "source.slauncherbackup").isFile(), "source retained");
        check(new File(entry.rollbackPath).isFile(), "rollback retained");
    }
    private static void readError(RestoreOperationJournal journal, String code) throws Exception {
        try { journal.read(); throw new AssertionError("expected read failure"); }
        catch (RestoreOperationJournal.JournalException error) { check(code.equals(error.errorCode), code); }
    }
    private static void protect(File file, boolean protectedFile) throws Exception {
        // Both existing file and directory must be read-only: older AtomicFile may write
        // the existing base after a failed backup rename when only the directory is protected.
        Os.chmod(file.getParent(), protectedFile ? 0550 : 0770);
        Os.chmod(file.getPath(), protectedFile ? 0440 : 0660);
    }
    private static void platformCases() throws Exception {
        ProbeContext context = fresh();
        RestoreOperationJournal journal = new RestoreOperationJournal(context);
        check(journal.read().state == IDLE, "absent journal is idle");
        RestoreOperationJournal.Entry entry = entry(context);
        journal.write(entry, READY, null);
        check(journal.read().state == READY, "real AtomicFile checkpoint readable");
        byte[] saved = bytes(journal(context));
        Os.chmod(journal(context).getPath(), 0000);
        try { readError(journal, "RESTORE_JOURNAL_READ_FAILED"); }
        finally { Os.chmod(journal(context).getPath(), 0660); }
        check(Arrays.equals(saved, bytes(journal(context))), "read failure preserves checkpoint bytes");
        protect(journal(context), true);
        try {
            try { journal.write(entry, CREATING_ROLLBACK, null); throw new AssertionError("expected write failure"); }
            catch (RestoreOperationJournal.JournalException error) { check("RESTORE_JOURNAL_WRITE_FAILED".equals(error.errorCode), "real EACCES checkpoint failure"); }
            check(entry.state == READY, "failed write does not advance entry");
        } finally { protect(journal(context), false); }
        check(Arrays.equals(saved, bytes(journal(context))), "write failure preserves checkpoint bytes");
        File backup = new File(journal(context) + ".bak");
        check(journal(context).renameTo(backup), "prepare legacy AtomicFile backup");
        check(journal.read().state == READY, "real AtomicFile recovers backup");
        for (String malformed : new String[]{"broken", "{}", "{\"state\":\"IDLE\"}"}) {
            context = fresh(); journal = new RestoreOperationJournal(context);
            write(journal(context), malformed); saved = bytes(journal(context));
            readError(journal, "RESTORE_JOURNAL_CORRUPT");
            try { journal.reset(); throw new AssertionError("expected reset failure"); }
            catch (RestoreOperationJournal.JournalException error) { check("RESTORE_JOURNAL_CORRUPT".equals(error.errorCode), "corrupt reset rejected"); }
            check(Arrays.equals(saved, bytes(journal(context))), "corrupt evidence unchanged");
        }
        context = fresh(); journal = new RestoreOperationJournal(context);
        File incomplete = new File(journal(context) + ".new"); write(incomplete, "incomplete");
        readError(journal, "RESTORE_JOURNAL_READ_FAILED");
        check(incomplete.isFile(), "orphan first-write evidence retained");

        context = fresh(); journal = new RestoreOperationJournal(context); entry = entry(context);
        journal.write(entry, WAITING_TRANSITION, null);
        // Isolate journal write EACCES from the new writer-lease creation gate.
        try (BackupOperationLock.RestoreWriter writer = BackupOperationLock.acquireRestoreWriter(context)) {}
        protect(journal(context), true);
        try {
            check(!DesktopRestoreController.applyPreparedAfterOldProcessExit(context, entry.operationToken, "BACKUP_RESTORE"), "controller stops on real permission failure");
            check(Effects.events.isEmpty(), "no importer after failed checkpoint"); retained(entry);
            check("RESTORE_JOURNAL_WRITE_FAILED".equals(context.getSharedPreferences(DesktopBackupController.PREFS, 0).getString("pending_restore_toast", "")), "specific failure notice");
        } finally { protect(journal(context), false); }
        check(journal.read().state == WAITING_TRANSITION, "durable stage retained");
        check(DesktopRestoreController.applyPreparedAfterOldProcessExit(context, entry.operationToken, "BACKUP_RESTORE"), "controller retry after permission repair");
        check(journal.read().state == COMMITTED, "retry commits");

        context = fresh(); journal = new RestoreOperationJournal(context); entry = entry(context); entry.undo = true;
        journal.write(entry, COMMITTED, null);
        try (BackupOperationLock.RestoreWriter writer = BackupOperationLock.acquireRestoreWriter(context)) {}
        protect(journal(context), true);
        try {
            DesktopRestoreController.onLauncherFirstFrame(context, entry.operationToken, "BACKUP_RESTORE_ROLLBACK");
            awaitCleanup();
            retained(entry);
            check(!Effects.events.contains("TOAST:UNDO_COMPLETE"), "cleanup failure cannot report undo success");
        } finally { protect(journal(context), false); }
        check(journal.read().state == COMMITTED, "cleanup failure retains committed journal");
        DesktopRestoreController.onLauncherFirstFrame(context, entry.operationToken, "BACKUP_RESTORE_ROLLBACK");
        awaitCleanup();
        check(journal.read().state == IDLE, "successful cleanup resets journal");
        check(Effects.events.contains("TOAST:UNDO_COMPLETE"), "successful cleanup reports undo");

        context = fresh(); journal = new RestoreOperationJournal(context); entry = entry(context);
        journal.write(entry, COMMITTED, null); protect(journal(context), true);
        try {
            // No existing lock inode: the directory permission gate fails before journal IO.
            DesktopRestoreController.onLauncherFirstFrame(context, entry.operationToken, "BACKUP_RESTORE");
            awaitCleanup();retained(entry);
            check(Effects.events.contains("TOAST:RESTORE_WRITER_LOCK_FAILED"), "cleanup writer EACCES has specific MAIN result");
            check(!BackupOperationLock.isBusy(), "cleanup writer EACCES releases transient owner");
        } finally { protect(journal(context), false); }
        check(journal.read().state == COMMITTED, "cleanup writer failure retains committed journal");

        context = fresh(); journal = new RestoreOperationJournal(context); entry = entry(context);
        journal.write(entry, VALIDATING, null); protect(journal(context), true);
        try { RestoreRecoveryGuard.beforeLauncherDatabaseInit(context); retained(entry); }
        finally { protect(journal(context), false); }
        check(journal.read().state == VALIDATING, "startup reset failure retains preparation");
        context = fresh(); journal = new RestoreOperationJournal(context); entry = entry(context);
        write(journal(context), "broken"); saved = bytes(journal(context));
        RestoreRecoveryGuard.beforeLauncherDatabaseInit(context); retained(entry);
        check(Effects.events.isEmpty(), "corrupt startup performs no import");
        check(Arrays.equals(saved, bytes(journal(context))), "corrupt startup retains evidence");

        context = fresh(); journal = new RestoreOperationJournal(context); entry = entry(context);
        journal.write(entry, WAITING_TRANSITION, null); protect(journal(context), true);
        try {
            check(!DesktopRestoreController.applyPreparedAfterOldProcessExit(context, entry.operationToken, "BACKUP_RESTORE"), "writer lease EACCES stops restore");
            check("RESTORE_WRITER_LOCK_FAILED".equals(context.getSharedPreferences(DesktopBackupController.PREFS, 0).getString("pending_restore_toast", "")), "writer failure notice is specific");
            check(Effects.events.isEmpty(), "writer lease failure performs no import");
        } finally { protect(journal(context), false); }
        check(DesktopRestoreController.applyPreparedAfterOldProcessExit(context, entry.operationToken, "BACKUP_RESTORE"), "retry after writer lease permission repair");
        check("RESTORE_COMPLETE".equals(context.getSharedPreferences(DesktopBackupController.PREFS, 0).getString("pending_restore_toast", "")), "successful retry replaces stale writer failure notice");
        System.out.println("PASS ANDROID_PLATFORM_CHECKS=" + checks);
    }
    private static void workerCases() throws Exception {
        final ProbeContext context = fresh();
        final RestoreOperationJournal journal = new RestoreOperationJournal(context);
        final RestoreOperationJournal.Entry entry = entry(context);
        journal.write(entry, WAITING_TRANSITION, null);
        final Thread mainThread = Thread.currentThread();
        final android.os.Handler handler = new android.os.Handler(Looper.getMainLooper());
        final BackupOperationLock.RestoreWriter writer = BackupOperationLock.acquireRestoreWriter(context);
        final boolean[] heartbeat = {false};
        final DesktopRestoreController.ApplyListener listener = new DesktopRestoreController.ApplyListener() {
            public void onApplied(boolean success) {
                try {
                    check(Thread.currentThread() == mainThread, "completion on real Android MAIN");
                    check(heartbeat[0], "MAIN heartbeat delivered while writer waits");
                    check(Effects.importThread != null && Effects.importThread != mainThread, "import off real Android MAIN");
                    check(success && journal.read().state == COMMITTED, "native worker commits before completion");
                } catch (Exception error) { throw new AssertionError(error); }
                System.out.println("PASS ANDROID_WORKER_CHECKS=" + checks);
                // Android's prepared MAIN queue is not quit-allowed; end only this probe.
                System.exit(0);
            }
        };
        check(DesktopRestoreController.applyPreparedAfterOldProcessExitAsync(context, entry.operationToken, "BACKUP_RESTORE", listener), "native worker accepted without blocking MAIN");
        check(!DesktopRestoreController.applyPreparedAfterOldProcessExitAsync(context, entry.operationToken, "BACKUP_RESTORE", listener), "native duplicate worker rejected");
        handler.post(new Runnable() { public void run() {
            try {
                check(journal.read().state == WAITING_TRANSITION, "writer lease blocks checkpoint advancement");
                heartbeat[0] = true;
                writer.close();
            } catch (Exception error) { throw new AssertionError(error); }
        }});
        handler.postDelayed(new Runnable() { public void run() { throw new AssertionError("native worker callback timed out"); }}, 8000);
        Looper.loop();
    }
    private static void cleanupCases() throws Exception {
        final ProbeContext context = fresh();
        final RestoreOperationJournal journal = new RestoreOperationJournal(context);
        final RestoreOperationJournal.Entry entry = entry(context);
        entry.undo = true; journal.write(entry, COMMITTED, null);
        final Thread mainThread = Thread.currentThread();
        final BackupOperationLock.RestoreWriter writer = BackupOperationLock.acquireRestoreWriter(context);
        final android.os.Handler handler = new android.os.Handler(Looper.getMainLooper());
        final boolean[] heartbeat = {false};
        Effects.onToast = new Runnable() {
            public void run() {
                try {
                    check(Thread.currentThread() == mainThread && Effects.toastThread == mainThread, "cleanup toast on real Android MAIN");
                    check(heartbeat[0], "native MAIN heartbeat precedes cleanup completion");
                    check(journal.read().state == IDLE, "cleanup durable reset before callback");
                    check(!new File(entry.stagingPath).exists() && !new File(entry.rollbackPath).exists(), "native undo cleanup deletes only fixture files");
                    check(java.util.Collections.frequency(Effects.events, "TOAST:UNDO_COMPLETE") == 1, "native duplicate first frame reports once");
                    check(!Effects.events.contains("PRIME"), "undo does not hydrate icons");
                    check(!BackupOperationLock.isBusy(), "native cleanup gate released");
                } catch (Exception error) { throw new AssertionError(error); }
                System.out.println("PASS ANDROID_CLEANUP_CHECKS=" + checks);System.exit(0);
            }
        };
        DesktopRestoreController.onLauncherFirstFrame(context, entry.operationToken, "BACKUP_RESTORE_ROLLBACK");
        DesktopRestoreController.onLauncherFirstFrame(context, entry.operationToken, "BACKUP_RESTORE_ROLLBACK");
        check(BackupOperationLock.isBusy(), "native cleanup reserves operation gate");
        check(!DesktopRestoreController.beginUndo(context, null), "native overlapping undo blocked");
        handler.post(new Runnable() { public void run() {
            try {
                check(journal.read().state == COMMITTED, "native cleanup waits for active writer");
                retained(entry);check(Effects.events.isEmpty(), "native cleanup has no premature UI result");
                heartbeat[0] = true;writer.close();
            } catch (Exception error) { throw new AssertionError(error); }
        }});
        handler.postDelayed(new Runnable() { public void run() { throw new AssertionError("cleanup callback timed out"); }}, 8000);
        Looper.loop();
    }
    private static void killAfterMarker(String marker) throws Exception {
        write(new File(root, "kill.marker"), marker);
        System.out.println("CHECKPOINT_READY_FOR_SIGKILL"); System.out.flush();
        Os.kill(Process.myPid(), OsConstants.SIGKILL);
        throw new AssertionError("SIGKILL failed");
    }
    private static void killedCheckpoint(boolean seed, boolean guard) throws Exception {
        ProbeContext context = new ProbeContext(new File(root, "killed"));
        RestoreOperationJournal journal = new RestoreOperationJournal(context);
        if (seed) {
            RestoreOperationJournal.Entry entry = entry(context);
            journal.write(entry, APPLYING_PREFERENCES, null);
            killAfterMarker("checkpoint-ready");
        }
        check(journal.read().state == APPLYING_PREFERENCES, "checkpoint survives process SIGKILL");
        RestoreOperationJournal.Entry entry = journal.read(); retained(entry);
        if (guard) {
            RestoreRecoveryGuard.beforeLauncherDatabaseInit(context);
            check(journal.read().state == IDLE, "startup guard finishes journal after interrupted import");
            check("RESTORE_RECOVERY_ROLLED_BACK".equals(context.getSharedPreferences(DesktopBackupController.PREFS, 0).getString("pending_restore_toast", "")), "startup guard reports recovery result");
        } else {
            check(DesktopRestoreController.applyPreparedAfterOldProcessExit(context, entry.operationToken, "BACKUP_RESTORE"), "new process handles interrupted import");
            check(journal.read().state == ROLLED_BACK, "interrupted retry completes rollback state");
        }
        check(Effects.lastArchive.equals(new File(entry.rollbackPath)), "interrupted retry selects rollback source");
        System.out.println("PASS PROCESS_RESTART_CHECKS=" + checks);
    }
    private static void tornCheckpoint(boolean seed) throws Exception {
        ProbeContext context = new ProbeContext(new File(root, "torn"));
        RestoreOperationJournal journal = new RestoreOperationJournal(context);
        if (seed) {
            RestoreOperationJournal.Entry entry = entry(context);
            journal.write(entry, READY, null);
            // Leave a real platform AtomicFile commit unfinished, then kill this probe.
            // This simulates IO interruption; it does not instrument production write().
            java.io.FileOutputStream output = new android.util.AtomicFile(journal(context)).startWrite();
            output.write("{\"state\":\"APPLYING".getBytes(BackupFileUtils.UTF_8));
            output.getFD().sync();
            killAfterMarker("atomic-write-in-progress");
        }
        RestoreOperationJournal.Entry entry = journal.read();
        check(entry.state == READY, "platform torn write restores prior checkpoint");
        retained(entry);
        journal.write(entry, CREATING_ROLLBACK, null);
        check(journal.read().state == CREATING_ROLLBACK, "journal remains writable after torn write recovery");
        System.out.println("PASS TORN_WRITE_RESTART_CHECKS=" + checks);
    }
    public static void main(String[] args) throws Exception {
        root = new File(args[0]).getCanonicalFile();
        if (!root.getPath().startsWith("/data/local/tmp/smartisan-restore-journal-f04-"))
            throw new IllegalArgumentException("Probe path outside isolated workspace");
        root.mkdirs(); Looper.prepareMainLooper();
        if (args[1].equals("platform")) {
            new Thread(new Runnable() { public void run() {
                try { platformCases(); } catch (Exception error) { throw new AssertionError(error); }
                System.exit(0);
            }}, "PlatformCases").start();
            Looper.loop();
        }
        else if (args[1].equals("worker")) workerCases();
        else if (args[1].equals("cleanup")) cleanupCases();
        else if (args[1].equals("seed")) killedCheckpoint(true, false);
        else if (args[1].equals("restart")) killedCheckpoint(false, false);
        else if (args[1].equals("guard-restart")) killedCheckpoint(false, true);
        else if (args[1].equals("torn-seed")) tornCheckpoint(true);
        else if (args[1].equals("torn-restart")) tornCheckpoint(false);
        else throw new IllegalArgumentException("Unknown probe mode");
    }
}
