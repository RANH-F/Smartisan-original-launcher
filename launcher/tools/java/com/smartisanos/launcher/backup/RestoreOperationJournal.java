package com.smartisanos.launcher.backup;

import android.content.Context;
import android.util.AtomicFile;
import android.util.Log;

import org.json.JSONObject;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Arrays;

public final class RestoreOperationJournal {
    private static final String TAG = "RestoreJournal";

    public static final class JournalException extends IOException {
        public final String errorCode;
        JournalException(String code, Throwable cause) { super(code, cause); errorCode = code; }
    }
    public enum State {
        IDLE, VALIDATING, READY, CREATING_ROLLBACK, ROLLBACK_READY,
        WAITING_TRANSITION, WAITING_OLD_PROCESS_EXIT, APPLYING_DATABASE,
        DATABASE_COMMITTED, APPLYING_PREFERENCES, APPLYING_ICONS, APPLYING_THEME,
        VERIFYING, COMMITTED, CLEANING, FAILED_ROLLBACK_PENDING, ROLLING_BACK,
        ROLLED_BACK
    }

    public static final class Entry {
        public String operationToken = "";
        public String backupUri = "";
        public String stagingPath = "";
        public String rollbackPath = "";
        public State state = State.IDLE;
        public long startedAt;
        public long updatedAt;
        public int sourceFormatVersion;
        public String sourceLauncherVersion = "";
        public String errorCode = "";
        public boolean undo;

        JSONObject toJson() throws Exception {
            JSONObject json = new JSONObject();
            json.put("operationToken", operationToken);
            json.put("backupUri", backupUri);
            json.put("stagingPath", stagingPath);
            json.put("rollbackPath", rollbackPath);
            json.put("state", state.name());
            json.put("startedAt", startedAt);
            json.put("updatedAt", updatedAt);
            json.put("sourceFormatVersion", sourceFormatVersion);
            json.put("sourceLauncherVersion", sourceLauncherVersion);
            json.put("errorCode", errorCode);
            json.put("undo", undo);
            return json;
        }

        static Entry fromJson(JSONObject json) throws Exception {
            Entry entry = new Entry();
            entry.operationToken = json.getString("operationToken");
            entry.backupUri = json.optString("backupUri", "");
            entry.stagingPath = json.getString("stagingPath");
            entry.rollbackPath = json.getString("rollbackPath");
            entry.state = State.valueOf(json.getString("state"));
            entry.startedAt = json.optLong("startedAt", 0L);
            entry.updatedAt = json.optLong("updatedAt", 0L);
            entry.sourceFormatVersion = json.optInt("sourceFormatVersion", 0);
            entry.sourceLauncherVersion = json.optString("sourceLauncherVersion", "");
            entry.errorCode = json.optString("errorCode", "");
            entry.undo = json.optBoolean("undo", false);
            if (entry.state != State.IDLE && (entry.operationToken.length() == 0
                    || entry.stagingPath.length() == 0
                    || (entry.state.ordinal() >= State.ROLLBACK_READY.ordinal()
                    && entry.rollbackPath.length() == 0))) {
                throw new IOException("Incomplete restore journal");
            }
            return entry;
        }
    }

    private final AtomicFile file;

    public RestoreOperationJournal(Context context) {
        File directory = new File(context.getFilesDir(), "backup_restore");
        if (!directory.exists()) directory.mkdirs();
        file = new AtomicFile(new File(directory, "restore_journal.json"));
    }

    public synchronized Entry read() throws JournalException {
        byte[] data;
        boolean existed = true;
        try {
            existed = hasJournalFiles();
            data = readBytes();
        } catch (FileNotFoundException missing) {
            File parent = file.getBaseFile().getParentFile();
            if (!existed && !hasJournalFiles() && parent.isDirectory()
                    && parent.canRead() && parent.canExecute()) return new Entry();
            throw failure("RESTORE_JOURNAL_READ_FAILED", missing);
        } catch (IOException error) {
            throw failure("RESTORE_JOURNAL_READ_FAILED", error);
        } catch (RuntimeException error) {
            throw failure("RESTORE_JOURNAL_READ_FAILED", error);
        }
        try {
            return Entry.fromJson(new JSONObject(new String(data, BackupFileUtils.UTF_8)));
        } catch (Exception error) {
            throw failure("RESTORE_JOURNAL_CORRUPT", error);
        }
    }

    private boolean hasJournalFiles() {
        File base = file.getBaseFile();
        return base.exists() || new File(base.getPath() + ".bak").exists()
                || new File(base.getPath() + ".new").exists();
    }

    private byte[] readBytes() throws IOException {
        FileInputStream input = null;
        try {
            input = file.openRead();
            ByteArrayOutputStream output = new ByteArrayOutputStream();
            BackupFileUtils.copy(input, output, 256 * 1024L, null);
            return output.toByteArray();
        } finally {
            BackupFileUtils.closeQuietly(input);
        }
    }

    /** A checkpoint must be readable before its caller may mutate launcher data. */
    public synchronized void write(Entry entry, State state, String errorCode) throws JournalException {
        // Never replace corrupt/unreadable evidence with a new operation or an IDLE reset.
        read();
        FileOutputStream output = null;
        try {
            long now = System.currentTimeMillis();
            long startedAt = entry.startedAt == 0L ? now : entry.startedAt;
            String code = errorCode == null ? "" : errorCode;
            JSONObject json = entry.toJson();
            json.put("startedAt", startedAt).put("updatedAt", now)
                    .put("state", state.name()).put("errorCode", code);
            Entry.fromJson(json);
            byte[] data = json.toString().getBytes(BackupFileUtils.UTF_8);
            output = file.startWrite();
            output.write(data);
            output.getFD().sync();
            file.finishWrite(output);
            output = null;
            // AtomicFile.finishWrite can log a rename/sync failure instead of throwing.
            if (!Arrays.equals(data, readBytes())) throw new IOException("Checkpoint verification failed");
            entry.startedAt = startedAt;
            entry.updatedAt = now;
            entry.state = state;
            entry.errorCode = code;
        } catch (Exception error) {
            if (output != null) {
                try { file.failWrite(output); }
                catch (RuntimeException cleanupError) { error.addSuppressed(cleanupError); }
            }
            throw failure("RESTORE_JOURNAL_WRITE_FAILED", error);
        }
    }

    public synchronized void reset() throws JournalException {
        write(new Entry(), State.IDLE, null);
    }

    private static JournalException failure(String code, Throwable error) {
        Log.e(TAG, code, error);
        return new JournalException(code, error);
    }
}
