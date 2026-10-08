package com.smartisanos.home.settings.icons;

import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

/** String-only search; no Android images, packages, network or appfilter work. */
public final class IconLibrarySearchIndex {
    public interface Current { boolean isCurrent(); }
    public static final class Entry {
        public final String sourceId, name, category;
        public final String packPackage, drawableName;
        public final long packVersion;
        private final String[] terms;
        private final String normalizedName, normalizedSource;
        public final String searchText;
        public Entry(String sourceId, String name, String category, String[] terms) {
            this(sourceId, name, category, terms, "", "", 0L);
        }
        public Entry(String sourceId, String name, String category, String[] terms,
                String packPackage, String drawableName, long packVersion) {
            this.sourceId = sourceId; this.name = name; this.category = category;
            this.packPackage = packPackage; this.drawableName = drawableName; this.packVersion = packVersion;
            this.normalizedName = normalize(name); this.normalizedSource = normalize(sourceId);
            this.terms = new String[terms.length];
            StringBuilder joined = new StringBuilder("|");
            for (int i = 0; i < terms.length; i++) { this.terms[i] = normalize(terms[i]); joined.append(this.terms[i]).append('|'); }
            searchText = joined.toString();
        }
        public boolean isPack() { return packPackage.length() != 0; }
        public String stableKey() { return (isPack() ? "PACK:" : "IMPROVED:") + sourceId; }
        private int rank(String query) {
            if (normalizedSource.equals(query)) return 0;
            if (normalizedName.equals(query)) return 1;
            int rank = 99;
            for (String term : terms) {
                if (term.equals(query)) rank = Math.min(rank, 2);
                else if (term.startsWith(query)) rank = Math.min(rank, 3);
                else if (term.contains(query)) rank = Math.min(rank, 4);
            }
            return rank;
        }
    }
    public static String normalize(String value) {
        return value == null ? "" : value.trim().toLowerCase(Locale.ROOT);
    }
    public static List<Entry> search(List<Entry> entries, String text, String category, Current current) {
        String query = normalize(text);
        @SuppressWarnings("unchecked") ArrayList<Entry>[] ranked = new ArrayList[5];
        for (int i = 0; i < ranked.length; i++) ranked[i] = new ArrayList<Entry>();
        for (int i = 0; i < entries.size(); i++) {
            if ((i & 63) == 0 && current != null && !current.isCurrent()) return null;
            Entry entry = entries.get(i);
            if (category != null && !category.equals(entry.category)) continue;
            int rank = query.length() == 0 ? 0 : entry.rank(query);
            if (rank < ranked.length) ranked[rank].add(entry);
        }
        ArrayList<Entry> result = new ArrayList<Entry>();
        for (ArrayList<Entry> group : ranked) result.addAll(group);
        return result;
    }
}
