AGENTS.md

Smartisan Launcher Original Port 项目开发规则

项目定位

本项目是 Smartisan Launcher 原版桌面的恢复与兼容移植项目。

目标：

-   在现代 Android 手机上恢复 Smartisan OS 原版桌面体验。
-   保留原版交互、视觉、动画和逻辑。
-   解决 Android 新版本和不同厂商 ROM 兼容问题。

本项目不是重新开发新的 Launcher。

不要使用普通 Android Launcher 的思路替换原版行为。

第一原则：复用已有实现

修改任何功能前：

必须检查：

1.  当前项目是否已有实现。
2.  原版 APK 是否已有实现。
3.  clean_launcher 是否有参考。
4.  smartisan-launcher-maintained 是否有可借鉴方案。

优先级：

当前项目代码 > 原版代码 > clean_launcher > maintained参考 > 新增实现

禁止：

-   重新写已有功能。
-   重新设计已有界面。
-   重新绘制已有图标。
-   创建重复 Manager。
-   创建重复 Service。
-   为了代码漂亮大规模重构。

新增代码必须说明：

为什么不能复用。

为什么需要新增。

## 文档职责

本文档是给 Codex / AI Agent 使用的项目施工规则。

它规定在本仓库中修 BUG、改代码、改资源、改构建、分析日志和更新文档时必须遵守的规则。

本文档不是用户说明书。面向用户的项目介绍继续写在 `README.md`。

---

## 项目定位

本项目是 **Smartisan Launcher Original Port**，目标是在普通 Android 设备和现代厂商 ROM 上尽量恢复并保留原版 Smartisan Launcher 的体验。

本项目不是普通从零开发的 Android App，也不能简单当成标准 Gradle 项目处理。

项目中同时存在：

* 原版 APK
* 反编译目录
* Smali 修改
* Java 兼容层
* Android 资源
* 二进制 Manifest
* 构建脚本
* 签名流程
* 主题包
* 在线图标库
* Launcher 生命周期适配
* ROM 兼容性补丁
* maintained 风格设置页兼容实现

开始任何修改前，必须先确认当前任务涉及哪一类文件，不要凭普通 Android 项目经验直接改。

---

## 语言规则

解释、计划、Review、总结使用中文。

代码相关内容优先使用英文，包括：

* 代码
* 注释
* 变量名
* 函数名
* 类名
* 文件名
* Commit message
* PR 标题和描述

面向用户的中文 UI 文案可以继续使用中文。

---

## 必读文档

修改项目文件前，优先阅读这些文档：

1. `AGENTS.md`
2. `MEMORY.md`
3. `docs/INDEX.md`
4. `docs/development/DEVELOPMENT_LOG.md`
5. `docs/build/BUILD_GUIDE.md`
6. `docs/architecture/APK_STRUCTURE.md`
7. `docs/development/CLEANUP.md`
8. `README.md`

涉及 Launcher 启动、宫格、主题重载或系统壁纸闪回时，还必须阅读：

```text
docs/development/LAUNCHER_FIX_AND_OPTIMIZATION_PLAN.md
```

各文档职责：

* `AGENTS.md`：AI Agent 的项目施工规则。
* `MEMORY.md`：长期有效的项目记忆、兼容性结论、用户纠正和稳定决策。
* `docs/INDEX.md`：专项文档索引和项目参考目录入口。
* `docs/development/DEVELOPMENT_LOG.md`：BUG 根因、修复方式、验证过程、回归注意、当前状态总览和倒序每日修复记录。
* `docs/development/LAUNCHER_FIX_AND_OPTIMIZATION_PLAN.md`：Launcher 修复和性能优化专项的阶段状态、范围及验收条件。
* `docs/build/BUILD_GUIDE.md`：Windows / PowerShell 构建工具、PATH、签名、版本号写入点、二进制 Manifest 修改方式。
* `docs/architecture/APK_STRUCTURE.md`：原始 APK、反编译目录、主题包身份、当前构建产物、Release 资产筛选规则。
* `docs/development/CLEANUP.md`：清理和归档候选项。
* `README.md`：面向用户的项目简介、当前版本、兼容基线和核心特性。

如果文档之间冲突，优先级如下：

1. 最新真机日志和实际验证结果
2. `docs/development/DEVELOPMENT_LOG.md` 顶部“当前状态总览”和最新日期记录
3. `MEMORY.md`
4. `docs/build/BUILD_GUIDE.md`
5. `docs/architecture/APK_STRUCTURE.md`
6. `README.md`

注意：

* `docs/development/DEVELOPMENT_LOG.md` 中标记为 `【已废弃】` 的旧方案不得恢复。
* 不要根据废弃标题猜测旧实现。
* 不要把历史流水当成当前可信方案。
* 参数或结论冲突时，以最新日期、最新验证和顶部当前状态为准。

---

## 本地项目路径

当前主项目常见本地路径：

```text
E:\FANG\smartisan\smartisan-launcher-original-port
```

有时需要参考 maintained 项目：

```text
E:\FANG\smartisan\smartisan-launcher-maintained
```

`smartisan-launcher-maintained` 是参考项目，不是当前构建源码。

可以参考它的场景：

* maintained 风格设置页
* 设置项 UI
* 图标识别策略
* 普通 Android 兼容思路
* Java helper 写法
* 资源命名和布局思路
* 已验证过的行为实现

不能直接照搬的场景：

* 原版 Launcher 核心行为
* 原版动画链路
* 原版主题切换链路
* 原版 12 / 20 宫格逻辑
* 原版文件夹几何
* 原版动态图标 activeicon 链路
* 原版解锁动画链路

参考 maintained 时必须遵守：

1. 先确认当前项目是否已有对应实现。
2. 只移植必要逻辑，不整块搬运无关代码。
3. 保持当前项目的 Smali / Java / 资源结构。
4. 不破坏原版 Smartisan 行为。
5. 修改后必须按当前项目构建流程验证。

---

## 原版代码和参考目录

原版主 Launcher APK：

```text
original_apks/com.smartisanos.launcher-3.apk
```

当前可编辑构建源码目录：

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

桌面 / 壁纸相关伴随包参考目录：

```text
decoded_desktop/
build/decompiled_theme_check/com.smartisanos.desktop-3/
```

原版 Smartisan 设置 APK 参考目录：

```text
build/decompiled_theme_check/com.android.settings-100/
```

透明主题包参考目录：

```text
build/decompiled_theme_check/com.smartisanos.launcher.theme.trans/
```

毛玻璃主题包参考目录：

```text
build/decompiled_theme_check/com.smartisanos.launcher.theme.aero/
```

Glime 同类主题包参考目录：

```text
build/decompiled_theme_check/com.smartisanos.launcher.theme.glime/
```

原版修复准则：

* 修主题、壁纸、搜索、设置页、桌面渲染、动画、文件夹、图标加载时，优先对照原版目录。
* 不要直接按猜测改运行时逻辑。
* 不要把透明主题、毛玻璃主题、普通主题混为一谈。
* 修改 `build/decompiled_theme_check/` 下的参考文件不会影响 `build\launcher-signed.apk`，真正参与主 APK 构建的是 `launcher/`。

---

## 基本工作原则

* 修根因，不只修表象。
* 优先最小安全改动。
* 不重构无关代码。
* 不格式化无关文件。
* 不覆盖用户已有改动。
* 不新增臆测性功能。
* 不新增没有必要的抽象、配置或依赖。
* 不为了解决一个小问题引入新构建系统。
* 优先复用项目现有脚本、工具、helper 和实现模式。
* 每一处修改都必须能对应到当前用户目标。
* 真实设备日志优先于理论判断。
* 用户明确纠正过的规则优先于通用经验。

---

## Android / Launcher 兼容规则

处理 Launcher 行为时，必须考虑：

* AOSP
* ColorOS
* OriginOS
* HyperOS
* One UI
* Android 12+
* Android 15+
* Android 16+
* 全面屏手势
* 默认桌面切换
* SystemUI
* Recents / Quickstep
* PackageManager
* Launcher 生命周期
* 应用安装 / 卸载 / 替换广播
* 锁屏和解锁生命周期
* 应用分身
* 多用户应用
* 通知监听服务
* 电池优化
* 后台限制

不要假设所有 ROM 都按 AOSP 行为发送广播、回调或生命周期事件。

日志和真机表现与理论冲突时，以真机表现为准。

---

## 构建规则

修改构建、签名、版本号或 Manifest 前，必须先阅读：

```text
docs/build/BUILD_GUIDE.md
build.bat
```

推荐构建入口：

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

构建产物：

```text
build\launcher-signed.apk
build\launcher-unsigned.apk
build\launcher-aligned.apk
```

注意：

* `build.bat` 会自己查找 JDK、Android SDK、Build Tools。
* 不要因为 PowerShell 里直接运行 `java` 失败，就断定项目无法构建。
* 最终 APK 不是只看文本 `launcher\AndroidManifest.xml`。
* 最终注入 APK 的二进制 Manifest 是 `launcher\original\AndroidManifest.xml`。
* 新增组件、服务、权限时，必须确认最终二进制 Manifest 也同步。
* 最终版本信息以 `aapt2 dump badging build\launcher-signed.apk` 为准。
* 改版本推荐使用 `python tools/set_launcher_version.py <versionName> <versionCode>`，不要只改一个文本文件。

---

## Manifest 和版本规则

版本号需要同步三个写入点：

```text
launcher\AndroidManifest.xml
launcher\tools\maintained_settings_res\res\values\strings.xml
launcher\original\AndroidManifest.xml
```

其中：

* `launcher\AndroidManifest.xml` 是文本 Manifest。
* `launcher\tools\maintained_settings_res\res\values\strings.xml` 控制设置页“检查更新”右侧显示。
* `launcher\original\AndroidManifest.xml` 是最终注入 APK 的二进制 Manifest。

二进制 Manifest 是 Android binary XML / AXML，不是普通文本，不能用普通文本编辑器直接改。

涉及通知角标服务等新增组件时，要确认二进制 Manifest 中确实存在对应组件。

验证方式优先使用：

```powershell
aapt2 dump badging build\launcher-signed.apk
aapt2 dump xmltree build\launcher-signed.apk AndroidManifest.xml
```

---

## 主题规则

透明主题、毛玻璃主题和普通主题必须严格区分。

透明主题是包名特定的主题变体：

```text
resource theme_id: smartisan_theme_aero
launcher runtime id: smartisan_theme_trans
theme package:     com.smartisanos.launcher.theme.trans
original apk:       original_apks/com.smartisanos.launcher.theme.trans.apk
install apk:        build/theme-trans-signed.apk
```

毛玻璃主题包：

```text
com.smartisanos.launcher.theme.aero
```

规则：

* 不能把透明主题简单等同于毛玻璃主题。
* `com.smartisanos.launcher.theme.trans.apk` 内部 `theme_id` 虽然也是 `smartisan_theme_aero`，但包名不同，资源效果不同。
* Android 15 / Android 16 不建议直接安装原始透明主题 APK。
* 当前移植版透明主题使用 `build\theme-trans-signed.apk`。
* 透明主题开关只写入原版透明模式键 `launcher_grid_theme`。
* `launcher_grid_theme=1` 表示透明覆盖开启。
* `launcher_grid_theme=0` 表示透明覆盖关闭。
* 普通主题 ID 写入 `launcher_theme`。
* 不要把 `smartisan_theme_trans` 当普通主题 ID 写进 `launcher_theme`。
* 不要把透明主题送进普通主题切换队列。
* 透明主题开启后只允许使用默认翻页动画。
* 不要绕过透明主题对翻页动画的限制。

透明主题资源、Dock、壁纸、模糊和明暗判断问题，必须先对照：

```text
build/decompiled_theme_check/com.smartisanos.launcher.theme.trans/
clean_launcher/
```

---

## 搜索页规则

当前项目使用 Launcher 内自绘搜索页。

桌面下滑只作为进入自绘搜索页的手势入口。

项目不再依赖、下载或构建锤子独立 QuickSearch APK。

不要恢复这些已删除内容：

```text
original_apks/com.smartisanos.quicksearch-101.apk
quicksearch_decode/
build/SmartisanQuickSearch.apk
build/quicksearch*
```

除非明确重新评估并确认需要。

---

## 在线图标规则

在线图标目录规则：

```text
icons/drawable/<packageName>.png
```

示例：

```text
icons/drawable/com.tencent.mm.png
icons/drawable/com.tencent.wework.png
```

图片要求：

* PNG
* 建议 256×256 或 512×512
* 必须保留透明背景
* 不要带截图背景、网格或白底
* 单个文件不超过 512 KiB
* 边长 48–1024 px
* 文件名必须使用应用真实包名，区分大小写

加载顺序：

1. Gitee 下载镜像仓库 `Smartisan-original-launcher-download` 的 `master` 分支
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

不要发明 `icon_10001.png` 这类占位命名，除非项目现有逻辑明确要求。

---

## 图标识别和资源规则

修改图标和资源前必须先确认引用链路。

重点检查：

* resource XML
* drawable 引用
* assets 引用
* icon mapping 逻辑
* online icon loading 逻辑
* local cache 逻辑
* generated index 文件
* 自定义图标
* 图标包 appfilter
* redirect
* 系统原图回退
* 动态日历 / 动态时钟 / 动态天气逻辑

图标相关修改必须保留：

* PNG Alpha 透明通道
* 真实透明边缘像素
* 图标视觉边界
* 原版 Smartisan 视觉比例
* 阴影和材质一致性
* 现有命名规则
* 现有映射规则

系统应用图标识别要注意：

* 不同厂商系统应用包名不统一。
* Launcher 会按包名、Activity 名称、系统应用标签识别系统应用。
* 电话与联系人可能来自同一包，最终按“桌面标题 > Activity > 包名”分流。
* 第三方同名应用不应套用系统应用映射。
* 日历和时钟继续使用 Launcher 动态实现，不应被静态在线图片覆盖。

---

## Smartisan 设计规则

本项目目标是保留 Smartisan Launcher 原版体验，不是改成普通 Android Launcher。

涉及 UI、图标、设置页、动画和视觉资源时，应保持：

* 克制
* 精细
* 轻拟物
* 材质感
* 合理阴影
* 清晰功能隐喻
* 与原版系统风格统一

不要改成：

* 通用 Material Design
* iOS 风格
* AI 常见塑料 3D 风格
* 现代扁平渐变图标
* 和原版锤子视觉不一致的设计

设置页 maintained 风格可以参考本地：

```text
E:\FANG\smartisan\smartisan-launcher-maintained
```

但最终要服务于当前项目的 Smartisan 原版体验。

---

## BUG 修复流程

修 BUG 时按这个顺序：

1. 明确用户可感知的问题。
2. 读取相关文档和最近修复记录。
3. 找第一个真实异常或根因。
4. 定位相关代码、Smali、Java、资源或 Manifest。
5. 对照原版目录或 maintained 参考项目。
6. 做最小安全修复。
7. 用最强可行方式验证。
8. 必要时更新文档。
9. 最终说明修改内容、根因、验证结果、剩余风险。

不要无证据地使用：

* 随机延迟
* 大范围 try/catch
* 无限重试
* 静默 fallback
* 无关重构
* 大面积替换资源
* 绕过项目现有流程的新脚本

如果必须使用 fallback，要说明触发条件、优先级和用户影响。

---

## 日志分析规则

分析日志时优先看：

* `FATAL EXCEPTION`
* `AndroidRuntime`
* `ANR`
* Native crash
* `SecurityException`
* Activity 启动失败
* PackageManager
* WindowManager
* SystemUI
* Launcher model
* install / remove / replace broadcast
* notification listener
* theme dispatch
* unlock lifecycle

不要被后续重复错误带偏。

Telemetry、统计上报、网络导出失败不一定是应用无法启动的根因，必须结合崩溃栈和用户现象判断。

---

## 清理规则

清理文件前必须先看：

```text
docs/development/CLEANUP.md
docs/architecture/APK_STRUCTURE.md
```

注意：

* `original_apks/` 是重要原始 APK 归档，不建议删除。
* `release/` 是发布产物目录，删除前必须确认 APK 已外部归档。
* `build/decompiled_theme_check/` 是重要反编译参考缓存，不要随意删除。
* `build/` 可以重建，但删除前要确认最新签名 APK 是否需要保留。
* `.gitignore` 当前可能忽略 PNG，新增长期资源时可能需要 `git add -f`。

---

## 文档更新规则

一次修复的根因、修改、验证、风险只在 `docs/development/DEVELOPMENT_LOG.md` 记录一次。其他文档仅在其职责范围的长期信息实际变化时更新，不要求每条流水同步抄写多份。日志保持“当前状态 → 简短记录规则 → 近期合并记录 → 历史入口”的固定顺序，每天只有一个日期标题，同问题当天更新原条目，不追加试验流水。原始样本、长哈希和失败尝试放证据目录／统一历史归档，主日志只留结论与链接；不要把新正文插在当前状态之前。专项计划只维护当前剩余事项与验收条件，历史计划归档，不叠加多个“当前唯一入口”。

使用 `docs/development/DEVELOPMENT_LOG.md` 记录：

* BUG 根因
* 修复方式
* 验证过程
* 回归注意
* 每日修复记录
* 当前状态总览

使用 `MEMORY.md` 记录：

* 长期有效项目事实
* 稳定架构决策
* 已确认兼容性结论
* 用户纠正过、以后必须遵守的规则
* 多次踩坑后形成的长期经验

使用 `docs/build/BUILD_GUIDE.md` 记录：

* 构建工具变化
* JDK / SDK / ADB / aapt2 / apksigner 路径变化
* 签名流程变化
* 版本号写入点变化
* 二进制 Manifest 修改流程变化

使用 `docs/architecture/APK_STRUCTURE.md` 记录：

* 原始 APK 增删替换
* 反编译目录变化
* 主题包身份变化
* Release 资产规则变化

不要把每日流水复制进 `MEMORY.md`。

不要把临时日志、未验证猜测、废弃方案正文写进 `MEMORY.md`。

---

## 安全规则

永远不要读取、打印、复制、提交或记录真实敏感信息。

禁止暴露：

* password
* token
* API key
* private key
* keystore password
* `.env` 内容

可以记录 secret 的配置位置，但不能记录真实值。

---

## 验证规则

最终回复前，尽量运行最有效验证方式，例如：

* 构建
* 脚本执行
* APK 打包
* 签名检查
* `aapt2 dump badging`
* `aapt2 dump xmltree`
* ADB 安装
* ADB logcat
* 真机复现
* 输出文件检查

如果无法完整验证，必须说明：

* 已验证什么
* 未验证什么
* 为什么无法验证
* 剩余风险是什么

不要把“代码写完了”当成完成。

---

## Windows 命令规则

必须区分 PowerShell 和 CMD。

PowerShell 示例：

```powershell
Set-Location "E:\FANG\smartisan\smartisan-launcher-original-port"
.\build.bat
```

CMD 示例：

```bat
cd /d E:\FANG\smartisan\smartisan-launcher-original-port
build.bat
```

不要把 CMD 的 `cd /d` 写给 PowerShell。

路径包含空格时必须加引号。

---

## Git 规则

除非用户明确要求，不要运行：

```text
git reset --hard
git clean -fd
git push --force
```

不要擅自：

* 删除分支
* 覆盖提交
* 回滚用户改动
* 强推远程

工作区有未提交改动时，必须保留无关改动。

---

## 最终回复格式

最终回复保持简短清楚，包含：

1. 做了什么
2. 问题根因
3. 修改了哪些文件
4. 验证了什么
5. 还有什么风险
6. 是否更新了 `MEMORY.md`
7. 是否更新了 `docs/development/DEVELOPMENT_LOG.md`

不要用“是否继续”“要不要我继续”之类结尾。

任务明确时，直接完成。

## Smartisan Icon Ecosystem Master Specification

Before any task involving icon matching, adaptation status, online catalogs, Intents, icon uploads, review, publishing, caching, or resource updates, read:

`docs/architecture/SMARTISAN_ICON_ECOSYSTEM_MASTER_SPEC.md`

This is the highest-level cross-project architecture specification. Do not create a second adaptation state or resource protocol. Report conflicts before making changes; do not change the architecture unilaterally.

