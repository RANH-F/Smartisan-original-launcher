package com.smartisanos.launcher.theme;

import android.app.DownloadManager;
import android.content.Context;
import android.content.SharedPreferences;
import android.database.Cursor;
import android.util.Log;

import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.Executors;
import java.util.concurrent.Executor;

public final class LauncherNetworkPolicy {
    private static final Set<HttpURLConnection> ACTIVE =
            Collections.newSetFromMap(new WeakHashMap<HttpURLConnection, Boolean>());
    private static final Executor CANCELLATION = Executors.newSingleThreadExecutor();
    private static final ArrayList<Set<Long>> downloadCancellations = new ArrayList<>();
    private static volatile SharedPreferences preferences;
    private static long generation;

    private LauncherNetworkPolicy() {}

    public static void initialize(Context context) {
        preferences = context.getSharedPreferences("launcher_network", Context.MODE_PRIVATE);
        if (!isEnabled()) {
            synchronized (ACTIVE) {
                scheduleCancellation(context);
            }
        }
    }

    public static boolean isEnabled() {
        SharedPreferences settings = preferences;
        return settings != null && settings.getBoolean("enabled", true);
    }

    public static void setEnabled(final Context context, boolean enabled) {
        synchronized (ACTIVE) {
            if (preferences == null) return;
            preferences.edit().putBoolean("enabled", enabled).apply();
            if (enabled) return;
            scheduleCancellation(context);
        }
    }

    private static void scheduleCancellation(final Context context) {
        generation++;
        final ArrayList<HttpURLConnection> cancelled = new ArrayList<>(ACTIVE);
        ACTIVE.clear();
        final Set<Long> newerDownloads = new HashSet<>();
        downloadCancellations.add(newerDownloads);
        CANCELLATION.execute(new Runnable() {
            @Override public void run() {
                try {
                    // Remove system jobs first even if an HTTP disconnect takes time.
                    cancelActiveDownloads(context, newerDownloads);
                } finally {
                    synchronized (ACTIVE) {
                        downloadCancellations.remove(newerDownloads);
                    }
                    for (HttpURLConnection connection : cancelled) close(connection);
                }
            }
        });
    }

    private static void cancelActiveDownloads(Context context, Set<Long> newerDownloads) {
        DownloadManager manager = (DownloadManager) context.getSystemService(Context.DOWNLOAD_SERVICE);
        if (manager == null) return;
        DownloadManager.Query query = new DownloadManager.Query().setFilterByStatus(
                DownloadManager.STATUS_PENDING | DownloadManager.STATUS_RUNNING
                        | DownloadManager.STATUS_PAUSED);
        try (Cursor cursor = manager.query(query)) {
            if (cursor == null) return;
            int idColumn = cursor.getColumnIndexOrThrow(DownloadManager.COLUMN_ID);
            while (cursor.moveToNext()) {
                long id = cursor.getLong(idColumn);
                synchronized (ACTIVE) {
                    if (newerDownloads.contains(id)) continue;
                }
                manager.remove(id);
            }
        } catch (RuntimeException error) {
            Log.w("LauncherNetwork", "Could not cancel active downloads", error);
        }
    }

    public static long enqueue(DownloadManager manager, DownloadManager.Request request) throws IOException {
        synchronized (ACTIVE) {
            if (!isEnabled()) throw new IOException("Launcher network is disabled");
            long id = manager.enqueue(request);
            for (Set<Long> cancellation : downloadCancellations) cancellation.add(id);
            return id;
        }
    }

    public static long currentGeneration() {
        synchronized (ACTIVE) {
            return isEnabled() ? generation : -1L;
        }
    }

    public static boolean isCurrent(long started) {
        synchronized (ACTIVE) {
            return started >= 0L && generation == started && isEnabled();
        }
    }

    public static HttpURLConnection open(URL url) throws IOException {
        synchronized (ACTIVE) {
            return open(url, generation);
        }
    }

    public static HttpURLConnection open(URL url, long started) throws IOException {
        synchronized (ACTIVE) {
            if (!isCurrent(started)) throw new IOException("Launcher network request cancelled");
            HttpURLConnection connection = (HttpURLConnection) url.openConnection();
            ACTIVE.add(connection);
            return connection;
        }
    }

    public static void close(HttpURLConnection connection) {
        synchronized (ACTIVE) {
            ACTIVE.remove(connection);
        }
        connection.disconnect();
    }
}
