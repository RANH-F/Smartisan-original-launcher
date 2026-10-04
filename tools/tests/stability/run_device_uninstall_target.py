"""Run actual UninstallCompat with real Android Intent parceling, never launch an uninstaller."""
import argparse
import json
import os
from pathlib import Path
import subprocess
import uuid

from test_uninstall_bridge import ROOT, STUBS


def main():
    parser = argparse.ArgumentParser(__doc__)
    for key in ('jdk', 'sdk', 'serial', 'output'):
        parser.add_argument('--' + key, required=True)
    parser.add_argument('--baseline', action='store_true')
    args = parser.parse_args()
    output, jdk, sdk = Path(args.output), Path(args.jdk), Path(args.sdk)
    output.mkdir(parents=True, exist_ok=True)

    def run(command, log=None):
        result = subprocess.run([str(v) for v in command], capture_output=True, text=True,
                                encoding='utf-8', errors='replace', timeout=60)
        if log:
            (output / log).write_text(result.stdout + result.stderr, encoding='utf-8')
        if result.returncode:
            raise RuntimeError(result.stdout + result.stderr)
        return result.stdout

    fixtures = {k: v for k, v in STUBS.items() if not k.startswith('android/') and k != 'CheckBridge.java'}
    fixtures['com/smartisanos/launcher/ja.java'] = '''package com.smartisanos.launcher;
import android.content.*;import android.os.Parcel;import java.util.*;
public class ja {public static Capture context=new Capture();public static ja getInstance(){return new ja();}
 public Context getApplication(){return context;}
 public static class Capture extends ContextWrapper{public int calls,failures;public List<Intent> intents=new ArrayList<>();
  public Capture(){super(null);}public Context getApplicationContext(){return this;}
  public void startActivity(Intent i){calls++;Parcel p=Parcel.obtain(),q=Parcel.obtain();
   try{i.writeToParcel(p,0);byte[] b=p.marshall();q.unmarshall(b,0,b.length);q.setDataPosition(0);
    intents.add(Intent.CREATOR.createFromParcel(q));}finally{p.recycle();q.recycle();}
   if(failures-->0)throw new IllegalStateException("fixture launch unavailable");}
 }}'''
    fixtures['com/smartisanos/launcher/model/ProfileRepository.java'] = '''package com.smartisanos.launcher.model;
import android.content.Context;import android.os.UserHandle;
public class ProfileRepository{public static int current;public static boolean unresolved,unknownSerial;
 public ProfileRepository(Context c){}public UserHandle userForLegacyId(int i){if(unresolved)return null;
 try{return UserHandle.class.getConstructor(int.class).newInstance(i==0?current:i);}catch(Exception e){return null;}}
 public long serialFor(UserHandle u){return unknownSerial||u==null?-1:1000;}}'''
    sources = []
    for name, source in fixtures.items():
        path = output / 'src' / name
        path.parent.mkdir(parents=True, exist_ok=True)
        path.write_text(source, encoding='utf-8')
        sources.append(path)
    relative = 'launcher/tools/java/com/smartisanos/launcher/compat/UninstallCompat.java'
    production = ROOT / relative
    if args.baseline:
        production = output / 'src/UninstallCompat.java'
        production.write_text(run(['git', '-C', ROOT, 'show', 'HEAD:' + relative]), encoding='utf-8')
    sources.extend([production, Path(__file__).with_name('UninstallTargetProbe.java')])
    classes, dex = output / 'classes', output / 'dex'
    classes.mkdir(exist_ok=True); dex.mkdir(exist_ok=True)
    run([jdk / 'bin/javac.exe', '-encoding', 'UTF-8', '-source', '8', '-target', '8',
         '-bootclasspath', sdk / 'platforms/android-30/android.jar', '-d', classes, *sources], 'compile.log')
    run([jdk / 'bin/jar.exe', 'cf', output / 'probe.jar', '-C', classes, '.'])
    os.environ['JAVA_HOME'] = str(jdk)
    run([sdk / 'build-tools/36.0.0/d8.bat', '--min-api', '26', '--output', dex, output / 'probe.jar'], 'dex.log')
    adb = sdk / 'platform-tools/adb.exe'
    def device(*command):
        return run([adb, '-s', args.serial, *command])
    remote = '/data/local/tmp/smartisan-uninstall-target-f01-' + uuid.uuid4().hex
    before = device('shell', 'pidof', 'com.smartisanos.launcher').strip()
    device('shell', 'mkdir', remote)
    device('push', dex / 'classes.dex', remote + '/probe.dex')
    mode = 'baseline' if args.baseline else 'fixed'
    result = device('shell', f'CLASSPATH={remote}/probe.dex app_process /system/bin com.smartisanos.launcher.compat.UninstallTargetProbe {mode}')
    (output / 'device.log').write_text(result, encoding='utf-8')
    expected = 'BASELINE_ANDROID_CLONE_DISPATCH_LOST_USER' if args.baseline else 'PASS ANDROID_UNINSTALL_TARGET_CHECKS='
    assert expected in result, result
    after = device('shell', 'pidof', 'com.smartisanos.launcher').strip()
    (output / 'summary.json').write_text(json.dumps(dict(mode=mode, workspace=remote,
        launcher_pid_before=before, launcher_pid_after=after, result=result.strip().splitlines()[-1],
        installed_apk=False, launched_uninstaller=False,
        scope='real Android Intent/Parcel/UserHandle; profile/model and GL dispatch are fixtures; toast queue not rendered'), indent=2), encoding='utf-8')
    print(result.strip().splitlines()[-1])
    print(f'Launcher PID before={before} after={after}; evidence={output}')


if __name__ == '__main__':
    main()
