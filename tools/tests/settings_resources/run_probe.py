"""Compile the production resource owner and exercise it against installed assets in shell isolation."""
import argparse, os, pathlib, subprocess
ROOT=pathlib.Path(__file__).resolve().parents[3]
def main():
    parser=argparse.ArgumentParser(__doc__)
    for key in ('serial','jdk','sdk','output'): parser.add_argument('--'+key,required=True)
    args=parser.parse_args(); out=pathlib.Path(args.output); out.mkdir(parents=True,exist_ok=True)
    jdk,sdk=pathlib.Path(args.jdk),pathlib.Path(args.sdk)
    def run(command,log):
        result=subprocess.run(list(map(str,command)),capture_output=True,text=True,encoding='utf-8',errors='replace',timeout=90)
        (out/log).write_text(result.stdout+result.stderr,'utf-8')
        if result.returncode:raise RuntimeError(result.stdout+result.stderr)
        return result.stdout
    classes,dex=out/'classes',out/'dex';classes.mkdir(exist_ok=True);dex.mkdir(exist_ok=True)
    run([jdk/'bin/javac.exe','-encoding','UTF-8','-source','8','-target','8','-bootclasspath',
         sdk/'platforms/android-30/android.jar','-d',classes,
         ROOT/'launcher/tools/java/com/smartisanos/launcher/quicksearch/ui/OriginalQuickSearchResources.java',
         pathlib.Path(__file__).with_name('SearchResourcesProbe.java')],'compile.log')
    run([jdk/'bin/jar.exe','cf',out/'probe.jar','-C',classes,'.'],'jar.log')
    os.environ['JAVA_HOME']=str(jdk)
    run([sdk/'build-tools/36.0.0/d8.bat','--min-api','26','--output',dex,out/'probe.jar'],'dex.log')
    adb=[sdk/'platform-tools/adb.exe','-s',args.serial]
    remote='/data/local/tmp/smartisan-search-res-probe.dex'
    run([*adb,'push',dex/'classes.dex',remote],'push.log')
    result=run([*adb,'shell','CLASSPATH='+remote+' app_process /system/bin com.smartisanos.launcher.quicksearch.ui.SearchResourcesProbe'],'device.log')
    assert 'PASS SEARCH_RESOURCES' in result,result
    print(result)
if __name__=='__main__': main()
