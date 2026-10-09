"""Execute production Ra.k, Qa.run and vector copying on Android in an isolated process.

Only vector.x receives a deterministic barrier between component reads; production
queue submission, scene, editing gate and geometry finalization use named fixtures.
"""
import argparse
import json
import os
from pathlib import Path
import subprocess
import uuid
import zipfile

ROOT = Path(__file__).resolve().parents[3]
S = 'com/smartisanos/smengine/'


def method(source, signature):
    start = source.index(signature)
    return source[start:source.index('.end method', start) + len('.end method')]


def main():
    ap = argparse.ArgumentParser(__doc__)
    for key in ('serial', 'jdk', 'sdk', 'output'):
        ap.add_argument('--' + key, required=True)
    ap.add_argument('--baseline', action='store_true')
    a = ap.parse_args()
    out, jdk, sdk = Path(a.output), Path(a.jdk), Path(a.sdk)
    out.mkdir(parents=True, exist_ok=True)

    def run(cmd, log=None):
        r = subprocess.run([str(x) for x in cmd], capture_output=True, text=True,
                           encoding='utf-8', errors='replace', timeout=60)
        if log:
            (out / log).write_text(r.stdout + r.stderr, encoding='utf-8')
        if r.returncode:
            raise RuntimeError(r.stdout + r.stderr)
        return r.stdout

    fixtures = {
        S+'a/j.java': 'package com.smartisanos.smengine.a; public class j {public float x,y,z;public j(){} public j(float a,float b,float c){x=a;y=b;z=c;} public j i(float a,float b,float c){return this;}}',
        S+'a/c.java': 'package com.smartisanos.smengine.a;public class c {public static boolean fail;private j mOrigin=new j();private j mV=new j();public void b(j a,j b){if(fail)throw new IllegalStateException("fixture");}public j getDirection(){return mV;}}',
        S+'a/d.java': 'package com.smartisanos.smengine.a;public class d {public void c(j a,j b){}}',
        S+'n.java': 'package com.smartisanos.smengine;public class n implements Runnable {public static java.util.List<Runnable> events=java.util.Collections.synchronizedList(new java.util.ArrayList<Runnable>());Runnable r;public static n obtain(){return new n();}public void j(Runnable v){r=v;}public void q(float f){events.add(r);}public void run(){r.run();}}',
        S+'Ka.java': 'package com.smartisanos.smengine;public class Ka {}',
        S+'SceneNode.java': 'package com.smartisanos.smengine;public class SceneNode {public void forceUpdateNeedDisplay(){Ra.getInstance().displays++;}}',
        S+'Q.java': 'package com.smartisanos.smengine;public class Q {public SceneNode getRootNode(){return new SceneNode();}}',
        S+'Qa.java': 'package com.smartisanos.smengine;public class Qa implements Runnable {public Qa(Ra r,Ka k){}public void run(){}}',
        S+'Ra.java': '''package com.smartisanos.smengine;import com.smartisanos.smengine.a.*;
public class Ra {public static boolean dV;public static Ra instance=new Ra();public j GU=new j(),LU=new j(),IU=new j();public c JU=new c();public d HU=new d();public Qa YU=new Qa(this,null);public int displays,wakes;public static Ra getInstance(){return instance;}public void k(j v){}public void resumeShadowTransition(){}public void wt(){wakes++;}public Q jt(){return new Q();}public static com.smartisanos.launcher.va access$200(){return new com.smartisanos.launcher.va();}public static j a(Ra r){return r.IU;}public static j b(Ra r){return r.GU;}public static c c(Ra r){return r.JU;}public static j d(Ra r){return r.LU;}public static d e(Ra r){return r.HU;}}''',
        'com/smartisanos/launcher/va.java': 'package com.smartisanos.launcher;public class va {public static boolean DBG;public void u(String s){}}',
        'com/smartisanos/launcher/view/Eb.java': 'package com.smartisanos.launcher.view;public class Eb {public static Eb getInstance(){return null;}public com.smartisanos.launcher.view.b.fa Ih(){return null;}}',
        'com/smartisanos/launcher/view/b/fa.java': 'package com.smartisanos.launcher.view.b;public class fa {public boolean vm(){return false;}}',
        'com/smartisanos/launcher/ub.java': 'package com.smartisanos.launcher;public class ub {public static ub getInstance(){return new ub();}public boolean Rc(){return false;}public boolean S(int i){return false;}public void Sc(){}}',
    }
    files = []
    for name, content in fixtures.items():
        p = out/'src'/name; p.parent.mkdir(parents=True, exist_ok=True)
        p.write_text(content, encoding='utf-8'); files.append(p)
    files.append(Path(__file__).with_name('SensorHandoffProbe.java'))
    classes, dex = out/'classes', out/'dex'
    classes.mkdir(exist_ok=True); dex.mkdir(exist_ok=True)
    os.environ['JAVA_HOME'] = str(jdk)
    run([jdk/'bin/javac.exe', '-encoding','UTF-8','-source','8','-target','8',
         '-bootclasspath',sdk/'platforms/android-30/android.jar','-d',classes,*files], 'compile.log')
    run([jdk/'bin/jar.exe','cf',out/'probe.jar','-C',classes,'.'])
    run([sdk/'build-tools/36.0.0/d8.bat','--min-api','26','--output',dex,out/'probe.jar'], 'd8.log')
    # Disassemble only compiled fixtures to retain their explicit setup, then substitute actual methods.
    helper = out/'AssembleHandoff.java'
    helper.write_text('''import java.io.*;import brut.androlib.smali.SmaliBuilder;
import com.android.tools.smali.dexlib2.*;import com.android.tools.smali.dexlib2.writer.builder.*;
import com.android.tools.smali.dexlib2.writer.io.*;import com.android.tools.smali.baksmali.*;
public class AssembleHandoff {public static void main(String[] a)throws Exception{
 if(a[0].equals("decode")){new brut.androlib.smali.SmaliDecoder(new File(a[3]),true).decodeFile(new com.android.tools.smali.dexlib2.dexbacked.DexBackedDexFile(java.nio.file.Files.readAllBytes(new File(a[1]).toPath()),0),new File(a[2]));return;}
 DexBuilder dex=new DexBuilder(new Opcodes(28));SmaliBuilder b=new SmaliBuilder(28);
 for(int i=1;i<a.length;i++)if(!b.buildFile(new File(a[i]),dex))throw new AssertionError(a[i]);
 FileDataStore data=new FileDataStore(new File(a[0]));dex.writeTo(data);data.raf.close();}}''', encoding='utf-8')
    apktool=ROOT/'tools/apktool.jar'
    run([jdk/'bin/javac.exe','-cp',apktool,'-d',out,helper], 'helper.log')
    cp=str(out)+os.pathsep+str(apktool)
    decoded=out/'smali'
    with zipfile.ZipFile(out/'dex.zip','w') as archive:
        archive.write(dex/'classes.dex','classes.dex')
    run([jdk/'bin/java.exe','-cp',cp,'AssembleHandoff','decode',dex/'classes.dex',decoded,out/'dex.zip'])
    src=ROOT/'launcher/smali'/S
    baseline=ROOT/'build/f09-sensor-handoff-20261003'
    ra=(baseline/'Ra.before.smali' if a.baseline else src/'Ra.smali').read_text(encoding='utf-8')
    qa=(baseline/'Qa.before.smali' if a.baseline else src/'Qa.smali').read_text(encoding='utf-8')
    ra_file=decoded/S/'Ra.smali'
    text=ra_file.read_text(encoding='utf-8')
    old=method(text,'.method public k(')
    text=text.replace(old,method(ra,'.method public k('))
    for accessor in ('a', 'b', 'c', 'd', 'e'):
        text=text.replace(method(text,'.method public static '+accessor+'('),
                          method(ra,'.method static synthetic '+accessor+'('))
    ra_file.write_text(text,encoding='utf-8')
    (decoded/S/'Qa.smali').write_text(qa,encoding='utf-8')
    for name, signatures in {'a/j.smali':['.method public i(FFF)', '.method public x('],
                             'a/c.smali':['.method public b(']}.items():
        p=decoded/S/name; text=p.read_text(encoding='utf-8'); actual=(src/name).read_text(encoding='utf-8')
        for signature in signatures:
            new=method(actual,signature)
            if signature.endswith('x('):
                marker='    iput v0, p0, Lcom/smartisanos/smengine/a/j;->x:F'
                new=new.replace(marker,marker+'\n\n    invoke-static {p1}, Lcom/smartisanos/smengine/SensorHandoffProbe;->afterCopyX(Lcom/smartisanos/smengine/a/j;)V')
            if name=='a/c.smali':
                new=new.replace('    .locals 1','''    .locals 1
    sget-boolean v0, Lcom/smartisanos/smengine/a/c;->fail:Z
    if-eqz v0, :fixture_ok
    new-instance v0, Ljava/lang/IllegalStateException;
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V
    throw v0
    :fixture_ok''')
            text=text.replace(method(text,signature),new) if signature in text else text+'\n'+new+'\n'
        p.write_text(text,encoding='utf-8')
    run([jdk/'bin/java.exe','-cp',cp,'AssembleHandoff',out/'handoff.dex',*decoded.rglob('*.smali')], 'smali.log')
    adb=sdk/'platform-tools/adb.exe'
    def device(*cmd):return run([adb,'-s',a.serial,*cmd])
    before=device('shell','pidof','com.smartisanos.launcher').strip()
    remote='/data/local/tmp/smartisan-f09-'+uuid.uuid4().hex+'.dex'
    device('push',out/'handoff.dex',remote)
    result=device('shell',f'CLASSPATH={remote} app_process /system/bin com.smartisanos.smengine.SensorHandoffProbe '+('baseline' if a.baseline else 'fixed'))
    (out/'device.log').write_text(result,encoding='utf-8')
    expected='BASELINE_MIXED_VECTOR=' if a.baseline else 'PASS SENSOR_HANDOFF_CHECKS='
    assert expected in result,result
    after=device('shell','pidof','com.smartisanos.launcher').strip()
    (out/'summary.json').write_text(json.dumps(dict(result=result,launcher_pid_before=before,
        launcher_pid_after=after,remote=remote,scope=__doc__),indent=2),encoding='utf-8')
    print(result.strip());print(f'Launcher PID {before} -> {after}')


if __name__ == '__main__':main()
