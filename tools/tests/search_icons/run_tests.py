"""Run the real icon backend with controlled model and Android stubs."""
import argparse
import importlib.util
import pathlib
import shutil
import subprocess
import tempfile

ROOT = pathlib.Path(__file__).resolve().parents[3]
spec = importlib.util.spec_from_file_location("unlock_stubs", ROOT / "tools/tests/unlock/run_tests.py")
module = importlib.util.module_from_spec(spec)
spec.loader.exec_module(module)
SOURCES = {key: value for key, value in module.SOURCES.items() if key.startswith("android/")}
SOURCES.update({
    "android/content/Context.java": '''package android.content;
public class Context {
 public static final String USAGE_STATS_SERVICE="usage";
 public Context getApplicationContext(){return this;}
 public Object getSystemService(String key){return null;}
 public android.content.res.Resources getResources(){return new android.content.res.Resources();}
}''',
    "android/content/res/Resources.java": '''package android.content.res;
public class Resources { public android.util.DisplayMetrics getDisplayMetrics(){return new android.util.DisplayMetrics();} }''',
    "android/util/DisplayMetrics.java": '''package android.util;
public class DisplayMetrics { public float density=1f; }''',
    "android/util/Log.java": '''package android.util;
public class Log { public static int i(String t,String s){return 0;}
 public static int e(String t,String s){throw new AssertionError(s);} }''',
    "android/os/Debug.java": '''package android.os;
public class Debug { public static long getPss(){return 0;} }''',
    "android/os/Build.java": '''package android.os;
public class Build { public static class VERSION {public static int SDK_INT=36;}
 public static class VERSION_CODES {public static final int LOLLIPOP=21;} }''',
    "android/os/Process.java": '''package android.os;
public class Process { public static final int THREAD_PRIORITY_BACKGROUND=10;
 public static void setThreadPriority(int p){} public static int myUid(){return 10000;} }''',
    "android/os/SystemClock.java": '''package android.os;
public class SystemClock {public static long uptimeMillis(){return System.nanoTime()/1000000;}
 public static long elapsedRealtime(){return uptimeMillis();} }''',
    "android/os/Looper.java": '''package android.os;
public class Looper {public static Looper getMainLooper(){return new Looper();}}''',
    "android/os/Handler.java": '''package android.os;
public class Handler {public Handler(Looper l){} public boolean post(Runnable r){r.run();return true;}}''',
    "android/app/usage/UsageStats.java": '''package android.app.usage;
public class UsageStats {public long getTotalTimeInForeground(){return 0;}}''',
    "android/app/usage/UsageStatsManager.java": '''package android.app.usage;
public class UsageStatsManager {public java.util.Map<String,UsageStats> queryAndAggregateUsageStats(long a,long b){return null;}}''',
    "android/graphics/Bitmap.java": '''package android.graphics;
public class Bitmap {private boolean recycled; private int w,h;
 public enum Config {ARGB_8888} public Bitmap(int a,int b){w=a;h=b;}
 public boolean isRecycled(){return recycled;} public void recycle(){recycled=true;}
 public int getWidth(){return w;} public int getHeight(){return h;}
 public int getByteCount(){return w*h*4;} public int getAllocationByteCount(){return getByteCount();}
 public static Bitmap createScaledBitmap(Bitmap b,int w,int h,boolean f){return new Bitmap(w,h);}}
''',
    "android/graphics/BitmapFactory.java": '''package android.graphics;
public class BitmapFactory {public static class Options {public boolean inJustDecodeBounds;
 public int outWidth=36,outHeight=36,inSampleSize; public Bitmap.Config inPreferredConfig;}
 public static Bitmap decodeByteArray(byte[] a,int b,int c,Options o){return o.inJustDecodeBounds?null:new Bitmap(36,36);}}
''',
    "com/smartisanos/launcher/Aa.java": '''package com.smartisanos.launcher;
public class Aa {public static java.util.Map<Long,Object> items=new java.util.LinkedHashMap<Long,Object>();
 public static java.util.Map nc(){return items;}
 public static class Item {public String packageName="com.tencent.mm",componentName="Main";
 public int userId=-1,usageCount; private byte[] iconData=new byte[]{1,2,3};
 public byte[] Oe(){return iconData;} }}''',
    "SearchIconTest.java": '''import java.lang.reflect.*;
import java.util.*;
import java.util.concurrent.*;
import com.smartisanos.launcher.quicksearch.*;
public class SearchIconTest {
 static void check(boolean ok,String message){if(!ok)throw new AssertionError(message);}
 static void waitFor(CountDownLatch latch)throws Exception{check(latch.await(5,TimeUnit.SECONDS),"callback timeout");}
 static SearchEntry entry(int user){return new SearchEntry("WeChat","wechat","com.tencent.mm","Main",user,user,null,"com.tencent.mm/Main@"+user);}
 static void put(SearchEntry e)throws Exception{
  Method m=SearchIconBackend.class.getDeclaredMethod("putEncoded",SearchEntry.class,byte[].class,long.class);
  m.setAccessible(true);m.invoke(null,e,new byte[]{1,2,3},100000L);
  Method d=SearchIconBackend.class.getDeclaredMethod("putDecoded",SearchEntry.class,android.graphics.Bitmap.class,long.class);
  d.setAccessible(true);d.invoke(null,e,new android.graphics.Bitmap(36,36),100000L);
 }
 public static void main(String[] args)throws Exception {
  SearchEntry main=entry(0),clone=entry(999);put(main);put(clone);
  SearchIconBackend.invalidatePackage("com.tencent.mm",999);
  check(SearchIconBackend.getEncoded(main)!=null,"clone removal cleared primary encoded icon");
  check(SearchIconBackend.getDecoded(main)!=null,"clone removal cleared primary decoded icon");
  check(SearchIconBackend.getEncoded(clone)==null && SearchIconBackend.getDecoded(clone)==null,"clone cache survived removal");
  SearchIconBackend.invalidatePackage("com.tencent.mm");
  check(SearchIconBackend.getEncoded(main)==null,"whole-package invalidation stopped working");
  com.smartisanos.launcher.Aa.items.put(1L,new com.smartisanos.launcher.Aa.Item());
  Field f=SearchIconBackend.class.getDeclaredField("EXECUTOR");f.setAccessible(true);
  ExecutorService worker=(ExecutorService)f.get(null);
  CountDownLatch entered=new CountDownLatch(1),release=new CountDownLatch(1),done=new CountDownLatch(2);
  worker.execute(()->{entered.countDown();try{release.await();}catch(Exception e){throw new RuntimeException(e);}});
  waitFor(entered);
  SearchSnapshot snapshot=new SearchSnapshot(Arrays.asList(main),7L);
  android.content.Context context=new android.content.Context();
  SearchIconBackend.scheduleHydration(context,snapshot,g->done.countDown());
  SearchIconBackend.scheduleHydration(context,snapshot);
  SearchIconBackend.scheduleHydration(context,snapshot,g->done.countDown());
  release.countDown();waitFor(done);
  check(SearchIconBackend.getEncoded(main)!=null,"default user -1 was not normalized to primary user");
  check(SearchIconBackend.getDecoded(main)!=null,"primary icon not decoded after hydration");
  System.out.println("PASS: clone-only invalidation, full-package invalidation, default-user identity, coalesced hydration callbacks");
 }
}''',
})


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--jdk", type=pathlib.Path, required=True)
    args = parser.parse_args()
    with tempfile.TemporaryDirectory(prefix="launcher-search-icons-") as folder:
        work = pathlib.Path(folder)
        for name, content in SOURCES.items():
            target = work / name
            target.parent.mkdir(parents=True, exist_ok=True)
            target.write_text(content, encoding="utf-8")
        source = ROOT / "launcher/tools/java/com/smartisanos/launcher/quicksearch"
        for name in ("SearchIconBackend.java", "SearchEntry.java", "SearchSnapshot.java", "QuickSearchIndexLogger.java"):
            shutil.copyfile(source / name, work / name)
        subprocess.run([str(args.jdk / "bin/javac.exe"), "-d", str(work / "classes"),
                        *map(str, work.rglob("*.java"))], check=True)
        subprocess.run([str(args.jdk / "bin/java.exe"), "-cp", str(work / "classes"),
                        "SearchIconTest"], check=True)


if __name__ == "__main__":
    main()
