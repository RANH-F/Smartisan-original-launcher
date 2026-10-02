"""Exercise the production sensor adapter with controlled Android service failures."""
import argparse, pathlib, subprocess, tempfile
ROOT = pathlib.Path(__file__).resolve().parents[3]
SOURCES = {
"android/content/Context.java": "package android.content; public abstract class Context { public static final String SENSOR_SERVICE=\"sensor\"; public static final int MODE_PRIVATE=0; public abstract Object getSystemService(String name); public SharedPreferences getSharedPreferences(String n,int m){return null;} public java.io.File getFilesDir(){return null;} }",
"android/hardware/Sensor.java": "package android.hardware; public class Sensor {public static final int TYPE_ROTATION_VECTOR=11,TYPE_GEOMAGNETIC_ROTATION_VECTOR=20,TYPE_GAME_ROTATION_VECTOR=15,TYPE_LIGHT=5; public final int type; public Sensor(int t){type=t;} public String getName(){return Integer.toString(type);} }",
"android/hardware/SensorEventListener.java": "package android.hardware; public interface SensorEventListener {}",
"android/hardware/SensorManager.java": "package android.hardware; public class SensorManager {public java.util.Set<Integer> available=new java.util.HashSet<>(); public RuntimeException queryError,registerError,lightError,unregisterError; public boolean result=true; public int selected,unregistered; public Sensor getDefaultSensor(int t){if(queryError!=null)throw queryError; if(t==5&&lightError!=null)throw lightError;return available.contains(t)?new Sensor(t):null;} public boolean registerListener(SensorEventListener l,Sensor s,int rate,android.os.Handler h){if(registerError!=null)throw registerError; selected=s.type; return result;} public void unregisterListener(SensorEventListener l){unregistered++;if(unregisterError!=null)throw unregisterError;} }",
"android/os/HandlerThread.java": "package android.os; public class HandlerThread {public static int active; public HandlerThread(String n){} public void start(){active++;} public Looper getLooper(){return null;} public boolean quitSafely(){active--;return true;} }",
"android/os/Handler.java": "package android.os; public class Handler {public Handler(Looper l){} }",
"android/util/Log.java": "package android.util; public class Log {public static int i(String a,String b){return 0;} public static int w(String a,String b){return 0;} public static int w(String a,String b,Throwable t){return 0;} public static int e(String a,String b,Throwable t){return 0;} }",
"com/smartisanos/launcher/theme/DefaultIconCircleRenderer.java": "package com.smartisanos.launcher.theme; public class DefaultIconCircleRenderer {public static final String PREFS=\"test\";}",
"com/smartisanos/launcher/theme/MaintainedLauncherSettingsHost.java": "package com.smartisanos.launcher.theme; public class MaintainedLauncherSettingsHost {public static android.content.Context currentApplicationContext(){return null;} }",
"SensorFallbackTest.java": r"""
import android.content.Context; import android.hardware.*; import android.os.HandlerThread;
import com.smartisanos.launcher.theme.IconIlluminationCompat;
public class SensorFallbackTest {
 static int assertions; static void check(boolean b){assertions++;if(!b)throw new AssertionError(assertions);}
 static class C extends Context {SensorManager manager; RuntimeException error; C(SensorManager m){manager=m;}public Object getSystemService(String n){if(error!=null)throw error;return manager;} }
 static SensorEventListener rotation=new SensorEventListener(){}, light=new SensorEventListener(){};
 static boolean register(C c){return IconIlluminationCompat.register(c,rotation,light);}
 static void stop(C c){IconIlluminationCompat.unregister(c,rotation,light);check(HandlerThread.active==0);}
 public static void main(String[] args){
 check(!IconIlluminationCompat.supported(null));check(!register(new C(null)));
 SensorManager m=new SensorManager();C c=new C(m);check(!IconIlluminationCompat.supported(c));check(!register(c));check(HandlerThread.active==0);
 for(int t:new int[]{15,20,11}){m.available.add(t);check(IconIlluminationCompat.supported(c));check(register(c));check(m.selected==t);check(register(c));check(HandlerThread.active==1);stop(c);}
 m.result=false;check(!register(c));check(HandlerThread.active==0);m.result=true;
 for(RuntimeException e:new RuntimeException[]{new SecurityException(),new IllegalArgumentException(),new IllegalStateException()}){
 m.queryError=e;check(!IconIlluminationCompat.supported(c));check(!register(c));m.queryError=null;
 c.error=e;check(!IconIlluminationCompat.supported(c));check(!register(c));c.error=null;
 m.registerError=e;check(!register(c));check(HandlerThread.active==0);m.registerError=null;
 m.lightError=e;check(register(c));m.lightError=null;stop(c);
 check(register(c));m.unregisterError=e;stop(c);m.unregisterError=null;
 }
 check(register(c));IconIlluminationCompat.unregister(null,rotation,light);check(HandlerThread.active==0);
 System.out.println("PASS sensor fallback assertions="+assertions);
 }
}
"""
}
def main():
 ap=argparse.ArgumentParser();ap.add_argument("--jdk",required=True);ap.add_argument("--sdk",required=True);a=ap.parse_args()
 android=pathlib.Path(a.sdk)/"platforms/android-36/android.jar"
 with tempfile.TemporaryDirectory(prefix="illumination-sensors-") as temporary:
  base=pathlib.Path(temporary);classes=base/"classes";classes.mkdir();files=[]
  for name,source in SOURCES.items():
   file=base/name;file.parent.mkdir(parents=True,exist_ok=True);file.write_text(source);files.append(str(file))
  production=ROOT/"launcher/tools/java/com/smartisanos/launcher/theme"
  subprocess.run([str(pathlib.Path(a.jdk)/"bin/javac.exe"),"-cp",str(android),"-d",str(classes),*files,str(production/"IconIlluminationCompat.java"),str(production/"IconProjectionBlur.java")],check=True)
  subprocess.run([str(pathlib.Path(a.jdk)/"bin/java.exe"),"-cp",str(classes)+";"+str(android),"SensorFallbackTest"],check=True)
if __name__=="__main__":main()
