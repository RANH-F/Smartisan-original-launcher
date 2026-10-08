package com.smartisanos.home.settings.icons;

import android.content.Context;
import android.os.Looper;
import org.json.JSONArray;
import org.json.JSONObject;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;

/** Immutable metadata only. PNG ownership, downloading and rendering stay in existing owners. */
public final class IconLibraryCatalog {
    private static volatile IconLibraryCatalog instance;
    public final List<IconLibrarySearchIndex.Entry> entries;
    public final String revision;
    private final Map<String, String> packages, components;
    private final HashSet<String> sources;
    private final Map<String, IconLibrarySearchIndex.Entry> sourceEntries = new HashMap<String, IconLibrarySearchIndex.Entry>();

    private IconLibraryCatalog(JSONObject json, Map<String, InstalledLabel> installed) throws Exception {
        if (json.getInt("schema") != 1) throw new IllegalArgumentException("Unsupported icon catalog");
        revision = json.getString("revision") + ":" + Integer.toHexString(installed.hashCode());
        ArrayList<IconLibrarySearchIndex.Entry> rows = new ArrayList<IconLibrarySearchIndex.Entry>();
        sources = new HashSet<String>();
        JSONArray values = json.getJSONArray("entries");
        for (int i = 0; i < values.length(); i++) {
            JSONObject item = values.getJSONObject(i);
            JSONArray terms = item.getJSONArray("terms");
            String[] strings = new String[terms.length()];
            for (int j = 0; j < strings.length; j++) strings[j] = terms.getString(j);
            String source = item.getString("sourceId"), name = item.getString("name"), category = item.getString("category");
            ArrayList<String> enriched = new ArrayList<String>(java.util.Arrays.asList(strings));
            for (String term : strings) {
                InstalledLabel label = installed.get(term);
                if (label == null) continue;
                enriched.add(label.name);
                Collections.addAll(enriched, label.pinyin);
                if (name.equals(source) || name.equals(term)) name = label.name;
                if ("other".equals(category) && label.category.length() != 0) category = label.category;
            }
            IconLibrarySearchIndex.Entry entry = new IconLibrarySearchIndex.Entry(
                    source, name, category, enriched.toArray(new String[0]));
            if (sources.add(entry.sourceId)) rows.add(entry);
            sourceEntries.put(entry.sourceId, entry);
        }
        entries = Collections.unmodifiableList(rows);
        packages = readMap(json.getJSONObject("packages"));
        components = readMap(json.getJSONObject("components"));
    }

    private static Map<String, String> readMap(JSONObject json) throws Exception {
        HashMap<String, String> result = new HashMap<String, String>();
        java.util.Iterator<String> it = json.keys();
        while (it.hasNext()) { String key = it.next(); result.put(key, json.getString(key)); }
        return Collections.unmodifiableMap(result);
    }

    public static IconLibraryCatalog peek() { return instance; }
    public static void invalidateInstalledLabels() { instance = null; }

    private static final class InstalledLabel {
        final String name, category;
        final String[] pinyin;
        InstalledLabel(String name, String category) {
            this.name = name; this.category = category;
            this.pinyin = IconPinyin.terms(name);
        }
        public int hashCode() { return 31 * name.hashCode() + category.hashCode(); }
    }

    /** One metadata pass on the existing worker, never on keystrokes or cell binding. */
    private static Map<String, InstalledLabel> installedLabels(Context context) {
        Map<String, InstalledLabel> labels = new HashMap<String, InstalledLabel>();
        android.content.pm.PackageManager pm = context.getPackageManager();
        for (android.content.pm.ApplicationInfo info : pm.getInstalledApplications(0)) {
            CharSequence text = pm.getApplicationLabel(info);
            if (text == null || text.length() == 0) continue;
            String category = "";
            if (android.os.Build.VERSION.SDK_INT >= 26) {
                switch (info.category) {
                    case android.content.pm.ApplicationInfo.CATEGORY_GAME: category = "games"; break;
                    case android.content.pm.ApplicationInfo.CATEGORY_AUDIO:
                    case android.content.pm.ApplicationInfo.CATEGORY_VIDEO: category = "media"; break;
                    case android.content.pm.ApplicationInfo.CATEGORY_SOCIAL: category = "social"; break;
                    case android.content.pm.ApplicationInfo.CATEGORY_PRODUCTIVITY: category = "productivity"; break;
                    case android.content.pm.ApplicationInfo.CATEGORY_MAPS: category = "travel"; break;
                    case android.content.pm.ApplicationInfo.CATEGORY_ACCESSIBILITY: category = "tools"; break;
                    default: break;
                }
            }
            labels.put(info.packageName, new InstalledLabel(text.toString(), category));
        }
        return labels;
    }

    /** Only called by the repository worker; UI never waits for asset IO or JSON parsing. */
    public static IconLibraryCatalog load(Context context) throws Exception {
        IconLibraryCatalog ready = instance;
        if (ready != null) return ready;
        if (Looper.myLooper() == Looper.getMainLooper()) throw new IllegalStateException("Catalog IO on MAIN");
        synchronized (IconLibraryCatalog.class) {
            if (instance != null) return instance;
            InputStream stream = context.getAssets().open("icons/search-index.json");
            try {
                ByteArrayOutputStream bytes = new ByteArrayOutputStream();
                byte[] buffer = new byte[8192];
                int read;
                while ((read = stream.read(buffer)) != -1) {
                    if (bytes.size() + read > 8 * 1024 * 1024) throw new IllegalArgumentException("Oversize catalog");
                    bytes.write(buffer, 0, read);
                }
                instance = new IconLibraryCatalog(new JSONObject(bytes.toString("UTF-8")), installedLabels(context));
                return instance;
            } finally { stream.close(); }
        }
    }

    public boolean contains(String sourceId) { return sources.contains(sourceId); }
    public IconLibrarySearchIndex.Entry entryForPackage(String pkg) { return sourceEntries.get(packages.get(pkg)); }
    public String resolve(String pkg, String component) {
        String source = component == null ? null : components.get(pkg + "/" + component);
        return source != null ? source : packages.get(pkg);
    }
}
