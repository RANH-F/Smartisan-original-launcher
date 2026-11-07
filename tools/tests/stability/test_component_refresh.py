"""Exercise production component/package guards with a controllable PackageManager."""
import argparse
import pathlib
import subprocess
import tempfile
from test_uninstall_model import ROOT, STUBS

STUBS = dict(STUBS)
STUBS.pop('com/smartisanos/launcher/model/PackageStateRepository.java')
STUBS.update({
 'com/smartisanos/launcher/data/Constants.java': 'package com.smartisanos.launcher.data;public class Constants{public static boolean isInBlackPkgList(String p){return false;}public static boolean isInBlackCmpList(String p){return false;}}',
 'com/smartisanos/launcher/data/DatabaseUpdater.java': 'package com.smartisanos.launcher.data;public class DatabaseUpdater{public enum Action{caa}}',
 'com/smartisanos/launcher/data/F.java': 'package com.smartisanos.launcher.data;import java.util.*;public class F{public static void b(DatabaseUpdater.Action a,List p,ArrayList q){com.smartisanos.launcher.Aa.refreshed.add((String)q.get(0));}}',
 'com/smartisanos/launcher/data/A.java': 'package com.smartisanos.launcher.data;import java.util.*;public class A{public static void e(Runnable r){r.run();}public static void refreshLauncherComponents(String p,List l){com.smartisanos.launcher.Aa.refreshed.add(p);}}',
 'com/smartisanos/launcher/data/a/l.java': 'package com.smartisanos.launcher.data.a;import java.util.*;public class l{public static List V(String q){return new ArrayList(com.smartisanos.launcher.Aa.items.values());}}',
 'android/content/Context.java': 'package android.content;public class Context{public static final String LAUNCHER_APPS_SERVICE="launcherapps";public Context getApplicationContext(){return this;}public android.content.pm.PackageManager getPackageManager(){return android.content.pm.PackageManager.instance;}public Object getSystemService(String s){return null;}}',
 'android/content/ComponentName.java': 'package android.content;public class ComponentName{String p,c;public ComponentName(String p,String c){this.p=p;this.c=c;}public String getPackageName(){return p;}public String getClassName(){return c;}public static ComponentName unflattenFromString(String s){int n=s.indexOf("/");return n<0?null:new ComponentName(s.substring(0,n),s.substring(n+1));}}',
 'android/content/Intent.java': 'package android.content;public class Intent{public static final String ACTION_MAIN="main",CATEGORY_LAUNCHER="launcher";public Intent(String a){}public Intent addCategory(String a){return this;}public Intent setPackage(String p){return this;}}',
 'android/os/Build.java': 'package android.os;public class Build{public static class VERSION{public static int SDK_INT=37;}}',
 'android/content/pm/ApplicationInfo.java': 'package android.content.pm;public class ApplicationInfo{public static final int FLAG_SUSPENDED=1073741824;public boolean enabled=true;public int flags;}',
 'android/content/pm/LauncherApps.java': 'package android.content.pm;public class LauncherApps{public java.util.List getActivityList(String p,android.os.UserHandle u){return null;}}',
 'android/content/pm/PackageManager.java': '''package android.content.pm;import java.util.*;import android.content.*;public class PackageManager{
 public static final int COMPONENT_ENABLED_STATE_DEFAULT=0,COMPONENT_ENABLED_STATE_DISABLED=2,COMPONENT_ENABLED_STATE_DISABLED_USER=3,MATCH_DISABLED_COMPONENTS=512;
 public static PackageManager instance=new PackageManager();public int state=2;public boolean fail=false,missing=false;
 public ApplicationInfo app=new ApplicationInfo();public List<ResolveInfo> activities=new ArrayList<>();
 public android.content.pm.ActivityInfo activity=new android.content.pm.ActivityInfo();
 public android.content.pm.ActivityInfo getActivityInfo(ComponentName n,int f){return activity;}
 public Object getPackageInfo(String p,int f)throws NameNotFoundException{if(missing)throw new NameNotFoundException();return app;}
 public ApplicationInfo getApplicationInfo(String p,int f)throws NameNotFoundException{getPackageInfo(p,f);return app;}
 public List<ResolveInfo> queryIntentActivities(Intent i,int f){if(fail)throw new SecurityException();return activities;}
 public int getComponentEnabledSetting(ComponentName n){if(fail)throw new SecurityException();return state;}
 public static class NameNotFoundException extends Exception{}
 }''',
 'CheckModel.java': '''import com.smartisanos.launcher.model.*;import com.smartisanos.launcher.Aa;import com.smartisanos.launcher.data.ItemInfo;import android.content.*;import android.content.pm.*;
 public class CheckModel{static int count;static void check(boolean b){count++;if(!b)throw new AssertionError("check "+count);}
 public static void main(String[] args){Context c=new Context();PackageManager pm=PackageManager.instance;
 PackageStateRepository p=new PackageStateRepository(c,new ProfileRepository(c));ItemInfo item=new ItemInfo(1,0,0);
 Aa.items.put(1L,item);
 check(p.launcherComponentsForRefresh("same.app",0)!=null);
 check(p.isLauncherComponentExplicitlyDisabled("same.app","Main",0));
 check(LauncherModelRepository.canRemoveDisabledLauncherComponent(item));
 check(p.query(new LauncherItemKey(0,"same.app","Main"),new android.os.UserHandle(0),false).state==PackageState.DISABLED);
 for(int state=0;state<=4;state++){pm.state=state;check(LauncherModelRepository.canRemoveDisabledLauncherComponent(item)==(state==2||state==3));}
 pm.state=0;pm.activity.enabled=false;check(LauncherModelRepository.canRemoveDisabledLauncherComponent(item));pm.activity.enabled=true;
 pm.state=2;pm.fail=true;check(!LauncherModelRepository.canRemoveDisabledLauncherComponent(item));check(p.launcherComponentsForRefresh("same.app",0)==null);pm.fail=false;
 pm.missing=true;check(!LauncherModelRepository.canRemoveDisabledLauncherComponent(item));pm.missing=false;
 pm.app.enabled=false;check(!LauncherModelRepository.canRemoveDisabledLauncherComponent(item));pm.app.enabled=true;
 pm.app.flags=ApplicationInfo.FLAG_SUSPENDED;check(!LauncherModelRepository.canRemoveDisabledLauncherComponent(item));pm.app.flags=0;
 for(ProfileState state:ProfileState.values()){ProfileRepository.state=state;check(LauncherModelRepository.canRemoveDisabledLauncherComponent(item)==(state==ProfileState.AVAILABLE));}
 ProfileRepository.state=ProfileState.AVAILABLE;
 item.userId=999;check(!LauncherModelRepository.canRemoveDisabledLauncherComponent(item));item.userId=0;
 item.itemType=1;check(!LauncherModelRepository.canRemoveDisabledLauncherComponent(item));item.itemType=0;
 check(!p.isLauncherComponentExplicitlyDisabled("same.app","foreign.app/Main",0));
 pm.state=0;LauncherModelRepository.refreshLauncherComponents(c,"same.app",0);check(Aa.refreshed.isEmpty());
 pm.state=2;LauncherModelRepository.refreshLauncherComponents(c,"same.app",0);check(Aa.refreshed.size()==1);
 Aa.items.put(2L,new ItemInfo(2,999,0));LauncherModelRepository.refreshLauncherComponents(c,"same.app",0);check(Aa.refreshed.size()==1);
 Aa.items.remove(2L);pm.fail=true;LauncherModelRepository.refreshLauncherComponents(c,"same.app",0);check(Aa.refreshed.size()==1);pm.fail=false;
 Aa.refreshed.clear();LauncherModelRepository.refreshStartupDisabledComponents(c);check(Aa.refreshed.size()==1);
 check(Aa.removed.isEmpty());System.out.println("PASS production component guards checks="+count);
 }}''',
})
STUBS['com/smartisanos/launcher/model/ProfileRepository.java'] = STUBS['com/smartisanos/launcher/model/ProfileRepository.java'].replace('public long serialFor', 'public int userId(UserHandle u){return u.id;}public long serialFor')
STUBS['android/content/pm/ActivityInfo.java'] = STUBS['android/content/pm/ActivityInfo.java'].replace('public String', 'public boolean enabled=true;public String')
STUBS['com/smartisanos/launcher/Aa.java'] = STUBS['com/smartisanos/launcher/Aa.java'].replace('public static int mode;', 'public static List<String> refreshed=new ArrayList<>();public static void G(String p){refreshed.add(p);}public static int mode;')

if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument('--jdk', type=pathlib.Path, required=True)
    args = parser.parse_args()
    with tempfile.TemporaryDirectory() as directory:
        work = pathlib.Path(directory)
        files = []
        for name, source in STUBS.items():
            file = work/name
            file.parent.mkdir(parents=True, exist_ok=True)
            file.write_text(source, encoding='utf-8')
            files.append(str(file))
        base = ROOT/'launcher/tools/java/com/smartisanos/launcher/model'
        files += [str(base/(name+'.java')) for name in ['PackageStateRepository', 'LauncherModelRepository', 'RemovalGateway', 'LauncherItemKey', 'PackageState', 'ProfileState']]
        output = work/'out'
        output.mkdir()
        subprocess.run([str(args.jdk/'bin/javac.exe'), '-d', str(output), *files], check=True)
        subprocess.run([str(args.jdk/'bin/java.exe'), '-cp', str(output), 'CheckModel'], check=True)
