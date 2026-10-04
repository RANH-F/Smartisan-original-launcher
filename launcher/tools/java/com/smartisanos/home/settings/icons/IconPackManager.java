package com.smartisanos.home.settings.icons;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;

import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserFactory;

import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;

public final class IconPackManager {
    private static final String PREFS = "com.smartisanos.launcher_prefs";
    private static final String PREF_KEY_SELECTED_ICON_PACK = "prefs_key_selected_icon_pack";
    private static final String DISABLED = "__disabled__";

    private static ArrayList<String> sIconPackList;
    private static String sLoadedPackage;
    private static final HashMap<String, String> sPackageToDrawable = new HashMap<String, String>();
    private static final HashMap<String, String> sComponentToDrawable = new HashMap<String, String>();
    private static final HashMap<String, PackMap> sPackMapCache = new HashMap<String, PackMap>();
    private static final HashSet<String> sLoadingPacks = new HashSet<String>();
    private static boolean sSelectedPackPreloadPending;
    private static volatile long sPackGeneration;

    private IconPackManager() {
    }

    public static void logPackPerf(String tag, String packageName, int cacheSize, String extra) {
        android.util.Log.d("SmartisanPerf", tag + " | pkg=" + (packageName == null ? "" : packageName)
                + " | cacheSize=" + cacheSize + " | extra=" + (extra == null ? "" : extra)
                + " | thread=" + Thread.currentThread().getName());
    }

    private static void putPackMapLocked(Context context, String packageName, PackMap packMap) {
        sPackMapCache.put(packageName, packMap);
        if (sPackMapCache.size() > 2) {
            String selected = getSelectedIconPackPackage(context);
            String candidateToEvict = null;
            for (String pkg : sPackMapCache.keySet()) {
                if (!pkg.equals(selected)) {
                    candidateToEvict = pkg;
                    break;
                }
            }
            if (candidateToEvict != null) {
                sPackMapCache.remove(candidateToEvict);
                logPackPerf("ICON_PACK_CACHE_EVICT", candidateToEvict, sPackMapCache.size(), "capacity_exceeded");
            }
        }
    }

    public static Drawable getPackedIcon(Context context, String packageName) {
        return getPackedIcon(context, packageName, null);
    }

    public static Drawable getPackedIcon(Context context, String packageName, String className) {
        if (context == null || TextUtils.isEmpty(packageName)) {
            return null;
        }
        if (android.os.Looper.myLooper() == android.os.Looper.getMainLooper()) {
            return getPackedIconNonBlocking(context, packageName, className);
        }
        ensureLoaded(context);
        String drawable = null;
        String loadedPackage;
        synchronized (IconPackManager.class) {
            loadedPackage = sLoadedPackage;
            if (!TextUtils.isEmpty(className)) {
                drawable = sComponentToDrawable.get(flatten(packageName, className));
            }
            // A package-level contacts mapping must not replace its separate
            // DialtactsActivity. Only an explicit component mapping may do that.
            if (TextUtils.isEmpty(drawable) && isDialerComponent(packageName, className)) {
                return null;
        }
        if (TextUtils.isEmpty(drawable)) {
            drawable = sPackageToDrawable.get(packageName);
        }
        }
        if (TextUtils.isEmpty(drawable) || TextUtils.isEmpty(loadedPackage)) {
            return null;
        }
        try {
            Resources res = context.getPackageManager().getResourcesForApplication(loadedPackage);
            int id = res.getIdentifier(drawable, "drawable", loadedPackage);
            if (id == 0) {
                id = res.getIdentifier(drawable, "mipmap", loadedPackage);
            }
            return id == 0 ? null : res.getDrawable(id);
        } catch (Throwable ignored) {
            return null;
        }
    }

    /** Never parses appfilter on the caller thread; the desktop may use the original icon meanwhile. */
    public static Drawable getPackedIconNonBlocking(Context context, String packageName,
                                                    String className) {
        if (context == null || TextUtils.isEmpty(packageName)) return null;
        String loadedPackage;
        String drawable;
        synchronized (IconPackManager.class) {
            if (TextUtils.isEmpty(sLoadedPackage)) {
                preloadSelectedIconPackAsync(context);
                return null;
            }
            loadedPackage = sLoadedPackage;
            drawable = !TextUtils.isEmpty(className)
                    ? sComponentToDrawable.get(flatten(packageName, className)) : null;
            if (TextUtils.isEmpty(drawable) && isDialerComponent(packageName, className)) return null;
            if (TextUtils.isEmpty(drawable)) drawable = sPackageToDrawable.get(packageName);
        }
        return TextUtils.isEmpty(drawable) ? null
                : drawableFor(context, loadedPackage, drawable);
    }

    /** Resolves an icon from a specific installed pack without changing the global selection. */
    public static Drawable getPackedIcon(Context context, String iconPackPackage,
                                         String packageName, String className) {
        if (context == null || TextUtils.isEmpty(iconPackPackage) || TextUtils.isEmpty(packageName)) return null;
        if (android.os.Looper.myLooper() == android.os.Looper.getMainLooper()) {
            return getPackedIconNonBlocking(context, iconPackPackage, packageName, className);
        }
        String selected = getSelectedIconPackPackage(context);
        if (iconPackPackage.equals(selected)) return getPackedIcon(context, packageName, className);
        PackMap map;
        synchronized (sPackMapCache) {
            map = sPackMapCache.get(iconPackPackage);
        }
        if (map == null) {
            long generation = sPackGeneration;
            logPackPerf("ICON_PACK_CACHE_MISS", iconPackPackage, sPackMapCache.size(), "sync_fetch");
            PackMap loaded = new PackMap();
            loadPackMap(context, iconPackPackage, loaded.packageToDrawable, loaded.componentToDrawable);
            synchronized (sPackMapCache) {
                if (generation != sPackGeneration) return null;
                putPackMapLocked(context, iconPackPackage, loaded);
                map = loaded;
            }
        } else {
            logPackPerf("ICON_PACK_CACHE_HIT", iconPackPackage, sPackMapCache.size(), "sync_fetch");
        }
        String drawable = !TextUtils.isEmpty(className)
                ? map.componentToDrawable.get(flatten(packageName, className)) : null;
        if (TextUtils.isEmpty(drawable) && isDialerComponent(packageName, className)) {
            return null;
        }
        if (TextUtils.isEmpty(drawable)) drawable = map.packageToDrawable.get(packageName);
        return drawable == null ? null : drawableFor(context, iconPackPackage, drawable);
    }

    /** Reads only a map that was already parsed by a background preload. */
    public static Drawable getPackedIconNonBlocking(Context context, String iconPackPackage,
                                                    String packageName, String className) {
        if (context == null || TextUtils.isEmpty(iconPackPackage) || TextUtils.isEmpty(packageName)) return null;
        if (iconPackPackage.equals(getSelectedIconPackPackage(context))) {
            return getPackedIconNonBlocking(context, packageName, className);
        }
        PackMap map;
        synchronized (sPackMapCache) {
            map = sPackMapCache.get(iconPackPackage);
        }
        if (map == null) {
            logPackPerf("ICON_PACK_CACHE_MISS", iconPackPackage, sPackMapCache.size(), "nonblocking_fetch");
            preloadIconPackAsync(context, iconPackPackage);
            return null;
        }
        logPackPerf("ICON_PACK_CACHE_HIT", iconPackPackage, sPackMapCache.size(), "nonblocking_fetch");
        String drawable = !TextUtils.isEmpty(className)
                ? map.componentToDrawable.get(flatten(packageName, className)) : null;
        if (TextUtils.isEmpty(drawable) && isDialerComponent(packageName, className)) return null;
        if (TextUtils.isEmpty(drawable)) drawable = map.packageToDrawable.get(packageName);
        return TextUtils.isEmpty(drawable) ? null : drawableFor(context, iconPackPackage, drawable);
    }

    private static boolean isDialerComponent(String packageName, String className) {
        if (!"com.android.contacts".equals(packageName) || TextUtils.isEmpty(className)) {
            return false;
        }
        String normalized = className.startsWith(".") ? packageName + className : className;
        return "com.android.contacts.DialtactsActivityAlias".equals(normalized);
    }

    public static ArrayList<String> getIconPackPackages(Context context) {
        long generation = sPackGeneration;
        synchronized (IconPackManager.class) {
            if (sIconPackList != null) return new ArrayList<String>(sIconPackList);
        }
        ArrayList<String> packs = new ArrayList<String>();
        if (context == null) {
            sIconPackList = packs;
            return packs;
        }
        PackageManager pm = context.getPackageManager();
        HashSet<String> seen = new HashSet<String>();
        try {
            String[] actions = new String[]{
                    "org.adw.launcher.THEMES", "com.gau.go.launcherex.theme",
                    "com.novalauncher.THEME", "com.anddoes.launcher.THEME",
                    "ch.deletescape.lawnchair.ICONPACK", "app.lawnchair.icons.THEMED_ICON",
                    "com.motorola.launcher.ACTION_ICON_PACK", "com.motorola.launcher3.ICON_PACK_CHANGED"
            };
            for (int i = 0; i < actions.length; i++) {
                List<ResolveInfo> matches = pm.queryIntentActivities(new Intent(actions[i]), 0);
                for (int j = 0; matches != null && j < matches.size(); j++) {
                    ResolveInfo match = matches.get(j);
                    if (match != null && match.activityInfo != null) {
                        String pkg = match.activityInfo.packageName;
                        if (seen.add(pkg) && hasAppFilter(pm, pkg)) packs.add(pkg);
                    }
                }
            }
            // Some older packs do not declare a launcher-standard intent.
            List<PackageInfo> packages = pm.getInstalledPackages(0);
            for (int i = 0; i < packages.size(); i++) {
                String pkg = packages.get(i).packageName;
                if (seen.add(pkg) && hasAppFilter(pm, pkg)) {
                    packs.add(pkg);
                }
            }
        } catch (Throwable ignored) {
        }
        synchronized (IconPackManager.class) {
            if (generation == sPackGeneration) sIconPackList = packs;
        }
        return new ArrayList<String>(packs);
    }

    public static String getSelectedIconPackPackage(Context context) {
        if (context == null) {
            return DISABLED;
        }
        return prefs(context).getString(PREF_KEY_SELECTED_ICON_PACK, DISABLED);
    }

    /** Returns the persisted mode only; it never scans packages or parses appfilter. */
    public static boolean isIconPackSelectionEnabled(Context context) {
        return !DISABLED.equals(getSelectedIconPackPackage(context));
    }

    public static void setSelectedIconPackPackage(Context context, String packageName) {
        if (context == null) {
            return;
        }
        prefs(context).edit().putString(PREF_KEY_SELECTED_ICON_PACK, packageName == null ? "" : packageName).apply();
        resetCache();
    }

    public static String getIconPackLabel(Context context, String packageName) {
        if (TextUtils.isEmpty(packageName)) {
            return "自动选择";
        }
        if (context == null || DISABLED.equals(packageName)) {
            return "不使用图标包";
        }
        try {
            PackageManager pm = context.getPackageManager();
            ApplicationInfo info = pm.getApplicationInfo(packageName, 0);
            CharSequence label = pm.getApplicationLabel(info);
            return TextUtils.isEmpty(label) ? packageName : label.toString();
        } catch (Throwable ignored) {
            return packageName;
        }
    }

    public static void preloadSelectedIconPack(Context context) {
        ensureLoaded(context);
    }

    public static void preloadSelectedIconPackAsync(Context context) {
        if (context == null || !isIconPackSelectionEnabled(context)) return;
        final Context app = context.getApplicationContext() == null ? context : context.getApplicationContext();
        synchronized (IconPackManager.class) {
            if (!TextUtils.isEmpty(sLoadedPackage) || sSelectedPackPreloadPending) return;
            sSelectedPackPreloadPending = true;
        }
        new Thread(new Runnable() {
            public void run() {
                try {
                    android.os.Process.setThreadPriority(android.os.Process.THREAD_PRIORITY_BACKGROUND);
                    preloadSelectedIconPack(app);
                } finally {
                    synchronized (IconPackManager.class) {
                        sSelectedPackPreloadPending = false;
                    }
                }
                com.smartisanos.launcher.theme.MaintainedLauncherSettingsHost
                        .onSelectedIconPackPreloaded(app);
            }
        }, "selected-icon-pack-preload").start();
    }

    public static void preloadIconPackAsync(Context context, final String iconPackPackage) {
        if (context == null || TextUtils.isEmpty(iconPackPackage)) return;
        final Context app = context.getApplicationContext() == null ? context : context.getApplicationContext();
        synchronized (sPackMapCache) {
            if (sPackMapCache.containsKey(iconPackPackage)) {
                logPackPerf("ICON_PACK_CACHE_HIT", iconPackPackage, sPackMapCache.size(), "preload_hit");
                return;
            }
            if (sLoadingPacks.contains(iconPackPackage)) {
                logPackPerf("ICON_PACK_LOAD_DEDUP", iconPackPackage, sPackMapCache.size(), "already_loading");
                return;
            }
            sLoadingPacks.add(iconPackPackage);
        }
        logPackPerf("ICON_PACK_LOAD_BEGIN", iconPackPackage, sPackMapCache.size(), "async_start");
        final long generation = sPackGeneration;
        new Thread(new Runnable() {
            public void run() {
                long start = android.os.SystemClock.elapsedRealtime();
                PackMap loaded = new PackMap();
                loadPackMap(app, iconPackPackage, loaded.packageToDrawable, loaded.componentToDrawable);
                long duration = android.os.SystemClock.elapsedRealtime() - start;
                synchronized (sPackMapCache) {
                    sLoadingPacks.remove(iconPackPackage);
                    if (generation != sPackGeneration) return;
                    putPackMapLocked(app, iconPackPackage, loaded);
                }
                logPackPerf("ICON_PACK_LOAD_END", iconPackPackage, sPackMapCache.size(), "durationMs=" + duration);
                com.smartisanos.launcher.theme.MaintainedLauncherSettingsHost
                        .onIconPackOverridesChanged(app, iconPackPackage);
            }
        }, "icon-pack-preload").start();
    }

    public static void invalidateIconPackList() {
        synchronized (IconPackManager.class) {
            ++sPackGeneration;
            sIconPackList = null;
        }
    }

    /** Package events evict only that pack; ordinary app installs keep the active artwork map. */
    public static void invalidateIconPackPackage(String packageName) {
        synchronized (IconPackManager.class) {
            ++sPackGeneration;
            if (packageName != null && packageName.equals(sLoadedPackage)) clearLoaded();
            synchronized (sPackMapCache) { sPackMapCache.remove(packageName); }
        }
    }

    public static void trimMemory(Context context, int level) {
        String selected = getSelectedIconPackPackage(context);
        synchronized (sPackMapCache) {
            java.util.Iterator<String> it = sPackMapCache.keySet().iterator();
            while (it.hasNext()) {
                String pkg = it.next();
                if (!pkg.equals(selected)) {
                    it.remove();
                    logPackPerf("ICON_PACK_CACHE_TRIM", pkg, sPackMapCache.size(), "level=" + level);
                }
            }
        }
        if (level >= android.content.ComponentCallbacks2.TRIM_MEMORY_BACKGROUND) {
            invalidateIconPackList();
        }
    }

    /** Returns only appfilter targets already parsed for the selected pack. */
    public static synchronized ArrayList<String> getLoadedIconPackages() {
        HashSet<String> packages = new HashSet<String>(sPackageToDrawable.keySet());
        for (String component : sComponentToDrawable.keySet()) {
            int separator = component == null ? -1 : component.indexOf('/');
            if (separator > 0) {
                packages.add(component.substring(0, separator));
            }
        }
        return new ArrayList<String>(packages);
    }

    public static void warmUpIconPackList(Context context) {
        if (context == null) return;
        final Context app = context.getApplicationContext() == null ? context : context.getApplicationContext();
        new Thread(new Runnable() {
            public void run() {
                getIconPackPackages(app);
                preloadSelectedIconPack(app);
            }
        }, "icon-pack-list-scan").start();
    }

    public static boolean hasSelectedIconPack(Context context) {
        String pkg = getSelectedIconPackPackage(context);
        if (DISABLED.equals(pkg)) {
            return false;
        }
        if (TextUtils.isEmpty(pkg)) {
            return !getIconPackPackages(context).isEmpty();
        }
        return hasAppFilter(context.getPackageManager(), pkg);
    }

    public static boolean hasPackedIcon(Context context, String packageName) {
        return hasPackedIcon(context, packageName, null);
    }

    public static boolean hasPackedIcon(Context context, String packageName, String className) {
        if (context == null || TextUtils.isEmpty(packageName)) {
            return false;
        }
        ensureLoaded(context);
        return (!TextUtils.isEmpty(className)
                && sComponentToDrawable.containsKey(flatten(packageName, className)))
                || sPackageToDrawable.containsKey(packageName);
    }

    public static synchronized void resetCache() {
        ++sPackGeneration;
        sLoadedPackage = null;
        sIconPackList = null;
        sPackageToDrawable.clear();
        sComponentToDrawable.clear();
        synchronized (sPackMapCache) { sPackMapCache.clear(); }
    }

    private static void ensureLoaded(Context context) {
        final long generation = sPackGeneration;
        String selected = getSelectedIconPackPackage(context);
        if (DISABLED.equals(selected)) {
            synchronized (IconPackManager.class) { clearLoaded(); }
            return;
        }
        if (TextUtils.isEmpty(selected)) {
            ArrayList<String> packs = getIconPackPackages(context);
            if (packs.isEmpty()) {
                synchronized (IconPackManager.class) { clearLoaded(); }
                return;
            }
            selected = packs.get(0);
        }
        synchronized (IconPackManager.class) {
            if (selected.equals(sLoadedPackage)) return;
        }
        PackMap loaded = new PackMap();
        loadPackMap(context, selected, loaded.packageToDrawable, loaded.componentToDrawable);
        synchronized (IconPackManager.class) {
            if (generation != sPackGeneration) return;
            clearLoaded();
            sLoadedPackage = selected;
            sPackageToDrawable.putAll(loaded.packageToDrawable);
            sComponentToDrawable.putAll(loaded.componentToDrawable);
        }
    }

    private static void clearLoaded() {
        sLoadedPackage = null;
        sPackageToDrawable.clear();
        sComponentToDrawable.clear();
    }

    private static boolean hasAppFilter(PackageManager pm, String packageName) {
        try {
            Resources res = pm.getResourcesForApplication(packageName);
            if (res.getIdentifier("appfilter", "xml", packageName) != 0) return true;
            InputStream in = res.getAssets().open("appfilter.xml");
            in.close();
            return true;
        } catch (Throwable ignored) {
            return false;
        }
    }

    private static void loadPackMap(Context context, String packageName,
                                    HashMap<String, String> packageMap,
                                    HashMap<String, String> componentMap) {
        XmlResourceParser parser = null;
        InputStream stream = null;
        XmlPullParser xml = null;
        try {
            PackageManager pm = context.getPackageManager();
            Resources res = pm.getResourcesForApplication(packageName);
            int id = res.getIdentifier("appfilter", "xml", packageName);
            if (id != 0) {
                parser = res.getXml(id);
                xml = parser;
            } else {
                stream = res.getAssets().open("appfilter.xml");
                XmlPullParserFactory factory = XmlPullParserFactory.newInstance();
                factory.setNamespaceAware(true);
                xml = factory.newPullParser();
                xml.setInput(stream, "UTF-8");
            }
            while (xml.getEventType() != XmlPullParser.END_DOCUMENT) {
                if (xml.getEventType() == XmlPullParser.START_TAG
                        && "item".equals(xml.getName())) {
                    String component = xml.getAttributeValue(null, "component");
                    String drawable = xml.getAttributeValue(null, "drawable");
                    putMapping(component, drawable, packageMap, componentMap);
                }
                xml.next();
            }
        } catch (Throwable ignored) {
        } finally {
            if (parser != null) {
                parser.close();
            }
            if (stream != null) try { stream.close(); } catch (Throwable ignored) { }
        }
    }

    private static void putMapping(String component, String drawable,
                                   HashMap<String, String> packageMap,
                                   HashMap<String, String> componentMap) {
        if (TextUtils.isEmpty(component) || TextUtils.isEmpty(drawable)) {
            return;
        }
        String body = component;
        int open = body.indexOf('{');
        int close = body.indexOf('}');
        if (open >= 0 && close > open) {
            body = body.substring(open + 1, close);
        }
        int slash = body.indexOf('/');
        if (slash <= 0) {
            return;
        }
        String pkg = body.substring(0, slash);
        String cls = body.substring(slash + 1);
        if (cls.startsWith(".")) {
            cls = pkg + cls;
        }
        if (!packageMap.containsKey(pkg)) {
            packageMap.put(pkg, drawable);
        }
        componentMap.put(flatten(pkg, cls), drawable);
    }

    private static Drawable drawableFor(Context context, String iconPackPackage, String drawable) {
        try {
            Resources res = context.getPackageManager().getResourcesForApplication(iconPackPackage);
            int id = res.getIdentifier(drawable, "drawable", iconPackPackage);
            if (id == 0) id = res.getIdentifier(drawable, "mipmap", iconPackPackage);
            return id == 0 ? null : res.getDrawable(id);
        } catch (Throwable ignored) { return null; }
    }

    private static final class PackMap {
        final HashMap<String, String> packageToDrawable = new HashMap<String, String>();
        final HashMap<String, String> componentToDrawable = new HashMap<String, String>();
    }

    private static String flatten(String packageName, String className) {
        return packageName + "/" + (className != null && className.startsWith(".")
                ? packageName + className : className);
    }

    private static SharedPreferences prefs(Context context) {
        return context.getSharedPreferences(PREFS, Context.MODE_PRIVATE);
    }
}
