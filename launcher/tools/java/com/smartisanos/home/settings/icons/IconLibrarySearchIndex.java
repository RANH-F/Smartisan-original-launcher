package com.smartisanos.home.settings.icons;

import java.text.Normalizer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Locale;
import java.util.HashSet;
import java.util.Set;
import java.util.regex.Pattern;

/** String-only matching shared by generated metadata and persisted pack descriptors. */
public final class IconLibrarySearchIndex {
    public static final int RANKS = 11;
    public static final String[] GROUPS = {"names", "aliases", "pinyin", "initials", "identities", "keywords"};
    private static final Pattern WHITESPACE = Pattern.compile("\\s+");
    private static final String[] EMPTY = new String[0];
    public interface Current { boolean isCurrent(); }

    public static final class Query {
        public final String text, compact;
        public final String[] tokens;
        public Query(String value) {
            text = normalize(value); compact = compact(text);
            tokens = text.length() == 0 ? new String[0] : text.split(" ");
        }
    }
    public static final class Entry {
        public final String sourceId, name, category, packPackage, drawableName;
        public final long packVersion;
        public final String searchText;
        public final String[][] groups;
        private final String normalizedName, normalizedSource;

        public Entry(String sourceId, String name, String category, String[] terms) {
            this(sourceId, name, category, terms, "", "", 0L);
        }
        public Entry(String sourceId, String name, String category, String[] terms,
                String packPackage, String drawableName, long packVersion) {
            this(sourceId, name, category, terms, packPackage, drawableName, packVersion, null);
        }
        public Entry(String sourceId, String name, String category, String[] terms,
                String packPackage, String drawableName, long packVersion, String[][] typed) {
            this.sourceId=sourceId; this.name=name; this.category=category;
            this.packPackage=packPackage; this.drawableName=drawableName; this.packVersion=packVersion;
            normalizedName=compact(name); normalizedSource=compact(sourceId);
            groups=new String[GROUPS.length][];
            for (int i=0;i<groups.length;i++) {
                String[] values=typed!=null && i<typed.length && typed[i]!=null ? typed[i]
                        : i==0 ? new String[]{name} : i==1 ? terms : EMPTY;
                ArrayList<String> normalized=new ArrayList<String>();
                for(String term:values) {
                    String value=compact(term);
                    if(!value.isEmpty() && !normalized.contains(value)) normalized.add(value);
                }
                groups[i]=normalized.isEmpty()?EMPTY:normalized.toArray(new String[0]);
            }
            StringBuilder joined=new StringBuilder("|");
            Set<String> seen=new HashSet<String>();
            for(String term:terms) addTerm(joined,seen,term);
            for(String[] values:groups) for(String term:values) if(seen.add(term)) joined.append(term).append('|');
            addTerm(joined,seen,sourceId); addTerm(joined,seen,name);
            searchText=joined.toString();
        }
        public boolean isPack() { return packPackage.length()!=0; }
        public String stableKey() { return (isPack()?"PACK:":"IMPROVED:")+sourceId; }
        public String groupText(int group) { return join(groups[group]); }
        public int rank(String value) { return rank(new Query(value)); }
        public int rank(Query query) {
            String q=query.compact;
            if(q.isEmpty() || normalizedSource.equals(q) || exact(groups[4],q)) return 0;
            if((groups[0].length>0 && normalizedName.equals(q)) || exact(groups[0],q)) return 1;
            if(exact(groups[1],q)) return 2;
            if(exact(groups[2],q)) return 3;
            if(exact(groups[3],q)) return 4;
            if(prefix(groups[0],q) || prefix(groups[1],q)) return 5;
            if(prefix(groups[2],q) || prefix(groups[3],q)) return 6;
            if(prefix(groups[4],q)) return 7;
            if(contains(groups[0],q) || contains(groups[1],q)) return 8;
            if(contains(groups[5],q)) return 9;
            if(searchText.contains(q)) return 10;
            if(query.tokens.length>1) {
                for(String token:query.tokens) if(!searchText.contains(compact(token))) return RANKS;
                return 8;
            }
            return RANKS;
        }
    }
    private static boolean exact(String[] values,String query) {
        for(String value:values) if(value.equals(query)) return true; return false;
    }
    private static boolean prefix(String[] values,String query) {
        for(String value:values) if(value.startsWith(query)) return true; return false;
    }
    private static boolean contains(String[] values,String query) {
        for(String value:values) if(value.contains(query)) return true; return false;
    }
    public static String normalize(String value) {
        if(value==null) return "";
        boolean unicode=false;
        for(int i=0;i<value.length();i++) if(value.charAt(i)>127) {unicode=true;break;}
        String normal=(unicode?Normalizer.normalize(value,Normalizer.Form.NFKC):value).trim().toLowerCase(Locale.ROOT);
        if(normal.indexOf("  ")>=0 || normal.indexOf('\t')>=0 || normal.indexOf('\n')>=0 || normal.indexOf('\r')>=0 || normal.indexOf('\f')>=0 || normal.indexOf(11)>=0)
            normal=WHITESPACE.matcher(normal).replaceAll(" ");
        return normal;
    }
    public static String compact(String value) { return normalize(value).replace(" ",""); }
    public static void addTerm(StringBuilder joined,String term) {
        String normal=normalize(term), value=normal.replace(" ","");
        if(!normal.isEmpty() && joined.indexOf("|"+normal+"|")<0) joined.append(normal).append('|');
        if(!value.isEmpty() && joined.indexOf("|"+value+"|")<0) joined.append(value).append('|');
    }
    private static void addTerm(StringBuilder joined,Set<String> seen,String term) {
        String normal=normalize(term),value=normal.replace(" ","");
        if(!normal.isEmpty() && seen.add(normal)) joined.append(normal).append('|');
        if(!value.isEmpty() && seen.add(value)) joined.append(value).append('|');
    }
    public static String join(String[] values) {
        StringBuilder joined=new StringBuilder("|");
        for(String value:values) addTerm(joined,value);
        return joined.toString();
    }
    public static List<Entry> search(List<Entry> entries,String text,String category,Current current) {
        final Query query=new Query(text);
        @SuppressWarnings("unchecked") ArrayList<Entry>[] ranked=new ArrayList[RANKS];
        for(int i=0;i<ranked.length;i++) ranked[i]=new ArrayList<Entry>();
        for(int i=0;i<entries.size();i++) {
            if((i&63)==0 && current!=null && !current.isCurrent()) return null;
            Entry entry=entries.get(i);
            if(category!=null && !category.equals(entry.category)) continue;
            int rank=entry.rank(query);
            if(rank<RANKS) ranked[rank].add(entry);
        }
        Comparator<Entry> stable=new Comparator<Entry>() {
            public int compare(Entry a,Entry b) { return a.stableKey().compareTo(b.stableKey()); }
        };
        ArrayList<Entry> result=new ArrayList<Entry>();
        for(ArrayList<Entry> bucket:ranked) { Collections.sort(bucket,stable); result.addAll(bucket); }
        return result;
    }
}
