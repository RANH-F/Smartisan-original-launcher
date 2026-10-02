#!/usr/bin/env python3
"""Execute production shadow selection against conflicting theme signals."""
from pathlib import Path
import re
import subprocess

ROOT = Path(__file__).resolve().parents[3]
OUT = ROOT / "build/static-shadow-fix-20261001/host-tests"
JDK = Path("E:/Program Files/Android/Android Studio/jbr/bin")


def block(source, signature):
    start = source.index(signature)
    opening = source.index("{", start)
    depth = 1
    end = opening + 1
    while depth:
        depth += (source[end] == "{") - (source[end] == "}")
        end += 1
    return source[start:end]


def check_theme_transitions():
    source = (ROOT / "launcher/smali/com/smartisanos/launcher/data/Constants.smali").read_text(encoding="utf-8")
    method = source.split(".method public static setIconType(", 1)[1].split("\n", 1)[1].split(".end method", 1)[0]
    instructions = [s.strip() for s in method.splitlines()
                    if s.strip() and not s.strip().startswith((".", "#", "public"))]
    labels = {s: i for i, s in enumerate(instructions) if s.startswith(":")}
    checks = 0
    for previous in ("RZ", "SZ", "TZ"):
        for light in (False, True):
            for theme in ("normal", "aero", "trans", "glime"):
                state, registers, returned, pc = previous, {}, False, 0
                special = theme != "normal"
                while pc < len(instructions):
                    s = instructions[pc]
                    if s.startswith(":"):
                        pass
                    elif s.startswith("iget-boolean"):
                        registers["v0"] = int(light)
                    elif s.startswith("sget-object"):
                        register = s.split()[1].rstrip(",")
                        registers[register] = state if "->ICON_TYPE:" in s else re.search(r"->(\w+):", s)[1]
                    elif s.startswith("const/4"):
                        _, register, value = s.split(); registers[register.rstrip(",")] = int(value, 16)
                    elif s.startswith(("if-eq ", "if-ne ")):
                        op, a, b, label = s.split()
                        equal = registers[a.rstrip(",")] == registers[b.rstrip(",")]
                        if equal == (op == "if-eq"):
                            pc = labels[label]; continue
                    elif s.startswith("if-eqz"):
                        _, register, label = s.split()
                        if registers[register.rstrip(",")] == 0:
                            pc = labels[label]; continue
                    elif s.startswith("goto"):
                        pc = labels[s.split()[1]]; continue
                    elif s.startswith("sput-object"):
                        state = registers[s.split()[1].rstrip(",")]
                    elif s.startswith("invoke-static"):
                        assert "theme/X;->i(" in s
                        returned = int(special)
                    elif s.startswith("move-result"):
                        registers[s.split()[1]] = returned
                    elif s == "return-void":
                        break
                    else:
                        raise AssertionError("Unsupported production instruction: " + s)
                    pc += 1
                expected = "TZ" if special else "SZ" if light else "RZ"
                assert state == expected, (previous, light, theme, state, expected)
                checks += 1
    print("PASS", checks, "production smali theme transitions including Transparent -> Dark")


def main():
    check_theme_transitions()
    OUT.mkdir(parents=True, exist_ok=True)
    bridge = (ROOT / "launcher/tools/java/com/smartisanos/launcher/theme/LauncherSettingBridge.java").read_text(encoding="utf-8")
    raster = (ROOT / "launcher/tools/java/com/smartisanos/launcher/theme/IconRasterDiagnostics.java").read_text(encoding="utf-8")
    methods = "\n".join(block(bridge, s) for s in (
        "private static EffectiveIconShadowSpec effectiveIconShadowSpec()",
        "public static String iconShadowCacheToken()",
        "private static Object readStaticField(",
        "private static final class EffectiveIconShadowSpec"))
    methods += "\n" + "\n".join(block(raster, s) for s in (
        "public static boolean shouldUseHighResolutionDesktopRaster(",
        "private static boolean isSpecialSettingButton(",
        "private static boolean isDesktopSettingsShortcut("))
    constants = OUT / "Constants.java"
    constants.write_text('''package com.smartisanos.launcher.data;
public class Constants {
 public enum IconType { Dark, Light, Transparent }
 public static IconType ICON_TYPE = IconType.Dark;
 public static boolean isTransparentTheme;
 public static String sGaussianResSuffix = "";
 public static int[] ICON_SHADOW_RADIUS = {9,3};
 public static int[] ICON_SHADOW_RADIUS_TRANSPARENT = {16,10};
 public static int[][] ICON_SHADOW_COLOR = {{33,41},{18,18},{11,15}};
}
''', encoding="utf-8")
    harness = OUT / "ShadowContract.java"
    harness.write_text('''import java.lang.reflect.Field;
import java.util.Arrays;
import com.smartisanos.launcher.data.Constants;
public class ShadowContract {
 static final int SHADOW_DARK=0, SHADOW_LIGHT=1, SHADOW_TRANSPARENT=2;
 static final String TAG="test";
 static int checks;
 static class Log { static void w(String a,String b) {} }
 static void logEffectiveIconShadowSpec(EffectiveIconShadowSpec spec) {}
 static class Item {
  String packageName,componentName,title=""; boolean quick,active;
  Item(String p,String c) { packageName=p;componentName=c; }
 }
 static boolean isQuickLaunchItem(Object o) { return ((Item)o).quick; }
 static boolean isOriginalActiveIcon(Object o) { return ((Item)o).active; }
 static String itemField(Object o,String f) {
  if(o==null)return ""; Item i=(Item)o;
  return f.equals("packageName")?i.packageName:f.equals("componentName")?i.componentName:i.title;
 }
 static void check(boolean ok,String reason) {
  checks++; if(!ok)throw new AssertionError(reason);
 }
''' + methods + '''
 public static void main(String[] args) {
  for(Constants.IconType type:Constants.IconType.values()) {
   Constants.ICON_TYPE=type;
   String token=null;
   for(String suffix:new String[]{"","_light"})for(boolean transparent:new boolean[]{false,true}) {
    Constants.sGaussianResSuffix=suffix;Constants.isTransparentTheme=transparent;
    EffectiveIconShadowSpec spec=effectiveIconShadowSpec();
    check(spec.mode==type.ordinal(),"ICON_TYPE must own both static and live shadows");
    check(Arrays.equals(spec.radii,type==Constants.IconType.Transparent?new int[]{16,10}:new int[]{9,3}),"radius group");
    check(Arrays.equals(spec.colors,Constants.ICON_SHADOW_COLOR[type.ordinal()]),"color group");
    if(token==null)token=iconShadowCacheToken();
    check(token.equals(iconShadowCacheToken()),"wallpaper suffix must not invalidate icon shadow");
   }
  }
  Constants.ICON_TYPE=Constants.IconType.Dark;String dark=iconShadowCacheToken();
  Constants.ICON_TYPE=Constants.IconType.Light;String light=iconShadowCacheToken();
  Constants.ICON_TYPE=Constants.IconType.Transparent;String glass=iconShadowCacheToken();
  check(!dark.equals(light)&&!light.equals(glass)&&!glass.equals(dark),"theme cache isolation");
  Constants.ICON_SHADOW_COLOR[2][0]++;check(!glass.equals(iconShadowCacheToken()),"resource cache isolation");
  Item settings=new Item("com.smartisanos.launcher","com.smartisanos.launcher.theme.ThemeChooserActivity");
  check(shouldUseHighResolutionDesktopRaster(settings),"settings application enters common composer");
  check(!shouldUseHighResolutionDesktopRaster(new Item("com.smartisanos.launcher","com.smartisanos.launcher.Launcher")),"editing controls remain excluded");
  check(!isDesktopSettingsShortcut(new Item("other.app",settings.componentName)),"exact package boundary");
  check(!isDesktopSettingsShortcut(new Item(settings.packageName,settings.componentName+"Extra")),"exact component boundary");
  check(shouldUseHighResolutionDesktopRaster(new Item("com.android.settings","Settings")),"ordinary apps unaffected");
  settings.active=true;check(!shouldUseHighResolutionDesktopRaster(settings),"live icon must bypass static composer");
  settings.active=false;settings.quick=true;check(!shouldUseHighResolutionDesktopRaster(settings),"quick launch remains excluded");
  check(!shouldUseHighResolutionDesktopRaster(null),"null item remains excluded");
  System.out.println("PASS "+checks+" production selection, cache and pipeline checks");
 }
}
''', encoding="utf-8")
    subprocess.run([str(JDK / "javac.exe"), "-encoding", "UTF-8", "-d", str(OUT), str(constants), str(harness)], check=True)
    subprocess.run([str(JDK / "java.exe"), "-cp", str(OUT), "ShadowContract"], check=True)
    assert ':shadowSpec=" + LauncherSettingBridge.iconShadowCacheToken()' in raster
    assert '"RESOURCE", "launcher:icon_setting", false' in raster
    assert 'isDesktopSettingsShortcut(itemInfo) && resolved.drawable == null' in raster
    assert 'isDesktopSettingsShortcut(itemInfo) && rawDrawable == null' in raster
    # Live and cached rendering must consume the same production selector.
    for signature in ('public static Bitmap composeActiveIconToBaseBounds(',
                      'public static String createActiveIconLiveShadowTexture('):
        assert 'effectiveIconShadowSpec()' in block(bridge, signature)
    print("PASS resource fallback, cache wiring and shared shadow ownership")


if __name__ == "__main__":
    main()
