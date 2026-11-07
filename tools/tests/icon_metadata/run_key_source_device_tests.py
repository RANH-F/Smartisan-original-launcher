"""Compare extracted texture-key/source methods with real Android PNGs and counted IO."""
import argparse
from pathlib import Path
import subprocess

ROOT = Path(__file__).resolve().parents[3]


def block(source, marker):
    start = source.index(marker)
    end = source.index('{', start) + 1
    depth = 1
    while depth:
        depth += (source[end] == '{') - (source[end] == '}')
        end += 1
    return source[start:end]


def main():
    ap = argparse.ArgumentParser(__doc__)
    ap.add_argument('--baseline', type=Path, required=True)
    ap.add_argument('--output', type=Path, required=True)
    ap.add_argument('--serial', required=True)
    ap.add_argument('--baseline-modern', action='store_true')
    ap.add_argument('--baseline-apk-metadata', action='store_true')
    ap.add_argument('--expect-source-snapshot', action='store_true')
    ap.add_argument('--validity-matrix', action='store_true', help='Exercise key invalidation and disk-admission negative controls')
    ap.add_argument('--composition-snapshot', action='store_true')
    ap.add_argument('--expect-composition-snapshot', action='store_true')
    ap.add_argument('--candidate', type=Path, default=ROOT/'launcher/tools/java/com/smartisanos/launcher/theme')
    ap.add_argument('--key-geometry', action='store_true', help='Use production spec factories and count per-key metrics resolutions')
    args = ap.parse_args()
    if args.key_geometry and not args.validity_matrix:
        ap.error('--key-geometry requires --validity-matrix')
    if args.validity_matrix and args.composition_snapshot:
        ap.error('run validity and composition matrices separately')
    owners = []
    for name, directory in [('Before', args.baseline), ('After', args.candidate)]:
        host = (directory/'MaintainedLauncherSettingsHost.java').read_text(encoding='utf8')
        raster = (directory/'IconRasterDiagnostics.java').read_text(encoding='utf8')
        markers = ['public static String desktopIconSourceType(Object itemInfo)',
                   'public static String desktopIconSourceIdentity(Object itemInfo)',
                   'static String desktopIconSourceIdentity(Object itemInfo, String effectiveType)',
                   'private static boolean hasEffectiveManagedDesktopSource(',
                   'public static Drawable loadIconForDesktopItem(Context context, String packageName,\n                                                  String className, String title, int userId)',
                   'static final class ManagedIconSource {',
                   'private static ManagedIconSource resolveManagedIconSource(Context context, ResolveInfo info, Resources resources,\n                                                              IconSourceManager.Selection temporaryGlobal)']
        methods = [block(host, marker) for marker in markers]
        if name == 'After' or args.baseline_modern:
            methods += [block(host, marker) for marker in [
                'private static String desktopIconSourceIdentity(Context context, String effectiveType,',
                'static ManagedIconSource desktopSourceForTextureKey(Object itemInfo)',
                'private static ManagedIconSource resolveManagedIconSource(Context context, ResolveInfo info, Resources resources,\n            IconSourceManager.Selection temporaryGlobal, RedirectIconInfo redirect)']]
        if 'private static String defaultDesktopSourceFingerprint(' in host:
            methods += [block(host, 'private static String defaultDesktopSourceFingerprint(')]
        methods += [block(raster, 'private static String resolvedSourceHash(Object itemInfo)')]
        if name == 'After' or args.baseline_modern:
            methods += [block(raster, 'private static String resolvedSourceHash(Object itemInfo, Drawable drawable, String sourceIdentity)')]
        methods += [block(raster, 'private static String buildTextureCacheKey(Object itemInfo, String baseKey,')]
        if 'private static String buildResolvedTextureCacheKey(' in raster:
            methods += [block(raster, 'private static String buildResolvedTextureCacheKey(')]
        if args.composition_snapshot:
            methods += [block(raster, marker) for marker in [
                'private static final class StaticSource {',
                'private static StaticSource resolveStaticSource(Object itemInfo, Bitmap legacyBitmap)',
                'private static StaticSource resolveStaticSource(Object itemInfo, Bitmap legacyBitmap,']]
        if 'private static ManagedIconSource desktopSourceForItem(' in host:
            methods += [block(host, marker) for marker in [
                'private static ManagedIconSource desktopSourceForItem(',
                'static ManagedIconSource desktopSourceForComposition(']]
        if args.key_geometry:
            methods += [block(raster, marker) for marker in [
                'public static final class NormalIconRasterSpec {',
                'private static NormalIconRasterSpec resolveNormalIconRasterSpec(int pageMode)',
                'private static NormalIconRasterSpec resolveNormalIconRasterSpec(IconVisualMetrics metrics)']]
        body = '\n'.join(methods).replace('MaintainedLauncherSettingsHost.', '')
        helpers = OWNER_HELPERS
        if args.composition_snapshot:
            helpers += COMPOSITION_HELPERS
        if 'private static ManagedIconSource loadIconSource(' in host:
            body += '\n'+'\n'.join(block(host, marker) for marker in [
                'private static ManagedIconSource loadIconSource(',
                'private static ManagedIconSource loadIconForComponentSource(',
                'public static Drawable loadIcon(ResolveInfo info, PackageManager pm)',
                'public static Drawable loadIconForComponent(Context context, String packageName, String className)',
                'public static Drawable iconOverrideDrawable(ResolveInfo info, PackageManager pm)',
                'private static Drawable selectedIconDrawable(Context context, ResolveInfo info, CharSequence label, Resources resources)'])
            helpers = '\n'.join(line for line in helpers.splitlines() if 'static Drawable loadIconForComponent(' not in line)
            helpers = '\n'.join(line for line in helpers.splitlines() if 'static Drawable selectedIconDrawable(' not in line)
            helpers += '''
 static boolean isOriginalIconForced(ResolveInfo info){return mode.equals("original");}
 static boolean shouldShowIconEntry(ResolveInfo info){if(becomeAvailableOnFallback)available=true;return true;}
 static Resources sSettingsResources=Resources.getSystem();
 static void scheduleSettingsResourcesWarm(Context context){}
'''
        owners.append('static class '+name+'{'+body+helpers+'}')
    redirect = (ROOT/'launcher/tools/java/com/smartisanos/launcher/data/redirectIcon/RedirectIconDB.java').read_text(encoding='utf8')
    read = block(redirect, 'private static byte[] readCustomBytes(Context context, String key)')
    read = read.replace('Bitmap bitmap = BitmapFactory.decodeFile', 'fileDecodes++; Bitmap bitmap = BitmapFactory.decodeFile')
    read = read.replace('bitmap.compress(', 'pngEncodes++; bitmap.compress(')
    java = PROBE.replace('OWNERS', '\n'.join(owners)).replace('READ_CUSTOM', read).replace('MODERN_BASELINE', str(args.baseline_modern).lower()).replace('BASELINE_APK_METADATA',str(args.baseline_apk_metadata).lower()).replace('EXPECT_SOURCE_SNAPSHOT',str(args.expect_source_snapshot).lower())
    if args.composition_snapshot:
        java = java.replace(' static void runChecks()throws Exception {', COMPOSITION_CHECKS.replace('EXPECT_COMPOSITION', str(args.expect_composition_snapshot).lower())+'\n static void runChecks()throws Exception {')
        java = java.replace('  System.out.println("PASS KEY_SOURCE_ANDROID', '  compositionChecks(item);\n  System.out.println("PASS KEY_SOURCE_ANDROID')
        java = java.replace('reads++;RedirectIconInfo r=', 'reads++;if(!redirectPresent)return null;RedirectIconInfo r=')
    out = args.output
    (out/'classes').mkdir(parents=True, exist_ok=True)
    (out/'dex').mkdir(exist_ok=True)
    source = out/'KeySourceProbe.java'
    if args.validity_matrix:
        java = java.replace('return false;}\n static int baseIconSize', 'return circle;}\n static int baseIconSize')
        java = java.replace('return false;}\n static boolean desktopDefaultCircleEnabled', 'return resized;}\n static boolean desktopDefaultCircleEnabled', 1)
        java = java.replace('return v;}\n static final String RASTER', 'return theme;}\n static final String RASTER')
        java = java.replace('logicalArtworkWidth=100,logicalTextureWidth=120,artworkWidth=100,textureWidth=120', 'logicalArtworkWidth=logicalArt,logicalTextureWidth=logicalTex,artworkWidth=physicalArt,textureWidth=physicalTex')
        java = java.replace('surfaceWidth=1080,logicalSurfaceWidth=1080', 'surfaceWidth=surface,logicalSurfaceWidth=logicalSurface')
        java = java.replace('return "shadow";', 'return shadowToken;')
        java = java.replace('static boolean enabled(){return false;}', 'static boolean enabled(){return projection;}')
        java = java.replace('new ColorDrawable(0xff123456)', 'new ColorDrawable(vectorColor)')
        java = java.replace(' static void runChecks()throws Exception {', VALIDITY_METHODS + '\n static void runChecks()throws Exception {')
        java = java.replace('  System.out.println("PASS KEY_SOURCE_ANDROID', '  validityChecks(item);\n  System.out.println("PASS KEY_SOURCE_ANDROID')
    if args.key_geometry:
        java = java.replace('static class IconVisualMetrics {static int REVISION=5;int surfaceWidth=surface,logicalSurfaceWidth=logicalSurface;static IconVisualMetrics resolve(int m){return new IconVisualMetrics();}}',
            'static class IconVisualMetrics {static int REVISION=5;int surfaceWidth=surface,logicalSurfaceWidth=logicalSurface;'
            'int logicalArtworkBox=logicalArt,logicalTextureBox=logicalTex,physicalArtworkPx=physicalArt,physicalTexturePx=physicalTex;'
            'float physicalScale=physicalArt/(float)logicalArt;String id="fixture";'
            'static IconVisualMetrics resolve(int m){geometryResolves++;return geometryUnavailable?null:new IconVisualMetrics();}}')
        java = java.replace(' static void runChecks()throws Exception {', KEY_GEOMETRY_METHODS + '\n static void runChecks()throws Exception {')
        java = java.replace('  validityChecks(item);', '  validityChecks(item);keyGeometryChecks(item);')
    source.write_text(java, encoding='utf8')
    jdk = Path('E:/Program Files/Android/Android Studio/jbr/bin')
    sdk = Path('D:/sdk')
    def run(command, name):
        r = subprocess.run(list(map(str, command)), capture_output=True, text=True, encoding='utf8', errors='replace', timeout=180)
        (out/name).write_text(r.stdout+r.stderr, encoding='utf8')
        if r.returncode:
            raise RuntimeError(r.stdout+r.stderr)
        return r.stdout
    run([jdk/'javac.exe','-encoding','UTF-8','-source','8','-target','8','-cp',sdk/'platforms/android-36/android.jar','-d',out/'classes',source], 'javac.log')
    run([sdk/'build-tools/37.0.0/d8.bat','--lib',sdk/'platforms/android-36/android.jar','--output',out/'dex',*sorted((out/'classes').glob('*.class'))], 'd8.log')
    adb = [sdk/'platform-tools/adb.exe','-s',args.serial]
    run([*adb,'push',out/'dex/classes.dex','/data/local/tmp/key-source-probe.dex'], 'push.log')
    try:
        first = run([*adb,'shell','CLASSPATH=/data/local/tmp/key-source-probe.dex','app_process','/system/bin','KeySourceProbe'], 'result.log')
        assert 'PASS KEY_SOURCE_ANDROID' in first, first
        print(first)
        if args.validity_matrix:
            second = run([*adb,'shell','CLASSPATH=/data/local/tmp/key-source-probe.dex','app_process','/system/bin','KeySourceProbe'], 'fresh-process.log')
            assert 'PASS VALIDITY_MATRIX' in second, second
            keys = [[line for line in result.splitlines() if line.startswith('FRESH_PROCESS_KEY=')]
                    for result in (first, second)]
            assert len(keys[0]) == len(keys[1]) == 1 and keys[0] == keys[1], keys
            print(second)
            print('PASS identical metadata key across two fresh ART processes')
    finally:
        run([*adb,'shell','rm','-f','/data/local/tmp/key-source-probe.dex','/data/local/tmp/key-source-probe.png'], 'cleanup.log')


OWNER_HELPERS = r'''
 static Drawable loadCurrentDesktopDrawable(Object i){return loadIconForDesktopItem(currentApplicationContext(),"test.app","test.Main","test",user);}
 static Drawable loadApkIcon(ResolveInfo r,PackageManager pm){return r.loadIcon(pm);}
 static Drawable loadApkApplicationIcon(PackageManager pm,String p){return pm.getApplicationIcon(p);}
 static Resources settingsResources(Context c){return Resources.getSystem();}
 static Drawable selectedIconDrawable(Context c,ResolveInfo r,Object label,Resources res){return resolveManagedIconSource(c,r,res,null).drawable;}
 static Drawable resolveManagedIcon(Context c,ResolveInfo r,Resources res,Object t){return resolveManagedIconSource(c,r,res,null).drawable;}
 static ManagedIconSource resolveImprovedIconSource(Context c,ResolveInfo r,Resources res){return new ManagedIconSource(managedDrawable(),"IMPROVED:test");}
 static Drawable loadIconForComponent(Context c,String p,String n){apkLoads++;if(becomeAvailableOnFallback)available=true;Drawable d=resolveManagedIconSource(c,new ResolveInfo(),Resources.getSystem(),null).drawable;return d!=null?d:defaultDrawable();}
 static RedirectIconInfo desktopRedirectIconInfo(Context c,String p,String n){return RedirectIconDB.getRedirectIconInfo(c,p,n);}
 static String key(Object i){return buildTextureCacheKey(i,"base",9);}
'''

COMPOSITION_HELPERS = r'''
 static boolean shouldUseHighResolutionDesktopRaster(Object item){return !active&&!quick;}
 static Drawable loadDefaultIconForDesktopItem(android.content.Context context,String pkg,String component,int user){return defaultDrawable();}
 static String composition(Object item){
  StaticSource source=resolveStaticSource(item,null);
  return source.type+":"+source.identity+":"+source.legacyDefaultBitmap+":"+drawSummary(source.drawable);
 }
'''

COMPOSITION_CHECKS = r'''
 static boolean redirectPresent=true;
 static class StartupPageSceneDiagnostics {static long detailBegin(){return 0;}static void detailEnd(Object item,String stage,long start){}}
 static String drawSummary(Drawable drawable){
  if(drawable==null)return "none";
  Bitmap image=Bitmap.createBitmap(12,12,Bitmap.Config.ARGB_8888);Rect previous=new Rect(drawable.getBounds());
  try{drawable.setBounds(0,0,12,12);drawable.draw(new Canvas(image));int[] pixels=new int[144];image.getPixels(pixels,0,12,0,0,12,12);return Arrays.toString(pixels);}
  finally{drawable.setBounds(previous);image.recycle();}
 }
 static void compositionChecks(Object item)throws Exception{
  writeImage(0x80123456);contextPresent=true;active=quick=settings=becomeAvailableOnFallback=false;
  int matrix=0;
  for(String m:new String[]{"auto","original","custom","resource","pack"})for(IconSourceManager.Type g:IconSourceManager.Type.values())
   for(boolean avail:new boolean[]{false,true})for(boolean pack:new boolean[]{false,true})for(int u:new int[]{0,10})
    for(boolean match:new boolean[]{false,true})for(boolean vec:new boolean[]{false,true}){
     mode=m;IconSourceManager.global=g;available=avail;installed=pack;user=u;componentMatches=match;vector=vec;
     check(Before.composition(item).equals(After.composition(item)),"actual source/type/identity pixels equivalence "+m+" "+g+" "+avail+" "+pack+" "+u+" "+match+" "+vec);matrix++;
     check(!raw.isRecycled(),"composition must not recycle shared bitmap");
    }
  mode="custom";available=true;user=0;componentMatches=true;installed=true;vector=false;
  reset();Before.key(item);Before.composition(item);int[] before=counters();
  reset();After.key(item);After.composition(item);int[] after=counters();
  if(EXPECT_COMPOSITION)check(before[1]>after[1]&&after[1]==2,"CUSTOM key plus composition performs two file decodes total");
  else check(Arrays.equals(before,after),"baseline control source counts");
  System.out.println("COMPOSE_CUSTOM before="+Arrays.toString(before)+" after="+Arrays.toString(after));
  mode="auto";IconSourceManager.global=IconSourceManager.Type.IMPROVED;
  reset();Before.key(item);Before.composition(item);before=counters();
  reset();After.key(item);After.composition(item);after=counters();
  if(EXPECT_COMPOSITION)check(before[3]==3&&after[3]==2,"IMPROVED key plus composition source requests three to two");
  else check(Arrays.equals(before,after),"baseline improved control");
  System.out.println("COMPOSE_IMPROVED before="+Arrays.toString(before)+" after="+Arrays.toString(after));
  available=false;reset();String old=Before.key(item)+Before.composition(item);before=counters();
  reset();String now=After.key(item)+After.composition(item);after=counters();
  check(old.equals(now)&&after[1]==before[1]&&after[3]==before[3],"unavailable source preserves later rechecks without extra decoder work");
  System.out.println("COMPOSE_MISSING before="+Arrays.toString(before)+" after="+Arrays.toString(after));
  available=true;redirectPresent=false;reset();old=Before.composition(item);before=counters();reset();now=After.composition(item);after=counters();
  check(old.equals(now)&&before[3]==after[3],"absent exact redirect retains desktop component fallback and same source requests");redirectPresent=true;
  contextPresent=false;check(Before.composition(item).equals(After.composition(item)),"composition missing context");contextPresent=true;
  available=false;becomeAvailableOnFallback=true;old=Before.composition(item);available=false;now=After.composition(item);
  check(old.equals(now),"source arrival during original fallback still rechecked");becomeAvailableOnFallback=false;
  System.out.println("PASS COMPOSITION_SOURCE cases="+matrix+" counters=redirectReads,fileDecodes,pngEncodes,managedLoads,pmCalls");
 }
'''

VALIDITY_METHODS = r'''
 static int logicalArt=100,logicalTex=120,physicalArt=100,physicalTex=120,surface=1080,logicalSurface=1080,theme;
 static boolean circle,resized,projection;
 static String shadowToken="shadow";
 static int vectorColor=0xff123456;
 static void different(Object item,String original,String reason){check(!original.equals(After.key(item)),reason);}
 static void validityChecks(Object item)throws Exception {
  mode="original";IconSourceManager.global=IconSourceManager.Type.DEFAULT;available=true;user=0;componentMatches=true;
  String key=After.key(item);check(key.equals(After.key(item)),"identical inputs reuse key");
  circle=true;different(item,key,"circle preference invalidates DEFAULT");circle=false;
  DefaultIconCircleRenderer.VERSION="older-shape";different(item,key,"renderer version invalidates previous final raster");DefaultIconCircleRenderer.VERSION="shape";
  resized=true;different(item,key,"classification invalidates");resized=false;
  theme=1;different(item,key,"transparent theme invalidates");theme=0;
  logicalArt++;different(item,key,"logical artwork invalidates");logicalArt--;
  logicalTex++;different(item,key,"logical texture invalidates");logicalTex--;
  physicalArt++;different(item,key,"physical artwork invalidates");physicalArt--;
  physicalTex++;different(item,key,"physical texture invalidates");physicalTex--;
  surface++;different(item,key,"physical surface invalidates");surface--;
  logicalSurface++;different(item,key,"logical surface invalidates");logicalSurface--;
  IconVisualMetrics.REVISION++;different(item,key,"geometry revision invalidates");IconVisualMetrics.REVISION--;
  shadowToken="changed";different(item,key,"shadow settings invalidate");shadowToken="shadow";
  projection=true;different(item,key,"projection invalidates");projection=false;
  check(!key.equals(After.buildTextureCacheKey(item,"base",12)),"grid mode invalidates");
  user=10;different(item,key,"profile invalidates");user=0;
  check(key.equals(After.key(item)),"restored inputs recover identical key");
  System.out.println("FRESH_PROCESS_KEY="+key);
  // Demonstrate why a process texture lookup key is not a disk integrity digest.
  mode="resource";currentSource="a";vector=false;writeImage(0xff556677);
  String first=After.key(item);int pixel0=raw.getPixel(0,0),pixel1=raw.getPixel(1,0);
  raw.setPixel(0,0,pixel0+1);raw.setPixel(1,0,pixel1-31);
  check(raw.getPixel(0,0)!=pixel0&&raw.getPixel(1,0)!=pixel1,"negative control changes actual pixels");
  check(first.equals(After.key(item)),"32-bit polynomial collision demonstrates disk digest gap");
  vector=true;vectorColor=0xff123456;String vectorKey=After.key(item);
  vectorColor=0xff654321;
  check(vectorKey.equals(After.key(item)),"drawable class-size-identity fallback is not a pixel digest");
  vector=false;vectorColor=0xff123456;custom.delete();
  System.out.println("PASS VALIDITY_MATRIX diskAdmission=false reasons=polynomial-collision,nonbitmap-content-not-digested");
 }
'''

PROBE = r'''
import android.graphics.*;import android.graphics.drawable.*;import android.content.res.Resources;import android.util.Log;
import java.io.*;import java.util.Arrays;import java.util.Map;
public class KeySourceProbe {
 static int checks,cases,reads,fileDecodes,pngEncodes,managedLoads,pmCalls,user,apkLoads,labelReads;
 static final boolean modernBaseline=MODERN_BASELINE;
 static long stamp=100;static int iconResource=3;static String apkPath="/test/base.apk",rawToken="legacy";
 static boolean missingApplication;
 static long packageVersionStamp(Context c,String p){return stamp;}
 static boolean available,installed,contextPresent=true,componentMatches=true,active,quick,settings,vector,becomeAvailableOnFallback,labelThrows;
 static String mode="auto",TAG="Probe";static Bitmap raw,defaultRaw;static String currentSource="a";
 static File custom=new File("/data/local/tmp/key-source-probe.png");
 static class PackageManager {Drawable getApplicationIcon(String p){apkLoads++;return defaultDrawable();}}
 static class Context {Resources getResources(){return Resources.getSystem();}PackageManager getPackageManager(){return new PackageManager();}}
 static class ApplicationInfo {String sourceDir=apkPath,publicSourceDir=apkPath;int uid=10000,icon=1;}
 static class ActivityInfo {String packageName="test.app",name="test.Main";int icon=2;ApplicationInfo applicationInfo=missingApplication?null:new ApplicationInfo();}
 static class ResolveInfo {ActivityInfo activityInfo=new ActivityInfo();int icon=iconResource;Drawable loadIcon(PackageManager pm){apkLoads++;return defaultDrawable();}CharSequence loadLabel(PackageManager pm){labelReads++;if(labelThrows)throw new IllegalStateException("label unavailable");return "unused";}}
 static class SettingsResourceContext {Resources getResources(){return Resources.getSystem();}}
 static class RedirectIconInfo {String componentName="test.Main",originalName="",drawableName="pack:explicit";byte[] iconData;}
 static class TextUtils {static boolean isEmpty(String s){return s==null||s.length()==0;}}
 static Context currentApplicationContext(){return contextPresent?new Context():null;}
 static String itemFieldValue(Object i,String f){return itemField(i,f);}
 static String itemField(Object i,String f){if(i==null)return "";return f.equals("userId")?""+user:f.equals("packageName")?"test.app":f.equals("componentName")?"test.Main":"test";}
 static ResolveInfo resolveLauncherActivity(Object pm,String p,String n){pmCalls++;ResolveInfo r=new ResolveInfo();if(!componentMatches)r.activityInfo.name="test.Other";return r;}
 static ResolveInfo firstProfileResolveInfo(Context c,String p,String n,int u){return resolveLauncherActivity(c,p,n);}
 static Drawable profileLauncherIcon(Context c,String p,String n,int u){return null;}
 static SettingsResourceContext createSettingsContext(Context c){return new SettingsResourceContext();}
 static String smartisanSystemIconAlias(Context c,ResolveInfo i){return "test";}
 static Drawable normalizeLauncherIcon(Drawable d){return d;}
 static Drawable defaultDrawable(){return new BitmapDrawable(Resources.getSystem(),defaultRaw);}
 static Drawable managedDrawable(){managedLoads++;return !available?null:vector?new ColorDrawable(0xff123456):new BitmapDrawable(Resources.getSystem(),raw);}
 static Drawable libraryIconDrawable(Context c,Resources r,String s){return managedDrawable();}
 static Drawable packedIconFromPackage(Context c,String p,ResolveInfo r){return managedDrawable();}
 static class IconPackManager {static Drawable getPackedIcon(Context c,String p,String pkg,String cmp){return managedDrawable();}static Drawable getPackedDrawable(Context c,String p,String d){return managedDrawable();}}
 static class IconSourceManager {
  enum Type {DEFAULT,IMPROVED,PACK}static Type global=Type.IMPROVED;
  static class Selection {Type type=global;String packageName="test.pack";}
  static Selection get(Context c){return new Selection();}
  static boolean isInstalledIconPack(Context c,String p){return installed;}
 }
 static class RedirectIconDB {
  static final String MODE_AUTO="auto",MODE_ORIGINAL="original",MODE_CUSTOM="custom",MODE_RESOURCE="resource",MODE_PACK="pack";
  static String modeOf(RedirectIconInfo r){return mode;}
  static String resourceNameOf(RedirectIconInfo r){return currentSource;}
  static String packNameOf(RedirectIconInfo r){return "test.pack";}
  static String packDrawableNameOf(RedirectIconInfo r){return "explicit";}
  static RedirectIconInfo getRedirectIconInfo(Context c,String p,String n){reads++;RedirectIconInfo r=new RedirectIconInfo();if(mode.equals("custom"))r.iconData=readCustomBytes(c,"key");return r;}
  static File customFile(Context c,String key){return custom;}
  static File legacyCustomFile(Context c,String key){return new File(custom.getPath()+".legacy");}
  READ_CUSTOM
 }
 static boolean isQuickLaunchItem(Object i){return quick;}static String quickLaunchTextureCacheKey(Object i,String k){return "quick:"+k;}
 static boolean isDesktopSettingsShortcut(Object i){return settings;}static boolean isOriginalActiveIcon(Object i){return active;}
 static String itemRawHash(Object i){return rawToken;}static boolean resizeClassification(Object i){return false;}
 static boolean desktopDefaultCircleEnabled(Object i){return false;}
 static boolean desktopDefaultCircleEnabled(Object i,String t){return false;}
 static int baseIconSize(int mode){return 100;}static int currentConstant(String s,int v){return v;}
 static final String RASTER_CACHE_VERSION="raster",SOURCE_CANVAS_VERSION="source",BADGE_VERSION="badge",SHADOW_VERSION="shadow";
 static class NormalIconRasterSpec {int logicalArtworkWidth=100,logicalTextureWidth=120,artworkWidth=100,textureWidth=120;}
 static NormalIconRasterSpec resolveNormalIconRasterSpec(int mode){return new NormalIconRasterSpec();}
 static NormalIconRasterSpec resolveNormalIconRasterSpec(IconVisualMetrics metrics){return metrics==null?null:new NormalIconRasterSpec();}
 static class IconVisualMetrics {static int REVISION=5;int surfaceWidth=1080,logicalSurfaceWidth=1080;static IconVisualMetrics resolve(int m){return new IconVisualMetrics();}}
 static class DefaultIconCircleRenderer {static String SHAPE_CIRCLE="circle",SHAPE_FOLLOW_APP="follow",VERSION="shape";}
 static class LauncherSettingBridge {static String iconShadowCacheToken(){return "shadow";}}
 static class IconIlluminationCompat {static String VERSION="projection";static boolean enabled(){return false;}}
 OWNERS
 static void check(boolean ok,String s){checks++;if(!ok)throw new AssertionError(s);}
 static void reset(){reads=fileDecodes=pngEncodes=managedLoads=pmCalls=apkLoads=labelReads=0;}
 static int[] counters(){return new int[]{reads,fileDecodes,pngEncodes,managedLoads,pmCalls};}
 static void writeImage(int color)throws Exception{raw=Bitmap.createBitmap(12,12,Bitmap.Config.ARGB_8888);raw.eraseColor(color);FileOutputStream f=new FileOutputStream(custom);raw.compress(Bitmap.CompressFormat.PNG,100,f);f.close();}
 public static void main(String[] a) {
  try {runChecks();}catch(Throwable error){error.printStackTrace(System.out);System.out.flush();System.exit(1);}
 }
 static void runChecks()throws Exception {
  defaultRaw=Bitmap.createBitmap(12,12,Bitmap.Config.ARGB_8888);defaultRaw.eraseColor(0xffabcdef);
  writeImage(0x80123456);Object item=new Object();
  for(String m:new String[]{"auto","original","custom","resource","pack"})for(IconSourceManager.Type g:IconSourceManager.Type.values())
   for(boolean avail:new boolean[]{false,true})for(boolean pack:new boolean[]{false,true})for(int u:new int[]{0,10})
    for(boolean match:new boolean[]{false,true})for(boolean vec:new boolean[]{false,true}){
     mode=m;IconSourceManager.global=g;available=avail;installed=pack;user=u;componentMatches=match;vector=vec;
     reset();String old=Before.key(item);int[] before=counters();
     reset();String now=After.key(item);int[] after=counters();
     if(BASELINE_APK_METADATA)check(old.equals(now),"current baseline full key equivalence");
     cases++;
     boolean metadata=u==0&&match&&(m.equals("original")||(m.equals("auto")&&(g==IconSourceManager.Type.DEFAULT||(g==IconSourceManager.Type.IMPROVED&&!avail))));
     if(metadata){check(now.contains("apk-default:v1:"),"explicit DEFAULT metadata identity");check(apkLoads==0,"DEFAULT key must not load APK drawable");check(old.substring(old.indexOf(":DEFAULT:")).equals(now.substring(now.indexOf(":DEFAULT:"))),"DEFAULT geometry/type/identity unchanged");}
     else check(old.equals(now),"key mismatch "+m+" "+g+" "+avail+" "+pack+" "+u+" "+match+" "+vec+"\n"+old+"\n"+now);
     check(!raw.isRecycled(),"borrowed bitmap recycled");
     if(u==0&&match)check(after[1]<=before[1],"file decode regression");
    }
  mode="custom";available=true;user=0;componentMatches=true;installed=true;vector=false;
  reset();String old=Before.key(item);int[] before=counters();reset();String now=After.key(item);int[] after=counters();
  check(old.equals(now),"CUSTOM exact key");check((modernBaseline?before[1]==after[1]:before[1]>after[1])&&after[1]==1,"CUSTOM file decode negative control");
  System.out.println("CUSTOM before="+Arrays.toString(before)+" after="+Arrays.toString(after)+" counters=redirectReads,fileDecodes,pngEncodes,managedLoads,pmCalls");
  mode="auto";IconSourceManager.global=IconSourceManager.Type.IMPROVED;
  reset();old=Before.key(item);before=counters();reset();now=After.key(item);after=counters();
  check(old.equals(now)&&before[3]==(modernBaseline?1:2)&&after[3]==1,"IMPROVED source requests negative control");
  System.out.println("IMPROVED before="+Arrays.toString(before)+" after="+Arrays.toString(after));
  mode="custom";now=After.key(item);
  mode="auto";IconSourceManager.global=IconSourceManager.Type.PACK;becomeAvailableOnFallback=true;
  available=false;old=Before.key(item);available=false;now=After.key(item);
  check(old.equals(now)&&now.contains(":PACK:"),"pack becomes available during fallback");
  becomeAvailableOnFallback=false;mode="custom";now=After.key(item);
  writeImage(0xff997755);String changed=After.key(item);check(!changed.equals(now),"content replacement must change key");check(changed.equals(Before.key(item)),"replacement equivalence");
  custom.delete();check(After.key(item).equals(Before.key(item)),"missing custom fallback");
  FileOutputStream f=new FileOutputStream(custom);f.write(new byte[]{1,2,3});f.close();check(After.key(item).equals(Before.key(item)),"corrupt custom fallback");custom.delete();
  mode="resource";available=true;currentSource="a";String first=After.key(item);currentSource="b";
  check(!first.equals(After.key(item))&&After.key(item).equals(Before.key(item)),"resource identity replacement");
  mode="original";IconSourceManager.global=IconSourceManager.Type.DEFAULT;user=0;componentMatches=true;
  reset();Before.key(item);check(BASELINE_APK_METADATA?apkLoads==0:apkLoads>0,"baseline DEFAULT APK loading contract");
  reset();String fixed=After.key(item);check(apkLoads==0,"candidate removes DEFAULT APK load");
  stamp++;check(!fixed.equals(After.key(item)),"installation replacement invalidates key");stamp--;
  iconResource++;check(!fixed.equals(After.key(item)),"activity alias icon replacement invalidates key");iconResource--;
  apkPath="/new/base.apk";check(!fixed.equals(After.key(item)),"APK path replacement invalidates key");apkPath="/test/base.apk";
  rawToken="0";check(fixed.equals(After.key(item)),"absent DB cache must not change installed APK identity");
  rawToken="changed";check(fixed.equals(After.key(item)),"deferred DB source persistence must not evict installed APK texture");rawToken="legacy";
  android.content.res.Configuration config=Resources.getSystem().getConfiguration();int oldOrientation=config.orientation;
  config.orientation=oldOrientation==1?2:1;check(!fixed.equals(After.key(item)),"resource configuration invalidates key");config.orientation=oldOrientation;
  stamp=0;check(After.key(item).equals(Before.key(item)),"unknown install stamp retains complete fallback");stamp=100;
  missingApplication=true;check(After.key(item).equals(Before.key(item)),"missing application metadata retains fallback");missingApplication=false;
  mode="auto";IconSourceManager.global=IconSourceManager.Type.PACK;available=false;becomeAvailableOnFallback=true;
  check(After.key(item).contains(":PACK:"),"managed arrival during fallback still rechecks source");becomeAvailableOnFallback=false;
  mode="custom";available=true;
  contextPresent=false;check(After.key(item).equals(Before.key(item)),"null context");contextPresent=true;
  quick=true;check(After.key(item).equals(Before.key(item)),"quick bypass");quick=false;
  active=true;check(After.key(item).equals(Before.key(item)),"active bypass");active=false;
  settings=true;check(After.key(item).equals(Before.key(item)),"settings bypass");
  settings=false;active=false;quick=false;contextPresent=true;user=0;componentMatches=true;
  mode="auto";IconSourceManager.global=IconSourceManager.Type.IMPROVED;available=false;becomeAvailableOnFallback=true;
  String arrivingOld=Before.key(item);available=false;String arrivingNew=After.key(item);
  check(arrivingOld.equals(arrivingNew)&&arrivingNew.contains(":IMPROVED:"),"improved source arriving during second lookup must remain visible");
  becomeAvailableOnFallback=false;available=false;stamp=0;
  check(After.key(item).equals(Before.key(item)),"IMPROVED miss with unknown APK metadata retains pixel fallback");stamp=100;
  missingApplication=true;check(After.key(item).equals(Before.key(item)),"IMPROVED miss with missing application retains pixel fallback");missingApplication=false;
  available=false;reset();String fallback=After.key(item);check(fallback.contains("apk-default:v1:")&&apkLoads==0,"IMPROVED missing icon must not decode confirmed APK fallback");
  stamp++;check(!fallback.equals(After.key(item)),"IMPROVED missing icon APK replacement invalidates identity");stamp--;
  rawToken="changed";check(fallback.equals(After.key(item)),"IMPROVED missing icon deferred DB cache does not change installed APK identity");rawToken="legacy";
  available=true;check(!fallback.equals(After.key(item))&&After.key(item).equals(Before.key(item)),"later improved arrival replaces APK fingerprint with content hash");
  java.lang.reflect.Method load=After.class.getDeclaredMethod("loadIcon",ResolveInfo.class,PackageManager.class);
  mode="original";reset();Drawable originalIcon=(Drawable)load.invoke(null,new ResolveInfo(),new PackageManager());
  check(originalIcon instanceof BitmapDrawable&&((BitmapDrawable)originalIcon).getBitmap()==defaultRaw&&apkLoads==1,"normal loadIcon still returns actual APK pixels");
  mode="auto";IconSourceManager.global=IconSourceManager.Type.IMPROVED;available=true;reset();Drawable improvedIcon=(Drawable)load.invoke(null,new ResolveInfo(),new PackageManager());
  check(improvedIcon instanceof BitmapDrawable&&((BitmapDrawable)improvedIcon).getBitmap()==raw&&apkLoads==0,"normal loadIcon still returns available managed pixels");
  if(EXPECT_SOURCE_SNAPSHOT){
   available=false;reset();String snapshotOld=Before.key(item);int beforePm=pmCalls,beforeLabels=labelReads;
   reset();String snapshotNew=After.key(item);int afterPm=pmCalls,afterLabels=labelReads;
   check(snapshotOld.equals(snapshotNew),"snapshot preserves complete texture key");
   check(afterPm==beforePm-1,"reuse exactly one already resolved component per missing source");
   check(beforeLabels>0&&afterLabels==0,"unused label read removed");
   reset();After.key(item);After.key(item);check(pmCalls==afterPm*2,"component snapshot must not persist across key calls");
   labelThrows=true;check(Before.key(item).equals(After.key(item)),"unused label exception cannot change selected source");labelThrows=false;
   System.out.println("SOURCE_SNAPSHOT pmBefore="+beforePm+" pmAfter="+afterPm+" labelsBefore="+beforeLabels+" labelsAfter="+afterLabels);
  }
  System.out.println("PASS KEY_SOURCE_ANDROID cases="+cases+" checks="+checks);
 }
}'''


KEY_GEOMETRY_METHODS = r'''
 static int geometryResolves;static boolean geometryUnavailable;
 static void keyGeometryChecks(Object item)throws Exception {
  mode="custom";available=true;user=0;componentMatches=true;installed=true;vector=false;
  active=quick=settings=becomeAvailableOnFallback=false;writeImage(0x80123456);
  int count=0;
  for(int art:new int[]{48,96,144,192})for(int tex:new int[]{200,256})
   for(int physical:new int[]{640,1080,1260,1440})for(int scene:new int[]{8,9,12,16,20,37301}){
    logicalArt=art;logicalTex=tex;physicalArt=(int)Math.ceil(art*physical/1080.0);
    physicalTex=(int)Math.ceil(tex*physical/1080.0);surface=physical;logicalSurface=1080;
    geometryResolves=0;String before=Before.buildTextureCacheKey(item,"base",scene);int beforeCalls=geometryResolves;
    geometryResolves=0;String after=After.buildTextureCacheKey(item,"base",scene);int afterCalls=geometryResolves;
    check(before.equals(after),"same complete geometry/source key at "+art+"/"+tex+"/"+physical+"/"+scene);
    check(beforeCalls==2&&afterCalls==1,"metrics resolutions two to one; actual factory methods");count++;
   }
  geometryUnavailable=true;geometryResolves=0;
  check(Before.key(item).equals("base")&&geometryResolves==1,"before missing geometry keeps base key");
  geometryResolves=0;check(After.key(item).equals("base")&&geometryResolves==1,"after missing geometry keeps base key");
  geometryUnavailable=false;quick=true;geometryResolves=0;
  check(Before.key(item).equals(After.key(item))&&geometryResolves==0,"quick launch bypasses geometry");quick=false;
  logicalArt=100;logicalTex=120;physicalArt=100;physicalTex=120;surface=logicalSurface=1080;
  mode="original";IconSourceManager.global=IconSourceManager.Type.DEFAULT;
  String key=After.key(item);logicalArt++;check(!key.equals(After.key(item)),"next call reads changed logical geometry");logicalArt--;
  surface++;check(!key.equals(After.key(item)),"next call reads changed surface");surface--;
  check(key.equals(After.key(item)),"restored geometry restores identical key");
  System.out.println("PASS KEY_GEOMETRY cases="+count+" metricsResolutions=2->1 fallback=preserved liveInvalidation=preserved");
 }
'''

if __name__ == '__main__':
    main()
