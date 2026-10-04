"""Run real Android journal IO in an isolated app_process, never the installed Launcher.

Production Journal/Controller/RecoveryGuard are compiled unchanged. Archive/DB/UI/prefs
are isolated doubles reused from run_tests.py; this does not prove full desktop restore.
"""
import argparse
import json
import os
from pathlib import Path
import subprocess
import sys
import uuid

sys.dont_write_bytecode = True
from run_tests import ROOT, PACKAGE, SOURCES


def main():
    parser = argparse.ArgumentParser(__doc__)
    for key in ('serial', 'jdk', 'sdk', 'output'):
        parser.add_argument('--' + key, required=True)
    parser.add_argument('--build-only', action='store_true')
    args = parser.parse_args()
    jdk, sdk, output = Path(args.jdk), Path(args.sdk), Path(args.output)
    output.mkdir(parents=True, exist_ok=True)
    classes, dex = output / 'classes', output / 'dex'
    classes.mkdir(exist_ok=True)
    dex.mkdir(exist_ok=True)

    def run(command, *, expected=(0,), log=None):
        result = subprocess.run([str(item) for item in command], capture_output=True,
                                text=True, encoding='utf-8', errors='replace', timeout=60)
        if log:
            (output / log).write_text(result.stdout + result.stderr, encoding='utf-8')
        if result.returncode not in expected:
            raise RuntimeError(f'Command failed ({result.returncode}): {result.stdout}\n{result.stderr}')
        return result.stdout

    files = []
    for name, source in SOURCES.items():
        if name.startswith(('android/', 'org/json/')) or name.endswith('/CheckpointTest.java'):
            continue
        if name.endswith('/Effects.java'):
            source = source.replace('public static File lastArchive;', 'public static volatile Thread importThread,toastThread;public static Runnable onToast;public static File lastArchive;')
        if name.endswith('/MaintainedLauncherSettingsHost.java'):
            source = source.replace('Effects.events.add("TOAST:"+s);', 'Effects.toastThread=Thread.currentThread();Effects.events.add("TOAST:"+s);if(Effects.onToast!=null)Effects.onToast.run();')
        if name.endswith('/LayoutSnapshotImporter.java'):
            source = source.replace('Effects.events.add("DB");', 'Effects.importThread=Thread.currentThread();Effects.events.add("DB");')
        path = output / 'src' / name
        path.parent.mkdir(parents=True, exist_ok=True)
        path.write_text(source, encoding='utf-8')
        files.append(path)
    for name in ('RestoreOperationJournal', 'DesktopRestoreController', 'RestoreRecoveryGuard',
                 'BackupOperationLock', 'BackupFileUtils', 'BackupRestoreResult'):
        files.append(ROOT / 'launcher/tools/java' / PACKAGE / (name + '.java'))
    files.append(Path(__file__).with_name('DeviceCheckpointProbe.java'))
    files.append(Path(__file__).with_name('RestoreLeaseProbe.java'))
    run([jdk / 'bin/javac.exe', '-encoding', 'UTF-8', '-source', '8', '-target', '8',
         '-bootclasspath', sdk / 'platforms/android-30/android.jar', '-d', classes, *files], log='compile.log')
    run([jdk / 'bin/jar.exe', 'cf', output / 'probe.jar', '-C', classes, '.'])
    os.environ['JAVA_HOME'] = str(jdk)
    run([sdk / 'build-tools/36.0.0/d8.bat', '--min-api', '26', '--output', dex, output / 'probe.jar'], log='dex.log')
    if args.build_only:
        print('Built isolated restore probes; no device operation')
        return
    adb = sdk / 'platform-tools/adb.exe'

    def device(*command, **kwargs):
        return run([adb, '-s', args.serial, *command], **kwargs)

    # Unique workspace contains only this probe's generated files; no install/data reset.
    remote = '/data/local/tmp/smartisan-restore-journal-f04-' + uuid.uuid4().hex
    device('shell', 'mkdir', remote)
    device('push', dex / 'classes.dex', remote + '/probe.dex')
    identity = device('shell', 'getprop', 'ro.build.version.sdk').strip()
    before = device('shell', 'pidof', 'com.smartisanos.launcher', expected=(0, 1)).strip()
    command = f'CLASSPATH={remote}/probe.dex app_process /system/bin com.smartisanos.launcher.backup.DeviceCheckpointProbe {remote}'
    platform = device('shell', command + ' platform', log='platform.log')
    assert 'PASS ANDROID_PLATFORM_CHECKS=' in platform, platform
    worker = device('shell', command + ' worker', log='worker.log')
    assert 'PASS ANDROID_WORKER_CHECKS=' in worker, worker
    cleanup = device('shell', command + ' cleanup', log='cleanup.log')
    assert 'PASS ANDROID_CLEANUP_CHECKS=' in cleanup, cleanup
    device('shell', command + ' seed', expected=(137, -9), log='sigkill.log')
    assert device('shell', 'cat', remote + '/kill.marker').strip() == 'checkpoint-ready'
    restart = device('shell', command + ' restart', log='restart.log')
    assert 'PASS PROCESS_RESTART_CHECKS=' in restart, restart
    device('shell', command + ' seed', expected=(137, -9), log='guard-sigkill.log')
    guard = device('shell', command + ' guard-restart', log='guard-restart.log')
    assert 'PASS PROCESS_RESTART_CHECKS=' in guard, guard
    device('shell', command + ' torn-seed', expected=(137, -9), log='torn-sigkill.log')
    assert device('shell', 'cat', remote + '/kill.marker').strip() == 'atomic-write-in-progress'
    torn = device('shell', command + ' torn-restart', log='torn-restart.log')
    assert 'PASS TORN_WRITE_RESTART_CHECKS=' in torn, torn
    after = device('shell', 'pidof', 'com.smartisanos.launcher', expected=(0, 1)).strip()
    (output / 'summary.json').write_text(json.dumps({
        'serial': args.serial, 'sdk': identity, 'workspace': remote,
        'launcher_pid_before': before, 'launcher_pid_after': after,
        'platform_result': platform.strip().splitlines()[-1],
        'worker_result': worker.strip().splitlines()[-1],
        'cleanup_result': cleanup.strip().splitlines()[-1],
        'restart_result': restart.strip().splitlines()[-1],
        'guard_result': guard.strip().splitlines()[-1],
        'torn_write_result': torn.strip().splitlines()[-1],
        'scope': 'real Android MAIN Handler/Looper worker callbacks, writer lease, AtomicFile/JSON/EACCES, post-checkpoint and unfinished platform write SIGKILL; imports/UI/prefs are doubles',
        'installed_apk': False, 'desktop_data_accessed': False,
    }, ensure_ascii=False, indent=2), encoding='utf-8')
    print(platform.strip().splitlines()[-1])
    print(worker.strip().splitlines()[-1])
    print(cleanup.strip().splitlines()[-1])
    print(restart.strip().splitlines()[-1])
    print(guard.strip().splitlines()[-1])
    print(torn.strip().splitlines()[-1])
    print(f'Launcher PID before={before} after={after}; no APK installed; evidence={output}')


if __name__ == '__main__':
    main()
