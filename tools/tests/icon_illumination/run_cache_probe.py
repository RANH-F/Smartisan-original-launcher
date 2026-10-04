"""Measure production projection cache with Android Bitmap/Canvas/PNG in isolated app_process.
Sensor availability is real; preference/context roots are fixtures. No installed Launcher data.
"""
import argparse
import json
import os
from pathlib import Path
import subprocess
import uuid

ROOT=Path(__file__).resolve().parents[3]
P='com/smartisanos/launcher/theme/'
def main():
    parser=argparse.ArgumentParser(__doc__)
    for key in ('serial','jdk','sdk','output'):parser.add_argument('--'+key,required=True)
    parser.add_argument('--baseline',action='store_true');args=parser.parse_args()
    out,jdk,sdk=Path(args.output),Path(args.jdk),Path(args.sdk);out.mkdir(parents=True,exist_ok=True)
    classes,dex=out/'classes',out/'dex';classes.mkdir(exist_ok=True);dex.mkdir(exist_ok=True)
    def run(cmd,log=None):
        result=subprocess.run([str(v) for v in cmd],capture_output=True,text=True,encoding='utf-8',errors='replace',timeout=60)
        if log:(out/log).write_text(result.stdout+result.stderr,encoding='utf-8')
        if result.returncode:raise RuntimeError(result.stdout+result.stderr)
        return result.stdout
    files=[]
    for name,source in {
        'DefaultIconCircleRenderer':'public static final String PREFS="fixture";',
        'MaintainedLauncherSettingsHost':'public static android.content.Context currentApplicationContext(){return ProjectionCacheProbe.context;}',
    }.items():
        file=out/'src'/P/(name+'.java');file.parent.mkdir(parents=True,exist_ok=True)
        file.write_text('package com.smartisanos.launcher.theme;public class '+name+'{'+source+'}',encoding='utf-8');files.append(file)
    owner=ROOT/'launcher/tools/java'/P/'IconIlluminationCompat.java'
    if args.baseline:
        owner=out/'src'/P/'IconIlluminationCompat.java'
        owner.write_bytes(subprocess.check_output(['git','show','HEAD:launcher/tools/java/'+P+'IconIlluminationCompat.java'],cwd=ROOT))
    files += [owner,ROOT/'launcher/tools/java'/P/'IconProjectionBlur.java',Path(__file__).with_name('ProjectionCacheProbe.java')]
    run([jdk/'bin/javac.exe','-encoding','UTF-8','-source','8','-target','8','-bootclasspath',sdk/'platforms/android-30/android.jar','-d',classes,*files],'compile.log')
    run([jdk/'bin/jar.exe','cf',out/'probe.jar','-C',classes,'.']);os.environ['JAVA_HOME']=str(jdk)
    run([sdk/'build-tools/36.0.0/d8.bat','--min-api','26','--output',dex,out/'probe.jar'],'dex.log')
    adb=sdk/'platform-tools/adb.exe'
    def device(*cmd,**kw):return run([adb,'-s',args.serial,*cmd],**kw)
    remote='/data/local/tmp/smartisan-projection-cache-f07-'+uuid.uuid4().hex
    device('shell','mkdir',remote);device('push',dex/'classes.dex',remote+'/probe.dex')
    before=device('shell','pidof','com.smartisanos.launcher').strip();mode='baseline' if args.baseline else 'fixed'
    result=device('shell',f'CLASSPATH={remote}/probe.dex app_process /system/bin com.smartisanos.launcher.theme.ProjectionCacheProbe {remote} {mode}',log='device.log')
    assert ('BASELINE_POST_RASTER_CACHE' if args.baseline else 'PASS PROJECTION_CACHE_CHECKS=') in result
    after=device('shell','pidof','com.smartisanos.launcher').strip()
    (out/'summary.json').write_text(json.dumps(dict(mode=mode,serial=args.serial,workspace=remote,launcher_pid_before=before,launcher_pid_after=after,metrics=[s for s in result.splitlines() if s.startswith(('BENCH','COLD_','PASS PROJECTION'))],scope='real Android Bitmap/Canvas/PNG/files; warmed isolated elapsed time, no allocation measurement or desktop frame-time claim'),indent=2),encoding='utf-8')
    print('\n'.join(s for s in result.splitlines() if s.startswith(('BENCH','COLD_','PASS PROJECTION','BASELINE_POST'))))
    print(f'Launcher PID before={before} after={after}')
if __name__=='__main__':main()
