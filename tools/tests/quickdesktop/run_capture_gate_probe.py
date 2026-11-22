"""Exercise the production controller with Android MotionEvents and controlled host/capture."""
import argparse
import os
import re
from pathlib import Path
import subprocess

ROOT = Path(__file__).resolve().parents[3]
P = 'com/smartisanos/launcher/quickdesktop/'


def main():
    parser = argparse.ArgumentParser(__doc__)
    for key in ('serial', 'jdk', 'sdk', 'output'):
        parser.add_argument('--' + key, required=True)
    parser.add_argument('--generation', action='store_true')
    parser.add_argument('--blur', action='store_true')
    parser.add_argument('--workspace', action='store_true')
    parser.add_argument('--close-only', action='store_true')
    parser.add_argument('--controller-source', type=Path)
    parser.add_argument('--blur-reference-source', type=Path)
    parser.add_argument('--capture-source', type=Path)
    parser.add_argument('--renderer-source', type=Path)
    args = parser.parse_args()
    if args.close_only and (args.generation or args.blur or args.workspace):
        parser.error('--close-only applies to the capture gate probe')
    out, jdk, sdk = Path(args.output), Path(args.jdk), Path(args.sdk)
    out.mkdir(parents=True, exist_ok=True)

    renderer_path = args.renderer_source or ROOT / 'launcher/smali/com/smartisanos/launcher/view/vc.smali'
    renderer = renderer_path.read_text('utf-8')
    frame_start = renderer.index('.method public onDrawFrame')
    frame = renderer[frame_start:renderer.index('.end method', frame_start)]
    claim = frame.index('->takeGlCaptureGeneration()I')
    update = frame.index('->update()V')
    capture = frame.index('->b(III)')
    guard = frame.find('->isGlCaptureCurrent(I)Z')
    assert claim < update < guard < capture, 'stale capture must be checked after scene update and before readback'
    assert 'if-eqz p1, :quick_desktop_capture_done' in frame[guard:capture]
    publish = frame.find('->publishWorkspaceState(Ljava/lang/Object;II)V')
    assert update < frame.index('->sr()I') < publish < guard, 'workspace geometry must be sampled by GL after update'

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
 void releaseForDetach(){progress=0;} void setBackgroundSnapshots(android.graphics.Bitmap s,android.graphics.Bitmap b){} }
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
public static int displayMode=12,pageIndex,geometryReads;public static boolean editing;
public static Object page(){return instance.px;}public static void replacePage(){instance.px=new Page();}
public static void publishProbeFrame(){try{
 Class.forName("com.smartisanos.launcher.quickdesktop.QuickDesktopController")
 .getMethod("publishWorkspaceState",Object.class,int.class,int.class).invoke(null,instance.px,pageIndex,displayMode);
}catch(NoSuchMethodException oldSource){}catch(Exception e){throw new AssertionError(e);}}
public static Eb getInstance(){return instance;} public boolean isEditMode(){return editing;}
public static class Page {public int Dl(){return displayMode;}public int sr(){geometryReads++;return pageIndex;}}}''',
        'com/smartisanos/launcher/view/x.java': '''package com.smartisanos.launcher.view;
import com.smartisanos.launcher.data.LayoutProperty;public class x {public static float d(LayoutProperty p){return 2200;}}''',
    }
    if args.generation or args.blur:
        del sources[P + 'QuickDesktopBackgroundCapture.java']
    files = []
    for name, source in sources.items():
        path = out / 'src' / name
        path.parent.mkdir(parents=True, exist_ok=True)
        path.write_text(source, 'utf-8')
        files.append(path)
    probe = ('QuickDesktopWorkspaceSnapshotProbe' if args.workspace else
             'QuickDesktopBlurProbe' if args.blur else
             'QuickDesktopCaptureGenerationProbe' if args.generation else 'QuickDesktopCaptureGateProbe')
    controller_source = args.controller_source or ROOT / 'launcher/tools/java' / P / 'QuickDesktopController.java'
    if args.controller_source:
        controller_text = controller_source.read_text('utf-8')
        controller_source = out / 'QuickDesktopController.java'
        controller_source.write_text(controller_text, 'utf-8')
    files.extend([controller_source,
                  Path(__file__).with_name(probe + '.java')])
    if args.generation or args.blur:
        capture_source = args.capture_source or ROOT / 'launcher/tools/java' / P / 'QuickDesktopBackgroundCapture.java'
        if args.capture_source:
            capture_text = capture_source.read_text('utf-8')
            capture_source = out / 'QuickDesktopBackgroundCapture.java'
            capture_source.write_text(capture_text, 'utf-8')
        files.append(capture_source)
        if args.blur:
            reference_path = args.blur_reference_source or Path(__file__).with_name('QuickDesktopBlurReference.java.txt')
            current, reference = capture_source.read_text('utf-8'), reference_path.read_text('utf-8')
            for name, source, counted in [('ReferenceBlur', reference, False),
                                          ('ReferenceBlurWork', reference, True),
                                          ('CurrentBlurWork', current, True)]:
                start = source.index('    private static void blur(Bitmap bitmap, int radius, int passes) {')
                kernel = source[start:source.rfind('}')].replace('private static void blur(', 'static void blur(', 1)
                if counted:
                    kernel = re.sub(r'\b([argb]|value) / diameter\b', r'divide(\1, diameter)', kernel)
                path = out / (name + '.java')
                path.write_text('package com.smartisanos.launcher.quickdesktop;\nimport android.graphics.Bitmap;\n'
                                'final class ' + name + ' { static int divisionCalls;\n'
                                'static int divide(int value,int diameter){divisionCalls++;return value/diameter;}\n'
                                + kernel + '}\n', 'utf-8')
                files.append(path)
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
                  'com.smartisanos.launcher.quickdesktop.' + probe
                  + (' --close-only' if args.close_only else '')], 'device.log')
    expected = ('PASS CAPTURE_GATE_CLOSE_ONLY' if args.close_only else
                'PASS WORKSPACE_SNAPSHOT' if args.workspace else
                'PASS BLUR_KERNEL' if args.blur else
                'PASS CAPTURE_GENERATION' if args.generation else 'PASS CAPTURE_GATE')
    assert expected in output, output
    print(output)
    root = (ROOT / 'launcher/smali/com/smartisanos/launcher/view/RootView.smali').read_text('utf-8')
    reveal = root[root.index('.method private a(FLandroid/view/MotionEvent;)V'):root.index('.method private e(')]
    assert reveal.index('->j(Landroid/view/MotionEvent;)V') < reveal.index('->onRootGestureCancelled()V') < reveal.index('->ng()V')
    assert '->hasCancelledRootGesture()Z' in root and ':quick_desktop_terminal_scene_done' in root
    print('PASS ROOT_CAPTURE_ORDER_STATIC=4; actual scene/window must be verified on device')


if __name__ == '__main__':
    main()
