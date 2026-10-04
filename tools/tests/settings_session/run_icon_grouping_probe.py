"""Execute production grouping/invalidation with controlled queues and resolver boundaries."""
import argparse
from pathlib import Path
import subprocess
import tempfile

ROOT = Path(__file__).resolve().parents[3]


def method(source, signature):
    start = source.index(signature)
    brace = source.index('{', start)
    end, depth = brace + 1, 1
    while depth:
        depth += (source[end] == '{') - (source[end] == '}')
        end += 1
    return source[start:end]


FIXTURE = r'''
import java.util.*;
public class IconGroupingProbe {
 static int checks, resolutions, failed, failedCallbacks, ready, changes;static final Thread MAIN=Thread.currentThread();
 static final ArrayList<Runnable> replies=new ArrayList<Runnable>();
 static void check(boolean ok,String why){checks++;if(!ok)throw new AssertionError(why);}
 static class Context {Map<String,RedirectIconInfo> db=new HashMap<String,RedirectIconInfo>();boolean dynamic,invalid,throwResolve;
  Context getApplicationContext(){return this;}}
 static class RedirectIconInfo {String packageName,componentName="entry";long ownerId;boolean managed;
  RedirectIconInfo(String p,boolean m){packageName=p;managed=m;}}
 static class ResolveInfo {RedirectIconInfo info;ResolveInfo(RedirectIconInfo i){info=i;}}
 static class IconManager {Context c;IconManager(Context c){this.c=c;}
  ResolveInfo getResolveInfo(String p,String component){return new ResolveInfo(c.db.get(p));}}
 static class RedirectIconDB {static RedirectIconInfo getRedirectIconInfo(Context c,String p,String cmp){return c.db.get(p);}}
 static class LauncherSettingBridge {static boolean dynamicWeatherCalendarEnabled(Context c){return c.dynamic;}
  static boolean isDynamicIconPackage(String p){return p.equals("dynamic");}}
 static class Looper {static Object getMainLooper(){return null;}}
 static class Handler {Handler(Object l){}void post(Runnable r){synchronized(replies){replies.add(r);}}}
 static class IconPreviewRepository {
  static final IconPreviewRepository instance=new IconPreviewRepository();ArrayList<Runnable> jobs=new ArrayList<Runnable>();
  static class RequestSession {boolean cancelled;}
  enum Priority {P0_VISIBLE}
  static IconPreviewRepository get(Context c){return instance;}
  boolean isSessionActive(RequestSession s){return s!=null&&!s.cancelled;}
  void schedule(RequestSession s,Priority p,Runnable r){if(s==null||isSessionActive(s))jobs.add(r);}
 }
 static class IconSection {String title;IconSection(String s){title=s;}}
 static String getString(Object r,String key,String fallback){return fallback;}
 static Object resolveManagedIcon(Context c,ResolveInfo r,Object resources,Object none){
  check(Thread.currentThread()!=MAIN,"resolver stays off MAIN");resolutions++;
  if(c.throwResolve)throw new IllegalStateException("fixture decode failed");
  return r!=null&&r.info!=null&&r.info.managed?new Object():null;
 }
 static void logOperation(Object a,String k,String message){if(k.equals("ICON_LIST"))failed++;}
 static String shortError(Exception e){return e.getClass().getSimpleName();}
 Context activity=new Context();Object resources=new Object();IconManager iconManager=new IconManager(activity);
 IconPreviewRepository.RequestSession requestSession=new IconPreviewRepository.RequestSession();
 long iconDataGeneration;int groupingGeneration;Runnable rowsReadyAction=()->ready++,rowsFailedAction=()->failedCallbacks++;
 List<RedirectIconInfo> apps=new ArrayList<RedirectIconInfo>();List<Object> rows=new ArrayList<Object>();HashSet<String> managedRows=new HashSet<String>();
 boolean isActivityInvalid(){return activity.invalid;}void notifyDataSetChanged(){changes++;}
 PRODUCTION_METHODS
 static void worker()throws Exception{Runnable job=IconPreviewRepository.instance.jobs.remove(0);Thread t=new Thread(job);t.start();t.join();}
 static void publish(){while(!replies.isEmpty())replies.remove(0).run();}
 static IconGroupingProbe fresh(){IconPreviewRepository.instance.jobs.clear();replies.clear();
  IconGroupingProbe p=new IconGroupingProbe();for(String n:new String[]{"managed","plain","dynamic"}){
   RedirectIconInfo i=new RedirectIconInfo(n,n.equals("managed"));p.apps.add(i);p.activity.db.put(n,i);}
  p.activity.dynamic=true;return p;}
 public static void main(String[] args)throws Exception{
  IconGroupingProbe p=fresh();p.rebuildRows();check(p.rows.isEmpty()&&resolutions==0,"construction never decodes on MAIN");
  worker();check(p.rows.isEmpty(),"worker cannot publish rows directly");publish();
  check(p.rows.size()==5&&((IconSection)p.rows.get(0)).title.equals("已重绘"),"managed plus dynamic grouping preserved");
  check(p.managedRows.size()==1&&ready==1,"selected managed state published once");
  ArrayList<Object> order=new ArrayList<Object>(p.rows);p.activity.db.get("managed").managed=false;
  p.invalidateIconData(false);worker();publish();check(p.rows.equals(order)&&p.managedRows.isEmpty(),"global disable changes selection without regrouping");
  p=fresh();p.rebuildRows();worker();p.invalidateIconData(true);publish();check(p.rows.isEmpty(),"older reply rejected after newer generation");
  worker();publish();check(p.rows.size()==5,"newest grouping published");
  p=fresh();p.rebuildRows();worker();p.requestSession.cancelled=true;publish();check(p.rows.isEmpty(),"closed page rejects reply");
  p=fresh();p.rebuildRows();p.requestSession.cancelled=true;int before=resolutions;worker();publish();check(resolutions==before,"cancelled work stops before resolver");
  p=fresh();p.rebuildRows();worker();p.activity.invalid=true;publish();check(p.rows.isEmpty(),"destroyed Activity rejects reply");
  p=fresh();p.activity.throwResolve=true;p.rebuildRows();worker();publish();check(failed==1&&failedCallbacks==1&&p.rows.isEmpty(),"decode failure reaches guarded failure callback");
  p=fresh();p.requestSession=null;p.rebuildRows();worker();publish();check(p.rows.size()==5,"choice page without list session remains supported");
  System.out.println("PASS ICON_GROUPING_CHECKS="+checks+" scope=production methods; controlled resolver/queues, no Android frame claim");
 }
}
'''


def main():
    ap = argparse.ArgumentParser(__doc__)
    ap.add_argument('--jdk', required=True, type=Path)
    args = ap.parse_args()
    host = (ROOT / 'launcher/tools/java/com/smartisanos/launcher/theme/MaintainedLauncherSettingsHost.java').read_text('utf-8')
    signatures = ['private String rowIdentity(', 'private void rebuildRows() {',
                  'private void rebuildRows(final boolean rebuildSections)',
                  'void invalidateIconData(boolean rebuildSections)']
    production = '\n'.join(method(host, signature) for signature in signatures)
    with tempfile.TemporaryDirectory(prefix='settings-grouping-') as folder:
        path = Path(folder)
        source = path / 'IconGroupingProbe.java'
        source.write_text(FIXTURE.replace('PRODUCTION_METHODS', production), 'utf-8')
        subprocess.run([str(args.jdk / 'bin/javac.exe'), '-encoding', 'UTF-8', '-d', str(path), str(source)], check=True)
        subprocess.run([str(args.jdk / 'bin/java.exe'), '-cp', str(path), 'IconGroupingProbe'], check=True)


if __name__ == '__main__': main()
