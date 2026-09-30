package com.smartisanos.launcher.backup;

import android.content.Context;
import android.util.AtomicFile;

import org.json.JSONObject;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;

public final class BackupOperationJournal {
    public enum State {
        IDLE, VALIDATING_LOCATION, WAITING_DATABASE, EXPORTING_LAYOUT,
        BUILDING_ARCHIVE, PREVIEW_READY, COPYING_TO_DESTINATION, COMPLETE, CANCELLED, FAILED
    }

    public static final class Entry {
        public String token = "";
        public State state = State.IDLE;
        public String stagingPath = "";
        public String partialUri = "";
        public String errorCode = "";
        public long startedAt;
        public long updatedAt;

        JSONObject toJson() throws Exception {
            JSONObject json = new JSONObject();
            json.put("token", token);
            json.put("state", state.name());
            json.put("stagingPath", stagingPath);
            json.put("partialUri", partialUri);
            json.put("errorCode", errorCode);
            json.put("startedAt", startedAt);
            json.put("updatedAt", updatedAt);
            return json;
        }

        static Entry fromJson(JSONObject json) {
            Entry entry = new Entry();
            entry.token = json.optString("token", "");
            try { entry.state = State.valueOf(json.optString("state", "IDLE")); }
            catch (Throwable ignored) { entry.state = State.FAILED; }
            entry.stagingPath = json.optString("stagingPath", "");
            entry.partialUri = json.optString("partialUri", "");
            entry.errorCode = json.optString("errorCode", "");
            entry.startedAt = json.optLong("startedAt", 0L);
            entry.updatedAt = json.optLong("updatedAt", 0L);
            return entry;
        }
    }

    private final AtomicFile file;

    public BackupOperationJournal(Context context) {
        File directory = new File(context.getFilesDir(), "backup_restore");
        if (!directory.exists()) directory.mkdirs();
        file = new AtomicFile(new File(directory, "backup_operation_journal.json"));
    }

    public synchronized Entry read() {
        FileInputStream input = null;
        try {
            input = file.openRead();
            ByteArrayOutputStream output = new ByteArrayOutputStream();
            BackupFileUtils.copy(input, output, 128 * 1024L, null);
            return Entry.fromJson(new JSONObject(new String(output.toByteArray(), BackupFileUtils.UTF_8)));
        } catch (Throwable ignored) {
            return new Entry();
        } finally {
            BackupFileUtils.closeQuietly(input);
        }
    }

    public synchronized boolean write(Entry entry, State state, String errorCode) {
        FileOutputStream output = null;
        try {
            long now = System.currentTimeMillis();
            if (entry.startedAt == 0L) entry.startedAt = now;
            entry.updatedAt = now;
            entry.state = state;
            entry.errorCode = errorCode == null ? "" : errorCode;
            output = file.startWrite();
            output.write(entry.toJson().toString().getBytes(BackupFileUtils.UTF_8));
            file.finishWrite(output);
            return true;
        } catch (Throwable error) {
            if (output != null) file.failWrite(output);
            return false;
        }
    }

    public synchronized void reset() {
        write(new Entry(), State.IDLE, null);
    }
}
