"""Exercise the production controller with Android MotionEvents and controlled host/capture."""
import argparse
import os
from pathlib import Path
import subprocess

ROOT = Path(__file__).resolve().parents[3]
P = 'com/smartisanos/launcher/quickdesktop/'


def main():
    parser = argparse.ArgumentParser(__doc__)
    for key in ('serial', 'jdk', 'sdk', 'output'):
        parser.add_argument('--' + key, required=True)
    parser.add_argument('--generation', action='store_true')
    args = parser.parse_args()
    out, jdk, sdk = Path(args.output), Path(args.jdk), Path(args.sdk)
    out.mkdir(parents=True, exist_ok=True)

    def run(cmd, log):
        result = subprocess.run(list(map(str, cmd)), capture_output=True, text=True,
                                encoding='utf-8', errors='replace', timeout=60)
        (out / log).write_text(result.stdout + result.stderr, 'utf-8')
        if result.returncode:
            raise RuntimeError(result.stdout + result.stderr)
        return result.stdout

    sources = {
        P + 'QuickDesktopHostView.java': '''package com.smartisanos.launcher.quickdesktop;
import android.content.Context; import android.widget.FrameLayout;
public class QuickDesktopHostView extends FrameLayout {
 public static QuickDesktopHostView last; public int refreshes,clears; private float progress;
 public QuickDesktopHostView(Context c){super(c);last=this;}
 float getOpenProgress(){return progress;} float getPageWidth(){return 1000;}
 void refreshContent(){refreshes++;} void clearBackgroundSnapshots(){clears++;}
 void cancelSettling(){} void ensureVisibleForOriginalRequest(){}
 void setOpenProgress(float p,String r){progress=Math.max(0,Math.min(1,p));}
 void settleTo(float p,float v,String r){progress=p;if(p==0)QuickDesktopController.onHostClosed();else QuickDesktopController.onHostOpened();}
 void closeImmediately(String r){progress=0;QuickDesktopController.onHostClosed();}
 void releaseForDetach(){} void setBackgroundSnapshots(android.graphics.Bitmap s,android.graphics.Bitmap b){} }
''',
        P + 'QuickDesktopBackgroundCapture.java': '''package com.smartisanos.launcher.quickdesktop;
import android.view.ViewGroup;
public class QuickDesktopBackgroundCapture {
 public static int requests; public static QuickDesktopHostView pending;
 static void schedule(ViewGroup r,QuickDesktopHostView h,long delay){requests++;pending=h;}
 static void cancel(String r){pending=null;}
 static void ready(){QuickDesktopHostView h=pending;pending=null;if(h!=null)QuickDesktopController.onBackgroundReady(h);}
}''',
        'com/smartisanos/launcher/theme/LauncherSettingBridge.java': '''package com.smartisanos.launcher.theme;
import android.content.Context; public class LauncherSettingBridge {
 public static boolean readBool(Context c,String k,boolean d){return d;} }''',
        'com/smartisanos/launcher/data/Constants.java': '''package com.smartisanos.launcher.data;
public class Constants {public static int status_bar_height=100;public static boolean sLeftScreenEnabled;
public static LayoutProperty mode(int i){return new LayoutProperty();}}''',
        'com/smartisanos/launcher/data/LayoutProperty.java': 'package com.smartisanos.launcher.data; public class LayoutProperty {}',
        'com/smartisanos/launcher/view/Eb.java': '''package com.smartisanos.launcher.view;
public class Eb {private static final Eb instance=new Eb();private Page px=new Page();
public static int displayMode=12,pageIndex;public static boolean editing;
public static Eb getInstance(){return instance;} public boolean isEditMode(){return editing;}
public static class Page {public int Dl(){return displayMode;}public int sr(){return pageIndex;}}}''',
        'com/smartisanos/launcher/view/x.java': '''package com.smartisanos.launcher.view;
import com.smartisanos.launcher.data.LayoutProperty;public class x {public static float d(LayoutProperty p){return 2200;}}''',
    }
    if args.generation:
        del sources[P + 'QuickDesktopBackgroundCapture.java']
    files = []
    for name, source in sources.items():
        path = out / 'src' / name
        path.parent.mkdir(parents=True, exist_ok=True)
        path.write_text(source, 'utf-8')
        files.append(path)
    probe = 'QuickDesktopCaptureGenerationProbe' if args.generation else 'QuickDesktopCaptureGateProbe'
    files.extend([ROOT / 'launcher/tools/java' / P / 'QuickDesktopController.java',
                  Path(__file__).with_name(probe + '.java')])
    if args.generation:
        files.append(ROOT / 'launcher/tools/java' / P / 'QuickDesktopBackgroundCapture.java')
    classes, dex = out / 'classes', out / 'dex'
    classes.mkdir(exist_ok=True)
    dex.mkdir(exist_ok=True)
    run([jdk / 'bin/javac.exe', '-encoding', 'UTF-8', '-source', '8', '-target', '8',
         '-bootclasspath', sdk / 'platforms/android-30/android.jar', '-d', classes, *files], 'compile.log')
    run([jdk / 'bin/jar.exe', 'cf', out / 'probe.jar', '-C', classes, '.'], 'jar.log')
    os.environ['JAVA_HOME'] = str(jdk)
    run([sdk / 'build-tools/36.0.0/d8.bat', '--min-api', '26', '--output', dex,
         out / 'probe.jar'], 'dex.log')
    adb = sdk / 'platform-tools/adb.exe'
    remote = '/data/local/tmp/smartisan-' + probe + '.dex'
    run([adb, '-s', args.serial, 'push', dex / 'classes.dex', remote], 'push.log')
    output = run([adb, '-s', args.serial, 'shell', f'CLASSPATH={remote} app_process /system/bin '
                  'com.smartisanos.launcher.quickdesktop.' + probe], 'device.log')
    assert ('PASS CAPTURE_GENERATION' if args.generation else 'PASS CAPTURE_GATE') in output, output
    print(output)
    root = (ROOT / 'launcher/smali/com/smartisanos/launcher/view/RootView.smali').read_text('utf-8')
    reveal = root[root.index('.method private a(FLandroid/view/MotionEvent;)V'):root.index('.method private e(')]
    assert reveal.index('->j(Landroid/view/MotionEvent;)V') < reveal.index('->onRootGestureCancelled()V') < reveal.index('->ng()V')
    assert '->hasCancelledRootGesture()Z' in root and ':quick_desktop_terminal_scene_done' in root
    renderer = (ROOT / 'launcher/smali/com/smartisanos/launcher/view/vc.smali').read_text('utf-8')
    frame = renderer[renderer.index('.method public onDrawFrame'):]
    assert frame.index('->takeGlCaptureGeneration()I') < frame.index('->update()V') < frame.index('->b(III)')
    print('PASS ROOT_CAPTURE_ORDER_STATIC=3; actual scene/window must be verified on device')


if __name__ == '__main__':
    main()
