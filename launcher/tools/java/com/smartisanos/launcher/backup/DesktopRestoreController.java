package com.smartisanos.launcher.backup;

import android.content.Context;
import android.content.SharedPreferences;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;

import com.smartisanos.launcher.reload.LauncherColdReloadCoordinator;
import com.smartisanos.launcher.theme.MaintainedLauncherSettingsHost;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.IOException;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicReference;

public final class DesktopRestoreController {
    private static final String TAG = "DesktopRestore";
    private static final Handler MAIN = new Handler(Looper.getMainLooper());
    private static volatile PreparedRestore prepared;
    private static volatile DesktopBackupController.CancellationToken cancellation;
    private static final AtomicReference<String> APPLY_OWNER = new AtomicReference<String>();
    private static final AtomicReference<String> CLEANUP_OWNER = new AtomicReference<String>();

    public interface ApplyListener {
        void onApplied(boolean success);
    }

    public interface Listener {
        void onState(String state, boolean cancellable);
        void onPreview(BackupArchiveReader.ValidatedBackup backup, RestoreMergePlanner.Plan plan);
        void onComplete(BackupRestoreResult result);
    }

    private static final class PreparedRestore {
        final String token;
        final File directory;
        final File archive;
        final BackupArchiveReader.ValidatedBackup backup;
        final RestoreMergePlanner.Plan plan;
        volatile Listener listener;
        PreparedRestore(String token, File directory, File archive,
                BackupArchiveReader.ValidatedBackup backup, RestoreMergePlanner.Plan plan,
                Listener listener) {
            this.token = token; this.directory = directory; this.archive = archive;
            this.backup = backup; this.plan = plan; this.listener = listener;
        }
    }

    private DesktopRestoreController() {}

    public static void attachListener(Listener listener) {
        PreparedRestore current = prepared;
        if (current != null) current.listener = listener;
    }

    public static void detachListener(Listener listener) {
        PreparedRestore current = prepared;
        if (current != null && current.listener == listener) current.listener = null;
    }

    public static boolean cancelBeforeTransition() {
        DesktopBackupController.CancellationToken token = cancellation;
        if (token == null) return false;
        token.cancel();
        return true;
    }

    /** Drops a validated preview before any persistent launcher state has changed. */
    public static void discardPreparedRestore(Context context) {
        PreparedRestore current = prepared;
        if (current == null) return;
        RestoreOperationJournal journal = new RestoreOperationJournal(context);
        try {
            RestoreOperationJournal.Entry entry = journal.read();
            if (!current.token.equals(entry.operationToken)
                    || entry.state.ordinal() > RestoreOperationJournal.State.READY.ordinal()) return;
            journal.reset();
            BackupFileUtils.deleteRecursively(current.directory);
            BackupOperationLock.release(current.token);
            prepared = null;
        } catch (RestoreOperationJournal.JournalException error) {
            complete(current.listener, BackupRestoreResult.error(error.errorCode,
                    restoreMessage(error.errorCode)));
        }
    }

    public static void validateSelectedFile(Context context, Uri uri, Listener listener) {
        if (context == null || uri == null) return;
        // Selecting another file replaces an abandoned READY preview.  The preview can be
        // displaced by another maintained-settings route without invoking its back callback;
        // leaving that token owned makes every later, valid archive look "damaged".
        discardPreparedRestore(context);
        if (BackupOperationLock.isBusy()) {
            complete(listener, BackupRestoreResult.error("RESTORE_OPERATION_BUSY",
                    "桌面正在执行其他设置，请稍后再试。"));
            return;
        }
        try {
            if (new RestoreOperationJournal(context).read().state != RestoreOperationJournal.State.IDLE) {
                complete(listener, BackupRestoreResult.error("RESTORE_INTERRUPTED",
                        "上次恢复尚未完成，请先重新打开桌面。"));
                return;
            }
        } catch (RestoreOperationJournal.JournalException error) {
            complete(listener, BackupRestoreResult.error(error.errorCode, restoreMessage(error.errorCode)));
            return;
        }
        final Context app = context.getApplicationContext() == null ? context : context.getApplicationContext();
        final Uri source = uri;
        final Listener callback = listener;
        final String token = UUID.randomUUID().toString();
        if (!BackupOperationLock.acquire(token)) {
            complete(listener, BackupRestoreResult.error("RESTORE_OPERATION_BUSY",
                    "桌面正在执行其他设置，请稍后再试。"));
            return;
        }
        final DesktopBackupController.CancellationToken cancel = new DesktopBackupController.CancellationToken();
        cancellation = cancel;
        new Thread(new Runnable() {
            public void run() { validate(app, source, token, cancel, callback); }
        }, "DesktopRestoreValidate").start();
    }

    private static void validate(Context context, Uri uri, String token,
            DesktopBackupController.CancellationToken cancel, Listener listener) {
        RestoreOperationJournal journal = new RestoreOperationJournal(context);
        RestoreOperationJournal.Entry entry = new RestoreOperationJournal.Entry();
        entry.operationToken = token;
        entry.backupUri = uri.toString();
        File directory = new File(new File(context.getCacheDir(), "restore_staging"), token);
        File archive = new File(directory, "source.slauncherbackup");
        entry.stagingPath = directory.getAbsolutePath();
        try {
            state(listener, "VALIDATING", true);
            journal.write(entry, RestoreOperationJournal.State.VALIDATING, null);
            BackupFileUtils.deleteRecursively(directory);
            BackupFileUtils.ensureDirectory(directory);
            InputStream input = context.getContentResolver().openInputStream(uri);
            if (input == null) throw new RestoreException("RESTORE_FILE_UNREADABLE");
            FileOutputStream output = new FileOutputStream(archive);
            try { BackupFileUtils.copy(input, output, BackupValidator.MAX_ARCHIVE_BYTES, cancel); }
            finally { input.close(); output.close(); }
            cancel.throwIfCancelled();
            BackupArchiveReader.ValidatedBackup backup = BackupArchiveReader.read(archive,
                    new File(directory, "extracted"));
            backup.sourceName = DesktopBackupController.documentDisplayName(context, uri);
            RestoreMergePlanner.Plan plan = RestoreMergePlanner.plan(context, backup);
            entry.sourceFormatVersion = backup.manifest.formatVersion;
            entry.sourceLauncherVersion = backup.manifest.launcherVersionName;
            journal.write(entry, RestoreOperationJournal.State.READY, null);
            prepared = new PreparedRestore(token, directory, archive, backup, plan, listener);
            context.getSharedPreferences(DesktopBackupController.PREFS, 0).edit()
                    .putString(DesktopBackupController.KEY_LAST_RESTORE_DOCUMENT_URI, uri.toString()).commit();
            final PreparedRestore ready = prepared;
            MAIN.post(new Runnable() {
                public void run() {
                    Listener callback = ready.listener;
                    if (prepared == ready && callback != null)
                        callback.onPreview(ready.backup, ready.plan);
                }
            });
        } catch (Throwable error) {
            abortPreparation(journal, token, listener, error, "RESTORE_INVALID_ARCHIVE", null, directory);
        } finally { cancellation = null; }
    }

    public static void beginPreparedRestore(Context context, Listener listener) {
        PreparedRestore current = prepared;
        if (current == null) {
            complete(listener, BackupRestoreResult.error("RESTORE_FILE_NOT_FOUND", "恢复文件已失效，请重新选择。"));
            return;
        }
        current.listener = listener;
        final Context app = context.getApplicationContext() == null ? context : context.getApplicationContext();
        final PreparedRestore restore = current;
        final DesktopBackupController.CancellationToken cancel = new DesktopBackupController.CancellationToken();
        cancellation = cancel;
        new Thread(new Runnable() {
            public void run() { createRollbackAndTransition(app, restore, cancel); }
        }, "DesktopRestorePrepare").start();
    }

    private static void createRollbackAndTransition(Context context, PreparedRestore restore,
            DesktopBackupController.CancellationToken cancel) {
        RestoreOperationJournal journal = new RestoreOperationJournal(context);
        RestoreOperationJournal.Entry entry;
        File rollbackDirectory = new File(new File(context.getFilesDir(), "backup_restore"), "rollback_latest");
        try {
            entry = journal.read();
            if (!restore.token.equals(entry.operationToken) || entry.state != RestoreOperationJournal.State.READY)
                throw new RestoreException("RESTORE_INTERRUPTED");
            state(restore.listener, "CREATING_ROLLBACK", true);
            journal.write(entry, RestoreOperationJournal.State.CREATING_ROLLBACK, null);
            BackupFileUtils.deleteRecursively(rollbackDirectory);
            BackupFileUtils.ensureDirectory(new File(rollbackDirectory, "icons/custom"));
            DesktopBackupController.JSONObjectHolder layout =
                    DesktopBackupController.exportLayoutAtDatabaseSafePoint(context, cancel);
            cancel.throwIfCancelled();
            BackupManifest manifest = BackupManifest.create(context, readGridMode(context));
            org.json.JSONObject settings = PreferenceBackupCodec.encode(context);
            org.json.JSONObject theme = ThemeBackupCodec.encode(context);
            org.json.JSONObject icons = IconBackupCodec.encode(context,
                    new File(rollbackDirectory, "icons/custom"));
            org.json.JSONObject shortcutIcons = ShortcutIconBackupCodec.encode(context, layout.value,
                    new File(rollbackDirectory, "icons/shortcuts"));
            org.json.JSONObject portableSources = RestoreIconSourceReconciler.encodePortableSources(
                    context, new File(rollbackDirectory, "icons/sources"));
            File rollbackArchive = BackupArchiveWriter.write(rollbackDirectory, manifest,
                    layout.value, settings, theme, icons, shortcutIcons, portableSources, cancel);
            BackupValidator.validateAndExtract(rollbackArchive, new File(rollbackDirectory, "verified"));
            BackupFileUtils.deleteRecursively(new File(rollbackDirectory, "verified"));
            entry.rollbackPath = rollbackArchive.getAbsolutePath();
            journal.write(entry, RestoreOperationJournal.State.ROLLBACK_READY, null);
            cancel.throwIfCancelled();
            journal.write(entry, RestoreOperationJournal.State.WAITING_TRANSITION, null);
            state(restore.listener, "WAITING_TRANSITION", false);
            if (!LauncherColdReloadCoordinator.beginBackupRestoreReload(
                    context, restore.token, false, restore.backup.manifest.gridMode)) {
                throw new RestoreException("RESTORE_INTERRUPTED");
            }
        } catch (Throwable error) {
            abortPreparation(journal, restore.token, restore.listener, error,
                    "RESTORE_ROLLBACK_CREATE_FAILED", "无法创建恢复前状态，桌面未作修改。",
                    rollbackDirectory, restore.directory);
        } finally { cancellation = null; }
    }

    public static boolean beginUndo(Context context, Listener listener) {
        if (context == null) return false;
        File rollback = rollbackArchive(context);
        if (!rollback.isFile() || BackupOperationLock.isBusy()) return false;
        String token = UUID.randomUUID().toString();
        if (!BackupOperationLock.acquire(token)) return false;
        final Context app = context.getApplicationContext() == null ? context : context.getApplicationContext();
        final String operationToken = token;
        final Listener callback = listener;
        new Thread(new Runnable() {
            @Override public void run() { prepareUndo(app, operationToken, callback); }
        }, "DesktopRestoreUndo").start();
        // Accepted work; preparation failures arrive through the existing listener.
        return true;
    }

    private static void prepareUndo(final Context context, final String token, final Listener listener) {
        File rollback = rollbackArchive(context);
        RestoreOperationJournal journal = new RestoreOperationJournal(context);
        try {
            if (journal.read().state != RestoreOperationJournal.State.IDLE)
                throw new RestoreException("RESTORE_INTERRUPTED");
            File directory = new File(new File(context.getCacheDir(), "restore_staging"), token);
            final BackupArchiveReader.ValidatedBackup backup = BackupArchiveReader.read(rollback,
                    new File(directory, "extracted"));
            RestoreOperationJournal.Entry entry = new RestoreOperationJournal.Entry();
            entry.operationToken = token;
            entry.stagingPath = directory.getAbsolutePath();
            entry.rollbackPath = rollback.getAbsolutePath();
            entry.sourceFormatVersion = backup.manifest.formatVersion;
            entry.sourceLauncherVersion = backup.manifest.launcherVersionName;
            entry.undo = true;
            journal.write(entry, RestoreOperationJournal.State.ROLLBACK_READY, null);
            journal.write(entry, RestoreOperationJournal.State.WAITING_TRANSITION, null);
            state(listener, "WAITING_TRANSITION", false);
            MAIN.post(new Runnable() {
                @Override public void run() {
                    if (!LauncherColdReloadCoordinator.beginBackupRestoreReload(
                            context, token, true, backup.manifest.gridMode)) {
                        new Thread(new Runnable() {
                            @Override public void run() {
                                abortPreparation(journal, token, listener, new RestoreException("RESTORE_INTERRUPTED"),
                                        "RESTORE_ROLLBACK_FAILED", "无法撤销上次恢复。");
                            }
                        }, "DesktopRestoreUndoAbort").start();
                    }
                }
            });
        } catch (Throwable error) {
            abortPreparation(journal, token, listener, error,
                    "RESTORE_ROLLBACK_FAILED", "无法撤销上次恢复。");
        }
    }

    /** The coordinator must confirm old-process exit before submitting this work. */
    public static boolean applyPreparedAfterOldProcessExitAsync(Context context, final String token,
            final String reason, final ApplyListener listener) {
        if (context == null || token == null || !APPLY_OWNER.compareAndSet(null, token)) return false;
        final Context app = context.getApplicationContext() == null ? context : context.getApplicationContext();
        new Thread(new Runnable() {
            @Override public void run() {
                boolean applied = false;
                try { applied = applyPreparedAfterOldProcessExit(app, token, reason); }
                catch (Throwable error) { deferFailure(app, "RESTORE_INTERRUPTED", error); }
                finally { APPLY_OWNER.compareAndSet(token, null); }
                final boolean success = applied;
                MAIN.post(new Runnable() {
                    @Override public void run() { if (listener != null) listener.onApplied(success); }
                });
            }
        }, "DesktopRestoreApply").start();
        return true;
    }

    /** Called in :reload only after ActivityManager no longer reports the old main PID. */
    public static boolean applyPreparedAfterOldProcessExit(Context context, String token, String reason) {
        try (BackupOperationLock.RestoreWriter writer = BackupOperationLock.acquireRestoreWriter(context)) {
            return applyPreparedWithinRestoreLock(context, token, reason);
        } catch (IOException error) {
            deferFailure(context, "RESTORE_WRITER_LOCK_FAILED", error);
            return false;
        }
    }

    static boolean applyPreparedWithinRestoreLock(Context context, String token, String reason) {
        RestoreOperationJournal journal = new RestoreOperationJournal(context);
        RestoreOperationJournal.Entry entry;
        boolean undo;
        boolean interrupted;
        try {
            entry = journal.read();
            if (!token.equals(entry.operationToken)) return false;
            if (entry.state == RestoreOperationJournal.State.COMMITTED
                    || entry.state == RestoreOperationJournal.State.ROLLED_BACK
                    || entry.state == RestoreOperationJournal.State.CLEANING) return true;
            interrupted = entry.state.ordinal() >= RestoreOperationJournal.State.APPLYING_DATABASE.ordinal();
            if (!interrupted && entry.state != RestoreOperationJournal.State.WAITING_TRANSITION
                    && entry.state != RestoreOperationJournal.State.WAITING_OLD_PROCESS_EXIT) return false;
            undo = "BACKUP_RESTORE_ROLLBACK".equals(reason)
                    || "BACKUP_RESTORE_RECOVERY".equals(reason) || entry.undo || interrupted;
            journal.write(entry, undo ? RestoreOperationJournal.State.ROLLING_BACK
                    : RestoreOperationJournal.State.WAITING_OLD_PROCESS_EXIT, null);
        } catch (RestoreOperationJournal.JournalException error) {
            deferFailure(context, error.errorCode, error);
            return false;
        }
        File source = undo ? new File(entry.rollbackPath) : new File(entry.stagingPath, "source.slauncherbackup");
        try {
            applyArchive(context, source, entry, journal, undo);
            journal.write(entry, interrupted && !entry.undo
                    ? RestoreOperationJournal.State.ROLLED_BACK : RestoreOperationJournal.State.COMMITTED, null);
            SharedPreferences notices = context.getSharedPreferences(DesktopBackupController.PREFS, 0);
            String previousNotice = notices.getString("pending_restore_toast", "");
            if (previousNotice.startsWith("RESTORE_JOURNAL_")
                    || "RESTORE_WRITER_LOCK_FAILED".equals(previousNotice)) {
                String recovered = interrupted && !entry.undo ? "RESTORE_ROLLED_BACK"
                        : (entry.undo ? "UNDO_COMPLETE" : "RESTORE_COMPLETE");
                if (!notices.edit().putString("pending_restore_toast", recovered).commit())
                    Log.e(TAG, "RESTORE_RECOVERY_NOTICE_NOT_PERSISTED");
            }
            return true;
        } catch (RestoreOperationJournal.JournalException error) {
            // Keep the last durable phase and all recovery files. A rollback without
            // its own durable checkpoint would repeat the same unsafe write pattern.
            deferFailure(context, error.errorCode, error);
            return false;
        } catch (Throwable error) {
            Log.e(TAG, "RESTORE_FAILED token=" + shortToken(token), error);
            try {
                journal.write(entry, RestoreOperationJournal.State.FAILED_ROLLBACK_PENDING,
                        code(error, "RESTORE_VERIFY_FAILED"));
                if (!undo) {
                    journal.write(entry, RestoreOperationJournal.State.ROLLING_BACK, null);
                    applyArchive(context, new File(entry.rollbackPath), entry, journal, true);
                    journal.write(entry, RestoreOperationJournal.State.ROLLED_BACK, null);
                    return true;
                }
            } catch (RestoreOperationJournal.JournalException journalError) {
                deferFailure(context, journalError.errorCode, journalError);
                return false;
            } catch (Throwable rollbackError) {
                try {
                    journal.write(entry, RestoreOperationJournal.State.ROLLING_BACK,
                            "RESTORE_ROLLBACK_FAILED");
                } catch (RestoreOperationJournal.JournalException journalError) {
                    deferFailure(context, journalError.errorCode, journalError);
                    return false;
                }
                Log.e(TAG, "RECOVERY_FAILED token=" + shortToken(token), rollbackError);
            }
            deferFailure(context, "RESTORE_ROLLBACK_FAILED", error);
            return false;
        }
    }

    private static void applyArchive(Context context, File archive,
            RestoreOperationJournal.Entry entry, RestoreOperationJournal journal, boolean rollback)
            throws Exception {
        ensureDatabaseProvider(context);
        File extraction = new File(new File(context.getCacheDir(), "restore_apply"), entry.operationToken);
        BackupArchiveReader.ValidatedBackup backup = BackupArchiveReader.read(archive, extraction);
        journal.write(entry, RestoreOperationJournal.State.APPLYING_DATABASE, null);
        File pending = new File(new File(context.getFilesDir(), "backup_restore"), "pending_items.json");
        LayoutSnapshotImporter.ImportResult result = LayoutSnapshotImporter.restore(context,
                backup.layout, backup.manifest.gridMode, pending, backup.shortcutIcons,
                backup.extractedRoot);
        journal.write(entry, RestoreOperationJournal.State.DATABASE_COMMITTED, null);
        journal.write(entry, RestoreOperationJournal.State.APPLYING_PREFERENCES, null);
        String oldTheme = context.getSharedPreferences("launcher_settings", 0).getString("launcher_theme", "");
        PreferenceBackupCodec.restore(context, backup.settings);
        String themePackage = backup.theme.optString("themePackage", "");
        if (!ThemeBackupCodec.isThemePackageAvailable(context, themePackage)) {
            context.getSharedPreferences("launcher_settings", 0).edit().putString("launcher_theme", oldTheme).commit();
        }
        journal.write(entry, RestoreOperationJournal.State.APPLYING_ICONS, null);
        IconBackupCodec.restore(context, backup.icons, backup.extractedRoot);
        RestoreIconSourceReconciler.restorePortableSources(context, backup.portableSources,
                backup.extractedRoot);
        RestoreIconSourceReconciler.setPendingReconcile(context, entry.operationToken);

        Log.i(TAG, "RESTORE_CACHE_INVALIDATED oldRasterVersion=raster:v1-v7 newRasterVersion=raster:v8"
                + " ordinaryTableIcons=cleared shortcutSource=preserved");
        journal.write(entry, RestoreOperationJournal.State.APPLYING_THEME, null);
        journal.write(entry, RestoreOperationJournal.State.VERIFYING, null);
        LayoutSnapshotExporter.exportStableSnapshot(context);
        BackupFileUtils.deleteRecursively(extraction);
        Log.i(TAG, "RESTORE_VERIFY_COMPLETE token=" + shortToken(entry.operationToken)
                + " itemCount=" + result.restored + " missingAppCount=" + result.missing
                + " preservedNewItemCount=" + result.preserved
                + " profileUnresolved=" + result.profileUnresolved
                + " shortcutUnresolved=" + result.shortcutUnresolved);
    }

    public static void onLauncherFirstFrame(Context context, final String token, final String reason) {
        if (context == null || token == null || !CLEANUP_OWNER.compareAndSet(null, token)) return;
        // The new main process has no preparation owner. Reserve the existing operation
        // gate until cleanup finishes so a new undo cannot reuse rollback_latest meanwhile.
        if (!BackupOperationLock.acquire(token) && !BackupOperationLock.owns(token)) {
            CLEANUP_OWNER.compareAndSet(token, null);
            return;
        }
        final Context app = context.getApplicationContext() == null ? context : context.getApplicationContext();
        new Thread(new Runnable() {
            @Override public void run() {
                String result = null;
                try { result = finishRestoreAfterFirstFrame(app, token, reason); }
                catch (RestoreOperationJournal.JournalException error) {
                    result = error.errorCode;
                    deferFailure(app, result, error);
                } catch (IOException error) {
                    result = "RESTORE_WRITER_LOCK_FAILED";
                    deferFailure(app, result, error);
                } finally {
                    BackupOperationLock.release(token);
                    CLEANUP_OWNER.compareAndSet(token, null);
                }
                if (result == null) return;
                final String resultCode = result;
                MAIN.post(new Runnable() {
                    @Override public void run() {
                        MaintainedLauncherSettingsHost.showRestoreStatusToast(app, resultCode);
                        if ("RESTORE_COMPLETE".equals(resultCode)) {
                            RestoreIconSourceReconciler.primeIconSourceAfterRestore(app);
                        }
                    }
                });
            }
        }, "DesktopRestoreCleanup").start();
    }

    private static String finishRestoreAfterFirstFrame(Context context, String token, String reason)
            throws IOException {
        // Re-read only after taking the same cross-process writer lease as import/recovery.
        try (BackupOperationLock.RestoreWriter writer = BackupOperationLock.acquireRestoreWriter(context)) {
            RestoreOperationJournal journal = new RestoreOperationJournal(context);
            RestoreOperationJournal.Entry entry = journal.read();
            if (!token.equals(entry.operationToken)) return null;
            if (entry.state != RestoreOperationJournal.State.COMMITTED
                    && entry.state != RestoreOperationJournal.State.ROLLED_BACK) return null;
            String resultCode = entry.state == RestoreOperationJournal.State.ROLLED_BACK
                    ? "RESTORE_ROLLED_BACK"
                    : (entry.undo ? "UNDO_COMPLETE" : "RESTORE_COMPLETE");
            // This is the first actual desktop frame after the restore. Use the original
            // launcher toast here rather than deferring a dialog until Backup & Restore
            // is opened again. The online icon cache is disposable, so start its existing
            // background hydration only after this frame is visible.
            journal.write(entry, RestoreOperationJournal.State.CLEANING, null);
            // Reset must be durable before deleting the last undo archive or reporting success.
            journal.reset();
            BackupFileUtils.deleteRecursively(new File(entry.stagingPath));
            BackupFileUtils.deleteRecursively(new File(new File(context.getCacheDir(), "restore_apply"), token));
            if (entry.undo && entry.rollbackPath.length() != 0) {
                BackupFileUtils.deleteRecursively(new File(entry.rollbackPath).getParentFile());
            }
            if (prepared != null && token.equals(prepared.token)) prepared = null;
            Log.i(TAG, "RESTORE_COMPLETE token=" + shortToken(token) + " reason=" + reason);
            return resultCode;
        }
    }

    static void ensureDatabaseProvider(Context context) throws Exception {
        Class<?> provider = Class.forName("com.smartisanos.launcher.data.C");
        if (provider.getMethod("getInstance").invoke(null) == null) {
            provider.getMethod("init", Context.class).invoke(null, context.getApplicationContext());
        }
    }

    static File rollbackArchive(Context context) {
        return new File(new File(new File(context.getFilesDir(), "backup_restore"), "rollback_latest"),
                "archive.slauncherbackup");
    }

    public static boolean hasUndoSnapshot(Context context) {
        return context != null && rollbackArchive(context).isFile();
    }

    private static int readGridMode(Context context) {
        return context.getSharedPreferences("com.smartisanos.launcher_prefs", 0)
                .getInt("prefs_key_launcher_mode", 12) == 20 ? 20 : 12;
    }

    private static void state(final Listener listener, final String state, final boolean cancellable) {
        if (listener == null) return;
        MAIN.post(new Runnable() { public void run() { listener.onState(state, cancellable); } });
    }

    private static void complete(final Listener listener, final BackupRestoreResult result) {
        if (listener == null) return;
        MAIN.post(new Runnable() { public void run() { listener.onComplete(result); } });
    }

    /** Preparation has not touched the desktop. Only discard files after a durable abort. */
    private static void abortPreparation(RestoreOperationJournal journal, String token,
            Listener listener, Throwable error, String fallbackCode, String fallbackMessage,
            File... temporaryFiles) {
        Throwable failure = error;
        if (!(error instanceof RestoreOperationJournal.JournalException)) {
            try {
                RestoreOperationJournal.Entry current = journal.read();
                if (current.state == RestoreOperationJournal.State.IDLE
                        || token.equals(current.operationToken)) {
                    journal.reset();
                    for (File temporary : temporaryFiles) BackupFileUtils.deleteRecursively(temporary);
                }
            } catch (RestoreOperationJournal.JournalException journalError) {
                failure = journalError;
            }
        }
        BackupOperationLock.release(token);
        if (prepared != null && token.equals(prepared.token)) prepared = null;
        String code = code(failure, fallbackCode);
        String message = failure instanceof RestoreOperationJournal.JournalException || fallbackMessage == null
                ? restoreMessage(code) : fallbackMessage;
        if (failure instanceof DesktopBackupController.BackupCancelledException) message = "已取消恢复";
        Log.e(TAG, "RESTORE_PREPARATION_STOPPED errorCode=" + code, failure);
        complete(listener, BackupRestoreResult.error(code, message));
    }

    static void deferFailure(Context context, String code, Throwable error) {
        Log.e(TAG, "RESTORE_STOPPED errorCode=" + code, error);
        boolean saved = context.getSharedPreferences(DesktopBackupController.PREFS, 0).edit()
                .putString("pending_restore_toast", code).commit();
        if (!saved) Log.e(TAG, "RESTORE_ERROR_NOTICE_NOT_PERSISTED errorCode=" + code);
    }

    private static String code(Throwable error, String fallback) {
        if (error instanceof RestoreOperationJournal.JournalException)
            return ((RestoreOperationJournal.JournalException) error).errorCode;
        if (error instanceof DesktopBackupController.BackupCancelledException) return "BACKUP_CANCELLED";
        if (error instanceof RestoreException) return ((RestoreException) error).code;
        if (error instanceof BackupValidator.BackupValidationException)
            return ((BackupValidator.BackupValidationException) error).errorCode;
        return fallback;
    }

    public static String restoreMessage(String code) {
        if ("RESTORE_WRITER_LOCK_FAILED".equals(code)) return "无法锁定恢复数据，已停止恢复并保留原文件。";
        if ("RESTORE_INTERRUPTED".equals(code)) return "上次恢复尚未完成，请先重新打开桌面。";
        if ("RESTORE_JOURNAL_CORRUPT".equals(code))
            return "恢复记录已损坏，已停止恢复并保留原文件。";
        if ("RESTORE_JOURNAL_READ_FAILED".equals(code))
            return "无法读取恢复记录，已停止恢复并保留原文件。";
        if ("RESTORE_JOURNAL_WRITE_FAILED".equals(code))
            return "无法保存恢复记录，已停止恢复，请检查存储空间后重试。";
        if ("RESTORE_OPERATION_BUSY".equals(code)) return "桌面正在执行其他设置，请稍后再试。";
        if ("RESTORE_FORMAT_TOO_NEW".equals(code)) return "该备份由更高版本创建，请升级桌面后恢复。";
        if ("RESTORE_CHECKSUM_FAILED".equals(code)) return "备份文件校验失败，无法恢复。";
        if ("RESTORE_FILE_UNREADABLE".equals(code)) return "无法读取所选备份文件。";
        return "备份文件无效或已损坏。";
    }

    private static String shortToken(String token) {
        return token == null ? "none" : token.substring(0, Math.min(8, token.length()));
    }

    private static final class RestoreException extends Exception {
        final String code; RestoreException(String code) { super(code); this.code = code; }
    }
}
