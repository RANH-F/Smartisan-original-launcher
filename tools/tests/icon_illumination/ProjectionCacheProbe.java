package com.smartisanos.launcher.theme;

import android.content.*;
import android.graphics.*;
import android.os.Looper;
import java.io.*;
import java.lang.reflect.*;
import java.util.Arrays;

/** Real Android bitmap/file/cache behavior in an isolated shell process. */
public final class ProjectionCacheProbe {
    public static Context context;
    static File root;static int checks;static boolean active=true;
    static final class ProbeContext extends ContextWrapper {
        final File files;final SharedPreferences prefs;
        ProbeContext(Context system,File directory){super(system);files=directory;files.mkdirs();
            prefs=(SharedPreferences)Proxy.newProxyInstance(getClass().getClassLoader(),new Class[]{SharedPreferences.class},new InvocationHandler(){public Object invoke(Object p,Method m,Object[] a){if(m.getName().equals("getBoolean"))return active;throw new AssertionError(m.getName());}});}
        public File getFilesDir(){return files;}
        public SharedPreferences getSharedPreferences(String n,int m){return prefs;}
    }
    static void check(boolean ok,String label){checks++;if(!ok)throw new AssertionError(label);System.out.println("PASS "+label);}
    static File file(String key,int layer){return new File(context.getFilesDir(),"shadow/"+key+"_"+layer+".png");}
    static Bitmap artwork(int size){
        Bitmap bitmap=Bitmap.createBitmap(size,size,Bitmap.Config.ARGB_8888);int[] p=new int[size*size];
        for(int y=0;y<size;y++)for(int x=0;x<size;x++){
            int a=x<5||y<7||x>size-8||y>size-9?0:(x*17+y*31)%256;
            if(x>size/3&&x<size/2&&y>size/3&&y<size/2)a=0;
            p[y*size+x]=(a<<24)|0x00808080;
        }bitmap.setPixels(p,0,size,0,0,size,size);return bitmap;
    }
    static int[] pixels(File f){Bitmap b=BitmapFactory.decodeFile(f.getPath());check(b!=null&&b.getWidth()==256&&b.getHeight()==256,"256px layer decoded");int[] p=new int[65536];b.getPixels(p,0,256,0,0,256,256);b.recycle();return p;}
    static void sameLayers(String a,String b){for(int i=1;i<=8;i++)check(Arrays.equals(pixels(file(a,i)),pixels(file(b,i))),"layer "+i+" pixels unchanged");}
    static void mark(String key){for(int i=1;i<=8;i++)check(file(key,i).setLastModified(1000),"mark layer "+i);}
    static void notWritten(String key){for(int i=1;i<=8;i++)check(file(key,i).lastModified()==1000,"layer "+i+" reused");}
    static void bench(String key,Bitmap a,Bitmap b,String mode){
        for(int i=0;i<60;i++)IconIlluminationCompat.write(key,(i%2==0?a:b),false);
        double[] times=new double[5];
        for(int sample=0;sample<5;sample++){
            long start=System.nanoTime();
            for(int i=0;i<40;i++)if(!IconIlluminationCompat.write(key,(i%2==0?a:b),false))throw new AssertionError("benchmark write");
            times[sample]=(System.nanoTime()-start)/40000.0;
        }
        Arrays.sort(times);
        System.out.println("BENCH mode="+mode+" medianUs="+times[2]);
    }
    static void cases()throws Exception{
        check(!IconIlluminationCompat.write(null,null,false),"null inputs ignored");
        for(int size:new int[]{140,192,256}){
            Bitmap a=artwork(size);String key="size"+size;
            check(IconIlluminationCompat.write(key,a,false),"initial eight layers");
            mark(key);check(IconIlluminationCompat.write(key,a,false),"same revision hit");notWritten(key);
            Bitmap copy=a.copy(Bitmap.Config.ARGB_8888,true);
            check(IconIlluminationCompat.write(key,copy,false),"same Alpha new bitmap hit");notWritten(key);
            check(IconIlluminationCompat.write(key+"-gold",copy,true),"forced reference generated");sameLayers(key,key+"-gold");
            // RGB changes invalidate generation, while preserving the exact Alpha signature.
            int[] row=new int[size];for(int y=0;y<size;y++){copy.getPixels(row,0,size,0,y,size,1);for(int x=0;x<size;x++)row[x]=(row[x]&0xff000000)|0x000000ff;copy.setPixels(row,0,size,0,y,size,1);}
            mark(key);check(IconIlluminationCompat.write(key,copy,false),"RGB-only revision keeps projection");notWritten(key);
            new Canvas(copy).drawRect(20,20,size/2,size/2,new Paint());
            check(IconIlluminationCompat.write(key,copy,false),"changed Alpha regenerates");
            check(file(key,1).lastModified()!=1000,"changed Alpha does not use old layer");
            check(IconIlluminationCompat.write(key+"-gold",copy,true),"changed reference generated");sameLayers(key,key+"-gold");
            mark(key);check(IconIlluminationCompat.write(key,copy,true),"force bypasses cache");check(file(key,1).lastModified()!=1000,"force rewrites");
            check(file(key,3).delete(),"remove one layer");check(IconIlluminationCompat.write(key,copy,false)&&file(key,3).isFile(),"missing layer regenerates");
            try(FileOutputStream empty=new FileOutputStream(file(key,4))){}
            check(IconIlluminationCompat.write(key,copy,false)&&file(key,4).length()>0,"empty layer regenerates");
            copy.setDensity(copy.getDensity()+1);mark(key);check(IconIlluminationCompat.write(key,copy,false),"density revision accepted");check(file(key,1).lastModified()!=1000,"density metadata forces regeneration");
            copy.setHasAlpha(false);mark(key);check(IconIlluminationCompat.write(key,copy,false),"opaque metadata accepted");check(file(key,1).lastModified()!=1000,"hasAlpha metadata forces regeneration");
            check(IconIlluminationCompat.write(key+"-gold",copy,true),"opaque reference generated");sameLayers(key,key+"-gold");
            copy.recycle();check(!IconIlluminationCompat.write(key,copy,false),"recycled source rejected");a.recycle();
        }
        Bitmap a=artwork(192);check(IconIlluminationCompat.write("failure",a,true),"seed write failure case");
        File blocked=file("failure",4);check(blocked.delete()&&blocked.mkdir(),"block output rename with directory");
        try(FileOutputStream child=new FileOutputStream(new File(blocked,"occupied"))){child.write(1);}
        check(!IconIlluminationCompat.write("failure",a,true),"partial force rewrite reports failure");
        check(!IconIlluminationCompat.write("failure",a,false),"partial failure cannot leave a successful cache hit");
        check(new File(blocked,"occupied").delete()&&blocked.delete(),"repair isolated output path");
        check(IconIlluminationCompat.write("failure",a,false),"repair regenerates complete set");
        active=false;check(!IconIlluminationCompat.write("failure",a,false),"disabled does no write");active=true;
        // Cache entries must not retain the caller's bitmap or cross a different files root.
        Field map=IconIlluminationCompat.class.getDeclaredField("MASKS");map.setAccessible(true);
        Object entry=((java.util.Map<?,?>)map.get(null)).get("failure");
        Field ref=entry.getClass().getDeclaredField("artwork");ref.setAccessible(true);
        check(ref.get(entry) instanceof java.lang.ref.WeakReference,"source reference is weak");
        Context old=context;context=new ProbeContext(old,new File(root,"other-root"));
        check(IconIlluminationCompat.write("failure",a,false)&&file("failure",8).isFile(),"different output root cannot reuse old cache");context=old;a.recycle();
        System.out.println("PASS PROJECTION_CACHE_CHECKS="+checks);
    }
    public static void main(String[] args)throws Exception{
        root=new File(args[0]).getCanonicalFile();if(!root.getPath().startsWith("/data/local/tmp/smartisan-projection-cache-f07-"))throw new IllegalArgumentException("Unsafe probe root");
        Looper.prepareMainLooper();Class<?> t=Class.forName("android.app.ActivityThread");Object thread=t.getMethod("systemMain").invoke(null);Context system=(Context)t.getMethod("getSystemContext").invoke(thread);
        context=new ProbeContext(system,new File(root,"files"));check(IconIlluminationCompat.enabled(),"real rotation sensor available with isolated prefs");
        Bitmap a=artwork(192),b=a.copy(Bitmap.Config.ARGB_8888,true);
        long start=System.nanoTime();check(IconIlluminationCompat.write("bench",a,false),"cold generation");System.out.println("COLD_GENERATE_US="+(System.nanoTime()-start)/1000);
        bench("bench",a,a,"same-revision");bench("bench",a,b,"same-alpha-new-bitmap");a.recycle();b.recycle();
        if(!args[1].equals("baseline"))cases();
        else System.out.println("BASELINE_POST_RASTER_CACHE=MEASURED");
    }
}
