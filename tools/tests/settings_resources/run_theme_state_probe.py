"""Exercise unmodified theme snapshot/poll methods with deterministic query and UI queues."""
import argparse,pathlib,subprocess
ROOT=pathlib.Path(__file__).resolve().parents[3]
SOURCE=ROOT/'launcher/tools/java/com/smartisanos/launcher/theme/MaintainedLauncherSettingsHost.java'
def block(source,signature):
    start=source.index(signature); opening=source.index('{',start); depth=1; end=opening+1
    while depth:
        if source[end]=='{':depth+=1
        if source[end]=='}':depth-=1
        end+=1
    return source[start:end]
def main():
    parser=argparse.ArgumentParser(__doc__);parser.add_argument('--jdk',required=True);parser.add_argument('--output',required=True)
    args=parser.parse_args();out=pathlib.Path(args.output);src=out/'src';classes=out/'classes'
    src.mkdir(parents=True,exist_ok=True);classes.mkdir(exist_ok=True)
    source=SOURCE.read_text('utf-8')
    methods=[block(source,s) for s in ['private static final class ThemeListState',
        'private static ThemeListState loadThemeListState(',
        'private static List<ThemeEntry> themeEntriesFor(',
        'private static void stopThemePagePolling()', 'private static void pauseThemePagePolling()']]
    start=source.index('    private static void startThemePagePolling(')
    end=source.index('    private static void stopThemePagePolling()',start)
    methods.append(source[start:end])
    fixtures={
        'android/content/Context.java':'''package android.content; public class Context {
 public static final int MODE_PRIVATE=0; public Context getApplicationContext(){return this;}
 public SharedPreferences getSharedPreferences(String n,int m){return FixturePrefs.instance;} }''',
        'android/content/SharedPreferences.java':'''package android.content; public interface SharedPreferences {long getLong(String k,long d);}''',
        'android/content/FixturePrefs.java':'''package android.content; public class FixturePrefs implements SharedPreferences {
 public static FixturePrefs instance=new FixturePrefs(); public java.util.Map<String,Long> data=new java.util.HashMap<>();
 public long getLong(String k,long d){return data.containsKey(k)?data.get(k):d;} }''',
        'android/app/Activity.java':'''package android.app; public class Activity extends android.content.Context {
 public boolean finishing; public boolean isFinishing(){return finishing;}
 public android.content.Context getApplicationContext(){return app;} private final android.content.Context app=new android.content.Context();}''',
        'android/app/DownloadManager.java':'''package android.app; public class DownloadManager {
 public static final int STATUS_PENDING=1,STATUS_RUNNING=2,STATUS_SUCCESSFUL=8,STATUS_FAILED=16;}''',
        'android/os/Looper.java':'''package android.os; public class Looper {public static Looper getMainLooper(){return new Looper();}}''',
        'android/os/Handler.java':'''package android.os; public class Handler {
 public static java.util.ArrayDeque<Runnable> now=new java.util.ArrayDeque<>(),later=new java.util.ArrayDeque<>();
 public Handler(Looper l){} public boolean post(Runnable r){now.add(r);return true;}
 public boolean postDelayed(Runnable r,long d){if(d!=1000)throw new AssertionError("poll time changed");later.add(r);return true;}
 public void removeCallbacks(Runnable r){now.remove(r);later.remove(r);}
 public static void drain(){while(!now.isEmpty())now.remove().run();}
 public static void tick(){now.addAll(later);later.clear();drain();}}'''
    }
    harness='''import android.app.Activity; import android.app.DownloadManager;
import android.content.Context; import android.content.SharedPreferences; import android.os.Handler;
import java.lang.ref.WeakReference; import java.util.*; import java.util.concurrent.*;
public class ThemeStateProbe {
 static Handler sThemePageHandler; static Runnable sThemePageRunnable; static Future<?> sThemePageQuery;
 static WeakReference<Activity> sThemePollingOwner;
 static WeakReference<ThemePreviewAdapter> sThemePollingInstalled,sThemePollingOnline;
 static final String THEME_DOWNLOAD_PREFS="probe";
 static final QueueExecutor THEME_PREVIEW_FETCH_EXECUTOR=new QueueExecutor();
 static Set<String> packages=new HashSet<>(); static Map<Long,int[]> progress=new HashMap<>();
 static int queries,downloads; static String theme="a"; static int checks;
 static final ThemeEntry[] LOCAL_THEMES={new ThemeEntry("base","base")};
 static final ThemeEntry[] ONLINE_THEMES={new ThemeEntry("a","a"),new ThemeEntry("b","b"),new ThemeEntry("c","c")};
 static class ThemeEntry {final String id,pkg;ThemeEntry(String i,String p){id=i;pkg=p;}}
 static class ThemePreviewAdapter {int applied; ThemeListState state; void applyState(ThemeListState s){applied++;state=s;}}
 static String currentTheme(Context c){return theme;}
 static boolean packageInstalled(Context c,String p){queries++;return packages.contains(p);}
 static int[] getDownloadProgress(Context c,long id){downloads++;return progress.get(id);}
 static class QueueExecutor extends AbstractExecutorService {
  ArrayDeque<Runnable> queue=new ArrayDeque<>(); public void execute(Runnable r){queue.add(r);}
  public void shutdown(){} public List<Runnable> shutdownNow(){return new ArrayList<>();}
  public boolean isShutdown(){return false;}public boolean isTerminated(){return false;}
  public boolean awaitTermination(long x,TimeUnit u){return false;}
  void drain(){while(!queue.isEmpty())queue.remove().run();}}
 static void check(boolean ok,String m){if(!ok)throw new AssertionError(m);checks++;}
 // PRODUCTION_METHODS
 public static void main(String[] args) {
  Context context=new Context(); Activity activity=new Activity(); packages.add("a");
  android.content.FixturePrefs.instance.data.put("b",1L);progress.put(1L,new int[]{2,10,100});
  ThemeListState state=loadThemeListState(context);
  check(queries==3,"multiple installation scans");check(downloads==1,"multiple download queries");
  check(state.installed.contains("base")&&state.installed.contains("a"),"lost local/installed state");
  check(state.hasActiveDownload,"lost active download");
  check(themeEntriesFor(state,true).size()==2,"local grouping wrong");
  check(themeEntriesFor(state,false).size()==2,"online grouping wrong");
  packages.clear(); progress.clear();
  check(themeEntriesFor(state,true).size()==2&&state.downloads.get("b")[1]==10,"snapshot reads live mutable queries");
  ThemePreviewAdapter installed=new ThemePreviewAdapter(),online=new ThemePreviewAdapter();
  startThemePagePolling(activity,installed,online,false);
  check(sThemePollingOwner.get()==activity,"idle page cannot refresh on resume");
  check(Handler.now.isEmpty()&&THEME_PREVIEW_FETCH_EXECUTOR.queue.isEmpty(),"idle page repeated first scan");
  progress.put(1L,new int[]{2,20,100});
  startThemePagePolling(activity,installed,online);Handler.drain();
  check(installed.applied==0,"poll applied before worker");
  THEME_PREVIEW_FETCH_EXECUTOR.drain();
  check(installed.applied==0,"worker manipulated adapter");Handler.drain();
  check(installed.applied==1&&online.applied==1,"pair did not receive one state");
  check(installed.state==online.state,"adapters have inconsistent state");
  check(installed.state.downloads.get("b")[1]==20,"progress stayed stale");
  check(Handler.later.size()==1,"active download stopped polling");
  progress.put(1L,new int[]{8,100,100}); packages.add("b");theme="b";
  Handler.tick();THEME_PREVIEW_FETCH_EXECUTOR.drain();Handler.drain();
  check(installed.state.installed.contains("b")&&installed.state.currentThemeId.equals("b"),"install/theme change lost");
  check(!installed.state.hasActiveDownload&&Handler.later.isEmpty(),"completed download kept polling");
  check(themeEntriesFor(installed.state,true).size()==2,"installed item did not move group");
  int count=installed.applied;
  startThemePagePolling(activity,installed,online);Handler.drain();THEME_PREVIEW_FETCH_EXECUTOR.drain();
  stopThemePagePolling();Handler.drain();check(installed.applied==count,"late callback rewrote departed page");
  startThemePagePolling(activity,installed,online);Handler.drain();int before=queries;
  stopThemePagePolling();THEME_PREVIEW_FETCH_EXECUTOR.drain();Handler.drain();
  check(queries==before,"cancelled queued task still queried");
  startThemePagePolling(activity,installed,online);Handler.drain();THEME_PREVIEW_FETCH_EXECUTOR.drain();
  ThemePreviewAdapter next=new ThemePreviewAdapter();startThemePagePolling(new Activity(),next,null,false);
  Handler.drain();check(installed.applied==count&&next.applied==0,"replaced owner accepted old result");
  startThemePagePolling(activity,installed,online);Handler.drain();THEME_PREVIEW_FETCH_EXECUTOR.drain();
  activity.finishing=true;Handler.drain();check(installed.applied==count,"destroying activity received result");
  stopThemePagePolling();activity.finishing=false;
  packages.clear();progress.put(1L,new int[]{16,20,100});state=loadThemeListState(context);
  check(!state.hasActiveDownload&&state.downloads.get("b")[0]==16,"failed download lost status");
  System.out.println("PASS THEME_STATE checks="+checks);
 }
}'''
    fixtures['ThemeStateProbe.java']=harness.replace('// PRODUCTION_METHODS','\n'.join(methods))
    files=[]
    for name,text in fixtures.items():
        file=src/name;file.parent.mkdir(parents=True,exist_ok=True);file.write_text(text,'utf-8');files.append(file)
    jdk=pathlib.Path(args.jdk)
    for command,log in [([jdk/'bin/javac.exe','-encoding','UTF-8','-d',classes,*files],'compile.log'),
                        ([jdk/'bin/java.exe','-cp',classes,'ThemeStateProbe'],'result.log')]:
        result=subprocess.run(list(map(str,command)),capture_output=True,text=True,encoding='utf-8',errors='replace')
        (out/log).write_text(result.stdout+result.stderr,'utf-8')
        if result.returncode:raise RuntimeError(result.stdout+result.stderr)
    assert 'PASS THEME_STATE' in result.stdout
    print(result.stdout)
if __name__=='__main__':main()
