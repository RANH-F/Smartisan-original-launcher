package com.smartisanos.home.settings.icons;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.ParcelFileDescriptor;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.UUID;

public final class IconShareProvider extends ContentProvider {
    public static final String AUTHORITY = "com.smartisanos.launcher.iconshare";
    private static final long RETENTION_MS = 24L * 60 * 60 * 1000;

    public static Uri stage(Context context, byte[] png) throws IOException {
        File dir = directory(context);
        if (!dir.isDirectory() && !dir.mkdirs() && !dir.isDirectory()) {
            throw new IOException("Cannot create icon share directory");
        }
        File[] files = dir.listFiles();
        if (files != null) {
            long cutoff = System.currentTimeMillis() - RETENTION_MS;
            for (File file : files) {
                if (file.lastModified() < cutoff) file.delete();
            }
        }
        String name = UUID.randomUUID() + ".png";
        try (FileOutputStream output = new FileOutputStream(new File(dir, name))) {
            output.write(png);
        }
        return new Uri.Builder().scheme("content").authority(AUTHORITY).appendPath(name).build();
    }

    private static File directory(Context context) {
        return new File(context.getCacheDir(), "icon-share");
    }

    @Override public boolean onCreate() { return true; }

    @Override public ParcelFileDescriptor openFile(Uri uri, String mode) throws FileNotFoundException {
        String name = uri.getLastPathSegment();
        if (!"r".equals(mode) || uri.getPathSegments().size() != 1 || name == null
                || !name.matches("[0-9a-f-]{36}\\.png")) throw new FileNotFoundException();
        return ParcelFileDescriptor.open(new File(directory(getContext()), name),
                ParcelFileDescriptor.MODE_READ_ONLY);
    }

    @Override public String getType(Uri uri) { return "image/png"; }
    @Override public Cursor query(Uri uri, String[] projection, String selection, String[] args, String sort) {
        return null;
    }
    @Override public Uri insert(Uri uri, ContentValues values) { throw new UnsupportedOperationException(); }
    @Override public int update(Uri uri, ContentValues values, String selection, String[] args) {
        throw new UnsupportedOperationException();
    }
    @Override public int delete(Uri uri, String selection, String[] args) {
        throw new UnsupportedOperationException();
    }
}
