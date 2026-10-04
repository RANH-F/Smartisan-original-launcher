"""Execute extracted production boolean readers and restore UI listener with boundary doubles."""
import argparse
from pathlib import Path
import subprocess
import tempfile

ROOT = Path(__file__).resolve().parents[3]
BASE = 'launcher/tools/java/com/smartisanos/launcher/theme/'

def method(source, signature):
    start = source.index(signature)
    brace = source.index('{', start)
    depth = 1
    end = brace + 1
    while depth:
        depth += (source[end] == '{') - (source[end] == '}')
        end += 1
    return source[start:end]

def main():
    ap = argparse.ArgumentParser(__doc__)
    ap.add_argument('--jdk', required=True, type=Path)
    a = ap.parse_args()
    host = (ROOT / BASE / 'MaintainedLauncherSettingsHost.java').read_text('utf-8')
    old = subprocess.check_output(['git', 'show', ':' + BASE + 'MaintainedLauncherSettingsHost.java'], cwd=ROOT).decode('utf-8')
    bridge = (ROOT / BASE / 'LauncherSettingBridge.java').read_text('utf-8')
    sources = {
        'android/content/SharedPreferences.java': '''package android.content;public interface SharedPreferences {boolean contains(String k);boolean getBoolean(String k,boolean d);}''',
        'android/content/Context.java': '''package android.content;public class Context {
          public static final int MODE_PRIVATE=0;public Object[] values=new Object[4];
          public Context getContentResolver(){return this;}public SharedPreferences getSharedPreferences(String n,int m){
          final Object value=values[n.equals("launcher_settings")?0:1];if(value instanceof Exception)throw new IllegalStateException();
          return new SharedPreferences(){public boolean contains(String k){return value!=null;}public boolean getBoolean(String k,boolean d){return (Boolean)value;}};}}''',
        'android/provider/Settings.java': '''package android.provider;import android.content.Context;public class Settings {
          static String value(Context c,int i){Object v=c.values[i];if(v instanceof Exception)throw new IllegalStateException();return v==null?null:v.toString();}
          public static class System {public static String getString(Context c,String k){return value(c,2);}}
          public static class Global {public static String getString(Context c,String k){return value(c,3);}}}''',
        'android/app/Activity.java': 'package android.app;public class Activity{public boolean finishing,destroyed;}',
        'android/content/res/Resources.java': 'package android.content.res;public class Resources{}',
        'com/smartisanos/launcher/backup/BackupArchiveReader.java': 'package com.smartisanos.launcher.backup;public class BackupArchiveReader{public static class ValidatedBackup{public String sourceName="fixture";}}',
        'com/smartisanos/launcher/backup/RestoreMergePlanner.java': 'package com.smartisanos.launcher.backup;public class RestoreMergePlanner{public static class Plan{}}',
        'com/smartisanos/launcher/backup/BackupRestoreResult.java': 'package com.smartisanos.launcher.backup;public class BackupRestoreResult{public String errorCode="failure";public boolean success;}',
        'com/smartisanos/launcher/backup/DesktopRestoreController.java': '''package com.smartisanos.launcher.backup;public class DesktopRestoreController{
          public interface Listener{void onState(String s,boolean c);void onPreview(BackupArchiveReader.ValidatedBackup b,RestoreMergePlanner.Plan p);void onComplete(BackupRestoreResult r);}
          public static Listener attached;public static void attachListener(Listener l){attached=l;}public static void detachListener(Listener l){if(attached==l)attached=null;}}''',
    }
    imports = 'import android.content.*;import android.provider.Settings;'
    sources['Old.java'] = imports + 'public class Old{' + method(old, 'private static boolean readSystemBool(').replace('private static', 'public static') + '}'
    sources['LauncherSettingBridge.java'] = imports + 'public class LauncherSettingBridge{' + method(bridge, 'public static boolean readBool(') + '}'
    listener = method(host, 'private static DesktopRestoreController.Listener restoreListener(').replace('private static', 'public static', 1)
    destroy = method(host, 'public static void onSettingsHostDestroyed(')
    guard = destroy[destroy.index('        if (sRestoreListenerOwner'):destroy.index('        if (!ownsSettingsSession')]
    sources['Host.java'] = imports + '''import android.app.Activity;import android.content.res.Resources;import java.lang.ref.WeakReference;import com.smartisanos.launcher.backup.*;
      public class Host{static WeakReference<Activity> sRestoreListenerOwner;static DesktopRestoreController.Listener sRestoreListener;
      static final Object SETTINGS_BACK_LOCK=new Object();static SettingsBackEntry sSettingsBackEntry;
      static class SettingsBackEntry{WeakReference<Activity> owner;String page;SettingsBackEntry(Activity a,String p){owner=new WeakReference<Activity>(a);page=p;}}
      static void page(Activity a,String p){sSettingsBackEntry=new SettingsBackEntry(a,p);}
      public static int states,previews,completes,dismissed;static Resources getMaintainedResources(Activity a){return new Resources();}
      static boolean isActivityInvalid(Activity a){return a==null||a.finishing||a.destroyed;}
      static String restoreStateMessage(Resources r,String s){return s;}static void updateBackupProgressMessage(String s){states++;}
      static void dismissBackupProgress(){dismissed++;}static void showBackupPreviewPage(Activity a,Object b,Object p,boolean c,String n){previews++;}
      static void showRestoreResultToast(Activity a,BackupRestoreResult r){completes++;}
      public static void destroy(Activity activity){''' + guard + '}' + listener + method(host, 'private static boolean readSystemBool(').replace('private static','public static') + '}'
    sources['Check.java'] = '''import android.content.Context;import android.app.Activity;import com.smartisanos.launcher.backup.*;
      public class Check{static int checks;static void check(boolean ok){checks++;if(!ok)throw new AssertionError("check "+checks);}
      static void fire(DesktopRestoreController.Listener l){l.onState("READY",false);l.onPreview(new BackupArchiveReader.ValidatedBackup(),new RestoreMergePlanner.Plan());l.onComplete(new BackupRestoreResult());}
      public static void main(String[] args){Object[] choices={null,true,false,"1","0","TrUe","invalid",42,new Exception()};
      Context c=new Context();for(Object x:choices)for(Object y:choices)for(Object z:choices)for(Object w:choices)for(boolean d:new boolean[]{false,true}){
        c.values=new Object[]{x,y,z,w};check(Old.readSystemBool(c,"flag",d)==Host.readSystemBool(c,"flag",d));}
      check(Host.readSystemBool(null,"flag",true));Activity a=new Activity(),b=new Activity();
      Host.page(a,"DESKTOP_BACKUP");DesktopRestoreController.Listener first=Host.restoreListener(a);fire(first);check(Host.previews==1&&Host.states==1&&Host.completes==1);
      Host.page(a,"THEME_LIST");fire(first);check(Host.previews==1&&Host.states==1&&Host.completes==1);
      Host.page(b,"RESTORE_PREVIEW");DesktopRestoreController.Listener second=Host.restoreListener(b);fire(first);check(Host.previews==1&&Host.states==1&&Host.completes==1);
      Host.destroy(a);fire(second);check(Host.previews==2);Host.destroy(b);fire(second);check(Host.previews==2&&DesktopRestoreController.attached==null);
      Host.page(a,"DESKTOP_BACKUP");DesktopRestoreController.Listener third=Host.restoreListener(a);a.destroyed=true;fire(third);check(Host.previews==2);
      a.destroyed=false;Host.sRestoreListenerOwner.clear(); // listener owns a separate weak reference; inspect capture instead of relying on GC timing.
      for(java.lang.reflect.Field f:third.getClass().getDeclaredFields())check(f.getType()!=Activity.class);
      System.out.println("PASS SETTINGS_READ_AND_RESTORE_LISTENER_CHECKS="+checks);
      }}'''
    with tempfile.TemporaryDirectory(prefix='settings-contract-') as tmp:
        work = Path(tmp)
        files = []
        for name, source in sources.items():
            path = work / name
            path.parent.mkdir(parents=True, exist_ok=True)
            path.write_text(source, 'utf-8')
            files.append(path)
        subprocess.run([str(a.jdk / 'bin/javac.exe'), '-encoding', 'UTF-8', '-d', str(work / 'classes'), *map(str,files)], check=True)
        subprocess.run([str(a.jdk / 'bin/java.exe'), '-cp', str(work / 'classes'), 'Check'], check=True)

if __name__ == '__main__':
    main()
