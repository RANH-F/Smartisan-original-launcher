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
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.Executors;
import java.util.concurrent.Executor;

public final class LauncherNetworkPolicy {
    private static final Set<HttpURLConnection> ACTIVE =
            Collections.newSetFromMap(new WeakHashMap<HttpURLConnection, Boolean>());
    private static final Executor CANCELLATION = Executors.newSingleThreadExecutor();
    private static volatile SharedPreferences preferences;

    private LauncherNetworkPolicy() {}

    public static void initialize(Context context) {
        preferences = context.getSharedPreferences("launcher_network", Context.MODE_PRIVATE);
    }

    public static boolean isEnabled() {
        SharedPreferences settings = preferences;
        return settings != null && settings.getBoolean("enabled", false);
    }

    public static void setEnabled(final Context context, boolean enabled) {
        synchronized (ACTIVE) {
            if (preferences == null) return;
            preferences.edit().putBoolean("enabled", enabled).apply();
            if (enabled) return;
            final ArrayList<HttpURLConnection> cancelled = new ArrayList<>(ACTIVE);
            ACTIVE.clear();
            CANCELLATION.execute(new Runnable() {
                @Override public void run() {
                    for (HttpURLConnection connection : cancelled) close(connection);
                    if (!isEnabled()) cancelActiveDownloads(context);
                }
            });
        }
    }

    private static void cancelActiveDownloads(Context context) {
        DownloadManager manager = (DownloadManager) context.getSystemService(Context.DOWNLOAD_SERVICE);
        if (manager == null) return;
        DownloadManager.Query query = new DownloadManager.Query().setFilterByStatus(
                DownloadManager.STATUS_PENDING | DownloadManager.STATUS_RUNNING
                        | DownloadManager.STATUS_PAUSED);
        try (Cursor cursor = manager.query(query)) {
            if (cursor == null) return;
            int idColumn = cursor.getColumnIndexOrThrow(DownloadManager.COLUMN_ID);
            while (!isEnabled() && cursor.moveToNext()) manager.remove(cursor.getLong(idColumn));
        } catch (RuntimeException error) {
            Log.w("LauncherNetwork", "Could not cancel active downloads", error);
        }
    }

    public static long enqueue(DownloadManager manager, DownloadManager.Request request) throws IOException {
        synchronized (ACTIVE) {
            if (!isEnabled()) throw new IOException("Launcher network is disabled");
            return manager.enqueue(request);
        }
    }

    public static HttpURLConnection open(URL url) throws IOException {
        synchronized (ACTIVE) {
            if (!isEnabled()) throw new IOException("Launcher network is disabled");
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
