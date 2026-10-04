"""Compare production SwitchEx decode/draw methods using Android resources/Canvas, without OEM View construction."""
import argparse
import os
from pathlib import Path
import subprocess
import uuid
import zipfile

ROOT = Path(__file__).resolve().parents[3]

JAVA = r'''
import android.content.*;
import android.content.res.*;
import android.graphics.*;
import android.os.Looper;
import android.view.View;
import java.lang.reflect.*;
import smartisanos.widget.*;
public class SwitchCacheProbe {
 static int checks;
 static void check(boolean ok,String why){checks++;if(!ok)throw new AssertionError(why);}
 static Object field(Object v,String name)throws Exception{
  Field f=v.getClass().getDeclaredField(name);f.setAccessible(true);return f.get(v);
 }
 static Context context(Context base,String path,int dpi)throws Exception{
  AssetManager assets=AssetManager.class.newInstance();
  AssetManager.class.getMethod("addAssetPath",String.class).invoke(assets,path);
  android.util.DisplayMetrics metrics=new android.util.DisplayMetrics();metrics.setTo(base.getResources().getDisplayMetrics());
  metrics.densityDpi=dpi;metrics.density=dpi/160f;metrics.scaledDensity=metrics.density;
  Configuration config=new Configuration(base.getResources().getConfiguration());config.densityDpi=dpi;
  final Resources res=new Resources(assets,metrics,config);
  final Resources.Theme theme=res.newTheme();theme.applyStyle(android.R.style.Theme_DeviceDefault,true);
  return new ContextWrapper(base){public Resources getResources(){return res;}
   public Resources.Theme getTheme(){return theme;}public String getPackageName(){return "com.smartisanos.home";}};
 }
 static void set(Class<?> type,Object v,String name,Object value)throws Exception{
  Field f=type.getDeclaredField(name);f.setAccessible(true);f.set(v,value);
 }
 static Object create(Class<?> type,Context context)throws Exception{
  // Avoid Vivo's View constructor querying a system-only font-symbol provider from shell.
  // Only the unchanged resource decoder and private switch compositor are exercised.
  Class<?> unsafe=Class.forName("sun.misc.Unsafe");Field uf=unsafe.getDeclaredField("theUnsafe");uf.setAccessible(true);
  Object v=unsafe.getMethod("allocateInstance",Class.class).invoke(uf.get(null),type);
  set(View.class,v,"mContext",context);
  set(View.class,v,"mResources",context.getResources());
  set(type,v,"paint",new Paint(Paint.ANTI_ALIAS_FLAG|Paint.FILTER_BITMAP_FLAG));
  set(type,v,"maskMode",new PorterDuffXfermode(PorterDuff.Mode.DST_IN));
  Method load=type.getDeclaredMethod("loadBitmaps");load.setAccessible(true);load.invoke(v);
  Bitmap mask=(Bitmap)field(v,"mask");
  set(View.class,v,"mRight",mask.getWidth());
  set(View.class,v,"mBottom",mask.getHeight()+(int)(4*context.getResources().getDisplayMetrics().density+0.5f));
  return v;
 }
 static Bitmap paint(Object object,boolean enabled,boolean checked)throws Exception{
  View v=(View)object;
  set(View.class,v,"mViewFlags",enabled?0:0x20);
  set(android.widget.CompoundButton.class,v,"mChecked",checked);
  set(v.getClass(),v,"checkedProgress",checked?1f:0f);
  Bitmap b=Bitmap.createBitmap(v.getWidth(),v.getHeight(),Bitmap.Config.ARGB_8888);
  Method draw=v.getClass().getDeclaredMethod("drawSmartisanSwitch",Canvas.class);draw.setAccessible(true);draw.invoke(v,new Canvas(b));return b;
 }
 public static void main(String[] args){try{execute(args);}catch(Throwable e){e.printStackTrace();System.exit(1);}}
 static void execute(String[] args)throws Exception{
  System.out.println("SWITCH_PROBE_BEGIN");
  if(Looper.myLooper()==null)Looper.prepareMainLooper();
  Class<?> at=Class.forName("android.app.ActivityThread");Object thread=at.getMethod("systemMain").invoke(null);
  Context system=(Context)at.getMethod("getSystemContext").invoke(thread);
  Context base=system.createPackageContext("com.smartisanos.launcher",Context.CONTEXT_IGNORE_SECURITY);
  System.out.println("SWITCH_PROBE_CONTEXT_READY");
  for(int dpi:new int[]{160,320,480}){
   System.out.println("SWITCH_PROBE_DENSITY="+dpi);
   Context c=context(base,args[0],dpi);Object first=create(SwitchEx.class,c),second=create(SwitchEx.class,c);
   for(String name:new String[]{"bottom","frame","mask","knob"}){
    check(field(first,name)!=null,"real resource loaded "+name);
    check(field(first,name)==field(second,name),"same resources share "+name);
   }
   Object old=create(SwitchExBaseline.class,c);
   for(boolean enabled:new boolean[]{true,false})for(boolean checked:new boolean[]{true,false}){
    Bitmap a=paint(first,enabled,checked),b=paint(old,enabled,checked);check(a.sameAs(b),"unchanged pixels dpi="+dpi+" checked="+checked+" enabled="+enabled);
    a.recycle();b.recycle();
   }
   check(field(first,"mask")==field(second,"mask"),"drawing does not mutate cache ownership");
   Context other=context(base,args[0],dpi);Object isolated=create(SwitchEx.class,other);
   check(field(first,"mask")!=field(isolated,"mask"),"separate resource archive identity");
   Configuration changed=new Configuration(c.getResources().getConfiguration());changed.fontScale+=0.1f;
   c.getResources().updateConfiguration(changed,c.getResources().getDisplayMetrics());
   Object refreshed=create(SwitchEx.class,c);check(field(first,"mask")!=field(refreshed,"mask"),"configuration invalidates shared decode");
  }
  System.out.println("PASS SWITCH_CACHE_CHECKS="+checks+" PIXEL_CASES=12");System.exit(0);
 }
}
'''


def main():
    ap = argparse.ArgumentParser(__doc__)
    for key in ('serial', 'jdk', 'sdk', 'output', 'baseline'):
        ap.add_argument('--' + key, required=True)
    a = ap.parse_args()
    out, jdk, sdk = Path(a.output), Path(a.jdk), Path(a.sdk)
    out.mkdir(parents=True, exist_ok=True)
    def run(cmd, log=None):
        r = subprocess.run(list(map(str, cmd)), capture_output=True, text=True,
                           encoding='utf-8', errors='replace', timeout=60)
        if log: (out / log).write_text(r.stdout + r.stderr, 'utf-8')
        if r.returncode: raise RuntimeError(r.stdout + r.stderr)
        return r.stdout
    baseline = out / 'SwitchExBaseline.java'
    baseline.write_text(Path(a.baseline).read_text('utf-8').replace('SwitchEx', 'SwitchExBaseline'), 'utf-8')
    probe = out / 'SwitchCacheProbe.java'
    probe.write_text(JAVA, 'utf-8')
    classes, dex = out / 'classes', out / 'dex'
    classes.mkdir(exist_ok=True); dex.mkdir(exist_ok=True)
    owner = ROOT / 'launcher/tools/java/smartisanos/widget/SwitchEx.java'
    run([jdk / 'bin/javac.exe', '-encoding', 'UTF-8', '-source', '8', '-target', '8',
         '-bootclasspath', sdk / 'platforms/android-30/android.jar', '-d', classes, owner, baseline, probe], 'compile.log')
    run([jdk / 'bin/jar.exe', 'cf', out / 'probe.jar', '-C', classes, '.'])
    os.environ['JAVA_HOME'] = str(jdk)
    run([sdk / 'build-tools/36.0.0/d8.bat', '--min-api', '26', '--output', dex, out / 'probe.jar'], 'dex.log')
    with zipfile.ZipFile(ROOT / 'build/launcher-signed.apk') as apk:
        (out / 'resources.apk').write_bytes(apk.read('assets/settings_maintained/maintained-settings-res.apk'))
    adb = sdk / 'platform-tools/adb.exe'
    def device(*cmd): return run([adb, '-s', a.serial, *cmd])
    remote = '/data/local/tmp/smartisan-switch-cache-' + uuid.uuid4().hex
    device('shell', 'mkdir', remote)
    device('push', dex / 'classes.dex', remote + '/probe.dex')
    device('push', out / 'resources.apk', remote + '/resources.apk')
    result = run([adb, '-s', a.serial, 'shell',
                  f'CLASSPATH={remote}/probe.dex app_process /system/bin SwitchCacheProbe {remote}/resources.apk'], 'device.log')
    assert 'PASS SWITCH_CACHE_CHECKS=' in result
    print(result)


if __name__ == '__main__': main()
