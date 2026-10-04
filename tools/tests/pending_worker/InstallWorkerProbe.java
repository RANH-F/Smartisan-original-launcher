package com.smartisanos.launcher.install;

import android.content.*;
import android.os.*;
import java.io.File;
import java.lang.reflect.*;
import java.util.*;
import java.util.concurrent.*;
import com.smartisanos.launcher.model.*;

/** Real Android event scheduling; package/model/restore edges never touch user data. */
public final class InstallWorkerProbe {
    static Thread main;static Handler handler;static boolean baseline;
    static int checks, notifications, restores;static volatile Throwable failure;
    static CountDownLatch entered=new CountDownLatch(1),release=new CountDownLatch(1);
    static List<String> restored=Collections.synchronizedList(new ArrayList<String>());
    static void check(boolean ok,String label){checks++;if(!ok)throw new AssertionError(label);System.out.println("PASS "+label);}
    public static void restore(String pkg){
        restores++;
        check(Thread.currentThread()==main?baseline:!baseline,"restore thread boundary");
        if(pkg.equals("burst0")&&!baseline){entered.countDown();try{if(!release.await(5,TimeUnit.SECONDS))throw new AssertionError("MAIN heartbeat missing");}catch(Exception e){throw new AssertionError(e);}}
        restored.add(pkg);
    }
    public static void notifyModel(String pkg){
        check(Thread.currentThread()==main,"original notification stays on MAIN");
        check(restored.contains(pkg),"restore finishes before original notification");
        notifications++;
    }
    static void field(String name,Object value)throws Exception{Field f=SmartisanInstallManager.class.getDeclaredField(name);f.setAccessible(true);f.set(null,value);}
    static class ProbeContext extends ContextWrapper {
        final File root;final Set<String> replay=new HashSet<String>();ProbeContext(File r){super(null);root=r;}
        public String getPackageName(){return "com.smartisanos.fixture";}
        public Context getApplicationContext(){return this;}
        public android.content.pm.PackageManager getPackageManager(){return new InstallPackageManager();}
        public File getFilesDir(){File f=new File(root,"files");f.mkdirs();return f;}
        public File getCacheDir(){File f=new File(root,"cache");f.mkdirs();return f;}
        public SharedPreferences getSharedPreferences(String n,int m){
            final Object[] editor={null};
            editor[0]=Proxy.newProxyInstance(getClass().getClassLoader(),new Class[]{SharedPreferences.Editor.class},new InvocationHandler(){public Object invoke(Object p,Method m,Object[] a){if(m.getName().equals("commit"))return true;if(m.getName().equals("apply"))return null;return editor[0];}});
            return (SharedPreferences)Proxy.newProxyInstance(getClass().getClassLoader(),new Class[]{SharedPreferences.class},new InvocationHandler(){public Object invoke(Object p,Method m,Object[] a){if(m.getName().equals("edit"))return editor[0];if(m.getName().equals("getStringSet"))return replay;if(m.getName().startsWith("get"))return a[a.length-1];throw new AssertionError(m.getName());}});
        }
    }
    static Object event(String p,String action,boolean replacing,int user)throws Exception{
        Class<?> c=Class.forName(SmartisanInstallManager.class.getName()+"$PendingPackageEvent");
        Constructor<?> ctor=c.getDeclaredConstructors()[0];ctor.setAccessible(true);
        return ctor.newInstance(p,action,replacing,user,(long)user,"","fixture");
    }
    public static void main(String[] args)throws Exception{
        File root=new File(args[0]).getCanonicalFile();if(!root.getPath().startsWith("/data/local/tmp/smartisan-pending-worker-f06-"))throw new IllegalArgumentException("Unsafe root");
        baseline=args[1].equals("baseline");Looper.prepareMainLooper();main=Thread.currentThread();handler=new Handler(Looper.getMainLooper());
        final ProbeContext c=new ProbeContext(root);HandlerThread thread=new HandlerThread("SmartisanInstallManagerFixture");thread.start();Handler worker=new Handler(thread.getLooper());
        field("sStarted",true);field("sModelReady",true);field("sAppContext",c);field("sHandler",handler);field("sWorkerHandler",worker);
        ProfileRepository profiles=new ProfileRepository(c);field("sProfiles",profiles);field("sPackageStates",new PackageStateRepository(c,profiles));
        Class<?> eventClass=Class.forName(SmartisanInstallManager.class.getName()+"$PendingPackageEvent");
        final Method attempt=SmartisanInstallManager.class.getDeclaredMethod("attemptOriginalPackageAdd",Context.class,eventClass);attempt.setAccessible(true);
        final int count=baseline?1:10;
        worker.post(new Runnable(){public void run(){try{
            for(int i=0;i<count;i++){Object e=event("burst"+i,Intent.ACTION_PACKAGE_ADDED,false,i%2==0?0:10);attempt.invoke(null,c,e);attempt.invoke(null,c,e);}
            if(!baseline){int before=restores;
                attempt.invoke(null,c,event("replacement",Intent.ACTION_PACKAGE_ADDED,true,0));
                attempt.invoke(null,c,event("changed",Intent.ACTION_PACKAGE_CHANGED,false,0));
                LauncherModelRepository.existing=true;attempt.invoke(null,c,event("represented",Intent.ACTION_PACKAGE_ADDED,false,0));LauncherModelRepository.existing=false;
                check(restores==before,"updates and represented items do not restore or duplicate ADD");}
            if(!baseline){
                // Persisted dispatch must not suppress recovery after the process exits in IO.
                c.replay.add("restart|"+Intent.ACTION_PACKAGE_ADDED+"|false|0|0||1|true|true|0");
                Method load=SmartisanInstallManager.class.getDeclaredMethod("restorePendingEvents",Context.class);load.setAccessible(true);load.invoke(null,c);
                Field events=SmartisanInstallManager.class.getDeclaredField("PENDING_PACKAGE_EVENTS");events.setAccessible(true);
                Object replayed=((Map<?,?>)events.get(null)).values().iterator().next();
                Field dispatched=replayed.getClass().getDeclaredField("dispatched");dispatched.setAccessible(true);
                check(!dispatched.getBoolean(replayed),"prior process delivery flag is reclassified");
                attempt.invoke(null,c,replayed);attempt.invoke(null,c,replayed);
                int before=restores;
                c.replay.clear();c.replay.add("represented-restart|"+Intent.ACTION_PACKAGE_ADDED+"|false|0|0||1|true|true|0");load.invoke(null,c);
                for(Object candidate:((Map<?,?>)events.get(null)).values()){
                    Field name=candidate.getClass().getDeclaredField("packageName");name.setAccessible(true);
                    if(name.get(candidate).equals("represented-restart")){LauncherModelRepository.existing=true;attempt.invoke(null,c,candidate);LauncherModelRepository.existing=false;}
                }
                check(restores==before,"replay of represented model item does not duplicate ADD");
            }
        }catch(Throwable e){failure=e;}finally{handler.post(new Runnable(){public void run(){
            if(failure!=null)throw new AssertionError(failure);
            int expected=count+(baseline?0:1);
            check(restores==expected&&notifications==expected,"burst replay and repeated callbacks produce one restore/ADD per event");
            System.out.println(baseline?"BASELINE_PENDING_ON_MAIN":"PASS INSTALL_WORKER_CHECKS="+checks);System.exit(0);
        }});}}});
        if(!baseline)new Thread(new Runnable(){public void run(){try{if(!entered.await(5,TimeUnit.SECONDS))throw new AssertionError("worker missing");handler.post(new Runnable(){public void run(){check(notifications==0,"no original ADD before blocked restore completes");check(restored.isEmpty(),"MAIN heartbeat while restore blocked");release.countDown();}});}catch(Throwable e){failure=e;release.countDown();}}}).start();
        handler.postDelayed(new Runnable(){public void run(){throw new AssertionError("fixture timed out");}},12000);
        Looper.loop();
    }
}
