package com.smartisanos.launcher.quickdesktop;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.os.Handler;
import android.os.Looper;
import java.io.File;
import java.io.FileOutputStream;
import java.lang.reflect.Field;

/** Real Android View/Bitmap/Looper lifecycle; platform media/weather boundaries are controlled. */
public class QuickDesktopRefreshProbe {
    static int checks;
    static QuickDesktopHostView host;
    static Handler main;
    static File root;
    static int settledReads;
    static void check(boolean ok,String why){checks++;if(!ok)throw new AssertionError(why);}
    static Object field(Object target,String name)throws Exception{Field f=target.getClass().getDeclaredField(name);f.setAccessible(true);return f.get(target);}
    static QuickDesktopContentView content()throws Exception{return (QuickDesktopContentView)field(host,"contentView");}
    static void paint(String name)throws Exception{
        host.measure(android.view.View.MeasureSpec.makeMeasureSpec(1080,1073741824),android.view.View.MeasureSpec.makeMeasureSpec(1920,1073741824));
        host.layout(0,0,1080,1920);Bitmap b=Bitmap.createBitmap(1080,1920,Bitmap.Config.ARGB_8888);
        host.draw(new Canvas(b));try(FileOutputStream out=new FileOutputStream(new File(root,name+".png"))){b.compress(Bitmap.CompressFormat.PNG,100,out);}b.recycle();
    }
    static void stage2(){try{
        check(content()!=null,"first reveal creates content");check(QuickDesktopMediaBridge.reads==1,"one initial media read");
        check(QuickDesktopMediaBridge.readThread!=Thread.currentThread(),"media query off MAIN");
        int reads=QuickDesktopMediaBridge.reads,preferences=QuickDesktopController.reads;
        for(int i=0;i<80;i++)paint("repeated");
        check(QuickDesktopMediaBridge.reads==reads&&QuickDesktopController.reads==preferences,"draw performs no media or preference queries");
        paint("fixed");host.closeImmediately("fixture-close");
        settledReads=QuickDesktopMediaBridge.reads;
        check(!((Boolean)field(content(),"refreshActive")),"close stops refresh");
        main.postDelayed(new Runnable(){public void run(){stage3();}},1200);
    }catch(Throwable e){fail(e);}}
    static void stage3(){try{
        check(QuickDesktopMediaBridge.reads==settledReads,"hidden page does not poll");
        QuickDesktopMediaBridge.block=true;host.ensureVisibleForOriginalRequest();host.setOpenProgress(1,"fixture-reopen");
        main.postDelayed(new Runnable(){public void run(){stage4();}},100);
    }catch(Throwable e){fail(e);}}
    static void stage4(){try{
        check(QuickDesktopMediaBridge.reads==settledReads+1,"reopen starts fresh media read");
        host.closeImmediately("fixture-close-pending");
        QuickDesktopMediaBridge.release.countDown();
        main.postDelayed(new Runnable(){public void run(){stage5();}},150);
    }catch(Throwable e){fail(e);}}
    static void stage5(){try{
        QuickDesktopMediaBridge.Snapshot s=(QuickDesktopMediaBridge.Snapshot)field(content(),"mediaSnapshot");
        check("Fixture song".equals(s.title),"old generation result rejected after close");
        QuickDesktopController.music=false;host.ensureVisibleForOriginalRequest();host.setOpenProgress(1,"fixture-no-music");
        main.postDelayed(new Runnable(){public void run(){finish();}},100);
    }catch(Throwable e){fail(e);}}
    static void finish(){try{
        check(QuickDesktopMediaBridge.reads==settledReads+1,"disabled music does not query media");
        paint("no-music");host.releaseForDetach();
        check(!((Boolean)field(content(),"refreshActive")),"detach stops refresh");
        System.out.println("PASS QUICKDESKTOP_REFRESH_CHECKS="+checks);System.exit(0);
    }catch(Throwable e){fail(e);}}
    static void fail(Throwable e){e.printStackTrace();System.exit(1);}
    public static void main(String[] args)throws Exception{
        if(Looper.myLooper()==null)Looper.prepareMainLooper();
        Class<?> at=Class.forName("android.app.ActivityThread");Object thread=at.getMethod("systemMain").invoke(null);
        Context system=(Context)at.getMethod("getSystemContext").invoke(thread);
        Context context=system.createPackageContext("com.smartisanos.launcher",Context.CONTEXT_IGNORE_SECURITY);
        root=new File(args[0]);main=new Handler(Looper.getMainLooper());
        host=new QuickDesktopHostView(new android.view.ContextThemeWrapper(context,android.R.style.Theme_DeviceDefault));
        if(args.length>1&&"baseline".equals(args[1])){
            host.setOpenProgress(1,"baseline");paint("fixed");
            paint("no-music");System.out.println("PASS QUICKDESKTOP_BASELINE_RENDER");System.exit(0);
        }
        check(content()==null,"disabled/unrevealed host has no decoded content");host.refreshContent();
        check(content()==null,"settings invalidation cannot eagerly create content");
        host.ensureVisibleForOriginalRequest();host.setOpenProgress(1,"fixture-open");
        main.postDelayed(new Runnable(){public void run(){stage2();}},180);
        Looper.loop();
    }
}
