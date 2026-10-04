"""Compile the complete production InstallManager and run its worker/MAIN boundary on Android.

Package/profile/model/restore IO are controlled doubles. Real HandlerThread/Looper dispatch
is exercised in a shell app_process; no user app is installed or desktop data accessed.
"""
import argparse
import json
import os
import re
from pathlib import Path
import subprocess
import uuid

ROOT = Path(__file__).resolve().parents[3]
P = 'com/smartisanos/launcher/'
STUBS = {
P+'diagnostics/StartupCompatibilityLogger.java': 'package com.smartisanos.launcher.diagnostics;public class StartupCompatibilityLogger{public static void mark(String s){}public static void optionalModuleDisabled(String s,Throwable t){}}',
P+'ShortcutCompatBridge.java': 'package com.smartisanos.launcher;public class ShortcutCompatBridge{public static void reconcilePinned(android.content.Context c,java.util.List<android.content.pm.ShortcutInfo> s,android.os.UserHandle u){}}',
P+'quicksearch/SearchIndexRepository.java': 'package com.smartisanos.launcher.quicksearch;public class SearchIndexRepository{public static void noteModelPackageDispatch(String p,int u,String a){}}',
P+'theme/MaintainedLauncherSettingsHost.java': 'package com.smartisanos.launcher.theme;public class MaintainedLauncherSettingsHost{public static android.graphics.drawable.Drawable currentLauncherIconDrawable(android.content.Context c,String p){return null;}}',
P+'theme/WeatherBridge.java': 'package com.smartisanos.launcher.theme;public class WeatherBridge{public static void invalidateWeatherApplicationCache(){}}',
'com/smartisanos/home/settings/icons/IconPackManager.java': 'package com.smartisanos.home.settings.icons;public class IconPackManager{public static void invalidateIconPackList(){}}',
P+'model/ProfileRepository.java': '''package com.smartisanos.launcher.model;import android.content.*;import android.os.*;public class ProfileRepository{public ProfileRepository(Context c){}public UserHandle userForLegacyId(int id){try{return UserHandle.class.getConstructor(int.class).newInstance(id);}catch(Exception e){return null;}}public int userId(UserHandle u){return u.hashCode();}public long serialFor(UserHandle u){return u==null?-1:u.hashCode();}public ProfileState stateFor(UserHandle u){return ProfileState.AVAILABLE;}}''',
P+'model/PackageStateRepository.java': '''package com.smartisanos.launcher.model;import android.content.*;import android.os.*;public class PackageStateRepository{public PackageStateRepository(Context c,ProfileRepository p){}public static class PackageStateResult{public PackageState state=PackageState.PRESENT;}public PackageStateResult query(LauncherItemKey k,UserHandle u,boolean r){return new PackageStateResult();}}''',
P+'model/RemovalGateway.java': 'package com.smartisanos.launcher.model;public class RemovalGateway{}',
P+'model/LauncherModelRepository.java': '''package com.smartisanos.launcher.model;import android.content.*;public class LauncherModelRepository{public static boolean existing;public LauncherModelRepository(Context c){}public static boolean hasFormalApplicationItem(String p,int u){return existing;}public void commitPackageRemovals(String p,long s,int u,String o,PackageState k,ProfileState f,RemovalGateway g){}}''',
P+'model/PackageEventGateway.java': '''package com.smartisanos.launcher.model;import android.content.*;import android.os.*;public class PackageEventGateway{public enum Type{ADDED,REMOVED,REPLACED,CHANGED}public interface Consumer{void onPackageEvent(Context c,PackageEvent e);}public static class PackageEvent{public Type type;public String packageName,componentName,source;public UserHandle user;public long userSerial;public boolean replacing;public PackageEvent(Type t,String p,UserHandle u,long s,String a,boolean r,String o){}}public PackageEventGateway(Context c,Consumer a){}public void acceptBroadcast(Context c,Intent i,String s){}public void accept(Context c,PackageEvent e){}}''',
P+'backup/PendingItemRestoreHandler.java': '''package com.smartisanos.launcher.backup;import android.content.*;import com.smartisanos.launcher.install.InstallWorkerProbe;public class PendingItemRestoreHandler{public static void onPackageAdded(Context c,String p){InstallWorkerProbe.restore(p);}}''',
P+'Aa.java': '''package com.smartisanos.launcher;import android.content.*;import com.smartisanos.launcher.install.InstallWorkerProbe;public class Aa{public static void c(Context c,String p){InstallWorkerProbe.notifyModel(p);}}''',
}


def main():
    parser = argparse.ArgumentParser(__doc__)
    for key in ('serial', 'jdk', 'sdk', 'output'):
        parser.add_argument('--'+key, required=True)
    parser.add_argument('--baseline', action='store_true')
    args = parser.parse_args()
    out, jdk, sdk = Path(args.output), Path(args.jdk), Path(args.sdk)
    out.mkdir(parents=True, exist_ok=True)
    classes, dex = out/'classes', out/'dex'
    classes.mkdir(exist_ok=True); dex.mkdir(exist_ok=True)

    def run(command, log=None):
        result = subprocess.run([str(v) for v in command], capture_output=True, text=True,
                                encoding='utf-8', errors='replace', timeout=60)
        if log: (out/log).write_text(result.stdout+result.stderr, encoding='utf-8')
        if result.returncode: raise RuntimeError(result.stdout+result.stderr)
        return result.stdout

    sources = []
    for name, source in STUBS.items():
        file = out/'src'/name; file.parent.mkdir(parents=True, exist_ok=True)
        file.write_text(source, encoding='utf-8'); sources.append(file)
    for name in ('PackageState', 'ProfileState', 'LauncherItemKey'):
        sources.append(ROOT/'launcher/tools/java'/P/'model'/(name+'.java'))
    manager = ROOT/'launcher/tools/java'/P/'install/SmartisanInstallManager.java'
    if args.baseline:
        manager = out/'src'/P/'install/SmartisanInstallManager.java'
        manager.parent.mkdir(parents=True, exist_ok=True)
        manager.write_bytes(subprocess.check_output(['git', 'show', 'HEAD:launcher/tools/java/'+P+'install/SmartisanInstallManager.java'], cwd=ROOT))
    sources += [manager, Path(__file__).with_name('InstallWorkerProbe.java')]
    # Derive the abstract PM surface from this SDK; only the production readiness queries run.
    surface = run([jdk/'bin/javap.exe','-classpath',sdk/'platforms/android-30/android.jar','-public','android.content.pm.PackageManager'])
    methods = []
    for result_type, name, parameters, tail in re.findall(r'public abstract (.+?) (\w+)\((.*?)\)(.*?);', surface):
        types, start, depth = [], 0, 0
        for index, char in enumerate(parameters):
            if char == '<': depth += 1
            elif char == '>': depth -= 1
            elif char == ',' and depth == 0:
                types.append(parameters[start:index].strip()); start = index+1
        if parameters.strip(): types.append(parameters[start:].strip())
        declarations = ','.join(value.replace('$','.')+' p'+str(index) for index,value in enumerate(types))
        body = 'throw new AssertionError("Unexpected PM query: '+name+'");'
        if name == 'getPackageInfo':
            body = 'android.content.pm.PackageInfo i=new android.content.pm.PackageInfo();i.firstInstallTime=i.lastUpdateTime=1;return i;'
        elif name == 'queryIntentActivities':
            body = 'android.content.pm.ResolveInfo i=new android.content.pm.ResolveInfo();i.activityInfo=new android.content.pm.ActivityInfo();return java.util.Collections.singletonList(i);'
        methods.append('public '+result_type.replace('$','.')+' '+name+'('+declarations+')'+tail.replace('$','.')+'{'+body+'}')
    assert len(methods)>50, 'SDK PackageManager surface missing'
    source = 'package com.smartisanos.launcher.install;public class InstallPackageManager extends android.content.pm.PackageManager{'+ '\n'.join(methods)+'}'
    pm = out/'src'/P/'install/InstallPackageManager.java'; pm.parent.mkdir(parents=True, exist_ok=True); pm.write_text(source, encoding='utf-8'); sources.append(pm)
    run([jdk/'bin/javac.exe', '-encoding', 'UTF-8', '-source', '8', '-target', '8', '-bootclasspath', sdk/'platforms/android-30/android.jar', '-d', classes, *sources], 'compile.log')
    run([jdk/'bin/jar.exe', 'cf', out/'probe.jar', '-C', classes, '.'])
    os.environ['JAVA_HOME'] = str(jdk)
    run([sdk/'build-tools/36.0.0/d8.bat', '--min-api', '26', '--output', dex, out/'probe.jar'], 'dex.log')
    adb = sdk/'platform-tools/adb.exe'
    remote = '/data/local/tmp/smartisan-pending-worker-f06-'+uuid.uuid4().hex
    def device(*command, **kwargs): return run([adb, '-s', args.serial, *command], **kwargs)
    device('shell', 'mkdir', remote); device('push', dex/'classes.dex', remote+'/probe.dex')
    before = device('shell', 'pidof', 'com.smartisanos.launcher').strip()
    mode = 'baseline' if args.baseline else 'fixed'
    result = device('shell', f'CLASSPATH={remote}/probe.dex app_process /system/bin com.smartisanos.launcher.install.InstallWorkerProbe {remote} {mode}', log='device.log')
    assert ('BASELINE_PENDING_ON_MAIN' if args.baseline else 'PASS INSTALL_WORKER_CHECKS=') in result
    after = device('shell', 'pidof', 'com.smartisanos.launcher').strip()
    (out/'summary.json').write_text(json.dumps(dict(mode=mode, workspace=remote, result=result.splitlines()[-1], launcher_pid_before=before, launcher_pid_after=after, installed_apk=False, scope='real Android HandlerThread/MAIN, full production InstallManager; package/profile/model/pending IO controlled'), indent=2), encoding='utf-8')
    print(result.strip().splitlines()[-1]); print(f'Launcher PID before={before} after={after}')


if __name__ == '__main__': main()
