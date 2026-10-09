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

/** Immutable metadata only. Search enrichment never changes automatic source identity. */
public final class IconLibraryCatalog {
    private static volatile IconLibraryCatalog instance;
    private static final String[] EMPTY = new String[0];
    public final List<IconLibrarySearchIndex.Entry> entries;
    public final String revision, sourceRevision;
    private final Map<String,String> packages, components;
    private final HashSet<String> sources=new HashSet<String>();
    private final Map<String,IconLibrarySearchIndex.Entry> sourceEntries=new HashMap<String,IconLibrarySearchIndex.Entry>();
    private final Map<String,InstalledLabel> installed;
    private final Map<String,IconLibrarySearchIndex.Entry> installedEntries=new HashMap<String,IconLibrarySearchIndex.Entry>();

    private IconLibraryCatalog(JSONObject json,Map<String,InstalledLabel> installed) throws Exception {
        if(json.getInt("schema")!=1) throw new IllegalArgumentException("Unsupported icon catalog");
        this.installed=installed;
        sourceRevision=json.getString("revision");
        revision=sourceRevision+":"+installedRevision(installed);
        packages=readMap(json.getJSONObject("packages")); components=readMap(json.getJSONObject("components"));
        ArrayList<IconLibrarySearchIndex.Entry> rows=new ArrayList<IconLibrarySearchIndex.Entry>();
        JSONArray values=json.getJSONArray("entries");
        for(int i=0;i<values.length();i++) {
            JSONObject item=values.getJSONObject(i);
            String[] terms=strings(item.getJSONArray("terms"));
            String source=item.getString("sourceId"), name=item.getString("name"), category=item.getString("category");
            String[][] groups=new String[IconLibrarySearchIndex.GROUPS.length][];
            JSONObject typed=item.optJSONObject("groups");
            for(int j=0;j<groups.length;j++) groups[j]=typed==null ? null : strings(typed.optJSONArray(IconLibrarySearchIndex.GROUPS[j]));
            ArrayList<String> enriched=new ArrayList<String>(java.util.Arrays.asList(terms));
            for(String term:terms) {
                InstalledLabel label=installed.get(term);
                if(label==null) continue;
                enriched.add(label.name); Collections.addAll(enriched,label.pinyin);
                groups[0]=append(groups[0],new String[]{label.name});
                groups[2]=append(groups[2],label.pinyin.length==0?new String[0]:label.pinyin.length<3?new String[]{label.pinyin[0]}:new String[]{label.pinyin[0],label.pinyin[2]});
                groups[3]=append(groups[3],label.pinyin.length<2?new String[0]:new String[]{label.pinyin[1]});
                if(name.equals(source) || name.equals(term)) name=label.name;
                if("other".equals(category) && !label.category.isEmpty()) category=label.category;
            }
            IconLibrarySearchIndex.Entry entry=new IconLibrarySearchIndex.Entry(source,name,category,
                    enriched.toArray(new String[0]),"","",0L,typed==null?null:groups);
            if(sources.add(source)) rows.add(entry);
            sourceEntries.put(source,entry);
        }
        entries=Collections.unmodifiableList(rows);
    }
    private static String[] strings(JSONArray array) throws Exception {
        if(array==null || array.length()==0) return EMPTY;
        String[] result=new String[array.length()];
        for(int i=0;i<result.length;i++) result[i]=array.getString(i); return result;
    }
    private static String[] append(String[] first,String[] second) {
        ArrayList<String> values=new ArrayList<String>();
        if(first!=null) Collections.addAll(values,first);
        for(String item:second) if(!values.contains(item)) values.add(item);
        return values.toArray(new String[0]);
    }
    private static Map<String,String> readMap(JSONObject json) throws Exception {
        HashMap<String,String> result=new HashMap<String,String>();
        java.util.Iterator<String> it=json.keys();
        while(it.hasNext()) {String key=it.next();result.put(key,json.getString(key));}
        return Collections.unmodifiableMap(result);
    }
    public static IconLibraryCatalog peek() {return instance;}
    public static void invalidateInstalledLabels() {instance=null;}

    private static final class InstalledLabel {
        final String name,category; final String[] pinyin;
        InstalledLabel(String name,String category) {this.name=name;this.category=category;this.pinyin=IconPinyin.terms(name);}
        public int hashCode() {return 31*name.hashCode()+category.hashCode();}
    }
    private static String installedRevision(Map<String,InstalledLabel> labels) throws Exception {
        java.security.MessageDigest digest=java.security.MessageDigest.getInstance("SHA-256");
        for(String pkg:new java.util.TreeSet<String>(labels.keySet())) {
            InstalledLabel label=labels.get(pkg);
            digest.update((pkg+'\0'+label.name+'\0'+label.category+'\0'+java.util.Arrays.toString(label.pinyin)+'\n').getBytes("UTF-8"));
        }
        StringBuilder value=new StringBuilder();
        for(byte part:digest.digest()) value.append(String.format(java.util.Locale.ROOT,"%02x",part&255));
        return value.toString();
    }
    /** A single background package pass; never queried from cell binding or keystrokes. */
    private static Map<String,InstalledLabel> installedLabels(Context context) {
        Map<String,InstalledLabel> labels=new HashMap<String,InstalledLabel>();
        android.content.pm.PackageManager pm=context.getPackageManager();
        for(android.content.pm.ApplicationInfo info:pm.getInstalledApplications(0)) {
            CharSequence text=pm.getApplicationLabel(info);
            if(text==null || text.length()==0) continue;
            String category="";
            if(android.os.Build.VERSION.SDK_INT>=26) {
                switch(info.category) {
                    case android.content.pm.ApplicationInfo.CATEGORY_GAME:category="games";break;
                    case android.content.pm.ApplicationInfo.CATEGORY_AUDIO:
                    case android.content.pm.ApplicationInfo.CATEGORY_VIDEO:category="media";break;
                    case android.content.pm.ApplicationInfo.CATEGORY_SOCIAL:category="social";break;
                    case android.content.pm.ApplicationInfo.CATEGORY_PRODUCTIVITY:category="productivity";break;
                    case android.content.pm.ApplicationInfo.CATEGORY_MAPS:category="travel";break;
                    case android.content.pm.ApplicationInfo.CATEGORY_ACCESSIBILITY:category="tools";break;
                    default:break;
                }
            }
            labels.put(info.packageName,new InstalledLabel(text.toString(),category));
        }
        return Collections.unmodifiableMap(labels);
    }
    public static IconLibraryCatalog load(Context context) throws Exception {
        IconLibraryCatalog ready=instance;
        if(ready!=null) return ready;
        if(Looper.myLooper()==Looper.getMainLooper()) throw new IllegalStateException("Catalog IO on MAIN");
        synchronized(IconLibraryCatalog.class) {
            if(instance!=null) return instance;
            long started=android.os.SystemClock.uptimeMillis();
            InputStream stream=context.getAssets().open("icons/search-index.json");
            try {
                ByteArrayOutputStream bytes=new ByteArrayOutputStream();byte[] buffer=new byte[8192];int read;
                while((read=stream.read(buffer))!=-1) {
                    if(bytes.size()+read>8*1024*1024) throw new IllegalArgumentException("Oversize catalog");
                    bytes.write(buffer,0,read);
                }
                JSONObject json=new JSONObject(bytes.toString("UTF-8"));
                JSONObject pronunciation=json.optJSONObject("pronunciations");
                Map<String,String[]> reviewed=new HashMap<String,String[]>();
                if(pronunciation!=null) {
                    java.util.Iterator<String> names=pronunciation.keys();
                    while(names.hasNext()) {String name=names.next();reviewed.put(name,strings(pronunciation.getJSONArray(name)));}
                }
                IconPinyin.configure(reviewed);
                instance=new IconLibraryCatalog(json,installedLabels(context));
                android.util.Log.i("SmartisanPerf","ICON_CATALOG_READY rows="+instance.entries.size()+" durationMs="+(android.os.SystemClock.uptimeMillis()-started));
                return instance;
            } finally {stream.close();}
        }
    }
    public boolean contains(String sourceId) {return sources.contains(sourceId);}
    public IconLibrarySearchIndex.Entry entryForPackage(String pkg) {return sourceEntries.get(packages.get(pkg));}
    /** Names for pack descriptors, including installed apps which have no online icon. */
    public synchronized IconLibrarySearchIndex.Entry metadataForTarget(String target) {
        int slash=target.indexOf('/');
        String pkg=slash<0?target:target.substring(0,slash);
        String source=slash<0?null:components.get(target);
        IconLibrarySearchIndex.Entry known=sourceEntries.get(source==null?packages.get(pkg):source);
        if(known!=null) return known;
        IconLibrarySearchIndex.Entry cached=installedEntries.get(pkg);
        if(cached!=null) return cached;
        InstalledLabel label=installed.get(pkg);
        if(label==null) return null;
        String[][] groups={new String[]{label.name},new String[0],
                label.pinyin.length==0?new String[0]:label.pinyin.length<3?new String[]{label.pinyin[0]}:new String[]{label.pinyin[0],label.pinyin[2]},
                label.pinyin.length<2?new String[0]:new String[]{label.pinyin[1]},new String[]{pkg},new String[0]};
        cached=new IconLibrarySearchIndex.Entry(pkg,label.name,label.category.isEmpty()?"other":label.category,
                new String[]{pkg,label.name},"","",0L,groups);
        installedEntries.put(pkg,cached);return cached;
    }
    public String resolve(String pkg,String component) {
        String source=component==null?null:components.get(pkg+"/"+component);
        return source!=null?source:packages.get(pkg);
    }
}
