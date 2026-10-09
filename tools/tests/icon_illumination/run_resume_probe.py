"""Execute production Smali brightness and texture failure paths on Android.

The event queue, scene gate and GPU upload boundary are explicit fixtures.
This proves state recovery and binding admission, not desktop visual acceptance.
"""
import argparse, json, os, re, subprocess, uuid, zipfile
from pathlib import Path

ROOT = Path(__file__).resolve().parents[3]
S = 'com/smartisanos/smengine/'
L = 'com/smartisanos/launcher/'

def method(source, signature):
    start = source.index(signature)
    return source[start:source.index('.end method', start) + len('.end method')]

def main():
    ap = argparse.ArgumentParser(__doc__)
    for name in ('serial', 'jdk', 'sdk', 'output'): ap.add_argument('--'+name, required=True)
    ap.add_argument('--baseline', action='store_true')
    a = ap.parse_args(); out=Path(a.output); out.mkdir(parents=True, exist_ok=True)
    jdk, sdk = Path(a.jdk), Path(a.sdk); os.environ['JAVA_HOME']=str(jdk)
    def run(cmd, log=None):
        r=subprocess.run([str(v) for v in cmd], capture_output=True, text=True, encoding='utf8', errors='replace', timeout=90)
        if log: (out/log).write_text(r.stdout+r.stderr, encoding='utf8')
        if r.returncode: raise RuntimeError(r.stdout+r.stderr)
        return r.stdout
    fixtures={
        S+'n.java': 'package com.smartisanos.smengine;public class n {public static java.util.ArrayDeque<Runnable> events=new java.util.ArrayDeque<>();Runnable r;public static n obtain(){return new n();}public void j(Runnable v){r=v;}public void q(float f){events.add(r);}}',
        S+'Oa.java': 'package com.smartisanos.smengine;public class Oa implements Runnable {public int start,duration=300;public float mU,nU,currentLux;public boolean running,suspended,hasSample;public void run(){}}',
        S+'Na.java': 'package com.smartisanos.smengine;public class Na {public float[] iU=new float[16];public int[] jU=new int[8];public float shadowRadius,kU,lU=.5f,x,y,scale;}',
        S+'Ka.java': 'package com.smartisanos.smengine;public class Ka extends n {public Ka(Ra r,int i){}}',
        S+'Ma.java': 'package com.smartisanos.smengine;public class Ma {public float getInterpolation(float v){return v;}}',
        S+'SceneNode.java': 'package com.smartisanos.smengine;public class SceneNode {public void forceUpdateNeedDisplay(){}}',
        S+'Q.java': 'package com.smartisanos.smengine;public class Q {public SceneNode getRootNode(){return new SceneNode();}}',
        S+'Ra.java': '''package com.smartisanos.smengine;public class Ra {
public static Na[] bV={new Na()};public static Ra instance=new Ra();public static Oa gV=new Oa();public static boolean dV;public static float eV=5000,fV=0;
public static boolean sunny=true;public static float opacity;public int VU=2000;public static Ea textures=new Ea();
public static Ra getInstance(){return instance;}public boolean w(float a,float b){return false;}
public static Oa resumeShadowOwner(){return gV;}public void resumeShadowTransition(){}public boolean restoreShadowLux(float f){return true;}public void applyShadowLux(float a,float b){}
public int lt(){return VU;}public Q jt(){return new Q();}public void wt(){}public boolean tt(){return sunny;}public void V(float f){opacity=f;}
public static Ma ae(){return new Ma();}public static float S(float f){return qa(f);}private static float qa(float f){return f;}
public void q(int i,boolean b){}public void c(int i,float a,float b,float c,float d){}public void c(int[] i){}public void W(float f){}public void U(float f){}
public Ea rt(){return textures;}public static com.smartisanos.launcher.va access$200(){return new com.smartisanos.launcher.va();}}''',
        L+'va.java': 'package com.smartisanos.launcher;public class va {public static boolean DBG,IS_USER;public void u(String s){}public void info(String s){}}',
        L+'J.java': 'package com.smartisanos.launcher;public class J {public float zg=10;public static float c(J j){return j.zg;}public static float a(J j,float v){return j.zg=v;}}',
        L+'r.java': 'package com.smartisanos.launcher;public class r implements android.hardware.SensorEventListener,Runnable {public J this$0;private volatile float latestLux;private volatile boolean queued;private volatile long deliveryEpoch;private long appliedEpoch;public r(J j){this$0=j;}public void onSensorChanged(android.hardware.SensorEvent e){}public void onAccuracyChanged(android.hardware.Sensor s,int i){}public void run(){}}',
        L+'view/Eb.java': 'package com.smartisanos.launcher.view;public class Eb {public static Eb getInstance(){return new Eb();}public com.smartisanos.launcher.view.b.fa Ih(){return new com.smartisanos.launcher.view.b.fa();}public com.smartisanos.launcher.view.b.fa Gh(){return Ih();}}',
        L+'view/b/fa.java': 'package com.smartisanos.launcher.view.b;public class fa {public static boolean editing;public boolean vm(){return editing;}public int getSinglePageMode(){return 9;}}',
        L+'ub.java': 'package com.smartisanos.launcher;public class ub {public static ub getInstance(){return new ub();}public boolean Rc(){return true;}public boolean S(int v){return true;}public void Sc(){}}',
        L+'theme/IconIlluminationCompat.java': '''package com.smartisanos.launcher.theme;public class IconIlluminationCompat {
public static long epoch=1000;public static long sensorEpoch(android.hardware.SensorEventListener l){return active?epoch:0;}
public static boolean active=true;public static boolean sensorActive(android.hardware.SensorEventListener l){return active;}
public static boolean acceptsSensorEvent(android.hardware.SensorEventListener l,long t){return active&&t>=1000;}
public static void traceLightFrame(float a,float b,int c){}public static void traceProjectionBinding(String s,boolean b){}
public static boolean projectionFileReadable(String s){return true;}public static void projectionReadFailed(String s){}
public static boolean isProjectionTexture(String s){return s!=null&&s.contains("/shadow/");}
public static boolean allProjectionLayersBound(boolean[] b){for(boolean v:b)if(!v)return false;return true;}}''',
        L+'theme/IconRasterDiagnostics.java': 'package com.smartisanos.launcher.theme;public class IconRasterDiagnostics {public static android.graphics.Bitmap recoverMissingGeneratedTexture(String s){return null;}}',
        L+'xa.java': 'package com.smartisanos.launcher;public class xa {public static android.graphics.Bitmap getBitmap(String s){com.smartisanos.smengine.mymaterial.f.fallback=s;return android.graphics.Bitmap.createBitmap(2,2,android.graphics.Bitmap.Config.ARGB_8888);}}',
        L+'e/s.java': 'package com.smartisanos.launcher.e;public class s {public static android.graphics.Bitmap k(int a,int b){return null;}}',
        S+'Ca.java': 'package com.smartisanos.smengine;public class Ca {public int mT=1,nT=1,mWrapS,mWrapT;}',
        S+'Ea.java': 'package com.smartisanos.smengine;public class Ea {public java.util.HashMap<String,Da> tT=new java.util.HashMap<>();public Da bb(String s){return tT.get(s);}public void a(String s,Da d){tT.put(s,d);}public void ab(String s){tT.remove(s);}public void cb(String s){tT.remove(s);}public void resetProjectionBindings(){}}',
        S+'Da.java': '''package com.smartisanos.smengine;public class Da {android.graphics.Bitmap bitmap;public Da(int a,int b,int c,int d,android.graphics.Bitmap p){bitmap=p;}
public void Ub(boolean b){}public void Tb(boolean b){}public void e(int a,int b,int c,int d){}public boolean Sb(boolean b){return bitmap!=null;}
public static boolean _a(String s){return false;}public static String Ya(String s){return s;}public static boolean g(String[] s){return false;}public static int Za(String s){return -1;}}''',
        S+'P.java': 'package com.smartisanos.smengine;public class P {public static void glActiveTexture(int i){}}',
        S+'y.java': 'package com.smartisanos.smengine;public class y {}',
        S+'mymaterial/f.java': '''package com.smartisanos.smengine.mymaterial;import com.smartisanos.smengine.*;public class f {
private static com.smartisanos.launcher.va log=new com.smartisanos.launcher.va();private String[] XV=new String[8];private Ca[] YV=new Ca[8];private boolean[] ZV=new boolean[8],jW=new boolean[8];public static String fallback;public static int draws;
public f(){for(int i=0;i<8;i++)YV[i]=new Ca();}public void names(String[] n){XV=n;}protected boolean a(String s,Ca c,int i){return false;}protected android.graphics.Bitmap hb(String s){return null;}
public android.graphics.Bitmap read(String s){return hb(s);}public boolean bind(String s){return a(s,new Ca(),0);}protected android.graphics.Bitmap gb(String s){fallback=s;return android.graphics.Bitmap.createBitmap(2,2,android.graphics.Bitmap.Config.ARGB_8888);}
private android.graphics.Bitmap s(String[] s){return null;}protected int rc(int i){return i;}public void Ht(){}protected boolean projectionTexturesReady(){return true;}
public void As(){}public void a(boolean b,y y,boolean x,boolean z){}public void p(SceneNode n){}public void Nt(){}public void Pt(){}public void xc(int i){}public void yc(int i){}public void tc(int i){}public void wc(int i){}public void vc(int i){}public void uc(int i){}public void b(y y,boolean b){draws++;}}''',
        S+'mymaterial/h.java': 'package com.smartisanos.smengine.mymaterial;import com.smartisanos.smengine.*;public class h extends f {public void a(SceneNode n,y y,boolean b){}}',
        S+'ResumeProbe.java': r'''package com.smartisanos.smengine;
import java.io.*;import android.graphics.*;import com.smartisanos.launcher.theme.IconIlluminationCompat;import com.smartisanos.launcher.view.b.fa;import com.smartisanos.smengine.mymaterial.*;
public class ResumeProbe {static int checks;static void check(boolean b,String s){checks++;if(!b)throw new AssertionError(s);}static void drain(){int limit=300;while(!n.events.isEmpty()){check(limit-->0,"event loop unbounded");n.events.remove().run();}}
static void reset(){n.events.clear();Ra.gV=new Oa();Ra.opacity=0;fa.editing=false;}
static float expected(float lux,float base){return base*Math.min(1f,Math.max(0f,(float)Math.log((lux+2f)/2f)/10f));}
static android.hardware.SensorEvent event(float lux,long time)throws Exception{java.lang.reflect.Constructor<?> c=android.hardware.SensorEvent.class.getDeclaredConstructor(int.class);c.setAccessible(true);android.hardware.SensorEvent e=(android.hardware.SensorEvent)c.newInstance(1);e.values[0]=lux;e.timestamp=time;return e;}
public static void main(String[] args){try{exercise(args);}catch(Throwable error){error.printStackTrace(System.out);System.exit(1);}}
static void exercise(String[] args)throws Exception{boolean baseline=args[1].equals("baseline");Ra w=Ra.getInstance();reset();check(w.w(10,100),"first update accepted");n.events.remove().run();fa.editing=true;n.events.remove().run();
if(baseline){check(Ra.gV.start>0&&!w.w(100,500)&&n.events.isEmpty(),"baseline interrupted transition did not freeze");f material=new f();Bitmap b=material.read(args[0]+"/shadow/app_1.png");check(b!=null&&f.fallback.equals("Textures/1080p/shadow/com.android.settings_8.png"),"baseline fixed wrong-contour fallback not reproduced");System.out.println("BASELINE_FROZEN_TRANSITION_AND_WRONG_MASK checks="+checks);return;}
check(Ra.gV.suspended&&Ra.gV.running,"interrupted transition retained");check(w.w(100,500),"latest reading retained while suspended");fa.editing=false;w.resumeShadowTransition();w.resumeShadowTransition();check(n.events.size()==1,"resume duplicated task");drain();check(!Ra.gV.running&&!Ra.gV.suspended,"transition state never completed");check(Math.abs(Ra.opacity-expected(500,.5f))<.00001f,"retained latest lux endpoint lost");
for(boolean sunny:new boolean[]{true,false}){reset();Ra.sunny=sunny;check(w.w(10,100),"new update");for(int i=1;i<=1000;i++)check(w.w(100,i+100),"pending update rejected");check(n.events.size()==1,"pre-first-frame burst duplicated task");drain();check(Math.abs(Ra.opacity-expected(1100,sunny?.5f:.7f))<.00001f,"weather coefficient or final lux changed");}
reset();com.smartisanos.launcher.J j=new com.smartisanos.launcher.J();com.smartisanos.launcher.r sensor=new com.smartisanos.launcher.r(j);sensor.onSensorChanged(event(Float.NaN,2000));sensor.onSensorChanged(event(-1,2000));sensor.onSensorChanged(event(200,999));check(n.events.isEmpty(),"invalid/stale sensor sample scheduled");for(int i=0;i<1000;i++)sensor.onSensorChanged(event(20+i,2000));check(n.events.size()==1,"light burst not coalesced");drain();check(j.zg==1019,"latest light reading lost");reset();sensor.onSensorChanged(event(2000,2000));IconIlluminationCompat.active=false;drain();check(n.events.isEmpty()&&!Ra.gV.running,"paused sensor task entered renderer");IconIlluminationCompat.active=true;
reset();sensor.onSensorChanged(event(3000,2000));IconIlluminationCompat.epoch++;drain();check(!Ra.gV.running,"older GL delivery survived re-registration epoch");sensor.onSensorChanged(event(2500,2000));drain();check(j.zg==2500,"current epoch reading lost");
reset();com.smartisanos.launcher.J first=new com.smartisanos.launcher.J();first.zg=20;com.smartisanos.launcher.r initial=new com.smartisanos.launcher.r(first);initial.onSensorChanged(event(20,2000));drain();check(Ra.gV.hasSample&&Ra.gV.currentLux==20&&!Ra.gV.running,"first reading matching legacy default was ignored");check(Math.abs(Ra.opacity-expected(20,Ra.sunny?.5f:.7f))<.00001f,"first sample used fake default brightness");
Ra.opacity=.7f;w.restoreShadowLux(20);check(Math.abs(Ra.opacity-expected(20,Ra.sunny?.5f:.7f))<.00001f,"unchanged resume left overwritten profile intensity");w.applyShadowLux(20,.5f);check(Math.abs(Ra.opacity-expected(20,.5f))<.00001f,"weather preset coefficient changed");Ra.opacity=.7f;w.q(0,false);check(Math.abs(Ra.opacity-expected(20,.5f))<.00001f,"weather refresh erased known lux");reset();w.q(0,false);check(Ra.opacity==.5f,"sensor-unavailable weather fallback changed");
File dir=new File(args[0],"shadow");dir.mkdirs();f material=new f();String missing=new File(dir,"app_1.png").toString();check(material.read(missing)==null,"missing projection borrowed settings contour");check(!material.bind(missing)&&Ra.textures.bb(missing)==null,"missing projection poisoned texture cache");Bitmap originalFallback=material.read(args[0]+"/ordinary.png");check(originalFallback!=null,"ordinary fallback changed");String[] names=new String[8];for(int i=0;i<8;i++){names[i]=new File(dir,"test_"+(i+1)+".png").toString();if(i==7)continue;try(FileOutputStream o=new FileOutputStream(names[i])){Bitmap.createBitmap(2,2,Bitmap.Config.ARGB_8888).compress(Bitmap.CompressFormat.PNG,100,o);}}
h multi=new h();multi.names(names);f.draws=0;multi.a(new SceneNode(),new y(),false);check(f.draws==0,"partial eight-layer bundle entered draw");try(FileOutputStream o=new FileOutputStream(names[7])){Bitmap.createBitmap(2,2,Bitmap.Config.ARGB_8888).compress(Bitmap.CompressFormat.PNG,100,o);}multi.a(new SceneNode(),new y(),false);check(f.draws==1,"correct late layer failed to recover without node recreation");Ra.textures.tT.put(missing,new Da(1,1,0,0,null));check(!material.bind(missing)&&Ra.textures.bb(missing)==null,"failed resident projection was never evicted");Ra.textures.tT.put("Textures/body.png",new Da(1,1,0,0,null));Ra.textures.resetProjectionBindings();check(Ra.textures.tT.size()==1&&Ra.textures.tT.containsKey("Textures/body.png"),"context reset altered ordinary texture descriptors");multi.a(new SceneNode(),new y(),false);check(f.draws==2,"new context failed to rebind eight layers without node reconstruction");System.out.println("PASS RESUME_AND_BIND_CHECKS="+checks);}}
''',
    }
    # Reuse the production pure admission helpers; platform lifecycle remains a named fixture.
    compat=(ROOT/'launcher/tools/java'/L/'theme/IconIlluminationCompat.java').read_text('utf8')
    def java_method(sig):
        start=compat.index(sig); pos=compat.index('{',start); depth=1; end=pos+1
        while depth: depth+=(compat[end]=='{')-(compat[end]=='}'); end+=1
        return compat[start:end]
    for sig in ('    public static boolean isProjectionTexture(', '    public static boolean allProjectionLayersBound('):
        source=fixtures[L+'theme/IconIlluminationCompat.java']
        name='isProjectionTexture' if 'isProjectionTexture' in sig else 'allProjectionLayersBound'
        source=re.sub(r'public static boolean '+name+r'\([^\n]+?\}\s*',lambda m:java_method(sig)+'\n',source,count=1)
        fixtures[L+'theme/IconIlluminationCompat.java']=source
    files=[]
    for name,content in fixtures.items():
        p=out/'src'/name;p.parent.mkdir(parents=True,exist_ok=True);p.write_text(content,encoding='utf8');files.append(p)
    classes,dex=out/'classes',out/'dex';classes.mkdir(exist_ok=True);dex.mkdir(exist_ok=True)
    run([jdk/'bin/javac.exe','-encoding','UTF-8','-source','8','-target','8','-bootclasspath',sdk/'platforms/android-30/android.jar','-d',classes,*files],'compile.log')
    run([jdk/'bin/jar.exe','cf',out/'probe.jar','-C',classes,'.'])
    run([sdk/'build-tools/36.0.0/d8.bat','--min-api','26','--output',dex,out/'probe.jar'],'d8.log')
    # The existing extraction runner's assembler avoids introducing a second Smali toolchain.
    text=Path(__file__).with_name('run_handoff_probe.py').read_text('utf8')
    helper=text.split("helper.write_text('''",1)[1].split("''', encoding='utf-8')",1)[0]
    (out/'AssembleHandoff.java').write_text(helper,encoding='utf8');apktool=ROOT/'tools/apktool.jar'
    run([jdk/'bin/javac.exe','-cp',apktool,'-d',out,out/'AssembleHandoff.java'])
    cp=str(out)+os.pathsep+str(apktool);decoded=out/'smali'
    with zipfile.ZipFile(out/'dex.zip','w') as z:z.write(dex/'classes.dex','classes.dex')
    run([jdk/'bin/java.exe','-cp',cp,'AssembleHandoff','decode',dex/'classes.dex',decoded,out/'dex.zip'])
    base=ROOT/('build/illumination-resume-20261009/before-src/launcher/smali' if a.baseline else 'launcher/smali')
    substitutions={S+'Ra.smali': ['.method public lt()I','.method public w(FF)Z','.method private static qa(F)F','.method static synthetic S(F)F'],S+'Oa.smali':['.method public run()V'],S+'mymaterial/f.smali':['.method protected hb(','.method protected a(Ljava/lang/String;Lcom/smartisanos/smengine/Ca;I)Z','.method protected Ht()V'],S+'mymaterial/h.smali':['.method public a(Lcom/smartisanos/smengine/SceneNode;Lcom/smartisanos/smengine/y;Z)V']}
    if not a.baseline:substitutions[S+'Ra.smali']+=['.method public static resumeShadowOwner()', '.method public resumeShadowTransition()', '.method public restoreShadowLux(F)Z', '.method public applyShadowLux(FF)V', '.method public q(IZ)V'];substitutions[L+'r.smali']=['.method public onSensorChanged(','.method public run()V'];substitutions[S+'mymaterial/f.smali']+=['.method protected projectionTexturesReady()Z'];substitutions[S+'Ea.smali']=['.method public resetProjectionBindings()V']
    for destination,sigs in substitutions.items():
        source=destination.replace('/mymaterial/f.smali','/mymaterial/f.1.smali').replace('/mymaterial/h.smali','/mymaterial/h.1.smali')
        actual=(base/source).read_text('utf8');p=decoded/destination;text=p.read_text('utf8')
        for sig in sigs:
            prototype=sig.split(' ')[-1];existing=re.search(r'^\.method[^\n]*? '+re.escape(prototype),text,re.M)
            if not existing:raise AssertionError(destination+' '+sig)
            old=method(text,existing.group());text=text.replace(old,method(actual,sig),1)
        p.write_text(text,encoding='utf8')
    run([jdk/'bin/java.exe','-cp',cp,'AssembleHandoff',out/'resume.dex',*decoded.rglob('*.smali')],'smali.log')
    adb=sdk/'platform-tools/adb.exe';remote='/data/local/tmp/illumination-resume-'+uuid.uuid4().hex
    run([adb,'-s',a.serial,'shell','mkdir','-p',remote+'/shadow']);run([adb,'-s',a.serial,'push',out/'resume.dex',remote+'/probe.dex'])
    result=run([adb,'-s',a.serial,'shell',f'CLASSPATH={remote}/probe.dex app_process /system/bin com.smartisanos.smengine.ResumeProbe {remote} '+('baseline' if a.baseline else 'fixed')],'device.log')
    expected='BASELINE_FROZEN_TRANSITION_AND_WRONG_MASK' if a.baseline else 'PASS RESUME_AND_BIND_CHECKS='
    assert expected in result,result
    (out/'summary.json').write_text(json.dumps(dict(result=result,scope=__doc__,remote=remote,serial=a.serial),indent=2),encoding='utf8');print(result.strip())

if __name__=='__main__':main()
