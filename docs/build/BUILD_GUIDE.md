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

设置资源暂存时，若已有同名 `drawable-xxhdpi-v4/*.9.png`，仅排除 `drawable-xhdpi-v4` 中 `sub_item_back_ground_single`、`sub_item_back_ground_single_disabled`、`sub_item_back_ground_single_highlight` 三个普通 PNG 副本。P10/210dpi 已证实这些副本被选择为 BitmapDrawable，拉伸卡片时会放大边框；使用已有原版 NinePatchDrawable 修复，不修改源图、设置行高、字体或布局。原始参考文件保留；480/640dpi 原生资源配置探针的选图和输出不变，不代表已完成所有手机 UI 回归。

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

## 版本号与测试／正式发布

当前测试候选版本见开发日志顶部。`-T` 表示测试版；只有明确正式发布时才改为 **1.6.0**，不因构建、安装或局部回归通过自动改成正式版。

使用现有工具一次同步三处，版本名允许变长；不要对二进制 Manifest 使用文本替换或硬编码偏移：

```powershell
python tools/set_launcher_version.py 1.6.0-T 46
.\build.bat
```

同步位置：

- `launcher/AndroidManifest.xml`：文本 Manifest。
- `launcher/tools/maintained_settings_res/res/values/strings.xml`：设置页 `more_current_version_txt`。
- `launcher/original/AndroidManifest.xml`：最终注入 APK 的二进制 Manifest。

工具解析 AXML 字符串池及属性后重建，不要求新旧版本名等长。临时降版测试也使用该工具；测试结束恢复三个入口的测试版身份。正式发布时使用同一工具写入 `1.6.0`，versionCode 按届时渠道已发布值确认，不能只删 README 中的 `-T`。最终结果以签名 APK 的 badging 为准。

正式 OTA 示例：将测试版改为 1.6.0，目标 versionCode 为 48 时，从仓库根目录执行：

```powershell
python tools/set_launcher_version.py 1.6.0 48
.\build.bat
```

用下文命令确认签名 APK 的包名为 com.smartisanos.launcher、versionName 为 1.6.0、versionCode 为 48，并核对签名证书与已安装版本一致。到 Smartisan Icon 管理后台的 OTA 页面选择「锤子桌面」，上传此 APK，版本名填 1.6.0、版本号填 48，填写更新说明后发布。用于升级时，versionCode 必须高于客户端已安装版本及该渠道当前发布版本。README 的展示版本可随正式发布更新。

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

- 当前为 `1.6.0-T / 34` 测试版；只有明确正式发布时才改为 `1.6.0`。
- 三个版本入口必须同步：文本 Manifest、设置页字符串、二进制 Manifest。
- 最终判断只看 `aapt2 dump badging build\launcher-signed.apk`。
- `build\theme-trans-signed.apk` 是透明主题 Android 15 / Android 16 兼容安装包；发 Release 时建议和主 APK 一起上传。当前策略是用 Android 16 SDK 元数据重新打包，但保留 `targetSdkVersion=28` 兼容旧桌面逻辑。


## arm64 批量节点分配桥

build.bat沿用原构建流程，在SDK检测后新增tools/patch_native_batch_capacity.py --check和tools/build_native_batch_compat.py --sdk。需已有Android NDK；优先ANDROID_NDK_HOME，否则从SDK/ndk中选择已安装版本，不自动下载。当前验证NDK28.2.13676358，Windows aarch64-linux-android23-clang++，原生桥minAPI23、16KiB LOAD对齐，普通32位入口不变。

源码launcher/tools/native/launcher_batch_compat.cpp，输出launcher/lib/arm64-v8a/liblauncher_batch_compat.so；Java桥NativeBatchAllocation.java及SceneNode.smali同步参与主APK。不要只删除原生桥／恢复旧数组偏移，否则构造及批量存储不匹配。精确底库Hash检查拒绝未知版本。修改后运行tools/tests/native_batch/run_bounds_tests.py及run_api_tests.py，实际安装与GUI另计。所有NDK路径／签名仍按本机既有配置；本补充不记录密码或凭据。
