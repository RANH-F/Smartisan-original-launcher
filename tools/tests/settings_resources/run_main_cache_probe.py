"""Exercise existing main-page cache methods with controlled owners, parents and configurations."""
import argparse,pathlib,subprocess,sys
sys.dont_write_bytecode = True
from run_theme_state_probe import block
ROOT=pathlib.Path(__file__).resolve().parents[3]
def main():
    parser=argparse.ArgumentParser(__doc__);parser.add_argument('--jdk',required=True);parser.add_argument('--output',required=True)
    args=parser.parse_args();out=pathlib.Path(args.output);src=out/'src';classes=out/'classes';src.mkdir(parents=True,exist_ok=True);classes.mkdir(exist_ok=True)
    source=(ROOT/'launcher/tools/java/com/smartisanos/launcher/theme/LauncherSettingsOverlayHost.java').read_text('utf-8')
    methods='\n'.join(block(source,s) for s in ['static View takeMainRootForNewSession(',
        'static void rememberMainRoot(', 'static void clearMainRoot('])
    files={
      'android/content/res/Configuration.java':'''package android.content.res; public class Configuration {public int revision;
 public Configuration(){}public Configuration(Configuration o){revision=o.revision;}
 public boolean equals(Object o){return o instanceof Configuration&&((Configuration)o).revision==revision;}}''',
      'android/util/DisplayMetrics.java':'''package android.util;public class DisplayMetrics {public int densityDpi=420;
 public void setTo(DisplayMetrics o){densityDpi=o.densityDpi;}
 public boolean equals(Object o){return o instanceof DisplayMetrics&&((DisplayMetrics)o).densityDpi==densityDpi;}}''',
      'android/content/res/Resources.java':'''package android.content.res;public class Resources {
 public Configuration config=new Configuration();public android.util.DisplayMetrics metrics=new android.util.DisplayMetrics();
 public Configuration getConfiguration(){return config;}public android.util.DisplayMetrics getDisplayMetrics(){return metrics;}}''',
      'android/app/Activity.java':'''package android.app;public class Activity {
 public android.content.res.Resources resources=new android.content.res.Resources();public android.content.res.Resources getResources(){return resources;}}''',
      'android/view/View.java':'''package android.view;public class View {public static final int LAYER_TYPE_NONE=0;
 public Object parent;public float x=30,y=40,alpha=.5f;public int layer=2,cancelled,cleared;
 public Object getParent(){return parent;}public Animator animate(){return new Animator();}
 public class Animator {public void cancel(){cancelled++;}}public void clearAnimation(){cleared++;}
 public void setTranslationX(float v){x=v;}public void setTranslationY(float v){y=v;}
 public void setAlpha(float v){alpha=v;}public void setLayerType(int t,Object p){layer=t;}}''',
      'android/view/ViewGroup.java':'''package android.view;public class ViewGroup extends View {public int count;
 public int getChildCount(){return count;}public void removeView(View v){v.parent=null;count--;}}''',
      'com/smartisanos/launcher/Launcher.java':'package com.smartisanos.launcher;public class Launcher extends android.app.Activity {}',
      'com/smartisanos/launcher/theme/ThemeChooserActivity.java':'package com.smartisanos.launcher.theme;public class ThemeChooserActivity extends android.app.Activity {}',
    }
    harness='''import java.lang.ref.WeakReference;import android.app.Activity;import android.view.View;import android.view.ViewGroup;
public class MainCacheProbe {
 static final String SETTINGS_CLASS="com.smartisanos.launcher.theme.ThemeChooserActivity";
 static WeakReference<Activity> cachedMainOwner=new WeakReference<>(null);static View cachedMainRoot;
 static android.content.res.Configuration cachedMainConfiguration;static android.util.DisplayMetrics cachedMainMetrics;
 static ViewGroup pages;static boolean showing;static int checks;
 static boolean isShowing(Activity a){return showing;}static boolean isLauncherActivity(Activity a){return a instanceof com.smartisanos.launcher.Launcher;}
 static void check(boolean b,String m){if(!b)throw new AssertionError(m);checks++;}
 // METHODS
 public static void main(String[] args){
 Activity a=new com.smartisanos.launcher.theme.ThemeChooserActivity(),b=new com.smartisanos.launcher.theme.ThemeChooserActivity();
 View root=new View();rememberMainRoot(a,root);check(cachedMainRoot==root,"Activity MAIN not stored");
 check(takeMainRootForNewSession(b)==null,"cross Activity reuse");
 ViewGroup parent=new ViewGroup();root.parent=parent;
 check(takeMainRootForNewSession(a)==null&&root.cancelled==0,"interrupted transition stole attached MAIN");
 root.parent=null;check(takeMainRootForNewSession(a)==root,"detached MAIN not reused");
 check(root.x==0&&root.y==0&&root.alpha==1&&root.layer==0,"animation state carried over");
 check(root.cancelled==1&&root.cleared==1,"old animation retained");
 check(cachedMainRoot==null,"cache still owns reused MAIN");
 rememberMainRoot(a,root);a.getResources().config.revision++;
 check(takeMainRootForNewSession(a)==null&&cachedMainRoot==null,"configuration change kept old root");
 rememberMainRoot(a,root);a.getResources().metrics.densityDpi++;
 check(takeMainRootForNewSession(a)==null&&cachedMainRoot==null,"density change kept old root");
 rememberMainRoot(a,root);clearMainRoot(b);check(cachedMainRoot==root,"different destroy cleared current owner");
 clearMainRoot(a);check(cachedMainRoot==null&&cachedMainOwner.get()==null,"destroy retained Activity root");
 check(cachedMainConfiguration==null&&cachedMainMetrics==null,"destroy retained configuration");
 rememberMainRoot(new Activity(),new View());check(cachedMainRoot==null,"unknown Activity got a cache");
 Activity launcher=new com.smartisanos.launcher.Launcher();showing=true;pages=new ViewGroup();
 rememberMainRoot(launcher,root);pages.count=1;
 check(takeMainRootForNewSession(launcher)==null,"overlay reused MAIN during navigation");
 pages.count=0;root.parent=new ViewGroup();((ViewGroup)root.parent).count=1;
 check(takeMainRootForNewSession(launcher)==root&&root.parent==null,"overlay new-session contract changed");
 rememberMainRoot(launcher,root);showing=false;check(takeMainRootForNewSession(launcher)==null,"closed overlay reused root");
 clearMainRoot(launcher);check(cachedMainRoot==null,"overlay destroy retained cache");
 for(int i=0;i<50;i++){root=new View();rememberMainRoot(a,root);check(takeMainRootForNewSession(a)==root,"repeat lost root");clearMainRoot(a);}
 System.out.println("PASS MAIN_CACHE checks="+checks);
 }}'''
    files['MainCacheProbe.java']=harness.replace('// METHODS',methods)
    sources=[]
    for name,text in files.items():
        file=src/name;file.parent.mkdir(parents=True,exist_ok=True);file.write_text(text,'utf-8');sources.append(file)
    jdk=pathlib.Path(args.jdk)
    for command,log in [([jdk/'bin/javac.exe','-encoding','UTF-8','-d',classes,*sources],'compile.log'),
                        ([jdk/'bin/java.exe','-cp',classes,'MainCacheProbe'],'result.log')]:
        result=subprocess.run(list(map(str,command)),capture_output=True,text=True,encoding='utf-8',errors='replace')
        (out/log).write_text(result.stdout+result.stderr,'utf-8')
        if result.returncode:raise RuntimeError(result.stdout+result.stderr)
    assert 'PASS MAIN_CACHE' in result.stdout
    print(result.stdout)
if __name__=='__main__':main()
