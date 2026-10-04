"""Run extracted production startup-cleanup methods with real Android IO/MAIN.

The document-provider deletion and preferences are controlled fixtures. This does not
perform a real SAF backup/restore or touch the installed Launcher's data.
"""
import argparse
import json
import os
from pathlib import Path
import subprocess
import uuid

ROOT = Path(__file__).resolve().parents[3]
B = 'com/smartisanos/launcher/backup/'


def main():
    parser = argparse.ArgumentParser(__doc__)
    for name in ('serial', 'jdk', 'sdk', 'output'):
        parser.add_argument('--' + name, required=True)
    parser.add_argument('--baseline', type=Path)
    args = parser.parse_args()
    jdk, sdk, output = Path(args.jdk), Path(args.sdk), Path(args.output)
    output.mkdir(parents=True, exist_ok=True)
    classes, dex = output / 'classes', output / 'dex'
    classes.mkdir(exist_ok=True); dex.mkdir(exist_ok=True)
    path = args.baseline or ROOT / ('launcher/tools/java/' + B + 'DesktopBackupController.java')
    source = path.read_text('utf-8')
    methods = source[source.index('    public static void cleanupInterruptedBackup('):source.index('    private static void state(', source.index('    public static void cleanupInterruptedBackup('))]
    helper = '''package com.smartisanos.launcher.backup;
import android.content.Context;import android.net.Uri;import android.util.Log;
import java.io.File;import java.io.IOException;import java.util.UUID;
public final class DesktopBackupController {
public static final String PREFS="launcher_backup_settings",TAG="DesktopBackup";
public static class CancellationToken{public void throwIfCancelled()throws IOException{}}
private static void deleteDocumentQuietly(Context c,Uri u){try{BackupStartupCleanupProbe.deleteProvider(c,u);}catch(Throwable ignored){}}
''' + methods + '\n}\n'
    helper_path = output / 'src' / B / 'DesktopBackupController.java'
    helper_path.parent.mkdir(parents=True, exist_ok=True)
    helper_path.write_text(helper, 'utf-8')
    files = [helper_path, Path(__file__).with_name('BackupStartupCleanupProbe.java')]
    files += [ROOT / ('launcher/tools/java/' + B + n + '.java') for n in ('BackupOperationJournal', 'BackupOperationLock', 'BackupFileUtils')]

    def run(command, name=None):
        result = subprocess.run(list(map(str, command)), capture_output=True, text=True,
                                encoding='utf-8', errors='replace', timeout=60)
        if name:
            (output / (name + '.log')).write_text(result.stdout + result.stderr, 'utf-8')
        if result.returncode:
            raise RuntimeError(result.stdout + result.stderr)
        return result.stdout
    run([jdk/'bin/javac.exe', '-encoding', 'UTF-8', '-source', '8', '-target', '8',
         '-bootclasspath', sdk/'platforms/android-30/android.jar', '-d', classes, *files], 'compile')
    run([jdk/'bin/jar.exe', 'cf', output/'probe.jar', '-C', classes, '.'])
    os.environ['JAVA_HOME'] = str(jdk)
    run([sdk/'build-tools/36.0.0/d8.bat', '--min-api', '26', '--output', dex, output/'probe.jar'], 'dex')
    adb = sdk/'platform-tools/adb.exe'
    def device(*command): return run([adb, '-s', args.serial, *command])
    remote = '/data/local/tmp/smartisan-backup-startup-' + uuid.uuid4().hex
    device('shell', 'mkdir', remote); device('push', dex/'classes.dex', remote+'/probe.dex')
    before = device('shell', 'pidof', 'com.smartisanos.launcher').strip()
    mode = 'baseline' if args.baseline else 'fixed'
    command = f'CLASSPATH={remote}/probe.dex app_process /system/bin com.smartisanos.launcher.backup.BackupStartupCleanupProbe {remote} {mode}'
    result = run([adb, '-s', args.serial, 'shell', command], 'probe')
    after = device('shell', 'pidof', 'com.smartisanos.launcher').strip()
    expected = 'BASELINE_BACKUP_STARTUP_PROVIDER_ON_MAIN' if args.baseline else 'PASS BACKUP_STARTUP_CLEANUP_CHECKS='
    assert expected in result, result
    report = dict(serial=args.serial, sdk=device('shell','getprop','ro.build.version.sdk').strip(),
                  result=result.strip(), launcher_pid_before=before, launcher_pid_after=after,
                  scope='production cleanup methods extracted unchanged; real Looper/AtomicFile/JSON/files/operation gate; controlled provider/prefs; no installed app data')
    (output/'summary.json').write_text(json.dumps(report,ensure_ascii=False,indent=2),'utf-8')
    guard=(ROOT/('launcher/tools/java/'+B+'RestoreRecoveryGuard.java')).read_text('utf-8')
    assert guard.index('cleanupInterruptedBackup(context)') < guard.index('acquireRestoreWriter(context)')
    wiring=(ROOT/'launcher/smali/com/smartisanos/launcher/ja.1.smali').read_text('utf-8')
    assert wiring.index('->beforeLauncherDatabaseInit(') < wiring.index('Lcom/smartisanos/launcher/data/C;->init(')
    print(result.strip()); print(f'Launcher PID {before} -> {after}; startup database safety gate still precedes stock init')


if __name__ == '__main__': main()
