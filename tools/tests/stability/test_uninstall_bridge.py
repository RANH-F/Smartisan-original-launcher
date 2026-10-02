import argparse,pathlib,tempfile,subprocess
ROOT=pathlib.Path(__file__).resolve().parents[3]
STUBS={
'android/util/Log.java':'package android.util;public class Log {public static int w(String t,String m){return 0;}public static int w(String t,String m,Throwable e){return 0;}}',
'android/text/TextUtils.java':'package android.text;public class TextUtils{public static boolean isEmpty(CharSequence s){return s==null||s.length()==0;}}',
'android/net/Uri.java':'package android.net;public class Uri{public static Uri parse(String s){return new Uri();}}',
'android/content/Intent.java':'package android.content;import android.net.Uri;public class Intent{public static final String ACTION_UNINSTALL_PACKAGE="uninstall",ACTION_DELETE="delete",EXTRA_RETURN_RESULT="result";public static final int FLAG_ACTIVITY_NEW_TASK=1;public String action;public Intent(String a,Uri u){action=a;}public Intent putExtra(String k,boolean b){return this;}public Intent addFlags(int f){return this;}}',
'android/content/Context.java':'package android.content;public class Context{public int calls,failures;public void startActivity(Intent i){calls++;if(failures-->0)throw new IllegalStateException("unavailable");}}',
'android/widget/Toast.java':'package android.widget;import android.content.Context;public class Toast{public static final int LENGTH_SHORT=0;public static Toast makeText(Context c,String s,int l){return new Toast();}public void show(){}}',
'com/smartisanos/launcher/ja.java':'package com.smartisanos.launcher;import android.content.Context;public class ja{public static Context context=new Context();public static ja getInstance(){return new ja();}public Context getApplication(){return context;}}',
'com/smartisanos/launcher/a/oa.java':'package com.smartisanos.launcher.a;public class oa{public static int queued,animated;public static void fd(){queued++;}public static void cancelSystemUninstall(){queued++;animated++;}}',
'com/smartisanos/launcher/model/LauncherModelRepository.java':'package com.smartisanos.launcher.model;public class LauncherModelRepository{public static boolean removed; public static int queries; public static boolean finishSystemUninstall(Object item){queries++;return removed;}}',
'CheckBridge.java':'''import com.smartisanos.launcher.compat.UninstallCompat;import com.smartisanos.launcher.ja;import com.smartisanos.launcher.a.oa;
public class CheckBridge{static void check(boolean ok){if(!ok)throw new AssertionError();}public static void main(String[]a){
 UninstallCompat.onLauncherResumed();check(oa.queued==0);
 UninstallCompat.requestUninstall("app.test");check(UninstallCompat.isSystemUninstallPending()&&oa.queued==0);
 UninstallCompat.onLauncherResumed();check(!UninstallCompat.isSystemUninstallPending()&&oa.queued==1);
 UninstallCompat.onLauncherResumed();check(oa.queued==1);
 ja.context.failures=1;UninstallCompat.requestUninstall("app.test");check(UninstallCompat.isSystemUninstallPending()&&oa.queued==1);UninstallCompat.onLauncherResumed();check(oa.queued==2);
 ja.context.failures=2;UninstallCompat.requestUninstall("app.test");check(!UninstallCompat.isSystemUninstallPending()&&oa.queued==3);UninstallCompat.onLauncherResumed();check(oa.queued==3);
 UninstallCompat.requestUninstall("");check(oa.queued==3&&oa.animated==2);
 Item main=new Item(1,0,0),clone=new Item(2,999,0),shortcut=new Item(3,0,1);
 int calls=ja.context.calls;UninstallCompat.requestUninstallItem(shortcut);check(ja.context.calls==calls&&!UninstallCompat.isSystemUninstallPending());
 UninstallCompat.requestUninstallItem(main);UninstallCompat.onRemovalCommitted(clone);UninstallCompat.onLauncherResumed();check(oa.animated==3);
 UninstallCompat.requestUninstallItem(main);UninstallCompat.onRemovalCommitted(main);UninstallCompat.onLauncherResumed();check(oa.animated==3);
 com.smartisanos.launcher.model.LauncherModelRepository.removed=true;
 UninstallCompat.requestUninstallItem(main);UninstallCompat.onLauncherResumed();check(oa.animated==3);
 UninstallCompat.onLauncherResumed();check(oa.animated==3);
 System.out.println("PASS production uninstall bridge: animated cancel, return once, confirmed removal, clone isolation, shortcut exclusion, launch fallback/failure");}
 public static class Item{public long id;public int userId,itemType;public String packageName="app.test";public Item(long i,int u,int t){id=i;userId=u;itemType=t;}}
}'''
}
if __name__=='__main__':
 p=argparse.ArgumentParser();p.add_argument('--jdk',type=pathlib.Path,required=True);a=p.parse_args()
 with tempfile.TemporaryDirectory() as td:
  d=pathlib.Path(td);files=[]
  for name,src in STUBS.items():
   f=d/name;f.parent.mkdir(parents=True,exist_ok=True);f.write_text(src,encoding='utf-8');files.append(str(f))
  files.append(str(ROOT/'launcher/tools/java/com/smartisanos/launcher/compat/UninstallCompat.java'));out=d/'out';out.mkdir();subprocess.run([str(a.jdk/'bin/javac.exe'),'-encoding','UTF-8','-d',str(out),*files],check=True);subprocess.run([str(a.jdk/'bin/java.exe'),'-cp',str(out),'CheckBridge'],check=True)
