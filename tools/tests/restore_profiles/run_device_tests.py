"""Execute production restore merge/import/pending owners against isolated Android SQLite.

Profile/package facts, profile remap, shortcut icons and archive metadata are fixtures.
Android SQLite/JSON/Intent/AtomicFile and the destructive rebuild are real. No APK install.
"""
import argparse
import json
import os
import re
from pathlib import Path
import subprocess
import uuid

ROOT = Path(__file__).resolve().parents[3]
BACKUP = 'com/smartisanos/launcher/backup/'
MODEL = 'com/smartisanos/launcher/model/'
STUBS = {
BACKUP + 'Fixture.java': '''package com.smartisanos.launcher.backup;import java.util.*;import com.smartisanos.launcher.model.*;
public class Fixture{public static Map<Integer,PackageState> states=new HashMap<>();public static int targetUser=10;
public static long serial=1010;public static boolean invalidSerial,resolve=true;public static LauncherItemKey lastKey;public static int lastUser;
public static void reset(){states.clear();targetUser=10;serial=1010;invalidSerial=false;resolve=true;lastKey=null;lastUser=-1;}
public static int user(android.os.UserHandle u){try{return (Integer)u.getClass().getMethod("getIdentifier").invoke(u);}catch(Exception e){throw new RuntimeException(e);}}}''',
MODEL + 'ProfileRepository.java': '''package com.smartisanos.launcher.model;import android.content.*;import android.os.*;import com.smartisanos.launcher.backup.Fixture;
public class ProfileRepository{public ProfileRepository(Context c){}public UserHandle userForLegacyId(int id){try{return UserHandle.class.getConstructor(int.class).newInstance(id);}catch(Exception e){return null;}}
public long serialFor(UserHandle u){return u==null||Fixture.invalidSerial?-1:1000+Fixture.user(u);}}''',
MODEL + 'PackageStateRepository.java': '''package com.smartisanos.launcher.model;import android.content.*;import android.os.*;import com.smartisanos.launcher.backup.Fixture;
public class PackageStateRepository{public PackageStateRepository(Context c,ProfileRepository p){}public static class PackageStateResult{public final PackageState state;public PackageStateResult(PackageState s){state=s;}}
public PackageStateResult query(LauncherItemKey k,UserHandle u,boolean r){Fixture.lastKey=k;Fixture.lastUser=u==null?-1:Fixture.user(u);return new PackageStateResult(!k.isValid()?PackageState.UNKNOWN:Fixture.states.containsKey(Fixture.lastUser)?Fixture.states.get(Fixture.lastUser):PackageState.REMOVED_CONFIRMED);}}''',
BACKUP + 'LayoutSnapshotExporter.java': '''package com.smartisanos.launcher.backup;import android.database.sqlite.*;import org.json.*;
public class LayoutSnapshotExporter{public static SQLiteDatabase db;public static SQLiteDatabase database(boolean w){return db;}
public static void validate(JSONObject l)throws Exception{if(l.getJSONArray("pages").length()==0)throw new Exception("missing pages");}
public static JSONArray readPageRows(SQLiteDatabase d)throws Exception{JSONArray rows=new JSONArray();android.database.Cursor c=d.query("table_pageinfos",null,null,null,null,null,"pageIndex ASC,_id ASC");try{while(c.moveToNext()){JSONObject r=new JSONObject();for(int i=0;i<c.getColumnCount();i++){if(c.isNull(i))continue;if(c.getType(i)==android.database.Cursor.FIELD_TYPE_INTEGER)r.put(c.getColumnName(i),c.getLong(i));else r.put(c.getColumnName(i),c.getString(i));}rows.put(r);}}finally{c.close();}return rows;}
public static boolean isUnusedPageSlot(JSONObject p){return p.optInt("pageIndex",0)==-1;}}''',
BACKUP + 'BackupArchiveReader.java': '''package com.smartisanos.launcher.backup;import org.json.*;public class BackupArchiveReader{
public static class ValidatedBackup{public JSONObject layout,icons=new JSONObject(),theme=new JSONObject();}}''',
BACKUP + 'ShortcutIconBackupCodec.java': '''package com.smartisanos.launcher.backup;import android.content.*;import android.database.sqlite.*;import org.json.*;import java.io.*;import java.util.*;
public class ShortcutIconBackupCodec{public static Map<String,ContentValues> captureCurrent(SQLiteDatabase d,List<JSONObject> i){return new HashMap<>();}
public static void restore(Context c,SQLiteDatabase d,JSONObject l,JSONObject s,File f,Map<String,ContentValues> m){}}''',
BACKUP + 'DesktopRestoreController.java': 'package com.smartisanos.launcher.backup;import android.content.*;public class DesktopRestoreController{static void ensureDatabaseProvider(Context c){}}',
BACKUP + 'DesktopBackupController.java': 'package com.smartisanos.launcher.backup;public class DesktopBackupController{public static class CancellationToken{public void throwIfCancelled(){}}}',
BACKUP + 'ThemeBackupCodec.java': 'package com.smartisanos.launcher.backup;import android.content.*;public class ThemeBackupCodec{public static boolean isThemePackageAvailable(Context c,String p){return true;}}',
'com/smartisanos/launcher/ShortcutCompatBridge.java': '''package com.smartisanos.launcher;import android.content.*;public class ShortcutCompatBridge{
public static final String EXTRA_ID="smartisan.shortcut.id";public static long primaryUserSerial(Context c){return 1000;}
public static boolean isPinnedAvailable(Context c,String p,String i,long s){return false;}
public static Intent createLaunchIntent(Context c,String p,String i,long s,boolean f){return new Intent().putExtra("smartisan.shortcut.package",p).putExtra(EXTRA_ID,i).putExtra("smartisan.shortcut.user_serial",s);}}''',
'com/smartisanos/launcher/profile/DoppelgangerCompat.java': '''package com.smartisanos.launcher.profile;import android.content.*;import com.smartisanos.launcher.backup.Fixture;
public class DoppelgangerCompat{public static final String KIND_DOPPELGANGER_APP="DOPPELGANGER_APP",KIND_DOPPELGANGER_SHORTCUT="DOPPELGANGER_SHORTCUT";
public static class ResolvedProfile{public int userId;public long serial;ResolvedProfile(){userId=Fixture.targetUser;serial=Fixture.serial;}}
public static ResolvedProfile resolveDoppelganger(Context c,String p,String m,long s,int u){return Fixture.resolve?new ResolvedProfile():null;}}''',
}


def main():
    parser = argparse.ArgumentParser(__doc__)
    for key in ('serial', 'jdk', 'sdk', 'output'):
        parser.add_argument('--' + key, required=True)
    parser.add_argument('--baseline', action='store_true')
    parser.add_argument('--pages', action='store_true', help='Run F02 against the actual exporter and isolated page database')
    parser.add_argument('--pending', action='store_true', help='Run F06 JSON/DB retry and identity cases (requires --pages)')
    args = parser.parse_args()
    if args.pending and not args.pages: parser.error('--pending requires --pages')
    output, jdk, sdk = Path(args.output), Path(args.jdk), Path(args.sdk)
    output.mkdir(parents=True, exist_ok=True)
    classes, dex = output / 'classes', output / 'dex'
    classes.mkdir(exist_ok=True)
    dex.mkdir(exist_ok=True)

    def run(command, log=None):
        result = subprocess.run([str(v) for v in command], capture_output=True,
                                text=True, encoding='utf-8', errors='replace', timeout=60)
        if log:
            (output / log).write_text(result.stdout + result.stderr, encoding='utf-8')
        if result.returncode != 0:
            raise RuntimeError(f'Command failed ({result.returncode}): {result.stdout}\n{result.stderr}')
        return result.stdout

    sources = []
    # Generate the abstract PM surface from the local SDK. Only the main-user
    # absence queries are permitted; no system context or user data is accessed.
    surface = run([jdk / 'bin/javap.exe', '-classpath', sdk / 'platforms/android-30/android.jar',
                   '-public', 'android.content.pm.PackageManager'])
    methods = []
    for result_type, name, parameters, tail in re.findall(r'public abstract (.+?) (\w+)\((.*?)\)(.*?);', surface):
        types, start, depth = [], 0, 0
        for index, character in enumerate(parameters):
            if character == '<': depth += 1
            elif character == '>': depth -= 1
            elif character == ',' and depth == 0:
                types.append(parameters[start:index].strip()); start = index + 1
        if parameters.strip(): types.append(parameters[start:].strip())
        declarations = ','.join(value.replace('$', '.') + ' p' + str(index) for index, value in enumerate(types))
        if 'NameNotFoundException' in tail:
            body = 'throw new android.content.pm.PackageManager.NameNotFoundException("fixture absent in primary");'
        elif name in ('getLaunchIntentForPackage', 'getLeanbackLaunchIntentForPackage'):
            body = 'return null;'
        elif name == 'queryIntentActivities':
            body = 'return java.util.Collections.emptyList();'
        else:
            body = 'throw new AssertionError("Unexpected primary PM query: ' + name + '");'
        methods.append('public ' + result_type.replace('$', '.') + ' ' + name + '(' + declarations + ')' + tail.replace('$', '.') + '{' + body + '}')
    assert len(methods) > 50, 'SDK PackageManager surface not found'
    pm = output / 'src' / BACKUP / 'PrimaryAbsentPackageManager.java'
    pm.parent.mkdir(parents=True, exist_ok=True)
    pm.write_text('package com.smartisanos.launcher.backup;public class PrimaryAbsentPackageManager extends android.content.pm.PackageManager{' + '\n'.join(methods) + '}', encoding='utf-8')
    sources.append(pm)
    fixtures = dict(STUBS)
    if args.pages:
        del fixtures[BACKUP + 'LayoutSnapshotExporter.java']
        fixtures[BACKUP + 'BackupManifest.java'] = 'package com.smartisanos.launcher.backup;public class BackupManifest{public static final int DATABASE_SCHEMA_VERSION=1;}'
        fixtures['com/smartisanos/launcher/data/C.java'] = 'package com.smartisanos.launcher.data;import android.database.sqlite.*;import com.smartisanos.launcher.backup.RestorePageProbe;public class C{public static C getInstance(){return new C();}public SQLiteDatabase getReadableDatabase(){return RestorePageProbe.db;}public SQLiteDatabase getWritableDatabase(){return RestorePageProbe.db;}}'
        profile = 'com/smartisanos/launcher/profile/DoppelgangerCompat.java'
        fixtures[profile] = fixtures[profile].rstrip()[:-1] + '''public static final String KIND_PRIMARY_APP="PRIMARY_APP",KIND_PRIMARY_SHORTCUT="PRIMARY_SHORTCUT";
public static long profileSerialForUserId(Context c,int u){return 1000+u;}public static boolean isDoppelganger(Context c,String p,String m,int u){return u>0;}}'''
    for name, source in fixtures.items():
        path = output / 'src' / name
        path.parent.mkdir(parents=True, exist_ok=True)
        path.write_text(source, encoding='utf-8')
        sources.append(path)
    production = ['RestoreMergePlanner', 'LayoutSnapshotImporter', 'PendingItemRestoreHandler',
                  'FolderTopologyValidator', 'BackupFileUtils']
    if args.pages: production.append('LayoutSnapshotExporter')
    for name in production:
        path = ROOT / 'launcher/tools/java' / BACKUP / (name + '.java')
        if args.baseline and (name == 'PendingItemRestoreHandler' if args.pages else name in ('RestoreMergePlanner', 'LayoutSnapshotImporter')):
            original = run(['git', '-C', ROOT, 'show', 'HEAD:' + path.relative_to(ROOT).as_posix()])
            path = output / 'baseline' / BACKUP / (name + '.java')
            path.parent.mkdir(parents=True, exist_ok=True)
            path.write_text(original, encoding='utf-8')
        sources.append(path)
    for name in ('PackageState', 'LauncherItemKey'):
        sources.append(ROOT / 'launcher/tools/java' / MODEL / (name + '.java'))
    probe = Path(__file__).parent.parent / 'restore_pages/RestorePageProbe.java' if args.pages else Path(__file__).with_name('RestoreProfileProbe.java')
    sources.append(probe)
    run([jdk / 'bin/javac.exe', '-encoding', 'UTF-8', '-source', '8', '-target', '8',
         '-bootclasspath', sdk / 'platforms/android-30/android.jar', '-d', classes, *sources], 'compile.log')
    run([jdk / 'bin/jar.exe', 'cf', output / 'probe.jar', '-C', classes, '.'])
    os.environ['JAVA_HOME'] = str(jdk)
    run([sdk / 'build-tools/36.0.0/d8.bat', '--min-api', '26', '--output', dex, output / 'probe.jar'], 'dex.log')
    adb = sdk / 'platform-tools/adb.exe'

    def device(*command, **kwargs):
        return run([adb, '-s', args.serial, *command], **kwargs)

    remote = ('/data/local/tmp/smartisan-restore-pages-f02-' if args.pages else '/data/local/tmp/smartisan-restore-profiles-f03-') + uuid.uuid4().hex
    device('shell', 'mkdir', remote)
    device('push', dex / 'classes.dex', remote + '/probe.dex')
    before = device('shell', 'pidof', 'com.smartisanos.launcher').strip()
    mode = ('pending-baseline' if args.baseline else 'pending') if args.pending else ('baseline' if args.baseline else 'fixed')
    classname = 'RestorePageProbe' if args.pages else 'RestoreProfileProbe'
    result = device('shell', f'CLASSPATH={remote}/probe.dex app_process /system/bin com.smartisanos.launcher.backup.{classname} {remote} {mode}', log='device.log')
    expected = ('BASELINE_PAGE_OVERFLOW_REPRODUCED' if args.baseline else 'PASS RESTORE_PAGE_CHECKS=') if args.pages else ('BASELINE_LOSS_REPRODUCED' if args.baseline else 'PASS RESTORE_PROFILE_CHECKS=')
    if args.pending: expected = 'BASELINE_PENDING_DUPLICATE_REPRODUCED' if args.baseline else 'PASS PENDING_IDENTITY_CHECKS='
    assert expected in result, result
    restart = None
    if args.pending and not args.baseline:
        seed_command = [adb, '-s', args.serial, 'shell', f'CLASSPATH={remote}/probe.dex app_process /system/bin com.smartisanos.launcher.backup.{classname} {remote} pending-seed']
        seed = subprocess.run([str(v) for v in seed_command], capture_output=True, text=True, encoding='utf-8', errors='replace', timeout=60)
        (output/'pending-sigkill.log').write_text(seed.stdout+seed.stderr, encoding='utf-8')
        assert seed.returncode in (137,-9) and 'PENDING_CHECKPOINT_READY' in seed.stdout, seed.stdout+seed.stderr
        restart = device('shell', f'CLASSPATH={remote}/probe.dex app_process /system/bin com.smartisanos.launcher.backup.{classname} {remote} pending-restart', log='pending-restart.log')
        assert 'PASS PENDING_RESTART_CHECKS=' in restart, restart
    after = device('shell', 'pidof', 'com.smartisanos.launcher').strip()
    (output / 'summary.json').write_text(json.dumps({
        'mode': mode, 'workspace': remote, 'launcher_pid_before': before, 'launcher_pid_after': after,
        'result': result.strip().splitlines()[-1], 'installed_apk': False,
        'restart_result': restart.strip().splitlines()[-1] if restart else None,
        'scope': 'real Android SQLite/JSON/Intent/AtomicFile; package/profile/remap/icon boundaries are fixtures',
    }, indent=2), encoding='utf-8')
    print(result.strip().splitlines()[-1])
    if restart: print(restart.strip().splitlines()[-1])
    print(f'Launcher PID before={before} after={after}; evidence={output}')


if __name__ == '__main__':
    main()
