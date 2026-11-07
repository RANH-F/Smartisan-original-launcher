"""Compile the complete production S1 classes against controlled Android services.

No ADB, installed app, native projection or OEM animation acceptance is implied.
"""
from pathlib import Path
import argparse
import hashlib
import json
import subprocess
import xml.etree.ElementTree as ET

ROOT = Path(__file__).resolve().parents[3]
PACKAGE = 'com/smartisanos/launcher/gesture'
STUBS = {
'android/os/ParcelUuid.java': 'package android.os; public final class ParcelUuid {final java.util.UUID u;public ParcelUuid(java.util.UUID u){this.u=u;}public boolean equals(Object o){return o instanceof ParcelUuid&&u.equals(((ParcelUuid)o).u);}public int hashCode(){return u.hashCode();}}',
'com/smartisanos/smengine/Camera.java': 'package com.smartisanos.smengine; public class Camera {public int getWidth(){return 1080;}public int getHeight(){return 2400;}}',
'com/smartisanos/smengine/Ra.java': 'package com.smartisanos.smengine; public class Ra {public static Ra getInstance(){return new Ra();}public Ra at(){return this;}public Camera Vj(){return new Camera();}public Ra rt(){return this;}public Texture bb(String s){return new Texture();}public static class Texture {public int getWidth(){return 246;}public int getHeight(){return 246;}}}',

'com/smartisanos/launcher/gesture/HomeGeometryDiagnostics.java': 'package com.smartisanos.launcher.gesture; final class HomeGeometryDiagnostics {static void capture(){}}',
'android/content/ComponentName.java': '''package android.content; public class ComponentName {
 final String p,c; public ComponentName(String p,String c){this.p=p;this.c=c;} public String getPackageName(){return p;} public String getClassName(){return c;}
 public String flattenToString(){return p+"/"+c;} public String flattenToShortString(){return p+"/"+(c.startsWith(p+".")?c.substring(p.length()):c);}
 public boolean equals(Object o){return o instanceof ComponentName&&p.equals(((ComponentName)o).p)&&c.equals(((ComponentName)o).c);} public int hashCode(){return p.hashCode()+c.hashCode();}}''',
'android/content/Intent.java': '''package android.content; import java.util.*; public class Intent {
 public static final String ACTION_MAIN="main",CATEGORY_HOME="home",EXTRA_COMPONENT_NAME="component",EXTRA_USER="user";
 public static final int FLAG_ACTIVITY_NEW_TASK=1,FLAG_ACTIVITY_CLEAR_TOP=2,FLAG_ACTIVITY_SINGLE_TOP=4;
 String action; int flags; ComponentName component; Set<String> cats=new HashSet<>(); Map<String,Object> values=new HashMap<>();
 public Intent(){} public Intent(String a){action=a;} public String getAction(){return action;} public Intent addCategory(String c){cats.add(c);return this;}
 public boolean hasCategory(String c){return cats.contains(c);} public Set<String> getCategories(){return cats;} public int getFlags(){return flags;}
 public Intent addFlags(int f){flags|=f;return this;} public Intent setPackage(String p){return this;} public Intent setClassName(String p,String c){component=new ComponentName(p,c);return this;}
 public ComponentName getComponent(){return component;} public Intent putExtras(Intent i){values.putAll(i.values);return this;} public Intent putExtra(String k,Object v){values.put(k,v);return this;}
 public boolean hasExtra(String k){return values.containsKey(k);} public <T>T getParcelableExtra(String k){return (T)values.get(k);} public void removeExtra(String k){values.remove(k);}
 public boolean getBooleanExtra(String k,boolean d){return values.containsKey(k)?(Boolean)values.get(k):d;}}''',
'android/content/Context.java': '''package android.content; public class Context {
 public static final String KEYGUARD_SERVICE="keyguard",POWER_SERVICE="power"; public Object getContentResolver(){return this;}
 public Object getSystemService(String s){return s.equals(KEYGUARD_SERVICE)?new android.app.KeyguardManager():new android.os.PowerManager();}
 public String getPackageName(){return "launcher";} public android.content.pm.PackageManager getPackageManager(){return new android.content.pm.PackageManager();}}''',
'android/content/ActivityNotFoundException.java': 'package android.content; public class ActivityNotFoundException extends RuntimeException {}',
'android/content/pm/PackageManager.java': '''package android.content.pm; public class PackageManager {public static final int MATCH_DEFAULT_ONLY=1; public ResolveInfo resolveActivity(android.content.Intent i,int f){return null;}}''',
'android/content/pm/ResolveInfo.java': 'package android.content.pm; public class ResolveInfo {public static class ActivityInfo {public String packageName;} public ActivityInfo activityInfo;}',
'android/app/Activity.java': '''package android.app; public class Activity extends android.content.Context {
 public android.content.Intent intent; public boolean finishing,destroyed; public android.view.Window window=new android.view.Window();
 public android.content.Intent getIntent(){return intent;} public android.content.ComponentName getComponentName(){return null;}
 public void finish(){finishing=true;} public void startActivity(android.content.Intent i){} public boolean isFinishing(){return finishing;}
 public boolean isDestroyed(){return destroyed;} public boolean hasWindowFocus(){return true;} public android.view.Window getWindow(){return window;}}''',
'android/app/KeyguardManager.java': 'package android.app; public class KeyguardManager {public static boolean locked; public boolean isKeyguardLocked(){return locked;}}',
'android/graphics/RectF.java': '''package android.graphics; public class RectF {public float left,top,right,bottom;
 public RectF(float l,float t,float r,float b){left=l;top=t;right=r;bottom=b;} public RectF(RectF r){this(r.left,r.top,r.right,r.bottom);}}''',
'android/os/Build.java': 'package android.os; public class Build {public static class VERSION {public static int SDK_INT=36;}}',
'android/os/Bundle.java': '''package android.os; public class Bundle {java.util.Map<String,Object> map=new java.util.HashMap<>();
 public void putParcelable(String k,Object v){map.put(k,v);} public <T>T getParcelable(String k){return (T)map.get(k);}
 public void putBoolean(String k,boolean v){map.put(k,v);} public boolean getBoolean(String k,boolean d){return map.containsKey(k)?(Boolean)map.get(k):d;}}''',
'android/os/Message.java': '''package android.os; public class Message {public int what,arg1,arg2;public Object obj;public Messenger replyTo; Bundle data;
 public static Message obtain(){return new Message();} public static Message obtain(Message m){Message n=obtain();n.copyFrom(m);return n;}
 public void copyFrom(Message m){what=m.what;arg1=m.arg1;arg2=m.arg2;obj=m.obj;replyTo=m.replyTo;data=m.data;}
 public void setData(Bundle d){data=d;} public Bundle getData(){return data;}}''',
'android/os/Messenger.java': '''package android.os; public class Messenger {Handler handler;public Messenger(){}public Messenger(Handler h){handler=h;}public java.util.List<Message> sent=new java.util.ArrayList<>(); public boolean dead;
 public void send(Message m)throws RemoteException{if(dead)throw new RemoteException();sent.add(m);if(handler!=null)handler.handleMessage(m);}}''',
'android/os/RemoteException.java': 'package android.os; public class RemoteException extends Exception {}',
'android/os/BadParcelableException.java': 'package android.os; public class BadParcelableException extends RuntimeException {}',
'android/os/UserHandle.java': 'package android.os; public class UserHandle {public int id;public UserHandle(int i){id=i;}public boolean equals(Object o){return o instanceof UserHandle&&((UserHandle)o).id==id;}public int hashCode(){return id;}}',
'android/os/Process.java': 'package android.os; public class Process {public static int myPid(){return 1;}}',
'android/os/PowerManager.java': 'package android.os; public class PowerManager {public boolean isInteractive(){return true;}}',
'android/os/SystemClock.java': 'package android.os; public class SystemClock {public static long now;public static long uptimeMillis(){return now;}public static long elapsedRealtimeNanos(){return now*1000000;}}',
'android/os/Trace.java': 'package android.os; public class Trace {public static void beginSection(String s){}public static void endSection(){}}',
'android/os/Looper.java': 'package android.os; public class Looper {public static Looper getMainLooper(){return new Looper();}}',
'android/os/Handler.java': '''package android.os; public class Handler {public static int created; static class Job {Runnable r;long t;Job(Runnable r,long t){this.r=r;this.t=t;}}
 static java.util.List<Job> jobs=new java.util.ArrayList<>();public Handler(Looper l){created++;}public void handleMessage(Message message){}
 public boolean post(Runnable r){return postAtTime(r,SystemClock.now);}public boolean postAtTime(Runnable r,long t){jobs.add(new Job(r,t));return true;}
 public void removeCallbacks(Runnable r){jobs.removeIf(j->j.r==r);}public static void drain(){boolean again=true;while(again){again=false;for(Job j:new java.util.ArrayList<>(jobs))if(j.t<=SystemClock.now){jobs.remove(j);j.r.run();again=true;}}}
 public static int count(){return jobs.size();}}''',
'android/provider/Settings.java': 'package android.provider; public class Settings {public static class Global {public static int getInt(Object c,String k,int d){return d;}}}',
'android/util/Log.java': '''package android.util; public class Log {public static final int DEBUG=3;public static java.util.List<String> lines=new java.util.ArrayList<>();
 public static boolean finishEnabled;public static boolean isLoggable(String t,int l){return finishEnabled&&t.equals("HomeFinishProbe");}public static int i(String t,String m){lines.add(m);return 0;}
 public static int w(String t,String m,Throwable e){return 0;}}''',
'android/view/Display.java': 'package android.view; public class Display {public int rotation;public int getRotation(){return rotation;}}',
'android/view/Surface.java': 'package android.view; public class Surface {public boolean valid=true;public boolean isValid(){return valid;}}',
'android/view/SurfaceHolder.java': 'package android.view; public class SurfaceHolder {public Surface surface=new Surface();public Surface getSurface(){return surface;}}',
'android/view/View.java': '''package android.view; public class View {public int width=1080,height=2400; public boolean attached=true;public Display display=new Display();
 public void getLocationOnScreen(int[] p){p[0]=0;p[1]=0;}public Object getParent(){return null;}public float getRotationX(){return 0f;}public float getRotationY(){return 0f;}public float getTranslationX(){return 0f;}public float getTranslationY(){return 0f;}public float getScaleX(){return 1f;}public float getScaleY(){return 1f;}public float getRotation(){return 0f;}public int getWidth(){return width;}public int getHeight(){return height;}public boolean isAttachedToWindow(){return attached;}
 public int getVisibility(){return 0;}public int getWindowVisibility(){return 0;}public Display getDisplay(){return display;}}''',
'android/view/SurfaceView.java': '''package android.view; public class SurfaceView extends View {public static final int SURFACE_LIFECYCLE_FOLLOWS_ATTACHMENT=2,SURFACE_LIFECYCLE_DEFAULT=0;
 public SurfaceHolder holder=new SurfaceHolder();public SurfaceHolder getHolder(){return holder;}public void setSurfaceLifecycle(int i){}}''',
'android/view/WindowManager.java': 'package android.view; public class WindowManager {public static class LayoutParams {public static final int FLAG_SHOW_WALLPAPER=1;public int flags;}}',
'android/view/Window.java': '''package android.view;public class Window {WindowManager.LayoutParams attrs=new WindowManager.LayoutParams();public WindowManager.LayoutParams getAttributes(){return attrs;}
 public View getDecorView(){return new View();}public void addFlags(int i){attrs.flags|=i;}public void clearFlags(int i){attrs.flags&=~i;}}''',
'android/opengl/GLSurfaceView.java': '''package android.opengl;public class GLSurfaceView extends android.view.SurfaceView {android.content.Context context;
 public GLSurfaceView(android.content.Context c){context=c;}public android.content.Context getContext(){return context;}
 public void onResume(){}public void onPause(){}public void queueEvent(Runnable r){r.run();}}''',
'com/smartisanos/launcher/theme/LauncherSettingBridge.java': '''package com.smartisanos.launcher.theme;public class LauncherSettingBridge {
 public static boolean enabled;public static boolean readBool(android.content.Context c,String k,boolean d){return enabled;}
 public static String readString(android.content.Context c,String k,String d){return d;}public static boolean readTransparentMode(android.content.Context c){return false;}}''',
'com/smartisanos/launcher/model/ProfileState.java': 'package com.smartisanos.launcher.model;public enum ProfileState {AVAILABLE,UNKNOWN}',
'com/smartisanos/launcher/model/ProfileRepository.java': '''package com.smartisanos.launcher.model;public class ProfileRepository {
 public ProfileRepository(android.content.Context c){}public long serialFor(android.os.UserHandle u){return u.id<0?-1:u.id;}
 public ProfileState stateFor(android.os.UserHandle u){return u.id<0?ProfileState.UNKNOWN:ProfileState.AVAILABLE;}
 public android.os.UserHandle userForLegacyId(int i){return new android.os.UserHandle(i);}}''',
'com/smartisanos/launcher/view/Eb.java': '''package com.smartisanos.launcher.view;import java.util.*;public class Eb {
 public static Eb instance=new Eb();public static Eb getInstance(){return instance;}public Object folder;public Node dock=new Node();public Pages pages=new Pages();
 public Object Ch(){return folder;}public Pages Gh(){return pages;}public Node zh(){return dock;}
 public static class Item {public int itemType,userId;public String packageName="p",componentName="p.Main";}
 public static class Vec {public float x=1,y=1,z=1;}
 public static class Transform {public boolean rotated,skewed;public boolean Ct(){return rotated;}public boolean Dt(){return skewed;}}
 public static class Layout {public float icon_size_origin=192,icon_size_with_shadow=246;}
 public static class Node {public int fH=12;public Node[] sc=new Node[8];public Transform transform=new Transform();public Vec scale=new Vec();public String key=":DEFAULT:default::100:12:grid=12:STATIC_APPLICATION_COMPOSER:contentBoxType=NORMAL:defaultShape=circle";public boolean artwork;
 public int getAnimationState(){return 0;}public Transform getLocalTransform(){return transform;}public Vec getScale(){return scale;}public Layout Ul(){return new Layout();}public String getTextureName(int i){return key;}public Object getRenderTarget(){return new Object();}
 public void getCornerPointScreenCoord(com.smartisanos.smengine.Camera c,float[] out){float[] a=artwork?new float[]{417,1085,.7f,663,1331,.7f}:new float[]{179,2052,.7f,181,2054,.7f};System.arraycopy(a,0,out,0,6);}
 public boolean visible=true;public Node parent;public List<Node> cells=new ArrayList<>();public Item item=new Item();
 public boolean isVisible(){return visible;}public Node getParent(){return parent;}public List<Node> on(){return cells;}public List<Node> Uh(){return cells;}public Item Rl(){return item;}}
 public static class Pages {public List<Node> pages=new ArrayList<>();public List<Node> mr(){return pages;}}}'''
}


def main():
    parser = argparse.ArgumentParser(__doc__)
    parser.add_argument('--jdk', default='E:/Program Files/Android/Android Studio/jbr')
    parser.add_argument('--output', default=str(ROOT/'build/gesture-nav-s1-20261104/tests'))
    parser.add_argument('--negative-control', choices=['consume', 'deadline'])
    args = parser.parse_args()
    out = Path(args.output)
    source, classes = out/'src', out/'classes'
    source.mkdir(parents=True, exist_ok=True)
    classes.mkdir(exist_ok=True)
    for path, text in STUBS.items():
        target = source/path
        target.parent.mkdir(parents=True, exist_ok=True)
        target.write_text(text, encoding='utf-8')
    production = ROOT/'launcher/tools/java'/PACKAGE
    hashes = {}
    for name in ['HomeGestureContract', 'HomeIconGeometry', 'HomeIconTarget', 'LauncherHomeCompat']:
        body = (production/(name+'.java')).read_bytes()
        if name == 'HomeGestureContract' and args.negative_control:
            if args.negative_control == 'consume':
                body = body.replace(b'intent.removeExtra(EXTRA);', b'/* negative: leave extra intact */')
            else:
                body = body.replace(b'return now < received || now - received >= DEADLINE_MS;', b'return false;')
        target = source/PACKAGE/(name+'.java')
        target.parent.mkdir(parents=True, exist_ok=True)
        target.write_bytes(body)
        hashes[name] = hashlib.sha256(body).hexdigest()
    (source/PACKAGE/'GestureProbe.java').write_text(
        (Path(__file__).parent/'GestureProbe.java').read_text(encoding='utf-8'), encoding='utf-8')
    commands = [
        [str(Path(args.jdk)/'bin/javac.exe'), '-encoding', 'UTF-8', '-source', '8', '-target', '8',
         '-d', str(classes), *map(str, source.rglob('*.java'))],
        [str(Path(args.jdk)/'bin/java.exe'), '-cp', str(classes),
         'com.smartisanos.launcher.gesture.GestureProbe']]
    logs = []
    for index, command in enumerate(commands):
        result = subprocess.run(command, capture_output=True, text=True, encoding='utf-8', errors='replace')
        logs.append(result.stdout+result.stderr)
        if result.returncode:
            if args.negative_control and index == 1 and 'AssertionError' in logs[-1]:
                (out/'negative-control.json').write_text(json.dumps({
                    'negative_control': args.negative_control, 'expected_failure': logs[-1]}, indent=2), encoding='utf-8')
                print('Expected assertion failure:', args.negative_control)
                print(logs[-1].strip())
                return
            print(logs[-1])
            raise SystemExit(result.returncode)
    if args.negative_control:
        raise SystemExit('Negative control unexpectedly passed')
    layout = ROOT/'launcher/tools/maintained_settings_res/res/layout/setting_ocd_options.xml'
    ET.parse(layout)
    strings = ET.parse(ROOT/'launcher/tools/maintained_settings_res/res/values/strings.xml')
    values = {e.attrib.get('name'): e.text for e in strings.getroot()}
    assert values['home_icon_animation_title'] == '应用返回图标动画'
    assert values['home_icon_animation_tips'] == '上滑返回桌面时，将应用窗口自然收拢至对应图标。部分系统可能不支持。'
    report = {'scope': 'Controlled Android stubs; full production source, no native/OEM/device acceptance',
              'production_sha256': hashes, 'output': logs, 'settings_xml_checks': 'passed'}
    (out/'result.json').write_text(json.dumps(report, ensure_ascii=False, indent=2), encoding='utf-8')
    print(logs[-1].strip())
    print('Settings XML checks passed; report:', out/'result.json')


if __name__ == '__main__':
    main()
