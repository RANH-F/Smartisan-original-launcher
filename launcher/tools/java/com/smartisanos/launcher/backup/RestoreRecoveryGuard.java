package com.smartisanos.launcher.backup;

import android.app.ActivityManager;
import android.content.Context;
import android.os.Process;
import android.util.Log;

import java.io.File;
import java.io.IOException;
import java.util.List;

public final class RestoreRecoveryGuard {
    private static final String TAG = "RestoreRecovery";

    private RestoreRecoveryGuard() {}

    /** Runs before the stock DatabaseProvider initialization in LauncherApplication. */
    public static void beforeLauncherDatabaseInit(Context context) {
        if (context == null || isReloadProcess(context)) return;
        DesktopBackupController.cleanupInterruptedBackup(context);
        RestoreOperationJournal journal = new RestoreOperationJournal(context);
        RestoreOperationJournal.Entry entry = null;
        try (BackupOperationLock.RestoreWriter writer = BackupOperationLock.acquireRestoreWriter(context)) {
            entry = journal.read();
            if (entry.state == RestoreOperationJournal.State.IDLE) return;
            Log.i(TAG, "RECOVERY_JOURNAL_FOUND state=" + entry.state);
            if (entry.state.ordinal() < RestoreOperationJournal.State.ROLLBACK_READY.ordinal()) {
                journal.reset();
                BackupFileUtils.deleteRecursively(new File(entry.stagingPath));
                return;
            }
            if (entry.state == RestoreOperationJournal.State.COMMITTED
                    || entry.state == RestoreOperationJournal.State.CLEANING) {
                journal.reset();
                BackupFileUtils.deleteRecursively(new File(entry.stagingPath));
                return;
            }
            if (entry.state == RestoreOperationJournal.State.ROLLED_BACK) {
                journal.reset();
                return;
            }
            journal.write(entry, RestoreOperationJournal.State.ROLLING_BACK, null);
            Log.i(TAG, "RECOVERY_ROLLBACK_BEGIN");
            if (!DesktopRestoreController.applyPreparedWithinRestoreLock(
                    context, entry.operationToken, "BACKUP_RESTORE_RECOVERY")) {
                throw new IllegalStateException("Rollback did not complete");
            }
            journal.reset();
            context.getSharedPreferences(DesktopBackupController.PREFS, 0).edit()
                    .putString("pending_restore_toast", "RESTORE_RECOVERY_ROLLED_BACK").commit();
            Log.i(TAG, "RECOVERY_ROLLBACK_COMPLETE");
        } catch (RestoreOperationJournal.JournalException error) {
            DesktopRestoreController.deferFailure(context, error.errorCode, error);
        } catch (IOException error) {
            DesktopRestoreController.deferFailure(context, "RESTORE_WRITER_LOCK_FAILED", error);
        } catch (Throwable error) {
            // applyPrepared already retained the last checkpoint and specific error.
            // Do not replace a journal failure notice or reset a partial operation here.
            Log.e(TAG, "RECOVERY_FAILED", error);
        }
    }

    private static boolean isReloadProcess(Context context) {
        try {
            ActivityManager manager = (ActivityManager) context.getSystemService(Context.ACTIVITY_SERVICE);
            List<ActivityManager.RunningAppProcessInfo> processes = manager.getRunningAppProcesses();
            if (processes != null) for (ActivityManager.RunningAppProcessInfo process : processes) {
                if (process.pid == Process.myPid()) return process.processName != null
                        && process.processName.endsWith(":reload");
            }
        } catch (Throwable ignored) {
        }
        return false;
    }
}
