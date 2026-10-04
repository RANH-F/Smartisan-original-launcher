"""Compile the production model/gate; vary package/profile facts and exact item identity."""
import argparse
import pathlib
import subprocess
import tempfile

ROOT = pathlib.Path(__file__).resolve().parents[3]
STUBS = {
    'android/content/Context.java': 'package android.content;public class Context{public Context getApplicationContext(){return this;}}',
    'android/os/UserHandle.java': 'package android.os;public class UserHandle{public int id;public UserHandle(int i){id=i;}}',
    'android/util/Log.java': 'package android.util;public class Log{public static int i(String t,String m){return 0;}public static int w(String t,String m){return 0;}public static int w(String t,String m,Throwable e){return 0;}}',
    'android/text/TextUtils.java': 'package android.text;public class TextUtils{public static boolean isEmpty(CharSequence s){return s==null||s.length()==0;}}',
    'com/smartisanos/launcher/ja.java': 'package com.smartisanos.launcher;import android.content.Context;public class ja{public static ja getInstance(){return new ja();}public Context getApplication(){return new Context();}}',
    'com/smartisanos/launcher/data/ItemInfo.java': '''package com.smartisanos.launcher.data;public class ItemInfo{public long id;public int userId;public byte itemType;public String packageName="same.app",componentName="Main";public ItemInfo(long i,int u,int t){id=i;userId=u;itemType=(byte)t;}}''',
    'com/smartisanos/launcher/Aa.java': '''package com.smartisanos.launcher;import java.util.*;import com.smartisanos.launcher.data.ItemInfo;public class Aa{public static int mode;public static Map<Long,ItemInfo> items=new HashMap<>();public static List<Long> removed=new ArrayList<>();public static Object nc(){if(mode==1)throw new IllegalStateException("snapshot fixture");if(mode==2)return null;if(mode==3)return "not a map";return items;}public static void a(ItemInfo i){removed.add(i.id);items.remove(i.id);}}''',
    'com/smartisanos/launcher/quicksearch/SearchIndexRepository.java': 'package com.smartisanos.launcher.quicksearch;public class SearchIndexRepository{public static void noteModelPackageDispatch(String p,int u,String a){}}',
    'com/smartisanos/launcher/theme/MaintainedLauncherSettingsHost.java': 'package com.smartisanos.launcher.theme;import android.content.Context;public class MaintainedLauncherSettingsHost{public static void clearCachedImprovedIcon(Context c,String p){}}',
    'com/smartisanos/launcher/compat/UninstallCompat.java': 'package com.smartisanos.launcher.compat;public class UninstallCompat{public static void onRemovalCommitted(Object i){}}',
    'com/smartisanos/launcher/model/ProfileRepository.java': '''package com.smartisanos.launcher.model;import android.content.Context;import android.os.UserHandle;public class ProfileRepository{public static ProfileState state=ProfileState.AVAILABLE;public ProfileRepository(Context c){}public UserHandle userForLegacyId(int i){return new UserHandle(i);}public long serialFor(UserHandle u){return u==null?-1:u.id;}public ProfileState stateFor(UserHandle u){return state;}}''',
    'com/smartisanos/launcher/model/PackageStateRepository.java': '''package com.smartisanos.launcher.model;import android.content.Context;import android.os.UserHandle;public class PackageStateRepository{public static PackageState state=PackageState.PRESENT;public PackageStateRepository(Context c,ProfileRepository p){}public PackageStateResult query(LauncherItemKey k,UserHandle u,boolean r){return new PackageStateResult();}public static class PackageStateResult{public PackageState state=PackageStateRepository.state;public String reason="test";}}''',
    'CheckModel.java': '''import com.smartisanos.launcher.model.*;import com.smartisanos.launcher.Aa;import com.smartisanos.launcher.data.ItemInfo;
public class CheckModel{
 static int count;static void check(boolean b){count++;if(!b)throw new AssertionError("check "+count);}
 static ItemInfo prepare(){Aa.items.clear();Aa.removed.clear();ItemInfo main=new ItemInfo(1,0,0);Aa.items.put(1L,main);Aa.items.put(2L,new ItemInfo(2,999,0));Aa.items.put(3L,new ItemInfo(3,0,1));Aa.items.put(4L,new ItemInfo(4,0,0));return main;}
 public static void main(String[] a){
  for(PackageState p:PackageState.values())for(ProfileState u:ProfileState.values()){
   ItemInfo main=prepare();PackageStateRepository.state=p;ProfileRepository.state=u;
   boolean expected=p==PackageState.REMOVED_CONFIRMED&&u==ProfileState.AVAILABLE;
   check(LauncherModelRepository.finishSystemUninstall(main)==expected);
   check(Aa.items.containsKey(2L)&&Aa.items.containsKey(3L)&&Aa.items.containsKey(4L));
   check(Aa.removed.size()==(expected?1:0));
  }
  ItemInfo main=prepare();PackageStateRepository.state=PackageState.REMOVED_CONFIRMED;ProfileRepository.state=ProfileState.AVAILABLE;
  check(!LauncherModelRepository.finishSystemUninstall(Aa.items.get(3L)));check(Aa.removed.isEmpty());
  ItemInfo impostor=new ItemInfo(1,999,0);check(!LauncherModelRepository.finishSystemUninstall(impostor));check(Aa.items.containsKey(1L));
  ItemInfo changed=new ItemInfo(1,0,0);changed.componentName="Changed";check(!LauncherModelRepository.finishSystemUninstall(changed));
  Aa.items.remove(1L);check(LauncherModelRepository.finishSystemUninstall(main));check(Aa.removed.isEmpty());
  for(int mode=1;mode<=3;mode++){
   Aa.mode=mode;prepare();
   check(LauncherModelRepository.hasFormalApplicationItem("same.app",0));
   check(LauncherModelRepository.hasFormalApplicationItem("missing.app",0));
   check(new LauncherModelRepository(new android.content.Context()).commitPackageRemovals("same.app",0,0,"fixture",PackageState.REMOVED_CONFIRMED,ProfileState.AVAILABLE,new RemovalGateway())==0);
   check(Aa.items.size()==4&&Aa.removed.isEmpty());
  }
  Aa.mode=0;Aa.items.clear();check(!LauncherModelRepository.hasFormalApplicationItem("same.app",0));
  Aa.items.put(2L,new ItemInfo(2,999,0));check(!LauncherModelRepository.hasFormalApplicationItem("same.app",0));
  check(LauncherModelRepository.hasFormalApplicationItem("same.app",999));
  Aa.items.put(3L,new ItemInfo(3,0,1));check(!LauncherModelRepository.hasFormalApplicationItem("same.app",0));
  Aa.items.put(1L,new ItemInfo(1,-1,0));check(LauncherModelRepository.hasFormalApplicationItem("same.app",0));
  check(LauncherModelRepository.hasFormalApplicationItem(null,0));check(LauncherModelRepository.hasFormalApplicationItem("",0));
  System.out.println("PASS production uninstall model checks="+count+": absence gate, profile states, clone/component/item isolation, shortcuts, duplicate broadcast");
 }
}''',
}

def check_scene_contract():
    scene = (ROOT/'launcher/smali/com/smartisanos/launcher/view/Sc.smali').read_text('utf-8')
    body = scene.split('.method public b(Ljava/lang/String;Ljava/util/List;Ljava/lang/Runnable;)V', 1)[1].split('.end method', 1)[0]
    assert '->id()Ljava/lang/String;' not in body
    assert body.count('Ljava/lang/String;->valueOf(J)') == 3
    assert body.count('ItemInfo;->id:J') >= 3
    w = (ROOT/'launcher/smali/com/smartisanos/launcher/a/W.smali').read_text('utf-8')
    assert '0.3f' in w and '->start()V' in w and '->Ij()V' not in w
    assert '->hd()V' in w and ':cancel_scene_missing' in w
    v = (ROOT/'launcher/smali/com/smartisanos/launcher/a/V.smali').read_text('utf-8')
    assert '0x40' in v and '0x400' in v
    na = (ROOT/'launcher/smali/com/smartisanos/launcher/a/na.smali').read_text('utf-8')
    public = na.split('# On ordinary Android', 1)[1].split('\n    :cond_system_uninstall_continue\n', 1)[0]
    assert 'if-nez v1, :cond_system_uninstall_continue' in public
    assert 'requestUninstallItem' in public
    print('PASS original 0.3s cancellation/completion, exact database scene identity, non-app bypass')

if __name__ == '__main__':
    p = argparse.ArgumentParser()
    p.add_argument('--jdk', type=pathlib.Path, required=True)
    args = p.parse_args()
    check_scene_contract()
    with tempfile.TemporaryDirectory() as td:
        work = pathlib.Path(td)
        files = []
        for name, src in STUBS.items():
            f = work/name
            f.parent.mkdir(parents=True, exist_ok=True)
            f.write_text(src, encoding='utf-8')
            files.append(str(f))
        base = ROOT/'launcher/tools/java/com/smartisanos/launcher/model'
        files += [str(base/(name+'.java')) for name in ['LauncherModelRepository', 'RemovalGateway', 'LauncherItemKey', 'PackageState', 'ProfileState']]
        out = work/'out'
        out.mkdir()
        subprocess.run([str(args.jdk/'bin/javac.exe'), '-encoding', 'UTF-8', '-d', str(out), *files], check=True)
        subprocess.run([str(args.jdk/'bin/java.exe'), '-cp', str(out), 'CheckModel'], check=True)
