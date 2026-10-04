"""Run the production uninstall bridge with controlled user mapping and intent capture.

No package is uninstalled. Model and Android services are doubles; a baseline mode
executes the previous bridge to prove that clone identity was lost at dispatch.
"""
import argparse
import pathlib
import subprocess
import tempfile

from test_uninstall_bridge import ROOT, STUBS

CHECK = '''import android.content.*;import android.os.*;import android.widget.Toast;
import com.smartisanos.launcher.compat.UninstallCompat;
import com.smartisanos.launcher.ja;import com.smartisanos.launcher.a.oa;
import com.smartisanos.launcher.model.*;
public class CheckTarget {
 static int checks;
 static void check(boolean b){checks++;if(!b)throw new AssertionError("check "+checks);}
 public static class Item {public long id;public int userId,itemType;public String packageName="same.app",componentName;
  Item(long i,int u,int t,String c){id=i;userId=u;itemType=t;componentName=c;}}
 public static class MissingUser {public int itemType=0;public String packageName="same.app";}
 public static class InvalidUser {public int itemType=0;public Object userId=null;public String packageName="same.app";}
 static Item app(int u){return new Item(10+u,u,0,"Main");}
 static void blocked(Object item){int calls=ja.context.calls,animated=oa.animated,queries=LauncherModelRepository.queries,toasts=Toast.shown;
  UninstallCompat.requestUninstallItem(item);
  check(ja.context.calls==calls);check(!UninstallCompat.isSystemUninstallPending());
  check(oa.animated==animated+1);check(Toast.shown==toasts+1);check(Toast.message.contains("系统设置"));
  UninstallCompat.onLauncherResumed();check(LauncherModelRepository.queries==queries);check(oa.animated==animated+1);
 }
 static void intent(Intent i,int user,String action){check(i.action.equals(action));check(i.data.value.equals("package:same.app"));
  check(((UserHandle)i.extras.get(Intent.EXTRA_USER)).id==user);check(i.flags==Intent.FLAG_ACTIVITY_NEW_TASK);}
 public static void main(String[] args){
  if(args.length>0&&args[0].equals("baseline")){
   UninstallCompat.requestUninstallItem(app(999));
   check(ja.context.calls==1);check(!ja.context.intents.get(0).extras.containsKey(Intent.EXTRA_USER));
   System.out.println("BASELINE_CLONE_DISPATCH_LOST_USER checks="+checks);return;
  }
  for(int u:new int[]{10,999,128,-1})blocked(app(u));
  blocked(new MissingUser());blocked(new InvalidUser());
  ProfileRepository.unresolved=true;blocked(app(0));ProfileRepository.unresolved=false;
  ProfileRepository.unknownSerial=true;blocked(app(0));ProfileRepository.unknownSerial=false;
  Item main=app(0),sibling=new Item(main.id,0,0,"Other"),clone=app(999);
  int calls=ja.context.calls,animated=oa.animated;
  UninstallCompat.requestUninstallItem(main);intent(ja.context.intents.get(calls),0,Intent.ACTION_UNINSTALL_PACKAGE);
  check(UninstallCompat.isSystemUninstallPending());check(oa.animated==animated);
  // A second request cannot replace pending identity or cancel its trash scene.
  UninstallCompat.requestUninstallItem(clone);UninstallCompat.requestUninstallItem(sibling);
  check(ja.context.calls==calls+1);check(oa.animated==animated);check(UninstallCompat.isSystemUninstallPending());
  UninstallCompat.onRemovalCommitted(clone);UninstallCompat.onLauncherResumed();check(oa.animated==animated+1);
  UninstallCompat.onLauncherResumed();check(oa.animated==animated+1);
  UninstallCompat.requestUninstallItem(main);UninstallCompat.onRemovalCommitted(main);
  UninstallCompat.onLauncherResumed();check(oa.animated==animated+1);
  LauncherModelRepository.removed=true;UninstallCompat.requestUninstallItem(main);
  UninstallCompat.onLauncherResumed();check(oa.animated==animated+1);LauncherModelRepository.removed=false;
  calls=ja.context.calls;ja.context.failures=1;UninstallCompat.requestUninstallItem(main);
  intent(ja.context.intents.get(calls),0,Intent.ACTION_UNINSTALL_PACKAGE);
  intent(ja.context.intents.get(calls+1),0,Intent.ACTION_DELETE);
  check(UninstallCompat.isSystemUninstallPending());UninstallCompat.onLauncherResumed();
  ja.context.failures=2;UninstallCompat.requestUninstallItem(main);check(!UninstallCompat.isSystemUninstallPending());
  calls=ja.context.calls;UninstallCompat.requestUninstallItem(new Item(1,999,1,"Shortcut"));
  UninstallCompat.requestUninstallItem(new Item(2,0,2,"Folder"));check(ja.context.calls==calls);
  // Legacy zero means the process user through the existing repository, not fixed user 0.
  ProfileRepository.current=12;calls=ja.context.calls;UninstallCompat.requestUninstallItem(app(0));
  intent(ja.context.intents.get(calls),12,Intent.ACTION_UNINSTALL_PACKAGE);UninstallCompat.onLauncherResumed();
  calls=ja.context.calls;UninstallCompat.requestUninstall("same.app");
  intent(ja.context.intents.get(calls),12,Intent.ACTION_UNINSTALL_PACKAGE);UninstallCompat.onLauncherResumed();
  ProfileRepository.current=0;blocked(app(12));
  System.out.println("PASS UNINSTALL_TARGET_CHECKS="+checks);
 }
}'''


def main():
    parser = argparse.ArgumentParser(__doc__)
    parser.add_argument('--jdk', type=pathlib.Path, required=True)
    parser.add_argument('--baseline', action='store_true')
    args = parser.parse_args()
    with tempfile.TemporaryDirectory() as directory:
        work = pathlib.Path(directory)
        fixtures = {name: source for name, source in STUBS.items() if name != 'CheckBridge.java'}
        fixtures['CheckTarget.java'] = CHECK
        files = []
        for name, source in fixtures.items():
            path = work / name
            path.parent.mkdir(parents=True, exist_ok=True)
            path.write_text(source, encoding='utf-8')
            files.append(str(path))
        relative = 'launcher/tools/java/com/smartisanos/launcher/compat/UninstallCompat.java'
        production = ROOT / relative
        if args.baseline:
            production = work / 'UninstallCompat.java'
            production.write_bytes(subprocess.check_output(['git', 'show', 'HEAD:' + relative], cwd=ROOT))
        files.append(str(production))
        out = work / 'out'
        out.mkdir()
        subprocess.run([str(args.jdk / 'bin/javac.exe'), '-encoding', 'UTF-8', '-d', str(out), *files], check=True)
        subprocess.run([str(args.jdk / 'bin/java.exe'), '-cp', str(out), 'CheckTarget',
                        'baseline' if args.baseline else 'fixed'], check=True)


if __name__ == '__main__':
    main()
