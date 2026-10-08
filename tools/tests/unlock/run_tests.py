"""Run the real session owner against deterministic Android/receiver stubs.

This checks callback ordering, not Android GL execution or visible presentation.
Usage: python tools/tests/unlock/run_tests.py --jdk <JDK directory>
"""
import argparse
import pathlib
import shutil
import subprocess
import tempfile
import xml.etree.ElementTree as ET

ROOT = pathlib.Path(__file__).resolve().parents[3]
SOURCES = {
    "android/app/ActivityManager.java": """package android.app; public class ActivityManager {
      public static int importance=100; public static boolean fail;
      public static class RunningAppProcessInfo {public static final int IMPORTANCE_FOREGROUND=100; public int importance;}
      public static void getMyMemoryState(RunningAppProcessInfo info){if(fail)throw new SecurityException();info.importance=importance;}
    }""",
    "android/content/Context.java": '''package android.content;
public class Context {
 public static final int MODE_PRIVATE=0;
 public static final String KEYGUARD_SERVICE="keyguard", POWER_SERVICE="power";
 public Context getApplicationContext(){return this;}
 public Object getSystemService(String key){return key.equals(KEYGUARD_SERVICE)
  ? new android.app.KeyguardManager():new android.os.PowerManager();}
 public SharedPreferences getSharedPreferences(String key,int mode){return new SharedPreferences();}
}''',
    "android/content/SharedPreferences.java": '''package android.content;
public class SharedPreferences { public static boolean compat;
 public boolean getBoolean(String key,boolean fallback){return compat;} }''',
    "android/content/Intent.java": '''package android.content;
public class Intent { public final String action; public Intent(String a){action=a;} }''',
    "android/app/Activity.java": '''package android.app;
public class Activity extends android.content.Context {}''',
    "android/app/KeyguardManager.java": '''package android.app;
public class KeyguardManager { public static boolean locked;
 public boolean isKeyguardLocked(){return locked;} }''',
    "android/os/PowerManager.java": '''package android.os;
public class PowerManager { public static boolean interactive=true;
 public boolean isInteractive(){return interactive;} }''',
    "android/os/Looper.java": 'package android.os; public class Looper { public static Looper getMainLooper(){return new Looper();} }',
    "android/os/Handler.java": '''package android.os;
public class Handler {
 public static java.util.ArrayList<Runnable> pending=new java.util.ArrayList<>();
 public Handler(Looper l){} public boolean postDelayed(Runnable r,long ms){
  if(ms!=120)throw new AssertionError("wrong legacy delay");pending.add(r);return true;}
 public static void drain(){java.util.ArrayList<Runnable> copy=new java.util.ArrayList<>(pending);
  pending.clear();for(Runnable r:copy)r.run();}
}''',
    "android/os/SystemClock.java": '''package android.os;
public class SystemClock { private static long clock=100;
 public static long uptimeMillis(){return ++clock;} }''',
    "android/util/Log.java": '''package android.util;
public class Log { public static int i(String t,String s){return 0;}
 public static int w(String t,String s){return 0;}
 public static int e(String t,String s){return 0;}
 public static int e(String t,String s,Throwable e){throw new AssertionError(s,e);} }''',
    "com/smartisanos/launcher/data/Constants.java": '''package com.smartisanos.launcher.data;
public class Constants { public static boolean ENABLE_UNLOCK_ANIMATION=true; }''',
    "com/smartisanos/launcher/J.java": '''package com.smartisanos.launcher;
public class J { public static boolean Ua(){return true;} }''',
    "com/smartisanos/launcher/ja.java": '''package com.smartisanos.launcher;
public class ja { public static ja getInstance(){return new ja();} }''',
    "com/smartisanos/launcher/ia.java": '''package com.smartisanos.launcher;
import android.content.*;
import com.smartisanos.launcher.theme.LauncherBelowKeyguardCompat;
public class ia {
 public static int prepares,plays,finishes;
 public ia(ja p){}
 public void onReceive(Context c,Intent i){
  if(i.action.equals("action_keyguard_on")){
   if(LauncherBelowKeyguardCompat.canPrepare(c)) prepares++;
  } else if(i.action.equals(LauncherBelowKeyguardCompat.ACTION_INTERNAL_PLAY)){
   if(LauncherBelowKeyguardCompat.takeInternalPlayPermit(c)) plays++;
  } else if(i.action.equals(LauncherBelowKeyguardCompat.ACTION_INTERNAL_FORCE_FINISH)) finishes++;
 }
}''',
    "UnlockSessionTest.java": '''import java.lang.reflect.*;
import android.app.*;
import android.os.*;
import com.smartisanos.launcher.ia;
import com.smartisanos.launcher.theme.LauncherBelowKeyguardCompat;
public class UnlockSessionTest {
 static Activity a=new Activity();
 static void check(boolean b,String s){if(!b)throw new AssertionError(s);}
 static boolean flag(String name)throws Exception{
  Field f=LauncherBelowKeyguardCompat.class.getDeclaredField(name);
  f.setAccessible(true);return f.getBoolean(null);
 }
 static void reset()throws Exception{
  for(Field f:LauncherBelowKeyguardCompat.class.getDeclaredFields()){
   if(!Modifier.isStatic(f.getModifiers())||Modifier.isFinal(f.getModifiers()))continue;
   f.setAccessible(true);
   if(f.getType()==boolean.class)f.setBoolean(null,false);
   else if(f.getType()==long.class)f.setLong(null,0);
   else f.set(null,null);
  }
  ia.prepares=ia.plays=ia.finishes=0;
  android.app.ActivityManager.importance=100;android.app.ActivityManager.fail=false;
  Handler.pending.clear();
  KeyguardManager.locked=false;PowerManager.interactive=true;
  android.content.SharedPreferences.compat=false;
  com.smartisanos.launcher.data.Constants.ENABLE_UNLOCK_ANIMATION=true;
  LauncherBelowKeyguardCompat.onLauncherResumed(a);
  LauncherBelowKeyguardCompat.onWindowFocusChanged(a,true);
 }
 static long lock(){
  KeyguardManager.locked=true;PowerManager.interactive=false;
  LauncherBelowKeyguardCompat.onLauncherPaused(a);
  LauncherBelowKeyguardCompat.armAndPrepareIfNeeded(a,"SCREEN_OFF");
  return LauncherBelowKeyguardCompat.getSessionId();
 }
 static void resumeLocked(){PowerManager.interactive=true;
  LauncherBelowKeyguardCompat.onLauncherResumed(a);}
 static void dismiss(){KeyguardManager.locked=false;
  LauncherBelowKeyguardCompat.onDismissSignal(a,"USER_PRESENT");}
 static void focus(){LauncherBelowKeyguardCompat.onWindowFocusChanged(a,true);}
 public static void main(String[] args)throws Exception{
  reset();long first=lock();LauncherBelowKeyguardCompat.onLauncherStopped(a);
  android.app.ActivityManager.importance=400;PowerManager.interactive=true;dismiss();
  LauncherBelowKeyguardCompat.onLauncherResumed(a);focus();
  check(ia.plays==0,"background USER_PRESENT replayed on later ordinary HOME resume");
  reset();first=lock();LauncherBelowKeyguardCompat.onLauncherStopped(a);
  PowerManager.interactive=true;dismiss();
  LauncherBelowKeyguardCompat.onLauncherResumed(a);focus();
  check(ia.plays==1,"foreground dismiss before onResume lost normal unlock");
  reset();first=lock();LauncherBelowKeyguardCompat.onLauncherStopped(a);
  android.app.ActivityManager.fail=true;PowerManager.interactive=true;dismiss();
  LauncherBelowKeyguardCompat.onLauncherResumed(a);focus();
  check(ia.plays==1,"unknown process importance silently disabled normal unlock");
  reset();first=lock();
  check(ia.prepares==1,"duplicate screen-off prepared twice");
  check(!flag("unlockPrepared"),"enqueue cannot mean GL ready");
  check(LauncherBelowKeyguardCompat.beginGlEvent(first,false),"valid prepare rejected");
  LauncherBelowKeyguardCompat.onPrepareReady(first,false);
  check(!flag("unlockPrepared"),"failed GL init marked ready");
  LauncherBelowKeyguardCompat.onPrepareReady(first,true);
  check(flag("unlockPrepared"),"GL completion not recorded");
  resumeLocked();dismiss();check(ia.plays==0,"played behind unfocused window");
  focus();check(ia.plays==1,"focused unlock did not play");
  dismiss();focus();LauncherBelowKeyguardCompat.onRendererFrame();
  check(ia.plays==1,"duplicate playback");
  check(LauncherBelowKeyguardCompat.beginGlEvent(first,true),"play event rejected");
  LauncherBelowKeyguardCompat.onOriginalPlayDispatched(first);
  LauncherBelowKeyguardCompat.onUnlockAnimationStarted(first);
  long second=lock();check(second>first,"rapid relock did not create new session");
  check(!LauncherBelowKeyguardCompat.beginGlEvent(first,true),"old queued play accepted");
  check(LauncherBelowKeyguardCompat.beginGlForceFinish(first),"old scene cleanup rejected");
  LauncherBelowKeyguardCompat.onUnlockAnimationFinished(first);
  LauncherBelowKeyguardCompat.onForceFinishComplete(first);
  check(flag("keyguardSessionActive"),"old force finish erased new session");
  LauncherBelowKeyguardCompat.onPrepareReady(first,true);
  check(!flag("unlockPrepared"),"old prepare completed new session");
  check(LauncherBelowKeyguardCompat.beginGlEvent(second,false),"new prepare rejected");
  check(!LauncherBelowKeyguardCompat.beginGlForceFinish(first),"late cleanup killed new GL scene");
  reset();first=lock();resumeLocked();focus();
  check(ia.plays==0,"focused but locked window played");
  KeyguardManager.locked=false;LauncherBelowKeyguardCompat.onRendererFrame();
  check(ia.plays==1,"no-broadcast direct handoff failed");
  check(!LauncherBelowKeyguardCompat.beginGlEvent(first,false),"queued prepare mutated a consumed/play scene");
  reset();first=lock();resumeLocked();dismiss();focus();
  LauncherBelowKeyguardCompat.onLauncherPaused(a);
  LauncherBelowKeyguardCompat.onLauncherStopped(a);
  check(!LauncherBelowKeyguardCompat.beginGlEvent(first,true),"covered app replay accepted");
  LauncherBelowKeyguardCompat.onLauncherResumed(a);focus();dismiss();
  check(ia.plays==1,"return from app replayed old unlock");
  reset();first=lock();LauncherBelowKeyguardCompat.onPrepareReady(first,true);resumeLocked();dismiss();focus();
  LauncherBelowKeyguardCompat.onLauncherPaused(a);
  check(!LauncherBelowKeyguardCompat.beginGlEvent(first,true),"pause-only app return accepted old play");
  LauncherBelowKeyguardCompat.onLauncherResumed(a);focus();
  check(ia.plays==1,"quick app return replayed old unlock before onStop");
  reset();first=lock();LauncherBelowKeyguardCompat.onLauncherStopped(a);
  LauncherBelowKeyguardCompat.onExternalApplicationLaunched(a);
  PowerManager.interactive=true;dismiss();
  LauncherBelowKeyguardCompat.onLauncherResumed(a);focus();
  check(ia.plays==0,"late USER_PRESENT behind launched app replayed on ordinary return");
  check(!LauncherBelowKeyguardCompat.beginGlEvent(first,false),"cancelled app launch left queued preparation eligible");
  first=lock();LauncherBelowKeyguardCompat.onPrepareReady(first,true);resumeLocked();dismiss();focus();
  check(ia.plays==1,"explicit app cancel suppressed the next real HOME unlock");
  reset();LauncherBelowKeyguardCompat.onLauncherPaused(a);
  LauncherBelowKeyguardCompat.onLauncherStopped(a);
  KeyguardManager.locked=true;PowerManager.interactive=false;
  LauncherBelowKeyguardCompat.armAndPrepareIfNeeded(a,"SCREEN_OFF");
  check(ia.prepares==0,"non-HOME lock armed");
  reset();android.content.SharedPreferences.compat=true;first=lock();
  android.content.SharedPreferences.compat=false;
  check(LauncherBelowKeyguardCompat.isMaintainedCompatMode(),"session policy changed midway");
  LauncherBelowKeyguardCompat.onUnlockSettingChanged(false);
  check(!LauncherBelowKeyguardCompat.beginGlEvent(first,false),"disabled queued init accepted");
  reset();android.content.SharedPreferences.compat=true;first=lock();
  LauncherBelowKeyguardCompat.onPrepareReady(first,true);resumeLocked();dismiss();
  check(ia.plays==1,"legacy dismiss waited for focus");Handler.drain();focus();dismiss();
  check(ia.plays==1,"legacy delayed callback replayed consumed session");
  reset();android.content.SharedPreferences.compat=true;first=lock();
  resumeLocked();check(Handler.pending.isEmpty(),"scheduled before real preparation");
  LauncherBelowKeyguardCompat.onPrepareReady(first,true);
  check(Handler.pending.size()==1,"prepared locked resume did not schedule");
  Handler.drain();check(ia.plays==1,"legacy pre-roll failed behind keyguard");
  dismiss();focus();check(ia.plays==1,"legacy dismiss replayed pre-roll");
  reset();android.content.SharedPreferences.compat=true;first=lock();
  LauncherBelowKeyguardCompat.onPrepareReady(first,true);resumeLocked();
  LauncherBelowKeyguardCompat.onUnlockSettingChanged(false);Handler.drain();
  check(ia.plays==0,"cancelled legacy pre-roll played");
  reset();android.content.SharedPreferences.compat=true;first=lock();
  LauncherBelowKeyguardCompat.onPrepareReady(first,true);resumeLocked();
  KeyguardManager.locked=false;LauncherBelowKeyguardCompat.onLauncherPaused(a);
  LauncherBelowKeyguardCompat.onLauncherStopped(a);Handler.drain();
  check(ia.plays==0,"legacy pre-roll played after app covered HOME");
  reset();android.content.SharedPreferences.compat=true;first=lock();
  LauncherBelowKeyguardCompat.onPrepareReady(first,true);resumeLocked();
  LauncherBelowKeyguardCompat.onUnlockSettingChanged(false);
  com.smartisanos.launcher.data.Constants.ENABLE_UNLOCK_ANIMATION=true;
  KeyguardManager.locked=false;focus();
  second=lock();LauncherBelowKeyguardCompat.onPrepareReady(second,true);resumeLocked();
  Handler.drain();check(ia.plays==1,"stale callback consumed or duplicated new pre-roll");
  reset();first=lock();LauncherBelowKeyguardCompat.onPrepareReady(first,true);resumeLocked();
  check(Handler.pending.isEmpty(),"default scheduled legacy pre-roll");
  dismiss();check(ia.plays==0,"default bypassed focus");focus();check(ia.plays==1,"default failed");
  System.out.println("PASS: GL completion, visibility gates, duplicates, relock, stale callbacks, app return, eligibility, preference snapshot");
 }
}''',
}


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--jdk", required=True, type=pathlib.Path)
    args = parser.parse_args()
    with tempfile.TemporaryDirectory(prefix="unlock-session-") as folder:
        work = pathlib.Path(folder)
        for name, text in SOURCES.items():
            path = work / name
            path.parent.mkdir(parents=True, exist_ok=True)
            path.write_text(text, encoding="utf-8")
        owner = pathlib.Path("com/smartisanos/launcher/theme/LauncherBelowKeyguardCompat.java")
        (work / owner).parent.mkdir(parents=True, exist_ok=True)
        shutil.copyfile(ROOT / "launcher/tools/java" / owner, work / owner)
        subprocess.run([str(args.jdk / "bin/javac.exe"), "-d", str(work / "classes"),
                        *map(str, work.rglob("*.java"))], check=True)
        subprocess.run([str(args.jdk / "bin/java.exe"), "-cp", str(work / "classes"),
                        "UnlockSessionTest"], check=True)
    for name in ("unlock12.xml", "unlock20.xml"):
        seconds = float(ET.parse(ROOT / "launcher/assets" / name).getroot().get("totalDuration"))
        for hz in (60, 90, 120, 144):
            for scale in (1.2, 1.5):
                elapsed = progress = 0.0
                step = 1000 / hz
                target = seconds * 1000 * scale
                while progress + 1e-7 < target:
                    elapsed += step
                    progress += min(step, 100) * scale
                assert seconds * 1000 - 1e-6 <= elapsed <= seconds * 1000 + step
    print("PASS: XML nominal duration conversion at 60/90/120/144 Hz (formula check, not device timing)")


if __name__ == "__main__":
    main()
