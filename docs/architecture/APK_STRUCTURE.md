# 原始 APK 清单

## 本文档职责

本文档负责记录 `original_apks/` 目录下每个 APK 的用途、当前项目里的反编译目录、主题包身份、当前构建产物和 Release 资产筛选规则。后续查原版实现、透明主题包、毛玻璃主题包、哪些 APK 该上传 Release 时先看这里。

本文档和其他文档的边界：

- README 只写用户当前该安装哪个 APK、当前兼容哪些 Android 版本；不要把本文件的反编译目录和原始 APK 细节合并进 README。
- `docs/development/DEVELOPMENT_LOG.md` 记录为什么修、怎么验证；本文件只保留资产身份和长期规则。
- `docs/build/BUILD_GUIDE.md` 记录构建工具、签名、版本号和二进制 Manifest 修改；本文件不写版本号修改脚本。

必须同步更新本文档的情况：

- 新增、删除或替换 `original_apks/` 里的 APK。
- 新增、删除或重建反编译目录。
- 透明主题 / 毛玻璃主题包身份、包名、`theme_id` 或安装包路径变化。
- GitHub / Gitee Release 上传资产规则变化，尤其是桌面内“检查更新”应该选择或跳过哪些 APK。

项目根目录：

```text
E:\FANG\smartisan\smartisan-launcher-original-port
```

## APK 对照表

| APK | 用途 | 反编译 / 工作目录 | 当前状态 | 备注 |
| --- | --- | --- | --- | --- |
| `original_apks/com.smartisanos.launcher-3.apk` | 原版锤子桌面主 APK。当前移植项目的核心来源，包括桌面、宫格、Dock、主题桥接、图标加载、解锁动画、桌面设置入口和运行时 smali hook。 | `launcher/` | 当前可编辑构建源码 | `build.bat` 使用这个目录构建 `build/launcher-signed.apk`。解锁动画控制器和 9/12/16/20 宫格颜色资源属于主 Launcher，不依赖独立锁屏 APK；`clean_launcher_raw/` 是同一个 launcher APK 的干净参考反编译目录。 |
| `original_apks/com.smartisanos.desktop-3.apk` | 锤子桌面 / 壁纸相关伴随包。主要用来对照壁纸、桌面预览和原版 Smartisan UI 行为。 | `decoded_desktop/` | 参考反编译目录 | `desktop_orig/`、`desktop_orig_norsc/` 是更早的 desktop 反编译尝试；目前通常优先看 `decoded_desktop/`。 |
| `original_apks/com.android.settings-100.apk` | 原版 Smartisan 设置 APK。用于对照桌面设置页、预览组件、壁纸 UI 和系统设置 key。 | `build/decompiled_theme_check/com.android.settings-100/` | 临时参考缓存 | 可以查看 smali / resources，但因为缺少 Smartisan framework 资源，这个缓存没有完整 `apktool.yml`。只当只读参考。 |
| `original_apks/com.smartisanos.launcher.theme.aero.apk` | 毛玻璃 / 半透明桌面主题包。 | `build/decompiled_theme_check/com.smartisanos.launcher.theme.aero/` | 完整参考反编译目录 | 包名是 `com.smartisanos.launcher.theme.aero`，内部 `theme_id` 是 `smartisan_theme_aero`。 |
| `original_apks/com.smartisanos.launcher.theme.glime.apk` | Glime 桌面主题包。用于对照同一类主题包如何共享相同 `theme_id`。 | `build/decompiled_theme_check/com.smartisanos.launcher.theme.glime/` | 完整参考反编译目录 | 包名是 `com.smartisanos.launcher.theme.glime`，内部 `theme_id` 也是 `smartisan_theme_aero`，所以应用这类主题时包名很重要。 |
| `original_apks/com.smartisanos.launcher.theme.trans.apk` | 原始透明主题包。它是原版透明主题资源参考，不等于毛玻璃主题。 | `build/decompiled_theme_check/com.smartisanos.launcher.theme.trans/` | 完整参考反编译目录 | 包名是 `com.smartisanos.launcher.theme.trans`，内部 `theme_id` 是 `smartisan_theme_aero`；原始包 `targetSdkVersion=17`，Android 15 / Android 16 不建议直接安装。 |
| `original_apks/com.smartisanos.wallpaperprovider-100.apk` | 原版 Smartisan 壁纸提供器。用于对照内置壁纸、壁纸选择流程和 provider UI / 资源。 | `build/decompiled_theme_check/com.smartisanos.wallpaperprovider-100/` | 部分参考缓存 | Apktool 解出了 `smali/` 和 `res/`，但因为缺少 Smartisan framework 资源，manifest / yml 没有完整生成。只当只读参考。 |

## 当前构建产物

| 文件 | 当前用途 | 备注 |
| --- | --- | --- |
| `build/launcher-signed.apk` | 当前桌面主 APK。 | 当前构建版本为 `v1.5.7 / 32`，`compileSdkVersion=36`、`minSdkVersion=23`、`targetSdkVersion=28`，可安装基线为 Android 6.0+，包含 Android 15 / Android 16；不包含独立 QuickSearch APK 和在线图标库；发布 GitHub / Gitee Release 时需要上传。 |
| `build/theme-trans-signed.apk` | 当前透明主题安装包。 | 安装后包名为 `com.smartisanos.launcher.theme.trans`；`compileSdkVersion=36`、`minSdkVersion=23`、`targetSdkVersion=28`，Android 15 / Android 16 使用这个包；发布 GitHub / Gitee Release 时建议随主 APK 一起上传。 |
| `original_apks/com.smartisanos.launcher.theme.trans.apk` | 原始透明主题参考包。 | `minSdkVersion=29`、`targetSdkVersion=17`；只作资源参考，不作为 Android 15 / Android 16 安装包。 |
| `original_apks/com.smartisanos.launcher.theme.aero.apk` | 毛玻璃主题安装包 / 原版参考。 | 包名为 `com.smartisanos.launcher.theme.aero`，不能当透明主题包使用。 |

## 已删除的 APK / 目录

说明：`quicksearch_decode/` 当前工作区仍存在一份未跟踪的历史本地副本（约 27 MB），它不参与 `build.bat`，也不是 pristine 来源。本节原有记录描述的是项目目标状态；该副本应在确认 Q0/Q8 历史证据已外部归档后删除。

| APK / 目录 | 删除原因 |
| --- | --- |
| `original_apks/com.smartisanos.quicksearch-101.apk` | 已删除。当前项目改用 launcher 内自绘搜索页，不再依赖锤子独立搜索 APK。 |
| `quicksearch_decode/` | 已随独立搜索 APK 一起删除，避免后续误改、误编译。 |
| `build/SmartisanQuickSearch.apk`、`build/quicksearch*` | 已删除独立搜索 APK 的生成产物。 |

## 反编译缓存说明

- `build/decompiled_theme_check/` 是保留的 APK 反编译参考缓存。
- 日常清理 `build` 目录时不要删除 `build/decompiled_theme_check/`，除非明确想重新跑 apktool。
- 部分 APK 需要 Smartisan framework 才能完美反编译。`com.android.settings-100.apk` 和 `com.smartisanos.wallpaperprovider-100.apk` 出现缺 framework 的警告是正常的，它们解出来的 `smali/` 和 `res/` 仍然可以用于排查。
- 当前真正参与主 APK 构建的是 `launcher/`，修改 `build/decompiled_theme_check/` 里的文件不会影响 `build/launcher-signed.apk`。

## 原版修复准则

后续修复主题、壁纸、搜索、设置页和桌面渲染问题时，必须先对照原版反编译目录，不要直接按猜测改运行时逻辑。优先阅读顺序：

1. `clean_launcher/`：当前最常用的原版 launcher 干净参考目录。
2. `clean_launcher_raw/`：同一 launcher APK 的 raw apktool 参考目录，用来核对未整理过的 smali / assets。
3. `build/decompiled_theme_check/com.smartisanos.launcher-3/`：原始 launcher APK 的反编译缓存。
4. `build/decompiled_theme_check/com.smartisanos.launcher.theme.trans/`：透明主题包资源，透明主题问题必须先看这里。
5. `build/decompiled_theme_check/com.smartisanos.launcher.theme.aero/`：毛玻璃主题包资源，避免把毛玻璃和透明主题混为一谈。
6. `build/decompiled_theme_check/com.smartisanos.launcher.theme.glime/`：同类透明壁纸主题参考。
7. `decoded_desktop/` 和 `build/decompiled_theme_check/com.smartisanos.desktop-3/`：桌面 / 壁纸相关伴随包参考。
8. `build/decompiled_theme_check/com.android.settings-100/`：原版设置页、壁纸设置和开关 key 参考。

透明主题特别注意：开启透明主题时不能再触发普通主题切换消息到 `smartisan_theme_black` 或 `smartisan_theme_aero`。原版方向是保留当前普通主题，写入 `launcher_grid_theme=1` 作为透明覆盖状态；关闭透明时再恢复之前保存的普通主题。修透明主题前必须先看 `build/decompiled_theme_check/com.smartisanos.launcher.theme.trans/` 和 `clean_launcher/` 里的原版主题初始化，不要把它改成普通黑主题或毛玻璃主题的变体。

## 透明主题结论

透明主题是一个“包名特定”的主题变体：

```text
resource theme_id: smartisan_theme_aero
launcher runtime id: smartisan_theme_trans
theme package:     com.smartisanos.launcher.theme.trans
apk path:          original_apks/com.smartisanos.launcher.theme.trans.apk
install apk:       build/theme-trans-signed.apk
```

注意：

- 不能把透明主题简单等同于 `com.smartisanos.launcher.theme.aero`，那是毛玻璃主题包。
- `com.smartisanos.launcher.theme.trans.apk` 的内部 `theme_id` 虽然也是 `smartisan_theme_aero`，但包名不同，资源效果不同。
- Android 新版本可能会拦截旧版透明主题 APK，因此当前移植版安装透明主题时使用 `build\theme-trans-signed.apk`，不要直接安装 `original_apks\com.smartisanos.launcher.theme.trans.apk`。当前构建包已用 Android 16 SDK 元数据重新打包，仍保留 `targetSdkVersion=28` 以兼容旧桌面逻辑。
- 当前做法改回原版方向：桌面设置里的“透明主题”开关只写入原版透明模式键 `launcher_grid_theme`，开启为 `1`、关闭为 `0`；普通主题 ID 只写入 `launcher_theme`。
- 透明主题包用于补齐原版透明资源注册，但不要把 `smartisan_theme_trans` 当普通主题 ID 写进 `launcher_theme`，也不要把它送进普通主题切换队列；否则关闭透明主题后容易回不到之前主题，甚至出现毛玻璃 / 透明资源混用。
- 原版主题管理器 `X.ca()` 会清空主题表，之后 `X.va()` 会按当前透明状态查 `smartisan_theme_trans`；移植版必须在 `X.da()` 调 `X.va()` 前重新注册 `com.smartisanos.launcher.theme.trans`，否则透明状态会回落到黑主题资源，表现为黑底 / 黑宫格 / Dock 混用。
- 开启或关闭透明主题后要让 Launcher 重新走主题初始化。只刷新运行时 flag 或只走普通 `J.a(theme)` 主题切换事件都容易出现设置页开关已经变了、桌面仍显示上一套资源的问题。
- 透明主题切换需要在加载动画遮住界面后重启 Launcher，让 `O.V()` / `Constants.isTransparentTheme` / `X.va()` 从启动链路重新选择透明主题资源。普通主题重载可以继续优先走原版 `J.a(theme, theme_changing)` / `LoadingUI` / `ChangeThemeEvent`，但不要直接裸 `startActivity`。普通 Android 上同进程重启 `Launcher` 会触发原版 `J.b()` 的 relaunch 保护并杀进程，因此切换前要写入跨进程 loading pending 标记，新 Launcher 进程 `onCreate` 先显示加载层，再初始化桌面。
- Launcher 启动时由原版 `O.V()` / `Constants.isTransparentTheme` / `X.va()` 判断透明覆盖状态；在普通 Android 设备没有系统 Settings 写入权限时，会从 launcher 私有 prefs 读取同名 0/1 作为兼容兜底。读取顺序以私有 prefs 为先，避免旧的系统 Settings 值把设置页开关状态覆盖掉。
- 透明主题需要 `com.smartisanos.launcher.theme.trans` 主题包存在；没有主题包时设置页不允许开启透明主题，以避免半透明状态和主题纹理不一致。
- 安装顺序：先安装 `build/launcher-signed.apk`，再安装 `build/theme-trans-signed.apk`。ADB 命令为 `adb install -r -d build\theme-trans-signed.apk`，安装后用 `adb shell pm list packages | findstr com.smartisanos.launcher.theme.trans` 验证。
- 透明主题开启后只允许使用默认翻页动画；设置页会隐藏“桌面翻页动画”入口，`readPageAnimation()` / `writePageAnimation()` 会把动画值钳制为 `0`，不要绕过这个限制。
- “桌面壁纸模糊效果”对应原版 key `original_launcher_wallpaper_blur_on`，原版逻辑是更新 `Constants.isTransWallpaperBlur` 并调用 `Eb.lh()` 重建 `t_blur_background`，不是切换成黑色背景，也不需要重启整个桌面。
- 原版会通过 `Constants.initGaussianDarkLight()` 分析当前壁纸明暗，并在毛玻璃 / 透明壁纸主题下选择普通资源或 `_light` 后缀资源；因此应用文字颜色不是按时间变化，而是按壁纸区域明暗变化。
- 透明主题壁纸优先按原版从 `WallpaperManagerSmt` / 系统 `WallpaperManager` 获取系统裁剪后的壁纸 drawable。部分普通 Android 设备返回 null 时，移植版再退回到 `peekDrawable()` / `getFastDrawable()`；仍失败时才使用 launcher 保存的壁纸副本，并按屏幕比例中心裁剪，不能直接把整张原图拉伸到桌面纹理。
- 透明主题 Dock 资源已按 `original_apks/com.smartisanos.launcher.theme.trans.apk` 回归。`dock_back.png` 顶部原版是轻暗边加低 alpha 半透明层，不是手工渐隐白膜；后续不要再手调透明主题 Dock 资源，除非先重新对照原始 APK 和 `clean_launcher/` 证明需要改。

## 检查更新资产规则

- 桌面内“检查更新”只升级桌面主 APK，Release 资产应优先命名为 `SmartisanLauncher-版本.apk` 或 `launcher-signed.apk`。
- 同一个 `launcher-` Release 可以同时上传 `build/theme-trans-signed.apk`，但更新逻辑会跳过透明主题包；透明主题包仍按安装说明单独安装。
- 更新逻辑会跳过 `SmartisanQuickSearch.apk`、主题 APK、`theme-trans-signed.apk` 等非桌面主程序资产，避免误把附加包当成桌面覆盖更新包。
- 更新包下载和安装走系统 `DownloadManager` 标准链路；安装时只使用 `DownloadManager.getUriForDownloadedFile(downloadId)` 返回的 `content://downloads/...` URI，并附加 `FLAG_GRANT_READ_URI_PERMISSION` 拉起系统安装器。不要改回私有文件路径、`file://` 或自建 `PackageInstaller.Session`。
- 下载时会保存 Release `tag`、APK 文件名和 `downloadId`。再次检查到同一个线上版本时，`STATUS_SUCCESSFUL` 显示“安装”并复用已下载包，`RUNNING/PENDING` 显示“下载中”，失败或资产变化才清理旧缓存重新下载。
