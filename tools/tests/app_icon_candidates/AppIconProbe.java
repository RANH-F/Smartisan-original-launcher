import java.io.*;
import java.util.*;
import java.util.concurrent.atomic.AtomicLong;
import com.smartisanos.home.settings.icons.AppIconCandidate;
import com.smartisanos.home.settings.icons.AppIconSearchIndex;

/** Controlled platform boundaries around unmodified production algorithms. */
public class AppIconProbe {
    static final Thread MAIN = Thread.currentThread();
    static int checks, parses, scans, draws, published, hotUpdates, mainParses, mainScans;
    static volatile String blockedPack;
    static java.util.concurrent.CountDownLatch parseEntered, parseRelease;
    static void check(boolean value, String name) { checks++; if (!value) throw new AssertionError(name); }
    static void worker(Runnable job) throws Exception {
        final Throwable[] failure = new Throwable[1];
        Thread thread = new Thread(() -> {try {job.run();}catch(Throwable e){failure[0]=e;}});
        thread.start(); thread.join(); if(failure[0]!=null)throw new AssertionError(failure[0]);
    }
    static class TextUtils {static boolean isEmpty(CharSequence s){return s==null||s.length()==0;}}
    static class Looper {static final Object main=new Object();static Object myLooper(){return Thread.currentThread()==MAIN?main:null;} static Object getMainLooper(){return main;}}
    static class Process {static final int THREAD_PRIORITY_BACKGROUND=10;static void setThreadPriority(int p){}}
    static class SystemClock {static long elapsedRealtime(){return System.nanoTime()/1000000;}}
    static class Log {static void i(String t,String m){}static void d(String tag,String msg){} static void w(String t,String m,Throwable e){throw new AssertionError(e);}}
    static class ComponentCallbacks2 {static final int TRIM_MEMORY_BACKGROUND=40;}
    static class Drawable {final String id;Drawable(String id){this.id=id;}}
    static class Bitmap {final String id; Bitmap(String id){this.id=id;}void recycle(){}
        enum CompressFormat {PNG} boolean compress(CompressFormat f,int q,OutputStream out)throws Exception{out.write(id.getBytes("UTF-8"));return true;}}
    static class BitmapFactory {static Bitmap decodeFile(String f){return new Bitmap("file");}static Bitmap decodeByteArray(byte[] b,int o,int n){return new Bitmap("custom");}}
    static class BitmapDrawable extends Drawable {BitmapDrawable(Resources r,Bitmap b){super(b.id);}}
    static class ApplicationInfo {String packageName;}
    static class ActivityInfo {String packageName,name;ActivityInfo(String p,String n){packageName=p;name=n;}}
    static class ResolveInfo {ActivityInfo activityInfo;ResolveInfo(String p,String n){activityInfo=new ActivityInfo(p,n);}}
    static class PackageInfo {String packageName;long lastUpdateTime=1;PackageInfo(String p){packageName=p;}}
    static class Intent {String action;Intent(String a){action=a;}}
    static class SharedPreferences {
        Map<String,String> values=new HashMap<>();
        String getString(String k,String d){return values.getOrDefault(k,d);}
        boolean getBoolean(String k,boolean d){return values.containsKey(k)?Boolean.parseBoolean(values.get(k)):d;}
        long getLong(String k,long d){return values.containsKey(k)?Long.parseLong(values.get(k)):d;}
        Editor edit(){return new Editor();}
        class Editor {Editor putString(String k,String v){values.put(k,v);return this;}Editor putBoolean(String k,boolean v){return putString(k,Boolean.toString(v));}Editor putLong(String k,long v){return putString(k,Long.toString(v));}
            Editor remove(String k){values.remove(k);return this;}Editor clear(){values.clear();return this;}void apply(){}}
    }
    static class Context {
        static final int MODE_PRIVATE=0;
        final PackageManager pm=new PackageManager();final SharedPreferences preferences=new SharedPreferences();
        PackageManager getPackageManager(){return pm;}SharedPreferences getSharedPreferences(String n,int m){return preferences;}
        File getFilesDir(){File dir=new File(System.getProperty("java.io.tmpdir"),"context-"+System.identityHashCode(this));dir.mkdirs();return dir;}
        Context getApplicationContext(){return this;}Resources getResources(){return new Resources("host",null);}
    }
    static class PackageManager {
        final TreeMap<String,Resources> packs=new TreeMap<>();
        List<ResolveInfo> queryIntentActivities(Intent intent,int f){
            if(Thread.currentThread()==MAIN)mainScans++;check(Thread.currentThread()!=MAIN,"pack discovery never queries MAIN");
            ArrayList<ResolveInfo> result=new ArrayList<>();for(String p:packs.keySet())result.add(new ResolveInfo(p,"Pack"));return result;
        }
        List<PackageInfo> getInstalledPackages(int f){check(Thread.currentThread()!=MAIN,"installed scan off MAIN");scans++;ArrayList<PackageInfo> result=new ArrayList<>();for(String p:packs.keySet())result.add(new PackageInfo(p));return result;}
        Resources getResourcesForApplication(String p){Resources r=packs.get(p);if(r==null)throw new IllegalArgumentException("uninstalled");return r;}
        PackageInfo getPackageInfo(String p,int flags){if(!packs.containsKey(p)&&!p.startsWith("app."))throw new IllegalArgumentException("uninstalled");return new PackageInfo(p);}
        ApplicationInfo getApplicationInfo(String p,int f){ApplicationInfo i=new ApplicationInfo();i.packageName=p;return i;}
        CharSequence getApplicationLabel(ApplicationInfo i){return "Label "+i.packageName;}
    }
    static class Metrics {float density=1;int densityDpi=160;}
    interface XmlPullParser {
        int START_TAG=2,END_DOCUMENT=1;
        int getEventType();String getName();String getAttributeValue(String ns,String name);void next();void setInput(InputStream in,String encoding)throws Exception;
    }
    static class XmlResourceParser implements XmlPullParser {
        final ArrayList<org.w3c.dom.Element> elements=new ArrayList<>();int position;
        XmlResourceParser(String xml)throws Exception {read(xml);}
        void read(String xml)throws Exception {
            parses++;if(Thread.currentThread()==MAIN)mainParses++;check(Thread.currentThread()!=MAIN,"appfilter parsing off MAIN");
            org.w3c.dom.NodeList nodes=javax.xml.parsers.DocumentBuilderFactory.newInstance().newDocumentBuilder()
                    .parse(new ByteArrayInputStream(xml.getBytes("UTF-8"))).getElementsByTagName("item");
            for(int i=0;i<nodes.getLength();i++)elements.add((org.w3c.dom.Element)nodes.item(i));
        }
        public int getEventType(){return position<elements.size()?START_TAG:END_DOCUMENT;}
        public String getName(){return "item";}public String getAttributeValue(String ns,String n){return elements.get(position).getAttribute(n);}
        public void next(){position++;}public void setInput(InputStream in,String encoding)throws Exception{read(new String(in.readAllBytes(),encoding));}void close(){}
    }
    static class XmlPullParserFactory {
        static XmlPullParserFactory newInstance(){return new XmlPullParserFactory();}void setNamespaceAware(boolean n){}
        XmlPullParser newPullParser()throws Exception{return new XmlResourceParser("<resources/>");}
    }
    static class Assets {final String xml;Assets(String x){xml=x;}InputStream open(String name)throws Exception{if(xml==null)throw new FileNotFoundException();return new ByteArrayInputStream(xml.getBytes("UTF-8"));}}
    static class Resources {
        final String pkg,xml;boolean assetOnly;final Map<Integer,String> ids=new HashMap<>();
        Resources(String p,String x){pkg=p;xml=x;}
        int getIdentifier(String n,String type,String p){if(n.equals("appfilter")&&type.equals("xml"))return xml!=null&&!assetOnly?1:0;
            if((type.equals("drawable")||type.equals("mipmap"))&&!n.equals("missing")){int id=n.hashCode();ids.put(id,n);return id;}return 0;}
        XmlResourceParser getXml(int id)throws Exception{
            if(pkg.equals(blockedPack)){parseEntered.countDown();parseRelease.await(2,java.util.concurrent.TimeUnit.SECONDS);}
            return new XmlResourceParser(xml);
        }
        Assets getAssets(){return new Assets(xml);}Drawable getDrawable(int id){draws++;return new Drawable(pkg+":"+ids.get(id));}
        Metrics getDisplayMetrics(){return new Metrics();}
    }
    static class Host {static void onIconPackSearchDirectoryInvalidated(){}static void onSelectedIconPackPreloaded(Context c){}static void onIconPackOverridesChanged(Context c,String p){hotUpdates++;}}
    PACK_PRODUCTION
    static class Handler {
        final List<Runnable> tasks=new ArrayList<>();boolean global;Handler(){}Handler(Object l){global=true;}
        void post(Runnable r){if(global){synchronized(replies){replies.add(r);}}else synchronized(tasks){tasks.add(r);}}
        void drain(){while(!tasks.isEmpty())tasks.remove(0).run();}
    }
    static class LruCache<K,V> {
        final int capacity;final LinkedHashMap<K,V> map=new LinkedHashMap<>(16,.75f,true);
        LruCache(int c){capacity=c;}protected int sizeOf(K k,V v){return 1;}
        synchronized V get(K k){return map.get(k);}synchronized void put(K k,V v){map.put(k,v);while(size()>capacity)map.remove(map.keySet().iterator().next());}
        synchronized int size(){int n=0;for(Map.Entry<K,V> e:map.entrySet())n+=sizeOf(e.getKey(),e.getValue());return n;}
        synchronized void evictAll(){map.clear();}synchronized void remove(K k){map.remove(k);}synchronized Map<K,V> snapshot(){return new HashMap<>(map);}
    }
    static class IconRenderKey {
        final String packageName,componentName,sourceId,sourceType;final int targetPixelSize;final long userSerial,version;
        IconRenderKey(String p,String c,long u,String t,String s,long v,int px,int dpi,int r){packageName=p;componentName=c;userSerial=u;sourceType=t;sourceId=s;version=v;targetPixelSize=px;}
        public int hashCode(){return Objects.hash(packageName,componentName,userSerial,sourceType,sourceId,version,targetPixelSize);}
        public boolean equals(Object o){return o instanceof IconRenderKey&&toString().equals(o.toString());}
        public String toString(){return packageName+"|"+componentName+"|"+userSerial+"|"+sourceType+"|"+sourceId+"|"+version+"|"+targetPixelSize;}
    }
    static class IconLibraryCatalog {
        static void invalidateInstalledLabels(){}
        String revision="fixture";
        static IconLibraryCatalog peek(){return new IconLibraryCatalog();}
        static IconLibraryCatalog load(Context context){check(Thread.currentThread()!=MAIN,"catalog initialization off MAIN");return peek();}
    }
    static boolean hasLocalChoiceSource(Context context,Resources res,String source){return libraryIcons.containsKey(source);}
    static class IconPreviewRepository {
        interface DrawableLoader {Drawable load() throws Exception;}
        final Context app;final Handler main=new Handler();final AtomicLong sequence=new AtomicLong();
        final LruCache<IconRenderKey,Bitmap> cache=new LruCache<>(64);final List<Runnable> jobs=new ArrayList<>();
        IconPreviewRepository(Context a){app=a;}
        static IconPreviewRepository instance;static IconPreviewRepository get(Context a){return instance;}
        static class ImprovedCandidate {String sourceId;boolean exists;ImprovedCandidate(String id,boolean e){sourceId=id;exists=e;}}
        String primary="";boolean primaryExists;List<String> variantIds=List.of();
        ImprovedCandidate resolveImprovedCandidate(String p,String c){return new ImprovedCandidate(primary,primaryExists);}
        List<String> getVariantsForPackage(String p){return variantIds;}
        enum Priority {P0_VISIBLE,P1_ADJACENT}
        static class RequestSession {boolean cancelled;boolean isCancelled(){return cancelled;}}
        boolean isSessionActive(RequestSession s){return s!=null&&!s.cancelled;}
        void schedule(RequestSession s,Priority p,Runnable r){if(isSessionActive(s))jobs.add(r);}
        void work()throws Exception{while(!jobs.isEmpty())worker(jobs.remove(0));}
        Bitmap drawableToBitmap(Drawable d,int size){check(Thread.currentThread()!=MAIN,"candidate raster off MAIN");return d==null?null:new Bitmap(d.id);}
        void cancel(RequestSession s){s.cancelled=true;synchronized(candidateRefresh){candidateRefresh.remove(s);candidateRequests.remove(s);}}
        static void logPerf(String t,String p,String c,long u,String st,int px,long ms){}
        boolean checkCandidateExists(String source){return !source.equals("missing");}
        CANDIDATE_PRODUCTION
    }
    static class RedirectIconInfo {String packageName,componentName,drawableName,displayName,originalName;boolean useImprovedAppIcon=true;byte[] iconData;long ownerId,installTime;
        String getPrimaryId(){return packageName+";"+componentName;}}
    static class RedirectIconDB {
        static String packDrawableNameOf(RedirectIconInfo info){return PersistentRedirectDB.packDrawableNameOf(info);}

        static final String MODE_ORIGINAL="original",MODE_CUSTOM="custom",MODE_RESOURCE="resource",MODE_PACK="pack",MODE_AUTO="auto";
        static final Map<String,RedirectIconInfo> db=new HashMap<>();
        static RedirectIconInfo getRedirectIconInfo(Context c,String p,String cmp){return db.get(p+"/"+cmp);}
        static RedirectIconInfo getRedirectIconMetadata(Context c,String p,String cmp){return getRedirectIconInfo(c,p,cmp);}
        static String modeOf(RedirectIconInfo i){return i==null?MODE_AUTO:i.drawableName.split(":",2)[0];}
        static String resourceNameOf(RedirectIconInfo i){return i.drawableName.substring(9);}
        static String packNameOf(RedirectIconInfo i){return i.drawableName.substring(5);}
    }
    DB_PRODUCTION
    static class IconSourceManager {
        enum Type{DEFAULT,IMPROVED,PACK}
        static class Selection {Type type;String packageName;Selection(Type t,String p){type=t;packageName=p;}}
        static Selection global=new Selection(Type.DEFAULT,"");static Selection get(Context c){return global;}
        static boolean isInstalledIconPack(Context c,String p){return c.pm.packs.containsKey(p);}
    }
    static Drawable libraryIconDrawable(Context c,Resources r,String name){return new Drawable("resource:"+name);}
    static Drawable libraryIconDrawableNonBlocking(Context c,Resources r,String source){if(source!=null&&source.equals("app.edge"))return new Drawable("improved:app.edge");return libraryIcons.get(source);}
    static Drawable packedIconFromPackage(Context c,String p,ResolveInfo r){return IconPackManager.getPackedIcon(c,p,r.activityInfo.packageName,r.activityInfo.name);}
    FALLBACK_PRODUCTION
    static class IconSection {final String title;IconSection(String t){title=t;}}
    static class IconManager {Context c;IconManager(Context c){this.c=c;}ResolveInfo getResolveInfo(String p,String cmp){return new ResolveInfo(p,cmp);}String getLableForPackage(String p,String cmp){RedirectIconInfo i=RedirectIconDB.db.get(p+"/"+cmp);return i.displayName;}}
    static class LauncherSettingBridge {static boolean dynamicWeatherCalendarEnabled(Context c){return false;}static boolean isDynamicIconPackage(String p){return false;}}
    static List<String> localVariants=List.of();
    static final Map<String,Drawable> libraryIcons=new HashMap<>();
    static List<String> iconVariantNames(Context c,String p){return localVariants;}
    static String smartisanSystemIconAlias(Context c,ResolveInfo r){return r.activityInfo.packageName.equals("app.system")?"system.alias":null;}
    static String smartisanIconNameFor(Context c,ResolveInfo r){return smartisanSystemIconAlias(c,r);}
    static Drawable maintainedResourceIcon(Context c,Resources r,String id){return libraryIcons.get(id);}
    static Drawable loadChoiceLibraryIcon(Context c,Resources r,String id,boolean cached){return libraryIcons.get(id);}
    CHOICE_SOURCE_PRODUCTION
    static String getString(Resources r,String k,String f){return f;}
    static long packageVersionStamp(Context context,String pkg){return context.getPackageManager().getPackageInfo(pkg,0).lastUpdateTime;}
    static String shortError(RuntimeException e){return e.toString();}
    static void logOperation(Context c,String a,String m){}
    static class Grouping {
        final Context activity;final IconManager iconManager;final Resources resources;final Handler reply=new Handler();
        List<RedirectIconInfo> apps=new ArrayList<>();List<Object> rows=new ArrayList<>(),normalRows=new ArrayList<>();
        Map<String,Long> rowVersions=new HashMap<>();Map<String,String> rowLabels=new HashMap<>();
        Set<String> managedRows=new HashSet<>();AppIconSearchIndex<RedirectIconInfo> searchIndex;String searchQuery="";
        long iconDataGeneration;int groupingGeneration;int changes;Runnable rowsReadyAction,rowsFailedAction;
        IconPreviewRepository.RequestSession requestSession=new IconPreviewRepository.RequestSession();
        Grouping(Context c){activity=c;iconManager=new IconManager(c);resources=c.getResources();}
        boolean isActivityInvalid(){return false;}void notifyDataSetChanged(){changes++;}
        GROUPING_PRODUCTION
    }
    static String xml(String pkg,String component,String drawable){return "<resources><item component=\"ComponentInfo{"+pkg+"/"+component+"}\" drawable=\""+drawable+"\"/></resources>";}
    static Context context;
    static IconPreviewRepository repo;
    static void reset(){context=new Context();repo=new IconPreviewRepository(context);IconPreviewRepository.instance=repo;IconPackManager.resetCache();RedirectIconDB.db.clear();IconSourceManager.global=new IconSourceManager.Selection(IconSourceManager.Type.IMPROVED,"");}
    static void addPack(String p,String app,String component,boolean asset){Resources r=new Resources(p,xml(app,component,"edge_icon"));r.assetOnly=asset;context.pm.packs.put(p,r);IconPackManager.invalidateIconPackList();}
    static List<AppIconCandidate> discover(String pkg,String selected,String...names)throws Exception{
        List<List<AppIconCandidate>> result=new ArrayList<>();IconPreviewRepository.RequestSession session=new IconPreviewRepository.RequestSession();
        repo.discoverCandidates(session,pkg,".Main",0,new IconPreviewRepository.CandidateLibrary(){
            public List<String> sourceIds(){return Arrays.asList(names);}public String selectedKey(){return selected;}
            public Drawable load(String id,boolean cached){throw new AssertionError("metadata discovery must not load artwork");}
        },items->{published++;result.add(items);});
        check(result.isEmpty(),"first frame does not scan/decode");repo.work();check(result.isEmpty(),"worker cannot mutate UI");repo.main.drain();
        check(result.size()==1,"one batched publish per scan");repo.cancel(session);check(repo.candidateRefresh.isEmpty(),"cancel releases page captures");return result.get(0);
    }
    static long packs(List<AppIconCandidate> list){return list.stream().filter(x->x.type==AppIconCandidate.TYPE_PACKED).count();}
    public static void main(String[]args)throws Exception{
        reset();int before=scans;
        List<AppIconCandidate> list=discover("app.edge","IMPROVED:main","main","variant","variant","missing");
        check(list.size()==4&&packs(list)==0,"zero packs with duplicate variants and invalid icon");
        check(list.get(0).selected&&list.get(0).stableKey.equals("IMPROVED:main"),"current improved comes first");
        check(list.get(3).stableKey.equals("CUSTOM"),"album last");
        check(list.stream().anyMatch(x->x.type==AppIconCandidate.TYPE_ORIGINAL&&!x.selected),"original remains available when improved is selected");
        addPack("pack.a","app.edge",".Main",false);
        list=discover("app.edge","PACK:pack.a","main");check(packs(list)==1&&list.get(0).stableKey.equals("PACK:pack.a"),"one installed pack selected first");
        addPack("pack.b","app.edge","app.edge.Main",true);addPack("pack.c","app.edge",".Main",false);addPack("pack.no","app.qq",".Main",false);
        list=discover("app.edge","PACK:pack.b","main","variant","variant");
        check(packs(list)==3,"all three packs, wrong-app pack excluded");
        check(new HashSet<>(list.stream().map(x->x.stableKey).toList()).size()==list.size(),"multiple actions cannot duplicate pack keys");
        check(list.get(0).packPackage.equals("pack.b"),"explicit override independent of global improved");
        worker(()->IconPackManager.setSelectedIconPackPackage(context,"pack.a"));
        list=discover("app.edge","PACK:pack.b","main");check(packs(list)==3&&list.get(0).packPackage.equals("pack.b"),"global A plus override B");
        check(IconPackManager.getSelectedIconPackPackage(context).equals("pack.a"),"discovery never changes global source");
        context.pm.packs.remove("pack.b");IconPackManager.invalidateIconPackList();repo.invalidateCandidates();repo.main.drain();
        list=discover("app.edge","DEFAULT","main");check(packs(list)==2&&list.get(0).stableKey.equals("DEFAULT"),"uninstalled candidate excluded and default first");
        for(int i=0;i<18;i++)addPack("pack.z"+i,"app.edge",".Main",false);
        list=discover("app.edge","IMPROVED:main","main");check(packs(list)==20,"many packs all matched without persistent map growth");
        check(IconPackManager.sPackMapCache.size()<=2,"appfilter cache bounded after 20 packs");
        check(repo.candidateLists.size()<=256&&repo.cache.size()<=64,"candidate and raster fixture bounds");
        worker(()->{ArrayList<String> copy=IconPackManager.getIconPackPackages(context);copy.clear();check(!IconPackManager.getIconPackPackages(context).isEmpty(),"discovery cache defensively copied");});
        // Verify cancellation and page identity with real discovery production code.
        final List<String> callbacks=new ArrayList<>();
        IconPreviewRepository.CandidateLibrary library=new IconPreviewRepository.CandidateLibrary(){public List<String> sourceIds(){return List.of("main");}public Drawable load(String id,boolean cached){return new Drawable(id);}public String selectedKey(){return "IMPROVED:main";}};
        IconPreviewRepository.RequestSession edge=new IconPreviewRepository.RequestSession(),qq=new IconPreviewRepository.RequestSession();
        repo.discoverCandidates(edge,"app.edge",".Main",0,library,x->callbacks.add("edge-old"));repo.work();repo.cancel(edge);
        repo.discoverCandidates(qq,"app.qq",".Main",0,library,x->callbacks.add("qq"));repo.work();repo.main.drain();
        check(callbacks.equals(List.of("qq")),"Edge -> QQ drops old queued MAIN callback");repo.cancel(qq);
        IconPreviewRepository.RequestSession rapid=new IconPreviewRepository.RequestSession();
        repo.discoverCandidates(rapid,"app.edge",".Main",0,library,x->callbacks.add("wrong"));
        repo.discoverCandidates(rapid,"app.edge",".Main",0,library,x->callbacks.add("latest"));repo.work();repo.main.drain();
        check(callbacks.equals(List.of("qq","latest")),"latest request only once");
        callbacks.clear();repo.invalidateCandidates();repo.main.drain();repo.work();repo.main.drain();check(callbacks.equals(List.of("latest")),"package event refreshes open chooser once");repo.cancel(rapid);
        // Fallback owner matrix: missing PACK follows each global source. Existing other owners unchanged.
        ResolveInfo app=new ResolveInfo("app.edge","app.edge.Main");RedirectIconInfo override=new RedirectIconInfo();override.packageName="app.edge";override.componentName="app.edge.Main";override.drawableName="pack:removed";RedirectIconDB.db.put("app.edge/app.edge.Main",override);
        worker(()->{
            IconSourceManager.global=new IconSourceManager.Selection(IconSourceManager.Type.DEFAULT,"");check(resolveManagedIcon(context,app,context.getResources(),null)==null,"missing pack -> global default");
            IconSourceManager.global=new IconSourceManager.Selection(IconSourceManager.Type.IMPROVED,"");check(resolveManagedIcon(context,app,context.getResources(),null).id.equals("improved:app.edge"),"missing pack -> global improved");
            IconSourceManager.global=new IconSourceManager.Selection(IconSourceManager.Type.PACK,"pack.a");check(resolveManagedIcon(context,app,context.getResources(),null).id.startsWith("pack.a:"),"missing pack -> global A");
            override.drawableName="pack:pack.c";check(resolveManagedIcon(context,app,context.getResources(),null).id.startsWith("pack.c:"),"override C independent of global A");
            override.drawableName="original";check(resolveManagedIcon(context,app,context.getResources(),null)==null,"DEFAULT remains terminal");
            override.drawableName="resource:alias";check(resolveManagedIcon(context,app,context.getResources(),null).id.equals("resource:alias"),"RESOURCE remains terminal");
            override.drawableName="custom";override.iconData=new byte[]{1};check(resolveManagedIcon(context,app,context.getResources(),null).id.equals("custom"),"CUSTOM remains terminal");
        });
        // Selected pack parse must not hold the MAIN read lock or publish after invalidation.
        IconPackManager.setSelectedIconPackPackage(context,"pack.c");
        blockedPack="pack.c";parseEntered=new java.util.concurrent.CountDownLatch(2);parseRelease=new java.util.concurrent.CountDownLatch(1);
        final Context blockedContext=context;
        Thread loading=new Thread(()->IconPackManager.preloadSelectedIconPack(blockedContext));loading.start();
        for(int n=0;n<200&&parseEntered.getCount()==2;n++)Thread.sleep(5);
        check(parseEntered.getCount()==1,"controlled selected parse entered");
        long tick=System.nanoTime();Drawable waiting=IconPackManager.getPackedIcon(context,"app.edge",".Main");
        check(waiting==null&&(System.nanoTime()-tick)<200000000L,"MAIN returns while selected appfilter parse blocked");
        check(parseEntered.await(1,java.util.concurrent.TimeUnit.SECONDS),"async read preload also entered before invalidation");
        IconPackManager.invalidateIconPackPackage("pack.c");parseRelease.countDown();loading.join();
        for(int n=0;n<100&&IconPackManager.sSelectedPackPreloadPending;n++)Thread.sleep(5);
        check(IconPackManager.sLoadedPackage==null,"invalidated selected parse cannot publish stale map");blockedPack=null;
        worker(()->IconPackManager.preloadSelectedIconPack(context));
        String loaded=IconPackManager.sLoadedPackage;
        IconPackManager.invalidateIconPackList();IconPackManager.invalidateIconPackPackage("app.other");
        check(loaded.equals(IconPackManager.sLoadedPackage),"ordinary app event preserves active pack map");
        check(mainParses==0&&mainScans==0,"no swallowed MAIN parser/scan failures");
        // In-memory search + actual grouping integration; no PackageManager calls per character.
        reset();Grouping grouping=new Grouping(context);
        for(String[] item:new String[][]{{"app.edge","Edge","resource:edge"},{"app.qq","QQ","original"},{"app.qqmusic","QQ音乐","original"}}){RedirectIconInfo i=new RedirectIconInfo();i.packageName=item[0];i.componentName=i.packageName+".Main";i.displayName=item[1];i.drawableName=item[2];grouping.apps.add(i);RedirectIconDB.db.put(i.packageName+"/"+i.componentName,i);}
        grouping.setSearchQuery("  eDgE ");grouping.rebuildRows();repo.work();
        // Production Handler is controlled below via global queue.
        drainReplies();
        check(grouping.rows.size()==2&&((RedirectIconInfo)grouping.rows.get(1)).packageName.equals("app.edge"),"search typed before grouping finishes filters latest snapshot");
        int scanCount=scans;grouping.setSearchQuery("QQ");check(grouping.rows.size()==3,"QQ and QQ music match labels");
        grouping.setSearchQuery("APP.EDGE");check(grouping.rows.size()==2,"package name case insensitive");
        grouping.setSearchQuery("qqmusic.Main");check(grouping.rows.size()==2,"component substring");
        grouping.setSearchQuery("no-such-app");check(grouping.rows.size()==2&&((IconSection)grouping.rows.get(1)).title.equals("未找到相关应用"),"empty result");
        grouping.setSearchQuery("   ");check(grouping.rows.size()==5&&((IconSection)grouping.rows.get(0)).title.equals("已重绘"),"clearing restores exact redraw groups");
        check(scans==scanCount,"typing does not rescan packages");
        grouping.setSearchQuery("Edge");grouping.invalidateIconData(true);repo.work();drainReplies();check(grouping.rows.size()==2,"selection refresh preserves active filter");
        check(grouping.rowVersions.size()==3&&grouping.rowLabels.size()==3,"worker publishes version and label snapshots for binding");
        RedirectIconDB.db.get("app.edge/app.edge.Main").displayName="Renamed";
        grouping.invalidateIconData(true);repo.work();drainReplies();grouping.setSearchQuery("Renamed");
        check(grouping.rows.size()==2&&((RedirectIconInfo)grouping.rows.get(1)).packageName.equals("app.edge"),"selection refresh rebuilds renamed application search terms");
        AppIconSearchIndex<String> index=new AppIconSearchIndex<>();index.add("chinese","设置","pkg.settings",".Settings");
        check(index.filter("设置").equals(List.of("chinese")),"Chinese installed label searchable");
        check(index.filter("shezhi").equals(List.of("chinese")),"installed label full pinyin searchable");
        check(index.filter("sz").equals(List.of("chinese")),"installed label pinyin initials searchable");
        reset();repo.primary="component.main";repo.primaryExists=true;repo.variantIds=List.of("variant_a","variant_b");localVariants=List.of("variant_a.png","variant_c.png");
        RedirectIconInfo sourceApp=new RedirectIconInfo();sourceApp.packageName="app.system";sourceApp.componentName="app.system.Main";sourceApp.drawableName="auto";
        RedirectIconDB.db.put("app.system/app.system.Main",sourceApp);
        worker(()->{
            List<String> names=choiceLibrarySourceIds(context,context.getResources(),new IconManager(context),sourceApp);
            check(names.equals(List.of("component.main","system.alias","app.system","variant_a","variant_b","variant_c")),"production source IDs retain component, system alias, base and both variant sources");
            libraryIcons.put("system.alias",new Drawable("alias"));
            ResolveInfo resolved = new ResolveInfo("app.system","app.system.Main");
            check(selectedChoiceKey(context,context.getResources(),resolved,sourceApp).equals("IMPROVED:system.alias"),"current selection resolves the real cached alias if primary unavailable");
            ManagedIconSource source = resolveManagedIconSource(context,resolved,context.getResources(),null);
            check(source.choiceKey.equals("IMPROVED:system.alias")&&source.drawable.id.equals("alias"),"artwork and selection identity are one decision despite an unavailable primary");
            sourceApp.drawableName="original";
            check(resolveManagedIconSource(context,resolved,context.getResources(),null).choiceKey.equals("DEFAULT"),"forced original remains terminal while an improved alias exists");
            sourceApp.drawableName="auto";
            sourceApp.drawableName="resource:explicit";
            check(choiceLibrarySourceIds(context,context.getResources(),new IconManager(context),sourceApp).get(0).equals("explicit"),"explicit RESOURCE retained before variants");
            check(selectedChoiceKey(context,context.getResources(),new ResolveInfo("app.system","app.system.Main"),sourceApp).equals("IMPROVED:explicit"),"RESOURCE selected key matches immutable candidate identity");
        });
        libraryIcons.clear();localVariants=List.of();
        // Execute the existing production override DB against a serialized preference boundary.
        Context persistence=new Context();IconPackManager.setSelectedIconPackPackage(persistence,"pack.a");
        PersistentRedirectDB.updatePackIcon(persistence,"app.edge","app.edge.Main","pack.c");
        PersistentRedirectDB.updateResourceIcon(persistence,"app.qq","app.qq.Main","qq_variant");
        PersistentRedirectDB.updatePackIcon(persistence,"app.cross","app.cross.Main","pack.c","chrome_icon");
        RedirectIconInfo cross=PersistentRedirectDB.getRedirectIconMetadata(persistence,"app.cross","app.cross.Main");
        check(PersistentRedirectDB.packNameOf(cross).equals("pack.c")&&PersistentRedirectDB.packDrawableNameOf(cross).equals("chrome_icon"),"specific pack artwork preserves target identity and base pack");
        cross.packageName="app.cross";cross.componentName="app.cross.Main";
        check(PersistentRedirectDB.modeOf(cross).equals("pack"),"specific artwork keeps PACK semantics");
        PersistentRedirectDB.updateDisplayName(persistence,"app.edge","app.edge.Main","Edge renamed","Edge");
        check(IconPackManager.getSelectedIconPackPackage(persistence).equals("pack.a"),"single-app DB write never changes global pack A");
        java.util.Properties persisted=new java.util.Properties();persisted.putAll(persistence.preferences.values);
        File saved=new File(persistence.getFilesDir(),"preferences.properties");
        try(FileOutputStream out=new FileOutputStream(saved)){persisted.store(out,"controlled SharedPreferences persistence");}
        Context reopened=new Context();java.util.Properties disk=new java.util.Properties();try(FileInputStream in=new FileInputStream(saved)){disk.load(in);}
        for(String k:disk.stringPropertyNames())reopened.preferences.values.put(k,disk.getProperty(k));
        PersistentRedirectDB.invalidateCaches();
        RedirectIconInfo loadedOverride=PersistentRedirectDB.getRedirectIconMetadata(reopened,"app.edge","app.edge.Main");
        check(PersistentRedirectDB.modeOf(loadedOverride).equals("pack")&&PersistentRedirectDB.packNameOf(loadedOverride).equals("pack.c"),"persisted override rereads without an in-memory record");
        check(loadedOverride.displayName.equals("Edge renamed")&&loadedOverride.iconData==null,"pack preserves rename and raw-source metadata");
        check(PersistentRedirectDB.listAllInfo(reopened).size()==3,"override index persists once per component");
        check(PersistentRedirectDB.resourceNameOf(PersistentRedirectDB.getRedirectIconMetadata(reopened,"app.qq","app.qq.Main")).equals("qq_variant"),"unrelated RESOURCE owner preserved");
        System.out.println("PASS PRODUCTION_ICON_CHECKS="+checks+" appfilterParses="+parses+" packageScans="+scans+"; controlled platform/XML adapters, no Android UI or device claim");
    }
    static final List<Runnable> replies=new ArrayList<>();
    static void drainReplies(){while(!replies.isEmpty())replies.remove(0).run();}
}
