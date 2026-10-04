package com.smartisanos.launcher.theme;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.Looper;
import java.io.*;
import java.lang.reflect.*;
import java.util.*;
import java.util.concurrent.atomic.AtomicReference;
import static com.smartisanos.launcher.theme.ProjectionCacheProbe.*;

/** Actual Aa removal methods/Pe plus the complete production cache, in a shell-only root. */
public final class ProjectionLifecycleProbe {
    static Map<String,Object> map() throws Exception {
        Field f=IconIlluminationCompat.class.getDeclaredField("MASKS");f.setAccessible(true);
        return (Map<String,Object>)f.get(null);
    }
    static File index(String key){return new File(context.getFilesDir(),"shadow/"+key+".projection");}
    static void aa(String method,String key)throws Exception{Class.forName("com.smartisanos.launcher.Aa").getMethod(method,String.class).invoke(null,key);}
    static Object item(String pkg,String component,int user)throws Exception{
        Class<?> t=Class.forName("com.smartisanos.launcher.data.ItemInfo");Object a=t.newInstance();
        t.getField("packageName").set(a,pkg);t.getField("componentName").set(a,component);t.getField("userId").setInt(a,user);return a;
    }
    static String key(Object a)throws Exception{return (String)a.getClass().getMethod("Pe").invoke(a);}
    static void removeItem(Object a)throws Exception{Class.forName("com.smartisanos.launcher.Aa").getMethod("b",a.getClass()).invoke(null,a);}
    static void write(String key,Bitmap a)throws Exception{check(IconIlluminationCompat.write(key,a,false),"ready "+key);}
    static boolean gone(String key){if(index(key).exists()||mapUnchecked().containsKey(key))return false;for(int i=1;i<=8;i++)if(file(key,i).exists())return false;return true;}
    static Map<String,Object> mapUnchecked(){try{return map();}catch(Exception e){throw new AssertionError(e);}}
    static void copy(File from,File to)throws Exception{
        try(InputStream input=new FileInputStream(from);OutputStream output=new FileOutputStream(to)){
            byte[] buf=new byte[4096];int count;while((count=input.read(buf))!=-1)output.write(buf,0,count);
        }
    }
    static void corrupt(File f,boolean retainStamp)throws Exception{
        long stamp=f.lastModified();try(RandomAccessFile r=new RandomAccessFile(f,"rw")){
            r.seek(f.length()/2);int value=r.read();r.seek(f.length()/2);r.write(value^1);
        }check(f.setLastModified(stamp+(retainStamp?0:2000)),"controlled corruption timestamp");
    }
    static void baseline(Bitmap a)throws Exception{
        Object primary=item("fixture.app","Entry",0);String k=key(primary);write(k,a);removeItem(primary);
        check(map().containsKey(k)&&!file(k,1).exists(),"baseline Aa delete leaves memory entry");
        String packageKey="fixture.package_Entry_-1";write(packageKey,a);aa("F","fixture.package");
        check(file(packageKey,1).exists(),"baseline package compares absolute path with package");
        try(FileOutputStream output=new FileOutputStream(file(packageKey,3))){output.write(new byte[]{1,2,3});}
        check(IconIlluminationCompat.write(packageKey,a,false)&&file(packageKey,3).length()==3,"baseline trusts nonzero damaged PNG");
        Object entry=map().get(packageKey);for(int i=0;i<300;i++)map().put("fixture.alias"+i,entry);
        check(map().size()>256,"baseline memory has no capacity");
        System.out.println("BASELINE_F08_STALE_ENTRY_PACKAGE_PATH_AND_UNBOUNDED_MAP=CONFIRMED");
    }
    static void cases(Bitmap a)throws Exception{
        String k="fixture.integrity_Entry_-1";write(k,a);check(index(k).isFile(),"version index committed");
        mark(k);map().clear();write(k,a);notWritten(k);
        corrupt(file(k,4),false);write(k,a);check(file(k,4).lastModified()!=1000,"warm changed CRC regenerated");
        mark(k);corrupt(file(k,5),true);map().clear();write(k,a);check(file(k,5).lastModified()!=1000,"cold checksum rejects same-size same-stamp corruption");
        mark(k);try(FileOutputStream output=new FileOutputStream(file(k,3))){output.write(new byte[]{1,2,3});}
        write(k,a);check(file(k,3).length()>3,"nonzero truncated PNG regenerated");
        mark(k);map().clear();try(FileOutputStream output=new FileOutputStream(index(k))){output.write(new byte[]{1,2,3});}
        write(k,a);check(file(k,1).lastModified()!=1000,"partial index rejected");
        mark(k);map().clear();try(RandomAccessFile r=new RandomAccessFile(index(k),"rw")){r.seek(7);r.write('X');}
        write(k,a);check(file(k,1).lastModified()!=1000,"unknown version rejected");
        mark(k);map().clear();try(FileOutputStream output=new FileOutputStream(index(k),true)){output.write(1);}
        write(k,a);check(file(k,1).lastModified()!=1000,"trailing index bytes rejected");
        mark(k);map().clear();File temporary=new File(index(k).getPath()+".tmp");copy(index(k),temporary);check(index(k).delete(),"incomplete commit has only temp index");
        write(k,a);check(file(k,1).lastModified()!=1000&&!temporary.exists(),"temp index is never trusted and is repaired");
        Bitmap changed=a.copy(Bitmap.Config.ARGB_8888,true);changed.eraseColor(0);map().clear();mark(k);
        write(k,changed);check(file(k,1).lastModified()!=1000,"cold source Alpha change rejects old disk signature");
        check(IconIlluminationCompat.write(k+"-gold",changed,true),"changed source forced reference");sameLayers(k,k+"-gold");changed.recycle();
        Object primary=item("fixture.app","Entry",0),clone=item("fixture.app","Entry",10),other=item("fixture.app","Other",0);
        for(Object it:new Object[]{primary,clone,other})write(key(it),a);
        active=false;removeItem(primary);check(gone(key(primary)),"actual Aa item removes primary while disabled");active=true;
        check(file(key(clone),8).isFile()&&file(key(other),8).isFile(),"Pe isolates clone and other component");write(key(primary),a);
        aa("E",key(other));check(gone(key(other)),"actual Aa exact-key removal");
        String download="fixture.app_###download_cmp###_-1";write(download,a);aa("C","fixture.app");
        check(gone(download)&&file(key(primary),8).isFile(),"actual Aa download key preserves original separator");
        String neighbour="fixture.app2_Entry_-1";write(neighbour,a);
        File unrelated=new File(context.getFilesDir(),"shadow/fixture.app_note.txt");try(FileOutputStream out=new FileOutputStream(unrelated)){out.write(1);}
        map().clear();aa("F","fixture.app");check(gone(key(primary))&&gone(key(clone)),"actual Aa package removes disk entries absent from memory");
        check(file(neighbour,8).isFile()&&unrelated.isFile(),"package delimiter and derived suffix protect neighbours");
        // Block metadata invalidation before a rewrite, then repair only the isolated fixture.
        write(k,a);mark(k);check(index(k).delete()&&index(k).mkdir(),"block index invalidation");
        File child=new File(index(k),"occupied");try(FileOutputStream out=new FileOutputStream(child)){out.write(1);}
        check(!IconIlluminationCompat.write(k,a,true),"index invalidation failure stops rewrite");notWritten(k);
        check(child.delete()&&index(k).delete(),"repair isolated metadata failure");write(k,a);
        // Linux NAME_MAX allows all eight PNGs, but not the longer optional index temp name.
        char[] chars=new char[241];Arrays.fill(chars,'a');String longKey=new String(chars);
        write(longKey,a);check(file(longKey,8).isFile()&&!map().containsKey(longKey),"optional index failure keeps complete PNG result without recording hit");
        String seed="fixture.capacity_Entry_-1";write(seed,a);mark(seed);
        for(int n=0;n<300;n++){
            String alias="fixture.capacity_Entry"+n+"_-1";
            for(int i=1;i<=8;i++){copy(file(seed,i),file(alias,i));file(alias,i).setLastModified(1000);}
            copy(index(seed),index(alias));write(alias,a);check(map().size()<=256,"bounded production admissions "+n);
        }
        check(!map().containsKey(seed)&&file(seed,8).isFile(),"LRU eviction retains GL files");
        write(seed,a);notWritten(seed);check(map().size()==256,"evicted entry reuses disk without growing memory");
        write("fixture.capacity_Entry0_-1",a);write("fixture.capacity_Entry300_-1",a);
        check(map().containsKey("fixture.capacity_Entry0_-1"),"access promotes recently used entry");
        // Both the original Aa removal delegate and write must block on the same monitor.
        final AtomicReference<Throwable> error=new AtomicReference<Throwable>();
        Thread writer=new Thread(new Runnable(){public void run(){try{IconIlluminationCompat.write("fixture.serial_Entry_-1",a,true);}catch(Throwable t){error.set(t);}}});
        Thread remover=new Thread(new Runnable(){public void run(){try{aa("E","fixture.serial_Entry_-1");}catch(Throwable t){error.set(t);}}});
        synchronized(IconIlluminationCompat.class){writer.start();remover.start();
            long end=System.nanoTime()+2_000_000_000L;
            while((writer.getState()!=Thread.State.BLOCKED||remover.getState()!=Thread.State.BLOCKED)&&System.nanoTime()<end)Thread.yield();
            check(writer.getState()==Thread.State.BLOCKED&&remover.getState()==Thread.State.BLOCKED,"actual write and Aa delete share monitor");}
        writer.join(10000);remover.join(10000);check(!writer.isAlive()&&!remover.isAlive()&&error.get()==null,"serialized operations finish without error");
        String serial="fixture.serial_Entry_-1";boolean ready=map().containsKey(serial)&&index(serial).isFile();
        for(int i=1;i<=8;i++)check(file(serial,i).exists()==ready,"serialized layer state "+i);
        System.out.println("PASS PROJECTION_LIFECYCLE_CHECKS="+checks);
    }
    public static void main(String[] args)throws Exception{
        root=new File(args[0]).getCanonicalFile();if(!root.getPath().startsWith("/data/local/tmp/smartisan-projection-f08-"))throw new IllegalArgumentException("unsafe probe root");
        Looper.prepareMainLooper();Class<?> t=Class.forName("android.app.ActivityThread");Object thread=t.getMethod("systemMain").invoke(null);Context system=(Context)t.getMethod("getSystemContext").invoke(thread);
        context=new ProbeContext(system,new File(root,"files"));check(IconIlluminationCompat.enabled(),"real sensor and isolated preference");Bitmap a=artwork(192);
        String phase=args[1],k="fixture.restart_Entry_-1";
        if(phase.equals("baseline"))baseline(a);
        else if(phase.equals("seed")){write(k,a);mark(k);System.out.println("RESTART_SEED_READY");}
        else if(phase.equals("reuse")){write(k,a);notWritten(k);System.out.println("RESTART_VERSIONED_DISK_REUSE=PASS");}
        else if(phase.equals("new-version")){write(k,a);check(file(k,1).lastModified()!=1000,"new APK version regenerates disk");System.out.println("RESTART_NEW_VERSION_REGENERATED=PASS");}
        else if(phase.equals("partial")){index(k).delete();try(FileOutputStream output=new FileOutputStream(file(k,3))){output.write(1);}System.out.println("PARTIAL_WRITE_READY");System.out.flush();Thread.sleep(60000);}
        else if(phase.equals("repair")){write(k,a);check(file(k,3).length()>1&&index(k).isFile(),"restart repairs interrupted derived cache");System.out.println("RESTART_PARTIAL_REPAIR=PASS");}
        else cases(a);a.recycle();
    }
}
