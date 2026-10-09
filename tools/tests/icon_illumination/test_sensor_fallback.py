"""Exercise the production sensor adapter with controlled Android service failures."""
import argparse, pathlib, subprocess, tempfile
ROOT = pathlib.Path(__file__).resolve().parents[3]
SOURCES = {
"android/content/Context.java": "package android.content; public abstract class Context { public static final String SENSOR_SERVICE=\"sensor\"; public static final int MODE_PRIVATE=0; public abstract Object getSystemService(String name); public SharedPreferences getSharedPreferences(String n,int m){return null;} public java.io.File getFilesDir(){return null;} }",
"android/hardware/Sensor.java": "package android.hardware; public class Sensor {public static final int TYPE_ROTATION_VECTOR=11,TYPE_GEOMAGNETIC_ROTATION_VECTOR=20,TYPE_GAME_ROTATION_VECTOR=15,TYPE_LIGHT=5; public final int type; public Sensor(int t){type=t;} public String getName(){return Integer.toString(type);} }",
"android/hardware/SensorEventListener.java": "package android.hardware; public interface SensorEventListener {}",
"android/hardware/SensorManager.java": "package android.hardware; public class SensorManager {public java.util.Set<Integer> available=new java.util.HashSet<>(); public RuntimeException queryError,registerError,lightError,unregisterError; public boolean result=true; public int selected,unregistered; public Sensor getDefaultSensor(int t){if(queryError!=null)throw queryError; if(t==5&&lightError!=null)throw lightError;return available.contains(t)?new Sensor(t):null;} public boolean registerListener(SensorEventListener l,Sensor s,int rate,android.os.Handler h){if(registerError!=null)throw registerError; selected=s.type; return result;} public void unregisterListener(SensorEventListener l){unregistered++;if(unregisterError!=null)throw unregisterError;} }",
"android/os/SystemClock.java": "package android.os; public class SystemClock {public static long now=1000;public static long elapsedRealtimeNanos(){return now;}}",
"android/os/HandlerThread.java": "package android.os; public class HandlerThread extends Thread {public static int active;private final java.util.concurrent.BlockingQueue<Runnable> tasks=new java.util.concurrent.LinkedBlockingQueue<>();private volatile boolean stopped; public HandlerThread(String n){} public void start(){active++;super.start();}public void run(){while(!stopped)try{tasks.take().run();}catch(InterruptedException e){}}public void postTest(Runnable r){tasks.add(r);} public Looper getLooper(){return null;} public boolean quitSafely(){stopped=true;interrupt();active--;return true;} }",
"android/os/Handler.java": "package android.os; public class Handler {public Handler(Looper l){} }",
"android/util/Log.java": "package android.util; public class Log {public static final int DEBUG=3;public static boolean isLoggable(String t,int p){return false;}public static int i(String a,String b){return 0;} public static int w(String a,String b){return 0;} public static int w(String a,String b,Throwable t){return 0;} public static int e(String a,String b,Throwable t){return 0;} }",
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
 static void stop(C c){IconIlluminationCompat.unregister(c,rotation,light);check(HandlerThread.active==0);check(!IconIlluminationCompat.sensorActive(rotation));check(!IconIlluminationCompat.acceptsSensorEvent(rotation,Long.MAX_VALUE));}
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
 check(register(c));check(IconIlluminationCompat.sensorActive(rotation));check(!IconIlluminationCompat.acceptsSensorEvent(rotation,1000));check(!IconIlluminationCompat.acceptsSensorEvent(rotation,999));m.unregisterError=e;stop(c);m.unregisterError=null;
 }
 check(register(c));IconIlluminationCompat.unregister(null,rotation,light);check(HandlerThread.active==0);
 m.available.add(5);check(register(c));
 try {
  java.lang.reflect.Field threads=IconIlluminationCompat.class.getDeclaredField("THREADS");threads.setAccessible(true);
  HandlerThread callback=(HandlerThread)((java.util.Map<?,?>)threads.get(null)).get(rotation);
  java.util.concurrent.CountDownLatch done=new java.util.concurrent.CountDownLatch(1);boolean[] valid={false,false};
  callback.postTest(()->{valid[0]=IconIlluminationCompat.acceptsSensorEvent(rotation,1000);valid[1]=IconIlluminationCompat.acceptsSensorEvent(light,999);done.countDown();});
  check(done.await(5,java.util.concurrent.TimeUnit.SECONDS));check(valid[0]);check(valid[1]);
 } catch(Exception e){throw new RuntimeException(e);}stop(c);
 try {
  java.lang.reflect.Field f=IconIlluminationCompat.class.getDeclaredField("MASK_LOCK");f.setAccessible(true);Object maskLock=f.get(null);
  java.util.concurrent.CountDownLatch entered=new java.util.concurrent.CountDownLatch(1),release=new java.util.concurrent.CountDownLatch(1);
  Thread writer=new Thread(()->{synchronized(maskLock){entered.countDown();try{release.await();}catch(InterruptedException e){throw new RuntimeException(e);}}});writer.start();
  check(entered.await(5,java.util.concurrent.TimeUnit.SECONDS));
  java.util.concurrent.CountDownLatch registered=new java.util.concurrent.CountDownLatch(1);
  Thread resume=new Thread(()->{register(c);registered.countDown();});resume.start();
  boolean independent=registered.await(1,java.util.concurrent.TimeUnit.SECONDS);release.countDown();writer.join();resume.join();check(independent);stop(c);
 } catch(Exception e){throw new RuntimeException(e);}
 check(IconIlluminationCompat.isProjectionTexture("/data/user/0/pkg/files/shadow/app_Main_1.png"));
 check(IconIlluminationCompat.isProjectionTexture("/data/data/pkg/files/shadow/app_Main_8.png"));
 check(!IconIlluminationCompat.isProjectionTexture("/data/data/pkg/files/shadow/com.smartisan.folder_1.png"));
 check(!IconIlluminationCompat.isProjectionTexture("Textures/1080p/shadow/com.android.settings_8.png"));
 check(!IconIlluminationCompat.isProjectionTexture("/data/data/pkg/files/icon_1.png"));
 check(!IconIlluminationCompat.isProjectionTexture("/data/data/pkg/files/shadow/app_9.png"));
 boolean[] ready=new boolean[8];java.util.Arrays.fill(ready,true);check(IconIlluminationCompat.allProjectionLayersBound(ready));
 for(int i=0;i<8;i++){ready[i]=false;check(!IconIlluminationCompat.allProjectionLayersBound(ready));ready[i]=true;}
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
