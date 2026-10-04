package com.smartisanos.home.settings.icons;

import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

/** Page-local index of already managed applications; never queries PackageManager. */
public final class AppIconSearchIndex<T> {
    private final List<Entry<T>> entries = new ArrayList<Entry<T>>();
    private static final class Entry<T> {
        final T value;
        final String name, pkg, component;
        Entry(T value, String name, String pkg, String component) {
            this.value = value;
            this.name = normalize(name);
            this.pkg = normalize(pkg);
            this.component = normalize(component);
        }
    }
    public static String normalize(String value) {
        return value == null ? "" : value.trim().toLowerCase(Locale.ROOT);
    }
    public void add(T value, String name, String pkg, String component) {
        entries.add(new Entry<T>(value, name, pkg, component));
    }
    public List<T> filter(String query) {
        String needle = normalize(query);
        ArrayList<T> result = new ArrayList<T>();
        for (Entry<T> entry : entries) {
            if (entry.name.contains(needle) || entry.pkg.contains(needle)
                    || entry.component.contains(needle)) result.add(entry.value);
        }
        return result;
    }
}
