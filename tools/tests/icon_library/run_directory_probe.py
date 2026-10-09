"""Run production pack directory/SQLite against real Android in shell isolation."""
import argparse, os, pathlib, subprocess
ROOT = pathlib.Path(__file__).resolve().parents[3]

def main():
    parser=argparse.ArgumentParser(__doc__)
    for field in ('serial','jdk','sdk','output'):parser.add_argument('--'+field,required=True)
    args=parser.parse_args();out=pathlib.Path(args.output);out.mkdir(parents=True,exist_ok=True)
    jdk,sdk=pathlib.Path(args.jdk),pathlib.Path(args.sdk)
    def run(command,name):
        result=subprocess.run(list(map(str,command)),capture_output=True,text=True,encoding='utf-8',errors='replace',timeout=120)
        (out/name).write_text(result.stdout+result.stderr,encoding='utf-8')
        if result.returncode:raise RuntimeError(result.stdout+result.stderr)
        return result.stdout
    classes,dex,stub=out/'classes',out/'dex',out/'stub';classes.mkdir(exist_ok=True);dex.mkdir(exist_ok=True)
    files={
      'com/smartisanos/home/settings/icons/IconPreviewRepository.java': 'package com.smartisanos.home.settings.icons; public class IconPreviewRepository { public static class RequestSession {public boolean isCancelled(){return false;}}}',
      'com/smartisanos/launcher/theme/MaintainedLauncherSettingsHost.java': 'package com.smartisanos.launcher.theme; public class MaintainedLauncherSettingsHost {public static void onIconPackOverridesChanged(android.content.Context c,String p){} public static void onSelectedIconPackPreloaded(android.content.Context c){} public static void onIconPackSearchDirectoryInvalidated(){}}'
    }
    sources=[]
    for name,text in files.items():
        path=stub/name;path.parent.mkdir(parents=True,exist_ok=True);path.write_text(text,encoding='utf-8');sources.append(path)
    sources += [ROOT/'launcher/tools/java/com/smartisanos/home/settings/icons'/ (name+'.java') for name in ('IconPackManager','AppIconCandidate','IconLibraryCatalog','IconLibrarySearchIndex','IconPinyin')]
    sources.append(pathlib.Path(__file__).with_name('DirectoryProbe.java'))
    run([jdk/'bin/javac.exe','-encoding','UTF-8','-source','8','-target','8','-bootclasspath',sdk/'platforms/android-36/android.jar','-d',classes,*sources],'compile.log')
    run([jdk/'bin/jar.exe','cf',out/'probe.jar','-C',classes,'.'],'jar.log');os.environ['JAVA_HOME']=str(jdk)
    run([sdk/'build-tools/36.0.0/d8.bat','--min-api','23','--output',dex,out/'probe.jar'],'dex.log')
    adb=[sdk/'platform-tools/adb.exe','-s',args.serial];remote='/data/local/tmp/smartisan-icon-directory-probe.dex'
    run([*adb,'push',dex/'classes.dex',remote],'push.log')
    result=run([*adb,'shell','CLASSPATH='+remote+' app_process /system/bin com.smartisanos.home.settings.icons.DirectoryProbe'],'device.log')
    assert 'PASS ICON_DIRECTORY_ANDROID' in result
    print(result)

if __name__=='__main__':main()
