"""Exercise production request/session/worker methods with deterministic worker barriers."""
import argparse
import pathlib
import subprocess
import tempfile

ROOT = pathlib.Path(__file__).resolve().parents[3]


def block(source, marker):
    start = source.index(marker)
    end = source.index("{", start) + 1
    depth = 1
    while depth:
        depth += (source[end] == "{") - (source[end] == "}")
        end += 1
    return source[start:end]


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--jdk", type=pathlib.Path, required=True)
    args = parser.parse_args()
    source = (ROOT / "launcher/tools/java/com/smartisanos/home/settings/icons/IconPreviewRepository.java").read_text(encoding="utf-8")
    declarations = source[source.index("    public interface Callback"):source.index("    public static final class ImprovedCandidate")]
    declarations += block(source, "    public static final class IconRenderKey")
    declarations += block(source, "    public static final class RequestSession")
    declarations += block(source, "    public static final class PendingCallback")
    methods = source[source.index("    public RequestSession openSession"):source.index("    public Bitmap getCachedOfficialIcon")]
    methods += block(source, "    public static void logPerf")
    methods += source[source.index("    public void request(final IconRenderKey"):source.index("    public Drawable cachedDrawable")]
    methods += source[source.index("    private final class RenderTask"):source.index("    private IconRenderKey defaultKey")]
    fields = source[source.index("    private static final int MAX_SESSION_QUEUE_SIZE"):source.index("    private IconPreviewRepository(Context")]
    fields = fields.replace("private static volatile IconPreviewRepository sInstance;", "")
    fields = fields.replace("private final Context app;", "")
    fields = fields.replace("private final Handler main = new Handler(Looper.getMainLooper());", "private final Handler main = new Handler();")
    fixture = r'''
    static class Bitmap { final int id; boolean recycled; Bitmap(int i){id=i;} void recycle(){recycled=true;} }
    static class Drawable { final int id; Drawable(int i){id=i;} }
    static class LruCache<K,V> extends java.util.concurrent.ConcurrentHashMap<K,V> {
        LruCache(int size){} protected void entryRemoved(boolean e,K k,V a,V b){}
    }
    static class Handler {
        final java.util.concurrent.ConcurrentLinkedQueue<Runnable> work = new java.util.concurrent.ConcurrentLinkedQueue<>();
        void post(Runnable r){work.add(r);}
        void drain(){Runnable r; while((r=work.poll())!=null)r.run();}
    }
    IconPreviewRepository() {
        cache=new LruCache<>(1000);
        decodePool=new ThreadPoolExecutor(2,2,15L,TimeUnit.SECONDS,new PriorityBlockingQueue<Runnable>());
    }
    static Bitmap drawableToBitmap(Drawable d,int size){return d==null?null:new Bitmap(d.id);}
    static IconRenderKey key(int i){return new IconRenderKey("pkg"+i,"Activity",0,"DEFAULT","",1,52,320,1);}
    static int checks, failures;
    static void check(boolean ok,String message){checks++;if(!ok){failures++;System.out.println("FAIL "+message);}}
    static void await(CountDownLatch latch)throws Exception{if(!latch.await(3,TimeUnit.SECONDS))throw new AssertionError("worker timeout");}
    static void idle(IconPreviewRepository r)throws Exception {
        long end=System.nanoTime()+TimeUnit.SECONDS.toNanos(3);
        while((r.decodePool.getActiveCount()!=0||!r.decodePool.getQueue().isEmpty())&&System.nanoTime()<end)Thread.sleep(2);
        check(r.decodePool.getActiveCount()==0&&r.decodePool.getQueue().isEmpty(),"workers drained");r.main.drain();
    }
    static void prefetch()throws Exception {
        IconPreviewRepository r=new IconPreviewRepository();
        try {
            r.request(key(1),Priority.P1_ADJACENT,()->new Drawable(7),null);idle(r);
            check(r.cache.get(key(1))!=null,"callback-free prefetch populates cache");
            AtomicInteger operations=new AtomicInteger();
            r.schedule(Priority.P2_IDLE,()->operations.incrementAndGet());idle(r);
            check(operations.get()==1,"metadata operation runs once");
            int beforePause=operations.get();r.pauseP2=true;r.schedule(Priority.P2_IDLE,()->operations.incrementAndGet());idle(r);
            check(operations.get()==beforePause,"memory-pressure metadata stays paused");
            check(r.pendingCount()==0,"prefetch releases pending marker");
        }finally{r.decodePool.shutdownNow();}
    }
    static void eviction()throws Exception {
        IconPreviewRepository r=new IconPreviewRepository();CountDownLatch entered=new CountDownLatch(2),release=new CountDownLatch(1);
        try {
            for(int i=0;i<2;i++)r.request(key(20+i),Priority.P0_VISIBLE,()->{entered.countDown();await(release);return new Drawable(1);},(k,b)->{});
            await(entered);RequestSession s=r.openSession("queue");
            AtomicInteger results=new AtomicInteger();
            for(int i=0;i<110;i++)r.request(s,key(100+i),Priority.P2_IDLE,()->new Drawable(2),(k,b)->results.incrementAndGet());
            check(r.decodePool.getQueue().size()<=96,"low-priority session queue stays bounded");
            IconRenderKey evicted=null;
            for(int i=0;i<110;i++)if(!r.pending.containsKey(key(100+i))){evicted=key(100+i);break;}
            check(evicted!=null,"evicted batch detached before UI delivery");
            AtomicInteger retried=new AtomicInteger();
            if(evicted!=null)r.request(s,evicted,Priority.P0_VISIBLE,()->new Drawable(99),(k,b)->retried.set(b==null?-1:b.id));
            r.main.drain();release.countDown();idle(r);
            check(results.get()==110,"evicted requests complete and release callbacks");
            check(retried.get()==99,"visible retry decodes after low-priority eviction");
            check(r.pendingCount()==0,"queue trimming leaves no pending entries");
            r.cancelSession(s);check(r.activeSessions.isEmpty(),"cancel releases session");
        }finally{release.countDown();r.decodePool.shutdownNow();}
    }
    static void staleCompletion()throws Exception {
        IconPreviewRepository r=new IconPreviewRepository();CountDownLatch oldStarted=new CountDownLatch(1),oldRelease=new CountDownLatch(1),newStarted=new CountDownLatch(1),newRelease=new CountDownLatch(1);
        try {
            IconRenderKey k=key(4);RequestSession old=r.openSession("old");AtomicInteger oldResults=new AtomicInteger(),newResult=new AtomicInteger();
            r.request(old,k,Priority.P0_VISIBLE,()->{oldStarted.countDown();await(oldRelease);return new Drawable(10);},(name,b)->oldResults.incrementAndGet());
            await(oldStarted);r.cancelSession(old);RequestSession fresh=r.openSession("new");
            r.request(fresh,k,Priority.P0_VISIBLE,()->{newStarted.countDown();await(newRelease);return new Drawable(20);},(name,b)->newResult.set(b==null?-1:b.id));
            await(newStarted);oldRelease.countDown();
            long end=System.nanoTime()+TimeUnit.SECONDS.toNanos(3);
            while(r.decodePool.getActiveCount()>1&&System.nanoTime()<end)Thread.sleep(2);
            r.main.drain();
            check(oldResults.get()==0,"cancelled callback not delivered");
            check(newResult.get()==0,"old task cannot consume new request callback");
            check(r.cache.get(k)==null,"cancelled task cannot refill cache");
            newRelease.countDown();idle(r);
            check(newResult.get()==20,"fresh request receives fresh bitmap");
            r.cancelSession(fresh);
        }finally{oldRelease.countDown();newRelease.countDown();r.decodePool.shutdownNow();}
    }
    static void sharedConsumers()throws Exception {
        IconPreviewRepository r=new IconPreviewRepository();CountDownLatch entered=new CountDownLatch(1),release=new CountDownLatch(1);
        try {
            RequestSession one=r.openSession("one"),two=r.openSession("two");AtomicInteger calls=new AtomicInteger(),loads=new AtomicInteger();
            DrawableLoader load=()->{loads.incrementAndGet();entered.countDown();await(release);return new Drawable(30);};
            r.request(one,key(8),Priority.P0_VISIBLE,load,(k,b)->calls.addAndGet(100));await(entered);
            r.request(two,key(8),Priority.P0_VISIBLE,load,(k,b)->calls.incrementAndGet());
            r.cancelSession(one);release.countDown();idle(r);
            check(calls.get()==1,"one cancelled consumer preserves other callback");
            check(loads.get()==1,"shared key only decoded once");
            check(r.pendingCount()==0,"shared request completed");r.cancelSession(two);
        }finally{release.countDown();r.decodePool.shutdownNow();}
    }
    static void cancelledPreparation()throws Exception {
        IconPreviewRepository r=new IconPreviewRepository();CountDownLatch entered=new CountDownLatch(2),release=new CountDownLatch(1);
        try {
            for(int i=0;i<2;i++)r.request(key(50+i),Priority.P0_VISIBLE,()->{entered.countDown();await(release);return new Drawable(1);},(k,b)->{});
            await(entered);RequestSession s=r.openSession("prepare");AtomicInteger calls=new AtomicInteger();
            r.schedule(s,Priority.P2_IDLE,()->calls.incrementAndGet());
            r.request(s,key(60),Priority.P1_ADJACENT,()->{calls.incrementAndGet();return new Drawable(2);},null);
            r.cancelSession(s);
            check(r.decodePool.getQueue().isEmpty(),"cancel removes queued metadata and prefetch");
            release.countDown();idle(r);check(calls.get()==0,"cancelled metadata never executes");
            check(r.pendingCount()==0,"cancelled prefetch releases marker");
        }finally{release.countDown();r.decodePool.shutdownNow();}
    }
    static void memoryPressure()throws Exception {
        IconPreviewRepository r=new IconPreviewRepository();CountDownLatch entered=new CountDownLatch(2),release=new CountDownLatch(1);
        try {
            for(int i=0;i<2;i++)r.request(key(70+i),Priority.P0_VISIBLE,()->{entered.countDown();await(release);return new Drawable(1);},(k,b)->{});
            await(entered);AtomicInteger idleLoads=new AtomicInteger(),visibleLoads=new AtomicInteger();
            r.request(key(72),Priority.P2_IDLE,()->{idleLoads.incrementAndGet();return new Drawable(2);},null);
            r.schedule(Priority.P2_IDLE,()->idleLoads.incrementAndGet());r.pauseP2=true;
            release.countDown();idle(r);
            check(idleLoads.get()==0,"queued idle work stops on memory pressure");
            r.request(key(73),Priority.P0_VISIBLE,()->{visibleLoads.incrementAndGet();return new Drawable(3);},null);idle(r);
            check(visibleLoads.get()==1,"visible work resumes after memory pressure");
            check(r.pendingCount()==0,"pressure leaves no pending entries");
        }finally{release.countDown();r.decodePool.shutdownNow();}
    }
    public static void main(String[] args)throws Exception {
        prefetch();eviction();staleCompletion();sharedConsumers();cancelledPreparation();memoryPressure();
        System.out.println("production preview checks="+checks+" failures="+failures);
        if(failures!=0)System.exit(1);
    }
'''
    with tempfile.TemporaryDirectory(prefix="icon-preview-") as temporary:
        base = pathlib.Path(temporary)
        java = base / "IconPreviewRepository.java"
        java.write_text("import java.util.*;import java.util.concurrent.*;import java.util.concurrent.atomic.*;\npublic class IconPreviewRepository {\n" + declarations + fields + methods + fixture + "\n}", encoding="utf-8")
        log = base / "android/util/Log.java"
        log.parent.mkdir(parents=True)
        log.write_text("package android.util;public class Log {public static int d(String t,String s){return 0;}public static int w(String t,String s,Throwable e){return 0;}}")
        clock = base / "android/os/SystemClock.java"
        clock.parent.mkdir(parents=True)
        clock.write_text("package android.os;public class SystemClock {public static long elapsedRealtime(){return System.nanoTime()/1000000;}}")
        subprocess.run([str(args.jdk / "bin/javac.exe"), "-encoding", "UTF-8", "-d", str(base), str(java), str(log), str(clock)], check=True)
        subprocess.run([str(args.jdk / "bin/java.exe"), "-cp", str(base), "IconPreviewRepository"], check=True)
    host = (ROOT / "launcher/tools/java/com/smartisanos/launcher/theme/MaintainedLauncherSettingsHost.java").read_text(encoding="utf-8")
    adapter = block(host, "    private static final class AppIconAdapter")
    assert "previews.request(sCurrentIconPageSession" not in adapter
    assert "previews.schedule(requestSession," in adapter
    assert "sCurrentIconPageOwner.get() == activity" in block(host, "    public static void onSettingsHostDestroyed")
    print("PASS adapter session identity, metadata cancellation and destroyed-owner wiring")


if __name__ == "__main__":
    main()
