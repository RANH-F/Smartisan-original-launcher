package com.smartisanos.launcher.backup;

import android.content.Context;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.channels.FileLock;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.ReentrantLock;

public final class BackupOperationLock {
    private static final AtomicReference<String> OWNER = new AtomicReference<String>();
    private static final ReentrantLock RESTORE_WRITER = new ReentrantLock();

    private BackupOperationLock() {}

    public static boolean acquire(String token) {
        return token != null && OWNER.compareAndSet(null, token);
    }

    public static boolean owns(String token) {
        return token != null && token.equals(OWNER.get());
    }

    public static void release(String token) {
        if (token != null) OWNER.compareAndSet(token, null);
    }

    public static boolean isBusy() {
        return OWNER.get() != null;
    }

    public static boolean isBusyForDifferentOwner(String token) {
        String owner = OWNER.get();
        return owner != null && (token == null || !owner.equals(token));
    }

    /** Serialize the reload worker with startup recovery in another app process. */
    static RestoreWriter acquireRestoreWriter(Context context) throws IOException {
        RESTORE_WRITER.lock();
        RandomAccessFile file = null;
        try {
            File directory = new File(context.getFilesDir(), "backup_restore");
            if (!directory.isDirectory() && !directory.mkdirs() && !directory.isDirectory())
                throw new IOException("Cannot create restore lock directory");
            // Keep this inode: deleting it would let different processes lock different files.
            file = new RandomAccessFile(new File(directory, "restore_writer.lock"), "rw");
            FileLock lock = file.getChannel().lock();
            return new RestoreWriter(file, lock);
        } catch (IOException | RuntimeException error) {
            if (file != null) {
                try { file.close(); } catch (IOException closeError) { error.addSuppressed(closeError); }
            }
            RESTORE_WRITER.unlock();
            throw error;
        }
    }

    static final class RestoreWriter implements Closeable {
        private final RandomAccessFile file;
        private final FileLock lock;
        RestoreWriter(RandomAccessFile file, FileLock lock) { this.file = file; this.lock = lock; }
        @Override public void close() throws IOException {
            try { lock.release(); }
            finally {
                try { file.close(); }
                finally { RESTORE_WRITER.unlock(); }
            }
        }
    }
}
