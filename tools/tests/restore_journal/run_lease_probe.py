"""Verify Android cross-process startup recovery leases without touching Launcher data.

Production lock/guard/controller/journal run unchanged. Archive/import/prefs are fixtures;
the timings measure a controlled wait, not real restore performance or ANR thresholds.
"""
import argparse
import hashlib
import json
from pathlib import Path
import subprocess
import time
import uuid

ROOT = Path(__file__).resolve().parents[3]


def main():
    parser = argparse.ArgumentParser(__doc__)
    for name in ('serial', 'jdk', 'sdk', 'output'):
        parser.add_argument('--' + name, required=True)
    args = parser.parse_args()
    output = Path(args.output); output.mkdir(parents=True, exist_ok=True)
    subprocess.run(['python', str(Path(__file__).with_name('run_device_tests.py')),
                    '--serial', args.serial, '--jdk', args.jdk, '--sdk', args.sdk,
                    '--output', str(output/'build'), '--build-only'], check=True)
    adb = str(Path(args.sdk)/'platform-tools/adb.exe')
    def device(*command):
        result = subprocess.run([adb, '-s', args.serial, *command], capture_output=True, timeout=20)
        if result.returncode: raise RuntimeError(result.stderr.decode('utf-8', 'replace'))
        return result.stdout
    before = device('shell','pidof','com.smartisanos.launcher').decode().strip()
    remote = '/data/local/tmp/smartisan-restore-lease-' + uuid.uuid4().hex
    device('shell','mkdir',remote); device('push',str(output/'build/dex/classes.dex'),remote+'/probe.dex')
    command = f'CLASSPATH={remote}/probe.dex app_process /system/bin com.smartisanos.launcher.backup.RestoreLeaseProbe'
    cases = [('commit', 'APPLYING_PREFERENCES', 'COMMITTED', False, False),
             ('rolled-back', 'APPLYING_ICONS', 'ROLLED_BACK', False, False)]
    cases += [('kill-'+phase.lower(), phase, phase, True, True) for phase in
              ('WAITING_TRANSITION','APPLYING_DATABASE','DATABASE_COMMITTED','APPLYING_PREFERENCES','APPLYING_ICONS','VERIFYING','ROLLING_BACK')]
    cases += [('kill-'+phase.lower(), phase, phase, True, False) for phase in ('COMMITTED','CLEANING')]
    results=[]; parent_checks=0
    def check(condition, label):
        nonlocal parent_checks
        parent_checks += 1
        if not condition: raise AssertionError(label)
    for name,phase,terminal,kill,rollback in cases:
        case=remote+'/'+name; device('shell','mkdir',case)
        journal=case+'/data/files/backup_restore/restore_journal.json'
        processes=[];logs=[]
        try:
            for kind, extra in [('writer', phase+' '+terminal), ('guard',str(rollback).lower())]:
                log=(output/(name+'-'+kind+'.log')).open('wb');logs.append(log)
                process=subprocess.Popen([adb,'-s',args.serial,'shell',f'{command} {case} {kind} {extra}'],stdout=log,stderr=subprocess.STDOUT)
                processes.append(process)
                marker=case+('/writer.ready' if kind=='writer' else '/guard.entered')
                deadline=time.monotonic()+10
                while time.monotonic()<deadline:
                    if process.poll() is not None: raise AssertionError('probe exited before '+marker)
                    if device('shell',f'if [ -f {marker} ]; then cat {marker}; fi').strip():break
                    time.sleep(.05)
                else:raise AssertionError('marker timeout '+marker)
            writer,guard=processes
            writer_pid=device('shell','cat',case+'/writer.ready').decode().strip()
            check(writer_pid.isdigit() and writer_pid not in before.split(), 'target is isolated writer, never Launcher')
            cmdline=device('shell','cat','/proc/'+writer_pid+'/cmdline')
            check(b'RestoreLeaseProbe' in cmdline and case.encode() in cmdline, 'writer process belongs to this fixture')
            checkpoint=device('shell','cat',journal)
            check(json.loads(checkpoint)['state']==phase, 'durable initial checkpoint')
            # Keep the lease held long enough to observe queued MAIN work still pending.
            time.sleep(.25)
            check(not device('shell',f'if [ -f {case}/guard.returned ]; then echo yes; fi').strip(), 'guard cannot return during active writer')
            check(not device('shell',f'if [ -f {case}/main.heartbeat ]; then echo yes; fi').strip(), 'MAIN queue waits at safety gate')
            check(device('shell','cat',journal)==checkpoint, 'waiting guard performs no checkpoint writes')
            check(device('shell',f'if [ -f {case}/data/cache/staging/source.slauncherbackup ]; then echo yes; fi').strip()==b'yes', 'source remains while writer owns lease')
            if kill:device('shell','kill','-9',writer_pid)
            else:device('shell','touch',case+'/release')
            writer_code=writer.wait(timeout=10); guard_code=guard.wait(timeout=10)
            check(writer_code in ((137,-9) if kill else (0,)), 'writer finishes or is killed as intended')
            check(guard_code==0, 'guard completes after process lock release')
            for log in logs:log.flush()
            result_text=(output/(name+'-guard.log')).read_text('utf-8',errors='replace')
            line=next(line for line in result_text.splitlines() if line.startswith('PASS RESTORE_LEASE '))
            result=json.loads(line.split('PASS RESTORE_LEASE ',1)[1]);result.update(name=name,phase=phase,writer_killed=kill)
            check(json.loads(device('shell','cat',journal))['state']=='IDLE','final durable journal IDLE')
            results.append(result)
            print(name+': PASS',flush=True)
        finally:
            # Terminate only the host adb clients started by this fixture on a failed case.
            for process in processes:
                if process.poll() is None:process.terminate();process.wait(timeout=5)
            for log in logs:log.close()
    after=device('shell','pidof','com.smartisanos.launcher').decode().strip()
    check(before==after, 'installed Launcher remains running unchanged')
    report=dict(serial=args.serial,sdk=device('shell','getprop','ro.build.version.sdk').decode().strip(),
                cases=results,parent_checks=parent_checks,probe_checks=sum(r['checks'] for r in results),
                launcher_pid_before=before,launcher_pid_after=after,workspace=remote,
                apk_sha256=hashlib.sha256((ROOT/'build/launcher-signed.apk').read_bytes()).hexdigest().upper(),
                scope='real Android OS leases/AtomicFile/JSON/MAIN; archive/import/preferences controlled; no user data, production changes or reinstall; artificial wait timings')
    (output/'summary.json').write_text(json.dumps(report,ensure_ascii=False,indent=2),'utf-8')
    print(f'PASS cases={len(results)} parent_checks={parent_checks} probe_checks={report["probe_checks"]}; Launcher PID {before}->{after}')


if __name__=='__main__': main()
