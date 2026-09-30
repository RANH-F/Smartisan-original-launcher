# MEMORY.md

## 文档职责

本文档用于保存本项目给 Codex / AI Agent 使用的长期记忆。

它只记录长期有效的项目事实、稳定决策、兼容性结论、重要路径、用户明确纠正过的规则和反复踩坑后的结论。

详细修复过程、每日记录、验证日志和历史决策流水，继续记录在 `docs/development/DEVELOPMENT_LOG.md`。

本文档不替代：

* `docs/development/DEVELOPMENT_LOG.md`
* `docs/build/BUILD_GUIDE.md`
* `docs/architecture/APK_STRUCTURE.md`
* `README.md`

---

开发理念

优先恢复。

优先复用。

不要重新设计。

长期规则

不要：

-   重写已有功能。
-   重画已有资源。
-   用普通Android方案替代原版。

## 项目定位

本项目是 Smartisan Launcher 原版桌面的兼容移植和恢复项目。

目标不是重新做一个普通 Android Launcher，而是在普通 Android 设备和现代厂商 ROM 上尽量保留原版 Smartisan Launcher 的交互、视觉、动画和使用体验。

项目当前保留或恢复的核心方向包括：

* 12 / 20 宫格
* Dock
* 文件夹
* 多页桌面管理
* 页面隐藏
* 页面锁定
* 隐私密码
* 桌面设置
* 原版主题
* 透明主题
* 毛玻璃主题
* 壁纸链路
* 翻页动画
* 四指横滑切换主题
* 双指捏合总览 / 编辑状态
* 桌面下滑进入内置搜索
* 动态天气和日历
* 通知角标
* 横扫清除角标
* 在线图标库
* 图标包和自定义图标
* 应用分身和多用户识别
* 解锁动画
* 检查更新机制

本项目不是普通 Gradle-only Android 项目，不能按普通新建 Android App 的方式处理。

## 现代 Android Launcher 生命周期正式架构（冻结）

Package、Profile、安装、卸载、升级、启动 reconcile 与系统驱动删除的正式运行链固定为：

```text
Android System
→ PackageEventGateway
→ PackageStateRepository + ProfileRepository
→ LauncherModelRepository
→ RemovalGateway（仅系统永久删除许可）
→ 原版 item-level Aa.a(ItemInfo) 执行器
```

`LauncherItemKey(userSerial, packageName, componentName)` 是正式身份键。`PackageStateRepository` 是唯一 Package 状态事实源；`ProfileRepository` 是唯一 Profile 状态事实源和 legacy user / serial 转换入口；`PackageEventGateway` 是唯一系统 Package Event 标准化入口；`LauncherModelRepository` 是唯一业务 Model 写入与系统删除执行入口；`RemovalGateway` 是唯一系统驱动永久删除许可入口。

不得新增并行 Repository、Gateway、CompatBridge、Manager、状态枚举或 package-only identity。`UNKNOWN`、`TEMPORARILY_UNAVAILABLE`、Profile unavailable/locked/quiet、`REPLACING`、查询异常和 component resolve failure 均只能保留 Item；只有 `REMOVED_CONFIRMED` 可通过 RemovalGateway 进入 item-level 删除。Scene/View/ActiveIcon/Receiver/Installer 不得自行删除正式 DB Item，也不得重新调用 package-wide `Aa.D`。

Component 生命周期是后续独立专项：仅处理 update 新增 Launcher Activity、update 删除 Launcher Activity、component rename/migration 与 stale component cleanup；不得混入 Package REMOVE，不得把 component 解析失败转换为 Package `REMOVED_CONFIRMED`。

---

## 当前可信文档

处理项目问题时，应根据任务阅读这些文档：

```text
AGENTS.md
MEMORY.md
docs/INDEX.md
docs/development/DEVELOPMENT_LOG.md
docs/build/BUILD_GUIDE.md
docs/architecture/APK_STRUCTURE.md
README.md
docs/development/CLEANUP.md
icons/README.md
```

各文档用途：

* `AGENTS.md`：AI 修改项目时必须遵守的施工规则。
* `MEMORY.md`：长期有效项目记忆。
* `docs/development/DEVELOPMENT_LOG.md`：BUG 根因、修复方式、验证过程、回归注意、当前状态总览。
* `docs/build/BUILD_GUIDE.md`：构建工具、PATH、签名流程、版本号写入点、二进制 Manifest 修改方式。
* `docs/architecture/APK_STRUCTURE.md`：原始 APK、反编译目录、主题包身份、构建产物、Release 资产规则。
* `README.md`：面向用户的项目介绍、当前能力和安装说明。
* `docs/development/CLEANUP.md`：可清理候选项，不代表可以直接删除。
* `icons/README.md`：在线图标库命名、图片要求、加载顺序和索引生成规则。

如果文档冲突，优先相信：

1. 最新真机验证结果
2. `docs/development/DEVELOPMENT_LOG.md` 当前状态总览和最新日期记录
3. `MEMORY.md`
4. 专项文档
5. `README.md`

---

## 本地路径记忆

当前主项目常见本地路径：

```text
E:\FANG\smartisan\smartisan-launcher-original-port
```

有时需要参考 maintained 项目：

```text
E:\FANG\smartisan\smartisan-launcher-maintained
```

`smartisan-launcher-maintained` 是参考项目，不是当前构建源码。

适合参考 maintained 的场景：

* maintained 风格设置页
* 设置项 UI
* 普通 Android 兼容实现
* 图标识别策略
* Java helper 实现
* 资源组织方式
* 已验证过的功能思路

不应直接从 maintained 覆盖当前项目的场景：

* 原版 Launcher 核心交互
* 原版动画
* 原版主题切换链路
* 原版文件夹几何
* 原版 12 / 20 宫格布局
* 原版 activeicon 动态天气 / 日历链路
* 原版解锁动画链路
* 原版 Smali 行为

参考 maintained 时，要先判断是否适合当前原版移植方向。

---

## 原版代码和核心目录记忆

原版主 Launcher APK：

```text
original_apks/com.smartisanos.launcher-3.apk
```

当前核心工作目录：

```text
launcher/
```

当前最常用的原版干净参考目录：

```text
clean_launcher/
```

同一 Launcher APK 的 raw apktool 参考目录：

```text
clean_launcher_raw/
```

原始 Launcher APK 的反编译缓存：

```text
build/decompiled_theme_check/com.smartisanos.launcher-3/
```

桌面 / 壁纸相关伴随包：

```text
original_apks/com.smartisanos.desktop-3.apk
decoded_desktop/
build/decompiled_theme_check/com.smartisanos.desktop-3/
```

原版 Smartisan 设置 APK：

```text
original_apks/com.android.settings-100.apk
build/decompiled_theme_check/com.android.settings-100/
```

原版 Smartisan 壁纸提供器：

```text
original_apks/com.smartisanos.wallpaperprovider-100.apk
build/decompiled_theme_check/com.smartisanos.wallpaperprovider-100/
```

透明主题参考包：

```text
original_apks/com.smartisanos.launcher.theme.trans.apk
build/decompiled_theme_check/com.smartisanos.launcher.theme.trans/
```

毛玻璃主题参考包：

```text
original_apks/com.smartisanos.launcher.theme.aero.apk
build/decompiled_theme_check/com.smartisanos.launcher.theme.aero/
```

Glime 同类主题参考包：

```text
original_apks/com.smartisanos.launcher.theme.glime.apk
build/decompiled_theme_check/com.smartisanos.launcher.theme.glime/
```

重要规则：

* `launcher/` 才是当前主 APK 构建源码。
* `build/decompiled_theme_check/` 主要是参考缓存，修改它不会影响主 APK 构建。
* `original_apks/` 是重要原始归档，不建议删除。
* 修原版行为前要先对照 `clean_launcher/` 或 `clean_launcher_raw/`。

---

## 产品方向记忆

必须尽量保留 Smartisan Launcher 原版体验。

兼容性修复不能随意把原版行为替换成普通 Android 行为。

用户可见体验优先于理论正确性。

真实设备日志优先于 AOSP 理论。

如果原版实现和普通 Android 习惯冲突，先分析原版为什么这样做，再决定是否做兼容适配。

不要为了兼容某个 ROM，把原版交互、动画或视觉特征改没。

---

## 构建长期记忆

项目已有构建流程，优先使用仓库根目录下的：

```powershell
.\build.bat
```

`build.bat` 会自动处理：

* maintained 设置资源构建
* launcher 重打包
* 二进制 Manifest 注入
* Java 兼容宿主编译为 `classes2.dex`
* zipalign
* apksigner 签名

构建产物主要包括：

```text
build\launcher-signed.apk
build\launcher-unsigned.apk
build\launcher-aligned.apk
```

`build.bat` 会自己临时设置 `JAVA_HOME` 和 `PATH`，不要依赖当前 PowerShell 全局 PATH。

普通 PowerShell 里直接运行 `java` 失败，不代表 `build.bat` 不能编译。

当前常用 Android SDK 路径：

```text
D:\sdk
```

当前常用 ADB 路径：

```text
D:\sdk\platform-tools\adb.exe
```

最终 APK 不是只看文本：

```text
launcher\AndroidManifest.xml
```

最终注入 APK 的二进制 Manifest 是：

```text
launcher\original\AndroidManifest.xml
```

版本号修改必须同步：

```text
launcher\AndroidManifest.xml
launcher\tools\maintained_settings_res\res\values\strings.xml
launcher\original\AndroidManifest.xml
```

正式改版本推荐使用：

```powershell
python tools/set_launcher_version.py v1.5.3 28
```

最终 APK 元数据以构建后检查为准，不要只看文本 Manifest。

---

## APK 和 Release 记忆

当前主桌面 APK：

```text
build\launcher-signed.apk
```

当前透明主题安装包：

```text
build\theme-trans-signed.apk
```

原始透明主题 APK：

```text
original_apks/com.smartisanos.launcher.theme.trans.apk
```

原始透明主题 APK 只作资源参考，不作为 Android 15 / Android 16 的推荐安装包。

安装顺序：

```text
先安装 build\launcher-signed.apk
再安装 build\theme-trans-signed.apk
```

透明主题包验证命令：

```bat
adb shell pm list packages | findstr com.smartisanos.launcher.theme.trans
```

桌面内“检查更新”只升级桌面主 APK。

Release 资产应优先命名为：

```text
SmartisanLauncher-版本.apk
launcher-signed.apk
```

更新逻辑应跳过：

```text
SmartisanQuickSearch.apk
theme-trans-signed.apk
其他主题 APK
```

更新包下载和安装应走系统 `DownloadManager` 标准链路，不要改回私有文件路径、`file://` 或自建 `PackageInstaller.Session`。

---

## 主题长期记忆

透明主题、毛玻璃主题和普通主题不能混为一谈。

透明主题是一个“包名特定”的主题变体：

```text
resource theme_id: smartisan_theme_aero
launcher runtime id: smartisan_theme_trans
theme package:     com.smartisanos.launcher.theme.trans
apk path:          original_apks/com.smartisanos.launcher.theme.trans.apk
install apk:       build/theme-trans-signed.apk
```

毛玻璃主题包是：

```text
com.smartisanos.launcher.theme.aero
```

透明主题规则：

* 不能把透明主题简单等同于毛玻璃主题。
* `com.smartisanos.launcher.theme.trans.apk` 的内部 `theme_id` 虽然也是 `smartisan_theme_aero`，但包名不同，资源效果不同。
* 当前移植版安装透明主题时使用 `build\theme-trans-signed.apk`。
* 桌面设置里的“透明主题”开关只写入原版透明模式键 `launcher_grid_theme`。
* 开启透明为 `launcher_grid_theme=1`。
* 关闭透明为 `launcher_grid_theme=0`。
* 普通主题 ID 只写入 `launcher_theme`。
* 不要把 `smartisan_theme_trans` 当普通主题 ID 写进 `launcher_theme`。
* 不要把透明主题送进普通主题切换队列。
* 透明主题开启后只允许使用默认翻页动画。
* `readPageAnimation()` / `writePageAnimation()` 会把动画值钳制为 `0`，不要绕过限制。
* 透明主题 Dock 资源已按原始透明主题包回归，不要为了视觉微调手调，除非先重新对照原始 APK 和 `clean_launcher/`。

主题切换长期规则：

* 普通主题和毛玻璃主题必须复用原版 `ThemeItemActivity` 时序：保存主题和来源，向 `ChangeThemeHandler` 提交当前设置页截图，结束设置页并返回 HOME，最后由 `J.onResume()` 消费 `a.r.sj` 中唯一的 `MESSAGE_CHANGE_THEME`。
* maintained 设置宿主不得在设置页前台直接调用 `a.r.a(Message)` 或 `a.r.b(Message)`；这会绕过 Launcher/GL 生命周期门控，可能造成旧毛玻璃背景残留或主题资源卸载崩溃。
* 透明开关不得借当前普通 backing theme 生成 `MESSAGE_CHANGE_THEME`，也不得在 `Launcher.onResume()` 中把合成的 `smartisan_theme_trans` 对象交给 `J.a(theme, message)` 热加载。真机已确认该路径会造成 GL 停止出帧，并可能因 `t_blur_background` / `t_blur_anim_background` 资源状态错配而崩溃。
* 透明覆盖的资源、`Constants` 和 GL 场景必须在新的 Launcher 进程中一次性初始化；透明开关使用独立冷启动路径。`Activity.recreate()` 和杀进程不得作为普通/毛玻璃主题或天气内容更新的公共刷新方案；宫格迁移如需重载必须保持为独立路径。
* 动态天气/日历的“内容更新”和“模式切换”必须区分：天气数据、日期变化使用已有定向更新链；启用/关闭模式会改变 Cell 是否创建 `WeatherView` / `CalendarView` 子节点，必须先完成原版图标数据库刷新，再冷启动重建 Launcher 场景。单独发送 `update_icon` 只能替换位图，不能完成普通节点与动态节点的类型转换。

透明主题切换需要让 Launcher 重新走主题初始化，避免设置页开关已经变了但桌面仍显示上一套资源。

---

## Launcher 行为长期记忆

本项目已经保留或恢复了大量原版行为，包括：

* 单指横滑翻页
* 四指横滑切换主题
* 双指捏合进入 / 退出多页总览或编辑状态
* 桌面下滑进入内置搜索页
* 底部横扫清除通知角标
* 12 / 20 宫格布局
* 页面隐藏
* 页面锁定
* 隐私密码
* 文件夹预览和展开布局
* 原版主题动画
* 透明主题覆盖状态
* 动态天气和日历 activeicon 链路
* 通知角标和文件夹角标汇总
* 应用分身和多用户识别

修改这些行为时，必须优先确认是否会破坏原版交互链路。

不要为了普通 Android 习惯而删除原版逻辑。

四指横滑和双指捏合不是待移植功能，它们已经在当前代码中有实现。后续重点是不同分辨率、触控采样率和厂商 ROM 的真机回归。

---

## 启动与窗口兼容记忆

### 默认桌面设置

Shizuku 默认桌面通道已移除，不能恢复。vivo Android 9 已验证其 Shell 设置在按 Home 后会被厂商 `HOMERECOVERY` 覆盖，无法提供可靠跨 ROM 结果。默认桌面入口只能保留 Android 10+ Role 与系统默认应用设置；不得在启动、恢复、广播或后台任务中自动修改 HOME。

### 桌面备份与恢复

`table_pageinfos.pageIndex` 不是唯一键，也不能假定为非负；原版数据库可含特殊页、预分配空页和相同索引的记录。备份/恢复校验必须以 `_id` 为页表唯一身份，并完整保留 `pageIndex/status/containment`。恢复追加当前新增应用时，应以实际含根级图标的最后一页为基准，不能以页表的预分配容量作为最后页面。备份与恢复只能使用 SAF，恢复继续走既有 `:reload` 首帧确认链；未完成 Android 8–16 多 ROM 真机矩阵前不得声称全机型已验证。

### 关于页使用小技巧

“关于”页不再提供操作日志、文件扫描、录制或分享入口，也不得创建 `operation_logs`。静态“使用小技巧”复用 `setting_follow_view.xml` 的分组标题、间距、颜色和 `setting_item_up` / `more_item_middle` / `setting_item_down` 列表背景，内容只由中英文 strings 资源提供，不添加后台任务或跳转逻辑。

原版 Launcher 的 `LauncherActivityTheme -> @style/Animation` 在二进制资源表中曾引用 Smartisan framework 私有动画资源 `0x010a0177/0x010a0178`。普通 Android framework 不保证存在这些ID；vivo Android 9已确认会在WindowManager窗口布局阶段反复抛`Resources$NotFoundException`，表现为Launcher进程和Surface仍在但屏幕只剩系统壁纸。

当前兼容基线是只把该样式中9个task/wallpaper过渡引用改为`@null`，保持原版“Launcher窗口不做系统Activity过渡”的意图。不得用固定延迟、强制重启、重复`requestRender()`或修改Launcher内部动画掩盖此问题。

`launcher/resources.arsc`是当前构建直接复制的二进制资源表。以后若从原版APK刷新或替换该文件，必须运行：

```powershell
python tools/patch_launcher_window_animation_resources.py launcher/resources.arsc
python tools/patch_launcher_window_animation_resources.py launcher/resources.arsc --check
```

并对最终`build/launcher-signed.apk`执行`aapt2 dump resources`，确认`style/Animation`相关项均为`@null`且包内不再存在`0x010a0177/0x010a0178`。只检查文本`clean_launcher/res/values/styles.xml`不够，因为最终判断以二进制`resources.arsc`为准。

---

## 编辑模式异形屏标题长期记忆

桌面双指捏合后的“已选择 [n/N] 个应用程序”不是 Android `TextView`，真实入口是 `launcher/smali/com/smartisanos/launcher/view/Lc.smali` 的 `a(g,float,int)`，节点名为 `status_bar_text`。以后修该标题位置必须改这条 SMEngine 链，不能只改普通 View、设置宿主或其他同文案节点。

标题 X 坐标必须由运行时 `WindowInsets/DisplayCutout`、全部 cutout bounding rect、真实标题纹理宽度和 scene/decor 坐标比例计算：未相交保持原版居中；相交时优先可容纳标题的左安全段，再尝试右侧和最大安全段；多开孔先合并。不得恢复 `sa.ub()` 机型判断、`getStatusBarTextLeftMargin()` 固定边距、vivo/设备专用偏移或按分辨率写死坐标。

中心宽刘海可能让完整标题无法仅靠 X 位移同时做到完全避孔、完整显示和保留屏幕边缘留白。该回退必须保持标题完整，并以系统真实 safe inset 保护圆角边缘；不得通过缩小字号、改文案、改 Y 或移动整个 LayoutProperty 来规避。布局和 Insets 改变后要重新计算，SMEngine 节点更新必须回到 GLThread。

截至 2026-08-09，vivo X21A Android 9 的 1080×2280 中心刘海 `Rect(358,0-722,79)` 已真机确认标题不再居中遮挡且不贴左边；无刘海、左右挖孔、水滴/药丸孔和多开孔为算法覆盖，不得表述成所有机型均已真机验收。

---

## 动态天气和日历记忆

动态天气和日历保留 Smartisan 原版 activeicon 分层和切换回调。

普通状态显示缓存后的静态合成纹理。

更新时临时显示 `WeatherView` / `CalendarView`，动画完成后回写静态纹理并隐藏动态节点。

天气 / 日历内部继续使用原版局部坐标，不随全局图标大小二次缩放。

实时 `WeatherView` / `CalendarView` 保留原版 mode-aware `nc(vm)` 定位和 `useSmallActiveIcon(mode)` 分支。

动态天气 / 日历几何已有定版结论，相关比例和原版 `sq()` 校正逻辑不要随意改成近似值或固定像素。

天气数据源长期结论：

* 中国城市优先使用本地城市库和中国天气网。
* 不应把境外服务作为中国城市首选。
* 境外服务失败时要记录明确失败原因。
* 城市或自动 / 手动模式改变时要清除旧地点温度、天气代码和数据源，避免显示上一城市旧数据。

---

## 图标和资源长期记忆

在线图标仓库和主 Launcher 仓库是分开的。

图标系统的普通静态链必须由 Source 与 Geometry 分离：`RAW Drawable/Bitmap -> canonical source renderer -> original resize classification -> NORMAL/RESIZED content box -> clone/profile badge -> original shadow -> final texture`。DEFAULT、IMPROVED、PACK、CUSTOM、RESOURCE 只决定 source type、identity 和 RAW source；同一 classification 必须使用同一 content box，禁止 DEFAULT-only、managed-only、固定 `0.90`、package/sourceType/device 专用倍率或把普通应用最终 texture 当作备份真相。

原版 `clean_launcher_raw` 的 MODE_9 资源明确区分 `icon_size_origin` 与 `icon_size_origin_resize`（xxhdpi 192/166、sw411dp 256/222）；原版 `Aa` 和 `e/s` 都在 `IconColor.ColorInfo.resize` 为真、非小图标的条件下使用较小的第二 content box。因此不得再把 `icon_size_origin_resize == icon_size_origin` 作为冻结结论。resize classification 只能沿用原版 `IconColor.resize` 或经验证的等价判断，不能以面积、凸包、fill ratio、内部留白、图标形状、包名或 source type 取代它。跨分辨率比较仍以 `visualEnvelope/cellWidth` 为准。

DEFAULT 普通应用保留 RAW source canvas 与原版 `IconColor.resize` 的 Content Box 语义；禁止自定义 area/package/shape/device magic compensation、alpha crop 或 transparent-padding crop。经真机验证后，允许 DEFAULT 在固定 artwork box 内使用 Android Launcher 式 `IconNormalizer` 可见 alpha 凸包统一 scale；不得拆 Adaptive mask、改变源码宽高比或影响 IMPROVED/PACK/CUSTOM/RESOURCE。

AdaptiveIconDrawable 必须作为 Drawable 在 canonical canvas 上绘制，保留系统自身 mask/clipping 语义；不得拆 foreground/background，也不得因 opaque background 而把完整方形 Bitmap 铺满。最终缓存是可丢弃派生数据，键必须隔离 component、userSerial/profile、sourceType/sourceIdentity/sourceHash、scene/grid、icon size、contentBoxType、geometry revision、adaptive/legacy kind、badge 和 shadow revision。主应用与分身共享本体 geometry，分身只增加一次原版面具。

QuickLaunch 使用独立合同，且必须与普通 Application 图标链完全隔离。微信/支付宝等已验证 provider-decorated Shortcut 的正式链固定为：`LauncherApps.getShortcutIconDrawable() provider-first -> normalize -> source_already_decorated -> smartisan.shortcut.final_icon=true -> QuickLaunchItem.z() direct serialize -> table_icons/iconData -> quick-launch-final-source texture`。这类 provider bitmap 已经包含逐快捷方式头像与圆环/外框，**不得再调用 `e.s.a()` 重画或“补圆环”**；`A.smali / EVENT_INSTALL_OR_UPDATE_SHORTCUT` 只保留原版数据库业务流，不承担 provider/final_icon 图标特判。其他非 provider-decorated 普通快捷方式才继续使用原版 `d.j.o() -> e.s.a()` 合成。QuickLaunch 的持久身份为 `packageName + shortcutId + userSerial`；备份/恢复和 portable source 必须保持该身份与 target profile serial，不得按 package-only 或固定 user 10 推断。普通应用备份保持 source-first，cache 永远可重建。

Weather/Calendar 内部布局、内容、日期位置、阴影、timeline 和动画冻结；动态状态只允许通过 ActiveIcon root 外部 geometry 对齐普通静态外框。动态关闭后的 Weather/Calendar 静态 fallback 共享 `IconVisualMetrics` 与原版阴影，并走同一外部 envelope 合同，不得额外按形状/面积缩小。桌面设置齿轮保留特殊 renderer，但只共享同一用户尺寸与跨分辨率物理栅格原则。

截至 2026-08-08，vivo X21A Android 9 的 1080/12 宫格/当前 100% 已完成静态来源、Weather/Calendar 静态/动态切换和 `230/295` 外部 geometry 验证；这只证明冻结实现的当前真机基线。50/150、1080 20 宫格、1440/2K 12/20 宫格、至少一个 720 或 1220/1260 中间分辨率、完整 CUSTOM/RESOURCE/图标包、冷启动与设备重启保持尚未全部完成，不得提前写 `ICON_SYSTEM_VALIDATION_FROZEN=true`，也不得把“算法已统一”表述成“所有手机已真机验收”。

普通桌面图标尺寸必须区分资源坐标系：当前用户已确认正常的 1080 坐标系保持 12 宫格 `160/205`、20 宫格 `118/152`；1440 坐标系 `values-sw411dp` 使用原版 12 宫格 `192/246`、20 宫格 `138/178`。不得为了统一数值再次把 1440 基线降成 1080 尺寸，也不得解除 `LayoutPropertyAdapter` 的整体放大上限去污染普通桌面。

高分辨率图标不得先生成 1080/低分辨率纹理，再通过 SceneNode scale 放大。DEFAULT、IMPROVED、PACK、CUSTOM 和 RESOURCE 均从当前有效原始 Drawable/Bitmap 一次绘制到最终 physical artwork，再生成最终阴影纹理。Surface 物理像素与 SMEngine 逻辑窗口不一致时，继续使用横向 physical scale 生成对应物理像素。源素材自身分辨率不足时只能记录 `SOURCE_LIMITED`，不能把插值放大描述为高清。

普通桌面物理纹理的额外 raster 比例只能取渲染 Surface 与 Launcher 逻辑窗口的横向比例 `scaleX`；全面屏的状态栏、导航栏会使 `scaleY` 偏大或偏小，高度比例不得参与图标大小。普通静态应用使用当前 Cell 的真实纹理边长从原始源一次合成；打开文件夹、关闭文件夹预览、动态时钟和特殊黑白链不得被该入口接管。

普通静态源不能只把源 PNG 画入最终纹理后依赖素材自带阴影；否则不同来源会因是否烘焙阴影而视觉不一致。所有普通静态来源必须在最终 physical artwork 上复用原版 `HolographicOutlineHelper` 和当前 dark/light/transparent 阴影常量，再生成同一最终纹理。低 alpha 外部像素只从阴影蒙版剔除，不能裁剪或二次重采样可见图标本体。

在线图标路径规则：

```text
icons/drawable/<packageName>.png
```

图片要求：

* PNG
* 建议 256×256 或 512×512
* 必须保留透明背景
* 文件名必须使用真实应用包名，区分大小写
* 不要使用截图背景、网格或白底
* 单文件不超过 512 KiB
* 边长 48–1024 px

在线图标加载顺序：

1. Gitee 镜像仓库 `Smartisan-original-launcher-download` 的 `master` 分支
2. GitHub `main` 分支镜像
3. 两个镜像都失败时使用应用原图

新增或替换图片后执行：

```powershell
python tools/generate_icon_index.py
```

如果更新同名图片后需要让已下载用户立即刷新，应递增代码中的缓存目录版本，例如：

```text
online_icon_cache_v3 -> online_icon_cache_v4
```

不要发明 `icon_10001.png` 这类占位命名。

图标处理要注意：

* PNG 透明通道
* 真实透明边缘像素
* 图标视觉尺寸
* 居中
* 阴影
* Smartisan 风格一致性
* 图标包 appfilter
* 自定义图标
* redirect
* 系统原图回退
* 在线缓存刷新

不要只改画布尺寸而忽略实际视觉大小。

* **桌面设置按钮（齿轮）的高清逻辑**：桌面设置按钮使用内存合成纹理 `***settingbuttonup***` / `***settingbuttondown***`。不能仅依靠 `SceneNode.setImageName()` 的路径过滤机制来提供高清化；必须在 `Ec.wz()` 使用 `LayoutProperty.setting_button` 逻辑尺寸和 `NormalIconRasterSpec.rasterScale` 缩放合成，否则会产生缩放模糊。

---

## QuickLaunch 小程序快捷方式长期冻结规则

截至 2026-08-15，V2458A / Android 16 真机已经确认：重新添加微信小程序“云销盒”后，桌面能够显示该小程序自己的头像与 provider 圆环/外框，微信主应用仍保持自己的独立图标。该视觉结论是当前 QuickLaunch 图标链的长期 Golden Baseline。

必须记住真正根因：此前头像/圆环丢失的最终 owner 在**桌面渲染源隔离**，不是 `ShortcutCompatBridge`、`A.smali` 或 `e.s.a()` 合成次数。`itemType=1` 的 `QuickLaunchItem` 一度误入普通 Application 的 `IconRasterDiagnostics` source resolver/cache，按 `packageName=com.tencent.mm` 重新解析成微信宿主应用图标；`ItemInfo.Oe()` 还会错误套用普通应用分身 badge。修复后必须永久保持以下边界：

* `itemType=1` 必须退出普通 Application 的 `useDesktopStaticPipeline()`、`useManagedDesktopPipeline()`、`shouldUseHighResolutionDesktopRaster()`、`prepareStaticSource()`、`loadCurrentDesktopDrawable()`、普通 Application composer 与 DEFAULT / IMPROVED / PACK / CUSTOM / RESOURCE resolver。
* `ItemInfo.Oe()` 对 QuickLaunch 直接使用自己的 `iconData/table_icons`，不得重新按 `packageName` 取得宿主 APP Drawable，也不得附加普通应用分身 badge。
* QuickLaunch texture/source identity 必须独立为 `quick-launch-final-source`，至少隔离 `packageName + shortcutId + userId + userSerial + iconData/iconRawData hash`；两个同属 `com.tencent.mm` 的不同小程序绝不能共享微信主应用 texture。
* 微信/支付宝等 provider-decorated Shortcut 必须 `LauncherApps.getShortcutIconDrawable()` 优先；只有 provider artwork 不可用时才允许使用已验证的 wrapper/portable/DB fallback。不得静默使用 `PackageManager.getApplicationIcon(packageName)` 冒充小程序图标。
* provider-decorated 图标必须 `source_already_decorated -> final_icon -> direct serialize`，**`e.s.a()` 调用次数为 0**。不得再恢复“RAW -> e.s.a() -> FINAL”给微信/支付宝补圆环的错误方案。
* `A.smali` 不得新增 provider/final_icon 特判或 QuickLaunch 图标控制流。数据库仍走原版 `DatabaseUpdater.Action.maa -> EVENT_INSTALL_OR_UPDATE_SHORTCUT`。
* QuickLaunch 唯一持久身份为 `packageName + shortcutId + userSerial`，不得退化为 `packageName + shortcutId`，不得假设分身固定 `userId=10`。
* 冷启动、Profile 切换或 `LauncherApps` 暂时查询不到 pinned Shortcut 时，不得把“暂时不可解析”当成永久删除；单次 query empty 不能触发破坏性 `EVENT_REMOVE_MULTI_APPS`。
* Backup/Restore 遇到暂时不可解析的 Shortcut 也必须保留 DB 行、位置和已有图标；Profile remap 后必须把 Intent 中的 `smartisan.shortcut.user_serial`、portable source key 等一起改为 target serial，避免恢复后图标存在但点击失效。
* 以后排查 QuickLaunch 图标，只允许按 `provider/createItem -> table_icons -> ItemInfo.Oe() -> render source/texture` 查 **first bad owner**，不得跨层一起改。先证明哪一层第一次变坏，再做最小修复。

以下方案已经被真机验证为错误，禁止恢复：

* 删除 `final_icon` 直通、强制微信/支付宝重新经过 `e.s.a()`。
* 在 `A.smali` 里通过 `final_icon` 特判跳过或重写原版数据库图标链。
* 只恢复 provider-first，但仍允许 `itemType=1` 进入普通 Application static/source/cache pipeline。
* 只按 `packageName` 做 QuickLaunch texture/cache identity。
* 将微信/支付宝宿主 APP 图标作为“找不到小程序 artwork”时的成功 fallback。

当前已确认的是**新建微信小程序头像 + 圆环的 V2458A 真机视觉 PASS**。冷重载多轮、应用分身、支付宝、Backup/Restore、旧错误 QuickLaunchItem 迁移和点击启动完整矩阵仍需单独验证；不得把本条扩写为整条持久性链已全设备 PASS。

## 系统应用识别记忆

不同厂商系统应用包名并不统一。

Launcher 会先确认目标是系统应用或更新后的系统应用，再按包名、Activity 名称和系统应用标签识别：

* 相机
* 相册
* 浏览器
* 联系人
* 短信
* 邮件
* 计算器
* 文件管理
* 指南针
* 录音
* 音乐
* 视频
* 天气
* 便签
* 设置
* 安装器
* SIM 工具包

电话与联系人可能来自同一包，最终按：

```text
桌面标题 > Activity > 包名
```

分流。

第三方同名应用不应套用系统应用映射。

日历和时钟继续使用 Launcher 已有动态日期 / 指针实现，不会被静态在线图片覆盖。

---

## ROM 兼容长期记忆

本项目必须考虑不同 ROM 行为差异。

重点关注：

* ColorOS
* OriginOS
* HyperOS
* One UI
* Android 12+
* Android 15+
* Android 16+
* 默认桌面切换
* 全面屏手势
* Recents / Quickstep
* SystemUI
* PackageManager
* 安装 / 卸载 / 替换广播
* USER_PRESENT
* 锁屏和解锁生命周期
* 通知监听
* 后台限制
* 电池优化
* 应用分身
* 多用户

不要假设某个系统广播、生命周期或权限行为在所有 ROM 上都一致。

原版解锁动画引擎、宫格颜色资源和 `USER_PRESENT` 播放链路均保留在主 Launcher APK。

2026-09-25 用户要求改用 maintained 项目的解锁实现与兼容开关；先前“焦点等待 / 120ms 预滚 / 帧率档位”的实验结论不再是当前实现。触发仍由 `LauncherBelowKeyguardCompat` 单一状态 Owner 管理，保留当前真实锁屏会话边界以防普通应用返回误播，不新增第二套 Coordinator。

`SCREEN_OFF`、`Launcher.onPause()`、focus-lost 与 `onStop()` 只允许进入同一个 `armAndPrepareIfNeeded()`。首次真实锁屏证据（`!interactive || keyguardLocked`）立即 ARM 并同步派发一次原版 `action_keyguard_on -> q(0)`；重复来源只记录 `UNLOCK_DUPLICATE_ARM_IGNORED`，不得再次 prepare。

锁屏资格使用 Smartisan Launcher 自身真实 `resumed + windowFocus` 前台快照，即使它不是系统默认 HOME 也成立；不得在 Keyguard 切换期间用 HOME resolver 作硬 Gate。厂商 ROM 的 `onPause` 可能早于 Power/Keyguard 状态更新，必须保留 pause 可见候选到 `onStop` 再以真实锁屏证据裁决；普通 APP/设置跳转在 interactive 且未锁定时清除候选，不能 ARM。

标准 `USER_PRESENT/action_keyguard_to_dismiss` 对有效锁屏 Session 按 maintained 直接派发原版播放事件，不等待 Keyguard unlocked、Resume 或 Focus；没有广播的 ROM 才保留原有 direct handoff + Focus 兜底。原版播放事件在 GL 线程先执行初始化再播放；兼容开关开启且原版尚未初始化时额外排队 init。**不得用 `r.Jd()` / `k.Yd()!=null` 判断动画正在运行**：锁屏预初始化已创建 Timeline，2026-09-25 首版照搬 maintained 运行态检查会误跳过播放，使画面停在准备态；当前单 Session 消费已负责去重。偏好键 `launcher_unlock_wait_for_focus` 只为兼容旧设置与备份保留，含义已改为 maintained 兼容模式，不再表示等待焦点。

旧单 Session 版本曾在 OriginOS 16 / V2458A 非默认 HOME 状态完成20轮 `ARM/PREPARE/PREPARE_READY/COMMIT/PLAY/START/FINISH=20/20/20/20/20/20/20`；这是 2026-09-25 maintained 迁移前的历史证据，不能视作新实现的真机结果。ColorOS、Flyme、锁屏相机、Folder 打开和主题切换矩阵仍需对应真机，不得扩写为全 ROM FINAL。

`Eb.update()` 现按 maintained 的全局真实帧间隔推进：恢复首帧为 0，后续 `min(realDeltaMs, 100) * fx * 0.06f` 送入原版 `Ra.T()`；不按刷新率分档，也不只给解锁动画乘倍率。跨刷新率速度、首帧可见性和重复播放尚待多 ROM 真机验收，不得把构建通过当作视觉最终 PASS。

---

## 搜索页长期记忆

当前项目使用 Launcher 内自绘搜索页。

桌面下滑只作为进入自绘搜索页的手势入口。

项目不再依赖、下载或构建锤子独立搜索 APK。

不要恢复独立 QuickSearch APK 构建产物，除非明确重新评估并确认需要。

---

## 通知角标长期记忆

通知角标以 Android 有效活动通知数为数据源。

它不保证等于第三方应用私有数据库中的真实未读数。

如果应用未发通知、用户关闭通知或工作资料被系统隔离，Launcher 无法绕过系统限制。

通知监听服务会按包名和 UID 统计有效活动通知，并转换为原版 `com.smartisanos.launcher.new_message` 协议，继续使用原版数字纹理、文件夹汇总和横扫动画。

通知角标通用兼容规则：
* 不得使用 `NotificationChannel.canShowBadge()` 作为 Smartisan 角标的硬过滤条件。
* 针对厂商 ROM（如 vivo/OriginOS）将短信等服务通知挂在后台服务包名（如 `com.android.mms.service`）发送的情况，统一使用 `BadgeBridge.resolveLauncherPackage()` 动态解析为其桌面图标包名（如 `com.android.mms`），禁止硬编码 OEM 包名白名单。
* 默认允许通知角标（`KEY_BADGE_HIDE` 默认值为 `false`），用户在桌面设置开启“角标提醒”并授予系统“通知使用权”后即可正常工作。

---

## 文件夹长期记忆

文件夹功能已保留并完成普通 Android 适配。

当前方向：

* 支持拖入 / 拖出
* 关闭预览 4 项以内使用 2×2
* 关闭预览 5–9 项使用 3×3
* 展开状态按原版固定三列摆放
* 主题背景从 `assets/folder_theme_bg/` 读取
* 逻辑使用归一化比例，不依赖某个屏幕的固定像素偏移

不要恢复固定像素、整组缩放、错误页面坐标旁路等已废弃方案。

### Open Folder 图标 Owner 与尺寸防回归（2026-08-25）

* Open Folder 的唯一 Scene Owner 固定为 `Cell.g.fH -> e/s(pageMode) -> cache/compose(pageMode)`；Folder child 必须使用 `fH=8` 和 `dH=Constants.mode(8)`。禁止让全局 Workspace、Static Composer、请求 bitmap 宽度、ThreadLocal 或静态 SceneContext 再猜 Folder/Desktop Scene。
* `Cell.jl()` 是冷重载和 `changeAncestor()` 后的唯一重绑定边界。必须以迁移完成后的真实 parent 判定：parent 为 `FolderPage (view/b/a)` 时设置 `IH=true`、`XH=da`、`fH=8`、`dH=Constants.mode(8)`；parent 为 Desktop 时设置 `IH=false`、`XH=ga`，并恢复当前 Desktop 12/20 的 `fH/dH`。不得沿用迁移前的 `IH`，否则 Folder 冷重载会漂成 Desktop，或拖回 Desktop 后仍残留 Mode8。
* 当前用户确认的 Open Folder 目标不是旧的原版 Folder `166/216`，而是与当前 Desktop 20 宫格 100% 同一视觉大小。Desktop pageMode 9 经 `cellCount(9)=20` 实际读取 `MODE_20` 的 `118/152`，再由冻结的 Desktop Golden `1.20` 得到 LOW 1080 runtime `141.6/182.4`；因此 Mode8 使用独立的最终资源基准：1080 portrait `142/182`，1440 profile `189/243`，其他宽度只走既有 width adaptation。不得恢复 `166/216`，也不得新增 `0.85/0.86`、dpi/机型分支、density 倍率或第二份 Scene scale。
* Folder Mode8 不消费 Desktop 50/100/150 用户倍率。Desktop、Open Folder、Folder Preview 是三条独立合同；禁止为了 Folder 尺寸修改 `IconVisualMetrics`、Desktop source/normalization/raster/shadow/cache、ActiveIcon、Folder Preview、书架、行列、`FolderSceneMetrics` 或原版 Timeline。
* 关闭状态 Folder Preview 的纹理 Owner 必须是 Folder Cell 自己的 Desktop `Qj.fH`，不能使用全局 `SINGLE_PAGE_MODE`。`FolderIcons(la).a(F, ItemInfo)` 必须先以 `IconRasterDiagnostics.textureCacheKey(item, ItemInfo.Ne(), Qj.fH)` 生成节点绑定 key，再让 Weather ActiveIcon、Calendar ActiveIcon 和普通静态应用全部调用显式 `pageMode` 的 `e/s` Composer。1260 真机已证明错误全局 owner 会把应为 `grid=12, 224/287` 的 Clock/Calendar preview 生成成 `grid=1, 269/344`，表现为偏大偏下；禁止用 Preview 固定倍率、机型偏移或修改 Mode8 掩盖该错误。
* Folder 文字继续由 `FolderCellVisualMetrics -> Mc.setTranslate()` 根据当前 Folder artwork 计算，并与 Desktop 共用 `DesktopLabelMetrics.finalVisualGap()`；已通过真机的 `28.43` anchor correction 不因尺寸调整而改成固定 px 补偿。
* 临时 `FolderIconTrace`、`OPEN_FOLDER_ICON_TRACE`、`FOLDER_ANIMATION_TRACE`、CELL/OWNER/cache trace 均已删除，不得作为正式架构恢复。
* LOW 打开 Folder 的轻微卡顿与尺寸 Owner 已分离。clean APK 外部 atrace 首次定位为 Folder open 时 SMEngine `GLThread onDrawFrame` 内同步 CPU scene 工作（首帧约 `111~167ms`），不是 `eglSwapBuffers`、Launcher GC、Bitmap compose 或已证明的 texture upload；尚未定位到具体 native/scene 方法。没有更深 call-stack 证据前，禁止改动画时长或新增预加载、线程池、Bitmap cache。

---

## 清理长期记忆

清理前必须先看：

```text
docs/development/CLEANUP.md
docs/architecture/APK_STRUCTURE.md
```

长期规则：

* `original_apks/` 是重要原始 APK 归档，不建议删除。
* `release/` 是发布产物目录，不建议直接删除。
* `build/decompiled_theme_check/` 是重要反编译参考缓存，不要随意删除。
* `build/` 可以重建，但删除前要确认最新签名 APK 是否已复制到需要的位置。
* `.gitignore` 当前可能忽略 `*.png`，新增 PNG 资源如需提交可能要使用 `git add -f`。
* `tools/` 是顶层工具目录，不建议仅按大小删除。

---

## 用户明确纠正过的规则

* 不要把项目图标命名猜成 `icon_10001.png` 之类编号格式。
* 图标文件名应遵循现有项目规则和真实包名规则。
* 不要把普通 Android Launcher 经验直接套到 Smartisan Launcher 原版逻辑上。
* 不要把透明主题和毛玻璃主题混为一谈。
* 不要只按 AOSP 理论判断厂商 ROM 行为。
* 不要只给零散代码片段，能给完整可替换内容时应直接给完整版本。
* Windows 命令必须区分 CMD 和 PowerShell。
* 真机日志和实际表现优先于理论推断。
* 修改前要知道原版代码在哪里，并优先对照原版实现。
* 有些设置页和兼容逻辑可以参考 `E:\FANG\smartisan\smartisan-launcher-maintained`，但不能无脑覆盖当前原版移植项目。

---

## 更新规则

## QuickSearch 冻结规则

* 正式搜索入口是同 APK 的 `OriginalQuickSearchActivity`，由桌面手势经 `OriginalSearchTransitionHost` 进入。
* 应用搜索唯一数据源是 `SearchSnapshot` / `SharedSearchMatchModel`；不得恢复每次按键时的 Provider、PackageManager 或数据库扫描。
* non-empty → non-empty 查询必须保持现有页面并原子提交最新 rows，不能恢复清空后再展示结果的闪动链路。
* 联系人搜索默认关闭；仅在用户 opt-in 后申请 `READ_CONTACTS` 并建立后台 Snapshot，不能在每次按键查询联系人 Provider。
* Screenshot、PixelCopy 和 Blur 搜索背景永久停用；正式路径必须保持 capture/blur/screenshot bitmap 为 0。
* 图标来源 generation 改变后必须重新 hydration 并重绑搜索结果；这是已验证的生产修复。
* 正常/反转搜索方向与 1000ms completion window 是 vivo X21A 真机可靠性修复，不要恢复为 500ms 原版拒绝门槛。

---

只有学到长期有效信息时才更新本文档。

应该更新本文档的情况：

* 确认新的 ROM 兼容性结论
* 确认长期有效的 BUG 根因
* 确认新的构建或版本规则
* 用户纠正了 AI 以后必须记住的判断
* 项目架构方向发生变化
* 原版行为和移植行为的取舍形成稳定结论
* maintained 参考项目中有长期可复用的规则被验证适合当前项目

不应该写入本文档的内容：

* 临时任务进度
* 大段日志
* 未验证猜测
* 每日流水
* 一次性命令输出
* 已废弃方案正文
* secret
* password
* token
* API key
* private key
* keystore password

---

## 桌面备份与恢复机制 (Backup & Restore)

1. **FolderInfo 身份认知**：`FolderInfo` (`itemType = 2`) 是桌面内部控制的虚拟结构件，**绝不是 Android 系统已安装的应用**。
   * 它的 `packageName` 固定为 `com.smartisan.folder`。
   * 绝对不允许它进入 `PackageManager.isInstalled()` 或 `pending_items.json` 进行检查。
   * 它在数据库中必须保证 `folderIndex = 0` (早期数据可能为 -1，但不影响其作为父容器的地位)。
   * 子应用的 `folderIndex` 必须匹配其父级 `FolderInfo` 的 `_id`。

2. **6-Pass 原子恢复写入逻辑**：
   桌面恢复的正确时序极其严格，必须保证父级文件夹实体在子应用之前写入：
   * 前置与后置强制进行 `FolderTopologyValidator` 拓扑校验，断绝孤儿。
   * 插入时必须先执行 `table_pageinfos` (页面建立)。
   * 随后必须先扫描并插入所有的 `itemType == 2` (Folders)。
   * 然后再扫描并插入所有的非 Folder Items，以确保有可供挂载的合法 `folderIndex` 实体。
   * 最后追加未卸载且不在备份中的当前新安装 App。

3. **数据库兼容与一次性状态**：
   * 原版各个版本的 `table_iteminfos` schema 可能存在差异（例如某些旧机型不存在 `lastActivateTime` 或 `usage_count` 列）。
   * 在向 `ContentValues` 打包或清零状态时，**必须且只能通过 `item.has("key")` 来动态判定该字段在原生 DB 中是否存在**。绝对禁止强行写入无 Schema 保证的硬编码字段，否则会导致 SQLite 异常。
   * `messagesNumber` 等一次性角标或统计类状态在备份导出时必须安全清零，以保证快照的跨设备、跨生命周期可用性。

4. **权限剥离规则**：
   * `launcher_hide_badge`（通知监听权限）、`automatic_location`（定位权限）等必须被隔离到 `NON_PORTABLE_PERMISSION_KEYS` 中。
   * 它们必须在导出和导入阶段被直接遗弃，不允许被记录进 `.slauncherbackup`，否则新机恢复会导致状态机以为有权限而触发致命闪退。

详细修复记录继续写入 `docs/development/DEVELOPMENT_LOG.md`。

---

## 图标统一与 ActiveIcon 验收边界

唯一规范入口为 `docs/development/ICON_RENDERING_CONTRACT.md`。本文只保留长期防回归摘要；任何旧日志、计划或实现与该合同冲突时，不得继续按旧倍率施工。

1. **“统一”的稳定定义**：普通桌面应用在同一 Cell 中共享最终 physical artwork/texture、原版阴影、用户图标百分比和缓存身份；这不表示 DEFAULT、IMPROVED、PACK、CUSTOM、RESOURCE 的所有可见 alpha 边界必须完全等宽等高。有效 DEFAULT 可以使用可见面积归一化，真正命中的改进版、图标包和自定义素材必须保留其设计比例，禁止再次全局归一化把淘宝、美团等图标缩小。

2. **有效来源优先**：图标来源必须按该应用最终实际解析结果分类，不能只读取全局选择。CUSTOM 仅在存在有效自定义 iconData 时成立；RESOURCE/PACK/IMPROVED 仅在 managed drawable 实际可解析时成立；否则必须归为 DEFAULT。来源变化后缓存键必须同步失效。

3. **单一尺寸 owner**：普通 Application 的数据库 `iconRawData` 默认视为 `LEGACY_UNKNOWN`，不得恢复为 managed RAW；`Aa.smali` 不再预加边距，Cold Bind、Hot Update、Backup Restore 都必须重新解析正式 RAW source，并只进入一次 final physical Composer。正式 managed source 缺失时回退 APK DEFAULT，不能用已预合成 DB 位图补偿。

4. **天气/日历动态验收**：H/m 禁止再次乘用户百分比；用户大小由原版 ActiveIcon/Cell 链与 STATIC geometry 共同反映。真机确认最终交接是同一 Cell 的 `sc[0]=cell_Icon_rect` 静态纹理与 `sc[7]=Weather/Calendar ActiveIconRoot` 互斥显示。同步优先读取 `sc[0]` world rect；不可见节点未发布 world bounds 时，可读取它已经解析的 local display scale，因为该值已包含当前宫格和用户尺寸。`sc[0]` 尚未创建时只能 defer，禁止用 `IconVisualMetrics.logicalArtworkBox` 或 physical raster px 臆造 world rect并写回 ActiveIconRoot scale。只有 Weather 与 Calendar 都取得基于真实 `sc[0]` 的 `ICON_CONTRACT_ACTIVE_SYNC` ratio/center 证据，并完成切换前、中、后矩阵，才允许标记静态/动态统一。

5. **禁止恢复的旧倍率**：不得恢复固定 `73.32%`、`94%`、`166/192`、`0.831325`、`160/192`，也不得新增按包名或图标形状硬编码的尺寸补丁。应先定位 FIRST BAD ICON LAYER，再做最小修复。

6. **100% 与 Golden 基准**：设置页的持久化/显示/cache identity 必须保持真实 100，不能伪装成 120；但不得因此把用户已确认的原版 Golden artwork 基准整体缩小。100% 到 Golden logical artwork/texture 的统一换算只能由 `IconVisualMetrics` 持有，LayoutProperty、STATIC Composer 与 ActiveIcon 共同消费，其他模块不得再拥有倍率。
