"""Run the production preference codec against isolated in-memory Android preferences."""
import argparse, pathlib, subprocess, tempfile
ROOT=pathlib.Path(__file__).resolve().parents[3]
SOURCES={
'android/content/SharedPreferences.java': '''package android.content;import java.util.*;
public interface SharedPreferences {Map<String,?> getAll();Editor edit();interface Editor {Editor putBoolean(String k,boolean v);Editor putInt(String k,int v);Editor putLong(String k,long v);Editor putFloat(String k,float v);Editor putString(String k,String v);Editor putStringSet(String k,Set<String> v);boolean commit();}}''',
'android/content/Context.java': '''package android.content;import java.util.*;
public class Context {public static final int MODE_PRIVATE=0;public final Map<String,Prefs> files=new HashMap<>();public SharedPreferences getSharedPreferences(String n,int m){return files.computeIfAbsent(n,k->new Prefs());}public Object getContentResolver(){return null;}
public static class Prefs implements SharedPreferences,SharedPreferences.Editor {final Map<String,Object> data=new HashMap<>();public Map<String,?> getAll(){return new HashMap<>(data);}public Editor edit(){return this;}public Editor putBoolean(String k,boolean v){data.put(k,v);return this;}public Editor putInt(String k,int v){data.put(k,v);return this;}public Editor putLong(String k,long v){data.put(k,v);return this;}public Editor putFloat(String k,float v){data.put(k,v);return this;}public Editor putString(String k,String v){data.put(k,v);return this;}public Editor putStringSet(String k,Set<String> v){data.put(k,v);return this;}public boolean commit(){return true;}}}''',
'android/provider/Settings.java': '''package android.provider;public class Settings {public static class Global {public static int getInt(Object r,String k,int d){return d;}}}''',
'android/util/Log.java': '''package android.util;public class Log {public static int i(String t,String s){return 0;}public static int w(String t,String s){return 0;}}''',
'org/json/JSONObject.java': '''package org.json;import java.util.*;public class JSONObject {
final Map<String,Object> m=new LinkedHashMap<>();public JSONObject put(String k,Object v){m.put(k,v);return this;}public boolean has(String k){return m.containsKey(k);}public int length(){return m.size();}public Iterator<String> keys(){return m.keySet().iterator();}public Object remove(String k){return m.remove(k);}public Object opt(String k){return m.get(k);}public Object get(String k){if(!m.containsKey(k))throw new IllegalArgumentException(k);return m.get(k);}public JSONObject getJSONObject(String k){return (JSONObject)get(k);}public JSONObject optJSONObject(String k){Object v=opt(k);return v instanceof JSONObject?(JSONObject)v:null;}public JSONArray getJSONArray(String k){return (JSONArray)get(k);}public JSONArray optJSONArray(String k){Object v=opt(k);return v instanceof JSONArray?(JSONArray)v:null;}public String getString(String k){return (String)get(k);}public boolean getBoolean(String k){return (Boolean)get(k);}public int getInt(String k){return ((Number)get(k)).intValue();}public long getLong(String k){return ((Number)get(k)).longValue();}public double getDouble(String k){return ((Number)get(k)).doubleValue();}}''',
'org/json/JSONArray.java': '''package org.json;import java.util.*;public class JSONArray {final List<Object> a=new ArrayList<>();public JSONArray put(Object v){a.add(v);return this;}public int length(){return a.size();}public String getString(int i){return (String)a.get(i);}public String optString(int i,String d){return i<a.size()&&a.get(i) instanceof String?(String)a.get(i):d;}}''',
'com/smartisanos/launcher/quickdesktop/QuickDesktopController.java': '''package com.smartisanos.launcher.quickdesktop;import android.content.Context;public class QuickDesktopController {public static final String CARD_MUSIC_PAYMENT="card_music_payment",CARD_SHORTCUTS="card_shortcuts",CARD_CALENDAR="card_calendar",CARD_LIFE="card_life";public static boolean isEnabled(Context c){return false;}public static boolean isCardEnabled(Context c,String k){return true;}public static String getCustomHeaderText(Context c){return "0";}public static String getSelectedMusicPackage(Context c){return "";}public static String getPaymentProvider(Context c){return "alipay";}}''',
'com/smartisanos/launcher/theme/LauncherSettingBridge.java': '''package com.smartisanos.launcher.theme;import android.content.Context;public class LauncherSettingBridge {public static int readIconSizePercent(Context c){return 100;}}''',
'BackupPreferenceTest.java': '''import android.content.*;import org.json.*;import com.smartisanos.launcher.backup.PreferenceBackupCodec;
public class BackupPreferenceTest {static int checks;static final String FILE="com.smartisanos.launcher_prefs",KEY="launcher_icon_illumination_enabled";
static void check(boolean b){checks++;if(!b)throw new AssertionError("check "+checks);}static Object value(Context c,String file,String key){return c.getSharedPreferences(file,0).getAll().get(key);}
public static void main(String[] args)throws Exception {
Context source=new Context(),target=new Context();JSONObject defaultArchive=PreferenceBackupCodec.encode(source);
check(defaultArchive.getJSONObject("files").getJSONObject(FILE).getJSONObject(KEY).getBoolean("value")==false);
target.getSharedPreferences(FILE,0).edit().putBoolean(KEY,true).commit();PreferenceBackupCodec.restore(target,defaultArchive);check(Boolean.FALSE.equals(value(target,FILE,KEY)));
for(boolean enabled:new boolean[]{true,false}){source.getSharedPreferences(FILE,0).edit().putBoolean(KEY,enabled).commit();PreferenceBackupCodec.restore(target,PreferenceBackupCodec.encode(source));check(Boolean.valueOf(enabled).equals(value(target,FILE,KEY)));}
check(PreferenceBackupCodec.excludedSwitchKeys(defaultArchive).size()==6);
for(String k:PreferenceBackupCodec.excludedSwitchKeys(null)){source.getSharedPreferences("launcher_settings",0).edit().putBoolean(k,true).commit();}
JSONObject archive=PreferenceBackupCodec.encode(source);JSONObject files=archive.getJSONObject("files");
for(String k:PreferenceBackupCodec.excludedSwitchKeys(archive)){check(!files.getJSONObject("launcher_settings").has(k));files.getJSONObject("launcher_settings").put(k,new JSONObject().put("type","boolean").put("value",true));}
PreferenceBackupCodec.restore(target,archive);for(String k:PreferenceBackupCodec.excludedSwitchKeys(archive))check(value(target,"launcher_settings",k)==null);
JSONObject old=new JSONObject().put("files",new JSONObject().put(FILE,new JSONObject()));target.getSharedPreferences(FILE,0).edit().putBoolean(KEY,true).commit();PreferenceBackupCodec.restore(target,old);check(Boolean.TRUE.equals(value(target,FILE,KEY)));check(PreferenceBackupCodec.excludedSwitchKeys(old).size()==6);
JSONObject subset=new JSONObject().put("excludedSwitches",new JSONArray().put("search_contacts_enabled").put("search_contacts_enabled").put("unexpected"));check(PreferenceBackupCodec.excludedSwitchKeys(subset).size()==1);check(PreferenceBackupCodec.excludedSwitchKeys(subset).get(0).equals("search_contacts_enabled"));
System.out.println("PASS production backup preference checks="+checks);}}
'''}
def main():
 p=argparse.ArgumentParser();p.add_argument('--jdk',type=pathlib.Path,required=True);args=p.parse_args()
 with tempfile.TemporaryDirectory(prefix='backup-preferences-') as temporary:
  base=pathlib.Path(temporary);files=[]
  for name,source in SOURCES.items():
   file=base/name;file.parent.mkdir(parents=True,exist_ok=True);file.write_text(source,encoding='utf-8');files.append(str(file))
  files.append(str(ROOT/'launcher/tools/java/com/smartisanos/launcher/backup/PreferenceBackupCodec.java'))
  subprocess.run([str(args.jdk/'bin/javac.exe'),'-encoding','UTF-8','-d',str(base),*files],check=True)
  subprocess.run([str(args.jdk/'bin/java.exe'),'-cp',str(base),'BackupPreferenceTest'],check=True)
 print('Old archive omissions preserve the current illumination preference; system grants stay excluded.')
if __name__=='__main__':main()
