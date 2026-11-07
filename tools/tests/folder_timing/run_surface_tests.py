"""Exercise extracted lifecycle-bound Surface refresh capability voting."""
from pathlib import Path
import argparse,subprocess
from run_tests import method,ROOT
def main():
 ap=argparse.ArgumentParser(__doc__);ap.add_argument('--output',type=Path,required=True);ap.add_argument('--bridge-source',type=Path,default=ROOT/'launcher/tools/java/com/smartisanos/launcher/theme/LauncherSettingBridge.java');ap.add_argument('--at-least',action='store_true');args=ap.parse_args();out=args.output;out.mkdir(parents=True,exist_ok=True)
 source=args.bridge_source.read_text()
 body='\n'.join(method(source, marker) for marker in ('public static void applyLauncherSurfaceRefresh(', 'public static void applyLauncherWindowRefresh(', 'private static float highestSameResolutionRefresh('))
 files={
 'android/content/Context.java':'package android.content; public class Context {public static final String DISPLAY_SERVICE="display"; public Object service; public Object getSystemService(String s){return service;} }',
 'android/content/ContextWrapper.java':'package android.content; public class ContextWrapper extends Context {public Context getBaseContext(){return new Context();}}',
 'android/app/Activity.java':'package android.app; public class Activity extends android.content.ContextWrapper {public boolean isFinishing(){return false;}public boolean isDestroyed(){return false;}public android.view.Window getWindow(){return new android.view.Window();}}',
 'android/os/Build.java':'package android.os; public class Build {public static class VERSION {public static int SDK_INT=36;} }',
 'android/view/Display.java':'package android.view; public class Display {public int id=0; public float modeHz=60f,appHz=60f,maxHz=120f; public int getDisplayId(){return id;} public float getRefreshRate(){return appHz;} public Mode getMode(){return new Mode(modeHz,1260);} public Mode[] getSupportedModes(){return new Mode[]{new Mode(maxHz,1260),new Mode(240f,1080)};} public static class Mode {float hz;int width;Mode(float h,int w){hz=h;width=w;} public int getPhysicalWidth(){return width;} public int getPhysicalHeight(){return 2800;} public float getRefreshRate(){return hz;}} }',
 'android/view/Surface.java':'package android.view; public class Surface {public static final int FRAME_RATE_COMPATIBILITY_DEFAULT=0,FRAME_RATE_COMPATIBILITY_AT_LEAST=2,CHANGE_FRAME_RATE_ONLY_IF_SEAMLESS=0;public boolean valid=true,fail;public float last;public int calls,arity,compatibility,strategy;public boolean isValid(){return valid;} public void setFrameRate(float r,int c){if(fail)throw new IllegalStateException();last=r;compatibility=c;calls++;arity=2;} public void setFrameRate(float r,int c,int s){setFrameRate(r,c);strategy=s;arity=3;} }',
 'android/view/SurfaceHolder.java':'package android.view; public class SurfaceHolder {public Surface surface=new Surface();public Surface getSurface(){return surface;} }',
 'android/view/SurfaceView.java':'package android.view; public class SurfaceView {public android.content.Context context=new android.content.Context();public Display display=new Display();public SurfaceHolder holder=new SurfaceHolder();public android.content.Context getContext(){return context;}public Display getDisplay(){return display;}public SurfaceHolder getHolder(){return holder;} }',
 'android/view/View.java':'package android.view; public class View {public Display display=new Display();public Display getDisplay(){return display;}}',
 'android/view/WindowManager.java':'package android.view; public interface WindowManager {class LayoutParams {public float preferredRefreshRate;public int preferredDisplayModeId;}}',
 'android/view/Window.java':'package android.view; public class Window {public View decor=new View();public WindowManager.LayoutParams attrs=new WindowManager.LayoutParams();public int writes;public View peekDecorView(){return decor;}public WindowManager.LayoutParams getAttributes(){return attrs;}public void setAttributes(WindowManager.LayoutParams a){attrs=a;writes++;}}',
 'SurfaceProbe.java':'''import android.content.Context;import android.content.ContextWrapper;import android.app.Activity;import android.os.Build;import android.view.Window;import android.view.View;
public class SurfaceProbe {
 @BODY@
 static int checks; static void check(boolean b,String m){checks++;if(!b)throw new AssertionError(m);}
 public static void main(String[] args){
  android.view.SurfaceView v=new android.view.SurfaceView();android.view.Surface s=v.holder.surface;
  Build.VERSION.SDK_INT=29;applyLauncherSurfaceRefresh(v);check(s.calls==0,"legacy no surface API");
  Build.VERSION.SDK_INT=30;applyLauncherSurfaceRefresh(v);check(s.calls==1&&s.arity==2&&s.last==120f&&s.compatibility==0,"API30 and physical mode vote, not overridden 60Hz");
  for(int api:new int[]{31,32,33,34,35,36,37}){Build.VERSION.SDK_INT=api;applyLauncherSurfaceRefresh(v);check(s.arity==3&&s.last==120f,"seamless API31 path");check(s.compatibility==(api>=36&&@AT_LEAST@?2:0)&&s.strategy==0,"UI AT_LEAST only API36+ and seamless strategy");}
  int old=s.calls;s.valid=false;applyLauncherSurfaceRefresh(v);check(s.calls==old,"invalid surface skipped");s.valid=true;
  v.display.maxHz=Float.NaN;applyLauncherSurfaceRefresh(v);check(s.calls==old,"invalid modes skipped");v.display.maxHz=Float.POSITIVE_INFINITY;applyLauncherSurfaceRefresh(v);check(s.calls==old,"infinite modes skipped");
  v.display.maxHz=60f;applyLauncherSurfaceRefresh(v);check(s.last==60f,"60Hz capability followed");s.fail=true;applyLauncherSurfaceRefresh(v);check(s.calls==old+1,"surface destroy race retained");s.fail=false;
  v.display.maxHz=90f;applyLauncherSurfaceRefresh(v);check(s.last==90f,"capability changes handled on lifecycle reapply");
  v.holder.surface=new android.view.Surface();applyLauncherSurfaceRefresh(v);check(v.holder.surface.calls==1&&v.holder.surface.last==90f,"replacement surface reapplied");
  applyLauncherSurfaceRefresh(null);check(true,"null view safe");
  v.display=null;old=s.calls;applyLauncherSurfaceRefresh(v);check(s.calls==old,"detached view skipped");
  Window w=new Window();Build.VERSION.SDK_INT=23;applyLauncherWindowRefresh(w);check(w.attrs.preferredRefreshRate==120f&&w.attrs.preferredDisplayModeId==0,"API23 window capability without mode change");
  applyLauncherWindowRefresh(w);check(w.writes==1,"unchanged request has no relayout");
  w.decor.display.maxHz=60f;applyLauncherWindowRefresh(w);check(w.attrs.preferredRefreshRate==60f,"60Hz window capability");
  w.decor.display.maxHz=90f;applyLauncherWindowRefresh(w);check(w.attrs.preferredRefreshRate==90f,"90Hz lifecycle reapply");
  w.attrs.preferredDisplayModeId=3;w.decor.display.maxHz=120f;int writes=w.writes;applyLauncherWindowRefresh(w);check(w.writes==writes&&w.attrs.preferredDisplayModeId==3,"existing mode owner preserved");
  w.attrs.preferredDisplayModeId=0;w.decor.display.maxHz=Float.NaN;applyLauncherWindowRefresh(w);check(w.writes==writes,"invalid window capability skipped");
  w.decor.display.maxHz=Float.POSITIVE_INFINITY;applyLauncherWindowRefresh(w);check(w.writes==writes,"infinite window capability skipped");
  w.decor.display=null;applyLauncherWindowRefresh(w);check(w.writes==writes,"detached display skipped");
  w.decor=null;applyLauncherWindowRefresh(w);check(w.writes==writes,"no decor is not created");applyLauncherWindowRefresh(null);
  w=new Window();Build.VERSION.SDK_INT=36;applyLauncherWindowRefresh(w);check(w.attrs.preferredRefreshRate==120f,"new window has independent request");
  System.out.println("PASS SURFACE_AND_WINDOW_REFRESH checks="+checks+" API23 window and API29/30/31 Surface; same resolution; owner preservation; recreation");
 }
}'''.replace('@BODY@',body).replace('@AT_LEAST@',str(args.at_least).lower())}
 for name,text in files.items():f=out/name;f.parent.mkdir(parents=True,exist_ok=True);f.write_text(text,encoding='utf8')
 jdk=Path('E:/Program Files/Android/Android Studio/jbr/bin')
 with (out/'test.log').open('w') as log:
  for args in [[jdk/'javac.exe','-encoding','UTF-8','-d',out,*[out/n for n in files]],[jdk/'java.exe','-cp',out,'SurfaceProbe']]:
   r=subprocess.run(list(map(str,args)),capture_output=True,text=True);log.write(r.stdout+r.stderr);print(r.stdout+r.stderr);assert r.returncode==0
 smali=(ROOT/'launcher/smali/com/smartisanos/launcher/view/SMGLSurfaceView.smali').read_text()
 assert smali.count('->applyLauncherSurfaceRefresh(')==2 and 'launcherDisplayListener' not in smali
 assert '->surfaceChanged(Landroid/view/SurfaceHolder;III)V' in smali and '->onSurfaceDetached(' in smali and '->onSurfaceAttached(' in smali
 print('PASS Bounded Surface/visible hooks; no display listener or per-frame refresh polling')
if __name__=='__main__':main()
