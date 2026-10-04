"""Run actual restore/controller/coordinator with queued MAIN and blocking archive/DB fixtures.

Android/lifecycle/DB/archive boundaries are doubles. Java threads, files and process locks
are real. No installed Launcher or user desktop data is used.
"""
import argparse
import importlib.util
from pathlib import Path
import subprocess
import sys
import tempfile

sys.dont_write_bytecode = True
ROOT = Path(__file__).resolve().parents[3]
spec = importlib.util.spec_from_file_location('journal_fixtures', Path(__file__).parent.parent / 'restore_journal/run_tests.py')
fixtures = importlib.util.module_from_spec(spec)
spec.loader.exec_module(fixtures)
B = 'com/smartisanos/launcher/backup/'
R = 'com/smartisanos/launcher/reload/'
SOURCES = {k: v for k, v in fixtures.SOURCES.items() if k not in (B + 'CheckpointTest.java', R + 'LauncherColdReloadCoordinator.java')}
SOURCES.update({
'android/os/Looper.java': '''package android.os;public class Looper{public static final Thread MAIN=Thread.currentThread();private static final Looper INSTANCE=new Looper();public static Looper getMainLooper(){return INSTANCE;}}''',
'android/os/Handler.java': '''package android.os;import java.util.concurrent.*;public class Handler{
 public static final BlockingQueue<Runnable> queue=new LinkedBlockingQueue<>();public Handler(Looper l){}
 public boolean post(Runnable r){queue.add(r);return true;}public boolean postDelayed(Runnable r,long t){return true;}
 public void removeCallbacks(Runnable r){queue.remove(r);}
 public static void one()throws Exception{Runnable r=queue.poll(5,TimeUnit.SECONDS);if(r==null)throw new AssertionError("MAIN callback missing");r.run();}
 public static void all(){Runnable r;while((r=queue.poll())!=null)r.run();}}''',
'android/os/SystemClock.java': 'package android.os;public class SystemClock{public static long elapsedRealtime(){return System.nanoTime()/1000000;}}',
'android/os/Process.java': 'package android.os;public class Process{public static int myPid(){return 1;}public static void killProcess(int p){}}',
'android/app/ActivityManager.java': '''package android.app;import java.util.*;public class ActivityManager{
 public static boolean alive;public static class RunningAppProcessInfo{public int pid=700;public String processName="fixture";}
 public List<RunningAppProcessInfo> getRunningAppProcesses(){return alive?Collections.singletonList(new RunningAppProcessInfo()):Collections.<RunningAppProcessInfo>emptyList();}}''',
'android/content/Intent.java': '''package android.content;import java.util.*;public class Intent{
 public static final String ACTION_MAIN="main",CATEGORY_HOME="home";public static final int FLAG_ACTIVITY_NEW_TASK=1,FLAG_ACTIVITY_NO_ANIMATION=2;
 final Map<String,Object> extras=new HashMap<>();public String action;public Intent(){}public Intent(String a){action=a;}public Intent(Context c,Class<?> k){action="transition";}
 public Intent putExtra(String k,Object v){extras.put(k,v);return this;}public String getStringExtra(String k){return (String)extras.get(k);}
 public int getIntExtra(String k,int d){Object v=extras.get(k);return v instanceof Number?((Number)v).intValue():d;}
 public Intent addFlags(int f){return this;}public Intent addCategory(String c){return this;}public Intent setPackage(String p){return this;}
 public Intent setClassName(String p,String c){return this;}}''',
'android/view/ViewTreeObserver.java': '''package android.view;public class ViewTreeObserver{public interface OnPreDrawListener{boolean onPreDraw();}public boolean isAlive(){return true;}public void addOnPreDrawListener(OnPreDrawListener l){}public void removeOnPreDrawListener(OnPreDrawListener l){}}''',
'android/view/View.java': '''package android.view;public class View{public ViewTreeObserver getViewTreeObserver(){return new ViewTreeObserver();}public void invalidate(){}}''',
'android/view/Window.java': 'package android.view;public class Window{public View getDecorView(){return new View();}}',
'android/view/Choreographer.java': '''package android.view;import java.util.*;public class Choreographer{
 public interface FrameCallback{void doFrame(long t);}public static final Queue<FrameCallback> frames=new ArrayDeque<>();
 public static Choreographer getInstance(){return new Choreographer();}public void postFrameCallback(FrameCallback c){frames.add(c);}
 public static void pulse(){FrameCallback c=frames.poll();if(c!=null)c.doFrame(0);}}''',
'android/app/Dialog.java': 'package android.app;public class Dialog{public android.view.Window getWindow(){return new android.view.Window();}}',
'android/app/Activity.java': '''package android.app;import android.content.*;public class Activity extends Context{
 public boolean finishing,destroyed,failStart;public int launches;public Intent intent=new Intent();public Thread startThread;final Context app;
 public Activity(Context c){super(c.root);app=c;}public Context getApplicationContext(){return app;}public Intent getIntent(){return intent;}
 public boolean isFinishing(){return finishing;}public boolean isDestroyed(){return destroyed;}
 public android.view.Window getWindow(){return new android.view.Window();}public void overridePendingTransition(int a,int b){}
 public void startActivity(Intent i){startThread=Thread.currentThread();if(failStart)throw new IllegalStateException("launch failure");launches++;}}''',
R+'LoadingUiWindowCompat.java': 'package com.smartisanos.launcher.reload;public class LoadingUiWindowCompat{public static void apply(android.view.Window w){}public static void hideNavigation(android.view.Window w){}}',
R+'ReloadTransitionActivity.java': '''package com.smartisanos.launcher.reload;import android.content.*;public class ReloadTransitionActivity extends android.app.Activity{
 public int applying,finished,failed,busy;public ReloadTransitionActivity(Context c){super(c);}
 public void onRestoreApplyStarted(){applying++;}public void onRestoreApplyFinished(){finished++;}
 public void showRestoreFailure(){failed++;LauncherColdReloadCoordinator.cancelPendingLauncherStart("token");}
 public void showRestoreBusy(){busy++;LauncherColdReloadCoordinator.cancelPendingLauncherStart("token");}
 public void showLauncherStartFailure(){failed++;}}''',
B+'Effects.java': '''package com.smartisanos.launcher.backup;import java.util.*;import java.io.*;import java.util.concurrent.*;public class Effects{
 public static final List<String> events=Collections.synchronizedList(new ArrayList<String>());public static File lastArchive;public static boolean failImporter;
 public static volatile boolean blockRead,blockImport;public static volatile Thread readThread,importThread;
 public static CountDownLatch readEntered,readRelease,importEntered,importRelease;
 public static void clear(){events.clear();lastArchive=null;failImporter=false;blockRead=false;blockImport=false;readThread=null;importThread=null;
  readEntered=new CountDownLatch(1);readRelease=new CountDownLatch(1);importEntered=new CountDownLatch(1);importRelease=new CountDownLatch(1);}
 public static void read(){readThread=Thread.currentThread();readEntered.countDown();if(blockRead)waitFor(readRelease);}
 public static void imported(){importThread=Thread.currentThread();importEntered.countDown();if(blockImport)waitFor(importRelease);}
 static void waitFor(CountDownLatch l){try{if(!l.await(5,TimeUnit.SECONDS))throw new AssertionError("fixture release timeout");}catch(InterruptedException e){throw new AssertionError(e);}}}''',
})
SOURCES['android/content/SharedPreferences.java'] = SOURCES['android/content/SharedPreferences.java'].replace('boolean commit();', 'Editor remove(String k);boolean commit();')
SOURCES['android/content/Context.java'] = SOURCES['android/content/Context.java'].replace('ACTIVITY_SERVICE="activity";', 'ACTIVITY_SERVICE="activity";public static final int MODE_PRIVATE=0;public int transitions;public Thread transitionThread;public String getPackageName(){return "fixture";}public void startActivity(Intent i){transitions++;transitionThread=Thread.currentThread();}public void sendBroadcast(Intent i){}').replace('public boolean commit(){return true;}', 'public Editor remove(String k){values.remove(k);return this;}public boolean commit(){return true;}')
SOURCES[B+'BackupArchiveReader.java'] = SOURCES[B+'BackupArchiveReader.java'].replace('Effects.lastArchive=f;', 'Effects.read();Effects.lastArchive=f;')
SOURCES[B+'LayoutSnapshotImporter.java'] = SOURCES[B+'LayoutSnapshotImporter.java'].replace('Effects.events.add("DB");', 'Effects.events.add("DB");Effects.imported();')
SOURCES['android/util/AtomicFile.java'] = SOURCES['android/util/AtomicFile.java'].replace('final File base;', 'final File base;public static volatile Thread writeThread;').replace('public FileOutputStream startWrite()throws IOException{', 'public FileOutputStream startWrite()throws IOException{writeThread=Thread.currentThread();')
SOURCES['com/smartisanos/launcher/theme/MaintainedLauncherSettingsHost.java'] = SOURCES['com/smartisanos/launcher/theme/MaintainedLauncherSettingsHost.java'].replace('Effects.events.add("TOAST:"+s);', 'if(Thread.currentThread()!=android.os.Looper.MAIN)throw new AssertionError("toast off MAIN");Effects.events.add("TOAST:"+s);')


def main():
    parser = argparse.ArgumentParser(__doc__)
    parser.add_argument('--jdk', type=Path, required=True)
    parser.add_argument('--baseline', action='store_true')
    parser.add_argument('--cleanup-baseline', type=Path)
    args = parser.parse_args()
    with tempfile.TemporaryDirectory(prefix='restore-worker-') as directory:
        work = Path(directory)
        sources = []
        for name, source in SOURCES.items():
            path = work / name
            path.parent.mkdir(parents=True, exist_ok=True)
            path.write_text(source, encoding='utf-8')
            sources.append(path)
        sources.append(Path(__file__).with_name('RestoreWorkerTest.java'))
        for name in ('RestoreOperationJournal', 'DesktopRestoreController', 'RestoreRecoveryGuard', 'BackupOperationLock', 'BackupFileUtils', 'BackupRestoreResult'):
            if name == 'DesktopRestoreController' and args.cleanup_baseline:
                copy = work / B / (name + '.java')
                copy.write_bytes(args.cleanup_baseline.read_bytes())
                sources.append(copy)
            else:
                sources.append(ROOT / 'launcher/tools/java' / B / (name + '.java'))
        coordinator = ROOT / 'launcher/tools/java' / R / 'LauncherColdReloadCoordinator.java'
        if args.baseline:
            coordinator = work / R / 'LauncherColdReloadCoordinator.java'
            coordinator.parent.mkdir(parents=True, exist_ok=True)
            coordinator.write_bytes(subprocess.check_output(['git', 'show', 'HEAD:launcher/tools/java/' + R + 'LauncherColdReloadCoordinator.java'], cwd=ROOT))
        sources += [coordinator, ROOT / 'launcher/tools/java' / R / 'ReloadProtocol.java']
        classes = work / 'classes'
        classes.mkdir()
        subprocess.run([str(args.jdk / 'bin/javac.exe'), '-encoding', 'UTF-8', '-d', str(classes), *map(str, sources)], check=True)
        subprocess.run([str(args.jdk / 'bin/java.exe'), '-cp', str(classes),
                        'com.smartisanos.launcher.backup.RestoreWorkerTest', str(work / 'data'),
                        'cleanup-baseline' if args.cleanup_baseline else ('baseline' if args.baseline else 'fixed')], check=True, timeout=60)
    if not args.baseline:
        transition = (ROOT / 'launcher/tools/java' / R / 'ReloadTransitionActivity.java').read_text('utf-8')
        started = transition.split('void onRestoreApplyStarted()', 1)[1].split('void showRestoreBusy()', 1)[0]
        assert 'handler.removeCallbacks(timeout)' in started and 'showTransitionLoading()' in started
        finished = transition.split('void onRestoreApplyFinished()', 1)[1].split('void showLauncherStartFailure()', 1)[0]
        assert 'beginWaitingForFirstFrame()' in finished
        print('PASS static Activity apply timer pause / post-apply first-frame timer restart; UI rendering not tested')


if __name__ == '__main__':
    main()
