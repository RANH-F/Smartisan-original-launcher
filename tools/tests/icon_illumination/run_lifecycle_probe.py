"""Run real Aa C/E/F/b and ItemInfo.Pe with production cache in an isolated Android process.

Application/preferences are fixtures. Only the four named Smali methods are extracted;
the complete APK build separately checks their integration. No device app is installed.
"""
import argparse
import json
import os
from pathlib import Path
import subprocess
import threading
import uuid

ROOT = Path(__file__).resolve().parents[3]
P = 'com/smartisanos/launcher/theme/'
METHODS = ['.method public static C(Ljava/lang/String;)V', '.method public static E(Ljava/lang/String;)V',
           '.method public static F(Ljava/lang/String;)V', '.method public static b(Lcom/smartisanos/launcher/data/ItemInfo;)V']


def method(source, signature):
    start = source.index(signature)
    return source[start:source.index('.end method', start) + len('.end method')]


def main():
    parser = argparse.ArgumentParser(__doc__)
    for key in ('serial', 'jdk', 'sdk', 'output'):
        parser.add_argument('--' + key, required=True)
    parser.add_argument('--baseline', action='store_true')
    args = parser.parse_args()
    out, jdk, sdk = Path(args.output), Path(args.jdk), Path(args.sdk)
    out.mkdir(parents=True, exist_ok=True)

    def run(command, log=None, timeout=60):
        result = subprocess.run([str(v) for v in command], capture_output=True, text=True,
                                encoding='utf-8', errors='replace', timeout=timeout)
        if log:
            (out / log).write_text(result.stdout + result.stderr, encoding='utf-8')
        if result.returncode:
            raise RuntimeError(result.stdout + result.stderr)
        return result.stdout

    paths = []
    fixtures = {
        P + 'DefaultIconCircleRenderer.java': 'package com.smartisanos.launcher.theme;public class DefaultIconCircleRenderer {public static final String PREFS="fixture";}',
        P + 'MaintainedLauncherSettingsHost.java': 'package com.smartisanos.launcher.theme;public class MaintainedLauncherSettingsHost {public static android.content.Context currentApplicationContext(){return ProjectionCacheProbe.context;}}',
        'com/smartisanos/launcher/ja.java': '''package com.smartisanos.launcher;
public class ja { public static ja getInstance(){return new ja();}
 public android.app.Application getApplication(){return new android.app.Application(){
  public java.io.File getFilesDir(){return com.smartisanos.launcher.theme.ProjectionCacheProbe.context.getFilesDir();}};}}''',
        'com/smartisanos/launcher/va.java': 'package com.smartisanos.launcher;public class va {public void u(String message){android.util.Log.i("AaFixture",message);}}',
    }
    for name, content in fixtures.items():
        path = out / 'src' / name
        path.parent.mkdir(parents=True, exist_ok=True)
        path.write_text(content, encoding='utf-8')
        paths.append(path)
    owner = ROOT / 'launcher/tools/java' / P / 'IconIlluminationCompat.java'
    aa = ROOT / 'launcher/smali/com/smartisanos/launcher/Aa.smali'
    if args.baseline:
        owner = ROOT / 'build/f08-projection-lifecycle-20261003/Owner.before.java'
        aa = ROOT / 'build/f08-projection-lifecycle-20261003/Aa.before.smali'
    # javac requires the public class filename regardless of the preserved snapshot name.
    selected = out / 'src' / P / 'IconIlluminationCompat.java'
    selected.write_text(owner.read_text(encoding='utf-8'), encoding='utf-8')
    paths += [selected, ROOT / 'launcher/tools/java' / P / 'IconProjectionBlur.java',
              Path(__file__).with_name('ProjectionCacheProbe.java'),
              Path(__file__).with_name('ProjectionLifecycleProbe.java')]
    classes, dex = out / 'classes', out / 'dex'
    classes.mkdir(exist_ok=True)
    dex.mkdir(exist_ok=True)
    os.environ['JAVA_HOME'] = str(jdk)

    def compile_probe(destination):
        run([jdk / 'bin/javac.exe', '-encoding', 'UTF-8', '-source', '8', '-target', '8',
             '-bootclasspath', sdk / 'platforms/android-30/android.jar', '-d', classes, *paths], 'compile.log')
        run([jdk / 'bin/jar.exe', 'cf', out / 'probe.jar', '-C', classes, '.'])
        run([sdk / 'build-tools/36.0.0/d8.bat', '--min-api', '26', '--output', destination, out / 'probe.jar'], 'dex.log')

    compile_probe(dex)
    smali = out / 'smali'
    smali.mkdir(exist_ok=True)
    aa_text = aa.read_text(encoding='utf-8')
    aa_path = smali / 'Aa.smali'
    aa_path.write_text('''.class public Lcom/smartisanos/launcher/Aa;
.super Ljava/lang/Object;
.field private static log:Lcom/smartisanos/launcher/va;
.method static constructor <clinit>()V
 .locals 1
 new-instance v0, Lcom/smartisanos/launcher/va;
 invoke-direct {v0}, Lcom/smartisanos/launcher/va;-><init>()V
 sput-object v0, Lcom/smartisanos/launcher/Aa;->log:Lcom/smartisanos/launcher/va;
 return-void
.end method
''' + '\n'.join(method(aa_text, signature) for signature in METHODS), encoding='utf-8')
    item_path = smali / 'ItemInfo.smali'
    item_path.write_text('''.class public Lcom/smartisanos/launcher/data/ItemInfo;
.super Ljava/lang/Object;
.field public packageName:Ljava/lang/String;
.field public componentName:Ljava/lang/String;
.field public userId:I
.method public constructor <init>()V
 .locals 0
 invoke-direct {p0}, Ljava/lang/Object;-><init>()V
 return-void
.end method
''' + method((ROOT / 'launcher/smali/com/smartisanos/launcher/data/ItemInfo.smali').read_text(encoding='utf-8'),
             '.method public Pe()Ljava/lang/String;'), encoding='utf-8')
    assembler = out / 'AssembleRemoval.java'
    assembler.write_text('''import java.io.File;import brut.androlib.smali.SmaliBuilder;
import com.android.tools.smali.dexlib2.Opcodes;import com.android.tools.smali.dexlib2.writer.builder.DexBuilder;
import com.android.tools.smali.dexlib2.writer.io.FileDataStore;
public class AssembleRemoval {public static void main(String[] args)throws Exception{
 DexBuilder dex=new DexBuilder(new Opcodes(28));SmaliBuilder builder=new SmaliBuilder(28);
 for(int i=1;i<args.length;i++)if(!builder.buildFile(new File(args[i]),dex))throw new AssertionError(args[i]);
 FileDataStore data=new FileDataStore(new File(args[0]));dex.writeTo(data);data.raf.close();}}''', encoding='utf-8')
    apktool = ROOT / 'tools/apktool.jar'
    run([jdk / 'bin/javac.exe', '-cp', apktool, '-d', out, assembler])
    run([jdk / 'bin/java.exe', '-cp', str(out) + os.pathsep + str(apktool), 'AssembleRemoval',
         out / 'removal.dex', aa_path, item_path], 'smali.log')
    adb = sdk / 'platform-tools/adb.exe'

    def device(*command):
        return run([adb, '-s', args.serial, *command])

    token = uuid.uuid4().hex
    remote = '/data/local/tmp/smartisan-projection-f08-' + token
    device('shell', 'mkdir', remote)
    device('push', dex / 'classes.dex', remote + '/probe.dex')
    device('push', out / 'removal.dex', remote + '/removal.dex')
    before = device('shell', 'pidof', 'com.smartisanos.launcher').strip()
    prefix = f'CLASSPATH={remote}/removal.dex:{remote}/probe.dex app_process /system/bin'
    classname = 'com.smartisanos.launcher.theme.ProjectionLifecycleProbe'
    results = []

    def phase(name, expected, device_dex='probe.dex'):
        command = prefix.replace('/probe.dex', '/' + device_dex) + f' {classname} {remote} {name}'
        output = run([adb, '-s', args.serial, 'shell', command], name + '.log')
        assert expected in output, output
        results.append(next(s for s in output.splitlines() if s.startswith(expected)))

    if args.baseline:
        phase('baseline', 'BASELINE_F08_')
        phase('seed', 'RESTART_SEED_READY')
    else:
        phase('cases', 'PASS PROJECTION_LIFECYCLE_CHECKS=')
        phase('seed', 'RESTART_SEED_READY')
        phase('reuse', 'RESTART_VERSIONED_DISK_REUSE=PASS')
        # Compile a version-only change to prove that disk records are rejected by a new APK.
        version_dex = out / 'version-dex'
        version_dex.mkdir(exist_ok=True)
        text = selected.read_text(encoding='utf-8')
        assert text.count('projection:v3-skia10-adreno-contact') == 1
        selected.write_text(text.replace('projection:v3-skia10-adreno-contact', 'fixture-next-projection-version'), encoding='utf-8')
        compile_probe(version_dex)
        device('push', version_dex / 'classes.dex', remote + '/next-version.dex')
        phase('new-version', 'RESTART_NEW_VERSION_REGENERATED=PASS', 'next-version.dex')
        name = 'smartisan-f08-' + token
        command = prefix + f' --nice-name={name} {classname} {remote} partial'
        process = subprocess.Popen([str(adb), '-s', args.serial, 'shell', command], stdout=subprocess.PIPE,
                                   stderr=subprocess.STDOUT, text=True, encoding='utf-8', errors='replace')
        lines, ready = [], threading.Event()

        def reader():
            for line in process.stdout:
                lines.append(line)
                if 'PARTIAL_WRITE_READY' in line:
                    ready.set()

        worker = threading.Thread(target=reader, daemon=True)
        worker.start()
        assert ready.wait(20), 'partial fixture did not reach checkpoint'
        pid = device('shell', 'pidof', name).strip()
        assert pid.isdecimal(), pid
        device('shell', 'kill', '-9', pid)
        process.wait(timeout=10)
        worker.join(timeout=2)
        (out / 'partial-killed.log').write_text(''.join(lines), encoding='utf-8')
        phase('repair', 'RESTART_PARTIAL_REPAIR=PASS')
    after = device('shell', 'pidof', 'com.smartisanos.launcher').strip()
    report = dict(serial=args.serial, workspace=remote, launcher_pid_before=before,
                  launcher_pid_after=after, results=results, installed_app=False,
                  scope='actual four Aa methods and Pe, complete production cache, Android PNG/IO; isolated context/preferences; interrupted-cache fixture, no user desktop mutation')
    (out / 'summary.json').write_text(json.dumps(report, indent=2), encoding='utf-8')
    print('\n'.join(results))
    print(f'Launcher PID before={before} after={after}')


if __name__ == '__main__':
    main()
