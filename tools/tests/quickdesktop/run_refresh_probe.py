"""Run production QD host/content on Android with real native rendering and controlled services."""
import argparse
import json
import os
from pathlib import Path
import subprocess
import uuid

ROOT=Path(__file__).resolve().parents[3]
P='com/smartisanos/launcher/quickdesktop/'
def main():
    ap=argparse.ArgumentParser(__doc__)
    for key in ('serial','jdk','sdk','output'):ap.add_argument('--'+key,required=True)
    ap.add_argument('--baseline-render',action='store_true')
    a=ap.parse_args();out,jdk,sdk=Path(a.output),Path(a.jdk),Path(a.sdk)
    out.mkdir(parents=True,exist_ok=True)
    def run(cmd,log=None):
        r=subprocess.run(list(map(str,cmd)),capture_output=True,text=True,encoding='utf-8',errors='replace',timeout=60)
        if log:(out/log).write_text(r.stdout+r.stderr,'utf-8')
        if r.returncode:raise RuntimeError(r.stdout+r.stderr)
        return r.stdout
    sources={
      P+'QuickDesktopController.java':'''package com.smartisanos.launcher.quickdesktop;import android.content.Context;public class QuickDesktopController{
      public static final String CARD_MUSIC_PAYMENT="music",CARD_SHORTCUTS="shortcuts",CARD_LIFE="life",PAYMENT_WECHAT="wechat";
      public static boolean music=true;public static int reads;public static boolean isCardEnabled(Context c,String k){reads++;return !k.equals("music")||music;}
      public static String getPaymentProvider(Context c){reads++;return "alipay";}public static String getCustomHeaderText(Context c){reads++;return "Fixture header";}
      public static void onHostClosed(){}public static void onHostOpened(){}public static void onHostDetached(QuickDesktopHostView h){}}''',
      P+'QuickDesktopActions.java':'''package com.smartisanos.launcher.quickdesktop;import android.content.Context;public class QuickDesktopActions{
      public static boolean openLauncherSettings(Context c){return true;}public static boolean openSearch(Context c){return true;}public static boolean openMusic(Context c){return true;}
      public static boolean openAlipay(Context c,boolean b){return true;}public static boolean openShortcut(Context c,int i){return true;}public static boolean openBrowser(Context c){return true;}}''',
      P+'QuickDesktopMediaBridge.java':'''package com.smartisanos.launcher.quickdesktop;import android.content.Context;import android.graphics.Bitmap;import java.util.concurrent.*;
      public class QuickDesktopMediaBridge{public static volatile int reads;public static volatile Thread readThread;public static volatile boolean block;public static CountDownLatch release=new CountDownLatch(1);
      public static class Snapshot{final String title,artist;final Bitmap artwork;final boolean playing,sessionAvailable,notificationAccess;
      Snapshot(String t,String a,Bitmap b,boolean p,boolean s,boolean n){title=t;artist=a;artwork=b;playing=p;sessionAvailable=s;notificationAccess=n;}}
      public static Snapshot read(Context c){reads++;readThread=Thread.currentThread();boolean old=block;if(old)try{release.await(5,TimeUnit.SECONDS);}catch(Exception e){throw new RuntimeException(e);}
      return new Snapshot(old?"Stale song":"Fixture song","Fixture artist",null,true,true,true);}
      public static boolean skipPrevious(Context c){return true;}public static boolean skipNext(Context c){return true;}public static boolean togglePlayback(Context c){return true;}}''',
      'com/smartisanos/launcher/theme/WeatherBridge.java':'''package com.smartisanos.launcher.theme;import android.content.Context;import android.os.Bundle;public class WeatherBridge{
      public static Bundle getWeatherBundle(Context c){Bundle b=new Bundle();b.putString("temp","20");b.putString("weatherCode","0");b.putString("city","Fixture city");return b;}}'''
    }
    files=[]
    for name,source in sources.items():
        path=out/'src'/name;path.parent.mkdir(parents=True,exist_ok=True);path.write_text(source,'utf-8');files.append(path)
    for n in ['QuickDesktopHostView','QuickDesktopContentView']:
        path=ROOT/'launcher/tools/java'/P/(n+'.java')
        if a.baseline_render:
            path=out/'src'/P/(n+'.java')
            path.write_bytes(subprocess.check_output(['git','show','HEAD:launcher/tools/java/'+P+n+'.java'],cwd=ROOT))
        files.append(path)
    files.append(Path(__file__).with_name('QuickDesktopRefreshProbe.java'))
    classes,dex=out/'classes',out/'dex';classes.mkdir(exist_ok=True);dex.mkdir(exist_ok=True)
    run([jdk/'bin/javac.exe','-encoding','UTF-8','-source','8','-target','8','-bootclasspath',sdk/'platforms/android-30/android.jar','-d',classes,*files],'compile.log')
    run([jdk/'bin/jar.exe','cf',out/'probe.jar','-C',classes,'.']);os.environ['JAVA_HOME']=str(jdk)
    run([sdk/'build-tools/36.0.0/d8.bat','--min-api','26','--output',dex,out/'probe.jar'],'dex.log')
    adb=sdk/'platform-tools/adb.exe'
    def device(*cmd,**kw):return run([adb,'-s',a.serial,*cmd],**kw)
    remote='/data/local/tmp/smartisan-qd-refresh-'+uuid.uuid4().hex
    device('shell','mkdir',remote);device('push',dex/'classes.dex',remote+'/probe.dex')
    before=device('shell','pidof','com.smartisanos.launcher').strip()
    mode='baseline' if a.baseline_render else 'fixed'
    result=device('shell',f'CLASSPATH={remote}/probe.dex app_process /system/bin com.smartisanos.launcher.quickdesktop.QuickDesktopRefreshProbe {remote} {mode}',log='device.log')
    assert ('PASS QUICKDESKTOP_BASELINE_RENDER' if a.baseline_render else 'PASS QUICKDESKTOP_REFRESH_CHECKS=') in result
    for name in ('fixed','no-music'):device('pull',remote+'/'+name+'.png',out/(name+'.png'))
    after=device('shell','pidof','com.smartisanos.launcher').strip()
    (out/'summary.json').write_text(json.dumps(dict(serial=a.serial,before=before,after=after,remote=remote,result=result,scope='production Host/Content; real View/Looper/Bitmap, controlled media/weather/actions; no user data writes'),indent=2),'utf-8')
    print(result);print('Launcher PID before='+before+' after='+after)
if __name__=='__main__':main()
