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
    private static final java.util.concurrent.atomic.AtomicBoolean sSearchInvalidationPosted = new java.util.concurrent.atomic.AtomicBoolean();
    private static final Object sSearchLock = new Object();
    private static final Object sIndexLock = new Object();
    public static final String SEARCH_DB_NAME = "icon_pack_search_v2.db";
    private static android.database.sqlite.SQLiteDatabase sSearchDb;
    private static volatile long sSearchReadyGeneration = -1;
    private static volatile String sSearchRevision = "";
    private static volatile long sSearchDatabaseEpoch;
    private static volatile int sSearchFailedPackages;
    private static volatile java.util.Map<String,String> sSearchLabels = java.util.Collections.emptyMap();

    public static long searchGeneration() { return sPackGeneration; }
    public static int searchFailureCount() { return sSearchFailedPackages; }
    public static String cachedPackLabel(String pack) { String label=sSearchLabels.get(pack);return label==null?pack:label; }
    public static boolean isSearchIndexReady(IconLibraryCatalog catalog) {
        return catalog!=null && sSearchReadyGeneration==sPackGeneration && sSearchRevision.equals(catalog.revision);
    }
    public static boolean isSearchSnapshotCurrent(SearchSnapshot snapshot) {
        return snapshot!=null && snapshot.generation==sPackGeneration && snapshot.epoch==sSearchDatabaseEpoch;
    }
    private static android.database.sqlite.SQLiteDatabase searchDb(Context context) {
        if(android.os.Looper.myLooper()==android.os.Looper.getMainLooper()) throw new IllegalStateException("Pack directory IO on MAIN");
        synchronized(sSearchLock) {
            java.io.File file=new java.io.File(context.getCacheDir(),SEARCH_DB_NAME);
            if(sSearchDb==null || !sSearchDb.isOpen() || !file.exists()) {
                if(sSearchDb!=null && sSearchDb.isOpen()) sSearchDb.close();
                sSearchDb=android.database.sqlite.SQLiteDatabase.openOrCreateDatabase(file,null);
                android.database.Cursor budget=sSearchDb.rawQuery("PRAGMA max_page_count=16384",null);
                try {budget.moveToFirst();} finally {budget.close();}
                sSearchDb.execSQL("CREATE TABLE IF NOT EXISTS packs (package TEXT PRIMARY KEY, stamp TEXT NOT NULL, metadata TEXT NOT NULL)");
                sSearchDb.execSQL("CREATE TABLE IF NOT EXISTS icons (_id INTEGER PRIMARY KEY, pack TEXT NOT NULL, drawable TEXT NOT NULL, name TEXT NOT NULL, name_n TEXT NOT NULL, category TEXT NOT NULL, terms TEXT NOT NULL, version INTEGER NOT NULL, targets TEXT NOT NULL DEFAULT '', declared TEXT NOT NULL DEFAULT '', names TEXT NOT NULL DEFAULT '|', aliases TEXT NOT NULL DEFAULT '|', pinyin TEXT NOT NULL DEFAULT '|', initials TEXT NOT NULL DEFAULT '|', identities TEXT NOT NULL DEFAULT '|', keywords TEXT NOT NULL DEFAULT '|', UNIQUE(pack,drawable))");
                sSearchDb.execSQL("CREATE INDEX IF NOT EXISTS icons_category ON icons(category,pack,drawable)");
                sSearchReadyGeneration=-1; ++sSearchDatabaseEpoch;
            }
            return sSearchDb;
        }
    }

    /** Raw declarations depend on pack version; catalog/labels update descriptors without XML parsing. */
    public static void prepareSearchIndex(Context context,IconPreviewRepository.RequestSession session,
            IconLibraryCatalog catalog) throws Exception {
        synchronized(sIndexLock) {
            android.database.sqlite.SQLiteDatabase db=searchDb(context);
            final long generation=sPackGeneration;
            if(isSearchIndexReady(catalog)) return;
            ArrayList<String> packs=getIconPackPackages(context);java.util.Collections.sort(packs);
            HashSet<String> present=new HashSet<String>(packs);
            HashMap<String,String> labels=new HashMap<String,String>();
            int parsed=0,updated=0,failed=0;
            for(String pack:packs) {
                checkDirectorySession(session,generation);
                try {
                    long version=context.getPackageManager().getPackageInfo(pack,0).lastUpdateTime;
                    String label=getIconPackLabel(context,pack);labels.put(pack,label);
                    String stamp=version+":2";
                    String metadata=catalog.revision+":"+label;
                    android.database.Cursor old=db.rawQuery("SELECT stamp,metadata FROM packs WHERE package=?",new String[]{pack});
                    boolean rawValid,metaValid;
                    try {rawValid=old.moveToFirst() && stamp.equals(old.getString(0));metaValid=rawValid && metadata.equals(old.getString(1));}
                    finally {old.close();}
                    if(metaValid) continue;
                    HashMap<String,SearchArtwork> artwork=new HashMap<String,SearchArtwork>();
                    if(rawValid) {
                        android.database.Cursor raw=db.rawQuery("SELECT drawable,targets,declared FROM icons WHERE pack=? ORDER BY drawable",new String[]{pack});
                        try {while(raw.moveToNext()) {
                            checkDirectorySession(session,generation);
                            SearchArtwork row=new SearchArtwork(raw.getString(0));row.declared=raw.getString(2);
                            for(String target:raw.getString(1).split("\\|")) if(!target.isEmpty()) row.targets.add(target);
                            artwork.put(row.drawable,row);
                        }} finally {raw.close();}
                    } else {
                        PackMap map;
                        synchronized(sPackMapCache) {map=sPackMapCache.get(pack);}
                        if(map==null) {
                            map=new PackMap();
                            if(!loadPackMap(context,pack,map.packageToDrawable,map.componentToDrawable,session))
                                throw new java.io.IOException("Unable to parse icon pack: "+pack);
                        }
                        ++parsed;
                        Resources resources=context.getPackageManager().getResourcesForApplication(pack);
                        for(java.util.Map.Entry<String,String> entry:map.componentToDrawable.entrySet()) {
                            checkDirectorySession(session,generation);
                            addSearchArtwork(artwork,resources,pack,entry.getValue(),entry.getKey(),"");
                        }
                        for(java.util.Map.Entry<String,String> entry:map.packageToDrawable.entrySet())
                            addSearchArtwork(artwork,resources,pack,entry.getValue(),entry.getKey(),"");
                        for(String xmlName:new String[]{"drawable","icon_pack"}) {
                            int id=resources.getIdentifier(xmlName,"xml",pack);
                            if(id==0) continue;
                            XmlResourceParser xml=resources.getXml(id);
                            try {while(xml.getEventType()!=XmlPullParser.END_DOCUMENT) {
                                checkDirectorySession(session,generation);
                                if(xml.getEventType()==XmlPullParser.START_TAG && "item".equals(xml.getName())) {
                                    String title=xml.getAttributeValue(null,"name");
                                    if(title!=null && title.startsWith("@")) title="";
                                    addSearchArtwork(artwork,resources,pack,xml.getAttributeValue(null,"drawable"),"",title==null?"":title);
                                }
                                xml.next();
                            }} finally {xml.close();}
                        }
                    }
                    ArrayList<SearchArtwork> sorted=new ArrayList<SearchArtwork>(artwork.values());
                    java.util.Collections.sort(sorted,new java.util.Comparator<SearchArtwork>() {
                        public int compare(SearchArtwork a,SearchArtwork b) {return a.drawable.compareTo(b.drawable);}
                    });
                    for(SearchArtwork row:sorted) row.enrich(pack,label,catalog);
                    int changes=0;
                    db.beginTransaction();
                    try {
                        if(!rawValid) changes+=db.delete("icons","pack=?",new String[]{pack});
                        for(SearchArtwork row:sorted) {
                            checkDirectorySession(session,generation);
                            android.content.ContentValues values=row.values(pack,version);
                            if(rawValid) {
                                android.database.Cursor before=db.rawQuery("SELECT name,category,terms,names,aliases,pinyin,initials,identities,keywords FROM icons WHERE pack=? AND drawable=?",new String[]{pack,row.drawable});
                                boolean same;
                                try {
                                    same=before.moveToFirst() && row.name.equals(before.getString(0)) && row.category.equals(before.getString(1)) && row.terms.toString().equals(before.getString(2));
                                    for(int i=0;same && i<row.groups.size();i++)
                                        same=values.getAsString(IconLibrarySearchIndex.GROUPS[i]).equals(before.getString(3+i));
                                }
                                finally {before.close();}
                                if(same) continue;
                                changes+=db.update("icons",values,"pack=? AND drawable=?",new String[]{pack,row.drawable});
                            } else {
                                if(db.insertOrThrow("icons",null,values)>=0) ++changes;
                            }
                        }
                        android.content.ContentValues values=new android.content.ContentValues();
                        values.put("package",pack);values.put("stamp",stamp);values.put("metadata",metadata);
                        db.insertWithOnConflict("packs",null,values,android.database.sqlite.SQLiteDatabase.CONFLICT_REPLACE);
                        checkDirectorySession(session,generation);db.setTransactionSuccessful();
                    } finally {db.endTransaction();}
                    if(changes>0) ++sSearchDatabaseEpoch;
                    updated+=changes;
                } catch(android.os.OperationCanceledException cancelled) {throw cancelled;}
                catch(Exception error) {
                    ++failed;
                    android.util.Log.w("SmartisanPerf","ICON_PACK_DIRECTORY_FAILED pack="+pack,error);
                    // A stale declaration is not presented as the updated pack's available artwork.
                    if(db.delete("icons","pack=?",new String[]{pack})>0) ++sSearchDatabaseEpoch;
                    db.delete("packs","package=?",new String[]{pack});
                }
            }
            checkDirectorySession(session,generation);
            android.database.Cursor existing=db.rawQuery("SELECT package FROM packs",null);
            ArrayList<String> obsolete=new ArrayList<String>();
            try {while(existing.moveToNext()) if(!present.contains(existing.getString(0))) obsolete.add(existing.getString(0));}
            finally {existing.close();}
            for(String pack:obsolete) {
                if(db.delete("icons","pack=?",new String[]{pack})>0) ++sSearchDatabaseEpoch;
                db.delete("packs","package=?",new String[]{pack});
            }
            sSearchLabels=java.util.Collections.unmodifiableMap(labels);
            sSearchFailedPackages=failed;
            sSearchRevision=catalog.revision;sSearchReadyGeneration=generation;
            new java.io.File(context.getCacheDir(),"icon_pack_search_v1.db").delete();
            android.util.Log.i("SmartisanPerf","ICON_PACK_DIRECTORY parsed="+parsed+" updated="+updated+" packs="+packs.size()+" failed="+failed);
        }
    }
    private static void checkDirectorySession(IconPreviewRepository.RequestSession session,long generation) {
        if(session.isCancelled() || generation!=sPackGeneration) throw new android.os.OperationCanceledException();
    }
    private static final class SearchArtwork {
        final String drawable;
        String declared="",name,category="other";
        final java.util.TreeSet<String> targets=new java.util.TreeSet<String>();
        final StringBuilder terms=new StringBuilder("|");
        final ArrayList<ArrayList<String>> groups=new ArrayList<ArrayList<String>>();
        SearchArtwork(String drawable) {
            this.drawable=drawable;name=drawable;
            for(int i=0;i<IconLibrarySearchIndex.GROUPS.length;i++) groups.add(new ArrayList<String>());
        }
        void group(int index,String value) {
            if(value!=null && !value.isEmpty() && !groups.get(index).contains(value)) groups.get(index).add(value);
        }
        void enrich(String pack,String label,IconLibraryCatalog catalog) {
            name=declared.isEmpty()?drawable:declared;
            if(!declared.isEmpty()) group(0,declared);
            int best=-1;String bestTarget="";
            for(String target:targets) {
                group(4,target);
                int slash=target.indexOf('/');if(slash>=0) group(4,target.substring(0,slash));
                IconLibrarySearchIndex.Entry known=catalog.metadataForTarget(target);
                if(known==null) continue;
                for(int i=0;i<known.groups.length;i++) for(String value:known.groups[i]) group(i,value);
                group(4,known.sourceId);
                int quality=(known.name.equals(known.sourceId)?0:2)+("other".equals(known.category)?0:1);
                if(quality>best || (quality==best && target.compareTo(bestTarget)<0)) {
                    name=known.name;category=known.category;best=quality;bestTarget=target;
                }
            }
            if(best>=2 || !declared.isEmpty()) group(0,name);
            IconLibrarySearchIndex.addTerm(terms,pack);IconLibrarySearchIndex.addTerm(terms,label);
            IconLibrarySearchIndex.addTerm(terms,drawable);IconLibrarySearchIndex.addTerm(terms,pack+"#"+drawable);
            for(ArrayList<String> values:groups) for(String value:values) IconLibrarySearchIndex.addTerm(terms,value);
        }
        android.content.ContentValues values(String pack,long version) {
            android.content.ContentValues values=new android.content.ContentValues();
            values.put("pack",pack);values.put("drawable",drawable);values.put("name",name);
            values.put("name_n",IconLibrarySearchIndex.compact(name));values.put("category",category);
            values.put("terms",terms.toString());values.put("version",version);values.put("declared",declared);
            StringBuilder rawTargets=new StringBuilder("|");
            for(String target:targets) rawTargets.append(target).append('|');
            values.put("targets",rawTargets.toString());
            for(int i=0;i<groups.size();i++) values.put(IconLibrarySearchIndex.GROUPS[i],IconLibrarySearchIndex.join(groups.get(i).toArray(new String[0])));
            return values;
        }
    }
    private static void addSearchArtwork(HashMap<String,SearchArtwork> rows,Resources resources,String pack,
            String drawable,String target,String declared) {
        if(TextUtils.isEmpty(drawable)) return;
        if(drawable.startsWith("@drawable/") || drawable.startsWith("@mipmap/")) drawable=drawable.substring(drawable.indexOf('/')+1);
        int id=resources.getIdentifier(drawable,"drawable",pack);
        if(id==0) id=resources.getIdentifier(drawable,"mipmap",pack);
        if(id==0) return;
        drawable=resources.getResourceEntryName(id);
        SearchArtwork row=rows.get(drawable);
        if(row==null) {row=new SearchArtwork(drawable);rows.put(drawable,row);}
        if(!target.isEmpty()) row.targets.add(target);
        if(!declared.isEmpty() && (row.declared.isEmpty() || declared.compareTo(row.declared)<0)) row.declared=declared;
    }

    public static final class SearchSnapshot {
        public final long generation,epoch;
        public final int[] ranks;
        private final String where,order;
        private final String[] args;
        private final int count;
        private SearchSnapshot(String where,String order,String[] args,int[] ranks,long generation,long epoch) {
            this.where=where;this.order=order;this.args=args;this.ranks=ranks;this.generation=generation;this.epoch=epoch;
            int total=0;for(int value:ranks) total+=value;count=total;
        }
        public int size() {return count;}
    }
    private static String like(String value) {return value.replace("\\","\\\\").replace("%","\\%").replace("_","\\_");}
    private static String literal(String value) {return "'"+value.replace("'","''")+"'";}
    private static String sqlMatch(String column,String pattern) {return column+" LIKE "+literal(pattern)+" ESCAPE '\\'";}
    private static String rankSql(IconLibrarySearchIndex.Query query) {
        if(query.compact.isEmpty()) return "CAST(0 AS INTEGER)";
        String q=like(query.compact),exact="%|"+q+"|%",prefix="%|"+q+"%",part="%"+q+"%";
        return "CASE WHEN "+sqlMatch("identities",exact)+" OR lower(pack||'#'||drawable)="+literal(query.compact)+" THEN 0"
                +" WHEN "+sqlMatch("names",exact)+" THEN 1"
                +" WHEN "+sqlMatch("aliases",exact)+" THEN 2 WHEN "+sqlMatch("pinyin",exact)+" THEN 3"
                +" WHEN "+sqlMatch("initials",exact)+" THEN 4"
                +" WHEN "+sqlMatch("names",prefix)+" OR "+sqlMatch("aliases",prefix)+" THEN 5"
                +" WHEN "+sqlMatch("pinyin",prefix)+" OR "+sqlMatch("initials",prefix)+" THEN 6"
                +" WHEN "+sqlMatch("identities",prefix)+" THEN 7"
                +" WHEN "+sqlMatch("names",part)+" OR "+sqlMatch("aliases",part)+" THEN 8"
                +" WHEN "+sqlMatch("keywords",part)+" THEN 9"
                +" WHEN "+sqlMatch("terms",part)+" THEN 10 ELSE "+(query.tokens.length>1?8:10)+" END";
    }
    public static SearchSnapshot searchDirectory(Context context,String text,String category,
            android.os.CancellationSignal cancel) {
        android.database.sqlite.SQLiteDatabase db=searchDb(context);
        final long generation=sPackGeneration,epoch=sSearchDatabaseEpoch;
        IconLibrarySearchIndex.Query query=new IconLibrarySearchIndex.Query(text);
        String where="terms LIKE ? ESCAPE '\\'";
        ArrayList<String> args=new ArrayList<String>();args.add("%"+like(query.compact)+"%");
        if(query.tokens.length>1) {
            where="("+where+" OR (";
            for(int i=0;i<query.tokens.length;i++) {
                if(i>0) where+=" AND ";where+="terms LIKE ? ESCAPE '\\'";args.add("%"+like(IconLibrarySearchIndex.compact(query.tokens[i]))+"%");
            }
            where+="))";
        }
        if(category!=null) {where+=" AND category=?";args.add(category);}
        String order=rankSql(query);String[] values=args.toArray(new String[0]);
        android.database.Cursor cursor=db.rawQuery("SELECT "+order+" AS score, COUNT(*) FROM icons WHERE "+where+" GROUP BY score",values,cancel);
        int[] ranks=new int[IconLibrarySearchIndex.RANKS];
        try {while(cursor.moveToNext()) {cancel.throwIfCanceled();ranks[cursor.getInt(0)]=cursor.getInt(1);}}
        finally {cursor.close();}
        if(generation!=sPackGeneration || epoch!=sSearchDatabaseEpoch) throw new android.os.OperationCanceledException();
        return new SearchSnapshot(where,order,values,ranks,generation,epoch);
    }
    /** Stable ordering plus epoch validation, with no array of every matching ID. */
    public static List<IconLibrarySearchIndex.Entry> readSearchPage(Context context,SearchSnapshot snapshot,
            int offset,int count,android.os.CancellationSignal cancel) {
        android.database.sqlite.SQLiteDatabase db=searchDb(context);
        if(!isSearchSnapshotCurrent(snapshot)) throw new android.os.OperationCanceledException();
        if(offset<0 || offset>=snapshot.size()) return java.util.Collections.emptyList();
        int limit=Math.min(60,Math.min(count,snapshot.size()-offset));
        String[] args=new String[snapshot.args.length+2];
        System.arraycopy(snapshot.args,0,args,0,snapshot.args.length);
        args[args.length-2]=Integer.toString(limit);args[args.length-1]=Integer.toString(offset);
        android.database.Cursor cursor=db.rawQuery("SELECT pack,drawable,name,category,terms,version,names,aliases,pinyin,initials,identities,keywords FROM icons WHERE "
                +snapshot.where+" ORDER BY "+snapshot.order+",pack,drawable LIMIT ? OFFSET ?",args,cancel);
        ArrayList<IconLibrarySearchIndex.Entry> result=new ArrayList<IconLibrarySearchIndex.Entry>();
        try {while(cursor.moveToNext()) {
            cancel.throwIfCanceled();
            String pack=cursor.getString(0),drawable=cursor.getString(1);
            String[][] groups=new String[IconLibrarySearchIndex.GROUPS.length][];
            for(int i=0;i<groups.length;i++) groups[i]=cursor.getString(6+i).split("\\|");
            result.add(new IconLibrarySearchIndex.Entry(pack+"#"+drawable,cursor.getString(2),cursor.getString(3),
                    cursor.getString(4).split("\\|"),pack,drawable,cursor.getLong(5),groups));
        }} finally {cursor.close();}
        if(!isSearchSnapshotCurrent(snapshot)) throw new android.os.OperationCanceledException();
        return result;
    }
    private static final android.util.LruCache<String, List<AppIconCandidate>> sCandidateCache =
            new android.util.LruCache<String, List<AppIconCandidate>>(512) {
                protected int sizeOf(String key, List<AppIconCandidate> value) {
                    return Math.max(8, value.size());
                }
            };

    public static List<AppIconCandidate> cachedCandidateMetadata(String pkg, String cls) {
        return sCandidateCache.get(pkg + "/" + cls);
    }

    /** Appfilter hits only, never Drawable decoding; called by candidate discovery off MAIN. */
    public static List<AppIconCandidate> getCandidateMetadata(Context context, String pkg, String cls,
            IconPreviewRepository.RequestSession session) {
        if (android.os.Looper.myLooper() == android.os.Looper.getMainLooper())
            throw new IllegalStateException("Pack metadata scan on MAIN");
        String key = pkg + "/" + cls;
        long generation = sPackGeneration;
        List<AppIconCandidate> cached = sCandidateCache.get(key);
        if (cached != null) return cached;
        ArrayList<String> packs = getIconPackPackages(context);
        java.util.Collections.sort(packs);
        ArrayList<AppIconCandidate> result = new ArrayList<AppIconCandidate>();
        for (String pack : packs) {
            if (session != null && session.isCancelled()) return java.util.Collections.emptyList();
            String drawable = null;
            boolean selectedLoaded;
            synchronized (IconPackManager.class) {
                selectedLoaded = pack.equals(sLoadedPackage);
                if (selectedLoaded) {
                    drawable = !TextUtils.isEmpty(cls) ? sComponentToDrawable.get(flatten(pkg, cls)) : null;
                    if (TextUtils.isEmpty(drawable) && !isDialerComponent(pkg, cls)) drawable = sPackageToDrawable.get(pkg);
                }
            }
            PackMap map;
            synchronized (sPackMapCache) { map = sPackMapCache.get(pack); }
            if (!selectedLoaded && map == null) {
                map = new PackMap();
                loadPackMap(context, pack, map.packageToDrawable, map.componentToDrawable);
                synchronized (sPackMapCache) {
                    if (generation != sPackGeneration) return java.util.Collections.emptyList();
                    putPackMapLocked(context, pack, map);
                }
            }
            if (!selectedLoaded) {
                drawable = !TextUtils.isEmpty(cls) ? map.componentToDrawable.get(flatten(pkg, cls)) : null;
                if (TextUtils.isEmpty(drawable) && !isDialerComponent(pkg, cls)) drawable = map.packageToDrawable.get(pkg);
            }
            if (TextUtils.isEmpty(drawable)) continue;
            try {
                Resources res = context.getPackageManager().getResourcesForApplication(pack);
                if (res.getIdentifier(drawable, "drawable", pack) == 0
                        && res.getIdentifier(drawable, "mipmap", pack) == 0) continue;
                long version = context.getPackageManager().getPackageInfo(pack, 0).lastUpdateTime;
                result.add(new AppIconCandidate(AppIconCandidate.TYPE_PACKED, pack,
                        getIconPackLabel(context, pack), false, drawable, version));
            } catch (android.content.pm.PackageManager.NameNotFoundException unavailable) { }
        }
        List<AppIconCandidate> immutable = java.util.Collections.unmodifiableList(result);
        synchronized (IconPackManager.class) {
            if (generation == sPackGeneration && (session == null || !session.isCancelled())) sCandidateCache.put(key, immutable);
        }
        return immutable;
    }

    public static Drawable loadCandidateDrawable(Context context, AppIconCandidate candidate) {
        return TextUtils.isEmpty(candidate.packDrawableName) ? null
                : drawableFor(context, candidate.packPackage, candidate.packDrawableName);
    }

    public static Drawable getPackedDrawable(Context context, String pack, String drawable) {
        return TextUtils.isEmpty(drawable) ? null : drawableFor(context,pack,drawable);
    }

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
        IconLibraryCatalog.invalidateInstalledLabels();
        synchronized (IconPackManager.class) {
            ++sPackGeneration;
            sIconPackList = null;
            sCandidateCache.evictAll();
        }
    }

    /** Package events evict only that pack; ordinary app installs keep the active artwork map. */
    public static void invalidateIconPackPackage(String packageName) {
        IconLibraryCatalog.invalidateInstalledLabels();
        synchronized (IconPackManager.class) {
            ++sPackGeneration;
            sIconPackList = null;
            sCandidateCache.evictAll();
            if (packageName != null && packageName.equals(sLoadedPackage)) clearLoaded();
            synchronized (sPackMapCache) { sPackMapCache.remove(packageName); }
        }
        if (sSearchInvalidationPosted.compareAndSet(false,true)) new android.os.Handler(android.os.Looper.getMainLooper()).post(new Runnable() {
            public void run() {
                sSearchInvalidationPosted.set(false);
                com.smartisanos.launcher.theme.MaintainedLauncherSettingsHost.onIconPackSearchDirectoryInvalidated();
            }
        });
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

    private static boolean loadPackMap(Context context, String packageName,
                                    HashMap<String, String> packageMap,
                                    HashMap<String, String> componentMap) {
        return loadPackMap(context,packageName,packageMap,componentMap,null);
    }
    private static boolean loadPackMap(Context context, String packageName,
            HashMap<String,String> packageMap, HashMap<String,String> componentMap,
            IconPreviewRepository.RequestSession session) {
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
                if (session != null && session.isCancelled()) return false;
                if (xml.getEventType() == XmlPullParser.START_TAG
                        && "item".equals(xml.getName())) {
                    String component = xml.getAttributeValue(null, "component");
                    String drawable = xml.getAttributeValue(null, "drawable");
                    putMapping(component, drawable, packageMap, componentMap);
                }
                xml.next();
            }
            return true;
        } catch (Throwable ignored) {
            return false;
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
