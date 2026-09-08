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
import java.util.UUID;

public final class DesktopRestoreController {
    private static final String TAG = "DesktopRestore";
    private static final Handler MAIN = new Handler(Looper.getMainLooper());
    private static volatile PreparedRestore prepared;
    private static volatile DesktopBackupController.CancellationToken cancellation;

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
        RestoreOperationJournal.Entry entry = journal.read();
        if (!current.token.equals(entry.operationToken)
                || entry.state.ordinal() > RestoreOperationJournal.State.READY.ordinal()) return;
        BackupFileUtils.deleteRecursively(current.directory);
        journal.reset();
        BackupOperationLock.release(current.token);
        prepared = null;
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
            RestoreMergePlanner.Plan plan = RestoreMergePlanner.plan(context, backup);
            entry.sourceFormatVersion = backup.manifest.formatVersion;
            entry.sourceLauncherVersion = backup.manifest.launcherVersionName;
            journal.write(entry, RestoreOperationJournal.State.READY, null);
            prepared = new PreparedRestore(token, directory, archive, backup, plan, listener);
            context.getSharedPreferences(DesktopBackupController.PREFS, 0).edit()
                    .putString(DesktopBackupController.KEY_LAST_RESTORE_DOCUMENT_URI, uri.toString()).commit();
            final PreparedRestore ready = prepared;
            MAIN.post(new Runnable() {
                public void run() { if (ready.listener != null) ready.listener.onPreview(ready.backup, ready.plan); }
            });
        } catch (DesktopBackupController.BackupCancelledException cancelled) {
            BackupFileUtils.deleteRecursively(directory);
            journal.reset();
            complete(listener, BackupRestoreResult.error("BACKUP_CANCELLED", "已取消恢复准备"));
            BackupOperationLock.release(token);
        } catch (Throwable error) {
            BackupFileUtils.deleteRecursively(directory);
            String code = code(error, "RESTORE_INVALID_ARCHIVE");
            journal.write(entry, RestoreOperationJournal.State.IDLE, code);
            Log.w(TAG, "RESTORE_VALIDATION_FAILED token=" + shortToken(token) + " errorCode=" + code, error);
            complete(listener, BackupRestoreResult.error(code, restoreMessage(code)));
            BackupOperationLock.release(token);
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
        RestoreOperationJournal.Entry entry = journal.read();
        File rollbackDirectory = new File(new File(context.getFilesDir(), "backup_restore"), "rollback_latest");
        try {
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
        } catch (DesktopBackupController.BackupCancelledException cancelled) {
            BackupFileUtils.deleteRecursively(rollbackDirectory);
            BackupFileUtils.deleteRecursively(restore.directory);
            journal.reset();
            BackupOperationLock.release(restore.token);
            complete(restore.listener, BackupRestoreResult.error("BACKUP_CANCELLED", "已取消恢复"));
        } catch (Throwable error) {
            BackupFileUtils.deleteRecursively(rollbackDirectory);
            String code = code(error, "RESTORE_ROLLBACK_CREATE_FAILED");
            journal.write(entry, RestoreOperationJournal.State.IDLE, code);
            BackupOperationLock.release(restore.token);
            complete(restore.listener, BackupRestoreResult.error(code,
                    "无法创建恢复前状态，桌面未作修改。"));
        } finally { cancellation = null; }
    }

    public static boolean beginUndo(Context context, Listener listener) {
        File rollback = rollbackArchive(context);
        if (!rollback.isFile() || BackupOperationLock.isBusy()) return false;
        String token = UUID.randomUUID().toString();
        if (!BackupOperationLock.acquire(token)) return false;
        try {
            File directory = new File(new File(context.getCacheDir(), "restore_staging"), token);
            BackupArchiveReader.ValidatedBackup backup = BackupArchiveReader.read(rollback,
                    new File(directory, "extracted"));
            RestoreOperationJournal.Entry entry = new RestoreOperationJournal.Entry();
            entry.operationToken = token;
            entry.stagingPath = directory.getAbsolutePath();
            entry.rollbackPath = rollback.getAbsolutePath();
            entry.sourceFormatVersion = backup.manifest.formatVersion;
            entry.sourceLauncherVersion = backup.manifest.launcherVersionName;
            entry.undo = true;
            RestoreOperationJournal journal = new RestoreOperationJournal(context);
            journal.write(entry, RestoreOperationJournal.State.ROLLBACK_READY, null);
            journal.write(entry, RestoreOperationJournal.State.WAITING_TRANSITION, null);
            state(listener, "WAITING_TRANSITION", false);
            if (!LauncherColdReloadCoordinator.beginBackupRestoreReload(
                    context, token, true, backup.manifest.gridMode)) throw new Exception("transition");
            return true;
        } catch (Throwable error) {
            new RestoreOperationJournal(context).reset();
            BackupOperationLock.release(token);
            complete(listener, BackupRestoreResult.error("RESTORE_ROLLBACK_FAILED", "无法撤销上次恢复。"));
            return false;
        }
    }

    /** Called in :reload only after ActivityManager no longer reports the old main PID. */
    public static boolean applyPreparedAfterOldProcessExit(Context context, String token, String reason) {
        RestoreOperationJournal journal = new RestoreOperationJournal(context);
        RestoreOperationJournal.Entry entry = journal.read();
        if (!token.equals(entry.operationToken)) return false;
        journal.write(entry, RestoreOperationJournal.State.WAITING_OLD_PROCESS_EXIT, null);
        boolean undo = "BACKUP_RESTORE_ROLLBACK".equals(reason)
                || "BACKUP_RESTORE_RECOVERY".equals(reason) || entry.undo;
        File source = undo ? new File(entry.rollbackPath) : new File(entry.stagingPath, "source.slauncherbackup");
        try {
            applyArchive(context, source, entry, journal, undo);
            journal.write(entry, RestoreOperationJournal.State.COMMITTED, null);
            return true;
        } catch (Throwable error) {
            Log.e(TAG, "RESTORE_FAILED token=" + shortToken(token), error);
            journal.write(entry, RestoreOperationJournal.State.FAILED_ROLLBACK_PENDING,
                    code(error, "RESTORE_VERIFY_FAILED"));
            if (!undo) {
                try {
                    journal.write(entry, RestoreOperationJournal.State.ROLLING_BACK, null);
                    applyArchive(context, new File(entry.rollbackPath), entry, journal, true);
                    journal.write(entry, RestoreOperationJournal.State.ROLLED_BACK, null);
                    return true;
                } catch (Throwable rollbackError) {
                    journal.write(entry, RestoreOperationJournal.State.ROLLING_BACK,
                            "RESTORE_ROLLBACK_FAILED");
                    Log.e(TAG, "RECOVERY_FAILED token=" + shortToken(token), rollbackError);
                }
            }
            // The reload process has no Settings window to own a dialog. Persist a
            // one-shot bottom-toast result for the next rendered desktop frame.
            context.getSharedPreferences(DesktopBackupController.PREFS, 0).edit()
                    .putString("pending_restore_toast", "RESTORE_ROLLBACK_FAILED").commit();
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

    public static void onLauncherFirstFrame(Context context, String token, String reason) {
        RestoreOperationJournal journal = new RestoreOperationJournal(context);
        RestoreOperationJournal.Entry entry = journal.read();
        if (!token.equals(entry.operationToken)) return;
        if (entry.state != RestoreOperationJournal.State.COMMITTED
                && entry.state != RestoreOperationJournal.State.ROLLED_BACK) return;
        String resultCode = entry.state == RestoreOperationJournal.State.ROLLED_BACK
                ? "RESTORE_ROLLED_BACK"
                : (entry.undo ? "UNDO_COMPLETE" : "RESTORE_COMPLETE");
        // This is the first actual desktop frame after the restore. Use the original
        // launcher toast here rather than deferring a dialog until Backup & Restore
        // is opened again. The online icon cache is disposable, so start its existing
        // background hydration only after this frame is visible.
        MaintainedLauncherSettingsHost.showRestoreStatusToast(context, resultCode);
        if ("RESTORE_COMPLETE".equals(resultCode)) {
            com.smartisanos.launcher.backup.RestoreIconSourceReconciler.primeIconSourceAfterRestore(context);
        }
        journal.write(entry, RestoreOperationJournal.State.CLEANING, null);
        BackupFileUtils.deleteRecursively(new File(entry.stagingPath));
        BackupFileUtils.deleteRecursively(new File(new File(context.getCacheDir(), "restore_apply"), token));
        if (entry.undo && entry.rollbackPath.length() != 0) {
            BackupFileUtils.deleteRecursively(new File(entry.rollbackPath).getParentFile());
        }
        journal.reset();
        BackupOperationLock.release(token);
        if (prepared != null && token.equals(prepared.token)) prepared = null;
        Log.i(TAG, "RESTORE_COMPLETE token=" + shortToken(token) + " reason=" + reason);
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

    private static String code(Throwable error, String fallback) {
        if (error instanceof RestoreException) return ((RestoreException) error).code;
        if (error instanceof BackupValidator.BackupValidationException)
            return ((BackupValidator.BackupValidationException) error).errorCode;
        return fallback;
    }

    private static String restoreMessage(String code) {
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
