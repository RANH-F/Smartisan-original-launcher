# 构建环境与版本号修改备忘

## 本文档职责

本文档负责记录当前工程在 Windows / PowerShell 下的构建工具发现逻辑、关键工具路径、签名流程、APK 版本号写入点，以及二进制 `AndroidManifest.xml` 的临时改版方法。后续编译、降版测试检查更新、正式发版前先看这里。

本文档和其他文档的边界：

- README 只写当前版本 / 兼容基线和用户安装命令；不要把本文档里的 PATH、Python 字节替换脚本和 AXML 偏移复制进 README。
- `docs/development/DEVELOPMENT_LOG.md` 记录为什么改版本、为什么临时降版、验证结果；本文档只记录怎么改才不会漏改。
- `docs/architecture/APK_STRUCTURE.md` 记录哪些 APK 是主包、透明主题包或参考包；本文档只记录构建和版本写入流程。

必须同步更新本文档的情况：

- `build.bat` 的工具查找、签名、zipalign、Manifest 注入逻辑变化。
- JDK、Android SDK、ADB、aapt2、apksigner 等本机路径或查找顺序变化。
- 版本号写入点变化，包括文本 Manifest、设置页版本字符串、二进制 Manifest。
- 临时降版测试检查更新或正式发版流程变化。

## 构建入口

推荐始终使用仓库根目录下的脚本：

```powershell
.\build.bat
```

构建前先执行图标源数据审计，再生成索引，最后审计生成结果（任一步失败即停止）：

```powershell
python -B tools/icon_library.py source-audit
python -B tools/generate_icon_index.py
python -B tools/icon_library.py audit
```

图标库构建仍使用既有三个审计／生成步骤。源Catalog的nameStatus=verified必须有名称证据，中文名称／别名需有pinyin或pinyinOverrides（三项：全拼、分词拼音、首字母）。可选nameEn／tags／typed groups／pronunciations保留schema 1兼容；缺证据或词表审计失败时不改派生文件。正常build.bat不联网补名称，也不需要pypinyin；资料整理可显式使用collect-store／enrich，整理结果提交前仍须人工审核和源审计。

`icons/catalog.json` 是人工可维护元数据；生成器不会删除失效引用来掩盖源数据错误。主动删除 PNG 后应先清理 catalog / variants 中的对应引用，新增 PNG 可在源数据审计通过后由生成器增量登记，文件名和已有 sourceId 保持不变。构建成功后仍需检查签名、产物时间及实际安装结果；不要在 ADB 安装仍占用 APK 时并发重建同一路径。

脚本会自动构建 maintained 设置资源、重新打包 launcher、注入二进制 Manifest、编译 Java 兼容宿主为 `classes2.dex`，最后 zipalign 并签名。

输出文件：

- `build\launcher-signed.apk`：最终可安装桌面 APK。
- `build\launcher-unsigned.apk`：未签名中间包。
- `build\launcher-aligned.apk`：签名前 zipalign 中间包。

Java helper 编译临时目录固定为 `build\scratch`。`BUILD_SCRATCH` 必须在 CMD 的 `if (...)` 括号块之前赋值；否则 `%BUILD_SCRATCH%` 会在整块解析时提前展开为空，`javac` / `d8` 可能把 `classes`、`dex`、`helpers.jar` 和 `java_sources.txt` 写到盘符根目录，并把已删除的旧 class 再次注入 `classes2.dex`。删除临时诊断 Java 后，clean APK 必须同时检查最终 `classes2.dex` 不再包含对应类名/日志字符串，不能只检查源码目录。

## JDK / PATH

`build.bat` 自己会临时设置 `JAVA_HOME` 和 `PATH`，不要依赖当前 PowerShell 全局 PATH。查找顺序如下：

1. `D:\Program Files\Android\Android Studio\jbr`
2. `C:\Program Files\Android\Android Studio\jbr`
3. `build\tools\jdk17\jdk-17.0.19+10`

脚本找到后会执行：

```bat
set "JAVA_HOME=..."
set "PATH=%JAVA_HOME%\bin;%PATH%"
```

所以在普通 PowerShell 里直接运行 `java` 可能失败，这不代表 `build.bat` 不能编译。

## Android SDK / Build Tools

SDK 查找顺序：

1. `%ANDROID_HOME%`
2. `%ANDROID_SDK_ROOT%`
3. `%LOCALAPPDATA%\Android\Sdk`
4. `D:\sdk`

当前本机常用路径是：

```text
D:\sdk
```

当前本机常用 ADB 路径是：

```text
D:\sdk\platform-tools\adb.exe
```

`build.bat` 会在 `%ANDROID_SDK%\build-tools` 下按目录名倒序查找第一个带 `aapt2.exe` 的版本，并设置：

```bat
set "BUILD_TOOLS=%ANDROID_SDK%\build-tools\<latest>"
set "ZIPALIGN=%BUILD_TOOLS%\zipalign.exe"
set "D8=%BUILD_TOOLS%\d8.bat"
set "AAPT2=%BUILD_TOOLS%\aapt2.exe"
set "APKSIGNER=%BUILD_TOOLS%\apksigner.bat"
```

如果没找到，会兜底到：

```text
%ANDROID_SDK%\build-tools\35.0.0
```

`android.jar` 同样在 `%ANDROID_SDK%\platforms` 下按目录名倒序选最新版本，找不到时兜底：

```text
%ANDROID_SDK%\platforms\android-35\android.jar
```

## 主要构建工具

- `tools\apktool.jar`：重打包 `launcher` 目录。
- `aapt2.exe`：编译 / link maintained 设置资源，检查 APK badging。
- `javac`：编译 `launcher\tools\java` 下的兼容 Java 代码。
- `d8.bat`：把兼容 Java helper jar 转成 dex。
- `zipalign.exe`：优先使用 `-P 16 -f 4`，失败后回退 `-p -f 4`。
- `apksigner.bat`：正式签名，启用 v1 / v2 / v3。
- `tools\signing\release.keystore`：签名 keystore。

签名参数：

```text
alias: smartisan
storepass: android
keypass: android
v1/v2/v3 signing: true
```

## Manifest 注入规则

最终 APK 不是只看 `launcher\AndroidManifest.xml`。

`build.bat` 在 apktool 打包后会把下面这个二进制 Manifest 注入到 APK：

```text
launcher\original\AndroidManifest.xml
```

对应脚本逻辑：

```bat
set "MANIFEST_BIN=%ROOT%launcher\original\AndroidManifest.xml"
pushd "%ROOT%launcher\original"
jar uf "%OUT_DIR%\launcher-unsigned.apk" AndroidManifest.xml
popd
```

因此最终 APK 的版本号以 `launcher\original\AndroidManifest.xml` 为准。文本 Manifest 和设置页字符串只是同步入口，不能只改其中一个。

通知角标服务等新增组件也必须同时进入这个二进制 Manifest。当前可使用：

```powershell
python tools\patch_badge_service_manifest.py
```

脚本会以幂等方式向保留的 AXML 字符串池和 `application` 节点追加 `SmartisanBadgeListenerService`；执行后仍必须通过最终 APK 的 `aapt2 dump xmltree` 验证组件确实存在。

## 版本号写入点

正式改版本或临时降版测试检查更新时，需要同步这三处：

当前约定：

- 当前正式版本：`v1.5.4 / 29`。
- 推荐执行 `python tools/set_launcher_version.py v1.5.4 29` 同步文本 Manifest、设置页字符串和二进制 Manifest，再进行完整构建。
- 临时降版只能用于检查更新测试；发布构建前必须恢复正式版本，并同步三个版本写入点。
- 发 GitHub / Gitee Release 前必须恢复正式版本，并用 `aapt2 dump badging build\launcher-signed.apk` 确认最终 APK 元数据；不要只看文本 Manifest。

1. 文本 Manifest：

```text
launcher\AndroidManifest.xml
```

示例：

```xml
android:versionCode="25"
android:versionName="1.5.0"
```

2. 设置页“检查更新”右侧显示文本：

```text
launcher\tools\maintained_settings_res\res\values\strings.xml
```

字段：

```xml
<string name="more_current_version_txt">1.5.0</string>
```

3. 最终注入 APK 的二进制 Manifest：

```text
launcher\original\AndroidManifest.xml
```

这里是 Android binary XML / AXML，不是普通文本，不能用普通文本编辑器直接改。

## 二进制 Manifest 改 versionName

二进制 Manifest 的字符串池是 UTF-16LE。等长版本号可以直接替换 UTF-16LE 字节。

例如临时从 `v1.5.0` 降到 `v1.4.9`，两者长度一致，可以这样改：

```powershell
@'
from pathlib import Path
p = Path('launcher/original/AndroidManifest.xml')
b = bytearray(p.read_bytes())
old = 'v1.5.0'.encode('utf-16le')
new = 'v1.4.9'.encode('utf-16le')
pos = b.find(old)
if pos < 0:
    raise SystemExit('versionName not found')
b[pos:pos + len(old)] = new
p.write_bytes(b)
print('patched versionName offset', pos)
'@ | python -
```

注意：

- 尽量使用等长版本名做临时测试，例如 `v1.5.0` -> `v1.4.9`。
- 如果长度不同，需要完整重建 AXML 字符串池，不建议临时手改。
- 文本 Manifest 当前写 `1.5.0`，最终二进制 Manifest 里通常是 `v1.5.0`，以 `aapt2 dump badging` 结果为准。

## 二进制 Manifest 改 versionCode

`versionCode` 是 manifest start tag 上的属性数据，不是简单字符串。当前解析方式如下：

```powershell
@'
from pathlib import Path
import struct

b = Path('launcher/original/AndroidManifest.xml').read_bytes()

def u16(o): return struct.unpack_from('<H', b, o)[0]
def u32(o): return struct.unpack_from('<I', b, o)[0]

sp = 8
sp_size = u32(sp + 4)
string_count = u32(sp + 8)
strings_start = u32(sp + 20)

strings = []
for i in range(string_count):
    off = u32(sp + 28 + i * 4)
    pos = sp + strings_start + off
    length = b[pos]
    if length & 0x80:
        length = ((length & 0x7f) << 8) | b[pos + 1]
        pos += 2
    else:
        pos += 2
    strings.append(b[pos:pos + length * 2].decode('utf-16le', errors='replace'))

pos = sp + sp_size
while pos < len(b):
    typ = u16(pos)
    size = u32(pos + 4)
    if typ == 0x0102:
        name_idx = u32(pos + 20)
        name = strings[name_idx] if name_idx != 0xffffffff else ''
        if name == 'manifest':
            attr_start = u16(pos + 24)
            attr_size = u16(pos + 26)
            attr_count = u16(pos + 28)
            base = pos + 16 + attr_start
            for j in range(attr_count):
                a = base + j * attr_size
                n = u32(a + 4)
                raw = u32(a + 8)
                vtype = b[a + 15]
                data = u32(a + 16)
                print(j, a, strings[n], 'raw', raw, 'type', hex(vtype), 'data', data)
    pos += size
'@ | python -
```

当前 `launcher\original\AndroidManifest.xml` 的 manifest 属性结构曾解析为：

```text
0 14568 versionCode type 0x10 data 25
1 14588 versionName type 0x3 raw -> v1.5.0
```

所以当文件结构未变化时，`versionCode` 的数据位在：

```text
14568 + 16 = 14584
```

临时降到 `24` 的写法：

```powershell
@'
from pathlib import Path
import struct
p = Path('launcher/original/AndroidManifest.xml')
b = bytearray(p.read_bytes())
struct.pack_into('<I', b, 14584, 24)
p.write_bytes(b)
print('patched versionCode data offset', 14584)
'@ | python -
```

更稳妥的做法是用上面的解析脚本动态找到 `versionCode` 属性，确认 offset 后再写。

## 一次性临时降版示例

用于测试“检查更新”从低版本更新到线上版本，例如把本地测试包临时降到 `v1.4.9 / 24`：

```powershell
@'
from pathlib import Path
import struct

# 1. 文本 Manifest
p = Path('launcher/AndroidManifest.xml')
s = p.read_text(encoding='utf-8')
s = s.replace('android:versionCode="25"', 'android:versionCode="24"')
s = s.replace('android:versionName="1.5.0"', 'android:versionName="1.4.9"')
p.write_text(s, encoding='utf-8')

# 2. 设置页当前版本字符串
p = Path('launcher/tools/maintained_settings_res/res/values/strings.xml')
s = p.read_text(encoding='utf-8')
s = s.replace('<string name="more_current_version_txt">1.5.0</string>',
              '<string name="more_current_version_txt">1.4.9</string>')
p.write_text(s, encoding='utf-8')

# 3. 二进制 Manifest
p = Path('launcher/original/AndroidManifest.xml')
b = bytearray(p.read_bytes())
old = 'v1.5.0'.encode('utf-16le')
new = 'v1.4.9'.encode('utf-16le')
pos = b.find(old)
if pos < 0:
    raise SystemExit('binary versionName not found')
b[pos:pos + len(old)] = new
struct.pack_into('<I', b, 14584, 24)
p.write_bytes(b)
print('done')
'@ | python -
```

然后构建并安装：

```powershell
.\build.bat
D:\sdk\platform-tools\adb.exe install -r -d build\launcher-signed.apk
```

## 构建后验证

检查最终 APK 版本号必须使用 `aapt2 dump badging`，不要只看源码文件：

```powershell
$bt = Get-ChildItem D:\sdk\build-tools -Directory |
  Sort-Object Name -Descending |
  Where-Object { Test-Path "$($_.FullName)\aapt2.exe" } |
  Select-Object -First 1

& "$($bt.FullName)\aapt2.exe" dump badging build\launcher-signed.apk |
  Select-String -Pattern "package:|sdkVersion|targetSdkVersion"
```

期望输出示例：

```text
package: name='com.smartisanos.launcher' versionCode='25' versionName='v1.5.0'
sdkVersion:'23'
targetSdkVersion:'28'
```

检查签名：

```powershell
$bt = Get-ChildItem D:\sdk\build-tools -Directory |
  Sort-Object Name -Descending |
  Where-Object { Test-Path "$($_.FullName)\apksigner.bat" } |
  Select-Object -First 1

& "$($bt.FullName)\apksigner.bat" verify --verbose build\launcher-signed.apk
```

安装到模拟器 / 设备：

```powershell
D:\sdk\platform-tools\adb.exe install -r build\launcher-signed.apk
```

如果是临时降版测试更新：

```powershell
D:\sdk\platform-tools\adb.exe install -r -d build\launcher-signed.apk
```

查看设备已安装版本：

```powershell
D:\sdk\platform-tools\adb.exe shell dumpsys package com.smartisanos.launcher |
  Select-String -Pattern 'versionCode|versionName|lastUpdateTime'
```

## 发版前注意

- 正式发布前必须把临时降版改回正式版本；当前为 `v1.5.4 / 29`。
- 三个版本入口必须同步：文本 Manifest、设置页字符串、二进制 Manifest。
- 最终判断只看 `aapt2 dump badging build\launcher-signed.apk`。
- `build\theme-trans-signed.apk` 是透明主题 Android 15 / Android 16 兼容安装包；发 Release 时建议和主 APK 一起上传。当前策略是用 Android 16 SDK 元数据重新打包，但保留 `targetSdkVersion=28` 兼容旧桌面逻辑。
