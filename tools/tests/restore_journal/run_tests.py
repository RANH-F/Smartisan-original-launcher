"""Exercise production restore checkpoints with temporary files and injected platform failures.

Android/JSON/archive/DB boundaries are isolated doubles. Controller, journal, recovery guard,
operation lock, file utilities and result classes are the actual production sources.
"""
import argparse
import pathlib
import subprocess
import tempfile

ROOT = pathlib.Path(__file__).resolve().parents[3]
PACKAGE = 'com/smartisanos/launcher/backup/'
SOURCES = {
'android/util/Log.java': '''package android.util;public class Log {
public static int i(String t,String s){return 0;}public static int w(String t,String s,Throwable e){return 0;}
public static int e(String t,String s){return 0;}public static int e(String t,String s,Throwable e){return 0;}}''',
'android/os/Looper.java': 'package android.os;public class Looper{public static Looper getMainLooper(){return new Looper();}}',
'android/os/Handler.java': 'package android.os;public class Handler{public Handler(Looper l){}public void post(Runnable r){r.run();}}',
'android/os/Process.java': 'package android.os;public class Process{public static int myPid(){return 1;}}',
'android/app/ActivityManager.java': '''package android.app;import java.util.*;public class ActivityManager{
public static class RunningAppProcessInfo{public int pid=1;public String processName="main";}
public List<RunningAppProcessInfo> getRunningAppProcesses(){return Collections.singletonList(new RunningAppProcessInfo());}}''',
'android/net/Uri.java': 'package android.net;public class Uri{public String toString(){return "test://archive";}}',
'android/content/SharedPreferences.java': '''package android.content;public interface SharedPreferences{
int getInt(String k,int d);String getString(String k,String d);Editor edit();interface Editor{Editor putString(String k,String v);boolean commit();}}''',
'android/content/Context.java': '''package android.content;import java.io.*;import java.util.*;public class Context{
public static final String ACTIVITY_SERVICE="activity";public final File root;public final Prefs prefs=new Prefs();
public Context(File r){root=r;}public File getFilesDir(){File f=new File(root,"files");f.mkdirs();return f;}
public File getCacheDir(){File f=new File(root,"cache");f.mkdirs();return f;}public Context getApplicationContext(){return this;}
public SharedPreferences getSharedPreferences(String n,int m){return prefs;}public Object getSystemService(String s){return new android.app.ActivityManager();}
public Resolver getContentResolver(){return new Resolver();}public static class Resolver{public InputStream openInputStream(android.net.Uri u){return new ByteArrayInputStream(new byte[]{1});}}
public static class Prefs implements SharedPreferences,SharedPreferences.Editor{public final Map<String,String> values=new HashMap<>();
public int getInt(String k,int d){return d;}public String getString(String k,String d){return values.getOrDefault(k,d);}
public Editor edit(){return this;}public Editor putString(String k,String v){values.put(k,v);return this;}public boolean commit(){return true;}}}''',
'org/json/JSONObject.java': r'''package org.json;import java.util.*;import java.util.regex.*;
public class JSONObject{final Map<String,Object> values=new LinkedHashMap<>();public JSONObject(){}
public JSONObject(String s){s=s.trim();if(!s.startsWith("{")||!s.endsWith("}"))throw new IllegalArgumentException("JSON");
String body=s.substring(1,s.length()-1);Pattern p=Pattern.compile("\\\"((?:\\\\.|[^\\\"\\\\])*)\\\"\\s*:\\s*(\\\"(?:\\\\.|[^\\\"\\\\])*\\\"|-?\\d+|true|false|null)");
Matcher m=p.matcher(body);int end=0;while(m.find()){String gap=body.substring(end,m.start()).trim();if(!gap.isEmpty()&&!gap.equals(","))throw new IllegalArgumentException("JSON gap");
String v=m.group(2);values.put(unescape(m.group(1)),v.startsWith("\"")?unescape(v.substring(1,v.length()-1)):v.equals("true")?Boolean.TRUE:v.equals("false")?Boolean.FALSE:v.equals("null")?null:Long.valueOf(v));end=m.end();}
if(!body.substring(end).trim().isEmpty())throw new IllegalArgumentException("JSON tail");}
static String escape(String s){return s.replace("\\","\\\\").replace("\"","\\\"");}
static String unescape(String s){return s.replace("\\\"","\"").replace("\\\\","\\");}
public JSONObject put(String k,Object v){values.put(k,v);return this;}public String getString(String k){Object v=values.get(k);if(!(v instanceof String))throw new IllegalArgumentException(k);return (String)v;}
public String optString(String k,String d){Object v=values.get(k);return v instanceof String?(String)v:d;}
public long optLong(String k,long d){Object v=values.get(k);return v instanceof Number?((Number)v).longValue():d;}
public int optInt(String k,int d){return (int)optLong(k,d);}public boolean optBoolean(String k,boolean d){Object v=values.get(k);return v instanceof Boolean?(Boolean)v:d;}
public String toString(){StringBuilder b=new StringBuilder("{");for(Map.Entry<String,Object> e:values.entrySet()){if(b.length()>1)b.append(',');b.append('"').append(escape(e.getKey())).append("\":");Object v=e.getValue();if(v instanceof String)b.append('"').append(escape((String)v)).append('"');else b.append(v);}return b.append('}').toString();}}
''',
'android/util/AtomicFile.java': '''package android.util;import java.io.*;import java.nio.file.*;import org.json.JSONObject;
public class AtomicFile{final File base;public static String failState="",failSyncState="";public static boolean failStart,silentFinish,failRead;
public AtomicFile(File f){base=f;}public File getBaseFile(){return base;}
public FileInputStream openRead()throws IOException{if(failRead)throw new IOException("injected read");File bak=new File(base+".bak");if(bak.isFile())Files.move(bak.toPath(),base.toPath(),StandardCopyOption.REPLACE_EXISTING);return new FileInputStream(base);}
public FileOutputStream startWrite()throws IOException{if(failStart)throw new IOException("injected start");base.getParentFile().mkdirs();return new FileOutputStream(new File(base+".new")){
public void write(byte[] b)throws IOException{String state=new JSONObject(new String(b,java.nio.charset.StandardCharsets.UTF_8)).getString("state");if(state.equals(failState))throw new IOException("injected checkpoint "+state);super.write(b);if(state.equals(failSyncState))close();}};}
public void finishWrite(FileOutputStream s){try{s.close();if(!silentFinish)Files.move(new File(base+".new").toPath(),base.toPath(),StandardCopyOption.REPLACE_EXISTING);}catch(IOException e){throw new IllegalStateException(e);}}
public void failWrite(FileOutputStream s){try{s.close();}catch(IOException e){}new File(base+".new").delete();}}
''',
PACKAGE+'Effects.java': '''package com.smartisanos.launcher.backup;import java.util.*;import java.io.*;public class Effects{
public static final List<String> events=new ArrayList<>();public static File lastArchive;public static boolean failImporter;
public static void clear(){events.clear();lastArchive=null;failImporter=false;}}''',
PACKAGE+'DesktopBackupController.java': '''package com.smartisanos.launcher.backup;import android.content.*;import org.json.*;
public class DesktopBackupController{public static final String PREFS="backup",KEY_LAST_RESTORE_DOCUMENT_URI="last";
public static class CancellationToken{boolean cancelled;public void cancel(){cancelled=true;}public void throwIfCancelled()throws BackupCancelledException{if(cancelled)throw new BackupCancelledException();}}
public static class BackupCancelledException extends java.io.IOException{}public static class JSONObjectHolder{public JSONObject value=new JSONObject();}
public static JSONObjectHolder exportLayoutAtDatabaseSafePoint(Context c,CancellationToken t){return new JSONObjectHolder();}
public static String documentDisplayName(Context c,android.net.Uri u){return "fixture";}public static void cleanupInterruptedBackup(Context c){}}''',
PACKAGE+'BackupManifest.java': '''package com.smartisanos.launcher.backup;import android.content.*;public class BackupManifest{
public int gridMode=12,formatVersion=1;public String launcherVersionName="fixture";public static BackupManifest create(Context c,int g){return new BackupManifest();}}''',
PACKAGE+'BackupArchiveReader.java': '''package com.smartisanos.launcher.backup;import java.io.*;import org.json.*;public class BackupArchiveReader{
public static class ValidatedBackup{public BackupManifest manifest=new BackupManifest();public JSONObject layout=new JSONObject(),settings=new JSONObject(),theme=new JSONObject(),icons=new JSONObject(),shortcutIcons=new JSONObject(),portableSources=new JSONObject();public File extractedRoot;public String sourceName;}
public static ValidatedBackup read(File f,File d){Effects.lastArchive=f;ValidatedBackup b=new ValidatedBackup();b.extractedRoot=d;d.mkdirs();return b;}}''',
PACKAGE+'RestoreMergePlanner.java': '''package com.smartisanos.launcher.backup;import android.content.*;public class RestoreMergePlanner{
public static class Plan{}public static Plan plan(Context c,BackupArchiveReader.ValidatedBackup b){return new Plan();}}''',
PACKAGE+'BackupValidator.java': '''package com.smartisanos.launcher.backup;import java.io.*;public class BackupValidator{
public static final long MAX_ARCHIVE_BYTES=1048576;public static class BackupValidationException extends Exception{public String errorCode="fixture";}
public static void validateAndExtract(File f,File d){d.mkdirs();}}''',
PACKAGE+'BackupArchiveWriter.java': '''package com.smartisanos.launcher.backup;import java.io.*;import org.json.*;public class BackupArchiveWriter{
public static File write(File d,BackupManifest m,JSONObject l,JSONObject s,JSONObject t,JSONObject i,JSONObject si,JSONObject p,DesktopBackupController.CancellationToken c)throws IOException{File f=new File(d,"archive.slauncherbackup");try(FileOutputStream o=new FileOutputStream(f)){o.write(1);}return f;}}''',
PACKAGE+'LayoutSnapshotImporter.java': '''package com.smartisanos.launcher.backup;import android.content.*;import org.json.*;import java.io.*;public class LayoutSnapshotImporter{
public static class ImportResult{public int restored,missing,preserved,profileUnresolved,shortcutUnresolved;}
public static ImportResult restore(Context c,JSONObject l,int g,File f,JSONObject s,File r)throws IOException{Effects.events.add("DB");if(Effects.failImporter){Effects.failImporter=false;throw new IOException("injected import");}return new ImportResult();}}''',
PACKAGE+'LayoutSnapshotExporter.java': '''package com.smartisanos.launcher.backup;import android.content.*;public class LayoutSnapshotExporter{
public static void exportStableSnapshot(Context c){Effects.events.add("VERIFY");}}''',
PACKAGE+'PreferenceBackupCodec.java': '''package com.smartisanos.launcher.backup;import android.content.*;import org.json.*;public class PreferenceBackupCodec{
public static JSONObject encode(Context c){return new JSONObject();}public static void restore(Context c,JSONObject j){Effects.events.add("PREF");}}''',
PACKAGE+'ThemeBackupCodec.java': '''package com.smartisanos.launcher.backup;import android.content.*;import org.json.*;public class ThemeBackupCodec{
public static JSONObject encode(Context c){return new JSONObject();}public static boolean isThemePackageAvailable(Context c,String p){return true;}}''',
PACKAGE+'IconBackupCodec.java': '''package com.smartisanos.launcher.backup;import android.content.*;import java.io.*;import org.json.*;public class IconBackupCodec{
public static JSONObject encode(Context c,File f){return new JSONObject();}public static void restore(Context c,JSONObject j,File f){Effects.events.add("ICONS");}}''',
PACKAGE+'ShortcutIconBackupCodec.java': '''package com.smartisanos.launcher.backup;import android.content.*;import java.io.*;import org.json.*;public class ShortcutIconBackupCodec{
public static JSONObject encode(Context c,JSONObject l,File f){return new JSONObject();}}''',
PACKAGE+'RestoreIconSourceReconciler.java': '''package com.smartisanos.launcher.backup;import android.content.*;import java.io.*;import org.json.*;public class RestoreIconSourceReconciler{
public static JSONObject encodePortableSources(Context c,File f){return new JSONObject();}
public static void restorePortableSources(Context c,JSONObject j,File f){Effects.events.add("PORTABLE");}
public static void setPendingReconcile(Context c,String t){Effects.events.add("RECONCILE");}public static void primeIconSourceAfterRestore(Context c){Effects.events.add("PRIME");}}''',
'com/smartisanos/launcher/data/C.java': 'package com.smartisanos.launcher.data;public class C{public static Object getInstance(){return new Object();}}',
'com/smartisanos/launcher/reload/LauncherColdReloadCoordinator.java': '''package com.smartisanos.launcher.reload;import android.content.*;public class LauncherColdReloadCoordinator{
public static int transitions;public static boolean beginBackupRestoreReload(Context c,String t,boolean u,int g){transitions++;return true;}}''',
'com/smartisanos/launcher/theme/MaintainedLauncherSettingsHost.java': '''package com.smartisanos.launcher.theme;import android.content.*;import com.smartisanos.launcher.backup.*;public class MaintainedLauncherSettingsHost{
public static void showRestoreStatusToast(Context c,String s){Effects.events.add("TOAST:"+s);}}''',
PACKAGE+'CheckpointTest.java': '''package com.smartisanos.launcher.backup;
import android.content.*;import android.util.AtomicFile;import java.io.*;import java.nio.file.*;import java.util.*;import java.util.concurrent.*;
import static com.smartisanos.launcher.backup.RestoreOperationJournal.State.*;
public class CheckpointTest{static int checks;static File root;static int fixture;
static void check(boolean b,String label){checks++;if(!b)throw new AssertionError(label+" events="+Effects.events);}
static Context fresh(){AtomicFile.failState="";AtomicFile.failSyncState="";AtomicFile.failStart=false;AtomicFile.silentFinish=false;AtomicFile.failRead=false;Effects.clear();return new Context(new File(root,"case"+(fixture++)));}
static File journal(Context c){return new File(c.getFilesDir(),"backup_restore/restore_journal.json");}
static void write(File f,String s)throws Exception{f.getParentFile().mkdirs();Files.writeString(f.toPath(),s);}
static RestoreOperationJournal.Entry entry(Context c)throws Exception{RestoreOperationJournal.Entry e=new RestoreOperationJournal.Entry();e.operationToken="test-token";e.stagingPath=new File(c.getCacheDir(),"restore_staging/test-token").getPath();e.rollbackPath=DesktopRestoreController.rollbackArchive(c).getPath();write(new File(e.stagingPath,"source.slauncherbackup"),"source");write(new File(e.rollbackPath),"rollback");return e;}
static void error(RestoreOperationJournal j,String code)throws Exception{try{j.read();throw new AssertionError("read should fail");}catch(RestoreOperationJournal.JournalException e){check(e.errorCode.equals(code),"read code "+code);}}
static void writeError(RestoreOperationJournal j,RestoreOperationJournal.Entry e)throws Exception{try{j.write(e,READY,null);throw new AssertionError("write should fail");}catch(RestoreOperationJournal.JournalException x){check(x.errorCode.equals("RESTORE_JOURNAL_WRITE_FAILED"),"write code");}}
static void filesRemain(RestoreOperationJournal.Entry e){check(new File(e.stagingPath,"source.slauncherbackup").isFile(),"source retained");check(new File(e.rollbackPath).isFile(),"rollback retained");}
static void awaitCleanup()throws Exception{for(Thread t:Thread.getAllStackTraces().keySet())if(t.getName().equals("DesktopRestoreCleanup")){t.join(5000);check(!t.isAlive(),"cleanup fixture finished");}}
static class Listener implements DesktopRestoreController.Listener{final CountDownLatch done=new CountDownLatch(1);BackupRestoreResult result;boolean preview;
public void onState(String s,boolean c){}public void onPreview(BackupArchiveReader.ValidatedBackup b,RestoreMergePlanner.Plan p){preview=true;done.countDown();}
public void onComplete(BackupRestoreResult r){result=r;done.countDown();}void await()throws Exception{check(done.await(5,TimeUnit.SECONDS),"worker finished");}}
public static void main(String[] args)throws Exception{root=new File(args[0]);
Context c=fresh();RestoreOperationJournal j=new RestoreOperationJournal(c);check(j.read().state==IDLE,"absent idle");
for(String bad:new String[]{"broken","{}","{\\"state\\":\\"IDLE\\"}","{\\"state\\":\\"NO_STATE\\"}","{\\"state\\":\\"APPLYING_DATABASE\\"}"}){write(journal(c),bad);error(j,"RESTORE_JOURNAL_CORRUPT");byte[] before=Files.readAllBytes(journal(c).toPath());try{j.reset();throw new AssertionError("bad reset");}catch(RestoreOperationJournal.JournalException x){}check(Arrays.equals(before,Files.readAllBytes(journal(c).toPath())),"corrupt untouched");}
c=fresh();j=new RestoreOperationJournal(c);write(new File(journal(c)+".new"),"partial");error(j,"RESTORE_JOURNAL_READ_FAILED");
c=fresh();j=new RestoreOperationJournal(c);RestoreOperationJournal.Entry e=entry(c);j.write(e,READY,null);byte[] original=Files.readAllBytes(journal(c).toPath());AtomicFile.failRead=true;error(j,"RESTORE_JOURNAL_READ_FAILED");AtomicFile.failRead=false;
AtomicFile.failStart=true;try{j.write(e,CREATING_ROLLBACK,null);throw new AssertionError("start failure");}catch(RestoreOperationJournal.JournalException x){check(e.state==READY,"entry not advanced");}AtomicFile.failStart=false;check(Arrays.equals(original,Files.readAllBytes(journal(c).toPath())),"start retained");
AtomicFile.failState="READY";writeError(j,e);check(e.state==READY,"entry stable after write error");AtomicFile.failState="";
AtomicFile.failSyncState="READY";writeError(j,e);check(Arrays.equals(original,Files.readAllBytes(journal(c).toPath())),"sync failure retained checkpoint");AtomicFile.failSyncState="";
AtomicFile.silentFinish=true;try{j.write(e,CREATING_ROLLBACK,null);throw new AssertionError("silent finish");}catch(RestoreOperationJournal.JournalException x){check(e.state==READY,"silent finish not success");}AtomicFile.silentFinish=false;
c=fresh();j=new RestoreOperationJournal(c);e=entry(c);j.write(e,READY,null);Files.move(journal(c).toPath(),new File(journal(c)+".bak").toPath());check(j.read().state==READY,"legacy backup recovered");
String[] targets={"WAITING_OLD_PROCESS_EXIT","APPLYING_DATABASE","DATABASE_COMMITTED","APPLYING_PREFERENCES","APPLYING_ICONS","APPLYING_THEME","VERIFYING","COMMITTED"};
int[] prefix={0,0,1,1,2,5,5,6};String[] all={"DB","PREF","ICONS","PORTABLE","RECONCILE","VERIFY"};
for(int i=0;i<targets.length;i++){c=fresh();j=new RestoreOperationJournal(c);e=entry(c);j.write(e,WAITING_TRANSITION,null);AtomicFile.failState=targets[i];boolean ok=DesktopRestoreController.applyPreparedAfterOldProcessExit(c,e.operationToken,"BACKUP_RESTORE");check(!ok,"phase blocked "+targets[i]);check(Effects.events.equals(Arrays.asList(all).subList(0,prefix[i])),"no next phase "+targets[i]);filesRemain(e);check(c.prefs.getString("pending_restore_toast","").equals("RESTORE_JOURNAL_WRITE_FAILED"),"failure notice");AtomicFile.failState="";check(j.read().state!=IDLE,"checkpoint retained");}
c=fresh();j=new RestoreOperationJournal(c);e=entry(c);j.write(e,WAITING_TRANSITION,null);AtomicFile.failState="DATABASE_COMMITTED";check(!DesktopRestoreController.applyPreparedAfterOldProcessExit(c,e.operationToken,"BACKUP_RESTORE"),"partial stopped");AtomicFile.failState="";Effects.clear();check(DesktopRestoreController.applyPreparedAfterOldProcessExit(c,e.operationToken,"BACKUP_RESTORE"),"retry rollback completes");check(Effects.lastArchive.equals(new File(e.rollbackPath)),"retry uses rollback");check(j.read().state==ROLLED_BACK,"retry terminal");check(c.prefs.getString("pending_restore_toast","").equals("RESTORE_ROLLED_BACK"),"recovery replaces old failure notice");Effects.clear();check(DesktopRestoreController.applyPreparedAfterOldProcessExit(c,e.operationToken,"BACKUP_RESTORE"),"terminal retry accepted");check(Effects.events.isEmpty(),"terminal no reapply");
c=fresh();j=new RestoreOperationJournal(c);e=entry(c);j.write(e,WAITING_TRANSITION,null);Effects.failImporter=true;check(DesktopRestoreController.applyPreparedAfterOldProcessExit(c,e.operationToken,"BACKUP_RESTORE"),"ordinary failure rollback");check(j.read().state==ROLLED_BACK,"ordinary terminal");filesRemain(e);
for(String target:new String[]{"CLEANING","IDLE"}){c=fresh();j=new RestoreOperationJournal(c);e=entry(c);e.undo=true;j.write(e,COMMITTED,null);AtomicFile.failState=target;DesktopRestoreController.onLauncherFirstFrame(c,e.operationToken,"BACKUP_RESTORE_ROLLBACK");awaitCleanup();filesRemain(e);check(!Effects.events.contains("TOAST:UNDO_COMPLETE"),"no premature undo success");AtomicFile.failState="";check(j.read().state!=IDLE,"cleanup checkpoint retained");}
c=fresh();j=new RestoreOperationJournal(c);e=entry(c);j.write(e,COMMITTED,null);DesktopRestoreController.onLauncherFirstFrame(c,e.operationToken,"BACKUP_RESTORE");awaitCleanup();check(j.read().state==IDLE,"successful cleanup idle");check(Effects.events.contains("TOAST:RESTORE_COMPLETE"),"successful toast");check(new File(e.rollbackPath).isFile(),"undo archive preserved");
c=fresh();e=entry(c);write(journal(c),"corrupt");RestoreRecoveryGuard.beforeLauncherDatabaseInit(c);filesRemain(e);check(Effects.events.isEmpty(),"corrupt recovery no data writes");check(c.prefs.getString("pending_restore_toast","").equals("RESTORE_JOURNAL_CORRUPT"),"corrupt recovery notice");
for(RestoreOperationJournal.State phase:new RestoreOperationJournal.State[]{VALIDATING,COMMITTED,CLEANING,ROLLED_BACK}){c=fresh();j=new RestoreOperationJournal(c);e=entry(c);j.write(e,phase,null);AtomicFile.failState="IDLE";RestoreRecoveryGuard.beforeLauncherDatabaseInit(c);filesRemain(e);check(Effects.events.isEmpty(),"guard failed reset no writes");AtomicFile.failState="";check(j.read().state==phase,"guard retained phase");check(c.prefs.getString("pending_restore_toast","").equals("RESTORE_JOURNAL_WRITE_FAILED"),"guard reset failure notice");}
c=fresh();j=new RestoreOperationJournal(c);e=entry(c);j.write(e,APPLYING_PREFERENCES,null);AtomicFile.failState="ROLLING_BACK";RestoreRecoveryGuard.beforeLauncherDatabaseInit(c);filesRemain(e);check(Effects.events.isEmpty(),"guard no rollback without checkpoint");AtomicFile.failState="";RestoreRecoveryGuard.beforeLauncherDatabaseInit(c);check(j.read().state==IDLE,"guard recovers when persistence available");check(Effects.lastArchive.equals(new File(e.rollbackPath)),"guard rollback source");
c=fresh();j=new RestoreOperationJournal(c);e=entry(c);j.write(e,WAITING_TRANSITION,null);Effects.failImporter=true;AtomicFile.failState="FAILED_ROLLBACK_PENDING";check(!DesktopRestoreController.applyPreparedAfterOldProcessExit(c,e.operationToken,"BACKUP_RESTORE"),"rollback checkpoint failure stops");check(Effects.events.equals(Collections.singletonList("DB")),"no unjournaled rollback");filesRemain(e);
for(String target:new String[]{"VALIDATING","READY"}){c=fresh();AtomicFile.failState=target;Listener l=new Listener();DesktopRestoreController.validateSelectedFile(c,new android.net.Uri(),l);l.await();check(!l.preview,"no preview "+target);check(l.result.errorCode.equals("RESTORE_JOURNAL_WRITE_FAILED"),"prepare error");check(!BackupOperationLock.isBusy(),"prepare lock released");}
c=fresh();write(DesktopRestoreController.rollbackArchive(c),"old undo");Listener ready=new Listener();DesktopRestoreController.validateSelectedFile(c,new android.net.Uri(),ready);ready.await();check(ready.preview,"normal preview");AtomicFile.failState="CREATING_ROLLBACK";Listener stopped=new Listener();DesktopRestoreController.beginPreparedRestore(c,stopped);stopped.await();check(Files.readString(DesktopRestoreController.rollbackArchive(c).toPath()).equals("old undo"),"old undo not deleted before checkpoint");check(stopped.result.errorCode.equals("RESTORE_JOURNAL_WRITE_FAILED"),"rollback prepare stops");
c=fresh();write(DesktopRestoreController.rollbackArchive(c),"undo");AtomicFile.failState="ROLLBACK_READY";int transitions=com.smartisanos.launcher.reload.LauncherColdReloadCoordinator.transitions;Listener undo=new Listener();check(DesktopRestoreController.beginUndo(c,undo),"undo accepted asynchronously");undo.await();check(com.smartisanos.launcher.reload.LauncherColdReloadCoordinator.transitions==transitions,"no transition after failed checkpoint");check(DesktopRestoreController.rollbackArchive(c).isFile(),"undo source stays");
System.out.println("PASS production restore checkpoint checks="+checks);}}
''',
}


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('--jdk', type=pathlib.Path, required=True)
    args = parser.parse_args()
    with tempfile.TemporaryDirectory(prefix='restore-checkpoints-') as temporary:
        base = pathlib.Path(temporary)
        files = []
        for name, source in SOURCES.items():
            path = base / name
            path.parent.mkdir(parents=True, exist_ok=True)
            path.write_text(source, encoding='utf-8')
            files.append(str(path))
        for name in ['RestoreOperationJournal', 'DesktopRestoreController', 'RestoreRecoveryGuard',
                     'BackupOperationLock', 'BackupFileUtils', 'BackupRestoreResult']:
            files.append(str(ROOT / 'launcher/tools/java' / PACKAGE / (name + '.java')))
        out = base / 'classes'
        out.mkdir()
        subprocess.run([str(args.jdk / 'bin/javac.exe'), '-encoding', 'UTF-8', '-d', str(out), *files], check=True)
        subprocess.run([str(args.jdk / 'bin/java.exe'), '-cp', str(out),
                        'com.smartisanos.launcher.backup.CheckpointTest', str(base / 'data')], check=True)
    # Production reload/UI are not compiled against these doubles; check both real start gates.
    reload = (ROOT / 'launcher/tools/java/com/smartisanos/launcher/reload/LauncherColdReloadCoordinator.java').read_text(encoding='utf-8')
    assert 'applyPreparedAfterOldProcessExitAsync(transition, token, reason,' in reload
    assert 'waitForOldMainExitAndStartLauncher(transition, token, oldMainPid, reason, gridMode, themeMode);' in reload
    assert 'generation != sLauncherStartGeneration' in reload
    assert '.showRestoreFailure();' in reload
    print('PASS reload asynchronous completion/retry exit gates (static); no device/SQLite transformation claim.')


if __name__ == '__main__':
    main()
