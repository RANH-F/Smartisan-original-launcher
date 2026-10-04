"""Check the built production geometry helper on Android, without installed Launcher data."""
import argparse
import os
from pathlib import Path
import subprocess

ROOT = Path(__file__).resolve().parents[3]


def main():
    parser = argparse.ArgumentParser(__doc__)
    for key in ('serial', 'jdk', 'sdk', 'output'):
        parser.add_argument('--' + key, required=True)
    args = parser.parse_args()
    out, jdk, sdk = Path(args.output), Path(args.jdk), Path(args.sdk)
    out.mkdir(parents=True, exist_ok=True)
    classes, dex = out/'classes', out/'dex'
    classes.mkdir(exist_ok=True); dex.mkdir(exist_ok=True)

    def run(cmd, log):
        r = subprocess.run(list(map(str, cmd)), capture_output=True, text=True,
                           encoding='utf-8', errors='replace', timeout=60)
        (out/log).write_text(r.stdout+r.stderr, 'utf-8')
        if r.returncode:
            raise RuntimeError(r.stdout+r.stderr)
        return r.stdout

    fixtures = {
        'com/smartisanos/launcher/view/b/M.java':
            'package com.smartisanos.launcher.view.b; public class M {}',
        'com/smartisanos/launcher/data/Constants.java': '''package com.smartisanos.launcher.data;
public class Constants {
 public static class Geometry { public float page_width=100, page_height=100; }
 private static final Geometry[] modes=new Geometry[14];
 static {for(int i=0;i<modes.length;i++) modes[i]=new Geometry();modes[13].page_height=50;modes[10].page_height=50;}
 public static Geometry mode(int value){return modes[value];}
}''',
    }
    files = [Path(__file__).with_name('OverviewAspectProbe.java')]
    for name, source in fixtures.items():
        path=out/'src'/name;path.parent.mkdir(parents=True,exist_ok=True)
        path.write_text(source,'utf-8');files.append(path)
    run([jdk/'bin/javac.exe','-encoding','UTF-8','-source','8','-target','8',
         '-bootclasspath',sdk/'platforms/android-30/android.jar',
         '-classpath',ROOT/'build/scratch/classes','-d',classes,*files],'compile.log')
    run([jdk/'bin/jar.exe','cf',out/'probe.jar','-C',classes,'.'],'jar.log')
    os.environ['JAVA_HOME']=str(jdk)
    run([sdk/'build-tools/36.0.0/d8.bat','--min-api','26','--output',dex,out/'probe.jar'],'dex.log')
    adb=sdk/'platform-tools/adb.exe'
    remote='/data/local/tmp/smartisan-overview-aspect'
    run([adb,'-s',args.serial,'push',dex/'classes.dex',remote+'-probe.dex'],'push-probe.log')
    run([adb,'-s',args.serial,'push',ROOT/'build/scratch/dex/classes2.dex',remote+'-helper.dex'],'push-helper.log')
    result=run([adb,'-s',args.serial,'shell',f'CLASSPATH={remote}-probe.dex:{remote}-helper.dex '
                'app_process /system/bin com.smartisanos.launcher.theme.OverviewAspectProbe'],'device.log')
    assert 'PASS OVERVIEW_ASPECT' in result, result
    print(result)


if __name__ == '__main__':
    main()
