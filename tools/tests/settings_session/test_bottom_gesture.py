"""Compile the production bottom-gesture guard with deterministic touch sequences."""
import argparse
import pathlib
import subprocess
import tempfile

ROOT = pathlib.Path(__file__).resolve().parents[3]


def extract(source, marker):
    start = source.index(marker)
    end = source.index('{', start) + 1
    depth = 1
    while depth:
        depth += (source[end] == '{') - (source[end] == '}')
        end += 1
    return source[start:end]


FIXTURE = r'''
static final java.util.Map<Activity, SettingsHomeGestureState> sSettingsHomeGestures = new java.util.WeakHashMap<>();
static class View { int getHeight(){return 800;} }
static class Metrics { float density; Metrics(float d){density=d;} }
static class Resources { Metrics m; Resources(float d){m=new Metrics(d);} Metrics getDisplayMetrics(){return m;} }
static class Window { int cancelled; View getDecorView(){return new View();} boolean superDispatchTouchEvent(MotionEvent e){if(e.action!=3)throw new AssertionError();cancelled++;return true;} }
static class Activity { Window w=new Window(); Resources r; Activity(float d){r=new Resources(d);} Window getWindow(){return w;} Resources getResources(){return r;} }
static class Log { static int i(String t,String m){return 0;} }
static class MotionEvent {
 static final int ACTION_DOWN=0,ACTION_UP=1,ACTION_MOVE=2,ACTION_CANCEL=3;
 int action;float x,y;MotionEvent(int a,float x,float y){action=a;this.x=x;this.y=y;}
 int getActionMasked(){return action;} float getRawX(){return x;} float getRawY(){return y;} float getY(){return y;}
 static MotionEvent obtain(MotionEvent e){return new MotionEvent(e.action,e.x,e.y);}
 void setAction(int a){action=a;} void recycle(){}
}
static int checks;
static void check(boolean b){checks++;if(!b)throw new AssertionError("check "+checks);}
static boolean send(Activity a,int action,float x,float y){return blockSettingsHomeGestureScroll(a,new MotionEvent(action,x,y));}
public static void main(String[] args){
 for(float density:new float[]{1f,2f,3.5f}){
  Activity a=new Activity(density);float y=800-20*density;
  check(!send(a,0,300,y));
  check(!send(a,2,300+10*density,y-2*density));
  // The established horizontal gesture survives later upward drift and reversals.
  check(!send(a,2,300+80*density,y-30*density));
  check(!send(a,2,300-40*density,y-35*density));
  check(!send(a,1,300-40*density,y-35*density));check(a.w.cancelled==0);
  check(!send(a,0,300,y));check(send(a,2,302,y-10*density));
  check(send(a,2,305,y-50*density));check(send(a,1,305,y-50*density));
  check(a.w.cancelled==1);check(!send(a,0,300,y));check(!send(a,3,300,y));
  // A horizontal gesture ending in CANCEL must not affect the next HOME gesture.
  check(!send(a,0,300,y));check(!send(a,2,300+20*density,y));check(!send(a,3,300,y));
  check(!send(a,0,300,y));check(send(a,2,300,y-20*density));check(send(a,3,300,y));
  check(!send(a,0,300,200));check(!send(a,2,300,100));check(!send(a,1,300,100));
  Activity other=new Activity(density);check(!send(other,2,300,y-20*density));
 }
 check(!blockSettingsHomeGestureScroll(null,new MotionEvent(0,0,0)));
 check(!blockSettingsHomeGestureScroll(new Activity(1),null));
 System.out.println("PASS production bottom touch guard checks="+checks);
}
'''


if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument('--jdk', required=True, type=pathlib.Path)
    args = parser.parse_args()
    source = (ROOT/'launcher/tools/java/com/smartisanos/launcher/theme/MaintainedLauncherSettingsHost.java').read_text('utf-8')
    production = extract(source, '    private static final class SettingsHomeGestureState {')
    production += extract(source, '    public static boolean blockSettingsHomeGestureScroll(')
    with tempfile.TemporaryDirectory() as directory:
        path = pathlib.Path(directory)
        java = path/'BottomGestureTest.java'
        java.write_text('public class BottomGestureTest {\n'+production+FIXTURE+'\n}', encoding='utf-8')
        subprocess.run([str(args.jdk/'bin/javac.exe'), '-encoding', 'UTF-8', '-d', str(path), str(java)], check=True)
        subprocess.run([str(args.jdk/'bin/java.exe'), '-cp', str(path), 'BottomGestureTest'], check=True)
