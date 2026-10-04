package com.smartisanos.launcher.quicksearch.ui;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.SharedPreferences;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.content.res.Configuration;
import android.util.DisplayMetrics;
import java.io.File;
import java.io.InputStream;
import java.io.FileOutputStream;
import java.lang.reflect.Method;
/** Shared original resource owner for QuickSearch and settings search bars. */
public final class OriginalQuickSearchResources {
    private static final String RESOURCE_ASSET = "quicksearch_original/original-quicksearch-res.apk";
    private static ResourceEntry cached;
    private OriginalQuickSearchResources() { }
    public static synchronized boolean isPrepared(Context base) {
        return cached != null && cached.matches(sourceStamp(base),
                base.getResources().getConfiguration(), base.getResources().getDisplayMetrics());
    }
    public static synchronized Context create(Context base) {
        try {
            Resources baseResources = base.getResources();
            Configuration configuration = new Configuration(baseResources.getConfiguration());
            DisplayMetrics metrics = new DisplayMetrics();
            metrics.setTo(baseResources.getDisplayMetrics());
            String sourceStamp = sourceStamp(base);
            if (cached != null && cached.matches(sourceStamp, configuration, metrics)) {
                return new ResourceContext(base, cached.assets, cached.resources);
            }
            File apk = copyResourceAsset(base, sourceStamp);
            AssetManager assets = AssetManager.class.newInstance();
            Method addAssetPath = AssetManager.class.getMethod("addAssetPath", String.class);
            int cookie = ((Integer) addAssetPath.invoke(assets, apk.getAbsolutePath())).intValue();
            if (cookie == 0) throw new IllegalStateException("Q6 resource path rejected");
            Resources resources = new Resources(assets, metrics, configuration);
            Context result = new ResourceContext(base, assets, resources);
            // Cache resource data only. Every caller retains its own base and Theme.
            cached = new ResourceEntry(sourceStamp, configuration, metrics, apk, assets, resources);
            return result;
        } catch (Throwable error) {
            throw new IllegalStateException("Q6 resource load failed", error);
        }
    }

    private static String sourceStamp(Context base) {
        File source = new File(base.getApplicationInfo().sourceDir);
        return source.getAbsolutePath() + ':' + source.length() + ':' + source.lastModified();
    }

    private static final class ResourceEntry {
        final String sourceStamp;
        final Configuration configuration;
        final DisplayMetrics metrics;
        final File apk;
        final long apkLength, apkModified;
        final AssetManager assets;
        final Resources resources;

        ResourceEntry(String stamp, Configuration config, DisplayMetrics display, File file,
                      AssetManager manager, Resources res) {
            sourceStamp = stamp;
            configuration = new Configuration(config);
            metrics = new DisplayMetrics();
            metrics.setTo(display);
            apk = file;
            apkLength = file.length();
            apkModified = file.lastModified();
            assets = manager;
            resources = res;
        }

        boolean matches(String stamp, Configuration config, DisplayMetrics display) {
            return sourceStamp.equals(stamp) && configuration.equals(config)
                    && metrics.equals(display) && apk.isFile() && apk.length() == apkLength
                    && apk.lastModified() == apkModified;
        }
    }

    private static File copyResourceAsset(Context base, String sourceStamp) throws Exception {
        File directory = new File(base.getCacheDir(), "quicksearch_original_res");
        if (!directory.exists() && !directory.mkdirs()) {
            throw new IllegalStateException("Q6 resource cache unavailable");
        }
        File out = new File(directory, "original-quicksearch-res.apk");
        long updateTime = base.getPackageManager().getPackageInfo(base.getPackageName(), 0).lastUpdateTime;
        SharedPreferences prefs = base.getSharedPreferences("quicksearch_original_res",
                Context.MODE_PRIVATE);
        if (out.isFile() && out.length() > 0L
                && prefs.getLong("copied_last_update_time", -1L) == updateTime
                && sourceStamp.equals(prefs.getString("copied_source_stamp", ""))) return out;
        File temporary = new File(directory, "original-quicksearch-res.apk.tmp");
        try (InputStream input = base.getAssets().open(RESOURCE_ASSET);
             FileOutputStream output = new FileOutputStream(temporary, false)) {
            byte[] buffer = new byte[16384];
            int read;
            while ((read = input.read(buffer)) != -1) output.write(buffer, 0, read);
            output.getFD().sync();
        }
        if (!temporary.renameTo(out)) throw new IllegalStateException("Q6 resource publish failed");
        prefs.edit().putLong("copied_last_update_time", updateTime)
                .putString("copied_source_stamp", sourceStamp).apply();
        return out;
    }

    private static final class ResourceContext extends ContextWrapper {
        private final AssetManager assets;
        private final Resources resources;
        private final Resources.Theme theme;

        ResourceContext(Context base, AssetManager assets, Resources resources) {
            super(base);
            this.assets = assets;
            this.resources = resources;
            this.theme = resources.newTheme();
            this.theme.applyStyle(android.R.style.Theme_DeviceDefault_Light_NoActionBar, true);
        }

        @Override public AssetManager getAssets() {
            return assets;
        }

        @Override public Resources getResources() {
            return resources;
        }

        @Override public Resources.Theme getTheme() {
            return theme;
        }
    }

}
