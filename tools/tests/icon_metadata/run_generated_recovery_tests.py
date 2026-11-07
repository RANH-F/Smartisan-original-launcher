"""Exercise the production generated-texture recovery method with explicit model fixtures."""
import argparse
import hashlib
import re
import subprocess
from pathlib import Path

ROOT = Path(__file__).resolve().parents[3]


def method(source, signature):
    start = source.index(signature)
    end = source.index('{', start) + 1
    depth = 1
    while depth:
        depth += (source[end] == '{') - (source[end] == '}')
        end += 1
    return source[start:end]


def main():
    ap = argparse.ArgumentParser(__doc__)
    ap.add_argument('--source', type=Path, default=ROOT / 'launcher/tools/java/com/smartisanos/launcher/theme/IconRasterDiagnostics.java')
    ap.add_argument('--output', type=Path, required=True)
    ap.add_argument('--jdk', type=Path, required=True)
    ap.add_argument('--cell-source', type=Path, default=ROOT / 'launcher/smali/com/smartisanos/launcher/view/a/g.1.smali')
    ap.add_argument('--gaussian-owner-only', action='store_true')
    ap.add_argument('--main-view-source', type=Path, default=ROOT / 'launcher/smali/com/smartisanos/launcher/view/Eb.smali')
    ap.add_argument('--renderer-source', type=Path, default=ROOT / 'launcher/smali/com/smartisanos/launcher/view/vc.smali')
    ap.add_argument('--calendar-composition-only', action='store_true')
    ap.add_argument('--calendar-source', type=Path, default=ROOT / 'launcher/smali/com/smartisanos/launcher/view/activeicon/m.smali')
    ap.add_argument('--bridge-source', type=Path, default=ROOT / 'launcher/tools/java/com/smartisanos/launcher/theme/LauncherSettingBridge.java')
    ap.add_argument('--folder-material-only', action='store_true')
    ap.add_argument('--folder-icons-only', action='store_true')
    ap.add_argument('--folder-icons-source', type=Path, default=ROOT / 'launcher/smali/com/smartisanos/launcher/view/a/la.smali')
    ap.add_argument('--material-source', type=Path, default=ROOT / 'launcher/smali/com/smartisanos/smengine/mymaterial/f.1.smali')
    args = ap.parse_args()
    if args.gaussian_owner_only:
        main = args.main_view_source.read_text(encoding='utf8')
        renderer = args.renderer_source.read_text(encoding='utf8')
        event = (ROOT / 'launcher/smali/com/smartisanos/launcher/view/GaussianBackgroundRestore.smali').read_text(encoding='utf8')
        assert '.method public rebuildGaussianBackground(' in main, 'detached Gaussian producer has no recovery entry'
        rebuild = main.split('.method public rebuildGaussianBackground(', 1)[1].split('.end method', 1)[0]
        start = rebuild.index('    sget-boolean v3,')
        body = rebuild[start:rebuild.index('    :cond_a', start)]
        cold = main.split('.method public Vh()V', 1)[1].split('.end method', 1)[0]
        created = renderer.split('.method public onSurfaceCreated(', 1)[1].split('.end method', 1)[0]
        frame = renderer.split('.method public onDrawFrame(', 1)[1].split('.end method', 1)[0]
        hook = created[created.index('# Run in the original engine event phase'):]
        checks = [
            ('original producer/source/cleanup body byte-equivalent', hashlib.sha256(body.encode()).hexdigest() == 'ec868e55c963e6fd84ade20d3b4fb4d6a8dcf83c4b70a4acec8d7267878cdd60'),
            ('cold path delegates once without duplicate blur factory', cold.count('->rebuildGaussianBackground(') == 1 and '->uh()' not in cold),
            ('original wallpaper branch and transparent URI retained', all(x in rebuild for x in ['->isTransparentTheme:Z', '->sWallpaperUri:', '->n(Landroid/content/Context;Ljava/lang/String;)'])),
            ('restore scheduled after original EGL sharing setup', created.index('->a(Ljavax/microedition/khronos/egl/EGLContext;)') < created.index('# Run in the original engine event phase')),
            ('only retained contexts and Gaussian themes schedule', 'if-le v0, v1, :gaussian_context_restore_ready' in hook and '->sIsGaussianTheme:Z' in hook),
            ('missing owner protected before scheduling', hook.index('if-eqz v0') < hook.index('new-instance')),
            ('existing engine event queue without delay', 'Lcom/smartisanos/smengine/n;->q(F)V' in hook and 'const/4 v0, 0x0' in hook and '.super Lcom/smartisanos/smengine/n;' in event),
            ('no per-frame restore', 'GaussianBackgroundRestore' not in frame and 'rebuildGaussianBackground' not in frame),
            ('stale generation discarded', 'if-ne v0, v1, :done' in event and '->generation:I' in event),
            ('stale scene discarded', '->getInstance()Lcom/smartisanos/launcher/view/Eb;' in event and event.count('if-ne v0, v1, :done') == 2),
            ('callback uses original camera and producer once', '->Vj()Lcom/smartisanos/smengine/Camera;' in event and event.count('->rebuildGaussianBackground(') == 1),
            ('callback does not implement a second rendering pipeline', all(x not in event for x in ['Bitmap', 'glBind', 'new-array', 'setScale', 'setTranslate'])),
        ]
        for name, ok in checks:
            if not ok: raise AssertionError(name)
        print('PASS GAUSSIAN_OWNER_STATIC_CHECKS=' + str(len(checks)) + '; not runtime branch coverage')
        return
    if args.calendar_composition_only:
        text = args.calendar_source.read_text(encoding='utf8')
        composition = text.split('.method public createComposedBitmap()Landroid/graphics/Bitmap;', 1)[1].split('.end method', 1)[0]
        label = '    :calendar_composition_layout_ready'
        assert label in composition, 'calendar composition cannot recover cleared layout metadata'
        guard, body = composition.split(label, 1)
        constructor = text.split('.method public constructor <init>', 1)[1].split('.end method', 1)[0]
        checks = [
            ('live metadata uses original fast path', 'if-nez v12, :calendar_composition_layout_ready' in guard),
            ('cleared metadata reuses constructor desktop owner', all(token in guard and token in constructor for token in ['->getInstance()', '->Ih()', '->getSinglePageMode()', '->mode(I)'])),
            ('recovery does not revive cleared scene or assign a second owner', all(token not in guard for token in ['iput-object', 'new-instance', '->create()', 'setTranslate', 'setScale'])),
            ('all six layout reads use the scoped original metadata', len(re.findall(r'move-object (?:v\d+|p0), v12', body)) == 6 and '->Nn:' not in body),
            ('original clear still releases layout metadata', 'iput-object v2, p0, Lcom/smartisanos/launcher/view/activeicon/m;->Nn:' in text.split('.method public g(ZZ)V', 1)[1].split('.end method', 1)[0]),
        ]
        original = '.method public createComposedBitmap()Landroid/graphics/Bitmap;\n    .locals 12' + re.sub(r'move-object (v\d+|p0), v12', r'iget-object \1, p0, Lcom/smartisanos/launcher/view/activeicon/m;->Nn:Lcom/smartisanos/launcher/data/LayoutProperty;', body) + '.end method'
        checks.append(('original bitmap drawing is byte-equivalent', hashlib.sha256(original.encode()).hexdigest() == '58b980dd05dbe83e5f6e117831862b2831934f410ea5d70811bb090cd92b2ad1'))
        bridge = args.bridge_source.read_text(encoding='utf8')
        cached = method(bridge, 'public static Bitmap composeActiveIconToBaseBounds(')
        lookup = cached[cached.index('Object shadowNode = findLiveShadow(activeRoot);'):cached.index('if (shadowNode != null) {')]
        checks += [
            ('cached recovery prefers attached shadow then retained source', 'if (shadowNode == null)' in lookup and 'readPrivateField(activeRoot, "activeIconShadowNode")' in lookup),
            ('source-only fallback never revives or reparents a cleared node', all(token not in lookup for token in ['setParent', 'addChild', 'setScale', 'setTranslate', 'createActiveIcon'])),
            ('live ownership remains children-only', 'activeIconShadowNode' not in method(bridge, 'private static Object findLiveShadow(')),
        ]
        for name, ok in checks:
            if not ok: raise AssertionError(name)
        print('PASS CALENDAR_COMPOSITION_STATIC_CHECKS=' + str(len(checks)) + '; not runtime branch coverage')
        return
    if args.folder_icons_only:
        text = args.folder_icons_source.read_text(encoding='utf8')
        block = text.split('.method public oa(Z)V', 1)[1].split('.end method', 1)[0]
        original = (ROOT / 'clean_launcher_raw/smali/com/smartisanos/launcher/view/a/la.smali').read_text(encoding='utf8').split('.method public oa(Z)V', 1)[1].split('.end method', 1)[0]
        label = '\n    :folder_icons_context_ready\n'
        assert label in block, 'detached FolderIcons has no context recovery admission'
        guard, body = block.split(label, 1)
        reload = text.split('.method private restoreRetainedIconSources()V', 1)[1].split('.end method', 1)[0]
        checks = [
            ('producer is outside SceneNode traversal', '.super Ljava/lang/Object;' in text),
            ('one existing generation provider', guard.count('->getEglContextGeneration()I') == 1),
            ('same-generation path skips dirty notification', 'if-eq v1, v2, :folder_icons_context_ready' in guard),
            ('producer stores only its generation', 'iput v1, p0, Lcom/smartisanos/launcher/view/a/la;->mFolderIconsContextGeneration:I' in guard),
            ('original dirty owner reused once', guard.count('->dj()V') == 1),
            ('first generation retains original preload', 'if-eqz v2, :folder_icons_notify_dirty' in guard and guard.index('if-eqz v2') < guard.index('->restoreRetainedIconSources()V')),
            ('thumbnail sources loaded before producer dirty notification', guard.index('->restoreRetainedIconSources()V') < guard.index('->dj()V')),
            ('reload is bounded by retained nodes and current model', 'Ljava/lang/Math;->min(II)I' in reload and '->nf()Ljava/util/ArrayList;' in reload),
            ('weather classification cannot capture calendar owner', '->bf()Z' in reload and '->Qe()Z' not in reload and reload.index('->bf()Z') < reload.index('->Te()Z')),
            ('static sources keep their original factory', '->a(Lcom/smartisanos/smengine/F;Lcom/smartisanos/launcher/data/ItemInfo;)V' in reload),
            ('active sources keep existing controllers and texture factory', '->cy:Lcom/smartisanos/launcher/view/activeicon/H;' in reload and '->mCalendarView:Lcom/smartisanos/launcher/view/activeicon/m;' in reload and 'invoke-static/range {v1 .. v8}' in reload),
            ('reload does not replace nodes or geometry', all(token not in reload for token in ['new-instance', 'new-array', 'setViewPort', 'setScale', 'setTranslate'])),
            ('generation checked before original dirty gate', guard.index('->getEglContextGeneration()I') < len(guard) and body.index('->jz:Z') > 0),
            ('original geometry and both drawing branches unchanged', hashlib.sha256(body.strip().encode('utf8')).hexdigest() == '83b129453cc89e26edf2ed336370d834bd82367edae9b9677e86f3fbf66df0dd'),
        ]
        for name, ok in checks:
            if not ok: raise AssertionError(name)
        print('PASS FOLDER_ICONS_STATIC_CHECKS=' + str(len(checks)) + '; not runtime branch coverage')
        return
    if args.folder_material_only:
        text = args.material_source.read_text(encoding='utf8')
        block = text.split('.method protected a(Ljava/lang/String;Lcom/smartisanos/smengine/Ca;I)Z', 1)[1].split('.end method', 1)[0]
        factory = 'invoke-static {}, Lcom/smartisanos/launcher/view/b/t;->Ur()Lcom/smartisanos/smengine/F;'
        start = block.index('    if-nez v1, :cond_0')
        end = block.index('    :retained_foreground_source')
        recovery = block[start:end]
        checks = [
            ('cached texture keeps original fast path', recovery.startswith('    if-nez v1, :cond_0')),
            ('only exact generated folder key enters', 'const-string v2, "t_blur_background_folder"' in recovery and '->equals(Ljava/lang/Object;)Z' in recovery and 'if-eqz v2, :retained_foreground_source' in recovery),
            ('original factory called once before manager reread', recovery.count(factory) == 1 and recovery.index(factory) < recovery.index('->bb(Ljava/lang/String;)')),
            ('success keeps original sampler/binding branch', 'move-result-object v1\n    if-nez v1, :cond_0' in recovery),
            ('failed source does not enter APK decoder', recovery.rstrip().endswith('return v2') and 'const/4 v2, 0x0' in recovery),
            ('other source admission remains after folder branch', end < block.index('->isRetainedGeneratedForegroundKey') < block.index('->hb(Ljava/lang/String;)')),
        ]
        for name, ok in checks:
            if not ok: raise AssertionError(name)
        print('PASS FOLDER_MATERIAL_STATIC_CHECKS=' + str(len(checks)) + '; not runtime branch coverage')
        return

    source = args.source.read_text(encoding='utf8')
    if 'getMethod("reloadRetainedForegroundTexture")' in source:
        cell = args.cell_source.read_text(encoding='utf8')
        texture = cell.split('.method public reloadRetainedForegroundTexture()V', 1)[1].split('.end method', 1)[0]
        refresh = cell.split('.method public fb(Z)V', 1)[1].split('.end method', 1)[0]
        checks = [
            ('retained factory owns exact source key', '->applicationCellTextureCacheKey' in texture and '->TH:Ljava/lang/String;' in texture),
            ('retained factory uses existing active owner and layout', all(token in texture for token in ['->sc:', 'const/4 v1, 0x7', '->dH:', '->fH:I'])),
            ('both original factory signatures preserved', 'invoke-static/range {v1 .. v7}' in texture and 'invoke-static/range {v1 .. v8}' in texture),
            ('texture-only recovery leaves geometry and rendering state untouched', all(token not in texture for token in ['->Cm()', 'setTranslate', 'setScale', 'setViewPort', 'setNeedDisplay', 'new-instance'])),
            ('ordinary refresh delegates once and retains mode-aware positioning', refresh.count('->reloadRetainedForegroundTexture()V') == 1 and refresh.count('->Cm()V') == 1),
            ('ordinary refresh does not duplicate texture production', 'Lcom/smartisanos/launcher/e/s;->a(' not in refresh),
        ]
        for name, ok in checks:
            if not ok: raise AssertionError(name)
        print('PASS TEXTURE_ONLY_STATIC_CHECKS=' + str(len(checks)) + '; not runtime branch coverage')
    version = re.search(r'RASTER_CACHE_VERSION = "([^"]+)"', source).group(1)
    methods = '\n'.join(method(source, sig) for sig in (
        'public static Bitmap recoverMissingGeneratedTexture(String key)',
        'private static Bitmap missingGeneratedTexture(String key, String reason)'))
    if 'public static Object recoverRetainedGeneratedTexture(' in source:
        methods += '\n' + method(source, 'public static boolean isRetainedGeneratedForegroundKey(String key)')
        methods += '\n' + method(source, 'private static boolean sameRasterExceptShadowSpec(String previous, String current)')
        methods += '\n' + method(source, 'public static Object recoverRetainedGeneratedTexture(String key)')
    else:
        # Negative control executes the former Bitmap recovery, rather than pretending
        # that a missing original-Cell route was already present.
        methods += '\npublic static Object recoverRetainedGeneratedTexture(String key){return recoverMissingGeneratedTexture(key);}'
        methods += '\npublic static boolean isRetainedGeneratedForegroundKey(String key){return key!=null&&key.contains("#"+RASTER_CACHE_VERSION+":");}'
    files = {
        'android/graphics/Bitmap.java': 'package android.graphics;public class Bitmap {public enum Config {ARGB_8888} public boolean isRecycled(){return false;} public static Bitmap createBitmap(int a,int b,Config c){return new Bitmap();}}',
        'android/util/Log.java': 'package android.util;public class Log {public static int w(String a,String b){return 0;} public static int w(String a,String b,Throwable c){return 0;} public static int i(String a,String b){return 0;}}',
        'com/smartisanos/launcher/Aa.java': '''package com.smartisanos.launcher;
public class Aa {public static int reads;public static Object item=new Object();
public static Object i(long id){reads++;if(id!=4)throw new AssertionError("wrong id");return item;}
public static android.graphics.Bitmap g(long id){reads++;return new android.graphics.Bitmap();}}''',
        'com/smartisanos/launcher/theme/IconRasterDiagnostics.java': '''package com.smartisanos.launcher.theme;
import android.graphics.Bitmap;import android.util.Log;public class IconRasterDiagnostics {
private static final String TAG="test",RASTER_CACHE_VERSION="''' + version + '''";
public static final Bitmap restored=new Bitmap();public static int compositions;
public static Bitmap composeStaticApplicationIconTexture(Object item,Bitmap source,int mode){
if(mode!=12&&mode!=20)throw new AssertionError("wrong grid");compositions++;return restored;}
private static String itemField(Object item,String name){return String.valueOf(((com.smartisanos.launcher.view.Item)item).id);}
''' + methods + '\n}',
        'com/smartisanos/smengine/Ea.java': 'package com.smartisanos.smengine;public class Ea {public static final Object expected=new Object();public static Object texture;public static int reads;public static String lastKey;public Object bb(String key){reads++;lastKey=key;return texture;}}',
        'com/smartisanos/smengine/Ra.java': 'package com.smartisanos.smengine;public class Ra {public static final Ra I=new Ra();public static final Ea M=new Ea();public static Ra getInstance(){return I;}public Ea rt(){return M;}}',
        'com/smartisanos/launcher/view/Item.java': 'package com.smartisanos.launcher.view;public class Item {public long id;public Item(long id){this.id=id;}}',
        'com/smartisanos/launcher/view/Node.java': 'package com.smartisanos.launcher.view;public class Node {public String imageName;public void setImageName(String value){imageName=value;}}',
        'com/smartisanos/launcher/view/Dock.java': 'package com.smartisanos.launcher.view;public class Dock {public java.util.List<Cell> cells=new java.util.ArrayList<>();public java.util.List<Cell> Fo(){return cells;}}',
        'com/smartisanos/launcher/view/Cell.java': '''package com.smartisanos.launcher.view;public class Cell {
public static int calls,mode;public static boolean changeKey,fail,empty;public String key;public int anchor=-7;public final Node foreground=new Node();public final Item item=new Item(4);
public Cell(String key){this.key=key;}public String Ol(){return key;}public void fb(boolean recreate){
anchor=8;reloadRetainedForegroundTexture();}
public Node gb(int index){if(index!=0)throw new AssertionError("wrong foreground index");return foreground;}
public Item Rl(){return item;}
public void reloadRetainedForegroundTexture(){calls++;
if(fail)throw new IllegalStateException("fixture factory failure");
if(changeKey)key="new-source-key";com.smartisanos.smengine.Ea.texture=empty?null:com.smartisanos.smengine.Ea.expected;}}''',
        'com/smartisanos/launcher/view/Eb.java': 'package com.smartisanos.launcher.view;public class Eb {public static final Eb I=new Eb();public static Cell cell;public static final Dock dock=new Dock();public static Eb getInstance(){return I;}public Cell q(long id){if(id!=4)throw new AssertionError("wrong Cell id");return cell;}public Dock zh(){return dock;}}',
        'Probe.java': '''import com.smartisanos.launcher.theme.IconRasterDiagnostics;
import com.smartisanos.launcher.Aa;import com.smartisanos.launcher.view.Cell;import com.smartisanos.launcher.view.Eb;import com.smartisanos.smengine.Ea;
public class Probe {
static int checks;static void check(boolean ok,String message){checks++;if(!ok)throw new AssertionError(message);}
static String key(String base,int mode,String pipeline){return base+"#''' + version + ''':identity:grid="+mode+":0:"+pipeline+":shadowSpec=old:projection=stable";}
static void reset(String key){Cell.calls=0;Cell.changeKey=false;Cell.fail=false;Cell.empty=false;Ea.reads=0;Ea.lastKey=null;Ea.texture=null;Aa.reads=0;Eb.dock.cells.clear();Eb.cell=new Cell(key);}
public static void main(String[] args){
for(int mode:new int[]{12,20})for(String pipeline:new String[]{"STATIC_APPLICATION_COMPOSER","ORIGINAL_ACTIVE_ICON"}){
String key=key("4_com.smartisanos.launcher_fore",mode,pipeline);reset(key);Cell.mode=mode;
check(IconRasterDiagnostics.isRetainedGeneratedForegroundKey(key),"retained key rejected");
check(IconRasterDiagnostics.recoverRetainedGeneratedTexture(key)==Ea.expected,"recovery bypassed the original retained Cell factory");
check(Cell.calls==1&&Ea.reads==1&&Aa.reads==0,"legacy DB bitmap or duplicate factory used");check(Cell.mode==mode&&Eb.cell.anchor==-7,"texture recovery overwrote retained animation anchor");
Aa.reads=0;IconRasterDiagnostics.compositions=0;
check(IconRasterDiagnostics.recoverMissingGeneratedTexture("target/--/"+key)==IconRasterDiagnostics.restored,"wrapped theme fallback changed");
check(Aa.reads==2&&IconRasterDiagnostics.compositions==1,"wrapped legacy owner changed");}
String[] rejected={null,"Textures/body.png","4_package_fore#raster:old:identity:grid=12:0:STATIC_APPLICATION_COMPOSER:",
key("Textures/4_package_fore",12,"STATIC_APPLICATION_COMPOSER"),key("4_package_title",12,"STATIC_APPLICATION_COMPOSER"),
key("4_package_fore",12,"QUICK_LAUNCH"),key("x_package_fore",12,"STATIC_APPLICATION_COMPOSER"),key("target/--/4_package_fore",12,"STATIC_APPLICATION_COMPOSER")};
for(String key:rejected){reset(key);check(!IconRasterDiagnostics.isRetainedGeneratedForegroundKey(key),"unrelated key captured");check(IconRasterDiagnostics.recoverRetainedGeneratedTexture(key)==null&&Cell.calls==0,"unrelated key touched Cell");}
String key=key("4_package_fore",12,"STATIC_APPLICATION_COMPOSER");
reset(key);Eb.cell=null;check(IconRasterDiagnostics.recoverRetainedGeneratedTexture(key)==null&&Cell.calls==0,"removed Cell fabricated texture");
reset("different-key");check(IconRasterDiagnostics.recoverRetainedGeneratedTexture(key)==null&&Cell.calls==0,"wrong Cell key rebuilt");
reset(key);Cell.changeKey=true;check(IconRasterDiagnostics.recoverRetainedGeneratedTexture(key)==null&&Ea.reads==0,"changed source reused as old texture");
reset(key);Cell.fail=true;check(IconRasterDiagnostics.recoverRetainedGeneratedTexture(key)==null,"factory failure hidden as image");
reset(key);Cell.empty=true;check(IconRasterDiagnostics.recoverRetainedGeneratedTexture(key)==null,"empty cache fabricated texture");
Cell.empty=false;check(IconRasterDiagnostics.recoverRetainedGeneratedTexture(key)==Ea.expected,"original owner could not recover later");
String shadowKey=key.replace(":shadowSpec=old:",":shadowSpec=new:");
reset(shadowKey);check(IconRasterDiagnostics.recoverRetainedGeneratedTexture(key)==Ea.expected,"shadow-only key handoff failed");
check(shadowKey.equals(Ea.lastKey)&&shadowKey.equals(Eb.cell.foreground.imageName),"shadow handoff left the old material name");
reset(null);Cell dockCell=new Cell(shadowKey);Eb.dock.cells.add(dockCell);
check(IconRasterDiagnostics.recoverRetainedGeneratedTexture(key)==Ea.expected,"retained Dock owner not found");
check(shadowKey.equals(dockCell.foreground.imageName)&&shadowKey.equals(Ea.lastKey),"Dock shadow key not rebound");
reset(shadowKey.replace(":projection=stable",":projection=changed"));
check(IconRasterDiagnostics.recoverRetainedGeneratedTexture(key)==null&&Cell.calls==0,"changed projection incorrectly reused old raster");
System.out.println("PASS GENERATED_RECOVERY checks="+checks);}}

'''
    }
    args.output.mkdir(parents=True, exist_ok=True)
    paths = []
    for name, body in files.items():
        path = args.output / name
        path.parent.mkdir(parents=True, exist_ok=True)
        path.write_text(body, encoding='utf8')
        paths.append(str(path))
    subprocess.run([str(args.jdk / 'bin/javac.exe'), '-encoding', 'UTF-8', '-d', str(args.output), *paths], check=True)
    subprocess.run([str(args.jdk / 'bin/java.exe'), '-cp', str(args.output), 'Probe'], check=True)


if __name__ == '__main__':
    main()
