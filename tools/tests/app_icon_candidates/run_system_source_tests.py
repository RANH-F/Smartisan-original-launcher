"""Run actual AUTO source selection with controlled resource/cache and override boundaries."""
from pathlib import Path
import argparse, subprocess
from run_tests import method
ROOT = Path(__file__).resolve().parents[3]

def main():
    ap=argparse.ArgumentParser(__doc__)
    ap.add_argument('--jdk',type=Path,required=True)
    ap.add_argument('--source',type=Path,default=ROOT/'launcher/tools/java/com/smartisanos/launcher/theme/MaintainedLauncherSettingsHost.java')
    ap.add_argument('--output',type=Path,required=True)
    ap.add_argument('--manager-source',type=Path,default=ROOT/'launcher/tools/java/com/smartisanos/home/settings/icons/IconManager.java')
    args=ap.parse_args(); host=args.source.read_text(encoding='utf8')
    methods='\n'.join(method(host,sig) for sig in [
        '    static final class ManagedIconSource',
        '    private static ManagedIconSource resolveManagedIconSource(Context context, ResolveInfo info, Resources resources,\n            IconSourceManager.Selection temporaryGlobal, RedirectIconInfo redirect)',
        '    private static ManagedIconSource resolveImprovedIconSource('])
    methods=methods.replace('android.graphics.drawable.BitmapDrawable','BitmapDrawable')
    manager=args.manager_source.read_text(encoding='utf8')
    aliases='\n'.join(method(manager,sig) for sig in [
        '    public static final class SystemAliasResolver',
        '    public static String resolveSmartisanSystemIconName(String packageName, String componentName, CharSequence applicationLabel)',
        '    public static String resolveSmartisanSystemIconName(String packageName, String componentName,\n',
        '    private static boolean isSystemIconCategory(',
        '    private static boolean isDialerActivity(',
        '    private static boolean isContactsActivity(',
        '    private static boolean isKnownVendorSystemPackage(',
        '    public static boolean isDialerLabel(',
        '    public static boolean isContactsLabel('])

    code=r'''import java.util.*;
public class SystemSourceProbe {
static class Drawable {String id;Drawable(String id){this.id=id;}}
static class Bitmap {}
static class BitmapFactory {static Bitmap decodeByteArray(byte[] b,int o,int n){return new Bitmap();}}
static class BitmapDrawable extends Drawable {BitmapDrawable(Resources r,Bitmap b){super("custom");}}
static class Context {Resources getResources(){return new Resources();}}
static class Resources {}
static class ActivityInfo {String packageName,name;boolean system;ActivityInfo(String p,String n,boolean s){packageName=p;name=n;system=s;}}
static class ResolveInfo {ActivityInfo activityInfo;String alias;ResolveInfo(String p,String n,String a,boolean s){activityInfo=new ActivityInfo(p,n,s);alias=a;}}
static class TextUtils {static boolean isEmpty(String s){return s==null||s.isEmpty();}}
static class RedirectIconInfo {String mode="auto",source="chosen";byte[] iconData;}
static class RedirectIconDB {static final String MODE_ORIGINAL="original",MODE_CUSTOM="custom",MODE_RESOURCE="resource",MODE_PACK="pack";static String modeOf(RedirectIconInfo r){return r==null?"auto":r.mode;}static String resourceNameOf(RedirectIconInfo r){return r.source;}static String packNameOf(RedirectIconInfo r){return "pack";}static String packDrawableNameOf(RedirectIconInfo r){return r.source;}}
static class IconSourceManager {enum Type{DEFAULT,IMPROVED,PACK}static class Selection {Type type=Type.IMPROVED;String packageName="pack";}static Selection selection=new Selection();static Selection get(Context c){return selection;}static boolean isInstalledIconPack(Context c,String p){return true;}}
static class IconPackManager {static Drawable getPackedIcon(Context c,String p,String a,String n){return new Drawable("pack:auto");}static Drawable getPackedDrawable(Context c,String p,String n){return new Drawable("pack:"+n);}}
static class IconPreviewRepository {static class ImprovedCandidate {boolean exists;String sourceId;ImprovedCandidate(String s,boolean e){sourceId=s;exists=e;}}static IconPreviewRepository repo=new IconPreviewRepository();static IconPreviewRepository get(Context c){return repo;}ImprovedCandidate resolveImprovedCandidate(String p,String n){return new ImprovedCandidate(p,available.containsKey(p));}}
static Map<String,Drawable> available=new HashMap<>();static int reads,checks;
static boolean isSystemApp(ActivityInfo ai){return ai.system;}
static String smartisanSystemIconAlias(Context c,ResolveInfo r){return r.alias;}
static String smartisanIconNameFor(Context c,ResolveInfo r){return r.alias;}
static Drawable libraryIconDrawableNonBlocking(Context c,Resources r,String id){reads++;return available.get(id);}
static Drawable libraryIconDrawable(Context c,Resources r,String id){return new Drawable("resource:"+id);}
static Drawable maintainedResourceIcon(Context c,Resources r,String id){return available.get(id);}
static Drawable packedIconFromPackage(Context c,String p,ResolveInfo r){return new Drawable("global-pack");}
PRODUCTION
static class ActualAlias { ALIAS_PRODUCTION }
static void check(boolean b,String m){checks++;if(!b)throw new AssertionError(m);}
static ManagedIconSource select(ResolveInfo r,RedirectIconInfo redirect){return resolveManagedIconSource(new Context(),r,new Resources(),null,redirect);}
public static void main(String[] args){
for(String[] row:new String[][]{
 {"com.android.contacts","com.android.contacts.activities.DialtactsActivity","","app_icon_phone"},
 {"com.android.contacts","com.android.contacts.activities.PeopleActivity","","source_contactcommon_icon"},
 {"com.android.contacts","com.android.contacts.activities.ContactsActivity","电话","app_icon_phone"},
 {"com.android.contacts","com.android.contacts.activities.DialtactsActivity","联系人","source_contactcommon_icon"},
 {"com.google.android.contacts","Main","Phone","app_icon_phone"},
 {"com.google.android.dialer","Main","Contacts","source_contactcommon_icon"},
 {"com.android.contacts","com.android.contacts.DialtactsActivityAlias","","app_icon_phone"},
 {"com.android.contacts","com.android.contacts.PeopleActivityAlias","","source_contactcommon_icon"},
 {"com.samsung.android.dialer","DialtactsActivity","电话","app_icon_phone"},
 {"com.vivo.contacts","DialtactsActivity","电话","app_icon_phone"},
 {"com.miui.camera","Main","电话","com.android.camera2"},
 {"com.example.normal","Main","Normal",null}}){
 check(Objects.equals(ActualAlias.resolveSmartisanSystemIconName(row[0],row[1],row[2],true),row[3]),"shared package alias ignored Activity/label: "+Arrays.toString(row));
}
// Distinct OEM components share the canonical AUTO alias, irrespective of package cache readiness.
for(String[] pair:new String[][]{{"com.android.contacts","DialtactsActivity","app_icon_phone"},{"com.samsung.android.dialer","DialtactsActivity","app_icon_phone"},{"com.android.contacts","PeopleActivity","source_contactcommon_icon"},{"com.android.BBKClock","Timer","clock"}}){
 ResolveInfo r=new ResolveInfo(pair[0],pair[1],pair[2],true);available.clear();available.put(r.alias,new Drawable("canonical:"+r.alias));
 ManagedIconSource cold=select(r,null);check(cold.choiceKey.equals("IMPROVED:"+r.alias),"cold system alias");
 available.put(pair[0],new Drawable("package:"+pair[0]));ManagedIconSource warm=select(r,null);
 check(warm.choiceKey.equals(cold.choiceKey)&&warm.drawable==cold.drawable,"warm package candidate displaced canonical system alias");
 check(warm.drawable.id.equals("canonical:"+pair[2]),"wrong canonical artwork");
 // Manual overrides must stay terminal, not canonicalized.
 for(String mode:new String[]{"original","resource","pack","custom"}){RedirectIconInfo o=new RedirectIconInfo();o.mode=mode;o.iconData=new byte[]{1};ManagedIconSource m=select(r,o);
 check(mode.equals("original")?m.drawable==null:mode.equals("resource")?m.drawable.id.equals("resource:chosen"):mode.equals("pack")?m.drawable.id.equals("pack:chosen"):m.drawable.id.equals("custom"),"manual override changed: "+mode);}
 available.remove(r.alias);check(select(r,null).drawable.id.startsWith("package:"),"unavailable alias prevented package fallback");
}
ResolveInfo third=new ResolveInfo("third.party.phone","Main","app_icon_phone",false);available.clear();available.put(third.alias,new Drawable("alias"));available.put(third.activityInfo.packageName,new Drawable("third"));check(select(third,null).drawable.id.equals("third"),"third-party package artwork overridden by label");
IconSourceManager.selection.type=IconSourceManager.Type.DEFAULT;check(select(third,null).drawable==null,"global original changed");IconSourceManager.selection.type=IconSourceManager.Type.PACK;check(select(third,null).drawable.id.equals("global-pack"),"global pack changed");
IconSourceManager.selection.type=IconSourceManager.Type.IMPROVED;check(resolveImprovedIconSource(new Context(),null,new Resources()).drawable==null,"null info");ResolveInfo empty=new ResolveInfo("p","c",null,true);empty.activityInfo=null;check(resolveImprovedIconSource(new Context(),empty,new Resources()).drawable==null,"missing activity");
System.out.println("PASS SYSTEM_SOURCE checks="+checks+" (JVM method fixture; not OEM runtime)");
}}
'''.replace('ALIAS_PRODUCTION',aliases).replace('PRODUCTION',methods)
    args.output.mkdir(parents=True,exist_ok=True);path=args.output/'SystemSourceProbe.java';path.write_text(code,encoding='utf8')
    subprocess.run([str(args.jdk/'bin/javac.exe'),'-encoding','UTF-8','-d',str(args.output),str(path)],check=True)
    subprocess.run([str(args.jdk/'bin/java.exe'),'-cp',str(args.output),'SystemSourceProbe'],check=True)
if __name__=='__main__':main()
