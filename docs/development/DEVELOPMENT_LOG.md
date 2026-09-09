# 开发与修复记录

## 最新专项补录（按结论优先级，不参与倒序日期轴）

> 本区只保留日期、标题和一句话结论；根因、修改、验证与风险统一写入下方“每日修复记录”。已废弃或已取代条目只保留标题。

- 2026-09-09 QUICK_DESKTOP_SEARCH_RETURN_HANDOFF_FIX：快捷桌面等待透明搜索窗口获得焦点后再关闭宿主，进入时由搜索首帧覆盖、返回时直接露出首页；构建与签名通过，设备离线导致真机动画验收待完成。

- 2026-09-08 QUICK_DESKTOP_CROSS_ROM_TOOL_RESOLVER：六个固定快捷工具保留原版动作语义，便签等系统工具新增标准 Intent、厂商包与系统应用身份三级解析；V2458A 五类系统工具解析通过，魅族及其他 ROM 真机点击仍待对应设备确认。

- 2026-09-08 QUICK_DESKTOP_GESTURE_AND_RESTORE_TOKEN_FIX：快捷桌面动画开始即接管下一次触摸并补齐 100% 立即完成分支，解决快速切换卡住和误翻第二页；未执行的恢复预览令牌会在重新选文件时释放，正常旧备份不再被误报损坏，V2458A 真机由用户确认正常。

- 2026-09-08 QUICK_DESKTOP_BACKUP_DEFAULT_STATE_FIX：快捷桌面备份已保存包含默认值的完整逻辑状态，X21A 新归档确认含全部 8 个字段且真机恢复重新生效；恢复预览同时显示启用组件数与总开关状态。

- 2026-09-07 QUICK_DESKTOP_HALF_COMPLETE：9 月 6–7 日已完成原手势宿主、实时模糊背景、原版固定卡片及设置主链，V2458A 真机视觉与主要交互通过，整体约完成一半；AppWidgetHost、备份恢复实测和完整设备矩阵仍未完成。

- 2026-09-06 QUICK_DESKTOP_PHASE2_MOTION_ACCEPTED：负一屏已恢复当前桌面实时截图、渐进模糊与整张内容页连续跟手，V2458A 真机确认悬停及打开正常，进入 Phase 3 设置与固定卡片功能接入。

- 2026-09-06 QUICK_DESKTOP_PHASE3_SETTINGS_IN_PROGRESS：设置主页面合并为一个可开关并可进入详情的“负一屏”项，四类原版组件开关、天气数据与应用入口已接线，构建通过但新版待 ADB 重连后真机验收。

- 2026-09-04 LAUNCHER_EDGE_TO_EDGE_NAV_VISIBLE：桌面铺满与隐藏导航控件解耦，默认关闭隐藏并复用 maintained 状态栏贴图；V2458A 真机已确认关闭开关时铺满并保留横条。

- 2026-09-05 UNLOCK_V154_RESUME_PRE_ROLL：恢复 v1.5.4 已有的 Resume 后 120ms 预滚时机，但继续使用当前严格 Session 防误播与去重，避免立即预滚过早及 USER_PRESENT 后播。

- 2026-09-05 DEFAULT_VISIBLE_FIT：DEFAULT APK 图标按透明可见边界对齐现有 IMPROVED 可见范围，所有分辨率共用同一相对比例，未改宫格、文字或改进版资源。

- 2026-09-05 V154_SETTING_BUTTON_ASSETS：桌面编辑齿轮恢复 Git 标签 v1.5.4 归档 APK 的白色描边三层资源及原版 SceneNode 路径，不再使用 maintained 的深灰齿轮资源。

- 2026-09-05 ORIGINAL_LOADING_PANEL：初始化加载页恢复 maintained 保存的原版 246×160dp 纵向面板、13sp 文案及原版进度帧，替换移植层自建横向胶囊。

- 2026-09-03 FOLDER_SHARED_TEXTURE_ROUTE：Open Folder 普通应用已恢复共享 Desktop cache/七参数入口，尺寸隔离保留，但三档真机仍有约 78–88ms 长帧，性能验收未通过。

- 2026-09-04 【已被 UNLOCK_V154_RESUME_PRE_ROLL 取代】UNLOCK_LOCKED_RESUME_PRE_ROLL

- 2026-09-03 UNLOCK_DIRECT_DISMISS_PRE_ROLL：【被 LOCKED_RESUME_PRE_ROLL 扩展】真实 USER_PRESENT 路径不等待 Focus，但无法覆盖 USER_PRESENT 晚于 Focus 的样本。

- 2026-09-03 UNLOCK_RESOLUTION_EVIDENCE_BOUNDARY：【已被同机 A/B 与预滚动修复收口】高分辨率不是已证明的动画计算根因，当前可见停顿来自 Focus Gate 暴露静止 Launcher Layer。

- 2026-09-02 ISSUE_11_DESKTOP_LOCAL_GEOMETRY：Cell 局部偏移与真实资源 profile 的 Placement 分离，几何测试通过，状态为 FIX_IMPLEMENTED_PENDING_REMOTE_ACCEPTANCE。

- 2026-09-01 UNLOCK_FIRST_GL_FRAME_EXTERNAL_TRACE：该样本派发与 CPU 绘制为毫秒级，但没有 FIRST_PRESENT，不足以确认 FIRST_BAD_UNLOCK_LAYER。

- 2026-08-31 FOLDER_WEATHER_OWNER_INITIAL_REPLAY_FIX：新 Folder 天气 Owner 已复用原链回放缓存数据，Open Folder 图标仅按约定小幅增大；V2458A 首次显示通过，既有首次打开 GL 卡顿仍未修复。

- 2026-08-29 MEIZU_WEATHER_PACKAGE_DETECTION_FIX_IMPLEMENTED：仅补充 Flyme 官方天气精确包名识别，逻辑与构建通过，Meizu/Flyme 真机运行时验证待完成。

- 2026-08-30 DESKTOP_SETTINGS_ACTIVITY_TRANSITION_IMPLEMENTED：仅为桌面与设置主页面增加进入/退出转场，V2458A 双向各 20 次通过且未影响设置内部导航。

- 2026-08-25 FOLDER_PREVIEW_CELL_MODE_CACHE_OWNER_FIX：Folder Preview 三类图标统一使用 Folder Cell 的真实 `Qj.fH` 生成缓存与合成，V2458A Calendar/Clock 尺寸及宫格切换验证通过。

- 2026-08-21 ACTIVEICON_REAL_STATIC_ORACLE_FIX：ActiveIcon 外层几何改为跟随真实 STATIC 节点，不再使用 synthetic geometry fallback；完整逐帧与跨比例矩阵仍待验证。

- 2026-08-21 【已废弃】ACTIVEICON_STATIC_LIVE_GEOMETRY_AND_GOLDEN_BASELINE_FIX

- 2026-08-21 【已废弃】ICON_RENDERING_CONTRACT_IMPLEMENTED_MATRIX_PENDING

- 2026-08-21 ICON_RENDERING_CONTRACT_ARCHITECTURE_FROZEN：图标 Source、Geometry、Composer 与 ActiveIcon Sync 四层 Owner 已冻结到 `ICON_RENDERING_CONTRACT.md`，不得恢复固定倍率或多重合成。

- 2026-08-21 【已被 DEFAULT_VISIBLE_FIT 取代】EFFECTIVE_ICON_SOURCE_NORMALIZATION_FIX

- 2026-08-21 ICON_UNIFICATION_DOCUMENT_AND_CODE_AUDIT：静态与动态图标仍存在未闭环的最终 Owner 和运行时矩阵，统一状态降级为 `ARCHITECTURE_PARTIAL / RUNTIME_UNVERIFIED`。

- 2026-08-21 RESTORE_IMPROVED_ICON_SOURCE_FIRST_FIX：新 schema v3 备份已保存并恢复改进版 RAW source，V2458A 单次恢复重绑定通过，旧归档与其他来源仍受验证边界限制。

- 2026-08-21 RESTORE_IMPROVED_ICON_SOURCE_SCOPE_CORRECTION：一次恢复只证明 V2458A 新 schema v3 的普通改进版 RAW source，不代表 QuickLaunch、旧归档、全部 raster 或跨 ROM 已通过。

- 2026-08-20 SMS_NOTIFICATION_BADGE_RESOLUTION_FIX_FINAL：短信通知包与桌面包动态归集后，V2458A/OriginOS 数字角标验证通过，其他 ROM 仍需对应真机验证。

- 2026-08-17 UNLOCK_ANIMATION_SESSION_GATE_FINAL：解锁触发收敛为单次 Keyguard Session 并移除伪造延迟信号，模拟器矩阵通过，多 ROM 真机仍待验证。

- 2026-08-17 BACKGROUND_RUNTIME_TITLE_WIDTH_FIX_FINAL：后台运行设置的状态 TextView 改为按内容宽度占位，构建与安装验证通过，真机视觉确认待完成。

- 2026-08-16 ACTIVEICON_FOLLOW_CURRENT_STATIC_GEOMETRY_ATTEMPT：该阶段尝试让 LIVE root 跟随 STATIC world bounds，但没有运行时命中证据，不得标记视觉统一完成。

- 2026-08-16 【已被 Icon Rendering Contract 取代】ACTIVEICON_ICON_SIZE_PERCENT_PROPAGATION_ROOT_CAUSE

- 2026-08-18 ACTIVEICON_ICON_SIZE_FACTOR_FINAL_SCALE_OWNER_TRACE：诊断 APK 已安装，但尚未触发完整 Weather/Calendar 刷新取得 FIRST_FACTOR_LOSS_STAGE。

- 2026-08-18 ACTIVEICON_ICON_SIZE_FACTOR_OWNER_BRANCH_FIX：用户倍率从永不执行的 mode 分支移到 H/m root 创建后的统一位置，静态实现完成但当时尚待运行时确认。

- 2026-08-18 ACTIVEICON_ICON_SIZE_FACTOR_OWNER_RUNTIME_CONFIRM：V2458A 已确认 H/m root 从 1.0 正确进入当前用户倍率，证明最终倍率 Owner 在 root 创建后生效。

- 2026-08-18 ACTIVEICON_STATIC_ARTWORK_BODY_BASELINE_ATTEMPT：STATIC/LIVE 对齐尝试改用 artwork body 语义，但后续合同已接管最终几何结论。

## 本文档职责

本文档负责记录 BUG 根因、修复方式、验证过程、回归注意和历史决策。每次修 BUG、改行为、推翻旧方案、做 ADB / 真机验证后，都要在这里新增倒序日期记录，并同步维护顶部“最新专项补录”的一句话结论。

每日记录固定使用两级结构：`### YYYY-MM-DD` 表示日期，`#### 事项标题` 表示当天的具体修改；同一天的新内容追加在该日期下方，不得重复创建日期标题。被推翻的事项在标题前标记 `【已废弃】`，只保留标题，不保留可能误导后续修改的旧正文。

本文档和其他文档的边界：

- README 只放当前安装方式、当前能力、版本 / 兼容基线和关键防回归规则；不要把本文档的每日流水复制进 README。
- `docs/architecture/APK_STRUCTURE.md` 负责原始 APK、反编译目录、主题包身份和 Release 资产筛选规则；本文档只在修复过程需要时引用结论。
- `docs/build/BUILD_GUIDE.md` 负责构建工具、PATH、签名、版本号写入点和二进制 Manifest 修改；本文档不重复这些脚本细节。
- 如果本文档历史小节和顶部“最新专项补录”冲突，以最近日期的每日记录和真机验证结果为准。

注意：本文档正文只保留当前可信结论和倒序每日修复记录。被真机验证推翻的整节方案只保留日期与标题，并统一标记为“【已废弃】”；正文已清空，不得根据标题猜测或恢复旧实现。如果其他文档与本文档冲突，以最新真机证据和最近日期的每日记录为准。

构建工具、系统 PATH、签名流程、APK 版本号写入点和二进制 Manifest 修改方式，统一记录在 `docs/build/BUILD_GUIDE.md`。改版本或临时降版测试检查更新前先看该文档，最终版本号必须以 `aapt2 dump badging build\launcher-signed.apk` 为准。

## 阅读顺序

建议按下面顺序接手，不要从文件中间的旧计划直接开始：

1. 先读顶部“最新专项补录”，快速确认最新结论和待验证边界。
2. 再读“每日修复记录（倒序）”，按日期倒序查最近改动。
3. 旧错误实验只保留日期和标题，并标记为“【已废弃】”；不得按标题猜测实现。
4. 同一天有多条记录时，越靠上的记录越新；参数或结论冲突时，以同日靠上的记录为准。

## 每日修复记录（倒序）

### 2026-09-09

#### 快捷桌面进入搜索后的返回闪现修复

- **根因**：快捷桌面点击搜索复用了普通外部应用的延迟关闭策略，只设置 `actionLaunchPending`，等待 Launcher `onStop()` 或返回时的 `onResume()` 再关闭宿主。但同 APK 的 `OriginalQuickSearchActivity` 使用透明窗口，Launcher 不一定进入 `onStop()`；搜索退出时透明窗口先露出下面仍打开的快捷桌面，随后 Launcher `onResume()` 才执行关闭，表现为先闪回快捷桌面再回首页。
- **修改**：搜索入口使用独立的 `searchLaunchPending` 两阶段交接：先保留快捷桌面并启动搜索，`OriginalQuickSearchActivity` 窗口首次获得焦点时调用 `onSearchSurfaceReady()`，再同步隐藏并释放底层 PopupWindow。若目标按普通不透明 Activity 流程令 Launcher 进入 `onStop()`，原有生命周期兜底仍会关闭宿主并清理标记。音乐、支付、设置和六个快捷工具继续沿用目标覆盖后关闭策略；未修改搜索退出动画、首页手势、快捷桌面滑动或桌面分页。
- **原版与参考边界**：当前正式搜索仍是同 APK 的 `OriginalQuickSearchActivity`，没有恢复独立 QuickSearch APK、截图、PixelCopy 或模糊背景。`clean_launcher` 的原版入口使用独立 QuickSearch Provider，与当前 Launcher 内透明 Activity 的生命周期不同；maintained 没有当前快捷桌面宿主，不能直接提供修复实现，因此本次只在两者交接边界做最小兼容修复。
- **验证**：`git diff --check` 通过，完整 `build.bat` 成功；最终 APK 为 `v1.5.7 / 32`，v1/v2/v3 签名有效，SHA-256 为 `6FF2BB1408161B310FB51F38AC62A4969371AD9CB3FF92796C205218D81A0883`。构建完成后 ADB 无在线设备，未执行覆盖安装和真机动画录制，因此当前状态为实现与构建通过，不标记视觉 PASS。
- **风险与回归**：该交接避免“先关快捷桌面再等搜索启动”可能产生的进入前桌面空档，也避免返回时仍保留快捷桌面；仍需在真机检查首次与重复进入搜索、系统 Back、搜索栏取消、输入法显示/隐藏、横条/三键导航及搜索启动失败回退。其他快捷桌面动作只增加搜索专用标记隔离，不改变目标覆盖策略。

### 2026-09-08

#### 快捷桌面固定快捷工具跨品牌解析

- **根因**：便签入口只尝试 Smartisan 的固定 Activity 和 `com.android.notes`，魅族便签等厂商包即使已经安装也无法命中，最终错误提示“未安装便签软件”。录音、计算器、日历和时钟虽已有部分 Android 标准 Intent 或少量厂商包兜底，但覆盖顺序和品牌范围不一致，同样可能在其他 ROM 上误报未安装。Android 本身没有统一的“打开便签”Intent，因此不能仅靠一个通用 Action 解决。
- **修改**：保持六个原版固定图标与点击热区不变，只扩展 `QuickDesktopActions` 的动作解析。便签依次尝试 Smartisan 原入口、Smartisan/魅族/小米/OPPO/vivo/华为/荣耀/三星等已知应用包，最后复用项目现有系统图标识别语义，按 Launcher Activity 的包名、类名和“便签/笔记/备忘录/Notes/Memo”桌面名称解析，并优先系统应用。日历、录音、计算器和时钟先走 Android 标准 Category/Action，再走厂商包和同类身份兜底；城市服务继续按用户选择的支付宝/微信快捷入口处理，不伪造不存在的 ROM 城市服务 API。
- **原版与参考边界**：`clean_launcher` 和 maintained 仅提供 Smartisan 固定组件或旧数组参考，不能覆盖现代厂商包；本次复用了当前 `IconManager` 已验证的 package/component/label 分类原则，没有创建新的 Manager/Service、没有修改原版手势、卡片布局或支付协议。
- **验证**：`git diff --check` 和完整 `build.bat` 通过，`v1.5.7 / 32` APK 已用 `adb install --no-incremental -r -d` 保留数据覆盖安装，v1/v2/v3 签名有效；本地产物与设备 `base.apk` SHA-256 均为 `FAACE84F78700522FBFFDA53F45FABB5C65B84C046D3D58B087EC99648FA0CA0`。V2458A/Android 16 的系统解析结果分别为日历 `com.bbk.calendar/.MainActivity`、录音 `com.android.bbksoundrecorder/...ReclistActivity`、计算器 `com.android.bbkcalculator/.Calculator`、时钟 `com.android.BBKClock/.alarmclock.HandleApiCalls`，便签包 `com.android.notes/.Notes` 也存在且可启动；安装后未见本轮 `FATAL EXCEPTION` / `AndroidRuntime` 崩溃。
- **风险与回归**：当前没有连接魅族设备，所以 `com.meizu.notepaper` 及其身份兜底属于实现和构建验证，不能写成魅族真机 PASS。各 ROM 若隐藏系统工具 Launcher Activity 且又不实现标准 Intent，仍需取得该机实际 package/component 后补精确候选；身份兜底只在标准入口和已知包均失败时启用，降低误开同名第三方应用的风险。

#### 快捷桌面快速切换与正常旧备份误报损坏修复

- **根因**：快捷桌面打开进度恰好达到 `100%` 时，`settleTo(1)` 的立即完成分支只更新位移便返回，没有调用 `onHostOpened()` 将 PopupWindow 切成可触摸状态；打开动画尚未结束时也要等最后一帧才接管触摸。快速反向滑动因此可能落到下层 `RootView`，既会造成快捷桌面看似卡住，也会让关闭手势继续驱动桌面分页而进入第二页。恢复问题并非归档损坏：恢复预览若被快捷桌面等其他设置路由直接替换，原 READY 状态的 `PreparedRestore` 和全局操作令牌不会经过预览返回回调释放；再次选择任何正常备份时，忙碌状态又被错误编码成 `RESTORE_INVALID_ARCHIVE`，界面遂显示“备份文件无效或已损坏”。
- **修改**：`QuickDesktopHostView` 在打开吸附开始时即调用 `onHostOpened()` 接管下一次触摸，并补齐进度已到终点的立即完成分支；一次触摸未结束时即使内容到达关闭边界也不提前销毁窗口，部分展开状态允许双向水平拖动以支持快速反转。`DesktopRestoreController.validateSelectedFile()` 在用户明确选择新文件时先安全丢弃尚未执行的旧预览，再获取新令牌；真实并发占用改用 `RESTORE_OPERATION_BUSY`，设置页显示“桌面正在执行其他设置，请稍后再试”，不再冒充文件损坏。
- **原版与参考边界**：Launcher 侧继续由原版 `RootView` 负责首页、方向锁和连续打开进度，替换宿主只修 PopupWindow 的触摸所有权交接；未新增第二套桌面分页或手势识别。原版 APK 与 `clean_launcher` 没有当前 `.slauncherbackup` 兼容层，备份修复仅处理当前移植版未执行预览的生命周期，不放宽 ZIP、路径、清单、JSON、校验和或 PNG 安全校验。
- **验证**：四份设备备份（`2026-08-22 10-01`、`2026-09-07 09-09`、`2026-09-08 20-03`、`备份快捷方式`）逐一通过 ZIP 完整性、必需条目、逐文件 SHA-256 和便携图标 SHA-256 核验，确认原提示属于状态误报。`git diff --check` 与完整 `build.bat` 通过，最终 APK 为 `v1.5.7 / 32`，使用 `adb install --no-incremental -r -d` 保留数据覆盖安装成功，设备 `dumpsys package` 确认版本一致。V2458A/Android 16 上已复现“恢复预览被快捷桌面设置替换”的原触发顺序并安装修复包，用户随后确认恢复和快捷桌面当前均正常。
- **风险与回归**：本次真机结论覆盖 V2458A/Android 16 当前手势节奏和上述四份 format v2 备份；Android 8–15、三键导航、不同触控采样率以及 format v1 归档仍未组成完整矩阵。真正截断、校验和不符或内容非法的备份仍会按原安全策略拒绝恢复。

#### 快捷桌面默认开关状态无法备份恢复

- **根因**：`SharedPreferences.getAll()` 只返回已经实际写入 XML 的键，而快捷桌面总开关和四类卡片开关默认均为开启。用户在默认状态创建备份时，未操作过的开关没有持久化键，`settings.json` 因而缺少这些状态；之后关闭开关再恢复，恢复器没有旧值可覆盖，表现为备份和恢复都没有效果。恢复本身已经使用同步 `commit()`，归档也始终包含 `settings.json`，问题不在异步落盘或 ZIP 漏文件。另一个边界是原版 `Constants.sLeftScreenEnabled` 属于进程内手势门控，恢复后的新 Launcher 实例此前没有主动从快捷桌面私有配置重新同步。
- **修改**：`PreferenceBackupCodec` 在编码 `quick_desktop_private` 时不再只复制物理键，而是通过 `QuickDesktopController` 读取总开关、四类卡片、个性签名、默认音乐应用和快捷支付提供方的完整逻辑值，默认状态也明确写入新备份；其他偏好文件的既有白名单策略不变。恢复仍只应用归档中实际存在的字段，因此旧备份缺少快捷桌面字段时不会臆测覆盖当前设置。`QuickDesktopController.attach()` 在每个 Launcher 新实例附着时把已恢复的总开关同步到原版 `sLeftScreenEnabled`，并增加每个偏好文件的字段计数日志用于备份/恢复核验。恢复预览新增“快捷桌面组件”一行，显示四类组件中的启用数量及快捷桌面总开关状态；旧备份缺少完整字段时明确显示“旧备份未包含”，不误报为 0。
- **原版与参考边界**：原版 APK / `clean_launcher` 没有当前移植版的现代 `.slauncherbackup` 与快捷桌面私有配置；maintained 参考项目也没有可直接复用的快捷桌面备份实现。本次只修当前兼容层，没有改原版数据库、手势进度、卡片布局或系统权限策略。
- **验证**：`git diff --check` 通过；两次完整 `build.bat` 均通过，最终 APK 为 v1.5.6/31，v1/v2/v3 签名有效，SHA256 为 `90AFF2CB5039B4B5A89486FF0B0E3BC4048F3A81A7371BE6F912D22A2C54DBB7`，X21A/Android 9 已安装 `base.apk` 与本地产物哈希一致。真机新建的 `2026-09-08 08-42.slauncherbackup` 中 `settings.json` 已确认 `quick_desktop_private` 包含总开关、四组件开关、个性签名、音乐应用和支付提供方共 8 个字段；用户随后执行一次恢复并确认设置重新生效，08:52 日志进入 `confirmStartRestore()` 且未出现 `FATAL EXCEPTION` / `AndroidRuntime`。最终恢复预览真机显示“快捷桌面组件 4 / 4 · 已开启”，Launcher 重建首帧后首页右滑可正常进入快捷桌面。
- **风险与回归**：只有使用本修复版本重新创建的备份才具备完整默认状态；旧备份没有快捷桌面字段时按兼容策略保持恢复前当前值，并在预览中标明未包含。当前已关闭默认全开归档的备份、恢复和预览可见性问题；“部分关闭备份→全部开启→恢复”的组合矩阵，以及 Android 8–16 跨 ROM 恢复仍需后续 Phase 3/5 Gate 覆盖。

### 2026-09-07

#### 快捷桌面 9 月 6–7 日阶段汇总（整体约完成一半）

- **已完成的原版主链**：沿用 Launcher 原 `RootView` 首页右滑入口和连续进度，快捷桌面不是数据库分页、Activity 覆盖层或系统悬浮窗；普通首页与多板块首页均使用本次手势起点的实时桌面截图，按“清晰截图→渐进模糊→暗层→完整内容页”固定层级渲染，整页跟手、悬停、松手吸附、反向退出、Back/HOME 和关闭总开关后的回弹已经收口。
- **已完成的固定内容**：按原 432 宽坐标恢复天气、搜索、音乐、扫码/付款、六个快捷工具和生活信息卡片，并完成跨宽高比等比缩放、整体下移、透明导航横条、搜索图文对齐、温度单位间距、城市显示、个性签名、快捷工具垂直居中及音乐长文本避让播放按钮。音乐接入标准 MediaSession 的曲名、歌手、封面、状态、播放/暂停、上一曲、下一曲与双界面；封面使用卡片同圆角，左上角音乐入口可跳转选定的已安装音乐应用。
- **已完成的设置与动作**：桌面设置主页面使用单一“快捷桌面”标签，右侧 Switch 启停，只有开启后点击左侧才进入设置；每个主设置标签的说明文字位于卡片下方。快捷桌面页的“音乐 & 快捷支付”同样使用一个标签和 Switch，左侧进入二级页，默认音乐应用、快捷支付应用和音乐信息权限均归入该二级页；音乐候选仅枚举已知系统/第三方播放器，不再混入浏览器、抖音、淘宝或微信。搜索、计算器、时钟、音乐及支付宝/微信快捷入口均走目标首帧覆盖与安装状态检查，未安装时给出提示；微信扫码/付款使用其已发布的 Launcher Shortcut 能力，支付角标随提供方切换。
- **已完成的数据边界**：总开关、四类固定卡片开关、个性签名、默认音乐应用和快捷支付提供方均使用快捷桌面私有配置；可移植配置已加入桌面备份白名单，通知使用权仍由 Android 系统管理且不写入备份。固定原版卡片保持固定布局，不进入第三方 Widget 的自由编辑模式。
- **当前完成度与未完成项**：Phase 0–2 已 PASS，Phase 3 的 V2458A 视觉与主要交互已通过，按完整方案（Phase 0–5）计约完成一半。仍需完成备份→清理/迁移→恢复实测、支付宝/微信扫码与付款四组合回归、固定卡片全部开关组合、关闭总开关回弹复测，然后才可将 Phase 3 标记 PASS；Phase 4 的标准 `AppWidgetHost` 选择/绑定/配置/持久化/恢复/删除/排序/尺寸/失效占位尚未开始，Phase 5 的 Android 8/11/12/14/16、宫格、分辨率、字体与导航模式矩阵也尚未开始。

#### Maintained 设置总宿主首轮职责拆分

- **根因**：`MaintainedLauncherSettingsHost.java` 已增长到 19,632 行、约 954 KB；快捷桌面页面绑定、音乐应用筛选、快捷支付选择和通知使用权入口集中混入主题、角标、备份等旧职责，继续在总类追加会放大回归与维护风险。
- **修改**：新增 `QuickDesktopSettingsHost.java`，整体接管快捷桌面设置主页、音乐与快捷支付二级页、个性签名、播放器候选、支付提供方及音乐信息权限绑定。总宿主只保留页面路由、共享 Smartisan 设置壳和卡片 Switch 的原有通用能力，并将必要通用方法由 `private` 收窄为同包可见；布局、Preference 键、点击条件、页面动画和持久化 Owner 均未改变。总宿主降至 19,307 行，本轮没有继续拆其他历史模块。
- **验证**：完整 `build.bat` 通过，APK v1/v2/v3 签名有效；最终 APK 与 V2458A 已安装 `base.apk` SHA256 均为 `B2BC356CADE39D44B4EFC4D130C2C75A9ECB2EF5E6575B46C0C1402663F4CCD5`。真机直接进入“快捷桌面设置”，页面、四个 Switch 与个性签名正常；点击已开启的“音乐 & 快捷支付”进入二级页后，默认音乐应用、快捷支付应用和音乐信息权限三项均正常显示。`git diff --check` 无空白错误。
- **风险**：这里只完成快捷桌面职责的第一轮机械拆分，没有借机重构 1.9 万行中的其他设置模块。后续拆分必须按主题、图标、角标、备份等独立边界逐个进行，并在每次拆分后重复页面导航、返回栈和真机构建 Gate，禁止一次性“大切文件”。

#### 快捷桌面支付徽标原版尺寸对齐（V2458A 真机视觉通过）

- **根因**：项目提供的 `wechat.png` 为 698×698 ARGB 图片，但绿色圆形主体只占约 514×512，四周各有约 13% 的透明留白。此前直接把整张图片画进 23 个设计单位的目标框，实际可见圆只有约 17 个设计单位，因此虽然方形底图和双层图标已经消除，视觉仍明显小于原支付宝徽标。
- **修改**：微信徽标作为 Launcher 运行时资产放入 `launcher/assets/quickdesktop_original/wechat_badge.png`；首次加载时按 Alpha 非透明边界裁去透明留白，再以原支付宝圆盘约 20 个设计单位的可见直径绘制。两个支付卡片继续共用原版锚点 `x=390.5` 及各自原 `centerY`，未增加包图标 fallback 叠层，也未改卡片主体和点击热区。
- **验证**：`build.bat` 完整通过并成功覆盖安装至 V2458A/Android 16；最终 APK SHA256 为 `888490BFC03CE7FBF45769EBFE4A4580C42D3BD0A2BC67E98249FA69972CB405`。HOME 后完整右滑进入快捷桌面的真机截图确认两个微信徽标位置一致、圆形边缘完整、无支付宝残留、无方形底图；用户确认“现在对了”。
- **Gate 边界**：本条只关闭支付徽标的视觉问题。Phase 3 的 V2458A 视觉与主要交互已经过多轮真机反馈，但备份→清理/迁移→恢复，以及支付宝/微信扫码和付款双入口的完整回归证据仍未齐；在这些 Gate 完成前不把 Phase 3 或跨 ROM 状态扩大为 PASS。

#### 负一屏原版固定卡片功能与跨分辨率布局补齐（待真机验收）

- **布局**：继续使用原版 432 宽坐标，不改变已验收的整页跟手层；内容整体从 22 调整到 42 个设计单位。绘制与点击统一使用 `min(windowWidth/432, windowHeight/768)`，短屏按高度缩放、宽屏水平居中。温度单位改为按温度文本实宽定位，搜索图标/文字以同一中心线对齐，快捷工具图标在卡片中垂直居中并删除非原版需求的页码圆点。
- **天气与自定义文字**：头部城市读取动态天气同源的自动/手动城市，不再写死“本机”；原“0步”由负一屏设置中的“顶部自定义文字”控制，空值回退“0步”，最长 12 字符。
- **音乐**：音乐卡读取标准 `MediaSessionManager` 的歌曲、歌手、播放状态和封面；播放按钮随状态切换，未授予通知使用权时仍以公开媒体键控制并即时回写按钮状态。点击唱片区域切换原版紧凑/中央控制两种界面，第二界面提供上一曲、播放/暂停、下一曲；左上角放大后的音乐图标单独进入系统可用音乐播放器。设置页新增“音乐信息权限”入口，说明封面和曲目信息依赖 Android 通知使用权。
- **备份恢复**：备份白名单加入 `quick_desktop_private`，覆盖总开关、四类固定卡片开关和顶部自定义文字；天气手动城市及坐标继续作为可移植配置保存。通知使用权属于 Android 系统授权，按既有安全策略不写入备份，恢复后需用户在新设备重新授权。
- **验证**：`git diff --check` 通过；`build.bat` 完整编译、资源打包与签名通过，APK 为 v1.5.6/31，v1/v2/v3 签名有效，SHA256 `EF1A7DC1D7ACBD647348DC2F60C1D4E7C84B3D4738F0CF5D01FD4D73A0A12AC2`。当前 X21A/Android 9 已安装基线仍为 `444055C9...`；普通 `adb install -r` 未完成覆盖，`adb push + pm install -r -d` 明确返回厂商 `Failure [-200]`。另一台 DT1902A 是不同版本/签名系统桌面，未做危险覆盖。因此本节只能标记实现与构建通过，视觉、点击、权限返回和备份恢复均待真机验证。
- **风险**：第三方播放器只有暴露标准 MediaSession 且用户授予通知使用权时才能提供曲名和封面；部分播放器可能不支持上一曲/下一曲。Android 8/11/12/14/16、不同宽高比和字体缩放矩阵仍未通过，不得将 Phase 3 标记 PASS。

### 2026-09-06

#### 负一屏 Phase 3 设置与固定入口接线（真机验收中）

- **设置结构**：桌面设置主页面仅保留一个“负一屏”开关项；右侧 Switch 直接启停原 `RootView` 入口，点击该项其他区域进入二级设置。二级页提供“音乐 & 快捷支付、快捷工具、日历提醒、生活信息”四个原版固定组件开关。Android 小组件管理区在标准 `AppWidgetHost` 的选择、绑定、配置、删除和恢复链完成前保持隐藏，避免出现无功能入口。
- **内容与动作**：固定卡片按开关动态收拢；天气头部读取桌面动态天气同源 `WeatherBridge` 数据。音乐优先 Smartisan Music，并按 ROM 精确包名回退到本机音乐；计算器、时钟、日历和录音依次使用原版精确组件与 Android 公共 Intent；支付宝扫码/付款保留原 Magic Flow URI。搜索及应用启动改为系统接受目标后延迟 220ms 关闭宿主，用目标首帧覆盖 Launcher，避免先露出一帧桌面。
- **视觉微调**：完整内容层统一向下移动 22 个原版设计单位，点击热区同步移动；Launcher 导航栏继续透明铺底并关闭 Android 10+ 的强制对比底色，目标是与桌面手势横条一致。
- **验证**：上一构建已在 V2458A 确认二级设置可进入，关闭“快捷工具”后负一屏卡片即时收拢且原手势仍能打开。包含天气、点击首帧覆盖、合并主开关、下移及导航底色修正的新 APK 已通过 `build.bat` 和 `git diff --check`，SHA256 为 `678B76A21CC80150AC32E3FF7913005CF6990288AAF581DE971FD5AE65142E2B`；构建后设备断开 ADB，尚未安装，不能标记 Phase 3 PASS。
- **风险与边界**：日历提醒仍遵循原版“无事件时容器为 GONE”的数据驱动语义；天气数据需要用户已开启动态天气并完成定位/城市设置。第三方 Widget、Android 8–16 跨 ROM 与完整分辨率矩阵仍未开始验收。

#### 负一屏 Phase 2 原版运动与背景链路

- **根因与原版证据**：原 `com.smartisanos.magicflow.apk` 已从 `original_apks/` 解包审计。其 `RootView` 将完整 `ContentView.translationX` 限制在 `-screenWidth..0`，背景 `BackgroundView` 不参与横移；背景由当前 Launcher 截图、模糊缩略图和暗层组成。此前内部宿主只有背景空壳，且二次累计位移、半透明截图交叉及旧首页缓存会分别造成无卡片、漂移重影和多页面模式显示旧首页。
- **修改**：保留 Launcher 原 `RootView` 手势门控，以其归一化 `Ad` 唯一映射 `openProgress=1-Ad`，只平移一个完整内容层；加入原版 432 宽度比例的头部、音乐/支付、快捷工具和生活信息首屏骨架并复用 Magic Flow 原图。背景改为清晰截图不透明托底、模糊层覆盖、暗层及内容层的固定顺序；每次有效右滑使用本次手势按下时的 GL 帧，不再复用进入编辑/多页面模式前的旧首页。
- **保持不变**：未加入 PageIndex 或桌面数据库，未修改 `fa.updateScroll()`，未创建 Activity/Service/系统悬浮窗，未申请私有权限；搜索、分页、Folder、HOME 与解锁主链保持原 Owner。
- **验证**：`build.bat`、覆盖安装及设备 APK SHA 一致性通过；V2458A/API 36 上完整打开、反向关闭、Back/HOME、分段拖动和中途悬停已运行。两张同一悬停位置截图像素一致的样本已取得；用户随后明确确认“现在完全正常了”。Phase 2 据此收口，后续视觉微调不得重新引入第二套位移累计或手势中途更换截图。
- **风险**：当前卡片数据与点击目标尚未全部接通，第三方 `AppWidgetHost` 尚未开始；Android 8/11/12/14 与其他 ROM、分辨率及编辑模式完整矩阵仍待后续 Gate。兼容模糊使用预渲染位图，参数与 Smartisan 原私有实时模糊实现不同，最终视觉继续以真机验收为准。

### 2026-09-05

#### v1.5.4 解锁 Resume 预滚语义恢复

- **根因与证据**：本轮安装前的 Focus 版真机样本为 `USER_PRESENT→COMMIT=117ms`，会在 Launcher 已可见后才播放；随后验证的 direct-dismiss 版虽为 `USER_PRESENT→COMMIT=2ms`、`COMMIT→START=11ms`，用户仍能感知晚。另一方面，首次 locked Resume 立即播放会比 USER_PRESENT 提前约 `367–418ms`，用户确认过早。`v1.5.4` 实际源码不是立即播放，而是 `onLauncherResumedForUnlock()` 在确认锁屏离场后通过主线程延后 `120ms` 派发原版锁屏/解锁链。
- **修改**：当前严格 Session 在同一 Session 已 Prepare、Launcher locked Resume、direct handoff 有效且尚未消费时，仅安排一次 v1.5.4 的 `120ms` Resume 预滚。到时仍由唯一 `tryCommitUnlockAnimation()` 授权并派发原版 `q(1)`；若 USER_PRESENT 已先到则立即消费，延后任务自动失效。Pause/Stop、非直接回桌面取消、重复广播及以后 HOME 不补播规则不变。
- **范围**：未改 Unlock XML、Timeline、duration、`Eb.update/Ra.T`、刷新率或 Window/Surface flags。这里的 `120ms` 不是新猜测参数，而是从 `v1.5.4` 对应源码恢复的已存在语义。
- **验证**：`git diff --check`、`build.bat`、v1/v2/v3 签名、覆盖安装、设备同源 SHA 与 ART verify 通过。V2458A 连续两次有效 Session 均命中 `V1_5_4_RESUME_PRE_ROLL`：Resume→Commit 约 `120/123ms`，Commit→Start `4/5ms`，Start 分别比 USER_PRESENT 提前 `236/223ms`、比 Focus 提前 `337/383ms`，每次仅 Commit/Start/Finish 一次；动画运行 `1313/988ms`。最终肉眼节奏仍以用户验收为准。

#### DEFAULT APK 图标可见主体统一

- **根因证据**：新缓存 v19 已实际重建，排除旧缓存混用。真机日志显示全部来源虽使用同一 `192px artwork / 246px texture`，但 DEFAULT 源图透明可见比例从约 `0.75` 到 `1.0` 不等；完整源画布等比塞入必然造成主体有大有小。此前 DEFAULT-only Launcher3 normalizer 只会缩小面积过大的图标、不会放大带透明留白的图标，因此既造成整体偏小，也无法解决本问题。
- **修改**：仅 DEFAULT APK 来源使用已有 alpha 可见边界，将最长可见边统一对齐到 IMPROVED 当前约 `98%` 的 artwork 可见范围并按可见中心定位；IMPROVED/PACK/CUSTOM/RESOURCE 继续保留设计画布，不参与归一化。缓存身份更新为 `raster:v20-default-visible-fit`，所有分辨率按相同比例计算，不含包名、机型或固定物理像素特判。
- **保持不变**：未改 `IconVisualMetrics`、用户 50/100/150% 比例、宫格、Cell、文字、阴影、Folder Preview、ActiveIcon 或动态图标。
- **验证**：Java 编译、完整 APK 构建、覆盖安装与 ART verify 通过；v20 重建日志中典型 DEFAULT 的最长可见边由此前 `144–192px` 收敛到 `188–192px`，正常桌面与编辑页截图均已取得。不同图形的宽高比和内部构图仍由应用原图决定，最终视觉一致性以用户验收为准。

#### 桌面编辑齿轮恢复 v1.5.4 白色资源

- **根因证据**：`Ec.smali` 当前与 v1.5.4 逐行一致，差异来自资源。maintained 的 gear 本体为深灰；`clean_launcher_raw` 是实心白齿轮；Git 标签 v1.5.4 的受控 `build/launcher-signed.apk` 则使用用户记忆中的白色描边齿轮，三组图片均不是同一文件。
- **修改**：从 Git 标签 v1.5.4 自身归档 APK 逐字节提取并恢复 `editBtn_bg/gear/inShadow`，不复制 dex/smali；继续由原版 `Ec` 分层绘制和旋转，不增加 tint 或第二套按钮实现。
- **验证**：恢复后的三张资源 SHA256 分别为 `6504CE57…`、`FDB74861…`、`0CED6D8E…`，与 v1.5.4 归档 APK 完全一致；最终 APK 内再次核对一致，覆盖安装后的编辑模式截图已显示白色描边齿轮。上一轮原始 APK 实心白资源在真机仍显示不符，已由本记录取代。

#### 初始化加载页恢复原版纵向面板

- **根因证据**：Launcher 的 `loading_progress.xml` 及 80 帧 PNG 原本即与 clean 原版一致；差异来自后加的 `OriginalLoadingContentFactory`，它按屏幕宽度生成横向胶囊。原版/maintained 保存的 `smartisan_progress_dialog.xml` 则为 246×160dp 纵向面板、48dp 进度、13sp 单行文案及 12dp 上间距。
- **修改**：加载页工厂恢复上述纵向结构并加载已有 maintained 资源包中的原版 `smartisan_progress_dialog_bg`，资源不可用时才使用同尺寸暗色圆角 fallback；原版进度动画帧不变。
- **验证与风险**：构建、签名、覆盖安装及 ART verify 通过，无新增动画帧或时长；本轮没有为了触发加载页而改主题/宫格，纵向面板的实际动画视觉及首次加载 maintained 资源包的 I/O 影响仍待自然触发时验证。已完成真机测试的 APK SHA256 为 `E9043B9A11B1CE8A29A1B0DFA9F778DC9810B60B38D2844C72E7AEBCD26662F9`，当时设备 base.apk 与本地完全一致。随后仅修正诊断文字及 `.gitignore` 精确资源放行并重建，最终待安装 APK 为 v1.5.6/31、SHA256 `1C74EF1A97A590112F926FCDF82AC9531559585CCB068ED6E5F4FFD4A1459615`；手机在最后一次覆盖前断开 ADB，运行行为与已验证包相同但最终字节尚未装机核对。

### 2026-09-04

#### 【已被 2026-09-05 v1.5.4 Resume 120ms 预滚语义取代】解锁动画 App-only 边界：首次 locked Resume 立即预滚动

#### Launcher 铺满布局与导航横条解耦

- 根因：关闭隐藏虚拟键时错误清除 `LAYOUT_HIDE_NAVIGATION`；原版窗口初始化还会重写布局位。顶部布纹则是 `Lc → status_bar.png` 的实际贴图差异。
- 修复：保留上下系统栏布局，仅切换导航控件；隐藏默认 false；复用 maintained 默认主题状态栏资源，保留外部主题与状态图标明暗链。Unlock、Folder、图标几何不变。
- 资源：`launcher/assets/Textures/1080p/status_bar.png` 字节原样来自 maintained 同路径，SHA256 `971c34811d38673d3f839371eb19c9ea3325acec6c89e7d40083c6c50ca85416`；原工作区文件为 `be09aaee…`，原始 APK 对应文件为 `f700636b…`，三者不是同一文件。
- 验证：静态契约、构建、APK 内资源一致性、v1/v2/v3 签名及设备 ART verify 通过。V2458A/1260×2800 真机确认关闭开关时桌面铺满、横条保留、底部标签完整且默认主题顶部平滑；用户确认该效果正常。开启后隐藏横条的最终回切测试因设备被外部操作打断，不扩大为完整开关矩阵。历史“关闭隐藏同时清除底部布局标志”的方案由本记录取代。
- 范围：没有修改图标/文字几何、Folder 或 Unlock 动画。其他主题继续使用各自资源链，未逐主题截图；三键导航和其他 ROM 未验证。一次性专项文档与静态脚本在本轮收口删除，未提交、未推送，未更新 MEMORY.md。

### 2026-09-03

#### 有效 direct-handoff 的 USER_PRESENT 预滚动恢复

- **根因证据**：同一 V2458A 的既有 SurfaceFlinger A/B 中，v1.5.5 七个有效样本均在 USER_PRESENT 同步派发，ANIMATION_START 比 FIRST_PRESENT 早 `8.034–28.800ms`，FIRST_PRESENT 后 `9.254–60.669ms` 才获 Focus。CURRENT 唯一完整可解析样本则在 Layer visible 后约 `35ms` 才因 Focus 派发，形成静止 Buffer 暴露。v1.5.4 与 v1.5.5 的 `ia.1` 触发链和 `animations/c/k` 主体完全相同；v1.5.4“偶尔较短但不先停顿”符合锁屏后预滚动语义。分辨率可能放大设备差异，但不是本次已证明的动画主体计算根因。
- **修改**：仅在 `LauncherBelowKeyguardCompat.tryCommitUnlockAnimation()` 中区分真实 direct dismiss 与无 USER_PRESENT fallback。已有 `unlockDismissPending` 只会在 Session active、Launcher resumed 且 `resumeDuringKeyguardHandoff` 有效时建立；该信号存在时不再要求 WindowFocus，仍要求 Prepare、Resume、interactive、Keyguard unlocked、direct handoff 及未消费。无 dismiss 信号时继续要求 Focus，兼容不发 USER_PRESENT 的 ROM。Commit 前仍先设置 `unlockConsumed=true`，继续走唯一原版 `ACTION_INTERNAL_PLAY → ja.k().q(0)`。
- **保持不变**：未改 `ia.1`、`q(0)/q(1)`、unlock9/12/16/20、Timeline、duration、`Eb.update/Ra.T`、AnimationFrameRateController、Window/Surface flags、Folder、图标或天气；没有恢复 v1.5.4 的 120/250/1200/1500ms 生命周期时间猜测，也没有新增 Handler、Timer、Thread、ROM/分辨率判断。
- **构建与静态验证**：`git diff --check` 与 `build.bat` 通过；APK 为 `v1.5.6/31`，SHA256 `EB5E9FEF80DF710A093BF67D7C74D97B7F750FB819C9418EB556D3E21DBA7C4D`，v1/v2/v3 签名及设备 `cmd package compile -m verify -f` 通过，覆盖安装成功。
- **正常解锁真机验证**：V2458A/OriginOS 16 一轮记录 `USER_PRESENT → COMMIT=0ms`、`COMMIT → START=5ms`；Start 时 Focus=false，约 40ms 后 Focus 到达只记录 `UNLOCK_SKIP_CONSUMED`。本 Session 的 COMMIT/START/FINISH 均为 1，证明提前播放和 exactly-once 同时成立。trace 位于 `build/ab_unlock_evidence/current/run_11/`；该轮缺少分析器所需的完整 GL marker，不能声称已重新取得 FIRST_PRESENT，最终肉眼顺滑度待用户验收。
- **防误播真机验证**：明确打开 `com.android.settings/.homepage.SettingsHomepageActivity` 并确认其为 top 后锁屏解锁，Launcher 日志为 `UNLOCK_SESSION_NOT_ARMED_NOT_VISIBLE_HOME → USER_PRESENT/UNLOCK_SKIP_NO_SESSION`；随后 HOME 的 Resume/Focus 继续 `UNLOCK_SKIP_NO_SESSION`，`PLAY=0`。普通设置返回同样未触发 Unlock Play。
- **范围与风险**：当前只完成 V2458A 一轮正常解锁和一轮设置前台非直接解锁；还需用户肉眼确认停顿消失，并覆盖快速重复、通知/相机直达及不发 USER_PRESENT 的 ROM。未更新 MEMORY，未提交、未推送。

#### 高分辨率解锁延迟：只读复核与测量边界纠正

- **范围**：记录 Folder 实施后，只读检查当前源码、clean_launcher、maintained 的 UnlockAnimationXML 参考及设备已有日志；未改 Unlock Gate、q(0)/q(1)、动画 XML、Timeline、duration、刷新率、Window/Surface flags，未新建诊断 APK、构建或安装。跨设备“1080P 正常、高分辨率延迟”是用户反馈，尚缺同 APK/主题/宫格/刷新率的对应运行证据，不能直接判定分辨率根因。
- **设备与来源**：当前 V2458A 为 1260×2800；设备安装包 SHA256 与 Folder 候选 `A163744E84B82B31475C6C3F2756A21F9CBF7E2CD63D1EF1A7DA59BF09765EDE` 一致。读取的现存日志保存在 `build/unlock-resolution-audit/current-existing.log`，不是本轮受控解锁采集。

| 当日日志 Session | USER_PRESENT → COMMIT ms | COMMIT → ANIMATION_START ms | 最后条件 |
| --- | ---: | ---: | --- |
| 3，20:03:13 | 27 | 5 | WINDOW_FOCUS_TRUE |
| 4，20:03:17 | 42 | 4 | WINDOW_FOCUS_TRUE |
| 5，20:07:28 | 1525 | 2 | WINDOW_FOCUS_TRUE |

- **样本限制**：Session 5 是未标注用户操作的长焦点等待，不能当作高分辨率正常解锁的典型值；以上均没有同步 SurfaceFlinger 实际 present，因此不计算视觉延迟平均值，不证明高分辨率导致等待。USER_PRESENT 与实际检测 KEYGUARD_UNLOCKED 也不是同一测量点，不混用。
- **READY 的实际含义**：`ia.1.smali` 调用 `ja.hb().q(0)` 后，立即在接收回调中调用 `LauncherBelowKeyguardCompat.onPrepareReady()`。`smengine/n.1.q(F)` 委托 `p.1.a(n,F)`；零延迟分支只是把 Event 放入 `tE` 并请求引擎更新，之后才由 `p.update → ek → Event.run` 消费。`hb` 中的 `Eb.ai()` 清理旧 emergency event，不是 GPU 完成屏障。故 `prepareBegin==prepareReady` 只描述该兼容接线返回，不能证明原版 Scene 已完成 GL 准备、纹理上传或上屏。此处发现的是测量盲区，不是已经证明的卡顿 Owner。
- **原版/当前边界**：`ea.1.smali` 与 clean_launcher 文件一致；`animations/c/k.smali` 对照原版仅 `isPlaying()` 增加已结束检查，初始化/播放方法没有差异。maintained 的 `UnlockAnimationXML.init/start` 仍是独立的初始化与播放入口，不作为替换当前动画的依据。当前 `J` 的两处 Surface 初始化已经设置 `setPreserveEGLContextOnPause(true)`，不能把问题未经验证地归因于“没有保留 EGLContext”。
- **分辨率假设**：当前 `IconVisualMetrics.resolve()` 按真实 Surface 宽度与 logical width 比值确定 physical raster；当前样本 physicalScale=1，不表示各分辨率纹理像素数相同，因为 logical LayoutProperty 本身也已经适配。相同宽高比下，1260 宽相对 1080 宽约为 1.36 倍像素量，1440 宽约为 1.78 倍；这只是像素量计算，不是耗时预测，更不能排除 ROM/芯片/刷新率差异。
- **纠正旧结论**：9 月 1 日的 `onDrawFrame=1.793ms` 与 `eglSwapBuffers=0.256ms` 仅覆盖 CPU 同步区间。GPU/显示同步依赖 fence，不能以 CPU 返回替代 FIRST_PRESENT；撤销“已经排除 Launcher/GL 并确定 SystemUI Owner”的强结论。参考 [AOSP 图形同步说明](https://source.android.com/docs/core/graphics/sync)。当时 EARLY_PLAY 实验没有 FIRST_PRESENT 对齐，不能单凭 START 日志定性；后续同机 v1.5.5/CURRENT Surface A/B 已确认预滚动差异，并由本日更新的严格 Session 实现收口。
- **下一判决**：优先同一高分辨率设备使用系统原生分辨率设置做受控对照（需确认支持，当前未更改），核对实际 Surface/Buffer 尺寸，并固定同一 APK、主题、宫格、图标大小、刷新率、解锁方式；不把 wm size 的逻辑覆盖冒充面板/Buffer 真正降分辨率。对齐原版准备实际执行、CPU 帧、GPU ready fence、Launcher Layer visible、buffer frame number/present 与 Focus。只在证据确认纹理重建/上传或原版 Prepare Scene 被覆盖时修复对应 Owner；若 Buffer 已 ready 但系统延后显示，则不通过提前 q(1)、固定 delay 或改 Timeline 掩盖。若两版/分辨率的呈现与播放时间均相近，继续核对第一张可见 Buffer 内容。
- **状态更新**：本节是实施前证据边界；最新结论以同日上方“有效 direct-handoff 的 USER_PRESENT 预滚动恢复”为准。未将分辨率写成 ROOT_CAUSE。

#### Open Folder 共享纹理路径恢复候选与真机结果

- **原因与范围**：按用户要求停止历史 A/B 构建，仅撤销 Open Folder 普通应用独立 Mode8 final representation。方法级对照 37301 恢复 cache/调用入口语义，保留 CURRENT Folder dH 尺寸及两处 Desktop userScale 隔离。
- **修改**：`g.1.smali` 的 `cb/fb/md` 与 `IconRasterDiagnostics` 的 Cell key/普通 Folder 判断；共享 `e/s` 内部继续保留当前 Desktop static pipeline。并非完整 37301 源码回退，更不等于已证明恢复其性能。
- **冻结**：未改 Unlock、Timeline、duration、Eb.update/Ra.T、Folder 资源/文字、天气/日历 Owner、g.jl；已有 Issue #11、Unlock 与 Preview 差分均保留。
- **验证**：diff check、构建、签名、设备 ART verify、安装与冒烟通过。同一个九普通应用 Folder 的 50/100/150% 各一次冷启动首次/第二次打开已采外部 atrace；首次最大 onDrawFrame 为 83.162/87.735/77.642ms，第二次为 78.158/80.932/80.836ms。
- **结论**：共享路径已实施，但长帧仍在，不能写“文件夹卡顿已修好”。三档截图未见 Folder 跟随桌面缩放，精确像素一致性与用户顺滑手感验收仍未完成。本轮已复核三个临时测试应用回到原位及 Desktop 100%。
- **文档与仓库**：只记录已验证事实；未更新 MEMORY，未提交、未推送。

### 2026-09-02

#### Issue #11 Desktop 局部偏移 Owner 与真实 Layout Profile

- **证据**：反馈日志中 V2183A 的最终 Launcher Window/SurfaceView 为 1080x2400；适配器使用 1.25 纵向倍率，图标栅格却保持 230/295、physicalScale=1。原版四个高度 profile 的 MODE_12/20/64 局部偏移不随高度改变。
- **修复**：三个局部偏移明确按所选资源宽度缩放；P 保留实际 Resources/目录/mode，适配器复用原版 global.xml 的真实宽高，仅用于有原版差异证据的 Placement 字段。冻结其他视觉字段；不增加机型、分辨率特判，不改 Folder/Unlock。
- **审计纠正**：旧 factorFor 虽写了 name_off_set_y 的 scaleY，但整数字段筛选漏掉 off_set 名称，实际 MODE_64 为 -100/-9/-9，并非 -125/-9/-9。修复显式纳入该字段；1080 宽目标为 -100/-7/-7。
- **诊断**：gridToken 复用 Constants.cellCount；Surface Owner 用实际解析成功标志，数值计算不变。三类新验收日志由 APK 内专用 marker 控制，正常源码不保留 marker。
- **验证**：1944 组 JVM 实际适配器几何用例、374544 次非目标字段检查、72 组 Folder 全字段比较通过；925 个冻结 APK 资源/原生库条目与备份一致。首次诊断包有新增 Smali p1 异常分支类型冲突，已恢复备份后修正；增加 ART 类初始化验证，修正包构建与 v1/v2/v3 签名通过。完整 Android 视觉矩阵与 V2183A 远程对照尚未完成，不标记 ROOT_CAUSE CONFIRMED。
- **产物**：`build/issue11/launcher-issue11-acceptance.apk`，v1.5.6/31，SHA256 `B10033F07EA7F44513F8D7D156CC6FE609F2ACED4C52A8E719A37FEF00DA2817`。
- **真机边界**：最终验收包已覆盖安装 V2458A，桌面与文件夹冒烟可运行；中间诊断包确认本地实际 profile 为 2340x1080。前后截图 mode/图标位置不同，不计同条件视觉通过；最终日志读取为空，不计日志通过。已另构建不含 acceptance marker 的普通包，详见专项报告。
- **状态**：`FIX_IMPLEMENTED_PENDING_REMOTE_ACCEPTANCE`；字段表、资源链、验证边界及反馈者操作说明见 [专项记录](ISSUE_11_LAYOUT_ACCEPTANCE.md)。MEMORY.md 未更新；未提交、未推送、未向 Issue 发布未经验证的结论。

### 2026-09-01

#### 解锁动画首个 CPU GL 帧外部取证（未取得实际上屏时间，未改代码）

- **用户可感知问题**：V2458A 解锁时肉眼明确看到桌面先静止一下，随后原版解锁动画才开始运动。本轮只追踪第一张真实 GL 动画帧，不重新调查 Unlock Trigger/Gate 或 `q(1)`。
- **同一 Session 边界**：肉眼确认卡顿的 `sessionId=5` 中，`WINDOW_FOCUS_TRUE=893008662`、`COMMIT_PLAY=893008663`、`ANIMATION_START=893008665`，即 `FOCUS -> COMMIT=1ms`、`COMMIT -> START=2ms`。
- **外部 trace 对齐**：未新增生产日志，使用 atrace `view/gfx/sched/freq/idle/am/wm/input` 抓取同一轮。trace clock sync 将 logcat `ANIMATION_START` 对齐到 `1612539.414704s`；回调后第一个新启动的 `GLThread onDrawFrame` 为 `1612539.417238s -> 1612539.419031s`，所以 `START_TO_FIRST_GL_FRAME=2.534ms`、`FIRST_GL_FRAME_DURATION=1.793ms`。
- **CPU 帧补充证据**：`ANIMATION_START` 实际已发生在前一个正在执行的 `onDrawFrame` 内；该帧为 `1612539.414053s -> 1612539.416964s`（`2.911ms`），紧接的 `eglSwapBuffers` 为 `1612539.416970s -> 1612539.417226s`（`0.256ms`）。该片段未见 start 后 CPU GL 长阻塞，但不是可见帧或 GPU 完成证据。
- **结论纠正（2026-09-03）**：上述数值保留；原先据此将 FIRST BAD 收敛至 Keyguard/SurfaceFlinger 的推断证据不足。未测 Launcher Buffer 实际 FIRST_PRESENT/GPU fence，不能排除首帧内容问题或确认系统交接 Owner，也不能声称已经取得 first visible frame。仍不允许通过修改 Gate/Timeline 猜测修复。
- **冻结与验证范围**：未修改 `LauncherBelowKeyguardCompat`、`ia.1`、`q(0)/q(1)`、`unlock9/12/16/20`、Timeline、动画时长、`Eb.update()` 或 `Ra.T()`；未构建、未安装、未提交、未推送。当前只有 V2458A / OriginOS 16 的一次肉眼卡顿样本，未细分 SurfaceFlinger 内部 latch/present owner，也不得扩写为多 ROM 结论。
- 未更新 `MEMORY.md`。

### 2026-08-31

#### Folder 天气新 Owner 首次数据回放与 Open Folder 图标小幅增大

- **根因**：Folder/Open Folder 创建天气 `H` 后，`Eb.a(H)` 会清理旧实例并把新实例设为唯一 Owner，但原路径只在 Launcher model complete 或拖放时调用 `H.zq()`。当持久天气 Bundle 仍然新鲜、不产生新广播时，新 Owner 的温度保持默认值，第一次静态合成只得到蓝色背景；移出再移入恰好触发拖放刷新，所以立即恢复。
- **最小修复**：在 `Eb.a(H)` 写入新 Owner 后调用现有静态入口 `H.zq()`。数据继续由 `WeatherBridge.getWeatherBundle()` 读取并经原天气协议更新 `H`，`H.uq()` 继续通知所属 Cell 的 `gj()` 重绘；没有更改动态图标分类、数据格式、WeatherView 或缓存身份。
- **视觉范围**：仅调整 Open Folder portrait MODE_9 的 `_folder` artwork/texture 基准，1080 profile 为 `148/190`，sw411dp profile 为 `197/253`，相对上一版约增大 4%；Desktop、Folder Preview、文字间距、书架、阴影和 landscape 不变。
- **验证**：完整构建、badging、v1/v2/v3 签名与 diff 检查通过；V2458A 三轮强停冷启动的预览及首次打开都显示 `25°`，Calendar/Clock 正常；连续开关 Folder 10 次 PID 不变且无 crash。冷态首次打开的关键 GL 帧仍为 `217.370ms`，既有首开同步 scene CPU 卡顿未在本轮修改。
- 未更新 `MEMORY.md`；未提交、未推送。

### 2026-08-30

#### 桌面与设置主页 Activity 转场修复

- **根因**：桌面“桌面设置”入口通过通用 `startActivityForUser()` 打开 `ThemeChooserActivity`，设置主 Activity 退出时也没有这条桌面往返边界的专用转场，因此缺少原预期的上入下出动效。
- **最小修复**：仅对 `com.smartisanos.launcher/.theme.ThemeChooserActivity` 精确调用 `overridePendingTransition(settings_enter, 0)`，`finish()` 后调用 `overridePendingTransition(0, settings_exit)`；新增 260ms 进入与 220ms 退出动画，通过受校验的资源表补丁写入稳定 anim ID。
- **冻结范围**：设置内部一级/二级仍使用原有横向 View 动画；未修改全局 window animation、SMEngine、Unlock、Folder、桌面布局、图标或天气链。
- **验证**：`build.bat`、资源反读、badging 和 v1/v2/v3 签名通过；V2458A 桌面→设置与设置→桌面各 20/20 次通过，逐帧无黑帧，设置内部导航保持原动画。未提交、未推送。

### 2026-08-29

#### 魅族 Flyme 官方天气包精确识别修复

- **根因**：`WeatherBridge.isWeatherPackage()` 的官方天气精确包名列表缺少 `com.meizu.flyme.weather`；`LauncherSettingBridge.isDynamicIconPackage()` 在该路径上又没有 component/title 兜底，导致 Flyme 天气被当成普通静态 Application。
- **最小修复**：仅新增精确包名 `com.meizu.flyme.weather`，不泛化为 `com.meizu.*`，不修改 Calendar、WeatherView、天气动画、geometry、192 坐标、阴影、Timeline、Folder、图标大小或天气数据源。
- **逻辑验证**：`tools/verify_weather_package_detection.py` 确认魅族天气与既有官方天气包保持 `true`，而 `com.meizu.flyme.launcher`、`com.meizu.media.camera`、`com.meizu.filemanager` 保持 `false`。
- **构建与风险**：`build.bat`、v1/v2/v3 签名及最终 dex 字符串检查通过；当时没有 Meizu/Flyme 真机，故只记为 `RUNTIME_MEIZU_VALIDATION_PENDING`，不得写 Meizu PASS。未提交、未推送。

### 2026-08-25

#### Folder Preview Cell Mode 缓存 Owner 修复

- **根因**：`FolderIcons(la).a(F, ItemInfo)` 用 `ItemInfo.Ne()` 绑定纹理名后仍调用不带 `pageMode` 的 `e/s` 旧重载，Static Composer 因而回退全局 `SINGLE_PAGE_MODE=1`，使 Folder Preview 内 Calendar/Clock 误用 `269/344, grid=1`，而不是 Folder Cell 真实的 `224/287, grid=12`。
- **最小修复**：使用 `Qj.fH` 重建 preview cache key，并让 Weather ActiveIcon、Calendar ActiveIcon 和普通静态应用三条分支统一调用显式 `pageMode` Composer；未修改 Preview viewport、Mode8、IconVisualMetrics、Desktop geometry 或分辨率倍率。
- **验证**：完整构建和覆盖安装通过，Android 16 无 `VerifyError/FATAL`；V2458A 冷启动 Calendar/Clock 均为 `224/287, grid=12`，12→20→12、Folder 开关与两个不同 Folder 截图均正常，最后恢复 12 宫格。未提交、未推送。

#### Unlock 单 Owner 生命周期 ARM 与立即 Commit Golden

- **根因**：旧实现只允许 `SCREEN_OFF -> armFromScreenOff()` 建 Session，厂商 ROM 上 `onPause` 已看到锁屏证据却无法 ARM；旧 fallback 又用 250/120ms 延迟伪造 prepare/dismiss，导致延迟、重复和普通返回误触发风险。
- **最终链路**：`SCREEN_OFF`、`onPause`、focus-lost 与 `onStop` 统一进入 `armAndPrepareIfNeeded(source)`，首次真实锁屏证据立即 ARM 并同步派发原版 `action_keyguard_on -> q(0)`；`USER_PRESENT/dismiss` 只置当前 Session pending，无广播时由 `resume while locked -> first focus + interactive + unlocked` 同步进入唯一 `tryCommitUnlockAnimation()`，再派发原版 `q(1)`。
- **删除的旧路径**：删除 1500ms dismiss delayed Runnable、300ms pause cancellation、2500ms play watchdog、Maintained unlock wrapper/note/skip helper 与 receiver 重复 prepare；1500ms 只保留为同步 stale guard。不依赖系统 default HOME resolver，不修改 `q(0)/q(1)`、unlock9/12/16/20、Timeline、`Eb.update/Ra.T` 或刷新率控制。
- **验证**：V2458A / OriginOS 16 在 Smartisan 非默认 HOME 时连续 20 轮 `ARM/PREPARE/READY/COMMIT/PLAY/START/FINISH=20/20/20/20/20/20/20`，重复 ARM 40 次均忽略，首次真实 focus 满足到 Start 约 2ms；Settings、Recents 和普通 APP 返回均不建立 Session。ColorOS/Flyme 及锁屏相机等边界仍待对应真机验证。未提交、未推送。

### 2026-08-24

#### Open Folder 冷重载尺寸隔离与 Desktop Label 宽度适配

- **冷重载根因**：`Constants.applyIconSizeToProperty()` 已正确排除 `PAGE_1_3X3_MODE_FOLDER`，但进程恢复时 `MaintainedLauncherSettingsHost.maybeApplyLauncherIconSize()` 仍会调用 `applyRuntimeIconSizePercent()` 遍历全部 `layoutPropertyMap`，随后由 `scaleLayoutProperty()` 原地改写共享 `LayoutProperty`。该入口没有 Folder owner 判断，因此刚移动入 Folder 时使用的 Folder Base 正常，切换宫格或图标大小触发冷重载后，MODE_9/multiPageMode=8 却重新带入 Desktop userScale。
- **分辨率差异根因**：当前低分辨率 MODE_9 资源曾把 `icon_size_origin_resize` 改为 192，同时 `icon_size_with_shadow_folder` 只有 184，形成 resized artwork 大于 Folder raster envelope 的非法关系；`P.smali` 加载 `_folder` property 时会把资源 `icon_size_with_shadow_folder` 映射回运行时字段 `icon_size_with_shadow`，所以 184 确实是 Open Folder child 的最终 node/texture 边长，不是未消费的旁路资源。1440 `sw411dp` profile 仍保持可容纳的 `222/286`，所以问题主要在部分低分辨率 profile 暴露。原版 `clean_launcher_raw` 的基准为 1080 `166/216`、1440 `222/286`，并由 Folder 自己的 width-based profile/adaptation 扩展，不依赖 Desktop 50/100/150。
- **最小修复**：`scaleLayoutProperty()` 在改写共享属性前使用现有 `FolderVisualGeometry.isFolderLayoutProperty()` 识别 Open Folder 并直接跳过，从源头阻断 Desktop userScale 污染；没有采用除以 1.5、机型判断或事后补偿。MODE_9 资源恢复原版 1080 `166/216`、1440 `222/286`、landscape `56dp`。1080 到 1260 的同一宽度规则静态结果约为 artwork `193.67`、Folder texture `252`；1440 使用原版 profile `222/286`。普通 Desktop 和关闭状态 Folder 仍走原有 Desktop scaler，Preview 内部字段未再乘一次 userScale。
- **Desktop 文字**：`Mc.hq()` 的创建路径和 `Mc.o()` 的主题刷新路径仍读取各自 Desktop `LayoutProperty`，仅在 Paint `setTextSize()` 前调用 `DesktopLabelMetrics.resolveDesktopTextSize()`。字号基准固定为原版 1080 的 12宫格 36、20宫格 30，再乘 `surfaceWidth/1080`；因此 1080/1260/1440 分别为 12宫格 `36/42/48`、20宫格 `30/35/40`。字号不随 Desktop 50/100/150 改变，现有 Desktop label gap 和 icon geometry 均未修改。
- **冻结范围与验证**：未修改 `IconVisualMetrics`、Static Composer、physical raster、normalization、source resolver、阴影/cache、Weather/Calendar、Folder Preview、Folder书架、row/column、动画或 `FolderCellVisualMetrics`。`build.bat` 成功；最终 APK badging 为 `versionCode=31 / versionName=v1.5.6`，v1/v2/v3 签名通过，`git diff --check` 通过。X21A（1080x2280/480dpi）在线且原 Launcher 已安装，但 `adb install -r`、`adb install -r -d` 和 `/data/local/tmp + pm install -r -d` 均被 vivo 返回 `Failure [-200]`；为避免丢失桌面数据库未卸载 Launcher。故真实 12/20宫格、50/100/150、移动前后与冷重载截图矩阵尚未标记 PASS。未提交、未推送。

### 2026-08-23

#### Folder GLThread 资源释放与 draw 状态门控修复

- **崩溃路径**：`ka` 的 Folder Cell 仍在 Scene draw 时调用 `FolderIcons.oa(Z)`；兼容层 `gj()` 的 Weather/Calendar ActiveIcon 更新先通过 `FolderInfo.O(package)` 找 owner。当 stale callback 找不到 owner 时，当前实现错误调用整个 `FolderIcons.clear()`，把 `hz/iz/kz/Qj` 等渲染资源置 null，却没有先把 draw 标记 `jz` 置 false。下一帧 `oa()` 看到 `jz=true` 后直接对 null `iz` 执行 `array-length`，对应日志 `FATAL EXCEPTION: GLThread / Attempt to get length of null array / la.oa`。
- **最小修复**：`clear()` 第一条状态操作改为 `jz=false`，再按原顺序释放 `hz/iz/kz` 和 ActiveIcon；`oa()` 增加最终防线，`jz=false` 直接返回，`iz/hz/kz` 任一为 null 时设置 `jz=false` 并返回，正常 draw/RenderTarget/动画代码保持原样。`gj()` 的 Weather/Calendar owner missing 分支分别只调用对应 ActiveIcon 的原有 `g(true,false)` 停止接口并清空对应字段，然后返回，不再调用整个 `FolderIcons.clear()`；真正 Folder 销毁仍由 `ka.clear()` 等原生命周期负责。
- **冻结范围**：仅修改 `launcher/smali/com/smartisanos/launcher/view/a/la.smali` 的 `clear()/gj()/oa()` 生命周期状态门控；未修改 Folder Preview、2x2/3x3 viewport、图标尺寸、行列、书架、root scale、材质、动画或任何资源。
- **验证**：`build.bat` 和 Smali 编译通过；`pm install -r` 覆盖安装成功，设备 `classes.dex` 与本地产物 SHA-256 一致。V2458A 分4批完成20次 `force-stop -> Launcher` 冷启动，完成30次 Folder 连续打开/关闭，并对已安装 aShell 原 APK执行同签名覆盖更新后返回 Launcher；三组均为 `FATAL=0 / GLThread FATAL=0 / la.oa NPE=0`。设备现有 Folder 不含 Weather/Calendar，未通过修改用户桌面布局制造动态 ActiveIcon Folder 样本；真实应用卸载也未执行，因此这两项仍是明确未完成的真机矩阵，不能扩写为全场景 PASS。未提交、未推送。

#### 解锁动画非默认 HOME 前台资格与同步 Commit 修复

- **回归根因**：`launcherActuallyVisibleLocked()`、`onLauncherPaused()` 的锁屏可见快照和 `tryCommitUnlockAnimation()` 正式播放前都把 `isDefaultHome()` 当成必要条件。因此 Smartisan Launcher 即使真实 `resumed + windowFocus`，只要系统默认 HOME 是其他 Launcher 就无法建立或消费 session。播放前还重复调用 `isLauncherRuntimeReady()`；该条件只是 `J.getInstance()+context`，而原版 prepare receiver 在 `q(0)` 前、正式 play receiver 在 `q(1)` 前均已有 `J.Ua()` 检查，不应在已 `prepareReady` 后由兼容层第三次阻塞/取消。
- **实现**：彻底移除 `isDefaultHome()` 资格方法及三处依赖；锁屏前资格收敛为 Smartisan Launcher 自身真实 resumed/focus 快照，`SCREEN_OFF` 后仍必须确认 Keyguard locked。正式 commit 固定要求同一 session 的 `prepareReady + dismissPending + launcherResumed + windowFocus + keyguardUnlocked`，并继续执行 `shouldSkipUnlockAnimation()`；已 prepare session 不再被兼容层 runtimeReady 重复等待，原版 receiver 的 `J.Ua()` 检查保持不变。没有新增 postDelayed、提前量或 50/100/200ms 延迟，既有 1500ms 只继续用于取消未完成的非直达交接。
- **诊断时间线**：同一 session 记录 `SCREEN_OFF / PREPARE_BEGIN / PREPARE_READY / USER_PRESENT / LAUNCHER_RESUME / WINDOW_FOCUS_TRUE / KEYGUARD_UNLOCKED / RUNTIME_READY / COMMIT_PLAY / ANIMATION_START` uptime，并输出 `USER_PRESENT->COMMIT`、`COMMIT->START` 和最后满足的 Gate。非默认 HOME 单次为 `20ms/16ms`，默认 HOME 单次为 `15ms/20ms`，两者最后 Gate 均为 `WINDOW_FOCUS_TRUE`；说明 prepare/runtime 已在锁屏阶段完成，首次真实 focus 后同步 commit，没有额外延时等待。
- **防误播验证**：默认 HOME 锁解一次与非默认但 Smartisan 前台锁解一次均只播放一次。设置、微信主实例、电话和相机分别前台锁屏解锁，随后手动打开 Smartisan，全部 `ARMED=0 / COMMIT=0 / START=0`，只记录 `NOT_VISIBLE_HOME / SKIP_NO_SESSION`。非默认 HOME 连续20次为 `ARMED/COMMIT/ORIGINAL_PLAY/START/FINISH=20/20/20/20/20`，`CANCEL=0`、`SKIP_NOT_PREPARED=0`；20轮 `USER_PRESENT->COMMIT` 为 `6..30ms`（平均 `13.7ms`），`COMMIT->START` 为 `2..21ms`（平均 `5.5ms`）。
- **冻结与验证**：只修改 `LauncherBelowKeyguardCompat.java` 的 Trigger/Session Gate 与诊断；原版 `q(0)/q(1)`、SMEngine 动画时长、`Eb.update/Ra.T`、图标动画参数及刷新率适配均未改。`build.bat`、`git diff --check`、v1/v2/v3 签名通过；因 vivo 首次增量安装未替换设备 APK，最终改用 `/data/local/tmp + pm install -r` 并在系统确认页继续安装，设备端 `classes2.dex` SHA-256 与本地产物一致。默认 HOME 已恢复为 `com.bbk.launcher2/.Launcher`。未提交、未推送。

#### Open Folder Label Gap 与 Anchor 收口

- **根因**：Open Folder label 的真实最终位置已确认由 `FolderCellVisualMetrics` 返回值直接进入 `g.1.smali` 的 `Mc.setTranslate()`。此前虽然把 Folder Gap 改为 Desktop 数值，但仍叠加了从 `+40` 哨兵反推的 `34.3@1080` Anchor correction，导致 1260 设备修正值为 `40.0167`，文字比目标位置更靠近图标。
- **最终实现**：Folder 继续使用自己的 artwork/text geometry；Gap 直接调用 `DesktopLabelMetrics.finalVisualGap()`，不再维护第二份 Folder Gap 基准。唯一 Folder Anchor correction 调整为 `BASE_FOLDER_LABEL_CORRECTION1080=28.43`，统一按 `surfaceWidth / 1080` 缩放：1080=`28.43`、1260=`33.1683`、1440=`37.9067`、2160=`56.86`。1260/20 宫格下最终 `Mc.setTranslate Y` 约为 `-71.9983`，回到原版 `name_off_set_y_folder=-72` anchor。
- **冻结范围**：未修改 Desktop、`DesktopLabelMetrics` 输出、普通/Folder icon geometry、166/216 图标基准、Folder Preview、书架、row/column、root scale、Constants 和 Desktop 50/100/150 隔离；已撤掉 bounds 反射、`Qj/Pj` runtime 取底边、临时日志和二阶段生命周期逻辑。
- **验证**：`build.bat` 成功；APK v1/v2/v3 签名验证通过；`adb install -r build/launcher-signed.apk` 成功；V2458A/1260×2800 真机截图确认翻译机、对讲机、闹钟时钟文字整体下移，图标和书架未变化；未发现 `FATAL EXCEPTION`、`VerifyError` 或 `NoClassDefFoundError`。1080/1440/2160 通过同一 width-based 公式静态审计，尚未取得对应设备截图。未提交、未推送。

### 2026-08-21

#### 桌面图标渲染管线尝试及统一性复审

- **当时定位**：源码追踪发现冷启动（Cold Bind）和异步热更新（Hot Update）存在不同的数据源入口：
  - Cold Bind 渲染管线 (`g.1.smali`): 在渲染时通过 `shouldUseManagedIcon` 前置拦截，直接在 Java 层取了 Drawable 画满 UI 单元格，完全绕过了数据库保存的 `iconRawData`。由于之前去除了 `InsetDrawable` 尺寸欺骗，导致直接将 256x256 生素材截断渲染而变大。
  - Hot Update 数据更新管线 (`Aa.smali`): 在线下载完成更新数据库时，原本存在的“官方 Static Application Composer”（内边距补齐与缩放逻辑）被早期的 `cc29dbca` 提交用硬编码的 `goto :cond_6` 完全跳过，导致生素材未被裁剪缩放直接转存 DB，同样变得巨大。
- **已暂存修改**：放弃在 Java 侧模拟 Padding 的路径，恢复原版 Smali Composer：
  - 在 `Aa.smali` 中，移除强制跳出指令，重写了跳转逻辑（`if-nez p2`, `if-nez v1`）：确保所有的第三方应用程序和下载的 Canonical 图标，都能无条件进入 Composer 处理区；保留原有对于系统应用根据 `ColorInfo.resize` 来判定是否缩放的克制设计，避免系统应用被双重缩小。
  - 在 `g.1.smali` 中，移除了导致数据分叉的 `shouldUseManagedIcon` 判断和对 `PackageManager.getApplicationIcon` 的依赖。现在桌面对于所有的 `itemType == 0`，都优先读取数据库的 `iconRawData`。如果 `iconRawData` 存在，则直接渲染，从而保证 Cold Bind 也能读到已被 Composer 正确处理的带内边距位图。
- **复审结论**：本地构建曾通过，但该修改没有消除所有尺寸 owner。`e/s + IconRasterDiagnostics` 仍负责最终 physical texture 合成；如果 managed source 重解析成功，会覆盖数据库位图，如果失败则可能继续使用已经由 `Aa` 加过边距的 `iconRawData`。后一条路径存在重复留白/缩小风险，不能再写成 Cold/Hot/Restore 已统一。状态为 `AUDIT_REOPENED / FIX_REQUIRED`，不得签署 Final Pass。

### 2026-08-20

#### Desktop Backup & Restore：文件夹拓扑、Schema兼容与非便携权限隔离

- **范围**：修复 FolderInfo 被当作安装包过滤、父文件夹未先写入导致子项散落、不同原版数据库缺少统计列时的越界写入，以及通知监听/定位等非便携权限跨设备恢复。
- **实现**：恢复采用 `RESTORE PHASE 0..9` 有序事务；页表后先分类并写入 Folder，再写普通项和子项，最后追加保留项、恢复快捷方式图标并执行前后 FolderTopology 校验。状态清零只处理快照实际存在的字段；`NON_PORTABLE_PERMISSION_KEYS` 在导出与导入双向剥离。
- **验证边界**：V2458A 样本完成 PHASE 0..9、54项写入和冷重载，状态仅为 `FOLDER_TOPOLOGY_AND_SCHEMA_RESTORE_V2458A_PASS`。QuickLaunch备份恢复仍为 `ROOT_CAUSE_REOPENED`；普通Application最终Raster仍受 Icon Rendering Contract门禁；Android 8–16与多ROM矩阵未完成。不得写成全部备份恢复、全部ROM或全部旧机型PASS。

### 2026-08-15

#### QuickLaunch 小程序最终渲染源隔离修复（V2458A 真机视觉 PASS）

- **最终根因**：微信/支付宝的小程序创建、provider artwork、`final_icon` 和数据库写入并不是本轮头像/圆环丢失的最终 owner。真正的第一处分叉发生在桌面最终渲染：`itemType=1` 的 `QuickLaunchItem` 曾被 `IconRasterDiagnostics` 当成普通 Application，再按 `packageName=com.tencent.mm` 进入 DEFAULT/IMPROVED 等普通应用 source resolver/cache，导致已经正确保存的小程序逐快捷方式位图被微信宿主应用图标覆盖；`ItemInfo.Oe()` 同时还会对 QuickLaunch 套用普通应用分身 badge。
- **正确生产链**：微信/支付宝继续使用 v1.5.5 最终兼容语义：`LauncherApps.getShortcutIconDrawable()` provider-first，只有不可用时才回退 wrapper source；provider artwork 视为 `source_already_decorated`，保留其小程序头像与圆环/外框，写入 `smartisan.shortcut.final_icon=true`，由 `QuickLaunchItem.z()` 直接序列化，**不调用 `e.s.a()` 二次重画**。原版 `A.smali / EVENT_INSTALL_OR_UPDATE_SHORTCUT` 数据库业务流不承担 provider 图标特殊逻辑。
- **渲染隔离**：`itemType=1` 明确退出 `useDesktopStaticPipeline()`、`useManagedDesktopPipeline()`、`shouldUseHighResolutionDesktopRaster()`、`prepareStaticSource()`、`loadCurrentDesktopDrawable()` 和普通 Application composer；`ItemInfo.Oe()` 对 QuickLaunch 直接返回自身 `iconData`，不追加普通应用分身 badge。QuickLaunch texture/source 使用独立 `quick-launch-final-source`，身份包含 `packageName + shortcutId + userId + userSerial + iconData/iconRawData hash`，不同小程序不得因同属 `com.tencent.mm` 共用宿主应用 texture。
- **真机验证**：V2458A / Android 16 在修复包上重新添加微信小程序后，用户截图确认“云销盒”已经显示自己的小程序头像与圆环/外框；同屏微信主应用仍保持微信主图标，证明 QuickLaunch 与宿主 Application 最终显示源已经隔离。该项记录为 `QUICKLAUNCH_RENDER_SOURCE_ISOLATION_PASS / V2458A_VISUAL_PASS`。
- **未覆盖边界**：本次只冻结“新建微信小程序的最终图像来源与渲染隔离”。冷重载多轮、应用分身开关、主/分身同 ID、支付宝、Backup/Restore、旧错误 QuickLaunchItem 一次性迁移和点击启动完整矩阵仍需继续测试，不能根据本截图扩写为持久性全链 PASS。
- **防回归硬规则**：以后排查 QuickLaunch 图标，必须先按 `provider/createItem → table_icons → ItemInfo.Oe() → render source/texture` 分层定位 first bad owner；不得再把 `packageName` 相同当作图标身份，不得让 `itemType=1` 进入普通 Application source pipeline，不得为了“补圆环”给微信/支付宝 provider bitmap 调用 `e.s.a()`，不得在 `A.smali` 新增 provider/final_icon 特判。普通 Application 的 DEFAULT 圆形、IMPROVED、图标包和分身 badge 均不得处理 QuickLaunch。

#### 【已废弃】QuickLaunch provider 圆环由 `e.s.a()` 生成、通过修改 `A.smali` 消除二次 compose 的判断

#### 【已废弃】仅恢复 provider-first / `final_icon` 即可解决桌面最终显示微信宿主图标的判断

### 2026-08-12

#### 【历史实现，当前已被 Icon Rendering Contract 取代】Icon & Folder Unified Geometry

- 根因：旧静态合成会按 alpha 外包络而非完整源画布缩放，且曾固定读取 12 宫格 `LayoutProperty`，使 20 宫格和打开文件夹不能取得自己的 icon box；`LayoutPropertyAdapter` 的上限曾禁止宽于 1080 profile 的 surface 向上适配。文件夹的原始三列 X 没有按书架内容可用矩形重新居中。此前把桌面“桌面设置”虚拟化为普通应用并参与替换链，也与用户确认的原版行为冲突；尝试在 scene root 追加文件夹缩放还造成开合闪动/卡顿风险。
- 修复：普通静态源统一按完整 source canvas 等比 fit 到场景固定 artwork/texture box，不再作 alpha/面积/轮廓 optical compensation。普通桌面只适配 `LayoutProperty` 中的 icon box，不改变原版 scene/dock 几何。打开文件夹则由 `_folder` 这一份 `LayoutProperty` 统一缩放书架、内容、文字、标题和分页相对几何，列中心仅从 `folder_bookcase_width` 与已有左右 margin 推导。`FolderSceneMetrics` 回到原版，未保留额外 root scale/translate。桌面“桌面设置”恢复独立 `Ec.wz()` SettingButton，物理纹理只来自 `editBtn_bg.png`、`editBtn_gear.png`、`editBtn_inShadow.png`，不再进入 DEFAULT/IMPROVED/PACK/CUSTOM 或图标替换页。
- 路径：普通桌面、打开文件夹和关闭文件夹预览中的静态应用继续经 `IconRasterDiagnostics.composeStaticApplicationIconTexture()`；动态 Weather/Calendar 保留原版 ActiveIcon 内部动画，只共享外部 geometry。编辑模式 SettingButton 与桌面“桌面设置”保持原版独立控制按钮路径，不是应用图标。
- 修改文件：`LayoutPropertyAdapter.java`、`FolderCellPositionAdapter.java`、`IconRasterDiagnostics.java`、`ActiveIconRasterSpec.java`、`Ec.smali`、`g.1.smali`、`IconManager.java`、`MaintainedLauncherSettingsHost.java`。
- 验证：最终 `build.bat` 成功；`git diff --check` 成功；badging 为 `v1.5.6/versionCode 31`；v1/v2/v3 签名均通过。APK 已保留数据覆盖安装到 vivo V2458A，设备版本为 `v1.5.6/31`，本地/设备 SHA256 均为 `5025E686F036C9C23BB82C21C1E52154A7B87EE8873593D0B3BBE319BD5AE448`。该机实际加载 `_folder` 的 width scale `1260 / 1080 = 1.1666666`，连续 3 轮文件夹开合未见 FATAL/ANR；普通桌面截图未见本轮适配引入的崩溃。
- 未验证：只完成 vivo V2458A 1260x2800/560dpi 的运行与视觉冒烟。当前状态降级为 `HISTORICAL_IMPLEMENTATION / VIVO_1260_RUNTIME_SMOKE_ONLY`；普通图标算法以 2026-08-21 Contract 为准。
- 防回归：不得恢复 alpha bounds/hull/fill ratio optical 倍率；不得把 `currentPageMode()`再次固定为 12 宫格；不得将桌面“桌面设置”重新纳入普通应用替换链；文件夹 X 只能从 `_folder` usable rect 派生；不得向文件夹 root scene 追加 scale/translate 干扰原版开合动画。

### 2026-08-11

#### QuickSearch Q12-B 真机联系人与图标水合验证

- 真机：vivo X21A（`b2a4da1c`）、Android 9/API 28、1080×2280；安装前后仅使用本项目 Launcher，不安装任何测试 APK。
- 联系人：`READ_CONTACTS=granted`、Contacts 开关已启用、Observer 已注册。首次索引完成前快照为 generation=0/count=0，完成后为 generation=1/count=414；脱敏单字符查询提交 `contactCount=4`。日志不包含联系人、号码、lookup key 或查询文字。
- 图标：从 Launcher 上滑进入 Original QuickSearch，Snapshot=32；`QS_ICON_HYDRATE_END` 为 `dbLoaded=32`、`misses=0`，随后 `QS_ICON_REHYDRATE_APPLIED`。未使用 PackageManager fallback 或重建 SearchIndex。
- 修复：`ContactSearchRepository` 以 `indexReady` 而不是 `EMPTY` 的对象身份决定是否应重建；`OriginalQuickSearchActivity` 在 icon source generation 改变时使用现有 Snapshot 水合，完成后只刷新已存在的 Top Apps/Adapter。`SearchIconBackend` 提供受 generation 约束的完成回调。
- 验收边界：真机未实际切换第三方图标包，因此“切换某一个特定图标包后每个图标的像素级外观”仍需用户视觉确认；缓存清空后的同一 Snapshot 水合、联系人结果、上滑进入和稳定性均已通过。

### 2026-08-10

#### QuickSearch Q8-D.6 Emulator Presentation Runtime Closure

- 入口与边界：只使用 `emulator-5554`，所有 ADB 命令均指定 serial；通过 exported `ThemeChooserActivity` preview extra 由应用内启动 non-exported Original Activity，记录 `ENTRY_MODE=EXPLICIT_ACTIVITY_FOR_PRESENTATION_TEST`。未触碰 vivo X21A、未安装测试 App/独立 QuickSearch、未改 Gesture/RootView/SMEngine/Search backend/History semantics。
- 缺陷根因：原版私有 `MenuDialogTitleBar` 的 48dp 测量行为未被 public host 继承，Android 16 把 `wrap_content` title bar 扩成整个窗口，content panel/Clear 被推到屏外。补入 pristine `smartisan_title_bar_height=48dp` 并在 `OriginalMenuDialogCompat` 对 title host 应用该约束；没有重画 Dialog。
- 验收：EMPTY Top Apps=5 和 Phone history；`phone` 命中 Phone、Application header 直接接 SearchBar、Query Surface 全白；`zzzzz` zero result 全白。Dialog 修复后 title/Clear 均 48dp，左右 18dp、top 18dp、bottom 24dp；X/Back 保留历史，Clear 清空，点击 Phone 后 history 正常重建。三轮重开均保持 Original Activity、Top Apps=5、history=Phone、空 query。
- 稳定性与产物：最终 log 中 FATAL/ANR/CME/ResourcesNotFound/Inflate/Class/VerifyError=0；证据为 `build/q8d_emulator_{empty,query,zero,dialog,cleared}.{png,xml}` 与 `build/q8d_emulator_final.log`。`build.bat`、badging v1.5.5/30、v1/v2/v3 签名通过，SHA256 `E19E6386BE087A52B55C18AA4E30BE85E55EF84F49705F69F6D2D14D5EA5CE07`。
- 结论：Q8-D=`EMULATOR_PASS / REAL_DEVICE_VISUAL_CONFIRM_PENDING`。模拟器不能替代 vivo X21A 最终视觉与桌面纵向手势验收；本轮停止，不进入 Q8-E/Q9，不提交、不推送。

### 2026-08-09

#### QuickSearch Q7 Original QuickSearch UI Binding + Formal Presentation Cutover

- 原版审计：pristine SearchBar clear 只 `setText(null)` 并保留 editor；cancel 直接 finish；非空 Back 清 query、空 Back 退出；application suggestion 启动目标后保留 SearchActivity；singleTask 的新请求清旧搜索状态后重新处理。Q7 按这些行为绑定，不照搬 Maintained 页面。
- 实现：正式 facade 的正常目标改为 non-exported/singleTask/portrait `OriginalQuickSearchActivity`，只有同步启动异常才进入 Maintained fallback。Original 只消费当前 `SearchSnapshot`、单一 `SharedSearchMatchModel` 和 `SearchIconBackend`；Top Apps 与 suggestion 共用 Q5 component/user/profile/shortcut 启动 bridge，异步图标校验 entryKey、adapter/bind generation 和 Backend source generation。RootView、FlingUpGesture 的 150px/500ms/方向/单指判断及 SMEngine 均未修改。
- Preview：空态与 5-slot Top Apps 正常；Top App 2/2 启动成功并可返回同一 Original Activity；`dianhua` 和 `dh` 均命中电话，suggestion 点击成功且返回保留 query；clear、0 result、cancel、非空 Back、重开空态全部 PASS。Profile/Shortcut 自然样本为 `UNAVAILABLE`，身份链静态 PASS；DEFERRED/REPLAY 为 `STATIC_VERIFIED / NOT_NATURALLY_TRIGGERED`。
- 正式 Gate：用户完成三次真实手指上滑，日志实际得到 session 6/7/8/9 共 4 个有效样本，Original target/bound=4/4，Maintained 页面=0，fallback=0；request→bound 为 256/247/268/261ms。session 8 的 `dianhua` 结果数 1、3ms，并成功启动 `com.android.dialer/.TwelveKeyDialer`；最后一次重新进入为空态，Back 回 Launcher。
- 硬 Gate：Launcher PID 29023 的正式窗口批量 DB/PM/decode/UsageStats/ICU/网络/legacy loader 均为 0。系统日志中 vivo Calendar/Clock 进程 PID 2598/6383 的 OEM 动态图标 `BitmapFactory` 缺文件噪声不属于 Launcher。ResourcesNotFound/FATAL/ANR/CME/VerifyError 均为 0。
- 构建与边界：`build.bat`、`git diff --check`、badging v1.5.5/30、v1/v2/v3、Manifest/Dex 静态审计 PASS；本地与设备 APK SHA256 均为 `856F0176A13709D6F6A39FF32BE4E0714109BF69B3F03F83A6B7B6EA0BCA1948`。Launcher 覆盖安装 1 次，测试 App/独立 QuickSearch APK=0；`MEMORY.md` 未更新。
- 结论：Q7=`PASS`。正式桌面上滑展示层已由 Maintained Search 切换为 `OriginalQuickSearchActivity`，Maintained Search 仅为同步启动失败 fallback/reference。下一阶段为 Q8 Original Search Semantics；本轮立即停止，不开始 Q8、transition、ContainerView、screenshot/blur，不提交、不推送。

#### QuickSearch Q6.2 Original UI Pinyin Consumer Parity + Scroll Gate

- 根因：Q6.1 只复用了 Q5 scorer，却为每个 Snapshot row 创建私有 Q5 `SearchEntry`，首个查询在 Q6 单线程串行准备 32 份 ICU token，且没有消费 Q5 token READY 或自动 replay；所以这是 consumer state/readiness 缺口，不是 Q5 拼音算法、UI、Theme、Snapshot 或 IconBackend 问题。
- 修复：Q5/Q6 统一到进程级 `SharedSearchMatchModel` 和同一生产 scorer；后台 token 准备完成后通过 weak listener 事件驱动重放仍为当前的 query/generation。Activity destroy 移除 listener、递增 generation、取消 icon request 并关闭 executor；不使用 delay、polling、主线程 ICU/DB/PM/UsageStats/网络。
- 构建：`build.bat`、`git diff --check`、badging `v1.5.5/30`、v1/v2/v3 和最终 Dex 静态调用链均通过；最终本地/设备拉回 APK SHA256 同为 `F7EA2D2434BB4CA2215E84610D7DFE3EABB6472BA611C2BCBF301452D75AC7C4`。
- 真机：vivo X21A 仅覆盖安装 Launcher 一次，测试 App/独立 QuickSearch APK=0。Repository 有效 Snapshot 为 32、duplicates=0；`dianhua` 与 `dh` 均返回“电话”。真实 scorer 自动选出的 `o` 返回 32 条，实际滚动 `firstBefore=0 -> firstAfter=8`、`recycledBindCount=8`；Back、重开绑定 32 条、再次 Back 正常。
- 稳定性：Launcher FATAL、ANR、CME、VerifyError、ResourcesNotFound 均为 0。有效 Preview 开始时 shared tokens 已 READY，因此真机未自然产生 `DEFERRED/REPLAY`；该未就绪分支完成源码/Dex 静态核查，没有通过清 token 或重复冷启造样本。正式上滑入口仍是 Q5 Maintained Search；Q6 未修改 UI/Theme/Insets/Snapshot/IconBackend/RootView/FlingUp/SMEngine。
- 结论：Q6=`PASS`，Original UI Skeleton 冻结。下一阶段为 Q7，但本轮不开始 Q7、不提交、不推送；`MEMORY.md` 未更新。

#### QuickSearch Q6.1 Original UI Final Preview Verification

- 安装：本地 SHA 与指定值一致后只执行一次 Launcher 覆盖安装，返回 Success；设备拉回 APK SHA256 同为 `7AA87ED146A61BE5DE5C931003668A472484DA5286802A22F0322A50FE8B5027`，v1.5.5/30，测试 App 和独立 QuickSearch APK 均为 0。
- Theme/lifecycle：首次和第二次 Preview 均正常，旧 `0x7f010000` Theme namespace 冲突未复现；第二次 inflate/bind 为 66/111ms，Snapshot entryCount=32，四类 Q6 生命周期日志完整；目标异常与 FATAL/ANR/CME/OOM 全部为 0。
- UI：空态、5 个真实 Top Apps、原版 SearchBar/9-patch/icon、首字母 `dh -> 电话`、Back/重开、状态栏/cutout/手势导航均通过。实际 SearchBar=`x0/y84/w1080/h144`，Top Apps=`l54/t300/r1026/b480`，Top icon=108×108px，suggestion row=1080×180px，result icon=90×90px；无设备硬编码。
- 未通过项：Q5 已验证拼音 `dianhua` 在 Original UI 观察窗口内没有显示“电话”；首字母结果只有一行，规定的上下滑动没有形成列表位移或 recycle 样本。不能用 Q5 matcher PASS 替代 Q6 presentation consumer PASS。
- 边界：Q6 未改正式 RootView/FlingUp/SMEngine 入口，仍指向 Q5 Maintained Search；本次单次 ADB 桌面上滑未触发搜索，不作为新的手势样本，既有用户真实手指 Q5 PASS 保持。PM 全量扫描、网络、第二 APK=0。
- 结论：Q6=`FAIL / UNVERIFIED`，不改代码、不重复安装、不进入 Q7、不提交、不推送。

#### QuickSearch Q6 Original QuickSearch UI Skeleton

- 审计：只使用 pristine `original_apks/quicksearch_phone_reference/base.apk`（SHA256 `EDF915A1CA745276F07538ABEDBBF43711B20426697E45A83A4C076ED0562D66`）及其 `decoded/`；完成 SearchActivity、私有 SearchBar、empty view、5-slot Top Apps、application suggestion、9-patch/selector/尺寸/颜色依赖清单。`quicksearch_decode/` 不作为视觉来源。
- 实现：新增 non-exported/portrait `OriginalQuickSearchActivity` 作为并行 Preview；原版可见资源编译为 Launcher asset 中的无代码资源 APK，运行时使用独立 AssetManager/Resources/Theme。数据只读 SearchSnapshot，图标只读 SearchIconBackend，匹配调用 Q5 matcher；不改 RootView/FlingUp/SMEngine，不新增 PM 扫描、Provider、网络或第二个安装包。
- 唯一真机样本：vivo X21A 覆盖安装一次成功，已安装构建 SHA256 `7A9153F3C9AF5187B4FFFF775F272BA7CB9A6C2677643C57FB3B3AD2FFC5A115`。Preview 首开 FATAL 定位为外部资源 `0x7f010000` 继承 Launcher 主 Theme 后被误解析成 `attr/layoutManager`；已给资源 Context 使用独立 framework theme，并让嵌套 SearchBar inflater clone 到同一 Context。
- 验证：修复后 `build.bat`、`git diff --check`、资源表、内嵌 asset、binary Manifest、badging `v1.5.5/30`、v1/v2/v3 均 PASS；最终 SHA256 `7AA87ED146A61BE5DE5C931003668A472484DA5286802A22F0322A50FE8B5027`。因一次安装额度已用完，修正版未重装，空态/查询/滚动/Back/重开/bounds 为 `UNVERIFIED`。
- 结论：Q6 为 `UNVERIFIED`，不进入 Q7；不再安装、不提交、不推送。

#### QuickSearch Q5.1 最终修正版最小真机闭环

- 真机：最终 APK 通过唯一一次覆盖安装运行于 vivo X21A；设备拉回 APK 与本地 SHA256 均为 `3B54D46B8635AF76F95E0C3B1FF217737F8C02E0BF052B15BAECB5C443A30C47`，没有安装测试 App。
- Backend/性能：两次 Cold-A 均为 Snapshot=32、duplicates=0、READY legacy loader=0、hydration misses=0、Top5 requested/decoded=5/5。UI mapping 为 14/15ms；Cold-A 页面/第一名称/第一图标/稳定/图标空白/IME median 为 176/106.5/108/112.5/0/338ms。5 次有效 Warm 相同指标 median/P95 为 135/150、83/90、84/91、86/93、0/0、304/307ms；旧 Cold 1434/1470ms 与 Warm 399/527ms 图标空白均降为 0。
- 正确性/资源：拼音 3/3、首字母 3/3、普通应用点击 3/3；中文输入、Profile、Shortcut 当前无可靠或自然样本，记为 UNAVAILABLE。主线程打开窗口批量 DB/PM/decode、UsageStats、ICU 和网络均为 0。PSS 218353→190967KB，Native 57680→30212KB，Dalvik 12629→14960KB，Graphics 128740→116012KB，无明显泄漏。
- 稳定性：Launcher 相关 FATAL/ANR/CME/OOM/VerifyError/IllegalStateException 均为 0；全 buffer 的 36 条 IllegalStateException 是历史 radio `SST pid 2661 Service not connected`，不属于 Launcher/Q5。
- 结论：Early Search 按限制只尝试一次，但在 `LAUNCH_MODEL_READY` 前注入的 ADB 上滑没有产生 `QS_SHOW_TRIGGER`，不能作为搜索样本，shell 即时显示、Snapshot 阻塞和 READY 后自动补数据均保持 UNVERIFIED。该项属于 Q5 必选门槛，因此 Q5 最终为 `UNVERIFIED`；不重试、不重新安装、不开始 Q6。

#### QuickSearch Q4 SearchIconBridge

- 审计：原版 QuickSearch `base.apk` 仍作为历史行为基线；Q4 明确是现代 Launcher 一体化性能优化，不恢复历史 `quicksearch_decode/LauncherIconBridge`。Launcher 当前由 `Aa` / `ItemInfo` 保存图标来源字节，经 `MaintainedLauncherSettingsHost` 的默认/改进版/图标包/自定义链和 `IconRasterDiagnostics` 合成临时最终纹理，再上传 SMEngine。
- 实现：新增 `SearchIconBridge`，只读 `Aa.nc()` 模型 clone 的 private `iconData`；按 component/user/profile identity 匹配，返回 HIT/MISS/INVALID 和短期 `IconHandle`。不持有 Bitmap cache，不调用 `ItemInfo.Oe()`，不触发磁盘、PackageManager、网络或动态 ActiveIcon。
- 诊断：`SearchIndexRepository` 在模型 READY 后旁路调用一次汇总命中率诊断；不改变正式搜索，仍不读取 `SearchSnapshot`。
- 验证：`build.bat` 通过；`aapt2 dump badging` 显示 `v1.5.5/30`、minSdk 23、targetSdk 28；`apksigner verify` 的 v1/v2/v3 均为 true；Q4.1 APK SHA256 `1E27877532314627882BD5FDF3935D6F901F096F71CEFA12D267C1D4289AFB93`。覆盖安装成功一次；一冷启动、三暖态拉起未出现新的 `QS_ICON_BRIDGE`/decode 行。内存采样：TOTAL PSS 228894→228780 KB，Native Heap 64664→64296 KB，Dalvik Heap 14676→14688 KB；未建立 Graphics/Java 全量对比。
- 结论：Q4/Q4.1 当前为 `UNVERIFIED`，不能据此选择 Q5 方案；缺口是运行时诊断日志未出现，而非继续安装测试 APK。Q3 保持 `UNVERIFIED / NON_BLOCKING`，Q5 不启动、不提交、不推送。

#### QuickSearch Q2 SearchIndexRepository 基础架构

- 根因：Q1-A 证明当前搜索页面首帧和顶部 View 绑定很快，主要延迟来自打开搜索后才同步准备全部应用 label/icon；原版 `ApplicationsProvider` 则在后台预建进程内索引。当前 Launcher 已有 `LauncherModel/Aa.nc()` 克隆快照和 ItemInfo 的 title/package/component/user 字段，无需另跑全量 PackageManager 扫描。
- 实现：新增 bitmap-free `SearchEntry`、不可变 `SearchSnapshot`、进程级 `SearchIndexRepository` 与阶段 logger。Repository 使用单个后台线程，预计算 normalized label、profile serial 与字符串 iconKey；读取主 DEX Smali 模型使用后台反射桥，缺 label 时才按单组件补齐。任何异常进入 FAILED 并保留空/旧 Snapshot，不影响现有搜索。
- 时序修正：仅依赖首帧时，真机出现模型仍为空而 READY(0) 的失败样本；最终同时等待现有首帧 deferred hook 与原版 `J.MESSAGE_COMPLETE/LAUNCH_MODEL_READY`，不使用固定延迟或轮询。Q3 包增量、Q4 图标桥和 Q5 正式接入均未提前实现。
- 验证：`build.bat`、v1/v2/v3 签名和 vivo X21A 覆盖安装通过，设备/本地 APK SHA256 均为 `6D1B7E7E96B384C11C0749EDC1D5BE814A7F255AB9C4AE321F0FD8A5E0DCA29B`。五次进程冷启动索引 build 为 16/28/23/19/25ms，min/max/average/median/P95 为 16/28/22.2/23/28ms，5/5 均为 32 entries、duplicates=0。系统可启动 Activity 也是 32。当前搜索仍记录旧 `QS_LOAD_ENTRIES_BEGIN/END total=32`，未接 Repository。
- 风险：Q2 前后各 5 次首帧中位数为 241/253ms、P95 为 248/265ms，差值约一个 60Hz 帧；索引在约 2.3s 的模型完成后才开始，时间线无首帧阻塞关系，但小样本跨安装波动仍需后续扩大矩阵。当前设备没有多 profile 和同包多 Activity 真机样本，且 shell 无签名数据库读取权限，逐 identity 集合差分未完成。

#### 编辑模式顶部标题按刘海、挖孔和圆角安全区自适应

- 根因：截图中的“已选择 [0/12] 个应用程序”来自 `com.smartisanos.launcher.view.Lc.a(g,float,int)` 创建的 SMEngine `Mc`/`status_bar_text` 节点。原版和 `clean_launcher` 都只在 `sa.ub()` 命中特定 Smartisan 设备且非大屏模式时使用 `Constants.getStatusBarTextLeftMargin()`；移植到 vivo X21A 后该分支不成立，标题固定在 `window_width/2`，与中心刘海重叠。之前检查普通 Android View 层不会命中真实显示链。
- 修复：保留原版标题内容、字体、Y 坐标、淡入动画和 SMEngine 节点，只替换 X 中心计算。API 28+ 从 DecorView 的实时 `WindowInsets.getDisplayCutout()` 获取全部 bounding rect，按 Decor/scene 比例转换坐标并与标题真实纹理宽高检测相交；无相交保持居中，相交后按左安全段、右安全段、最大安全段选择。多开孔先排序合并，系统左右 Insets 参与内容边界；宽刘海使完整标题无法装入任何一侧时，使用真实 `safeInsetTop` 保护圆角边缘，避免贴屏幕 0 点。布局/Insets 变化会重新计算，并把节点更新排回 GLThread；不修改标题 Y、字号、文案或桌面其他状态栏节点。
- 原版对照：`launcher/smali/com/smartisanos/launcher/view/Lc.smali` 与 `clean_launcher` 的原始实现一致；本次没有复制 maintained UI，也没有恢复原版机型固定边距。原版截图左侧有视觉安全留白，当前宽刘海回退用系统 safe inset 得到同类布局，但数值来自本机窗口几何。
- 验证：`build.bat` 完整成功，最终 APK 覆盖安装到 vivo X21A Android 9，包版本 `v1.5.5/30`。ADB 读取该机 1080×2280、中心刘海边界 `Rect(358,0-722,79)`；通过 `/dev/input/event1` 注入真实双指捏合进入编辑多选界面，截图确认标题左边缘约 79px，不再位于刘海中心，也不再贴左侧圆角。安装后 Launcher PID 存活，未见本次兼容层引起的 `FATAL EXCEPTION`/`AndroidRuntime`。
- 兼容边界：无刘海和标题未碰到左/右开孔时仍保持原版居中；中心水滴/药丸孔、左右开孔、多开孔以及不同标题计数宽度均由同一几何算法处理。当前仅 vivo 中心宽刘海完成真机可见验收，其他异形屏属于实现与场景矩阵覆盖，不能写成全部机型真机通过。

### 2026-08-08

#### 图标系统文档冻结与旧专项审计清理

- 2026-08-21 复审更正：本节只能保留为当时的架构目标，不能作为当前验收结论。普通静态来源仍可能在 managed 生素材与数据库预合成回退之间分叉，ActiveIcon world-bounds 校正也没有现有真机样本的运行时命中证据；当前只确认普通 Cell 的最终 physical geometry、阴影、用户百分比和缓存规格原则共享。“统一”不指所有形状具有完全相同的可见宽高，也不代表所有来源、动态状态和分辨率已经验证。
- 防回归：冻结架构、合成顺序、缓存键字段、禁止倍率和剩余验证矩阵已同步写入项目 `MEMORY.md` 与 `LAUNCHER_FIX_AND_OPTIMIZATION_PLAN.md`。删除已被当前实现取代且包含 DEFAULT-only、旧 `raster:v8` 和“optical normalization 尚未完成”等错误状态的 `ICON_PROFILE_RASTER_AUDIT_2026-08-07.md`；`LAUNCHER_FIX_AND_OPTIMIZATION_PLAN.md`、`LAUNCHER_STARTUP_BASELINE.md`、`ORIGINAL_BEHAVIOR_REFERENCE.md` 分别承担总体计划、启动实测和原版链路职责，继续保留。
- 生产清理：关闭 `DEBUG_RASTER_DUMP`，诊断字段和按需导出代码保留，正式构建不再持续写入 `DEBUG_ARTWORK/DEBUG_TEXTURE/metrics.tsv`；需要专项验收时才临时启用，验收后必须恢复关闭。
- 验证：`build.bat` 完整成功；最终 APK 为 `v1.5.5/30`，v1/v2/v3 签名验证通过。vivo X21A 保留数据覆盖安装返回 `Success`，HOME 冷启动 `Status: ok`，Launcher PID 存活，启动日志未见 `AndroidRuntime` fatal。本次未清 Launcher 数据、未移动桌面 Item。
- 验收边界：vivo X21A 1080/12 宫格/当前 100% 是已完成真机基线；50/150、1080 20 宫格、1440/2K 12/20 宫格、720 或 1220/1260 中间分辨率、完整来源切换、冷启动和设备重启保持仍未全部完成。当前只能写“架构与算法统一”，不能写“所有手机均已验证”或 `ICON_SYSTEM_VALIDATION_FROZEN=true`。

#### 【已废弃】当前 1080 与原版截图的图标尺度复核（基于面积补偿方案）

#### 【已废弃】Weather/Calendar 静态 fallback 与动态外轮廓统一（基于面积补偿方案）

#### 【已废弃】图标统一几何、静态合成与最终缓存收敛（面积补偿方案）

### 2026-08-03

#### 搜索页常用应用的使用情况访问门控

- “显示搜索页常用应用”现在独立复用角标提醒的权限门控逻辑：绑定设置项时先检查 `AppOpsManager.OPSTR_GET_USAGE_STATS`，没有使用情况访问权限时强制保持关闭，不提前写入开启值。
- 用户点击开启且未授权时只显示锤子风格提示，并提供前往系统设置；取消、返回未授权或之后撤销权限都会保持/同步为关闭。只有从系统设置返回并确认权限已授予后，才写入开启值、更新开关状态并应用搜索页设置。
- 搜索页本身不依赖该权限，未授权时仍可正常打开；权限仅用于按实际使用频率显示固定的 5 个常用应用。中英文提示资源已复用现有 `search_usage_access_*` 字符串。
- `build.bat` 与 `git diff --check` 已通过；当前无在线 ADB，尚未完成 Android 8–16 真机权限授予、取消、撤销和返回场景矩阵。

#### 备份恢复与小程序快捷方式图标隔离

- 根因收敛：恢复会重建 `table_iteminfos/table_icons`，而旧备份或缺失的 `shortcuts.json` 没有逐快捷方式位图；随后桌面重新加载时只能从来源应用回退，表现为微信头像/失去圆环。普通改进版图标刷新本身只查询 `itemType=0`，但恢复前没有保留旧快捷方式缓存，导致兼容边界不完整。
- 修复：恢复事务删除数据库前按“来源包名 + shortcutId + userSerial”暂存当前 `QuickLaunchItem(itemType=1)` 的 `table_icons` BLOB；恢复优先使用备份中的逐快捷方式记录，旧备份或记录缺失时按稳定身份回填当前原始位图。改进版图标恢复后仅对已有本地资源主动刷新普通应用，快捷方式仍由原版最终位图链路消费。
- 验证：`build.bat` 完整构建、重打包、对齐和签名成功；`git diff --check` 通过。当前 ADB 无在线设备，尚未完成真机备份/恢复与动态图标切换截图回归。

#### 【备份目录双路径已被 SAF-only 方案取代】备份目录选择器与设置项默认值

- 历史版本曾提供“手机系统目录/应用专用目录”双选项；2026-08-15 起应用专用目录及选择弹窗已删除，当前只保留 SAF 手机系统目录。本段不得作为当前入口说明。
- 新安装或缺少历史键时，“显示搜索页常用应用”和“解锁动画”均默认关闭；已有用户显式保存的开关值不被覆盖。中英文资源均已补齐。
- `build.bat` 和 `git diff --check` 已通过；当前无在线 ADB 设备，未完成真机对话框截图和 Android 8–16 矩阵验证。
- 选项行改为独立的圆点控件与文字横向布局，增加与正文一致的左侧内边距，避免圆点贴近弹窗边缘；备份行为和默认值不变。
- 目录选择弹窗已拆到 `MaintainedBackupStorageDialog.java`，宿主仅保留入口和备份/恢复回调；选择圆点改为固定颜色和线宽的轻量自绘控件，避免不同 ROM 的原生 RadioButton 样式漂移。宿主减少约 77 行，完整构建通过。
- 复测发现上一版将 66dp 误用于左侧内缩，导致高密度设备圆点偏右；现改为 11dp 行内边距 + 30dp 圆点容器，使圆点中心与正文 26dp 起始线一致。

### 2026-08-02

#### PIN 小程序图标、恢复去重与冷重载白闪

- **跨 Launcher 残留 pin 边界（OPPO Android 12 真机）**：用户复测出现“新小程序可以弹窗并显示、以前添加过但当前桌面已无图标的小程序不再弹窗”。`dumpsys shortcut` 确认当前默认桌面及 shortcut access 均为 `com.smartisanos.launcher`；新成功的小程序 ID 归 Smartisan Launcher，而两个旧 ID 仍归 `com.android.launcher`。Android 只允许当前 Launcher 查询和维护属于自己的 pinned IDs，`LauncherApps.getShortcuts(FLAG_MATCH_PINNED)` 因此只返回新成功的 1 项；旧系统桌面残留的两个 ID 不会进入 Smartisan 的确认 Activity、回调或对账链。不得把这种跨 Launcher 所有权残留误判为 `QuickLaunchItem`、圆环合成或数据库补建失败，也不得通过清空微信全部 shortcuts、清除系统桌面数据等破坏性方式静默修复。安全恢复需要旧 Launcher 主动解除对应 pin，或由用户明确授权清理系统 ShortcutService 中微信的旧 shortcut 状态。
- **搜索页常用应用与使用情况访问**：恢复原版搜索栏与“搜索历史”之间的应用入口，但不恢复旧版一次创建最多 20 项、滚动吸附和延迟 Runnable 的实现。继续复用既有后台 `loadSearchEntries()` 与 `searchShortcut()`；数据到达后在固定单行只生成 5 个不同包名的普通应用，优先读取系统过去 30 天的前台使用时长，不使用搜索历史排序。强迫症选项中“上滑打开搜索页”下新增独立的“显示搜索页常用应用”开关；关闭后不创建该行。APK 已有 `PACKAGE_USAGE_STATS` 声明但没有可自动授予的运行时权限：当用户打开搜索页或常用应用开关、且常用应用已启用而 Usage Access 未授予时，显示现有锤子样式确认框；只有用户点“去设置”才启动系统 `ACTION_USAGE_ACCESS_SETTINGS`，取消不会阻断搜索。ROM 未向 Launcher 授予 UsageStats 时仍安全回退为稳定名称顺序；不联网、不在主线程扫描/解码。
- **【已废弃】删除 v1.5.5 `final_icon` 直通、强制所有 PIN 快捷方式重新经过原版合成的试验方案。**
- **当前修复**：用户复测确认该试验会让新添加快捷方式完全不显示，而 v1.5.5 可以添加并显示圆环。现恢复 v1.5.5 的位图归一化、微信/支付宝提供方装饰识别和 `final_icon` 序列化路径；保留后来增加的请求确认、profile 身份、数据库落库确认与失败回滚，不回退其他 PIN 兼容修复。
- **恢复去重**：`RestoreMergePlanner` 以前只认识 `shortcut_id/shortcutId`，遗漏了当前兼容 Intent 的 `smartisan.shortcut.id`，并对完整 Intent 做哈希；因此同一个小程序被当作“当前新增条目”保留后，又从备份恢复一次。现在解析兼容 Intent，按 `来源包名 + shortcutId + userSerial` 生成稳定键；普通应用仍按既有组件键处理。备份中已有的普通应用/同一小程序不会再把当前同一项附加回去。
- **逐帧证据与白闪修复**：用户提供的 720×1600、约 46fps、1.834s 视频共抽取 84 帧；第 34 帧（约 0.72s）左侧 `0–63px` 出现约 99% 高亮的系统启动窗口残片，下一帧已进入黑色加载面。根因是私有 `:reload` Activity 的系统预览仍为白色 `Theme.NoTitleBar.Fullscreen`，而 Java 仅在 `onCreate()` 后设黑。文本 Manifest 和实际注入的二进制 Manifest 均改为 Android 公共 `Theme.Black.NoTitleBar.Fullscreen`（`@0x0103000a`），与现有黑色 Loading 根一致；未改变 token、旧 PID、首帧握手、Loading 布局或任一动画时长。
- **验证与风险**：`build.bat` 完整通过；最终 `build\\launcher-signed.apk` 为 `v1.5.5/30`，`aapt2 dump xmltree` 确认 `ReloadTransitionActivity` 的二进制 theme 为 `@0x0103000a`，`apksigner` v1/v2/v3 验证通过。尚未在已连接设备执行实际恢复（会改写用户当前桌面），因此小程序圆环、同一小程序恢复不重复和白闪消失仍需在该 APK 上完成一次真实恢复验收。

### 2026-08-01

#### 关于页：移除操作日志并新增使用小技巧

- **根因与范围**：操作日志是 About 页面独占的临时诊断功能，包含持久化状态、`operation_logs` 私有目录、logcat 子线程、文件扫描、预览、合并和发送；它既不属于普通崩溃诊断，也不为其他设置功能服务。
- **修复**：删除 About 宿主对该区域的绑定，以及这条专用录制/扫描/分享链和相关状态字段。保留现有 `android.util.Log`、崩溃诊断、更新安装和其他设置逻辑。About 仍使用原有 `ScrollView`，在“关注我们”之后加入静态 `setting_tips_view`：四个分组均复用 `setting_follow_view.xml` 的分组标题、颜色、边距及三段圆角列表 drawable；每项采用主标题和可换行副说明，不增加按钮、弹窗、线程或跳转。
- **本地化与验证**：27 个 `usage_tips_*` 键成对写入默认英文与 `values-zh-rCN`。`build.bat` 完整通过，最终 APK 为 `v1.5.5/30` 且 v1/v2/v3 签名验证通过；Android 17 `1440×3120` 模拟器覆盖安装后，About 可打开、返回，英文四组全部可见并可滚动至最后一项，底部保留导航栏安全空间，UIAutomator 未见操作日志文本。Android 8/12/14/16、小屏/异形屏的真实设备矩阵尚未连接，不能声称已完成全机型真机验收。

#### 桌面备份与恢复：原版页表兼容、页面统一与真实备份修复

- **根因**：首版把 `table_pageinfos.pageIndex` 错当成唯一且非负的业务主键。原版页表实际可含负值的特殊页、预分配空页及重复页索引，导致 Android 9/12 的现有布局在导出校验阶段报 `Invalid pageIndex` 或 `Duplicate page index`，备份无法创建。
- **修复**：页表改为以原版 SQLite 主键 `_id` 做唯一性校验，保留原始 `pageIndex/status/containment`；恢复校验同样只验证 `_id`，新增保留应用时按实际已使用的根级页追加，并为真正新增页分配新的 `_id`。布局快照继续按原版列白名单读写 `table_pageinfos.pageTitle` 和 `table_iteminfos.title`，所以页面分组标题、文件夹标题、文件夹内容及位置会一起轮转。预览的“桌面板块数量”改为实际含根级内容的页面数，不再显示页表预分配容量。
- **界面**：首页入口移到“设置默认桌面”下、“关于我们”上；管理页去除手工 `>`，统一使用 `setting_next`，标题和右侧值采用一级设置的字号/颜色，右侧值与箭头留出固定但紧凑的间距，标题会自动让位。已选择的 SAF 目录显示其 document-id 路径（如 `/Download/LauncherBackup`），而不是泛化的“已选择目录”；这不是假定存在可访问的真实文件系统路径。恢复预览页同步使用相同的行高、字重、颜色和卡片宽度。说明明确列出会备份的页面/文件夹/位置/设置/主题/名称/图标，以及不会备份的壁纸、应用数据、账户、权限、默认桌面、密码、天气缓存和定位信息。
- **进度与恢复**：备份、校验和恢复均继续复用 `SmartisanProgressDialog` 显示阶段状态；恢复确认后仍走既有 `:reload` 冷重载，桌面首帧后再结束过渡，备份本身不重载桌面。
- **恢复结果与图标（schema v3 更正）**：提示与冷重载时序继续有效。旧归档不保存在线改进版 RAW，只能后台补齐；2026-08-21 起新归档通过 `icons/sources.json` 保存可移植改进版 RAW source。最终 raster 仍是可丢弃缓存，不进入普通应用备份真相。
- **验证边界**：用户提供的 vivo X21A Android 9 截图已显示 2026-08-01 的成功备份、恢复预览和可撤销状态；本地 `build.bat` 和 Android 17 模拟器覆盖安装通过。Android 12 及 Android 8/10/11/13–16 的真实 SAF Provider、恢复、撤销、杀进程恢复仍需逐机复测，不能用单机成功代替全机型承诺。

#### 移除 Shizuku 默认桌面通道

- **原因**：vivo X21A Android 9 实测 `cmd package set-home-activity` 可短暂返回成功，但用户按 Home 后系统会触发 `vivo.action.HOMERECOVERY` 并恢复 `com.bbk.launcher2`；该通道不能保证默认桌面真实持久生效。
- **处理**：移除设置页 Shizuku 选择/弹窗/文案、桥接和 UserService、离线 Shizuku JAR、文本与二进制 Manifest 的 Provider/权限/元数据以及构建期 AXML 修补器。原“设置默认桌面”入口恢复为只走既有 Android Role / 系统默认应用设置。
- **验证**：`build.bat` 重新构建成功；最终 APK 的 AXML 未发现 `ShizukuProvider`、`API_V23` 或 `V3_SUPPORT`，APK ZIP 与源码运行链均未发现 Shizuku/Rikka 类。

### 2026-07-31

#### 【已废弃】桌面备份与恢复（早期实现与构建级验证）

#### 【已废弃】Shizuku 可选默认桌面授权通道

#### Android 9窗口动画私有framework资源导致壁纸空白（修复、vivo真机验证完成）

- **现象与根因**：vivo X21A Android 9 安装后首次打开或从其他界面返回锤子桌面时，偶发只剩系统壁纸；退出再进入后恢复。ADB确认 Launcher进程、前台Activity和`smt_launcher` Surface均存在，没有Launcher侧`FATAL EXCEPTION`。实际异常来自系统WindowManager在`AppTransition.loadAnimation()`阶段反复抛出`Resources$NotFoundException: Resource ID #0x10a0177`。最终APK及原版APK的`LauncherActivityTheme -> @style/Animation`均保留了Smartisan framework私有的`0x010a0177/0x010a0178`，而该vivo framework的动画资源只到`0x010a00bd`，窗口布局因此可能在过渡期间中断。
- **修复**：仅把`style/Animation`中9个仍指向私有资源的task open/close、wallpaper open和wallpaper intra open/close值改为`@null`，与该样式其余空过渡项保持一致。新增`tools/patch_launcher_window_animation_resources.py`，按属性ID、旧资源ID和唯一出现次数校验后二进制修补`launcher/resources.arsc`；意外资源表会直接失败，不会宽泛替换。未修改Launcher内部翻页、文件夹、主题、解锁、Cell回弹、Timeline、duration或Surface生命周期。
- **最终包检查**：`build.bat`成功；`aapt2 dump resources`确认`style/Animation`的25项全部为`@null`，最终APK中`0x010a0177/0x010a0178`命中数为0；badging为`v1.5.5/30`，v1/v2/v3签名验证通过。最终APK的101个framework资源引用与vivo Android 9、SDK30、SDK34、SDK36资源表比对均无缺失；Manifest的41个framework引用在vivo Android 9上也无缺失；Smali/Java未发现硬编码`0x01xxxxxx` framework资源ID。
- **真机验证**：vivo安装器覆盖安装且保留数据后，执行5次`force-stop -> LauncherAlias`冷启动，全部`Status: ok`且前台为`smt_launcher`；执行8次`系统设置 -> Back`返回，全部回到同一Launcher窗口。`cmd package compile -m verify -f`成功，最终截图确认12宫格实际可见。完整测试日志未出现`FATAL EXCEPTION`、`AndroidRuntime`、`NullPointerException`、`VerifyError`、`Resources$NotFoundException`、`NoSuchMethodError`、`ClassNotFoundException`、`UnsatisfiedLinkError`、native fatal或Launcher ANR。
- **风险边界**：本次已清除当前APK中同类“引用不存在的Android framework资源”问题，但静态审计不能证明所有厂商ROM和所有业务入口都不会崩溃。Android 6/8、三星/小米/华为/一加等真实设备未在本轮连接验证；动态天气、主题切换、宫格重载和低内存进程恢复仍按各专项矩阵验收，不能用本次启动通过替代。

#### 【已废弃】动态天气/日历阴影复用静态原版生成器（v4/v5）

### 2026-07-30

#### 【已废弃】受管静态图标独立复用原版主题阴影（v6）

#### 设置页截图范围英文本地化补齐（构建、英文1440×3120模拟器关键页面验证完成）

- **根因**：`values/strings.xml` 已有大量英文基线，但 maintained 兼容宿主仍直接写入中文。英文系统因此会在强迫症角标、授权弹窗、主题卡片、图标设置弹窗、应用分身、隐私密码、宫格切换和检查更新弹窗中混入中文；图标页还用中文标题字符串判断行类型，直接翻译会使箭头和副标题标签逻辑失效。
- **修复**：为上述页面新增成对的默认英文与 `values-zh-rCN` 中文资源，Java 统一通过 maintained `Resources` 获取；主题卡片按 `ThemeEntry.id + "_name"` 映射显示名，文艺系列补齐稳定资源键；图标页以 `rowType` 判断“图标样式/桌面图标大小”，不再依赖显示语言；更新弹窗的无版本、最新版本、新版本、无 APK、失败和下载状态均改为格式化资源。
- **边界**：未修改设置页布局尺寸、功能开关语义、主题 id/包名、图标来源存储、隐私密码数据、宫格迁移与 Launcher 重载逻辑；未提交、未推送。
- **验证**：`build.bat` 完整构建成功，APK `versionName=v1.5.5 / versionCode=30`，v1/v2/v3 签名通过。只覆盖安装到 `emulator-5556`（`1440×3120`、`en-US`），未操作 1080P 真机；UIAutomator/截图确认主页宫格、OCD 角标、通知授权弹窗、应用分身空态、隐私密码输入、图标设置列表、图标来源弹窗和图标大小弹窗均显示英文。主题名称由已编译资源和稳定 id 映射验证，主题页未完成本次可见触发；检查更新网络各分支未逐项触发。

#### 普通桌面高分辨率图标与一次性高清纹理基线（构建、1440×3120模拟器当前20宫格验证完成）

- **根因**：用户提供的两张截图分别为 `1440×3120` 与 `1080×2400`。当前 `values-sw411dp` 使用 `dock_width=1440`，但 12/20 宫格图标内容和阴影尺寸曾被统一降为与 1080 资源相同的 `160/205`、`118/152`；`LayoutPropertyAdapter` 为避免普通桌面再次被放大污染，整体适配倍率最大为 `1.0`，因此 1440 Cell 变宽后图标不会补偿放大。对照 `clean_launcher_raw` 确认原版 1440 基线应为 12 宫格 `192/246`、20 宫格 `138/178`。
- **修复**：只恢复 `launcher/assets/layout/portrait/values-sw411dp/MODE_12` 与 `MODE_20` 的原版高分辨率内容组输入：图标 `192/246`、名称偏移 `-131`、设置按钮 `134`；图标 `138/178`、名称偏移 `-100`、设置按钮 `134`。2160×1080、2242×1080、2340×1080、`values-xhdpi` 和 `values-xxhdpi` 等 1080 坐标系资源保持不变。中间宽度设备仍由现有适配器按 `实际宽度/1440` 向下等比适配，超过原版 1440 手机基线时不无限放大。
- **高清链**：未增加 SceneNode 局部 scale。默认 APK 图标继续由原版 `e.s.a(Drawable)` 按适配后的 `icon_size_origin` 直接绘制目标 Bitmap，再由原版阴影链生成对应 `icon_size_with_shadow` 纹理；没有先生成固定 1080 小图。改进版、图标包、在线 PNG 和自定义源由 `IconRasterDiagnostics.resolveNormalIconRasterSpec()` 读取同一最终尺寸并结合 Surface 像素倍率，`composeStaticIconTexture()` 从保留的源图一次采样到最终物理纹理。桌面设置按钮使用相同 `rasterScale`。因此 1440 的 12 宫格目标为内容 `192`、纹理 `246`，存在额外物理 Surface 倍率时继续生成更高物理像素纹理，而不是把旧 `160` SceneNode 放大。源 APK 自身只提供低分辨率位图时仍受源素材上限约束；受管源会记录 `ICON_LOW_RES_SOURCE_LIMITED`。
- **边界**：没有修改普通桌面 Cell 中心、行列数、文字字号、Dock 高度、打开文件夹、文件夹 Timeline、动画 duration、`Eb.update()`、`Ra.T()` 或用户 50%～150% 图标比例；关闭文件夹预览只随普通桌面外框使用同一最终尺寸，不增加独立二次倍率。
- **验证与风险**：资源矩阵静态检查确认只有 `values-sw411dp` 的 12/20 宫格基线变化，1080 系列保持原值；`git diff --check`、`build.bat`、最终 APK 资源反读、`aapt2 dump badging` 和 v1/v2/v3 签名检查通过。`1440×3120/560dpi` 的 `emulator-5556` 覆盖安装成功，保留原有20宫格配置回到桌面；图标及文字完整、设置按钮日志为 `logicalSettingButton=134/finalTexture=134×134`，截图未见小纹理放大模糊，日志无 `AndroidRuntime/FATAL EXCEPTION/VerifyError`。未改动已连接的 1080 vivo。仍需在 1220/1260/1440 真机、12宫格、默认/改进版/图标包/自定义源、50%/100%/150%、动态天气日历和关闭文件夹预览中做可见验收。

#### 【已废弃】普通桌面静态纹理真实 Cell 尺寸与缓存隔离（v5）

### 2026-07-29

#### SMEngine稳定固定步长与刷新率识别（构建、60Hz OPPO真机验证完成）

- **根因与修复**：真实长帧差值一次性送入 `Ra.T()` 会使文件夹、解锁、翻页、主题和Cell回弹突然追赶；按屏幕宣称刷新率选步长又无法处理120Hz屏幕实际只渲染60fps。新增 `AnimationFrameRateController`：默认60fps，使用无分配EMA，忽略首帧、后台/Surface恢复帧和大于25ms的异常长帧；候选档连续稳定24帧并通过迟滞后才切换60/90/120/144档。`Eb.update()` 每帧只将 `20×60/effectiveRenderFps` 送入原版 `Ra.T()`，不追赶长帧；暂停、恢复和Surface重建时重置采样。
- **边界**：未修改文件夹Timeline、duration、scale、alpha、interpolator或局部速度倍率。
- **验证与风险**：确定性测试得到60/90/120/144fps分别为 `20/13.333333/10/8.333333`，偶发40ms长帧不改变120档。`build.bat`、v1/v2/v3签名和OPPO PDCM00覆盖安装成功；当前OPPO只提供60Hz实际渲染，90/120/144Hz墙钟时长仍需对应真机。

#### 打开文件夹内容组、标题和分页节点自适应（12/20宫格OPPO真机验证完成）

- **原版对应关系**：普通12宫格为3×4，图标内容/阴影尺寸为 `160/205`；普通20宫格为4×5，对应 `118/152`。两者打开文件夹后都进入独立模式8和固定3×3布局。本机文件夹值为内容 `192`、阴影 `184`，没有按外部12/20宫格缩放；本轮不缩小文件夹图标。
- **原版资源恢复**：临时写入 `2242x1080`、`2340x1080` 的 `-82/350/1840` 固定像素方案已撤销；两个 `layout.xml` 均恢复原版 `nameOffset/titleY/dotY=-72/253/1757`。
- **内容组与行中心**：`FolderCellPositionAdapter` 精确门控真实 `t` 容器与模式8，按 `358×folderBookcaseWidth/1080` 计算行距。`FolderVisualGeometry` 从图标阴影尺寸扣除原版可见底边内缩，再以独立 `appLabelGap=20×scale` 计算文字中心；图标、阴影和文字的完整内容组中心用于修正每层Cell，而不是单独强推 `name_off_set_y`。
- **标题与分页节点**：标题以书架可见顶部 `y=129/1356` 为锚点，`titleGap=300×scale`。原纹理实心外框最后一行是 `y=1224`，其下为长投影；分页点现以实心外框下沿为锚点并使用 `indicatorGap=44×scale`，OPPO节点中心Y为 `1746+44=1790`。`Z`节点实际位置和 `FolderSceneMetrics` 安全区边界消费同一结果。
- **隔离**：没有修改共享 `LayoutProperty`、`Constants.mode()` 返回对象、普通桌面资源、关闭预览或动画。`FolderSceneMetrics` 必须同时命中精确 `FolderPageView(t)` 与模式8；OPPO日志为 `scale=1.0 translateX=0.0 translateY=0.0 clip=0,96-1080,2310`。
- **验证**：纯计算覆盖720×1600、1080×1920、1080×2400、1440×2560、1440×3200。`build.bat`、v1/v2/v3签名和OPPO覆盖安装通过；12/20宫格普通桌面及打开文件夹无 `FATAL EXCEPTION/VerifyError`，设备最终恢复12宫格。
- **风险**：当前文件夹只有一页，分页节点不会绘制，最终44px间距只完成纹理边界、纯计算和节点接入验证，仍需多页文件夹可见验收。其他尺寸/ROM、隐藏/加密文件夹、其他主题尚无真机矩阵。

#### 普通桌面与文件夹派生布局隔离（构建、OPPO 真机验证完成）

- **根因**：`fa.ir()` 是普通桌面 Page 与打开文件夹容器共用的坐标入口。本轮文件夹综合自适应把原有 `FolderCellPositionAdapter.adaptPositions(owner, points)` 改成无 owner 参数的 `FolderLayoutMetrics.adaptPositions(points)`，导致普通 12/20 宫格也收到固定三列文件夹行坐标；同时 `FolderLayoutMetrics` 通过反射把书架、标题、分页点等派生值写回传入的 `LayoutProperty`。
- **修复**：`fa.ir()` 恢复 owner 门控，只有类层级确认为 `com.smartisanos.launcher.view.b.t` 的打开文件夹容器才复制并调整坐标；普通 `fa` Page 原样返回 `Constants.pageCellCenterPoints`。共用 `M.smali` 中本轮文件夹坐标调用保持移除。`LayoutPropertyAdapter` 遇到 `_folder` 时提前返回，不再对传入对象做文件夹专用缩放；实验性的 `FolderLayoutMetrics` 随后已完整删除。该阶段未修改 MODE_9/12/20 资源、数据库、Timeline、`Eb.update()`、`Ra.T()`、刷新率检测或动画 duration；后续阶段的变化以同日更靠上的记录为准。
- **真机验证**：`build.bat` 成功；最终 APK 为 `v1.5.5 / versionCode 30`，v1/v2/v3 签名通过。OPPO PDCM00 (`Android 12`) 使用 `adb install -r` 覆盖安装且不清数据；冷启动 HOME 成功。12 宫格显示 3×4 原布局，20 宫格显示 4×5 原布局，图标/文字随宫格模式恢复各自尺寸，桌面设置入口位于底部，关闭文件夹预览正常，普通 Page 无文件夹书架。打开文件夹时书架只出现在文件夹页；日志无 `AndroidRuntime`/`VerifyError`。验证后已将设备从临时 20 宫格恢复到原 12 宫格。
- **剩余风险**：本轮仅完成普通桌面恢复和单个打开文件夹的观察性检查；第二桌面页、Dock 的复杂内容、隐藏/加密板块、文件夹多页、不同分辨率/ROM 尚未形成完整真机矩阵。文件夹完整几何与高刷新率动画必须继续作为两个独立任务，不得在本修复中混做。

### 2026-07-28

#### Android O+ PIN 快捷方式请求与桌面数据一致性（构建、安装完成；真机矩阵待验证）

- **真机根因**：OPPO PDCM00 (`Android 12`，`PZXO8PHMONGYVSOZ`) 的实时 `logcat` 与 `dumpsys shortcut` 显示，微信分身运行在 `u999`；新添加的小程序已处于该用户的 pinned 集合，但 `cmd package resolve-activity --user 999` 无法解析 `com.smartisanos.launcher/.PinShortcutConfirmActivity`。因此没有确认弹窗时，系统会保留 pinned 状态而 Launcher 不会收到可落库的 `PinItemRequest`，表现为“有时没有弹窗，添加后桌面没有图标”。这与主用户可解析确认 Activity 的成功路径不同，并非随机。
- **对照与修复**：对比 maintained `6798dd765e478026c5207c3ed1b5b9a357405cba` 后，当前确认页取消 `singleTop`、`queuedIntents`、`onNewIntent()` 和多请求循环；Manifest 保留 `exported=true`、`Theme.Translucent.NoTitleBar`，新增 `stateNotNeeded=true`。每个 Activity 只读取自己的 `getIntent()`、展示一次确认并在取消/关闭后结束。调用当前原版 `F.b()` 时恢复第二项 Activity/Context 参数，仍使用当前 `EVENT_INSTALL_OR_UPDATE_SHORTCUT`，不覆盖 `F.smali`。
- **提交语义**：`ShortcutCompatBridge.dispatchInstall()` 的反射不再被当作落库成功。确认后记录 `PIN_ACCEPT_*` 与 `PIN_DATABASE_DISPATCH_*`，再以最终 `ShortcutLaunchActivity` Intent 查询原版快捷方式表；只有找到行才记录 `PIN_DATABASE_ROW_FOUND`、`PIN_COMMIT_SUCCESS`。失败会只移除本次 shortcut ID 的 pin，记录 `PIN_COMMIT_FAILED` 与 `PIN_ROLLBACK_UNPIN_SUCCESS`，不会清空同包其他小程序。原版当前 Action 已按完整 Intent 做 upsert，Intent 包含 `shortcutId + userSerial`，所以同一小程序重复请求更新、不同微信小程序及主/分身独立存在。
- **一致性修复**：在 `SmartisanInstallManager.onLauncherModelReady()` 后的后台线程查询 `FLAG_MATCH_PINNED`；`LauncherApps.Callback.onShortcutsChanged()` 也在模型就绪后补查。系统 pinned 存在而 Launcher 数据库缺失时复用同一原版转换/入库路径补建；不在首帧、每帧或 PIN 请求队列中执行该扫描。
- **验证状态**：`build.bat` 成功完成 maintained 资源、Smali、Java compatibility host、二进制 Manifest 注入、zipalign 和签名；`adb install -r -d build\\launcher-signed.apk` 已成功安装至 OPPO PDCM00，并强制重启 Launcher。完整 PIN 真机矩阵尚未完成：同一/不同小程序重复、取消后重试、确认后切桌面/杀 Launcher/重启、删除后重加、主微信/分身微信及支付宝均待以 `PIN_*` 日志和桌面 Cell/启动结果验收。本条不得解读为功能已完全验证。

#### 应用图标有效来源与分组口径收敛（构建完成，真机待验收）

- **问题**：桌面、应用图标列表右侧预览、单应用页顶部预览和“已重绘/未重绘”分组此前各自使用候选缓存、系统原图或数据库状态，导致同一应用在三个位置显示不一致；同包多 Activity 的拨号/联系人还可能因标签或包名兜底而串图。
- **收敛状态**：保留全局 `DEFAULT` / `IMPROVED` / `PACK:<package>` 单选和单应用手动覆盖优先级，统一由当前有效来源解析桌面、列表与单应用顶部预览；分组改按实际可解析的当前图标判断。系统图标映射改为组件优先，并只对系统应用应用标签别名，避免第三方同名应用或同包双 Activity 被错误套图。**【待修复】**普通 DEFAULT 尚未完成基于 `alphaVisibleBounds` 的 optical normalization；此前“不再推导几何”的结论已被最新 1080P 真机截图否定，本轮只记录，不改实现。
- **动态状态**：天气、日历、时钟在动态开关开启时由原版 ActiveIcon 链显示，分组不再把它们误判为缺少静态候选。此前针对 ActiveIcon 的比例、alpha 阈值、阴影参数和 PNG 尺寸试验均已撤回；当前没有把动态天气/日历视觉一致性标记为完成。
- **验证与风险**：`build.bat`、Java 宿主编译、Smali 回编译、签名和 `git diff --check` 通过。OPPO PDCM00 未连接，仍需在默认/改进版/图标包切换、拨号/联系人、12/20 宫格与三个主题下，由用户核对桌面、列表及单应用页的实际一致性。

#### 上滑搜索纳入已固定的小程序快捷方式（构建完成，真机待验证）

- **根因**：搜索页只查询 `ACTION_MAIN + CATEGORY_LAUNCHER` 的 Activity；固定小程序快捷方式的身份是 `packageName + shortcutId + user`，既不会出现在该查询中，也不能由普通 `startMainActivity()` 正确启动。
- **修复**：仅通过 `LauncherApps.ShortcutQuery.FLAG_MATCH_PINNED` 读取当前 Launcher 已固定的快捷方式，不混入未固定的动态/推荐快捷方式。`SearchEntry` 为快捷方式保留独立 `shortcutId` 和用户身份，搜索历史不再与来源应用 Activity 冲突；点击结果使用 `LauncherApps.startShortcut()`。若快捷方式位于已锁页面，仍先经过现有密码确认，再交给已有 `ShortcutLaunchActivity` 处理。
- **验证与风险**：`build.bat` 成功，最终 APK 仍为 `com.smartisanos.launcher v1.5.5 / 30`；当前无 ADB 设备，未完成“应用请求固定 → 桌面出现 → 上滑搜索名称 → 点击启动”的主用户、分身用户及删除后消失验证。

### 2026-07-27

#### 解锁触发链恢复至 v1.5.3，保留高刷新率真实时间推进（构建完成，真机待验证）

- **基线**：Git 标签 `V1.5.3` 指向 `25d20c4c`（`release v1.5.3`，Manifest 为 `v1.5.3 / 28`），不是按日期推断。
- **根因**：后续 `UnlockAnimationCoordinator` 在广播入口提前过滤/认领事件，并以独立 generation、播放权和动画回调决定是否允许播放；该状态与后续 Activity、页面或场景检查不同步时会留下已认领但未播放的周期，破坏 v1.5.3 已验证的原始触发顺序。
- **恢复**：`ia.1.smali` 删除 Coordinator 广播前置过滤并恢复 v1.5.3 的 `noteOriginalUnlockBroadcast()`；`animations/c/b.smali` 删除 generation 获取和 `onAnimationStarted/onAnimationFinished` 拦截，保留原版场景 cleanup 及低频 timing diagnostics；`ja.1.smali` 删除进程启动 reset；`MaintainedLauncherSettingsHost` 恢复 v1.5.3 的熄屏确认、1200/1500ms 时间戳去重与原始双事件 fallback；删除 `UnlockAnimationCoordinator.java`。
- **保留**：`Eb.smali` 没有回退固定每帧 20 的原版行为，仍以 `uptimeMillis` 帧间隔折算统一 SMEngine delta；`mStartTime==0` 时只建立时间基准，恢复后不会把长暂停直接推进到 Timeline。
- **验证**：`build.bat` 成功，maintained 设置资源、Smali、classes2.dex、二进制 Manifest 注入、zipalign 均完成；`apksigner` v1/v2/v3 均验证通过。`PZXO8PHMONGYVSOZ` 未出现在 ADB 列表，未安装、未产生锁屏日志或截图，未将任何锁屏次数、动画时长、刷新率兼容性或 ROM 兼容性标为已验证。
- **风险**：待在 OPPO PDCM00 Android 12/ColorOS 上完成正常及快速锁屏解锁；60/90/120/144Hz、主题/文件夹、进程回收和其他 ROM 均待真机验证。

### 2026-07-24

#### 图标性能优化阶段 8.2 同进程最终长稳复测与数据修正（真机验证）

- **测试环境**：OPPO PDCM00 (Android 12, API 31, 序号 `PZXO8PHMONGYVSOZ`)
- **同进程 30 分钟桌面静置与交互复测 (PID=11704 保持 100% 一致)**：
  - 00min: PID 11704 | PSS 149.6 MB | Native 42.4 MB | Graphics 59.7 MB | Act 1 | Views 6 (冷启动稳定后)
  - 10min: PID 11704 | PSS 199.5 MB | Native 79.0 MB | Graphics 67.2 MB | Act 2 | Views 195 (交互后)
  - 20min: PID 11704 | PSS 202.7 MB | Native 81.5 MB | Graphics 68.0 MB | Act 2 | Views 195 (+3.2 MB)
  - 30min: PID **11704** | PSS **203.2 MB** | Native **81.9 MB** | Graphics **68.0 MB** | Act **2** | Views **195** (+0.5 MB)
  - **同进程判定**：从 00min 至 30min 采样 PID 100% 保持为 `11704`，未发生进程死亡或重启 (`am_proc_died=0`, `lmkd=0`)；内存完全进入 **~203 MB 稳定平台**，无单向递增泄露。
- **同进程 10 轮图标页高压进出与快速滑动测试 (PID=11704)**：
  - 第 1 轮: PSS 250.5 MB | Native 83.3 MB | Graphics 111.9 MB
  - 第 5 轮: PSS 283.0 MB | Native 109.1 MB | Graphics 116.9 MB
  - 第 10 轮: PSS 276.1 MB | Native 100.2 MB | Graphics 119.9 MB
  - 10 轮退出 60s 后: PSS 回落至 **223.1 MB** (Native Heap 回落至 **61.7 MB**)
  - **结论**：高压进出后动态 Session 取消与位图 GC 正常生效，`knownKeys` ($\le 512$) 与 `PackMap` ($\le 2$) 强约束生效，退出 60 秒后 Native Heap 显著回落。
- **进程死亡与异常日志审计**：`am_proc_died` `0` / `lmkd` `0` / FATAL EXCEPTION `0` / ANR `0` / OOM `0`。

#### 图标性能优化与初始化分阶段收敛（阶段 0 至 8 完成，已通过真机 3 轮验证）

- **背景与目标**：原版本中进入“应用图标”设置页时，主线程同步构建大列表、扫描安装包、解析 `appfilter.xml` 并同步加载全部位图，引发明显主线程阻塞；同时无界的 Key Map、PackMap 和无 Session 状态导致退出页面后任务继续运行且内存高企。
- **核心修复与架构**：
  1. **模型构建移出主线程**（阶段 2）：应用图标页框架立即显示，后台异步构建分类与模型快照；通过 `RequestSession` 与 `bindGeneration` 过滤旧页面回调，避免列表跳变与错位。
  2. **目标尺寸采样解码**（阶段 3）：按 View 逻辑尺寸与屏幕 `density` 采样解码缓存位图，替换原始大图直接加载。
  3. **Session 动态取消**（阶段 4）：页面退出或重新进入时立即 invalidate 旧 Session，优先清理 `P2_IDLE` 等非可见任务，设置页面队列上限 96，防止旧无消费者任务积压。
  4. **静态缓存有界化**（阶段 5）：`knownKeys` 绑定为 `LruCache<String, IconRenderKey>(512)`；`sPackMapCache` 限制最大 2 项，并强保当前已选中图标包不被淘汰；XML 解析移出 `synchronized` 锁。
  5. **包变化缓存失效**（阶段 6）：在 `SmartisanInstallManager` 收到 `PACKAGE_*` 广播时触发 `IconPackManager.invalidateIconPackList()`，确保图标包包名列表在应用安装/卸载/覆盖更新后准确刷新。
  6. **冷启动任务审计与分阶段**（阶段 7）：首帧前仅保留 `C0_CRITICAL` 核心启动；图标解码按 `P0_VISIBLE` (当前页) -> `P1_ADJACENT` (相邻页) -> `P2_IDLE` 调度；非关键任务在 `LAUNCH_FIRST_FRAME` 握手后延迟执行。
- **真机验证 (OPPO PDCM00, Android 12)**：
  - **首帧渲染时间**：冷启动 `LAUNCH_FIRST_FRAME` 稳定在 **162–171 ms** (中位数 168 ms)。
  - **内存表现**：冷启动 60s TOTAL PSS **~176.2 MB** (Native Heap ~38.3 MB)；进入图标页多次滑动并退出 60s PSS 稳定在 **~228.5 MB**。
  - **稳定性**：30 分钟桌面静置与 10 轮图标页压力测试无 Crash/ANR，主线程违规为 0。

#### 版本号升级与文档同步（v1.5.5 / versionCode 30）

- **变更**：使用 `tools/set_launcher_version.py v1.5.5 30` 自动同步三大版本控制入口：`launcher/AndroidManifest.xml`、`launcher/original/AndroidManifest.xml` 与 `launcher/tools/maintained_settings_res/res/values/strings.xml`。
- **文档同步**：同步更新 `README.md`（含 v1.5.5 更新摘要）、`docs/architecture/APK_STRUCTURE.md` 及 `docs/development/LAUNCHER_STARTUP_BASELINE.md` 中的版本号。
- **验证**：运行 `python tools/set_launcher_version.py v1.5.5 30` 执行通过，二进制 Manifest 校验成功。

#### 下滑系统面板与上滑搜索状态残留修复（构建完成，已增加低频日志）

- **根因**：用户在桌面下滑打开通知栏/控制中心时，`FlingUpGesture.b(MotionEvent)` 在向下滑动阶段将静态标志 `sk` 设为 `true`。当系统面板在 `ACTION_MOVE` 阶段取得焦点后，Launcher 收不到后续 `ACTION_UP`/`ACTION_CANCEL`，跳过了 `FlingUpGesture.c()` 中的 `ew()` 清理，导致 `sk=true` 遗留至下一次手势；下一次上滑时 `!sk = false` 拦截了上滑搜索，直到该次上滑结束才由 `ew()` 清除状态，造成“必须第二次上滑才能打开搜索”的现象。
- **修复**：
  1. 在 `launcher/smali/com/smartisanos/launcher/a/a/a.smali` 中增加 `resetAfterSystemPanelGestureMoveConsumed()` 和 `resetAfterSystemPanelGesture()`，仅调用内部私有 `ew()`，不增加重复状态字段。
  2. 在 `launcher/smali/com/smartisanos/smengine/v.1.smali` 的 `ACTION_MOVE` 系统面板已消费分支（`isSystemPanelGestureConsumed() == true` 且 `onOriginalTargetCancelled()` 执行后）立即调用 `resetAfterSystemPanelGestureMoveConsumed()`。
  3. 保留 `ACTION_UP`/`ACTION_CANCEL` 消费分支中的 `resetAfterSystemPanelGesture()` 作为兜底。
  4. 在 `MaintainedLauncherSettingsHost.java` 中增加低频日志 `logFlingUpReset`，输出 `FLING_UP_STATE_RESET reason=SYSTEM_PANEL_MOVE_CONSUMED/SYSTEM_PANEL_UP_CANCEL beforeRk=... beforeSk=... beforeTk=... afterRk=false afterSk=false afterTk=false`。
- **验证**：执行 `build.bat` 构建成功，签名及二进制 Manifest 检查通过。

#### 自定义上传图标保存目录与列表刷新修复（构建完成）

- **根因**：
  1. 路径不一致：`saveCustomIcon()` 将相册裁切图片保存至 `getFilesDir()/custom_icons/`，而 `RedirectIconDB.readCustomBytes()` 从 `getFilesDir()/redirect_icons/` 读取，导致数据源永远返回 `null`。
  2. 列表视图未刷新：`AppIconAdapter.getView()` 与 `rebuildRows()` 直接使用 initial load 时创建的 `RedirectIconInfo` 对象，`info.drawableName` 留在 `"auto"`，未能读取数据库中已更新的 `MODE_CUSTOM` 状态与位图。
  3. 缓存空值：`iconDrawableForChoice` 在 `TYPE_CUSTOM` 缺失 `iconData` 时返回了 `plusIcon(resources)`，导致 `IconPreviewRepository` 线程池将其作为合法位图写入 LRU 缓存，阻碍了新图片的渲染。
- **修复**：
  1. `saveCustomIcon()` 写入目录统一为 `redirect_icons/`，并在 `RedirectIconDB.customFile()` 中增加遗留 `custom_icons/` 自动迁移。
  2. `AppIconAdapter.getView()` 与 `rebuildRows()` 在绑定和分组时实时调用 `RedirectIconDB.getRedirectIconInfo(...)` 获取最新记录。
  3. `iconDrawableForChoice` 缺失 `iconData` 时返回 `null`，避免将 `+` 号位图写入 `IconPreviewRepository`；`iconSourceId` 针对 `MODE_CUSTOM` 增加数据长度后缀 `custom_<length>` 驱动缓存 Key 更新。
- **验证**：`build.bat` 打包与签名成功，`aapt2` 校验通过。

### 2026-07-23

#### 应用图标全局来源统一与真实预览（构建完成，真机未完成）

- **问题**：旧实现的 `launcher_improved_icon_enabled` 与 `prefs_key_selected_icon_pack` 相互独立，改进版和图标包可同时开启；桌面、列表右侧候选图标与设置选择不能保证使用同一来源，全局切换还会遍历并重写部分 `RedirectIconDB` 记录，存在覆盖单应用设置的风险。
- **修改**：新增 `IconSourceManager` 管理互斥 `default`、`improved`、`pack:<package>` 状态，并在首次读取迁移旧配置；保存新状态时同步旧字段，保证原版 Smali/旧 Java 兼容。应用图标页顶部由三行改为“图标样式 + 桌面图标大小”，保留原有两行背景和箭头，不修改既有“已重绘/未重绘”列表、行布局或单应用候选页。
- **解析与预览**：桌面 `iconOverrideDrawable`、列表右侧图标和全局选择弹窗共用“手动 MODE_CUSTOM / MODE_RESOURCE / MODE_PACK / MODE_ORIGINAL 优先；MODE_AUTO/无记录跟随全局；任何来源缺图回退 PackageManager 原图”的解析。弹窗只维护临时选择，取消不写偏好；图标包扫描及 appfilter 预载在后台执行，预览优先跳过已有手动覆盖的普通应用。应用时不修改 `RedirectIconDB`，只清理/预载图标包缓存、刷新现有适配器并走已有逐包 `update_icon` 链。
- **弹窗视觉收口**：来源列表不使用任何 Android/Material 单选控件；每项为 54dp 锤子式整行，右侧仅复用 `preview_picture_selected` 小对号。首/中/末行分别复用 maintained 圆角背景；分割线改为每行内部的底部细线并左右缩进 24dp，避免穿出右侧圆角。列表独立限高 280dp，标题、预览和底部按钮固定；对号使用 22dp `CENTER_INSIDE`、右侧 24dp 间距且行容器不裁剪子视图。
- **验证**：基线和修改后均执行 `build.bat`；最终 launcher、maintained 设置资源、Java helper/classes2.dex、二进制 Manifest 注入、zipalign 与 v1/v2/v3 签名均成功。真机覆盖安装仍需先解决设备返回的 `Failure [-200]`，因此未把临时预览一致性、列表滚动位置、单应用覆盖和重启矩阵标记为已验收。

#### Android 8+ PIN 快捷方式的分身用户、原版数据库动作与图标框修复（构建完成，真机未完成）

- **删除分流与去重图标修复（2026-07-23）**：`na.run()` 的普通 Android `UninstallCompat.requestUninstall(packageName)` 快速路径此前只判断单项删除和包名，错误拦截了 `itemType=1` 的 `QuickLaunchItem`，所以拖入微信/支付宝小程序会打开来源应用卸载器。现先检查 `itemType`：只有普通应用（`0`）仍走系统卸载；快捷方式回到原版确认与 `ia -> DatabaseUpdater.Action.naa -> F.b()` 链。快捷方式确认文案改为“删除快捷方式 / 是否删除“名称”？ / 删除”，普通应用既有文案和系统卸载入口未改。
- **原版删除与 unpin**：`ia` 原有 `naa`（`EVENT_UNINSTALL_SHORTCUT`）分发完成后才调用桥接日志/unpin helper；helper 从当前项目 Intent 读取 package、shortcut ID、user serial，以 `UserManager.getUserForSerialNumber()` 恢复真实 profile（仅 item userId 与进程主用户相同才允许主用户 fallback），读取 pinned 列表、仅移除当前 ID，再写回剩余 IDs。unpin 失败只记录 `SHORTCUT_UNPIN_FAILED`，不回滚已完成的本地删除，也不会触发来源应用卸载。
- **【已废弃】快捷方式图标的来源已装饰、`final_icon` 直通与跳过原版合成方案。**
- **验证**：`build.bat` 成功完成 Smali、Java compatibility host、二进制 Manifest 注入、zipalign 和签名；`apksigner verify --verbose` 确认 v1/v2/v3。vivo X21A 在线，但安全的 `adb install -r build\\launcher-signed.apk` 仍返回 `Failure [-200]`；未卸载、未清数据，故未获得删除、unpin、主/分身隔离、普通应用卸载回归及微信/支付宝单框的真机证据。

- **确认页生命周期崩溃修复（2026-07-23）**：真机日志已确认崩溃发生在 `PIN_SHORTCUT_DIALOG_SHOWN` 之后、任何 `accept()`、用户解析、图标合成和数据库调用之前：`PinShortcutConfirmActivity did not call finish() prior to onResume() completing`。根因是 `tools/patch_pin_shortcut_manifest.py` 只把原版 no-display `PinShortcutActivity` 改名，却保留其不可显示窗口属性；新的确认页需要承载 `AlertDialog`。补丁脚本现在读取/覆盖已有 `android:theme`，或在缺失时追加 typed reference `0x01/0x01030010`（`@android:style/Theme.Translucent.NoTitleBar`）。未修改 `ShortcutCompatBridge`、`DatabaseUpdater`、`QuickLaunchItem`、分身身份/图标框或 `ShortcutLaunchActivity`。
- **验证**：重新执行 `build.bat` 成功；`aapt2 dump xmltree --file AndroidManifest.xml build\\launcher-signed.apk` 的确认页记录为 `theme=@0x01030010`、`exported=true`、`excludeFromRecents=true`、`launchMode=1 (singleTop)`，并包含 `CONFIRM_PIN_SHORTCUT` 与 `DEFAULT`。完整 dump 存放于 `build\\final_manifest_dump.txt`。真机覆盖安装仍受 `Failure [-200]` 阻塞，尚不能验证是否继续输出 `SHORTCUT_ACTION_RESOLVED`，更不能据此宣称快捷方式写入成功。

- **根因**：兼容桥接层此前将原版 `DatabaseUpdater.Action.maa` 当作枚举名传给 `Enum.valueOf()`；而 `maa` 实际为静态字段，指向 `EVENT_INSTALL_OR_UPDATE_SHORTCUT`，因此确认页 `accept()` 即使成功，桌面数据库派发仍会失败。原版 `d.j.c()` 转换快捷方式时还会把 `ItemInfo.userId` 重置为 `-1`，会破坏分身身份；原图为空时也没有完整复用原版快捷方式图标框路径。
- **修复**：`ShortcutCompatBridge` 反射读取 `maa` 字段并校验其枚举名/ordinal 后，继续调用原版 `F.b(action, null, items)`，不重建 Model、PageView 或数据库写入。转换完成后从 `ShortcutInfo.getUserHandle()` 读取 identifier，写回 `ItemInfo.userId`，并记录 `SHORTCUT_USER_RESOLVED`。原版 `QuickLaunchItem` 插入前去重原本只按 Intent，因此仅在该快捷方式入口将查询收紧为 `intent + user`，并保持普通应用的通用去重不变；数据库保存链同时持久化 `user` 与 `shortcutId`。`ShortcutLaunchActivity` 保持以 `UserManager.getUserForSerialNumber(userSerial)` 恢复句柄，分身记录不允许退回 `Process.myUserHandle()`。
- **【已废弃】快捷方式图标归一化后由桥接层提前合成的方案。**
- **验证**：`build.bat` 已通过 apktool、Java 宿主编译、二进制 Manifest 注入及 v1/v2/v3 签名；`aapt2 dump badging` 确认产物为 `com.smartisanos.launcher`、versionCode `29`、versionName `v1.5.4`，最终 Manifest 含导出的 `PinShortcutConfirmActivity`、`CONFIRM_PIN_SHORTCUT` 过滤器和非导出的 `ShortcutLaunchActivity`。`git diff --check` 通过。
- **真机状态与风险**：ADB 可见 vivo X21A、主用户 `0` 和分身用户 `999`，且已安装 `com.tencent.mm`；对新 `build\\launcher-signed.apk` 执行覆盖安装被系统拒绝，返回 `Failure [-200]`。因此未在新代码上验证主/分身同一小程序可同时存在、各自启动、重启保留、独立删除/更新，也未验证支付宝图标框。不得把本项宣布为真机完成。

#### 设置页系统返回统一为左上角返回（构建完成，真机待验收）

- 本工作树先恢复到 GitHub `origin/main` 的 `36f934d3`，随后仅按顺序合并 `84d97605`（小程序快捷方式恢复）和 `8116c122`（设置图标高清修复）；未带入此前资源同步、资源补齐、主题或宫格试验。
- `ThemeChooserActivity.onBackPressed()` 统一调用 `MaintainedLauncherSettingsHost` 当前页面已注册的原有返回回调。系统返回键、三键/全面屏边缘返回和标题左上角因此进入同一路径；首页没有回调时才交给原 Activity 退出。
- 各二、三级 maintained 设置画面在显示时注册其既有父页面回调；不创建新的 Activity、页面栈、资源动画或 AndroidX 返回分发器。`onDestroy()` 清理当前 Activity 所属回调，避免旧页面持有。
- 验证：导航源文件与已审计实现逐字节一致；`build.bat` 通过 apktool、二进制 Manifest 注入、Host Java / `classes2.dex`、zipalign 和签名。未宣称真机返回行为已完成，需在成功安装后覆盖标题、系统返回键和边缘返回三种入口。

### 2026-07-21

#### 桌面设置“桌面设置”齿轮按钮高清物理纹理合成修复（构建与签名验证完成）

- **根因**：桌面静止时显示的不是 `setting_button/` 路径下的原始资源，而是 `Ec.wz()` 在运行时合成并注册的两个内存纹理 `***settingbuttonup***` 和 `***settingbuttondown***`。而原版的 `Ec.wz()` 使用了背景 PNG 原始尺寸生成这两个合成纹理，然后由 SMEngine 放大显示，从而绕过了普通图标的物理 RasterSpec，造成明显的缩放发虚和模糊。
- **修复**：
  1. 在 `IconRasterDiagnostics.java` 中增加高清合成方法 `composeSettingButtonTexture`，结合当前 `LayoutProperty.setting_button` 逻辑大小与普通图标的物理 `rasterScale` 计算出目标物理纹理像素大小。
  2. 实现单次采样物理纹理缩放绘制，并保留原版按下状态下 60 度齿轮旋转和内阴影的多图层顺序。
  3. 修改 `Ec.smali`，在 `Ec.wz()` 中先动态读取当前页面模式 and 逻辑 `setting_button` 大小，然后分别调用 `composeSettingButtonTexture` 生成抬起和按下状态的位图并注册，若 helper 失败则通过 `:cond_fallback` 安全回退到原版旧低清合成流程。
- **文件**：
  - `launcher/tools/java/com/smartisanos/launcher/theme/IconRasterDiagnostics.java`
  - `launcher/smali/com/smartisanos/launcher/view/Ec.smali`
- **验证**：执行 `build.bat` 成功重新编译 Java 兼容层及 smali 代码，重新打包并使用 v1/v2/v3 成功签名。通过 `aapt2 dump badging` 验证包信息为 `com.smartisanos.launcher` (versionCode=29, versionName=v1.5.4) 且完全无安装和解析异常。
- **风险**：主题资源异常或反射/冷启动状态不可达时，会捕获异常并返回 null，安全走 fallback 回退机制，不影响主 Launcher 的正常启动。

### 2026-07-19

#### 【已废弃】桌面设置、动态天气和日历接入普通图标 RasterSpec（尺寸与阴影视觉方案错误）

### 2026-07-18

#### 应用图标预览框收紧与关闭改进版图标时保持分组（真机验证完成）

- **根因**：共用轻描边背景曾直接铺满原版 `icon_frame_background` 的 `86dp × 96dp` 透明画布，导致可见框接近整行高度；关闭“改进版图标”又会让 `AppIconAdapter` 同步重算所有应用的已重绘/未重绘分组，列表在批量回退时发生可见卡顿。
- **修复**：应用图标页继续保留原 `86dp × 96dp` 点击 Host 和 `48dp` 图标上限，只将独立可见框从 `76dp` 收紧为 `72dp`；`24dp` 红勾继续独立覆盖在右上，随框同步改为左 `60dp`、上 `7.666667dp`。关闭全局改进版图标时，Adapter 仅刷新行内选择状态，使红勾回到左侧原图，不调用 `rebuildRows()`，因此现有“已重绘/未重绘”顺序与分组保持不变；单应用选择及开启全局改进版仍保留原有重分组逻辑。
- **验证**：真机 1080×2304 覆盖安装后，“应用图标”页两侧框不再上下相连，红勾在右侧框外缘；打开“替换图标”页确认候选宫格尺寸与排列未变。构建、v1/v2/v3 签名、APK badging 和 ADB 覆盖安装通过；关闭开关后红勾逐行回到左侧原图，首个“已重绘”标题以及 58同城、Edge、Keep、OPPO 商城等现有顺序保持不变。

#### 设置页首个分组标题的垂直基准统一（真机验证完成）

- **根因**：隐私密码、应用分身已通过 maintained 宿主的页面级 `18dp` 顶部留白定位首个分组标题；原版 `theme_preview_gridview` 的列表容器没有这层留白，导致“本地主题”相对标题栏上移一档。标题字号、颜色和左边距相同，但页面级锚点不同。
- **修复**：只在主题页列表容器补 `18dp` 顶部留白，复用隐私密码/应用分身已有的页面级节奏；没有改动分组标题自身的 `15sp`、`#80000000`、30dp 左边距、11dp/1dp 内部上下 padding，也没有移动应用图标、替换图标的前置内容或卡片内部布局。
- **验证**：真机 1080×2304 上“本地主题”最终 bounds 为 `y=303..400`，与应用分身和隐私密码的首个分组标题 `y=303..400` 一致；下一内容容器均从 `y=400` 接续。`build.bat`、v1/v2/v3 签名、ADB 覆盖安装和主题页冷启动通过，crash buffer 无 Launcher 崩溃。

#### 应用图标与替换图标预览框共用视觉背景（最终结构已由同日后续记录覆盖）

- **根因**：替换图标候选框在 `AppIconAdapter.choiceIconBackground()` 中单独创建透明填充、`5dp` 圆角与 `1px #18000000` 描边；应用图标列表仍使用旧的 `icon_frame_background.png`，因此两处框的视觉材质不一致。
- **修复**：新增无尺寸、无 padding、无 inset 的 `icon_preview_frame_visual.xml`：透明底、5dp 圆角、1px `#12000000` 轻描边。候选页按资源名取得并 `mutate()` 独立实例。应用图标页最终将该视觉背景放进独立的小框容器；外层仍保持原 `86dp × 96dp` 点击区域，红勾为独立 `24dp` 覆盖层，具体尺寸以后续记录为准。
- **验证**：候选宫格与应用图标页使用相同的轻描边视觉资源；最终真机尺寸和红勾锚点见同日“应用图标预览框收紧与关闭改进版图标时保持分组”记录。

#### 跨品牌、跨 Android 版本启动兼容性审计（核心启动修复完成；Android 12 模拟器验证完成；多 ROM 真机回归待验证）

- **已确认高风险根因**：`ja` 的 Activity 观察器字段与注册入口、`ActivityManagerSmt` 描述符和 `ha` 观察器类仍直接引用隐藏 `IActivityObserver`；即使注册体已变为 no-op，Android 16 仍可能在类加载/校验时解析该类型。启动窗口辅助类还会直接访问 `WindowManager.LayoutParams.privateFlags`、`ServiceManager/IWindowManager`、`WindowManagerGlobal`，并在 `J.a(Context)` 直接调用普通 ROM 不存在的 `SmtPCUtils.getExtDisplayId()`。另一个仅用于锁屏下滚动提示的 `ActivityManagerNative/getRunningTasks()` 分支会在现代 ROM 被隐藏 API 或任务可见性限制命中。
- **修复与降级**：Activity 观察器启动入口改为明确记录 `SMARTISAN_API_UNAVAILABLE` 后跳过；`ha` 与 `ActivityManagerSmt` 不再使用隐藏观察器类型。窗口初始化只保留公开 `Window` API；全局动画缩放回退原始默认值 `1.0f`，外接屏回退主显示器，导航栏旧反射回退既有无导航栏布局。锁屏位置查询改为反射探测并捕获 `Throwable`，服务为空时返回安全结果；不再让隐藏 API 缺失中断 Launcher。
- **可选模块保护**：`SmartisanInstallManager.ensure()` 的 HandlerThread/Handler 建立失败会清理半初始化状态、记录 `OPTIONAL_MODULE_DISABLED` 并返回；`LauncherApps` 服务为 null 或回调注册失败时只保留 Manifest 包广播路径，不再把“已注册”永久置位。天气、动态日历、主题、在线图标、通知角标和下载动画的原有独立降级路径未被扩大或重写。
- **启动诊断**：新增 `StartupCompatibilityLogger`，在 Application、安装桥、代理和 Activity 主链记录 `LAUNCHER_APP_CREATE_BEGIN`、`INSTALL_MANAGER_INIT_BEGIN`、`APPLICATION_PROXY_CREATE_BEGIN`、`APPLICATION_PROXY_ONCREATE_BEGIN`、`LAUNCHER_ACTIVITY_CREATE_BEGIN`、`MODEL_INIT_BEGIN`、`DATABASE_INIT_BEGIN`、`MAIN_VIEW_INIT_BEGIN`、`LAUNCHER_STARTUP_COMPLETE`。可选模块失败会输出 Android 版本、厂商、型号、线程、异常类型、完整堆栈与 fallback 状态；未在 Application 外层包裹全局 `catch(Throwable)`。
- **安装前置修复**：模拟器首次覆盖安装暴露二进制 Manifest 中 `PinShortcutConfirmActivity.launchMode` 被错误写为字符串 `singleTop`，导致 `INSTALL_PARSE_FAILED_UNEXPECTED_EXCEPTION: For input string: "singleTop"`。修正 Manifest 补丁后以枚举整数 `1` 写入，最终 AXML 已显示 `launchMode=1 (Raw: "singleTop")`，覆盖安装成功；这是安装解析问题，不是 Launcher Java/native 启动崩溃。
- **验证**：`build.bat` 成功完成 Smali、Java compatibility host、Dex 合并、zipalign 和签名；`apksigner verify --verbose` 确认 v1/v2/v3 均为 true。Android 12 / API 31 Google 模拟器已成功覆盖安装、以标准 HOME Intent 冷启动，并记录到 `LAUNCHER_STARTUP_COMPLETE`、Surface ready、first frame 与 model ready；未出现 `AndroidRuntime`、`VerifyError`、`NoClassDefFoundError`、`NoSuchMethodError`、`IllegalAccessError` 或 Launcher 进程崩溃。SettingsProvider 的 `WRITE_SECURE_SETTINGS` 拒绝仅来自受限全局设置写入，进程继续完成首帧；其设置页写入兼容性仍列入多 ROM回归，不将其误判为启动失败。
- **未改与风险**：未修改数据库结构、宫格迁移、主题/冷重载、解锁业务、动画资源或原版 UI。`SecurityControlView`、Smartisan Provider 与其他非启动期隐藏接口仍保留在受功能触发路径，需按相应功能在实体机继续审计；Android 6、8、11、13、15、16 以及小米、OPPO、vivo、三星、摩托罗拉、华为、一加和原生 Android 的首次安装、拒绝权限、断网、后台回收、重启、语言/字体和无锤子组件场景均待真机验证。

#### 普通 Android Home 键兼容与原版回首页复用（核心实现完成；构建与签名验证完成；真机回归待验证）

- **根因**：原版 `Launcher.onNewIntent()` 只接受锤子私有 `android.intent.extra.FROM_HOME_KEY`；普通 Android 的 HOME 交付通常只有 `ACTION_MAIN + CATEGORY_HOME`，因此不会进入原版 `J.a(Intent)`。不能让所有新 Intent 都进入该方法，因为冷重载、快捷方式和其他内部 Intent 也会复用 `onNewIntent()`。
- **Home 判断与前后台区分**：新增 `LauncherHomeCompat`。它保留私有 extra 判断，并补充标准 `ACTION_MAIN + CATEGORY_HOME`；通过 `onResume()`、`onPause()`、`onStop()` 与 `onWindowFocusChanged()` 共同维护生命周期连续性。部分普通 Android 会在前台再次按 Home 时先调用 `onPause()`、再投递 `onNewIntent()`；此时只要 Activity 尚未 `onStop()`，仍判为前台 Home。真正离开到其他应用后已 Stop 的返回只记录 `HOME_FROM_BACKGROUND` 并保留当前普通桌面页；前台第二次 Home 才记录 `HOME_WHILE_LAUNCHER_FOREGROUND` 并调用 `J.a(Intent)`。
- **原版回首页链路**：未新增分页实现、未写死页面索引，也未触碰数据库。前台标准 HOME 仅清除平台投递的 `FLAG_ACTIVITY_RESET_TASK_IF_NEEDED` 位，以匹配原版 `J.a(Intent)` 的 Smartisan 路由判定；普通 Android 在交付前会先清空原版 `J.Oa/mHasFocus`，因此仅在已由生命周期确认的前台第二次 Home 中恢复该原版门控。`e/s.ia(context)` 的锤子 keyguard/task 私有查询对普通 Android 回退为“有效前台 context”，随后继续由原版关闭弹窗/等待页、动画检查、负一屏复位、500ms 防抖和 `createScrollToLeftEvent` 决定首个正常桌面页。锤子私有 Home 路径保持原 Intent flags。
- **日志**：新增 `HOME_INTENT_RECEIVED`、`HOME_SOURCE_SMARTISAN`、`HOME_SOURCE_STANDARD_ANDROID`、`HOME_FROM_BACKGROUND`、`HOME_WHILE_LAUNCHER_FOREGROUND`、`HOME_RETURN_TO_FIRST_PAGE`、`HOME_ALREADY_ON_FIRST_PAGE` 与 `HOME_PAGE_VIEW_NOT_READY`；PageView/MainView 未就绪仅记录并跳过。
- **未改**：`Launcher.onBackPressed()` 仍为空；不使用 finish、killProcess、冷重载、固定延迟或页面数据库写入。
- **验证**：2026-07-18 `build.bat` 成功，`apksigner verify --verbose` 确认 v1/v2/v3。当前 ADB 无连接设备，尚未执行第三页打开应用后 Home、连续第二次 Home、负一屏、文件夹、编辑模式、搜索页、快速连按以及多 ROM 真机测试。

#### 微信、支付宝小程序“添加到桌面”双协议兼容（代码实现完成；构建与签名验证完成；微信/支付宝真机回归待用户验证）

- **根因与边界**：原版现代 `CONFIRM_PIN_SHORTCUT` 入口由 `PinShortcutActivity` 转交 `d/e` 悬浮 Dialog；该 Dialog 调用 `window.setType(0x7f6)`（`TYPE_APPLICATION_OVERLAY`），且原 Activity 随后立即 `finish()`。普通 Android 非特权 Launcher 不能可靠显示该窗口，异常被旧链吞掉时不会执行 `PinItemRequest.accept()` 或原版数据库安装动作。旧 `INSTALL_SHORTCUT` / `UNINSTALL_SHORTCUT` 仍由 `LauncherReceiver -> L -> DatabaseUpdater` 处理，本轮未改动。
- **现代入口**：最终二进制 Manifest 只保留 `PinShortcutConfirmActivity` 作为 exported 的 `CONFIRM_PIN_SHORTCUT` 接收者；其 Activity Window 承载原版资源标题、文案和确定/取消按钮，不依赖悬浮窗权限或 2038。Activity 对每个 `packageName|shortcutId|userSerial` 请求串行确认，取消/返回不 accept，确定时先构造完整项目、再 exactly-once `accept()`，成功后才提交原版 `DatabaseUpdater$Action.maa`。
- **持久化与启动**：现代项目仍使用原版 `QuickLaunchItem`、数据库写入和受影响页面更新链。保存的 Intent 不保存小程序 URL 或参数，只保存 `smartisan.shortcut.package`、`smartisan.shortcut.id`、`smartisan.shortcut.user_serial`，并通过内部 `ShortcutLaunchActivity -> LauncherApps.startShortcut()` 启动。仅明确标记为主用户的无 serial 项允许回退到 `Process.myUserHandle()`；不能把未知 profile 启动到主用户。
- **【已废弃】快捷方式图标 Alpha 裁切、提前合成与 `final_icon` 数据库直通方案。**
- **兼容层限制**：Java compatibility host 的编译 classpath 不可静态引用原始 APK Dex 中的混淆类，因此仅通过已核对的反射入口调用 `d/k -> d/j.c -> QuickLaunchItem`、`e/s.a()` 与 `F.b(DatabaseUpdater$Action.maa, ...)`；没有新增第二套数据库、Model 或页面插入逻辑。
- **验证**：`build.bat` 成功；Java compatibility host 已编译并注入 `classes2.dex`；`apksigner verify --verbose` 确认 v1/v2/v3；最终 APK 二进制 Manifest 确认仅有 `PinShortcutConfirmActivity` 接收 `CONFIRM_PIN_SHORTCUT`，并保留 `LauncherReceiver` 的 `INSTALL_SHORTCUT` / `UNINSTALL_SHORTCUT` 以及内部 `ShortcutLaunchActivity`。当前无 ADB 设备，尚未取得微信、支付宝实际使用 PIN 或 legacy 协议的日志，也未执行添加、取消、重复、删除、主题/在线图标刷新、分身及多用户真机回归。

#### 解锁动画偶发播放两次修复（代码实现完成；构建与签名验证完成；解锁动画 exactly-once 真机回归待用户验证）

- **解锁去重机制重构**：【已废弃】基于握手时间和回调先后的解锁去重。
- **可信结论**：每次真实 `SCREEN_OFF` 创建唯一 `unlockGeneration`。原始 `USER_PRESENT` 与生命周期 fallback 只竞争该 generation 的一次播放权；第一个来源原子设置 `playClaimed`，后续所有来源和重复广播均拒绝。动画结束不清除 `playClaimed`，只有下一次真实 `SCREEN_OFF` 才创建新 generation。
- **修复**：
  - **解锁生成标志 (unlockGeneration)**：新增 `UnlockAnimationCoordinator` 管理解锁状态机（`IDLE`, `SCREEN_OFF_ARMED`, `PREPARED`, `PLAY_CLAIMED`, `PLAYING`, `FINISHED`）与 `unlockGeneration`。
  - **真实熄屏检测与原版准备**：`SCREEN_OFF` 和已确认设备非交互的 `onPause` 只创建一次 generation。生命周期先成功创建 generation 时，仅补发一次原版 `action_keyguard_on` 以准备原始解锁场景；后续重复 `SCREEN_OFF` 不再递增 generation 或再次准备。
  - **唯一播放派发**：普通 `USER_PRESENT` 成功领取播放权后直接进入原版接收器。仅当 ROM 没有向 HOME 进程派发该广播时，生命周期会在“设备可交互且 Keyguard 已解锁”后领取同一播放权，并补发一条带内部一次性许可的原版 `USER_PRESENT`；不再补发 `action_keyguard_on`，不使用 1.2s / 1.5s 时间窗或 120ms 延迟。
  - **首尾回调第二保护**：`b.smali` 的 `onStart` 取得当前 generation 并要求协调器确认“已有播放权且尚未开始”；无播放权、陈旧 generation 或第二次回调会记录 `UNLOCK_DUPLICATE_START_BLOCKED` 后直接返回。`onComplete` 只完成同 generation 的首次结束记录。
  - **诊断与跳过原因**：日志包括 `UNLOCK_GENERATION_CREATED`、`UNLOCK_PLAY_REQUESTED`、`UNLOCK_PLAY_CLAIMED`、`UNLOCK_ORIGINAL_PLAY_DISPATCHED`、`UNLOCK_ANIMATION_START`、`UNLOCK_ANIMATION_FINISH`、`UNLOCK_DUPLICATE_START_BLOCKED` 和 `UNLOCK_RESUME_NOT_A_REAL_UNLOCK`；后者保留 `THEME_TRANSITION`、`FOLDER_OPEN`、未实际解锁或已领取等原因。
  - **验证**：本轮 `build.bat` 成功，`apksigner verify --verbose` 确认 v1/v2/v3 签名通过。当前没有可用 ADB 设备，因此尚未把 exactly-once 标为真机完成；需覆盖普通锁屏解锁、快速重复锁屏解锁、息屏恢复、通知栏解锁、主题切换中解锁、文件夹展开时解锁及多 ROM。

#### 下滑系统面板与桌面交互手势仲裁重构（核心实现完成；构建与签名验证完成；真机竞速回归待验证）

- 【已废弃】“只有空白区域才能触发下滑系统面板”
- 【已废弃】“命中带ItemInfo的Cell后永久拒绝系统面板”
- 【已废弃】“Cell或控制节点在DOWN阶段直接取得整次手势所有权”
- 可信结论：系统面板手势允许从空白区域、应用图标和关闭状态的文件夹图标开始。最终所有权根据手势识别结果决定：向下移动先达到阈值（150px）时，系统面板接管；长按或拖动先确认时，系统面板不再接管；普通轻点仍正常启动应用。
- 修复：
  - **状态机与同步锁**：`SystemPanelCompat` 重构状态为 `IDLE` (0), `TRACKING` (1), `OTHER_GESTURE_OWNED` (2), `SYSTEM_PANEL_OWNED` (3), `FINISHED` (4)。所有状态变更及手势事件方法均使用 `synchronized` 串行同步，防止跨线程竞争导致状态混乱。
  - **其他手势占有原因追踪 (`ownerReason`)**：引入 `sOwnerReason` 标记，用于区分系统面板被拒绝的具体行为，包含 `"LONG_PRESS"`、`"DRAG"`、`"PAGE_SCROLL"`、`"UP_SWIPE"`、`"MULTI_TOUCH"`、`"FOLDER_OPEN"`、`"EDIT_MODE"`、`"DOCK"`。
  - **已实现的微小抖动容错与阻断检查**：
    - `ACTION_DOWN` 时若触控在 Dock 区域内，则直接转移至 `OTHER_GESTURE_OWNED(DOCK)` 并拒绝系统面板。
    - 仅当横向位移超出 touch slop (24px) 且 `abs(dx) > abs(dy)` 时判定为翻页，转移至 `OTHER_GESTURE_OWNED(PAGE_SCROLL)` 并拒绝。
    - 仅当向上滑动超出 150px 且 `abs(dy) > abs(dx)` 时判定为上滑搜索，转移至 `OTHER_GESTURE_OWNED(UP_SWIPE)` 并拒绝。
  - **真实占有入口修正**：`b.1.smali::j(SceneNode)` 只作为原版长按监听分发，仍可能拒绝或转入拖动，因此不再在其入口抢占系统面板。普通拖动仅在 `Ha.c()` 的原版 `i(...)` 成功分支后标记 `DRAG`；编辑态拖动仅在 `Ha.d()` 建立原版拖动状态、调用 `m(8, true)` 后标记 `DRAG`。
  - **事件完整性修正**：系统面板成功后由 `smengine/v.1.smali` 只调用一次原版 `InputManager.rh()` 投递 CANCEL，并在原始 `UP/CANCEL` 输入投递前持续消费后续事件；反射展开失败不会标记系统面板已接管、不会取消原点击。
  - **交互目标白名单与分类**：
    - `onSmEngineInteractiveTarget()` 会保存原始目标；当前只对页码、编辑控件和非 Cell/FolderIcon 的控制节点立即拒绝。普通应用与关闭状态文件夹图标保持 `TRACKING`，打开文件夹、编辑和拖动则由原版活动状态检查拒绝。
    - 关闭状态的文件夹图标与普通应用图标一致，在 `TRACKING` 期间允许继续进行下拉竞争。
  - **原子接管与容错回退**：
    - 当位移达到 150px 触发下拉时，仅在反射调用系统状态栏服务成功后，才原子地将状态设为 `SYSTEM_PANEL_OWNED`；取消事件只由 SMEngine 原始入口发送。
    - 若反射调用全部失败，则不吞掉点击、不设为 `SYSTEM_PANEL_OWNED`，且不发送 CANCEL，保持状态为 `FINISHED` 以防误吞原触摸流程。
  - **事件完整性（代码静态检查）**：系统面板反射成功后才进入 `SYSTEM_PANEL_OWNED`；反射全部失败时不调用 `InputManager.rh()`、不设置该状态，外层继续走原点击链。成功状态会维持到 `ACTION_UP/CANCEL` 的外层 consumed 检查后才重置；`SystemPanelCompat` 已移除独立反射取消，消除与 `smengine/v.1` 的双重 `rh()` 风险。
- **待真机验证**：轻微反向抖动、慢速下滑与长按/拖动竞速、反射全部失败、CANCEL 是否真正清除点击/长按状态，以及 Dock 继续禁止下滑；不扩大 Dock 适用范围。
- **构建验证**：2026-07-18 `build.bat` 成功重新编译 Smali 并注入 Java compatibility host；`apksigner verify --verbose` 确认 v1/v2/v3 有效。当前 ADB 无连接设备，未安装也未标记为真机完成。

### 2026-07-17

#### SMEngine 全局动画时间源与暂停恢复基准（核心实现完成；完整真机回归待验证）

- 审计结论：桌面解锁、文件夹开关、翻页、主题、Cell 回弹和动态图标均由 `Eb.update() -> Ra.T(engineDelta)` 的原版 SMEngine 时间线推进；未发现当前项目新增的按屏幕刷新率分支、固定 frame++ 或独立 progress/scale/alpha 帧推进。原版源码中其余 `20.0f`、`0.02f` 常量分别属于资源参数、物理参数或时间轴定义，不能机械删除；已确认粒子唯一明确入口继续使用 `engineDelta / 1000f`，没有固定 `0.02f` 推进。
- 时间基准：保留真实 `uptimeMillis` delta、`engineDelta = realDelta * 20 / 16.6667` 与 100ms 上限。`Eb.onPause()` 和 `Eb.onResume()` 均清零 `mStartTime`，因此锁屏、后台、Activity/GL 恢复后的首帧必为 0 delta，下一帧才按真实墙钟推进，避免后台间隔或快速恢复吞掉动画开头。
- 未改：所有 unlock XML、文件夹/主题动画 XML、原版 duration、缩放、透明度、插值器、解锁广播、冷重载和任何 Display refresh-rate/品牌分支。
- 静态验证：2026-07-17 apktool 已重新编译全量 Smali，`git diff --check` 无空白错误；当前已签名 APK 的 v1/v2/v3 校验有效。由于无 ADB 设备，60/90/120/144Hz 的解锁、文件夹、翻页、主题、拖动回弹和动态图标墙钟时长尚未实测，不能声称小于 5% 的回归已经完成。

#### 【已废弃】下滑系统面板所有权与 NEW 实时入库链（代码实现完成；构建、签名与二进制 Manifest 验证完成；真机回归待验证）

#### SMEngine 按真实墙钟 delta 推进，修复高刷新率动画加速（代码实现完成；构建、签名与二进制 Manifest 验证完成；真机回归待验证）

- 根因：原版 `view/Eb.update()` 虽读取 `SystemClock.uptimeMillis()`，却在写回 `mStartTime` 后丢弃 `now - previousStartTime`，每次 `GL/vsync -> Eb.update() -> Ra.T(float)` 均传入固定 `fx=20.0f`。120Hz 因而每秒调用约为 60Hz 的两倍，解锁 XML、主题和翻页等同一 SMEngine 时间线会以约两倍逻辑速度推进。
- 对照：`clean_launcher_raw` 与当前 APK 的 `Eb.update()` 均为相同固定步长；维护参考提交 `1e6ab7265dfe1b48855283d4be98b2f00e4f9546` 的 `MainView.update()` / `World.runOneFrame()` 是同一混淆映射。本轮仅按其最小差异移植到当前 `Eb -> Ra` 命名。
- 修复：每帧保留真实 delta，首次帧为 0，后续限制为最大 100ms，随后计算 `engineDelta = realDelta * fx * (1 / 16.6667)`，再调用既有 `Ra.T(engineDelta)`。100ms 上限只防止掉帧、后台恢复或调试停顿使动画跳到结尾；不读取 `Display.getRefreshRate()`，因为该 API 在部分 ROM 可返回默认模式而非实际 GL vsync。
- 粒子：已确认 `Ra.T(float)` 内的 `BU.ea(0.02f)` 是 maintained `updateAllParticleEmitter(0.02f)` 的等价唯一入口，改为 `BU.ea(engineDelta / 1000f)`；没有对无法精确映射的粒子路径猜测修改。
- 诊断：新增 `AnimationTimingDiagnostics`，仅在 SMEngine 实际推进时每秒最多记录一次 `ANIMATION_FRAME_DELTA`（异常 delta 例外），包含真实 / 引擎 delta、`fx`、uptime 和线程；既有 `UnlockAnimationXML` 的 `onStart/onComplete` 仅新增 `UNLOCK_ANIMATION_START/FINISH` 墙钟时长日志，不改变原始回调顺序或解锁业务。
- 验证：`build.bat` 成功完成 Smali、Java `classes2.dex` 注入、zipalign 与签名；独立 `apksigner verify --verbose` 确认 v1/v2/v3 为 true，`zipalign -c -P 16 -v 4` 通过，`aapt2 dump xmltree --file AndroidManifest.xml` 确认最终二进制 Manifest 仍为 `com.smartisanos.launcher` 且 `ReloadTransitionActivity` 保持 `screenOrientation=portrait`。当前 `adb devices` 无连接设备。
- 未改：`unlock9/12/16/20.xml`、原版缩放/颜色/插值、解锁广播触发、`USER_PRESENT` / 生命周期兜底、主题 / 宫格 / 冷重载链路均未修改。待同一小米设备在 60Hz 与 120Hz 各至少三次、并在 OPPO 复测解锁、翻页和主题动画；当前不能将真机结果标记为完成。

#### 桌面上滑搜索与左右下滑系统面板（代码实现完成；构建与二进制 Manifest 验证完成；真机回归待验证）

- 原下滑搜索入口：此前 `Launcher.dispatchTouchEvent(MotionEvent)` 在所有事件已交给 RootView/SMEngine 后，再调用 `MaintainedLauncherSettingsHost.handleLauncherSearchGesture()`；该旁路以向下 `dy` 判定并通过 `ThemeChooserActivity` 的 `launcher_show_search` extra 打开项目内搜索页。现已完整删除这个 Activity 级观察器、其状态字段和下滑方向判断，下滑不会再由这条链路进入搜索。
- 上滑搜索：当前 APK 原本已有 `com.smartisanos.launcher.a.a.a`（source `FlingUpGesture.java`）；`com.smartisanos.smengine.v.1` 在 ACTION_DOWN / MOVE / UP 分别调用其 `a(MotionEvent)`、`b(MotionEvent)`、`c(MotionEvent)`。保留原版单指、500ms、150px、反向移动和横向 0.83 比例限制，并在成功后改为调用现有 `MaintainedLauncherSettingsHost.openLauncherSearchFromSwipeUp()`，仍由既有 `ThemeChooserActivity` / `launcher_show_search` 打开项目内搜索页，不新建或重写搜索页面。
- 设置：原设置行保留原位置和 View ID，标题改为“上滑打开搜索页”，最终 key 为 `swipe_up_search_enabled`、默认 `true`。首次读取新 key 时，若不存在则一次性读取旧 `launcher_search_page_enabled` 并写入新 key；后续手势仅读取新 key。紧邻新增“下滑打开通知栏和控制中心”（`swipe_down_system_panels_enabled`，默认 `true`），两个开关写入现有 launcher settings 存储后立即生效，不冷重载、不杀进程。
- 下滑系统面板：当前源码没有 maintained 的同名 `DragLayer`；实际等价入口仍是原版 `smengine/v.1` 的 ACTION_MOVE。首版错误地只在该 MOVE 读取延迟回写的 `v.LE`，而 `FlingUpGesture.b()` 已先调用 SystemPanelCompat；快速图标下拉会在 Cell touch-down 结果到达前打开 SystemUI，且 `ACTION_UP` 先清除 consumed 标记，随后仍投递原图标 click。现改为真实 Cell touch-down 立即阻断，Cell long-click/拖动同样阻断；候选额外等待 120ms 让 SMEngine 命中状态稳定。单指空白区下拉超过 150px、纵向大于横向才触发；成功后 consumed 状态保留到 `smengine/v.1` 消费同一 ACTION_UP，因此不再启动应用。多指、横向、设置关闭和反射失败继续原桌面触摸链。
- 兼容调用：新增唯一 `SystemPanelCompat`，只通过 `context.getSystemService("statusbar")` 反射。左侧顺序为 `expandNotificationsPanel()` → `expand()`；右侧顺序为 `expandSettingsPanel()` → `expandNotificationsPanel()` → `expand()`。没有无障碍服务、常驻服务、厂商 Intent、Root、Shell、Shizuku 或 ROM 型号判断；所有反射失败均返回原触摸链，不抛出到 Launcher。
- Manifest：文本 Manifest 原已含 `android.permission.EXPAND_STATUS_BAR`；本次未重复修改 AXML。构建后的最终二进制 Manifest 已用 `aapt2 dump xmltree --file AndroidManifest.xml build\\launcher-signed.apk` 确认保留该权限。
- 验证：2026-07-17 已再次执行 `build.bat`，完成 maintained 资源、Smali、Java Compat、classes2.dex、zipalign 和签名；`apksigner verify --verbose` 确认 v1/v2/v3 为 true。当前 `D:\sdk\platform-tools\adb.exe devices` 未发现设备，不能声称真机通过。待在 OPPO/ColorOS、小米/HyperOS、接近 AOSP，以及 Android 11/13+/15+ 上验证左右空白区下滑、图标轻点后下拉、图标长按拖动、Dock、文件夹、编辑模式、横向翻页、多指、负一屏、12/20 宫格和连续快速操作。

#### NEW 标记不再被通知使用权或角标提醒隐藏（代码实现完成；真机回归待验证）

- 根因：原版 `view/a/g.1` 的 `SHOW_MESSAGE_FLAG` 是数字消息角标与新安装 NEW 共用的渲染位。通知使用权未授权时，maintained 设置宿主会按既定权限策略关闭“角标提醒”，并令该全局位为 `false`；这并非原版 NEW 安装判定依赖通知权限，却会把已经正确写入 `ItemInfo.isNewlyInstalled` 的 `newapp.png` 一并隐藏。
- 原版对照：`g.bb()` 继续只在 `isNewlyInstalled=true` 且 `messagesNumber<=0` 时创建原版 `newapp.png`；真实消息数大于零时仍优先显示数字消息角标。安装入库、`newlyInstalled` 数据库字段、首次点击清除 NEW、通知监听服务、通知使用权申请与角标开关持久化均未修改。
- 修复：仅在 `g.i(0x200, visible)` 与 `g.Zm()` 计算共享显示位时，为“新安装且没有数字消息”的原版条件补回可见性。关闭角标提醒、未授权或撤销通知使用权时，普通数字通知角标仍被隐藏；只有原版 NEW 保持显示，且有真实消息数时不会与数字角标叠加。
- 验证：待本次完整构建后，以未授予通知使用权的新装应用验证 NEW 出现；再验证关闭角标提醒、授予/撤销通知使用权、带真实通知数的新装应用优先显示数字角标、首次打开清除 NEW，以及普通数字角标仍受开关控制。当前无 ADB 设备，不将真机结果标记为完成。

#### 跨 ROM 新安装应用即时显示与原版 NEW 标记（代码实现完成；真机回归待验证）

- 根因：原版 `LauncherReceiver` 的 `PACKAGE_ADDED` 直接调用 `Aa.c()`，而移植层 `SmartisanInstallManager` 的动态接收器又独立调用相同入口；两条链在不同 ROM 的 PackageManager 可见性与 Launcher 模型初始化之前竞争。移植层只进行 `0/300/600ms` 三次探测，第三次失败后直接丢弃，正好会遗漏 HyperOS 等延迟暴露 Launcher Activity 的新应用。该兼容路径没有把“真实新安装”语义带入原版入库，因此依赖系统应用分类的应用可能没有原版 NEW。
- 原版对照：`Aa.c(Context, package)` 只负责收集真实 Launcher Activity 后投递 `DatabaseUpdater.Action.aaa`；`data/A.k()` 转入 `A.b(package, matches)`；`A.b()` 创建 `ItemInfo` 并在同一 `a/l.h(ItemInfo)` 入库前写入 `isNewlyInstalled`，`ItemInfo.toContentValues()` 同步写入 `newlyInstalled`。桌面 `view/a/g.1` 读取该原版字段绘制 NEW，首次点击后的原版 `clearFlagNew` 仍把同字段回写为 `0`。本轮未新增自定义 NEW、角标、Cell 刷新或数据库表。
- 修复：现有 `SmartisanInstallManager` 成为唯一协调层。Manifest 接收器在保留主题包和 `PACKAGE_DATA_CLEARED` 原版处理的前提下，将普通 `ADDED/CHANGED/REMOVED/REPLACED` 转交管理器；动态 receiver、`LauncherApps.Callback` 与 `PackageInstaller.SessionCallback.onFinished()` 同样只入同一队列。事件以包名去重并写入 `SharedPreferences`，只有 `J.MESSAGE_COMPLETE` 调用 `onLauncherModelReady()` 后才回放；首次 model-ready 记录安装基线，不扫描或重排已有桌面数据库。
- 就绪与 NEW：回放同时要求 PackageManager 可查询包和 `MAIN/CATEGORY_LAUNCHER` Activity；按 `0/100/250/500/1000/2000/4000ms` 有界重试，约 12 秒仍不可见时记录 `INSTALL_PENDING_RETAINED` 并保留落盘事件，不再永久删除。新安装由 `firstInstallTime == lastUpdateTime` 且晚于基线、并且非 replacing 判定；升级不会标 NEW，卸载会移除待处理标识，卸载后重装可重新满足新安装条件。原始 `A.b()` 仅在创建 ItemInfo 前读取该事件标识，确保 NEW 与原版同一次入库落盘；点击清除逻辑未改。
- 验证：`build.bat` 已完成 apktool 回编译、二进制 Manifest 注入、Java 兼容层编译、`classes2.dex` 合并、zipalign 和签名；`apksigner verify --verbose` 确认 v1/v2/v3 为 true；`aapt2 dump xmltree --file AndroidManifest.xml` 确认最终 APK 的 `LauncherReceiver` 仍包含 `PACKAGE_ADDED/CHANGED/REMOVED/REPLACED` 与 `package` scheme。当前 ADB 无连接设备，未声称 OPPO/HyperOS 即时显示、NEW、升级、卸载重装、冷启动恢复、分身/多用户、连续安装或 Java/native 稳定性已完成真机验证。

#### 动态天气/日历实时节点阴影主题资源解码修复（代码实现完成；最终真机回归待完成）

- 根因：实时 `WeatherView(H)` / `CalendarView(m)` 的阴影源来自 `pb.path()`，该值是相对主题 Asset 路径；原版通过 `xa.getBitmap()` 以当前 `Constants.THEME_PATH` 打开。旧兼容层错误地将该路径交给 `BitmapFactory.decodeFile()`，在通常的主题 Asset 场景中无法得到 Bitmap，导致 shadow-only PNG 和后续纹理无法生成；调整半径、颜色或节点坐标均不会改变真机视觉。
- 修复：`LauncherSettingBridge` 现在反射调用原版 `smengine.s.getBitmap(String)`（即 `xa.getBitmap()`）读取同一主题资源，再只复制该 Bitmap 用于兼容软件阴影生成；只有路径确为本地文件且原版解码不可用时才回退 `decodeFile()`。不修改原版资源、天气/日历动画、阴影参数、`sc[27]` 私有 GL 链、节点尺度或业务开关。
- 缓存与诊断：缓存目录从 `active_icon_shadow_v1` 升级到 `v2`，避免使用旧解码链生成的条目。仅在缓存创建时记录源路径是否为文件、原版解码路径、源尺寸、输出字节数；`H` / `m` 在 `setImageName()` 和 `addChild()` 后记录实际节点父级、layer、renderQueue 和 visible，供下一次真机日志确认纹理加载与节点未被裁剪。
- 验证：2026-07-17 `build.bat` 已成功生成当前 APK；ADB 当前无设备，尚未声称阴影视觉已在普通、浅色、透明主题或 12/20 宫格上确认。真机应检查 `ACTIVE_ICON_SHADOW_SOURCE_DECODED route=theme_asset`、`ACTIVE_ICON_LIVE_SHADOW_BITMAP_CREATED` 与 `ACTIVE_ICON_LIVE_SHADOW_NODE_STATE`，再按截图确认天气、日历与普通图标的外部阴影一致。

#### 【已废弃】空白区域下拉与上滑搜索手势仲裁回归修复（代码实现完成；最终真机回归待完成）

- 日志根因：`SystemPanelCompat` 将所有 `view.a.g` 节点视为有图标的 Cell。真机日志中的 `cell_empty21/22/32` 实际是空白格，但都被记录为 `PULL_DOWN_REJECT_CELL`，所以空白区域无法取得通知栏/控制中心的手势所有权；同一过宽的等待状态也会干扰随后原版上滑搜索判定。
- 修复：仅当 `g.Rj`（原版 `ItemInfo`）非空时才把 Cell 认定为交互所有者；`Rj == null` 的原版空白格保持等待原始 SMEngine dispatch 完成后进入 `EMPTY_SPACE_CANDIDATE`。图标、文件夹、控制节点、长按和拖动仍优先于系统面板；未恢复任何按时间猜测命中的旧逻辑。
- 验证：2026-07-17 已完成 `build.bat`。待真机确认左半屏空白下拉得到 `PULL_DOWN_EMPTY_CELL_IGNORED -> PULL_DOWN_EMPTY_SPACE_CONFIRMED -> STATUS_BAR_EXPAND_NOTIFICATIONS_OK`，右半屏对应 Settings/通知 fallback；图标长按拖动不得触发系统面板，上滑搜索需保持一次手势一次启动。

#### 【已废弃】动态天气/日历实时节点接入原版参数的安全软件阴影（旧解码链无效）

### 2026-07-16

#### 应用图标即时刷新收敛（核心实现完成，基本验证完成；最终回归待完成）

- 根因分离：设置页此前递归遍历 DecorView 的 `refreshIconRowsInCurrentPage()/refreshIconRowsInTree()`，只能更新已经附着的可见行；屏幕外 ListView 行在滑动重新绑定前保留旧状态。桌面侧则存在两个时序问题：全局“改进版图标”无差别对全部 Launcher 包派发 `update_icon`，在线图标在缓存写入时先启动固定 2 秒静默刷新、之后才把 `RedirectIconDB` 置为 `MODE_AUTO`，使原版更新链可能读取旧状态。
- 设置页修复：应用图标页现在以 `WeakReference<AppIconAdapter>` 维护当前页面 Adapter，不保存 Activity 或 ListView 的静态强引用。状态变化调用 `invalidateIconData() -> notifyDataSetChanged()`；每次 `getView()` 均重新读取 `RedirectIconDB` 当前记录，再解析 AUTO/ORIGINAL/RESOURCE/CUSTOM/PACK、图标包与在线内存/磁盘缓存。已删除递归 View 树刷新及其单行变体；自定义、资源、图标包、恢复原图和全局开关统一走 Adapter 刷新。
- 左右预览：列表右侧“改进版候选”与当前选择状态已分离。关闭全局改进版图标时，AUTO 项使用左侧系统原图并将 `icon_frame_selected` 对号显示在左侧；右侧已缓存/内置候选继续保留为可选预览，不退化为加号。CUSTOM/RESOURCE/PACK 的用户明确选择优先级不变。
- 桌面刷新：保留原版 `com.smartisanos.launcher.update_icon -> Aa.c -> Aa.r -> Aa.e -> DatabaseUpdater -> data/v.run -> PageView.y` 唯一链路。对比 `clean_launcher_raw` 后确认 `data/v.run()` 未改，`PageView.y()` 差异仅为既有文件夹位置适配，没有补加 Smali 回调、第二套广播、Cell 遍历或强制冷重载。`applyIconChanges()` 只向真正变更的 package 集合派发一次，不再在派发返回时假定数据库/渲染已完成或额外请求渲染帧。
- 在线与并发：`writeCachedSmartisanIcon()` 现在只写缓存和清除 miss；下载成功后先更新内存缓存、仅在改进版开关仍开启且不存在 CUSTOM/RESOURCE/PACK 覆盖时写入 AUTO，随后将实际变化包加入主线程单飞集合。删除 2 秒静默期；同一 main-loop 周期完成的包合并为一次原版更新。全局开关每次递增 generation，旧后台扫描在写库或派发前发现 generation/目标状态不一致即记录 `IMPROVED_ICON_STALE_RESULT_SKIPPED` 并退出。
- 在线别名回写：部分系统应用下载使用锤子标准图标别名，而该别名不是 Android 实际安装包名；此前下载完成后以该别名执行 `Intent.setPackage()`，查询不到 Activity，因而不会写 AUTO、刷新右侧对号或派发桌面更新。现在下载回写会遍历 Launcher Activity，以“实际包名或其 Smartisan 别名”匹配，再只将命中的真实包名加入 `update_icon`；不会刷新其他应用或重新加载 Launcher。新增 `ONLINE_ICON_AUTO_PROMOTION` 日志记录下载 key 与实际变更包。
- 单应用桌面回写：合并 `update_icon` 时一度遗漏旧单应用路径在派发后的 `O.init(context)`。设置页直接读取 `RedirectIconDB`，所以云服务、小布助手等会先显示右侧对号；已附着的桌面 Cell 却仍按旧的原版运行时配置快照绘制。`applyIconChanges()` 现仅在确有变更包并完成该包的 `Aa.c -> Aa.r -> Aa.e` 派发后恢复 `O.init(context)`；不扫描其他应用、不重载 Launcher、不新增 Cell 遍历。
- 设置页/桌面图标一致性：云服务和小布助手的截图确认，设置详情页已选中锤子图，桌面仍显示系统图。真实根因是旧桌面 `ItemInfo.componentName` 与设置页保存的当前 `ActivityInfo.name` 不一致；桌面精确组件查表失败后不进入受管图标分支。现保持精确组件记录优先；只有该包恰好只有一个 Launcher Activity 时，才回退查询其当前组件记录。多入口应用绝不使用此回退，避免跨入口串图。桌面随后以该实际组件和同一 `SettingsResourceContext` 解析选中项；联系人/拨号既有分流不变。新增 `DESKTOP_ICON_COMPONENT_FALLBACK` 日志记录命中的兼容回退。
- 诊断：新增 `ICON_UPDATE_DISPATCHED`、`ICON_ADAPTER_INVALIDATED`、`IMPROVED_ICON_STALE_RESULT_SKIPPED`，包含 generation、变更包数量和状态；不记录 Bitmap 内容。后续若真机日志确认已到 `PageView.y` 却无下一帧，才可依据原版 GL 线程投递补一次合并渲染请求，本轮没有预先添加。
- 基本验证：`build.bat` 成功，最终 APK v1/v2/v3 签名有效，PDCM00 ADB 覆盖安装并强制启动成功；启动后 logcat 未见新的 Launcher `FATAL EXCEPTION`、`VerifyError` 或 `NoSuchMethodError`。尚未在真机完成设置页屏幕外行、单次开关全量变化、在线下载完成、快速开关 generation、不同图标模式、桌面翻页/文件夹和多 ROM 回归，不能标记为全部完成。

#### 系统视频自动图标改回原版锤子视频图（核心实现完成，基本验证完成；最终回归待完成）

- 真机证据：替换图标页中的“OPPO 视频”已被系统视频类别识别，却显示 `com.android.VideoPlayer.png` 的旧跨 ROM 图；`com.smartisanos.videoplayerproject.png` 虽在在线索引和类别 variants 中存在，但仅作为手动候选，未进入自动映射。
- 修复：将系统视频类别的自动 key 从 `com.android.VideoPlayer` 调整为已有的 `com.smartisanos.videoplayerproject`，并将同一张已有 PNG 作为 maintained 设置资源的离线回退。候选页和桌面先读取该资源，不再依赖首次在线下载或已有缓存；`com.android.VideoPlayer.png` 继续保留为手动可选 variant。OPPO、ColorOS、OnePlus 等系统视频仍通过同一已验证的系统应用分类条件命中，不按手机型号写死包名。
- 验证状态：`build.bat`、v1/v2/v3 签名和 PDCM00 ADB 覆盖安装已通过。此前真机替换图标页只显示旧图，根因为在线图标未预置到 APK，且带点 key 在内置 drawable 的候选过滤中未转换为下划线资源名；现已同时修正。仍需在真机重新打开“OPPO 视频”替换图标页确认锤子视频图显示并选中，不能标记为全部完成。

#### 宫格冷重载旧 token 二次启动（核心修复完成，基本验证完成；最终回归待完成）

- 真机日志证据：连续切换中，`:reload` 正确为当前 token 启动新 Launcher 后，新主进程又先后接收过期 `f4982e48-98a6-417f-a976-bf750ecac703` 的 `grid_migration/20` Intent，再接收当前 token。例如 18:49:58 当前 token `ae2438fa...` 为 12 宫格，但同一新 PID 8159 先记录旧 token、再记录当前 token；此前 20 宫格和透明主题切换也重复同一旧 token。该双初始化可与当前 token 的首帧、任务恢复发生竞争，足以解释偶发闪退和不透明过渡页短暂失去覆盖后的系统壁纸闪回。
- 根因：Launcher 是 `singleTask`。旧主进程结束后，部分 ROM 会先用 Launcher 任务保留的旧 base Intent 重建 Activity，再把本次 `startLauncher()` 的 Intent 通过 `onNewIntent()` 送达。此前 `captureLauncherReloadIntent()` 无条件接受任意 token，因而把这次旧 base Intent 误当成新的冷重载。
- 修复：每次 `beginReload()` 在启动过渡页前同步写入唯一的 `expected_launcher_token`；新 Launcher 只接受该 token。与其不匹配的旧 base Intent 记录 `STALE_LAUNCHER_INTENT_IGNORED` 且不重置 reload 状态、不初始化 Loading window；当前 token 在 `FIRST_FRAME_READY` 后清除标记。未改 `N.d()`、`F.i()`、数据库、旧 PID 精确终止、`FIRST_FRAME_READY` 判定或 Loading 视觉链。
- 视觉回归修正：首次实现只忽略旧 token，会使当前 token 经 `onNewIntent()` 到达前，原版 `J.b()` 已创建“正在初始化”Dialog，丢失其 `show()` 前的统一窗口几何准备，导致两个 Loading 位置再次不一致。现将“业务 token 接受”与“初始化 Dialog 窗口准备”分离：旧 token 仍不会设置 `sReloadToken`，但会暂存已持久化的当前期望 token，用它在原版 Dialog 创建前应用同一几何；当前 token 到达时保留已准备状态。
- 基本验证：两次完整 `build.bat`、v1/v2/v3 签名校验与 ADB 覆盖安装均通过；代码审计确认当前 token 的 `onNewIntent()` 仍会照常捕获，旧 token 仍不会重置 reload 状态。未擅自修改真机默认桌面或宫格设置，尚未把本次连续宫格实体机回归标记为完成。
- 最终回归待完成：在 Smartisan 默认桌面连续 12→20→12 至少 10 次，并混合透明主题、图标大小、动态天气/日历切换；每轮必须只出现一个业务 `NEW_LAUNCHER_STARTED`/`FIRST_FRAME_READY` token，旧 token 仅允许出现 `STALE_LAUNCHER_INTENT_IGNORED` 和初始化窗口准备日志，不得再次进入业务初始化、壁纸闪回、失败提示或 Java/native 崩溃；逐帧确认两段 Loading 的位置不再回归。

#### 首次冷启动“正在初始化”真机耗时基线（调查完成，未改业务逻辑）

- 真机：PDCM00，受控 `am force-stop` 后冷启动 `com.smartisanos.launcher/.Launcher`；当前配置为 12 宫格、普通黑色主题、透明主题关闭、动态天气/日历关闭、图标包关闭、角标隐藏。
- 日志：`LAUNCH_ONCREATE_BEGIN=0ms`，`LAUNCH_ORIGINAL_INIT_END=82ms`，`LAUNCH_SURFACE_READY=158ms`，`LAUNCH_FIRST_FRAME=165ms`，`LAUNCH_MODEL_READY/LAUNCH_PAGE_READY=710ms`；系统 `Displayed` 为 `+329ms`。因此“正在初始化”在当前设备约覆盖首帧后 545ms 的原版模型/PageView 完整就绪窗口，不是 `ReloadTransitionActivity`、`FIRST_FRAME_READY`、网络下载或固定延迟造成的等待。
- 结论：阶段 4 的优化目标是旧进程退出、新进程首帧和窗口连续性，不能以提前关闭初始化 Dialog 代替首次桌面模型完成；否则会重新引入桌面未就绪、旧/新 Loading 交接或白/黑帧。后续若某一真实配置超过该基线，必须以同一诊断标记定位是图标包、动态天气/日历、数据库数据量或 ROM 调度，再仅把非首帧必需工作移出模型关键路径。
- 验证状态：已完成本次 ADB 冷启动与日志采样；未修改代码、资源、数据库或冷重载协议。不同宫格、动态图标开启、图标包、复杂桌面数据和其他 ROM 的首次启动耗时仍待专项采样。

#### 冷重载两段 Loading 文案与几何一致性确认（核心实现完成，基本验证完成；最终回归待完成）

- 现象：冷重载首段 `ReloadTransitionActivity` 与新 Launcher 原版初始化 Dialog 的文案归属被写反，真机先显示“正在初始化”、后显示“正在加载桌面”。
- 修复：仅将 `ReloadTransitionActivity` 的过渡文案恢复为“正在加载桌面...”；`J.smali` 中原版 `R.string.initializing` 调用未改，后段继续显示“正在初始化”。未改 `FIRST_FRAME_READY`、token、旧 PID 结束顺序、窗口策略或任一宫格/主题业务逻辑。
- 几何实现：两段分别由 `ReloadTransitionActivity` 与新 Launcher 原版 `SmartisanProgressDialog` 承载，但都通过 `OriginalLoadingContentFactory` 生成同一套原版 `loading_progress`、面板高度、圆角、padding、spinner 尺寸、文字样式和居中参数；两个窗口均在首帧前使用全屏沉浸坐标系，避免 system bar inset 改变中心位置。文案继续分别为“正在加载桌面...”和“正在初始化”。
- 基本验证：已完成源码调用点核对、`build.bat` 完整构建、v1/v2/v3 签名校验及连接真机的 ADB 覆盖安装；本次真机反馈确认两段 Loading 的大小和位置已一致。
- 最终回归待完成：仍需在连续宫格切换、图标大小、动态天气/日历及透明主题开关中逐帧确认，没有状态栏/导航栏闪现、上下位移、系统壁纸、黑白帧或“桌面重新载入失败”。

#### 普通主题被透明覆盖状态误导进入冷重载（核心修复完成，基本验证待完成；最终回归待完成）

- 日志证据：用户在普通主题操作中，`ThemeChooserActivity` 于 13:56:13 和 13:56:18 被 `ReloadTransitionActivity` 顶替，随后 `com.smartisanos.launcher:reload` 启动并结束旧主进程；这不是原版 `J.onResume()` 主题动画链。源码审计确认 `beginThemeReload()` 唯一调用点是 `applyTransparentThemeSetting()`。
- 根因：`applyTheme()` 对任何非透明主题先读取 `launcher_grid_theme`。当该透明覆盖状态仍为 `1` 时，旧分支把用户选择的普通主题错误改写为“关闭透明主题”，直接调用 `applyTransparentThemeSetting(false, true)`，因而触发黑色冷重载 Loading。
- 修复：非 `smartisan_theme_trans` 的选择现在无条件清除透明覆盖、壁纸模糊运行状态并继续原版 `ChangeThemeHandler` / `ThemeItemActivity` 等价的 100ms 返回 HOME 时序；不再因为旧覆盖状态调用 `beginThemeReload()`。透明主题的显式开启入口保持原有冷重载范围，未改宫格、图标大小、动态天气/日历、数据库或 `J` 的原版桌面动画。
- 验证状态：`build.bat` 已成功完成，最终 `build/launcher-signed.apk` 于 14:04 生成；`apksigner verify --verbose --print-certs` 确认 v1/v2/v3 签名有效。当前 ADB 无连接设备，尚未声称真机普通主题/毛玻璃主题切换、透明→普通切换的逐帧结果；需确认普通主题全程没有 `ReloadTransitionActivity`/黑色 Loading，且没有主题页闪回、壁纸闪回或新增 Java/native 崩溃。

#### 普通主题切换回归原版主题动画时序（核心实现完成，基本验证待完成；最终回归待完成）

- 原版证据：`clean_launcher/.../ThemeItemActivity` 成功执行 `X.ja()`、`RequireChangeFrom.SETTING`、`O.a()` 和 `ja.l(false)` 后，调用其 `Q` Handler 的 `sendEmptyMessageDelayed(1, 100ms)`；Handler 在约 100ms 后截取过渡画面、finish 当前主题详情 Activity 并启动 HOME。原版没有在此路径创建全屏黑色 `loading_progress` 或 `SmartisanProgressDialog`。
- 修复：maintained `ThemeChooserActivity` 的主题详情虽然不是独立 `ThemeItemActivity`，但普通/毛玻璃主题提交后现保持同一原版 100ms 时序：继续停留当前详情页，随后提交过渡截图并无动画返回 Launcher。此前新增的黑色 Decor Loading 遮罩和其生命周期转发已全部移除；透明主题、阶段 4 冷重载、宫格、图标大小、动态天气/日历、角标和主题数据库均未改。
- 桌面动画：返回 Launcher 后仍由原版 `J.onResume()` 读取已有的 `ChangeThemeHandler.RequireChangeFrom.SETTING` / `a.r.sj` 并执行 `J.a(theme, theme_changing)` 的主题切换事件；maintained 宿主不直接调用 `a.r.a(Message)` 或 `a.r.b(Message)`，也没有重新实现主题动画。
- 验证状态：`build.bat` 已成功完成 maintained 资源构建、apktool 回编译、Java 宿主编译、dex 合并、zipalign 和签名；最终 `build/launcher-signed.apk` 的 v1/v2/v3 签名均有效，版本保持 `v1.5.4 (29)`。当前无连接 ADB 设备，未声称逐帧、普通主题/毛玻璃主题来回切换、返回主题页、锁屏后切换或新主题下载完成后的真机结果；必须确认点击设定后不再出现全屏黑色 Loading、当前主题页短暂保留、随后直接进入原版桌面主题动画。

#### 角标提醒与横扫清除角标的通知使用权流程（核心实现完成，基本验证待完成；最终回归待完成）

- 语义确认：原版键 `launcher_hide_badge=true` 的真实含义是“隐藏角标”，所以“角标提醒”UI 采用 `checked = !launcher_hide_badge`；开启写入 `false`，关闭写入 `true`。横扫功能继续使用独立正向键 `launcher_badge_swipe_clean`，两个功能没有互相自动开启或关闭。
- 授权流程：两个关闭状态的开关准备开启时先调用既有 `BadgeBridge.hasNotificationAccess()`；未授权不修改 UI 或持久化设置，而是复用设置页锤子风格确认弹窗，用户确认后由既有 `BadgeBridge.openNotificationAccessSettings()` 打开 `ACTION_NOTIFICATION_LISTENER_SETTINGS`。没有新增通知权限、`POST_NOTIFICATIONS`、`requestPermissions()` 或第二套通知服务。
- 返回与撤销：pending 目标仅以 `badge_reminder` / `badge_swipe_clean` 写入 `launcher_settings`，可跨设置 Activity 重建恢复。`ThemeChooserActivity.onResume()` 回读真实通知监听授权：授权后只持久化并开启本次目标；未授权返回则保持关闭；每次进入强迫症页面或 settings resume 检测到授权被撤销时，将两个依赖键修正为关闭。开启角标提醒后复用 `BadgeBridge.replay()`，横扫开关不会清空现有角标；全程未调用阶段 4 冷重载、`N.d()`、`F.i()` 或数据库迁移。
- 文案与日志：`obsession_hide_badge` 资源 ID 保持不变，中文文案改为“角标提醒”，未使用的 Native fallback 同步该显示名。新增请求、已授权、弹窗、跳转、返回授予/拒绝、撤销、重复拦截、开关落盘及 replay 日志，不包含通知正文或标题。
- 验证状态：`build.bat` 成功；最终 APK 的 v1/v2/v3 签名均有效，`aapt2 dump xmltree` 确认 `SmartisanBadgeListenerService` 和 `android.permission.BIND_NOTIFICATION_LISTENER_SERVICE` 仍在最终二进制 Manifest。当前 ADB 无连接设备，系统设置跳转、授权后自动开启、取消/拒绝、撤销同步、角标 replay、快速重复点击和 Activity 重建均待用户真机验证，不能标记为全部完成。

#### 动态天气/日历联合开关定位授权前置（核心实现完成，基本验证待完成；最终回归待完成）

- 根因：`setting_dynamic_weather` 的联合开关此前直接写入 `launcher_dynamic_weather_calendar_enabled=true` 并立即请求 `ACTIVE_ICON_SETTINGS_CHANGE` 冷重载；虽然最终 APK 已声明 `ACCESS_COARSE_LOCATION`，该入口没有调用运行时 `requestPermissions()`，因此新 Launcher 启动后天气定位仍无授权。
- 修复：保留 WeatherBridge 已验证的粗略定位策略，不申请精确或后台定位。首次关闭→开启先由 `ThemeChooserActivity` 请求 `ACCESS_COARSE_LOCATION`；授权回调才执行主 `launcher_settings` 的同步 `commit()`、回读确认和 `LauncherColdReloadCoordinator.beginActiveIconReload()`。拒绝时开关保持关闭、不写入 `true`、不生成 token、不发送旧进程 `update_icon`；永久拒绝复用现有锤子风格确认弹窗，引导至系统应用详情设置。关闭不请求权限，直接持久化后进入同一冷重载。
- 回调与并发：设置 Activity 新增最小 `onRequestPermissionsResult()` 转发；静态 pending 标记会拦截授权弹窗未返回时的重复点击。日志覆盖 `DYNAMIC_ICON_ENABLE_REQUEST`、`DYNAMIC_ICON_PERMISSION_REQUESTED`、`DYNAMIC_ICON_PERMISSION_RESULT`、`DYNAMIC_ICON_CONFIG_COMMITTED`、`DYNAMIC_ICON_RELOAD_REQUESTED` 与永久拒绝分支，且不记录坐标。
- 验证状态：代码级检查确认权限使用点与 `WeatherBridge` 均为 `ACCESS_COARSE_LOCATION`；`build.bat` 已成功，`apksigner verify --verbose` 通过 v1/v2/v3，`aapt2 dump xmltree` 确认最终二进制 Manifest 包含粗略定位权限。当前 ADB 无连接设备，系统授权弹窗、拒绝/永久拒绝、授权后冷重载、关闭开关及连续操作仍待真机验证，不能标记为全部完成。

#### 动态天气/日历联合冷重载与过渡页竖屏统一（核心实现完成，基本验证待设备恢复；最终回归待完成）

- 当前代码与原版定位：设置页 `setting_dynamic_weather` 只绑定 `launcher_dynamic_weather_calendar_enabled`；旧路径在写入后调用 `refreshDynamicIconMode()`，向仍存活的旧 Launcher 发送原版 `com.smartisanos.launcher.update_icon`。原版 `LauncherReceiver` 确实消费该广播，但它不是当前冷重载的可靠窗口交接路径。
- 修复：写入后先从权威 prefs 回读确认值，再调用 `LauncherColdReloadCoordinator.beginActiveIconReload(oldEnabled, newEnabled)`。该方法只复用既有 `ReloadTransitionActivity`、原版 `loading_progress`、`reloadToken`、旧 PID 精确终止、新 Launcher token 启动和稳定的 `FIRST_FRAME_READY` 握手；原因固定为 `ACTIVE_ICON_SETTINGS_CHANGE`。未改首帧协议、SMEngine、数据库、`N.d()`、`F.i()`、主题队列或 ActiveIcon 业务实现。无法启动过渡页时保留已落盘设置并提示手动重试，不回退为旧进程 `update_icon`。
- 方向：`Launcher` 的最终 Manifest 已是 `screenOrientation=1`，即桌面不支持横屏。此前 `ReloadTransitionActivity` 缺少方向属性，系统可以按触发瞬间 display configuration 创建横屏 cover。现文本 Manifest 和二进制 AXML 注入脚本均声明 `screenOrientation=portrait`；`ReloadTransitionActivity.onCreate()` 在 Window/content/Loading 创建前调用 `setRequestedOrientation(SCREEN_ORIENTATION_PORTRAIT)` 作为 ROM 兜底。没有使用 `locked`、`sensor`、`behind` 或 `configChanges` 规避方向重建。
- 验证：`build.bat` 成功；`apksigner verify --verbose` 确认 v1/v2/v3 签名有效；`aapt2 dump xmltree` 确认最终 APK 的 `ReloadTransitionActivity` 为 `screenOrientation=1 (portrait)`。ADB 在覆盖安装前显示无连接设备，故本轮没有声称设备安装、动态开关、横放或逐帧验证通过。用户提供的 `build/launcher_log.txt` 已被回退删除，无法用不存在的日志判定之前“桌面重新载入失败”的具体栈；本轮刻意未恢复此前扩大有效桌面帧握手的改动。
- 最终回归待完成：真机执行天气/日历关闭↔开启、连续十次、12/20 宫格、图标大小和横放/自动旋转/横屏应用返回，确认 `ACTIVE_ICON_SETTINGS_CHANGE -> TRANSITION_FIRST_FRAME -> OLD_MAIN_PROCESS_EXIT_CONFIRMED -> NEW_LAUNCHER_STARTED -> FIRST_FRAME_READY -> TRANSITION_FINISHED`，全程竖屏且无失败提示、壁纸、黑白帧或第二套 Loading。

### 2026-07-15

#### 图标大小变更复用冷重载过渡（核心修复完成，基本验证完成；最终回归待完成）

- 原链路与根因：`MaintainedLauncherSettingsHost.showIconSizeDialog()` 的确认按钮写入 `launcher_icon_size` 后调用 `restartLauncherForIconSizeChange()`。旧实现先显示设置页内的 Loading，再通过 requestCode `1002` 安排 `AlarmManager` 350ms HOME、结束设置任务并直接 `killProcess(Process.myPid())`；旧 Launcher 消失到延迟 HOME 的新首帧之间没有不透明窗口，因此会闪回系统壁纸。
- 配置：权威读取顺序仍是 `launcher_settings` → `com.smartisanos.launcher_prefs` → 系统 Settings fallback。现在先对 `launcher_settings` 执行同步 `commit()`，失败不请求重载；成功后再镜像私有 prefs 和系统兼容值。没有修改配置 key、数据库、图标映射、在线图标缓存或用户自定义图标。
- 重载：新增 `LauncherColdReloadCoordinator.beginIconSizeReload()`，原因固定为 `ICON_SIZE_CHANGE`。它复用 `ReloadTransitionActivity`、`ReloadProtocol`、`reloadToken`、旧主 PID 精确终止、原版 `loading_progress`、首个原版 LoadingUI 抑制、`FIRST_FRAME_READY` 和失败/手动重试；没有新建 Activity、遮罩、Loading 或重启工具。`ReloadTransitionActivity` 首帧后才调用旧 PID 结束，确认 PID 已退出后才启动携带 token 的新 Launcher；过渡页只在真实 GL 首帧 token 匹配后无动画关闭。
- 新进程：`Constants.applyLauncherIconSize()` 继续按原有 `LauncherSettingBridge.readIconSizePercent()` 读取值并在 `initPoints()` 前应用尺寸；本轮只在该真实读取点增加 `ICON_SIZE_CONFIG_READ` 诊断，没有局部重建 PageView/Cell 或清除不相关缓存。
- 日志：图标大小链路现在记录 `ICON_SIZE_CHANGE_REQUESTED`、旧/新值、`ICON_SIZE_PERSISTED`、`RELOAD_TRANSITION_REQUESTED`、`TRANSITION_FIRST_FRAME`、`OLD_LAUNCHER_PID_TERMINATED`、`NEW_LAUNCHER_STARTED`、`ICON_SIZE_CONFIG_READ`、`FIRST_FRAME_READY` 和 `TRANSITION_FINISHED`。图标大小重载日志附带 token、oldPid、newPid、oldSize、newSize 和 reason；同值确认只记录 `ICON_SIZE_UNCHANGED_SKIP`，不生成 token、不结束进程。
- 基本验证：完整构建、v1/v2/v3 签名与 `emulator-5556` 覆盖安装通过。真实 UI 操作完成 100%→150% 与 150%→50%：日志确认 `TRANSITION_FIRST_FRAME -> OLD_LAUNCHER_PID_TERMINATED -> ICON_SIZE_CONFIG_READ -> FIRST_FRAME_READY -> TRANSITION_FINISHED`；同值 50%→50% 仅记录 skip，PID 保持不变。日志未见新 `FATAL EXCEPTION`、native fatal、`VerifyError` 或 `NoSuchMethodError`。
- 最终回归待完成：当前仅完成模拟器基本链路验证，不能把静态截图当作实体机逐帧验收。仍需真机录制小→中、中→大、大→小和连续十次，覆盖 12/20 宫格、文件夹、动态天气/日历、在线/自定义图标、锁屏解锁、重启保持及不同 ROM；逐帧确认无壁纸、状态栏/底栏、黑白帧、第二套 Loading、旧尺寸闪现或布局异常。

#### Dock 板块页码圆点等比缩放修复（核心修复完成，基本验证完成；最终回归待完成）

- 实现定位：Dock 页码不是 Android `Canvas`/`Drawable` 控件。`com.smartisanos.launcher.view.V` 从 `LayoutProperty.dot_width/dot_height` 构造 `com.smartisanos.launcher.view.Z`；`Z` 用这两个值创建 SMEngine 网格并缩放原版 `assets/Textures/1080p/dot_fix.png`、`dot_mask.png`、`dot_move.png`。12 宫格和 20 宫格均复用此链路。
- 根因：当前项目新增的 `LayoutPropertyAdapter.factorFor()` 先按字段名分支，导致 `dot_width` 走 `scaleX`、`dot_height` 走 `scaleY`。在已采集的 1080×2400 / 420dpi 设备上，运行日志证实 `scaleX=1.0`、`scaleY=1.25`；同一圆点的目标尺寸因此为宽×1.0、高×1.25，形成纵向椭圆。原版 `clean_launcher_raw` 不存在该兼容适配层。
- 修复：仅将 `dot_width` 和 `dot_height` 提前视为一个固定比例单元，统一返回既有 `scale=min(1, scaleX, scaleY)`。该设备上修复前布局比例为 1.0:1.25，修复后为 1.0:1.0；未改 `view.V`、`view.Z`、纹理、点数、点距、横向居中、纵向位置、Dock 高度或翻页状态。
- 资源检查：`point_normal/point_selected` 不是此指示器，未使用或修改。实际三张 SMEngine 纹理画布仍为 24×24；本轮没有重新绘制、替换或缩放其资源。
- 基本验证：`build.bat` 成功；`apksigner verify --verbose` 确认 v1/v2/v3 为 true；`emulator-5556` 覆盖安装并强制冷启动成功，日志无 Launcher `FATAL EXCEPTION`、native fatal 或 linkage 错误。
- 最终回归待完成：当前模拟器只有一个板块，原始 `screencap` 未出现可测的多页页码，不能伪造截图像素宽高。须在至少 2/5 页、12/20 宫格及另一种 density 真机原始截图中实测选中和未选中圆点宽高，并覆盖左右翻页、Launcher/设备重启与显示大小变化。

#### 宫格冷重载唯一可见 LoadingUI（核心实现完成，基本验证完成；最终回归待完成）

- 结构调整：`ReloadTransitionActivity` 不再反射构造或显示 `SmartisanProgressDialog`。它的完全不透明 content root 直接承载 `ProgressBar`，继续引用原版 `loading_progress` 资源，并逐项保留原版 `SmartisanProgressDialog.onCreate()` 的居中高度（屏宽×3/4/5）、横向 gravity、圆角、padding、spinner 尺寸、文字字号和左 margin；因此没有新增或重画加载动画，也没有新的 Dialog window/inset 坐标系。
- 重复 Loading 抑制：新 Launcher 捕获 `reloadToken` 时记录一次性 suppression token；原版 `widget.c.q()` 只在该 tokenized 冷启动的第一次调用返回而不创建 Dialog，`widget.c.show()` 同时安全处理无 Dialog。普通启动和后续原版 LoadingUI 不受影响。结果是宫格冷重载不再出现“过渡 Dialog 消失 → Launcher 初始化 Dialog 再出现”的两套可见链路。
- 系统栏：过渡 Activity 在 `onCreate()`、首个 content layout 与重新获得窗口焦点时都应用纯黑、`FULLSCREEN`、`HIDE_NAVIGATION`、布局扩展和 `IMMERSIVE_STICKY`；其根视图也是纯黑且不透明。Launcher starting window 沿用既有全屏启动主题；本轮未修改二进制 Manifest。
- 基本验证：完整构建、v1/v2/v3 签名、`emulator-5556` 覆盖安装和强制冷启动通过（`TotalTime=1850ms`），日志无 Java/native/linkage 崩溃。
- 最终回归待完成：在实体机以 60fps 逐帧确认确认弹窗后只保留 `ReloadTransitionActivity` 的同一 Loading，未显示第二个“正在初始化”、无状态栏/底部栏、无 LoadingY轴跳动、无壁纸/黑白帧，并连续 12→20→12 至少 10 次验证任务/进程修复不回归。

#### 宫格冷重载 LoadingUI 无窗口位移收口（核心修复完成，基本验证完成；最终回归待完成）

- 根因收敛：项目资源中未检出自定义 `slide`、`translate` 或 `windowAnimationStyle`。此前逐帧中的整体上下位移是多项窗口级因素共同造成：系统默认 Activity/task enter/exit 动画、过渡页在窗口获得焦点后才再次修改 system-ui 所引发的 inset/居中根布局重算，以及旧版独立 `SmartisanProgressDialog` window 与 Launcher 初始化 window 的不同坐标系。它不是 `loading_progress` 自身动画，也不应由固定延迟掩盖。
- 修复：`ReloadTransitionActivity` 和新 Launcher 的启动 Intent 均增加 `FLAG_ACTIVITY_NO_ANIMATION`；启动和结束 Activity 均立即调用 `overridePendingTransition(0, 0)`。过渡页在 `setContentView()` 前即禁用 window animation，并在同一时机完成纯黑背景、全屏、状态栏/导航栏隐藏、沉浸布局、显示缺口策略（Android 9+）和 `decorFitsSystemWindows=false`（Android 11+）。移除 `onWindowFocusChanged()` 中的二次 system-ui 写入，避免 Loading 已可见后因 inset 变化重居中。
- Loading 继续直接挂载在过渡页的 full-screen content root；冷重载场景没有 `SmartisanProgressDialog` 独立 Dialog window，只有原版 `loading_progress` spinner 自身动画。新 Launcher 的 tokenized 初始化 Loading 仍只抑制一次。Launcher starting window 继续使用既有黑色全屏启动主题，未修改二进制 Manifest、数据库结构、原版 `F.i()` 或 token/首帧协议。
- 基本验证：完整构建、v1/v2/v3 签名、`emulator-5556` 覆盖安装和强制冷启动通过（`TotalTime=2233ms`），未发现新增 Java/native/linkage 崩溃。
- 最终回归待完成：必须在反馈设备录制 60fps 以上 12→20→12，逐帧确认第一次出现后的 Loading Y 坐标不变、无 Activity/task 滑入滑出、无状态栏/导航栏、无第二套初始化 Loading、无壁纸/黑白帧；并完成连续 10 次、手势/三键导航和多 ROM 回归。当前环境不能据模拟器冷启动替代该视觉验收。

#### 宫格连续切换闪退根因：任务归属错误与旧进程记录竞争（核心修复完成，基本验证完成；最终回归待完成）

- 根因证据（`build/launcher_log.txt`）：最新三次 token 均记录 `TRANSITION_FIRST_FRAME -> OLD_MAIN_PROCESS_KILL_REQUESTED -> NEW_LAUNCHER_STARTED`，但没有 `FIRST_FRAME_TOKEN_MATCHED`。WindowManager 将 `ReloadTransitionActivity` 放入 task `3405`，其 affinity 为 `smartisanos.task.launcher`，而非 Manifest 声明的 `com.smartisanos.launcher.reload`；随后出现 `clear-task-all`、`wm_finish_activity Launcher,2nd-crash`。同一序列还出现 `ProcessRecord ... is attached to a previous process` 和 `Already have existing proc`，说明新 Launcher 启动早于旧精确终止 PID 完成 ActivityManager 脱离。
- 修复：启动 `ReloadTransitionActivity` 时无条件使用 `FLAG_ACTIVITY_NEW_TASK`，使声明的独立 `:reload` affinity 真正生效。旧主 PID 发出 kill 后不立即猜测性启动新 Launcher，而是在每个 Choreographer 帧检查 `ActivityManager`，仅在旧 PID 已不再存在时发送 HOME Launcher Intent；等待是进程状态条件，不是固定成功延迟。失败/销毁会取消未完成的启动等待。
- 原版与边界：保留 `N.d() -> F.i()`、旧主 PID 精确终止、原版 `widget.c` LoadingUI、`reloadToken` 和 `FIRST_FRAME_READY`；未改数据库、二进制 Manifest 或主题/宫格业务状态，未加入 Alarm、`recreate()` 或固定成功延迟。
- 基本验证：完整构建、v1/v2/v3 签名、`emulator-5556` 覆盖安装和冷启动通过（`TotalTime=1732ms`），无新增 Java/native/linkage 崩溃。
- 最终回归待完成：在该 Oplus 真机连续 12→20→12 至少 10 次，确认每次都有 `OLD_MAIN_PROCESS_EXIT_CONFIRMED -> NEW_LAUNCHER_STARTED -> NEW_LAUNCHER_FIRST_FRAME -> FIRST_FRAME_TOKEN_MATCHED`，且无 `clear-task-all`、`2nd-crash`、旧 ProcessRecord 竞争、壁纸/黑白帧或 LoadingUI 位移；继续覆盖复杂宫格、异常/超时和多 ROM。

#### 宫格冷重载 LoadingUI 逐帧收口（核心修复完成，基本验证完成；最终回归待完成）

- 逐帧素材：`5a5d2c36dd3696dedcee1095c9b11293.mp4`，720×1600、44.74fps、2.72 秒。帧序列确认“正在加载桌面...”和“正在初始化”使用同一原版转圈资源，却先后落在带 status/navigation inset 的过渡窗口与新 Launcher 初始化窗口；过渡页灰黑背景还透出为非纯黑。问题不是重新绘制的动画资源，也不是 `FIRST_FRAME_READY` 成功延迟。
- 修复：新增最小 `LoadingUiWindowCompat`，仅为原版 `widget.c` 展示后的 `SmartisanProgressDialog` 和 `ReloadTransitionActivity` 设置同一纯黑背景、`FULLSCREEN`、`HIDE_NAVIGATION`、布局扩展与 `IMMERSIVE_STICKY`。过渡页首帧即使用该策略，原版 LoadingUI 展示后再应用同一策略；不重绘 `loading_progress`、不手工计算加载控件坐标、不中断原版 `widget.c` 生命周期。
- 结果目标：设置确认后立即为纯黑且没有系统状态栏/底部虚拟键；“正在加载桌面...”结束后，新 Launcher 的“正在初始化”继续使用同一原版控件、同一全屏坐标系，不再上下位移或出现不同底色。
- 基本验证：完整构建、v1/v2/v3 签名、`emulator-5556` 覆盖安装和强制冷启动通过（`TotalTime=1107ms`）；日志无 `FATAL EXCEPTION`、native fatal、`VerifyError` 或 `NoSuchMethodError`。
- 最终回归待完成：在录屏实体机连续执行 12→20→12，逐帧确认首帧即无状态栏/导航栏、两个 Loading 文案位置一致、无系统壁纸/黑白闪帧；同时覆盖手势导航、三键导航与其他 ROM。

#### 宫格连续切换：过渡任务栈与底部导航栏修复（核心修复完成，基本验证完成；最终回归待完成）

- 真机 `build/launcher_log.txt` 未出现 Launcher `FATAL EXCEPTION` 或 native fatal signal；其中旧 `com.smartisanos.launcher` PID 死亡是过渡页首帧后按设计精确结束旧主进程。异常窗口序列显示：新 Launcher 启动后 `ReloadTransitionActivity` 被 `recent-task-trimmed`/`clear-task-all` 提前销毁，未能继续等待 `FIRST_FRAME_READY`，从而可能暴露系统壁纸并让连续切换表现为闪退。
- 修复：`LauncherColdReloadCoordinator` 启动单实例 Launcher 时仅保留 `FLAG_ACTIVITY_NEW_TASK`，删除会跨 ROM 裁剪仍在等待的 `:reload` 任务的 `FLAG_ACTIVITY_CLEAR_TASK`。不改数据库迁移、token 协议、旧 PID 精确终止时机或失败手动重试。
- 视觉衔接：`ReloadTransitionActivity` 调用已有 `MaintainedLauncherSettingsHost.applyLauncherNavigationBarSetting()`，LoadingUI 仍复用原版 `widget.c -> SmartisanProgressDialog`；在原版 Dialog 展示后只把 Launcher 已计算的 system-ui flags、透明状态栏/导航栏同步给 Dialog window，不新绘制加载动画。这样“隐藏桌面虚拟键”开启时，过渡页与原版 LoadingUI 不再由 ROM 补出不同颜色的底部条。
- 基本验证：完整 APK 构建通过；`apksigner verify --verbose` 确认 v1/v2/v3 有效；二进制 Manifest 仍确认 `ReloadTransitionActivity` 为私有 `:reload`、`excludeFromRecents`、独立 affinity；覆盖安装到 `emulator-5556` 后冷启动 `TotalTime=1417ms`，无新增 Launcher Java/native 崩溃。
- 最终回归待完成：在提供日志的实体机连续执行 12→20→12 至少 10 次，录屏逐帧检查 `:reload`/新 Launcher 交接期间无系统壁纸、黑帧、白帧、底部导航栏残留或 LoadingUI 位移；并覆盖复杂宫格数据、失败/超时重试和其他 ROM。

#### 任务合并和状态 + 建议 Commit 顺序（核心实现完成，基本验证完成；最终回归待完成）

- 冷重载过渡页补齐显式 `WAITING_FIRST_FRAME`、`COMPLETED`、`FAILED` 状态：首帧 token 只接受一次；等待超时只显示失败；手动重试重新挂载失败超时并再次等待新 Launcher 真实首帧，避免旧实现重试后无期限停留在过渡页。未改变旧主 PID 精确终止时机，未手工清理正常 cached 的 `:reload` 进程。
- 图标下载、图标包预热、天气和分身已有 pending/单飞状态继续复用；本阶段没有新建全局 Manager、第二套数据库或全局重试队列。
- 建议 Commit 顺序按专项计划审阅；当前工作区包含用户既有改动、跨阶段源码与构建产物，本轮未执行 git add、commit、reset 或清理，待最终回归后按阶段边界拆分。
- 基本验证：完整 APK 构建、v1/v2/v3 签名、`emulator-5556` 覆盖安装和 HOME 启动通过；无新增 Launcher Java `FATAL EXCEPTION` 或 native fatal。冷重载失败重试的实体机中断、超时恢复与连续压力仍待最终验证。

#### 固定延迟审计（核心审计完成，基本验证完成；最终回归待完成）

- 删除的竞态补偿：透明壁纸运行时原先同步 `Eb.lh()` 后又在 160ms 重复刷新；角标可见性在同步节点更新后又在 180ms 重刷；主题运行时 120/360ms 重复初始化/刷新；手动城市写入后 1800ms 再次安排天气刷新。它们均有同一调用中的原版配置、场景或天气调度入口，重复时间不能证明完成。
- 保留分类：`ReloadTransitionActivity` 的 10 秒仅进入失败提示和手动重试，绝不当作首帧成功；安装的 300ms 仅在 `PackageManager` 暂未暴露 Launcher Activity 时最多两次；主题/更新下载 800–1500ms 是 `DownloadManager` 状态轮询；在线图标 2 秒是磁盘写入的安静窗口合并；天气 TTL、Loading 120ms 帧、键盘/预览 UI 延迟均为功能性调度。旧的 Alarm 重启 helper 不在当前阶段链路中，未重新接入。
- 基本验证：完整 APK 构建完成，`apksigner verify --verbose` 确认 v1/v2/v3 有效，已覆盖安装到 `emulator-5556` 并启动 HOME；日志未发现 Launcher 新增 Java `FATAL EXCEPTION` 或 native fatal。透明壁纸、角标、普通主题和手动城市的实体机交互时序仍待最终逐帧/多 ROM 回归。

#### 启动专项阶段 10（核心实现完成，基本验证完成；最终回归待完成）：原版安装卸载事件与分身按需刷新

- 根因：普通安装完成路径会立刻、800ms、2500ms 三次调用原版新增入口；卸载路径只清理下载占位项，没有进入原版 `Aa.D()` 的数据库删除事件。分身恢复/更新保留 350/450/900/2200/2000/8000ms 的多次全量数据库刷新，并且部分图标刷新入口即使没有用户启用分身也会枚举 `LauncherApps.getProfiles()`。
- 当前修复：安装只在 `PackageManager` 已能查询 Launcher Activity 后调用一次原版 `Aa.c(context, package)`；信息暂未可用时最多重试两次，成功立即停止。卸载保留下载占位清理后调用原版 `Aa.D(package)`，并删除该包在线改进图标的内存、文件和 miss 缓存。分身 bootstrap/图标更新先检查本地已启用记录；原版 `EVENT_USER_PACKAGE_ADDED/CHANGED/REMOVED` 之后只请求一次 render，不再以延迟全量 `EVENT_REFRESH` 补偿。
- 原版复用：普通应用继续由 `Aa.c` / `Aa.D` 转换为原版 `DatabaseUpdater` 事件；分身继续使用原版 `EVENT_USER_PACKAGE_*`，没有新建桌面数据库或 profile 模型。
- 基本验证：完整 APK 构建完成，`apksigner verify --verbose` 确认 v1/v2/v3 有效，已覆盖安装到 `emulator-5556` 并启动 HOME；日志未发现 Launcher 新增 Java `FATAL EXCEPTION` 或 native fatal。尚未执行真实 APK 安装、卸载、替换、工作资料/应用分身和角标联动回归，以上保留到最终验证。

#### 启动专项阶段 9（核心实现完成，基本验证完成；最终回归待完成）：图标加载按需初始化与受影响包更新

- 根因：首帧后的统一延后任务无条件调用所选图标包预热；`shouldUseManagedIcon()` 这个应当只读模式元数据的判定也会触发预热。即使所有图标覆盖关闭，旧的一次性 `maybeRefreshLauncherIcons()` 仍可能扫描已安装图标包和解析 `appfilter`。图标包解析完成、在线 PNG 写入缓存和设置资源预热还会发出 `EVENT_REFRESH`，造成与本次图标无关的全量数据库刷新。
- 当前修复：图标包仅在持久化选择已启用时才在首帧后异步预热，普通模式不初始化图标包系统；`shouldUseManagedIcon()` 保持纯元数据快速判断。图标包完成解析后从已加载 `appfilter` 映射提取包名，合并为一次原版 `update_icon` 和一次 render。在线图标缓存写入继续保留 2 秒安静窗口合并，但只更新本批下载完成的包名；设置资源预热不再触发数据库刷新。
- 原版复用：受影响图标仍通过原版 `com.smartisanos.launcher.update_icon -> LauncherReceiver -> Aa.c/Aa.r` 更新，未新增第二套桌面模型或数据库；首帧无覆盖时继续走 `PackageManager.getApplicationIcon()` 原版快速路径。
- 基本验证：完整 APK 构建完成，`apksigner verify --verbose` 确认 v1/v2/v3 有效，已覆盖安装到 `emulator-5556` 并启动 HOME；日志未发现 Launcher 新增 Java `FATAL EXCEPTION` 或 native fatal。尚未执行真实图标包解析、在线下载、单应用覆盖与动态天气/日历混合回归，以上保留到最终验证。

#### 启动专项阶段 5（核心实现完成，基本验证完成；最终回归待完成）：透明主题复用统一冷重载

- 透明主题开启和关闭不再调用旧的 `restartLauncherForColdSceneChange()`，该旧路径会显示独立 Loading、安排 Alarm 并直接结束当前主进程，不符合统一过渡链路。
- 新入口先确认 `com.smartisanos.launcher.theme.trans` 已安装；开启时保存 `transparent_previous_theme`，再 commit `launcher_grid_theme=1`；关闭时先读取并恢复该普通主题、清除透明壁纸模糊配置，再 commit `launcher_grid_theme=0`。`smartisan_theme_trans` 不写入普通 `launcher_theme`，也不进入普通主题消息队列。
- commit 成功后仅调用 `LauncherColdReloadCoordinator.beginThemeReload()`；协调器只传递透明/普通主题语义给 `ReloadTransitionActivity`，不调用 `N.d()`、`F.i()`，不携带宫格迁移状态。新 Launcher 继续从 `LauncherSettingBridge.readTransparentMode()` 读取配置，由现有 `Constants`、`O`、`Eb` 和原版主题资源完成冷启动初始化。
- 基本验证：Java helper 已通过 Android API 36 classpath 编译；完整 APK 已构建，v1/v2/v3 签名验证通过，并已覆盖安装到 `emulator-5556`。HOME 启动回到 Launcher，日志未见新增 Java/native 崩溃。透明开启/关闭交互、资源呈现和 token 链路仍待本阶段继续验证；最终逐帧、多 ROM、压力与异常回归继续集中处理。

#### 启动专项阶段 6（核心实现完成，基本验证完成；最终回归待完成）：普通主题原版消息链收敛

- 原版对照：`a.r` 先由 `X.ja(package:id)` 写入当前主题，再将 `ChangeThemeHandler` 来源设为 `SETTING`、写入原版 `O` 配置；返回 Launcher 后消费一条原版 `MESSAGE_CHANGE_THEME` 完成场景更新。
- 当前修复：普通主题入口不再在原版持久化成功后重复 `storeThemeSelection()`，也不再使用 120 ms 固定延迟补发截图/返回桌面。现在先同步提交一次原版过渡截图并返回 Launcher；只有 `X.ja()` 明确失败时才写入一条 `a.r.sj` fallback pending message。
- 边界：未使用冷重载作为普通主题刷新，不触碰阶段 3 宫格迁移或阶段 4 冷重载协调器；未新增 Alarm、killProcess、Activity.recreate 或 PageView/EGL/SMEngine 局部重建。
- 基本验证：完整 APK 构建、v1/v2/v3 签名、`emulator-5556` 覆盖安装和 HOME 启动均通过，未出现新增 Java/native 崩溃；普通主题 A→B、透明↔普通交替及真实主题资源呈现仍待最终回归。

#### 启动专项阶段 7（核心实现完成，基本验证完成；最终回归待完成）：动态天气和日历原版场景更新

- 原版协议：`LauncherReceiver` 将 `com.smartisanos.launcher.update_icon` 转交 `Aa.c(Intent)`；该方法解析 `extra_packagename`，并进入原版 `Aa.r(String[])` 数据库/Cell 更新链。
- 根因：动态开关原先虽然调用该协议，却先扫描全部 Launcher Activity，再固定等待 600 ms 后调用冷重启，导致不必要的全量查询、进程重生和壁纸过渡。
- 当前修复：直接从原版 `activeicon.H/m.PACKAGE_NAME` 取得天气/日历包名（反射不可用时使用原版默认包名），一次发送 `update_icon`。不扫描全部应用、不调用 `reloadOriginalSettings()`、不重启、不手工操作 ActiveIcon/Cell/Eb 节点。
- 基本验证：完整 APK 构建、v1/v2/v3 签名及 `emulator-5556` 覆盖安装通过；在运行中的 Launcher 上发送包含两个原版包名的 `update_icon` 广播，接收完成且未出现 Java/native 崩溃。天气应用实际数据、日历跨日和开关 UI 回归仍待最终验证。

#### 启动专项阶段 8（核心实现完成，基本验证完成；最终回归待完成）：壁纸单次原版刷新

- 原版调查：`Eb.lh()` 的日志和实现明确为 `TransWallpaper changeWallpaper`，会释放旧透明壁纸节点并建立新的原版壁纸节点；`Eb.Vh()` 则开始 PageView 加载，不能作为壁纸热刷新入口。
- 当前修复：壁纸选择后的复制、解码、高斯图、缩略图、系统壁纸写入和 URI 落盘移入 `LauncherWallpaperSave` 后台线程；主线程只通知原版配置并调用一次 `lh()`，随后一次 render。删除 `Vh/oh/Z` 反射调用以及立即、120ms、420ms 的重复刷新。
- pending 只在 `Eb` 场景暂不可用时保留；运行时刷新成功立即清除。恢复默认壁纸同样移除额外 180ms 补帧。
- 基本验证：完整 APK 构建完成，`apksigner verify --verbose` 确认 v1/v2/v3 有效，已覆盖安装到 `emulator-5556` 并启动 HOME；日志未发现 Launcher 新增 Java `FATAL EXCEPTION` 或 native fatal。尚未在实体机选择真实大图，也未完成透明主题换壁纸、恢复默认壁纸和逐帧壁纸连续性检查，以上保留到最终回归。

#### 启动专项阶段 3 + 阶段 4（进行中）：12/20 宫格迁移与统一重载

- 原版调查：`LauncherPreview` 在原版 Settings 中使用 `content://com.smartisanos.launcher.exportprovider` 配置链；宫格相关检索未找到 `killProcess`、`restartPackage`、`forceStopPackage` 或 Launcher Alarm 重启。原版 Launcher 的 `Launcher.onDestroy()` 只记录日志，`J`/`vc` 可见 EGL 建立和局部节点释放，但未找到按 Activity → EGL → SMEngine → PageView → 静态单例完整、有序且可重入的释放重建链，因此不再尝试同进程 recreate。
- 冷重载协调：新增私有 `:reload` 进程的 `ReloadTransitionActivity`。主进程只在原版数据库迁移完成后生成唯一 token 并启动该 Activity；过渡页完成 OnPreDraw 和下一 Choreographer 帧后，核对旧主 PID，再仅对这个 PID 调用 `Process.killProcess`，随后显式启动新的 Launcher。宫格流程不再写主题 Loading、清理主题 pending 或触碰主题状态。
- 首帧握手：新 Launcher 通过 Intent 接收 token；原版 `vc.onDrawFrame()` 在 `Eb.update()` 后上报 GL 帧，再由 Decor OnPreDraw 和下一 Choreographer 帧发送包内显式 `ACTION_FIRST_FRAME_READY`。过渡页只接受同 token 的信号后结束；10 秒仅显示失败和一次手动重试，不把超时当成功。
- 过渡视觉：过渡窗口使用完全不透明背景，Loading 动画复用原版 `com.smartisanos.launcher.widget.c -> SmartisanProgressDialog -> loading_progress`，未自绘进度图。新 Launcher 使用不透明原有启动主题。
- 最新模拟器验证：12→20 和 20→12 均出现 `TRANSITION_FIRST_FRAME -> OLD_MAIN_PROCESS_KILL_REQUESTED -> NEW_LAUNCHER_FIRST_FRAME -> FIRST_FRAME_TOKEN_MATCHED -> TRANSITION_FINISHED`，token 一致，无 `FATAL EXCEPTION` 或 native fatal signal；截图确认过渡页为原版锤子 LoadingUI，最终宫格正确。`finishAndRemoveTask()` 后 `:reload` 仍可能被 Android 短暂保留为缓存进程，未主动 kill 该进程，因此阶段 4 不完成。

- 原版对照：设置 UI 使用外部 12/20 单元数；原版数据库只接受 `Constants.getPageModeFromMode()` 得到的内部页模式。迁移必须在 `DatabaseHandler.mWorker` 中依次执行 `N.d(context,newPageMode)` 和 `F.i(oldPageMode,newPageMode)`，PageView 不得由设置页手工重排。
- 持久化修复：设置确认后先同步 commit `com.smartisanos.launcher_prefs/prefs_key_launcher_mode=12|20`；commit 失败则停止迁移。成功后才尽力镜像 Settings.Global，因此主存储不再依赖系统写权限。页模式优先反射调用原版 `Constants.getPageModeFromMode()`，只在反射不可用时保留已验证的 12→12、20→9 fallback。
- 设备模式配对：首次同进程刷新捕获到 `Constants.verify(): single page mode is 16, multi page mode error [10]`。根因是 `checkPageModeWithDevice()` 会把基础页适配为设备内部模式，但 Settings.Global 仍残留另一宫格的 multi mode。当前 `O.init()` 在存在私有 12/20 主配置时，按适配后的基础页选择原版合法 multi mode；修复后该异常为 0。
- 数据和视觉验证：12→20 后原 12 个图标、板块和顺序保持不变；最终 20→12 后诊断为 `grid=12`，截图确认 3×4，图标顺序不变。当前测试板块只有 12 项，因此没有构造“超过 12 项”的拆分样本；拆分算法仍完全由原版 `F.i()` 负责。
- 同进程根因：保持当前 Surface 并触发原版 `J.onResume() -> v.run() -> J.Hv()` 时，日志证明配置变化可被识别，complex mode 会在 10/13 间切换；但现有 PageView 仍持有迁移前的 Cell 模型和 native batch 容量。只调用原版 Cell/Page 私有刷新会在 20→12 读取已拆分后的旧 Cell，并在 12→20 写越旧 native 容量，分别触发空引用、数组越界或 GL 事件重入，不能作为最小安全修复。
- 已否决并清理：`Activity.recreate()` 会撞上原版单 Activity 防护和进程级 EGL/SMEngine 全局状态，出现旧 GL 事件访问新场景、黑块或 native SIGSEGV；局部重建 Cell/Page 则实质上需要重写 PageView 模型和 native 批次生命周期。相关实验入口、trace 和 pending 状态均已删除，未把失败方案留在最终源码。
- 当前安全路径：宫格数据库迁移完成后使用独立的进程重生兜底，不再复用会清理主题消息的主题冷切换辅助函数；新旧模式相同时直接跳过。2026-07-15 最终 12→20 回归中，视觉为 4×5、模式日志为 `grid=20`，无新增 Java/native 崩溃，但 PID 从 `17724` 变为 `17942`，所以阶段 3 和阶段 4 均保持进行中。
- 验证：完整构建、v1/v2/v3 签名、ADB 覆盖安装通过；最终新进程首帧为 5530 ms，数据库和视觉迁移正确，日志无 single/multi 校验异常、无 `FATAL EXCEPTION` 或 native fatal signal。

本次未修改数据库结构或原版 `F.i()` 算法，未修改二进制 Manifest，未新增固定延迟。保留既有 grid 重载的 killProcess/Alarm 兜底，因此阶段 3、阶段 4 仍为进行中；阶段 5 及以后没有与该 PageView/EGL 生命周期共用安全修改链，本次未修改。

#### 启动专项阶段 2：天气和角标的恢复开销

- 根因：WeatherBridge 的 Launcher 恢复入口没有自身开关门禁，每次会查询全部 Launcher Activity 并加载 Label，HOME 自动定位缺权限时还会主动弹权限；已安排的小时任务不检查关闭状态。角标恢复每次 resume 都可能回放持久计数并请求监听服务绑定，旧实现还在 1500 ms 后重复 rebind；通知监听 rebuild 会广播所有包，即使计数未变化。
- 原版复用：天气数据仍进入原版 `LauncherReceiver -> DatabaseHandler/DatabaseUpdater -> Cell/PageView -> ActiveIcon/WeatherView/CalendarView`；角标继续向原版接收链广播受影响包的计数，不新增桌面数据库或场景模型。
- 天气修复：WeatherBridge 自身第一层检查动态开关，关闭时不扫描、不加载 Label、不定位、不安排周期任务、不联网；天气组件首次需要时缓存，只在包增删替换变化及 Profile/分身变化时失效。明确包名/组件名走快速判断，只有厂商天气命名空间候选才读取 Label。HOME 恢复不再申请定位权限；小时任务每轮重新检查开关，关闭后停止续约。
- 角标修复：生命周期只保留首帧后的 `applyBadgeIfDirty() -> replayIfDirty()`；角标隐藏、无通知访问权限、服务已同步或持久计数版本未变化时返回。删除 1500 ms 第二次 rebind；监听服务比较新旧计数，只广播变化包，通知消失时仍通过旧记录集合广播 0。
- 验证：完整构建、v1/v2/v3 签名和 ADB 覆盖安装成功。模拟器显式冷启动为 1253 ms；诊断确认动态天气关闭、角标隐藏。连续三次从系统设置返回前后 PID 均为 `7353`，WeatherBridge、天气缓存解析、定位权限请求和 Launcher `FATAL EXCEPTION` 日志均为 0。
- 未验证：通知访问开启且存在活动通知时的角标增量广播、动态天气开启后的组件缓存失效、实体机和多 ROM 功耗仍待真机回归。

本阶段未修改二进制 Manifest、数据库结构和原版 `F.i()`，未新增 killProcess 或 Alarm 重启；删除角标 1500 ms 重复 rebind 固定延迟，保留天气必要的 1 小时 TTL 调度且关闭后不续约。阶段 3 尚未开始。

#### 启动专项阶段 1：Launcher 启动和返回桌面

- 根因：`Launcher.onCreate()` 在原版 `J.b()` 后立即再次写系统栏并执行 `stabilizeLauncherResume()`；该方法同步回放角标、主动 requestLayout/invalidate/requestRender，并在 80/260/1200 ms 重复补帧。`onResume()` 又同步执行导航栏、壁纸、天气扫描和角标回放，`onWindowFocusChanged()` 继续无条件写窗口属性。首帧前兼容工作重复且没有真实完成信号。
- 原版复用：保留 `Launcher.onCreate() -> J.b(Activity)` 和 `Launcher.onResume() -> J.onResume()`；使用原版 `vc.onDrawFrame() -> Eb.update()` 后的真实 GL 帧作为兼容任务边界，不改变 PageView、模型或 SMEngine 初始化。
- 修复：拆分为一次性进程兼容、按状态变化应用导航栏、角标 dirty 回放和首帧后 Loading 完成。启动及每次 resume 只请求一个 GL 帧信号，GL 线程随后把壁纸 pending、角标、动态图标和所选图标包任务合并投递到主线程。动态天气关闭时不进入 WeatherBridge；角标隐藏或持久数据未变化时不 replay。
- 导航栏缓存：记录 Window token、隐藏导航栏开关、目标 system UI visibility 和导航栏颜色；ROM 没有改变实际窗口状态时直接返回，真实状态被 ROM 重置时仍会重新应用。
- 删除延迟：移除普通启动 80/260/1200 ms 三次补帧和重载 Loading 320/760/1600 ms 三次补帧；没有新增固定延迟。Loading 改为真实 GL 帧后再等待一个 Choreographer 帧关闭。
- 验证：完整构建、签名、覆盖安装成功。冷启动原版初始化 159 ms、Surface 564 ms、首个 GL 帧 937 ms、兼容任务 938–941 ms、Model/Page 964 ms；兼容任务确认晚于首帧。连续 5 次热返回为 173–219 ms，PID 前后均为 `6559`，日志无 Launcher 崩溃或定位权限请求。
- 未验证：实体机、多 ROM、通知角标开启状态、动态图标开启状态、真实重载 Loading 和逐帧录像仍待后续专项阶段或真机回归。

本阶段未修改二进制 Manifest、数据库结构和原版 `F.i()`，未新增 killProcess 或 Alarm 重启。阶段 2 后续已完成。

#### 启动专项阶段 0：启动基线和诊断

- 阶段判定：专项计划没有完成标记，代码中也不存在规定的九个诊断标记，`ORIGINAL_BEHAVIOR_REFERENCE.md` 不存在，因此阶段 0 是第一个未完成阶段。本次没有进入阶段 1。
- 原版对照：`Launcher.onCreate()` 保持调用原版 `J.b(Activity)`；`J.handleMessage()` 的 `MESSAGE_COMPLETE` 作为模型完成信号；`vc.onSurfaceChanged()` 作为有效 Surface/场景尺寸信号；`vc.onDrawFrame()` 作为真实 GL 帧信号。
- 修改：新增 `LauncherStartupDiagnostics`，记录 `elapsedRealtime`、启动相对耗时、PID、线程、Activity 实例、宫格、普通主题、透明模式、动态图标、图标包和角标状态。每个标记每次 Activity 启动只输出一次，不逐帧或逐图标记录。默认开启，可通过全局键 `launcher_startup_diagnostics_enabled=0` 关闭；状态读取异常只降级为 `state=unavailable`，不阻断 Launcher。
- 原版链路：新增 `docs/development/ORIGINAL_BEHAVIOR_REFERENCE.md`；实测结果写入 `docs/development/LAUNCHER_STARTUP_BASELINE.md`。
- 首次冷启动（覆盖安装、保留数据）：原版同步初始化 429 ms、当前兼容任务完成 824 ms、Surface 1761 ms、首个 GL 帧 1766 ms、Model/Page 4279 ms、系统 `Displayed` 2455 ms。
- 第二次冷启动：原版同步初始化 119 ms、当前兼容任务完成 135 ms、Surface 627 ms、首个 GL 帧 983 ms、Model/Page 1018/1019 ms、系统 `TotalTime` 1262 ms。
- 热返回：从系统设置页返回 Launcher 为 `LaunchState=HOT`、237 ms，PID 前后均为 `4749`；熄屏/点亮后 PID 仍保持。关闭诊断开关后冷启动标记数为 0。测试日志无 Launcher `FATAL EXCEPTION`。
- 未验证：没有清除数据测试首次安装空数据库；未单独自动化最近任务卡片返回；未做实体机、多 ROM 和逐帧录像。

验证：`build.bat` 完整通过；最终 APK 为 `v1.5.4 (29)`、`minSdkVersion=23`、`targetSdkVersion=28`；二进制 Manifest 可由 `aapt2 dump xmltree` 解析；`apksigner verify --verbose` 确认 v1/v2/v3 签名有效；`adb install -r -d` 覆盖安装到 `emulator-5554` 成功。

### 2026-07-13

#### 恢复所有设置页面的顶部/底部拉伸回弹

- 用户现象：当前设置页滚动到顶部或底部后继续拖动没有任何反馈；maintained 参考项目会随手势产生带阻力的边缘拉伸，松手后回弹。
- 根因：maintained 的 `setting_main.xml`、`app_icon_settings_layout.xml`、`launcher_anim_chooser_layout.xml` 等滚动容器原本统一声明 `android:overScrollMode="always"`，当前资源也保留了这些属性；但 `MaintainedLauncherSettingsHost.tuneScrollBars()` 在页面绑定后递归把每个 View 改成 `OVER_SCROLL_NEVER`，程序化创建的应用图标列表和单应用替换图标页也显式禁用了 overscroll，因此 XML 行为被 Java 覆盖。
- 修复：沿用 maintained 的系统实现，不新增自绘动画。公共调校只对真正可纵向滚动的 `ScrollView` 和 `AbsListView`（包含 `ListView` / `GridView`）设置 `OVER_SCROLL_ALWAYS`，并在统一 `setSettingsContentView()` 页面装载入口执行，覆盖一级、二级和三级设置页；三个程序化滚动容器同步移除 `OVER_SCROLL_NEVER`。普通 View 不参与 overscroll，弹窗内部仅在正文过长时滚动的区域继续保持原逻辑。
- 回归注意：隐藏滚动条、关闭快速滚动和关闭文本筛选等原设置页调校保持不变；不得为此引入逐页自绘弹簧动画。Android 12+ 使用系统 stretch，较旧系统可能呈现平台原生边缘反馈。

验证：`build.bat` 已完成 maintained 设置资源构建、apktool 回编译、Java 兼容宿主编译、dex 合并、zipalign 和签名；`aapt2 dump badging` 确认为 `com.smartisanos.launcher v1.5.3 (28)`，`apksigner verify` 确认 v1/v2/v3 签名有效。本次 ADB 设备列表为空，边缘拉伸幅度和所有三级页面的真机触感仍待设备连接后确认。

#### 修复首页向右拖动无反馈，恢复原版边界回弹

- 用户现象：首页向左可以正常进入第二页，但在第一页向右拖动完全没有位移，视觉上像触摸失效；maintained 参考项目会产生带阻力的越界位移，并在松手后回到第一页。
- 根因：当前 `PageView.updateScroll()` 和 `PageScrollAnimation.updateScroll()` 本身保留了原版 `SCROLL_PARA_TABLE` 阻尼曲线，但原版会在 `Constants.sLeftScreenEnabled=true` 时把首页正向位移钳制为 `0`，将手势交给锤子系统负一屏。原版锤子系统始终提供全局键 `sm_launcher_left_screen_state`，而普通 Android 没有该键；`ua.f(Context)` 却使用 `1` 作为缺省值，导致移植环境误判负一屏已开启并吃掉回弹。
- 修复：保留原版分页、阻尼和松手回弹实现，仅将缺失全局键时的默认值由开启改为关闭；读取到真实键值 `1` 时仍按原版启用负一屏。这样普通 Android 首页向右拖动会显示原版弹簧阻力，松手仍停在第一页，首页向左翻页不受影响。
- 对照：`clean_launcher` 与当前 APK 均包含负一屏钳制；maintained 已移除负一屏依赖，因此不会触发该钳制。此次修改修正的是移植环境的系统设置缺省语义，不是重写触摸或动画。

验证：`build.bat` 已完成 apktool Smali 回编译、maintained 设置资源构建、Java 兼容宿主编译、dex 合并、zipalign 和签名；`aapt2 dump badging` 确认为 `com.smartisanos.launcher v1.5.3 (28)`。本次 ADB 设备列表为空，首页右拖阻尼距离和松手回弹仍待设备连接后真机确认。

#### 动态天气/日历阴影根因修复与图标设置弹窗统一

- 动态阴影根因：当前 `ActiveIconView.a(base, active)` 已转到 `LauncherSettingBridge.composeActiveIconToBaseBounds()`；该方法为避免双层图标只把动态主体画进新的透明 Bitmap，却完全没有生成阴影。此前在 ActiveIcon 节点创建后补调 `g.rl()` 只影响私有 3D 阴影节点，不能进入最终缓存 Bitmap，而且该 `sc[27] + MutiTexMaterial` 链在现代 Android 上存在已验证崩溃风险，因此视觉上始终没有稳定阴影。
- 删除 ActiveIcon 创建尾部无效的 `rl()` 补丁，避免重复创建私有 GL 阴影节点和恢复已废弃崩溃链。
- 图标包选择不再使用系统 `AlertDialog.Builder.setItems()`；改为复用 `prepareSmartisanDialogRoot()`、统一标题/分隔线/列表按压态/底部取消按钮，并标明当前选择。选择、后台预热和桌面刷新逻辑保持不变。
- 桌面图标大小弹窗宽度统一为 `min(380dp, screenWidth - 32dp)`；移除预览区额外的渐变背景、描边和圆角框，只保留当前百分比、大小预览、滑杆与刻度，底部按钮继续复用统一组件。

验证：`build.bat` 已完成 maintained 设置资源构建、apktool 回编译、Java 兼容层编译、dex 合并、zipalign 和签名；`aapt2 dump badging` 确认为 `com.smartisanos.launcher v1.5.3 (28)`。本次 ADB 服务可启动，但设备列表为空，动态阴影视觉和三个弹窗的真机尺寸仍待设备连接后确认。

#### 桌面图标首帧恢复原版快速路径与分层缓存

- 根因：当前 `view/a/g.1.smali::vl()` 对所有普通应用无条件调用 `MaintainedLauncherSettingsHost.loadIconForDesktopItem()`；该兼容链会解析组件、查询 `RedirectIconDB`、检查图标包和在线缓存，返回后 Smali 又调用一次 `normalizeLauncherIcon()`。即使首次安装已经默认关闭改进版图标，普通应用仍承担完整兼容调度和重复归一化，因此首屏进入速度没有恢复到原版。
- 原版对照：`clean_launcher_raw` 的同一 `vl()` 在普通用户分支直接调用 `PackageManager.getApplicationIcon(packageName)`，然后转 Bitmap 并按 `icon_size_with_shadow` 缩放，不经过 Java 图标调度器。
- 修复：新增只读元数据、不解码自定义 PNG 的轻量覆盖判定。仅当全局改进版开启、图标包模式启用，或该组件存在 `AUTO/RESOURCE/PACK/CUSTOM` 覆盖时才进入现有兼容链；其余应用直接恢复原版 `getApplicationIcon()`。兼容链内部已经统一归一化，Smali 的第二次归一化已删除。
- 图标包：新增无扫描的持久模式判断和非阻塞读取。冷启动尚未解析所选图标包时，桌面先显示系统原图，只启动一个后台线程解析 `appfilter`；完成后统一触发数据库/桌面图标刷新。不得再在 Launcher 模型线程同步解析整份图标包 XML。
- 在线图标：继续保持“内存 -> `files/online_icon_cache_v3` -> 后台双镜像下载”的顺序；首帧未命中时立即回退系统原图，HTTP 只允许在专用执行器中运行，下载完成落盘后再刷新对应桌面图标。进程内 Bitmap 缓存由无上限 `HashMap` 改为按像素占用计费的 8 MiB `LruCache`，磁盘持久缓存不变。
- 回归约束：单应用改名只有展示名时不能误判为图标覆盖；自定义相册图标仍只在真正命中该组件时读取磁盘字节；图标包和在线资源未就绪时必须显示原图，不能阻塞首帧或留下空白占位。

验证：`build.bat` 已完成 apktool 重打包、Java 兼容宿主编译、dex 合并、zipalign 和签名；`aapt2 dump badging` 确认为 `com.smartisanos.launcher v1.5.3 (28)`，`apksigner verify` 确认 v1/v2/v3 均为 true。本次 ADB 设备列表为空，尚未完成真机冷启动耗时、图标包后台回填和在线图标下载后刷新验证。

#### 修复动态天气和日历双层图标

- 根因：原版 `ActiveIconView.a(base, active)` 假定 `base` 是原版包提供的底板/阴影，但当前移植链路传入的是完整静态天气或日历图标。恢复原版“先画 base、再画 active”后，两份完整图案被同时绘制，真机表现为大小不同的双边框、双层日历。
- 修复：合成缓存图时仅使用静态图标确定输出画布尺寸，不再把完整静态图标绘入画布，最终只显示一份动态天气或日历本体。
- 回归：不得再次在 ActiveIcon 合成结果下方绘制完整应用图标，也不能恢复已废弃的人工 `_shadow` 资源方案。

#### 【已废弃】恢复 v1.5.3 动态天气和日历尺寸链（比例与阴影结论已被后续真机截图推翻）

#### 应用改名弹窗接入统一锤子风格容器

- 根因：应用名称修改页仍单独使用 `smt_dialog_bg_full`、`smt_dialog_header`、`smt_dialog_footer` 与独立按钮背景，和已统一的确认、信息、检查更新、图标大小弹窗不是同一条构建链路，导致标题颜色、底部圆角、按钮高度和键盘弹出后的视觉均不一致。
- 修复：`showRenameIconDialog()` 改为复用 `prepareSmartisanDialogRoot()`、`smartisanDivider()` 和 `smartisanDialogActionButton()`；标题、面板圆角、`clipToOutline`、分隔线与双按钮的 `56dp` 高度完全沿用已验证的统一组件。改名输入框与即时写入/刷新逻辑保持不变。

#### 【已废弃】动态天气和日历的专用阴影资源选择修复（生成主题专用阴影会抹掉原版半透明边缘）

- 此方案只修复了前景路径误改问题，但将完整底框改到人工生成的 `_shadow*` 文件，并在生成时裁掉了原版 PNG 中 alpha 小于 `128` 的柔和边缘；因此透明主题下天气和日历仍明显比普通图标淡。保留本标题作为历史，不再使用该资源选择方式。

#### 【已废弃】动态天气和日历复用原版底图阴影（只恢复 PNG 不足以恢复完整合成阴影）

#### 【已废弃】动态天气和日历恢复原版 ActiveIcon 合成与实时缩放（完整静态图标被误当作底板，造成双层）

#### 通知使用权未授权时角标开关保持关闭

- 开启“显示图标上的角标”或“紧贴屏幕横扫清除角标”时，若尚未授予通知使用权，只提示并跳转系统授权页，不写入开关状态、不触发桌面角标逻辑；用户授权后需要再次手动开启。

#### 天气定位、更新与原版动态刷新链路核对

- 对照 `smartisan-launcher-maintained`：它优先读取 `LocationManager` 的最后位置，再用本地 `CityDatabaseHelper`/NMC 城市索引匹配站点，最后通过后台 `WeatherForceSyncTask` 请求中国气象数据并回写天气对象。因此“快”主要来自已有位置和本地城市匹配，不是每次打开页面都重新定位。
- 当前 `WeatherBridge` 已采用同类策略：优先使用 network/passive/GPS 的最近位置、六小时位置缓存和本地城市站点；天气数据正常一小时 TTL，只有过期、手动刷新、城市/定位模式变更时才后台联网。保持该策略，避免桌面翻页把定位和网络请求压到 UI 体验上。
- 对照原版 `clean_launcher`：天气更新由 `weather_data_changed`/`WeatherView.g(Intent)` 协议分发；CalendarView 在 Launcher 的 `onResume()` 中检查日期变化并触发原版翻页动画，WeatherView 同样在原版 ActiveIcon 恢复链路中恢复。原版没有“每次桌面翻页都重新定位或联网”的实现，因此本次不引入会破坏原版节奏和耗电的页面切换刷新。

验证：源码逐像素核对确认恢复后的天气与日历底图和 `clean_launcher_raw` 原版一致，低 alpha 边缘像素已恢复；`build.bat` 已完成重打包、签名，`aapt2 dump badging build\\launcher-signed.apk` 确认为 `com.smartisanos.launcher v1.5.3 (28)`，APK 内容已确认包含原始 `calendar/bg.png` 与 `weather/weather_bg_sunny.png`。本次 ADB `devices` 返回空列表，尚未完成覆盖安装和真机视觉回归；设备重新连接后需验证透明主题下动态天气/日历的阴影与普通图标一致性，以及天气前景动画。

### 2026-07-12

#### 单应用替换图标页的持久缓存回填与在线候选刷新

- 对照 `smartisan-launcher-maintained`：其应用图标设置主要使用本地 `IconDB`、应用原图和已安装图标包的本地资源，并不在单应用候选页临时联网下载 PNG。当前移植版新增在线图库后，必须额外保证磁盘缓存可直接渲染。
- 根因：候选列表用 `libraryIconStored()` 判断时会识别 `files/online_icon_cache_v3/` 下的 PNG；但 `libraryIconDrawableNonBlocking()` 之前只查进程内 `sSmartisanIconCache`。应用/进程重启后磁盘文件仍在、内存位图为空，候选会被加入网格却没有图片；预取又因“文件已存在”跳过下载，形成永久空白卡片。
- 修复：候选绑定未命中内存时立即解码本地持久缓存并回填内存，再渲染对应图标；在线候选页的局部网格刷新从 `0.9s/2.6s` 延伸到 `6.5s/11s`，覆盖双镜像超时和共享下载线程排队后的完成时机，且只替换网格、不重建页面或丢失滚动位置。
- 缓存语义：已下载图标不会在每次打开时重新下载；顺序为内存缓存 -> `files/online_icon_cache_v3` 持久缓存 -> 后台镜像下载。只有磁盘和内存均未命中、且未处于失败重试冷却期时才联网。

#### 设置页锤子风格弹窗容器与按钮栏统一

- 根因：宫格确认、检查更新信息、图标大小和下载进度各自创建 `Dialog` 根容器；双按钮确认框的按钮本体为 `50dp`、按钮栏却为 `56dp`，形成按钮下方留白；单按钮传入 `side=0` 时没有设置下圆角；根容器未裁剪子 View，按钮背景会覆盖面板底部圆角。
- 修复：在 `MaintainedLauncherSettingsHost` 复用 `prepareSmartisanDialogRoot()`，统一面板颜色、`8dp` 圆角和 `clipToOutline` 裁剪；统一单按钮下侧双圆角、双按钮左右下圆角，以及 `56dp` 按钮栏的实际子项高度。宫格确认、检查更新、图标大小和下载进度均已接入。
- 视觉约束：标题保持居中；说明正文保持左对齐；按钮栏紧贴正文分隔线，底部无额外留白，面板上下圆角一致。

#### 系统卸载取消后的回收站状态复位与设置弹窗统一

- 普通 Android 卸载使用 `ACTION_UNINSTALL_PACKAGE`。此前原版确认按钮在启动系统卸载页后仍继续执行私有 `deletePackage` 对应的“移入回收站 + 数据库删除”动画；用户取消或返回时没有真实包移除广播收尾，桌面会永久停在卸载动画状态。现在普通应用在确认按钮处提前分流：只启动系统卸载页、关闭原版确认框并复位原版卸载标志，不再预删图标或启动回收站动画。真正卸载成功后仍由系统包移除事件驱动桌面更新。
- 对照 maintained 的 `UninstallApp.cancelUninstallWithoutAnim()` 后确认：它的正确点是通过 SM/GL 事件队列收尾，而不是在 Android 生命周期线程直接改桌面场景。当前原版等价入口是 `oa.fd()`，但其原始实现要求私有 `mUninstallDialog` 仍存在；普通 Android 的系统卸载页会替代并关闭该弹窗，导致 `fd()` 提前返回，取消或返回时没有任何回收站收尾。
- 最终修复：`Launcher.onPause()` 调用原版 `oa.fd()`；兼容分支仅移除 `fd()` 对已关闭私有弹窗的短路，并让其原有 `a/T` SM 事件在 GL 线程无条件执行 `oa.hd()`。`hd()` 继续复用原版逻辑，强制完成时间线、把等待卸载图标送回原父容器、关闭回收站动画并退出卸载场景。这样系统卸载页取消、返回或完成卸载都不会遗留卸载动画。
- 真机日志确认：直接从 `Launcher.onPause()` 调用 `oa.hd()` 会因 `ThreadVerify` 抛出 `current env is not GL thread` 而闪退；因此绝不能把 `hd()` 直接接到 Activity 生命周期。通过 `a/T.q()` 进入原版 SM/GL 队列后，用户真机复测已确认正常。
- 【已废弃】在 `Launcher.onPause()` 直接调用 `oa.hd()`：这是 GL 线程方法，会导致 `current env is not GL thread` 崩溃。
- 【已废弃】使用 `Activity.recreate()` 重建 Launcher 场景：原版 GL 场景在 Activity 重建时可能触发 `PageView` 空节点崩溃，不能作为系统卸载返回的恢复方案。
- 设置页的确认、信息、检查更新下载进度和桌面图标大小弹窗统一使用现有锤子风格的圆角面板、居中标题、分隔线和底部操作按钮；说明正文统一左对齐。图标大小仅保留自身滑块/预览内容，不再拥有一套不同的标题和按钮外观。

#### 12 / 20 宫格切换按原版逻辑最终修复

- 根因不是图标数据丢失，而是兼容设置层把外部的“20 宫格”直接当作原版内部页面模式使用。原版 `Constants.getPageModeFromMode(20)` 实际映射为内部 `MODE_9 (0x9)`；这个值是原版 4 x 5 宫格的运行模式标识，不是九宫格布局。此前绕过这层映射、传入 `20` 或自行保存/恢复页面，都会让旧页面坐标被错误解释，表现为每个板块只留下 9 个图标。
- 最终实现严格复用原版：设置层先通过 `Constants.getPageModeFromMode()` 获得内部模式，再在原版 `DatabaseHandler.mWorker` 线程调用 `data/F.i(oldPageMode, newPageMode)`，随后重载桌面。不得把数据库迁移放到 UI 线程，也不得按包名、安装时间或当前可见图标重新排序。
- 行为与原版保持一致：`12 -> 20` 只切换运行布局，`F.i()` 不改写板块成员、顺序或格子位置，因此同一板块原有 12 个图标会完整保留；`20 -> 12` 仅当单板块超过 12 个图标时，按原有顺序拆出后续 12 宫格板块。拆分后的板块在切回 20 宫格时不会自动合并，这是原版既定语义。
- 对照依据：`build/decompiled_theme_check/com.smartisanos.launcher-3` 中的 `Constants.smali`、`data/F.smali` 和原版模式切换调用链。已通过 ADB 安装与真机往返验证：12 -> 20 保留同板块 12 项，20 -> 12 只在溢出时拆分。

#### 首次安装默认项与应用图标候选加载优化

- 首次安装默认关闭“改进版图标”“动态天气和日历”“显示图标上的角标”“紧贴屏幕横扫清除角标”，避免桌面首帧触发额外图标替换、动态纹理和通知监听处理。
- 图标包预热对齐 maintained 的 `IconPackManager.warmUpIconPackList()`：后台扫描已安装图标包的包名、`appfilter` 与 drawable 映射，填充内存/本地缓存；它不下载在线图标，也不会因为改进版图标默认关闭而进行网络请求。
- 单应用替换页候选读取改为内存缓存、磁盘缓存和已安装图标包的本地资源。没有实际候选图标时不再留下空白默认占位格；页面绑定阶段不触发联网下载，避免首次进入出现空白后再闪烁补图。
- 已缓存的改进版图标可在用户之后开启功能或单独选择时直接复用；在线图标仍只在明确需要且本地没有缓存时才请求。

#### 【已废弃】直接重建桌面场景以消除切换闪屏

### 2026-07-11

#### 应用改名即时刷新、设置页转场与角标开关修复

- 单应用改名保存后会同步更新 redirect 展示名、桌面条目的 `title` 和当前场景的文字纹理，并在数据库提交完成后补发目标应用刷新事件；不需要退出或重开桌面。
- 设置页一级、二级、三级改为在同一容器内完成左右平移；连续进入/返回会清理上一轮转场遗留视图，避免防点击状态残留造成“点了没反应”。
- 强迫症选项中的角标开关改为正向语义“显示图标上的角标”；开启时若未授予通知使用权，直接跳转系统授权页。旧的提示链接已移除，横扫清除角标的授权行为保持不变。

#### 【已废弃】通知角标数字比例与宫格顺序迁移修复

### 2026-07-10

#### 文件夹拖动/长按释放后图标行距漂移修复

- 现象：文件夹刚打开时三层书架图标对齐正常；只要长按后松手，或拖动图标重新排列，第一行会偏上、第三行会偏下，中间行保持正常。关闭文件夹再打开又恢复正常。
- 根因：初次布局走过文件夹页的可见书架行高适配，但拖拽、回弹、换位动画会重新调用容器级 `fa.ir()`，直接取全局 `Constants.pageCellCenterPoints`。这组全局点是普通桌面网格坐标，行距比打开文件夹书架大，所以动画/释放阶段把上下两行重新拉开；旧方案只改 `M.smali` 的局部 `setTranslate()`，后续动画再次取 `ir()` 时仍会覆盖。
- 修复：在 `fa.ir()` 源头调用 `FolderCellPositionAdapter.adaptPositions(owner, positions)`。当 owner 是文件夹容器 `com.smartisanos.launcher.view.b.t` 时，返回克隆后的点数组，以中间行为锚点、按 `window_width * 358 / 1080` 计算三层书架行距；非文件夹容器直接返回原全局数组。
- 防回归点：不得直接修改 `Constants.pageCellCenterPoints`，否则普通桌面冷启动网格会被文件夹行距污染；也不要只在某个动画类里补偏移，因为拖拽链路有多处会重新读取 `fa.ir()`。
- 验证：`build.bat` 完整构建、zipalign、签名通过；最终 APK 中 `classes.dex` 的 `fa.ir()` 已包含 `FolderCellPositionAdapter.adaptPositions(...)` 调用，`classes2.dex` 已包含 `adaptPositions` 方法。用户真机复测确认问题已解决。

涉及文件：

- `launcher/smali/com/smartisanos/launcher/view/b/fa.smali`
- `launcher/tools/java/com/smartisanos/launcher/data/FolderCellPositionAdapter.java`

#### 应用图标选择页与默认图标状态修复

- 应用图标页新增单应用“替换图标”二级页，展示当前应用信息和可选图标网格；候选来源包括图标库包名、系统应用别名、`assets/icons/variants.json` 中的同应用变体、当前图标包命中图标和相册自定义入口。
- 选择图标库候选时写入 `RedirectIconDB.MODE_RESOURCE:<name>`，选择图标包候选时回到自动改进版/图标包链路，选择相册图标时沿用已有自定义图片流程；切换后刷新当前行并保持应用图标页滚动位置。
- 修复默认图标选择状态：切回默认图标会写回 `MODE_ORIGINAL`、清空自定义 icon blob、刷新桌面图标和当前行状态；右侧箭头只进入选择页，不再让默认图标选择状态停留在右侧候选图标上。
- 新增 `icons/variants.json` 与 APK 内 `launcher/assets/icons/variants.json`，用于记录同一包名的多个候选 PNG；生成图标索引后需要同步该文件，供应用图标选择页读取。

涉及文件：

- `launcher/tools/java/com/smartisanos/launcher/theme/MaintainedLauncherSettingsHost.java`
- `launcher/tools/java/com/smartisanos/launcher/data/redirectIcon/RedirectIconDB.java`
- `icons/variants.json`
- `launcher/assets/icons/variants.json`

### 2026-07-03

#### 主题保存成功但必须重开桌面才生效

- 客户 v1.5.3 日志显示主题四路状态已从格子正确保存为经典蓝、再保存为毛玻璃，`launcher_ready=true`，但两次均为 `original=true, queued=false`；因此不是主题包、持久化或机型识别问题，而是当前场景缺少切换消息。
- 根因是兼容层错误地把 `X.ja()` / `O.a()` 的保存成功返回值当成“原版已经发送 `MESSAGE_CHANGE_THEME`”，只在保存失败时才设置 `a.r.sj`。原版 `ThemeItemActivity` 实际是在保存后继续通过 Handler 返回桌面，由 Launcher 消费该消息。
- 修复为主题持久化后始终只设置一次待消费的 `MESSAGE_CHANGE_THEME`，再执行截图与返回桌面；新增 `THEME_DISPATCH pending_message_set/failed` 日志。切换不再依赖用户关闭并重新打开桌面。
- ADB 在 ColorOS 真机稳定复现解锁时出现 `dispatching lifecycle unlock fallback`，确认解锁兜底本身正确进入原版 `action_keyguard_on + USER_PRESENT`；异常主题动画来自 `a.r.sj` 中未及时消费的静态主题消息。
- 返回桌面 180ms 后现主动调用原版 `a.r.a(Message)` 消费并清空本次主题消息，日志记录 `pending_message_consumed`；超过主题保护期仍残留的陈旧消息会在解锁动画前清除，避免主题切换动画劫持下一次解锁。

#### 天气多数据源容错与失败状态修复

- 第二轮真机反馈确认，单纯增加 MET Norway/Open-Meteo 仍会在部分中国大陆网络同时不可达，并且系统 Geocoder 等待会让城市搜索比旧版更慢。最终方案不再把境外服务作为中国城市的首选。
- maintained 资源包原本已内置 `city_base` 与 `city_cn`，包含三千余个中国站点的名称、省市、经纬度和中国天气网站点 ID。手动城市搜索现直接查询本地数组，命中时零网络、立即返回；自动定位按经纬度选择最近国内站点，逻辑不判断手机品牌或 ROM。
- 国内站点天气优先使用中国天气网 `d1.weather.com.cn/sk_2d/{stationId}.html`，实测蚌埠站约 0.05 秒返回；连接/读取超时为 1.5/2 秒。只有国内站失败或坐标不在国内城市表覆盖范围时，才并发竞速 MET Norway/Open-Meteo。
- 根因确认：天气此前只依赖 Open-Meteo；接口 TLS/连接超时后不会写入 `weather_updated_at`，设置页只能显示“尚未更新”，动态图标则可能继续呈现旧城市温度或原版占位内容。
- 天气改为 MET Norway Locationforecast 与 Open-Meteo 并发竞速，使用首个有效结果；不再等待主源超时后才串行请求备用源，整体等待上限收口为 6.5 秒。
- 城市搜索优先使用手机系统 `Geocoder`（澎湃 OS 可走系统地理服务），无结果时才回退 Open-Meteo；在线回退连接/读取超时缩短为 1.8/2.8 秒，已搜索结果继续使用十分钟内存缓存。
- 城市或自动/手动模式改变时清除旧地点的温度、天气代码和数据源，避免把上一城市的 25℃误认为新城市结果。
- 成功刷新保存实际数据源；双源均失败时保存精确错误，动态天气设置页显示数据源或失败原因，方便客户日志分析。

#### 客户诊断日志增强与应用图标列表完整性修复

- 修复“应用图标”设置页最多只显示 120 项的问题：移除硬编码上限，已解析且符合显示条件的应用现在全部展示。
- 修复澎湃 OS 返回“非空但不完整”应用列表时无法补全的问题：当前用户始终合并 `PackageManager` 与 `LauncherApps` 的桌面 Activity 并按组件去重；分身/工作资料应用仍受相应功能开关控制。设置页枚举和全局改进版图标切换统一使用该结果，应用数量不再影响是否参与图标匹配。
- 应用图标页新增加载耗时、原始数量、显示数量、过滤数量以及被过滤组件日志，便于直接定位具体缺失应用。
- 主题切换新增切换前状态、主题包安装状态、原版调用结果、消息入队结果、切换后四路持久化值和桌面动画就绪状态。
- Android 普通应用仍只能读取本进程/系统允许范围内的 logcat；完整系统日志仍需电脑 ADB，这是系统权限边界而非记录器遗漏。
- 客户截图中的日志自报版本为 `v1.4.9`（SDK 33），不能作为 1.5.1 或当前版本已经运行的证据。

#### 文件夹、检查更新与图标系统历史记录清理

- 文件夹记录只保留当前有效实现：关闭预览由 `LayoutPropertyAdapter.centerFolderPreview()` 根据可见行列中心生成 2×2/3×3 参数；展开页使用原版固定三列并按书架实际行高适配；主题背景从 `assets/folder_theme_bg/` 读取。固定像素、整组缩放、错误页面坐标旁路等失败过程已删除。
- 检查更新记录只保留当前 `DownloadManager`、Gitee launcher Release 筛选、备用资产地址、下载状态复用和授权 URI 安装链路；自建安装 Session、`file://` 等废弃过程已删除。
- 图标记录只保留当前优先级与行为：单应用自定义 > 图标包 component/appfilter > 改进版映射 > 系统原图；首帧和刷新使用组件级识别，在线图标持久缓存并按需联网。被后续推翻的分身角标和旧待办描述已删除。
- 所有此前已经清空正文的错误实验标题统一改为 `【已废弃】日期：标题`，不再使用删除线或无标记空标题。

#### 完整功能清单与后续状态重新盘点

- 按当前代码重新核对原版交互入口，确认四指横滑切换主题和双指捏合缩放并非待移植功能：四指手势由 `view/Da -> a/a/c (FourFingerSlide)` 调用主题切换栈；双指手势由 `smengine/Ba` 根据 `pinch_scale_threshold` 分发 `onZoomOut/onZoomIn`，切换单页桌面与多页总览/编辑状态。
- 顶部“已完成”已补齐手势、多页管理、页面隐藏/锁定、文件夹、翻页动画、主题、搜索、角标、设置入口、动态图标、应用分身与多用户等现有能力；README 的核心特性同步加入四指和双指手势。
- 删除原“未完成 / 待处理”中全部 `[x]` 已完成项目。当前没有明确缺失的核心桌面功能；剩余内容改为“已完成但需要继续回归”和“已知限制”，避免把跨机型测试、通知系统边界、用户确认安装等平台限制误写成开发未完成。

#### 【部分历史结论已被取代】动态天气/日历对齐尝试、兼容阴影与 Android 16 闪退修复

- 当时真机确认天气数据、动态显示和桌面运行恢复；该样本不能证明 Weather/Calendar LIVE/STATIC world rect 已在全部比例和宫格对齐。“不会残留约 1px 跳动”的最终结论已撤销，当前必须以 `syncActiveIconToStaticArtwork()` 的 ratio/center 自动指标和逐帧矩阵验收。
- 原版阴影来自 Cell `sc[27]`、八张运行时阴影纹理和 `MutiTexMaterial`，依赖 Smartisan `Settings.Global`、已移除的 `android.graphics.BlurImageFilter` 以及旧 shader 的 `uShadowRadius`。普通 Android/Android 16 不得强制开启该链路；真机出现的 GLThread 闪退已通过 ADB 明确定位并完整撤销。
- 【已废弃】早期兼容方案曾将动态底图裁为无阴影主体并生成 `_shadow.png` / `_shadow_transparent.png`。后续真机对比确认该处理会去掉原版纹理中的低 alpha 投影，透明主题下视觉过淡；当前已恢复原版底图并由动态节点直接加载。
- 保留的原版安全路径是 `data/L.smali` 的 `extractAlpha + BlurMaskFilter` 三 Bitmap 合成；依赖 Smartisan 私有 GL/`sc[27]` 的 activeicon 运行时 shadow map 仍保持关闭，两者不能混为一条链路。

### 2026-07-02

#### 【映射/刷新结论保留，尺寸定版已撤销】动态图标、关闭动态后的标准图标映射与在线识别修复

- 实时动画使用原版 `nc(vm)` 纵向坐标；结束后的静态 Bitmap 以动画为基准，使用原版 `sq()` 几何差校正。两条路径职责不同，但最终可见外框必须重合。
- 关闭动态后不再下载天气/日历图标。构建时直接把图标库中完整的 `com.smartisanos.weather.png` 和 `com.android.calendar.png` 编入 maintained 资源 APK，运行时分别以 `static_icon_weather` / `static_icon_calendar` 读取；所有已识别厂商天气、日历均直接命中这两个本地资源，离线和非首次进入桌面也可立即取得完整静态图标。
- `Aa.smali` 关闭动态时原先只排除原版固定日历包名，厂商日历仍可能进入 activeicon 底框替换。现在统一调用 `LauncherSettingBridge.isDynamicIconPackage()`，关闭后所有已识别天气/日历都禁止注入 `weather_bg.png` / `calendar/bg.png`。
- 在线图标过去把超时、DNS/TLS 错误和 HTTP 404 全部记录成一小时“图标不存在”，造成网络偶发失败后长时间识别不到。现在只有所有镜像明确返回 404 才写 miss 缓存；网络故障不再污染不存在缓存，后续加载可自动重试。
- 用户继续真机验证确认，关闭动态后仍显示旧图并非天气/日历包识别失败，而是**已有数据库记录的异步切换竞态**：旧代码发出一次刷新后固定 800ms 杀死 Launcher，数据库 icon blob 可能尚未写回；首次进入桌面会完整建库，因此反而不容易复现。现在静态图标已经内置，并对已有记录执行两阶段刷新，最后等待写回后重建 Launcher；不再把“刷新事件已发送”当成“数据库刷新已完成”。
- 拨号/电话本的组件和标题优先分流未改动；本次标准包映射只作用于关闭动态后的天气和日历。
- 关闭动态只决定“是否走普通图标链路”，不决定普通图标来源。普通链路优先级固定为：单应用自定义/明确选择 > 图标包组件映射 > 已启用的改进版图标（天气/日历使用 APK 内置完整资源）> 应用系统原图。改进版总开关关闭时不会强制使用内置天气/日历；选中图标包时也不会被改进版别名抢占。拨号 Activity 禁止回退到联系人包级映射的保护继续保留。
- 性能日志确认此前一次图标操作会执行数百次 PNG 压缩和网络连接。优化后：动态天气/日历开关只向数据库提交已安装天气、日历包，不再两次全量刷新全部应用；图标大小重启后只重建 LayoutProperty/SceneNode，不再重新匹配、压缩或下载图标；图标更新从“反射直调 + 本应用广播”两次执行改为直调成功即结束、广播仅作失败兜底；全量包列表按包名去重。全局改进版/整包切换仍允许更新全部实际受影响应用。
- 普通 Android 的普通应用图标继续使用原版 `data/L.smali` 软件生成的 dark/light/transparent 三张 Bitmap；动态天气和日历因使用独立 activeicon 节点，直接加载原版 ActiveIcon 完整底图，依赖 Smartisan framework 的 activeicon `sc[27]` GL 阴影链路继续禁用。
- 【已废弃】曾为 256px 动态底框引入画布裁切补偿的双层生成阴影。该方案不能等价于原版纹理阴影，且会覆盖原版半透明边缘，因此不再使用。
- 在线改进版图标成功下载后持久保存到 `filesDir/online_icon_cache_v3`，跨进程重启和覆盖安装复用；读取顺序为内存缓存 → 持久文件 → 必要时联网。天气数据保存在 SharedPreferences，正常 TTL 为一小时，位置 TTL 为六小时；只有缓存过期、用户手动刷新或位置模式改变才联网。

涉及文件：

- `launcher/smali/com/smartisanos/launcher/Aa.smali`
- `launcher/smali/com/smartisanos/launcher/view/a/g.1.smali`
- `launcher/smali/com/smartisanos/launcher/view/activeicon/H.smali`
- `launcher/smali/com/smartisanos/launcher/view/activeicon/m.smali`
- `launcher/tools/java/com/smartisanos/launcher/theme/LauncherSettingBridge.java`
- `launcher/tools/java/com/smartisanos/launcher/theme/MaintainedLauncherSettingsHost.java`

#### 跨机型冷启动、图标数据库与 Smartisan 框架兼容收口

日志根因：

- DRA-AL00 冷启动时，原版图标数据库一次查询全部 PNG blob，38 个图标已经填满系统固定的 2MB `CursorWindow`，后续行无法装入；这会表现为相册等图标偶发未识别、缓存明明存在却仍重新生成，并增加首次进入桌面的阻塞时间。
- Android 9 及以下会进入原版 `checkDoppelganger`，遍历设备全部安装包。该逻辑只服务 Smartisan 旧分身实现，普通厂商 ROM 已由 LauncherApps/profile 兼容层覆盖。
- Launcher 引用了 Smartisan framework 提供的 `TabletWallpaperHelper` 及内部监听器；普通 Android 没有该类，部分平板/横屏分支会在 verifier 阶段报缺类。
- 冷启动还重复执行完整纹理字段反射/资产校验，并探测不存在的 Smartisan Launchpad 和支付包。这些失败可回退，但会制造主线程 I/O、异常对象和无意义日志。

修复内容：

- 新增 `IconDatabaseCompat`：只查询当前桌面 owner，按 12 条一批读取 `owner/color_info/icon_blob`，每批及时关闭 Cursor；不再依赖扩大厂商私有 CursorWindow，也不会随应用数量增长再次触发 2MB 上限。
- 原版旧分身全包扫描入口已直接停用，不再保留品牌判断；第三方 Android 统一使用现有 LauncherApps 多用户/工作资料夹链路。
- 新增 `smartisanos.app.wallpaper.TabletWallpaperHelper` 兼容类和同名嵌套监听接口，使用 `ACTION_WALLPAPER_CHANGED` 与 Launcher 私有壁纸 URI 兜底；Smartisan 原系统仍可按 framework 优先加载原生实现。
- 从文本与最终二进制 Manifest 删除 Launchpad 服务和 Smartisan 支付权限，删除对应 Service/Runnable 实现及所有调用入口；同时移除启动和布局重建阶段的调试型全资源扫描。
- 发布构建默认关闭原版大量 `Log.e` 调试输出，避免部分厂商 ROM 错误设置 `ro.debuggable=1` 后在首屏解析阶段同步刷日志；仍可通过原 `LOG.kc()` 显式启用。

验证：

- `build.bat` 完整构建和签名通过，覆盖安装 DRA-AL00 成功。
- 强停后冷启动未再出现 `CursorWindow is full`、`TabletWallpaperHelper` 缺类、`Textures/1080p/12/12`、支付包异常和逐包 `checkDoppelganger` 日志；进程保持存活，无 FATAL EXCEPTION / ANR。
- 同一设备最终冷启动首屏 `Skipped frames` 从修改前 38 帧降到 31 帧；这 31 帧来自进程首次创建原版 3D 场景的一次性集中渲染。进程保活后返回桌面复测无 `Skipped frames`，日常返回/切换不是持续性卡顿。不要为消除这一条一次性系统提示而把图标数据库或 SceneNode 更新并发写入渲染线程。

涉及文件：

- `launcher/tools/java/com/smartisanos/launcher/data/IconDatabaseCompat.java`
- `tools/remove_smartisan_runtime_components.py`
- `launcher/tools/java/smartisanos/app/wallpaper/TabletWallpaperHelper.java`
- `launcher/smali/com/smartisanos/launcher/data/a/h.smali`
- `launcher/smali/com/smartisanos/launcher/data/A.smali`
- `launcher/smali/com/smartisanos/launcher/service/LaunchpadService.smali`（已删除）
- `launcher/smali/com/smartisanos/launcher/e/f.smali`
- `launcher/smali/com/smartisanos/launcher/J.smali`
- `launcher/smali/com/smartisanos/launcher/va.1.smali`

#### 日期变更崩溃、动态图切换缓存与在线图标持久化

日志根因：

- `build/launcher_log.txt` 在手动修改系统日期后记录了连续的 Launcher 崩溃，唯一明确的 `am_crash` 为 `ClassNotFoundException: android.location.LocationListener$-CC`。日期变化会促使天气重新定位，真正崩溃点是新 SDK 编译的 `LocationListener` 默认接口桥没有随注入 dex 完成 desugar，而旧厂商系统不存在 `$-CC` 伴生类。
- 日志同时记录 `com.smartisanos.launcher.update_icon` 后台广播被系统拦截，以及天气/日历行因 APK 图标 MD5 相同而跳过写库。两者共同造成关闭动态模式后偶尔继续使用旧的空天气底框。
- `WRITE_SETTINGS` / `WRITE_SECURE_SETTINGS` 拒绝、缺少 `TabletWallpaperHelper$WallpaperChangeListener` 等日志均被原兼容代码捕获，不是本次进程崩溃堆栈；设置值已有 Launcher 私有 prefs 兜底。

修复内容：

- `WeatherBridge` 的一次定位监听显式实现当前 SDK 的全部接口方法，包括批量位置回调和 `onFlushComplete`，最终 dex 不再引用 `LocationListener$-CC`。
- 天气/日历图标数据库写入不再受“APK Bitmap MD5 未变化”短路影响；动态开关两种方向都强制重建这两个包的图标数据。
- 关闭动态天气和日历后，普通图标选择链路不再把 `app_icon_weather` / calendar 动态底框当成完整推荐图标；恢复为自定义图标、图标包或应用系统原图。
- 在线改进版图标从可被系统随时清理的 `cacheDir/online_icon_cache_v3` 迁移到 `filesDir/online_icon_cache_v3`，并自动迁移旧缓存。关闭再打开改进版图标会直接复用已下载文件，不重复下载。
- 网络下载失败不再向进程内 Map 永久写入 `null`；远端 miss 重试窗口从 7 天缩短到 1 小时。系统“相册”仍通过厂商包名/Activity/可见标签映射到 `com.android.gallery3d`，临时镜像失败后可以自动恢复识别。

验证：

- `build.bat` 完整构建、签名通过；最终 dex 搜索不到 `LocationListener$-CC`。
- `adb install -r -d` 覆盖安装到 DRA-AL00 成功，冷启动 PID `9960` 保持存活；清空日志后未发现 `FATAL EXCEPTION`、`am_crash`、`VerifyError` 或新的定位监听异常。
- 真机当前页可正常显示日历与天气完整图标。动态更新前后尺寸仍需用户用原视频场景做最终肉眼回归。

涉及文件：

- `launcher/tools/java/com/smartisanos/launcher/theme/WeatherBridge.java`
- `launcher/tools/java/com/smartisanos/launcher/theme/LauncherSettingBridge.java`
- `launcher/tools/java/com/smartisanos/launcher/theme/MaintainedLauncherSettingsHost.java`
- `launcher/smali/com/smartisanos/launcher/Aa.smali`
- `launcher/smali/com/smartisanos/launcher/view/activeicon/a.1.smali`

#### 天气位置即时刷新与城市搜索收口

- 自动定位开启和手动城市切换继续把 `weather_updated_at` 清零并强制刷新；新增强制刷新排队：如果切换位置时上一笔天气或定位请求仍在运行，不再丢弃新请求，而是在当前请求结束后按最新自动/手动位置立即补刷一次。
- 定位回调到达时重新检查当前模式；用户已切到手动城市则不再用迟到的自动定位坐标覆盖天气，而是按最新手动城市刷新。
- 城市搜索：
  - Open-Meteo 请求增加 `countryCode=CN`，减少国外同名地点；
  - 连接/读取超时缩短为 4s/6s，结果增加 10 分钟内存缓存；
  - 精确名称优先，优先 `PPLC/PPLA*` 行政城市，再按人口排序；
  - 精确同名城市只保留最高优先级结果，例如“三亚”不再同时显示海南、广西多个同名地点；
  - 普通结果按名称/省份/国家去重，最多显示 5 条。
- `build.bat` 构建成功，安装 DRA-AL00 成功，Launcher PID `2729`。

涉及文件：

- `launcher/tools/java/com/smartisanos/launcher/theme/WeatherBridge.java`
- `launcher/tools/java/com/smartisanos/launcher/theme/LauncherSettingBridge.java`

#### 【已废弃】动态图标视觉边界、日期高屏偏移与关闭缓存修复（尺寸方案错误）
#### 【已废弃】动态图标改为单层画布映射，消除任意尺寸双框（错误）
#### 【已废弃】动态图标两层按同一用户倍率对称缩放（错误）
#### 【已废弃】动态天气/日历绘制层完整回归原版基线（整层回退结论不完整）
#### 【已废弃】动态天气/日历中心锚点统一与错误坐标缩放回滚
#### 【已废弃】撤销动态天气/日历 120% 二次放大

### 2026-07-01

#### 【已废弃】动态天气与日历开关、原版分层恢复和多屏尺寸收口
#### 动态天气补丁导致 Launcher 启动 VerifyError

- 真机日志确认桌面启动即退出不是设置页或网络异常，而是 `Aa.a(Bitmap, String, boolean, ColorInfo)` 在 Android 运行时校验阶段被拒绝：天气包识别分支跳转到普通图标路径时，寄存器 `v2` 尚未赋值。
- 将该方法原有的 `v2 = 1` 初始化恢复到所有分支共同经过的位置，保留跨厂商天气识别，不再产生未定义寄存器。
- 重新构建并通过 ADB 覆盖安装；OPPO PDCM00 冷启动成功，`com.smartisanos.launcher/.LauncherAlias` 保持前台、进程存活，日志中不再出现 `VerifyError` 或 `FATAL EXCEPTION`。

#### 动态天气设置、自动定位与手动城市

- 桌面设置首页新增“动态天气”入口，二级页显示当前天气位置、温度、最近更新时间，并提供“立即刷新”。
- 默认使用系统粗略定位；打开自动定位但尚未授权时，从设置页发起 `ACCESS_COARSE_LOCATION` 请求。
- 新增手动城市模式：输入中文或英文城市名后，通过 Open-Meteo Geocoding API 返回候选城市，用户选中后保存城市名和经纬度并立即刷新天气。手动模式不读取定位，也不需要定位权限。
- 自动定位与手动城市使用同一套天气缓存和锤子原版动态天气广播；切回自动定位后恢复系统位置，正常刷新频率仍为一小时，手动“立即刷新”可绕过缓存。
- 设置页只改变天气数据来源，不改变天气图标所绑定的系统天气 Activity；点击桌面天气仍打开手机自带天气应用。

涉及文件：

- `launcher/tools/java/com/smartisanos/launcher/theme/WeatherBridge.java`
- `launcher/tools/java/com/smartisanos/launcher/theme/MaintainedLauncherSettingsHost.java`
- `launcher/tools/maintained_settings_res/res/layout/setting_main.xml`
- `launcher/tools/maintained_settings_res/res/layout/setting_dynamic_weather.xml`
- `launcher/tools/maintained_settings_res/res/values/strings.xml`
- `launcher/tools/maintained_settings_res/res/values-zh-rCN/strings.xml`

验证：`build.bat` 完整通过并重新生成、签名 `build/launcher-signed.apk`；定位授权、城市搜索和动态图标刷新仍需连接真机验收。

#### 普通 Android 动态天气恢复

- **原版能力确认**：`activeicon/H.smali`、天气纹理、温度数字、昼夜素材、日出日落切换及更新动画均完整保留；失效点是原版只识别 `com.smartisanos.weather`，并依赖普通 Android 不存在的 `content://com.android.providers.weather_app`。
- **系统天气入口**：新增厂商天气识别，覆盖 Smartisan、Android、vivo/BBK、OPPO/Oplus、MIUI、华为/荣耀和三星常见天气包。`ItemInfo.bf/Qe`、活动图标创建和静态底图生成统一使用识别结果；ItemInfo 的原包名和 Activity 不变，因此点击图标继续打开手机系统自带天气。
- **现代天气数据源**：新增 `WeatherBridge`，使用 Open-Meteo Forecast API 的经纬度接口读取 `temperature_2m`、`weather_code`、`is_day`、`sunrise` 和 `sunset`。WMO 天气代码映射到锤子原版晴、云、阴、雾、雨、冻雨、雪和雷暴代码，再转换成原版 `com.smartisanos.weather.data.update` 广播。
- **位置与权限**：最终 APK 增加 `ACCESS_COARSE_LOCATION`；仅当设备存在可识别的天气应用时请求粗略位置。优先使用 6 小时内的系统最近位置，无可用位置时请求一次网络定位；不申请精确定位。
- **刷新与缓存**：天气缓存有效期为 60 分钟；Launcher 恢复、进程内每小时定时检查以及首次授权后均会尝试刷新。缓存有效时不联网，请求失败时保留上次天气，不清空图标。位置缓存有效期为 6 小时。
- **原版协议兼容**：原 `CallExpandService.q(Context)` 改为读取桥接缓存并异步触发刷新，返回字段仍为 `weatherCode`、`temp`、`fahrenheitTemp` 和 `_1sunRiseAndSet`，因此没有重写 SMEngine 天气动画。
- **权限清单**：文本 Manifest 与最终构建注入的二进制 Manifest 均包含粗略定位权限；新增 `tools/patch_weather_location_permission.py` 用于维护保留的 AXML 清单。
- **数据服务说明**：Open-Meteo 非商业使用无需 API Key；发布时应保留来源说明，商业使用前需重新确认授权。接口文档：`https://open-meteo.com/en/docs`。

涉及文件：

- `launcher/tools/java/com/smartisanos/launcher/theme/WeatherBridge.java`
- `launcher/smali/com/smartisanos/launcher/a/a.1.smali`
- `launcher/smali/com/smartisanos/launcher/data/ItemInfo.smali`
- `launcher/smali/com/smartisanos/launcher/view/a/g.1.smali`
- `launcher/smali/com/smartisanos/launcher/Aa.smali`
- `launcher/smali/com/smartisanos/launcher/Launcher.smali`
- `launcher/AndroidManifest.xml`
- `launcher/original/AndroidManifest.xml`
- `tools/patch_weather_location_permission.py`

验证：

- `build.bat` 完整通过，输出 `build/launcher-signed.apk`。
- `aapt2 dump permissions` 确认最终 APK 同时包含 `INTERNET` 和 `ACCESS_COARSE_LOCATION`。
- 当前 ADB 未连接设备，定位授权、实际天气请求、厂商天气点击和图标动画仍需真机验收。

#### 【已废弃】动态日历尺寸与视觉中心统一
#### 文件夹打开时反复锁屏出现桌面宫格残影

日志确认每次锁屏收到 `ACTION_KEYGUARD_ON` 后，原版都会执行 `createInitUnlockAnimationEvent`，向 GL 场景准备一组桌面宫格节点；解锁阶段虽然检测到文件夹仍打开并跳过动画，但此前创建的准备节点没有被消费。多次锁屏后会积累多组节点，SurfaceView 重建时短暂覆盖在文件夹上，随后由应急解锁恢复清除。

修复：在 `ACTION_KEYGUARD_ON` 的动画准备入口同样执行文件夹/临时界面状态检查；文件夹打开时直接跳过初始化，不再创建待播放的桌面宫格节点。解锁阶段原有跳过保护继续保留。

涉及文件：

- `launcher/smali/com/smartisanos/launcher/ia.1.smali`

#### 应用分身图标跟随全局图标变化

问题：已开启的应用分身会继续显示数据库缓存的旧图标；切换改进版图标、图标包或图标大小后，只有主用户应用刷新。关闭再开启分身会删除并重建记录，所以此前只有这样才能更新。

修复：

- 全局图标刷新时枚举所有已启用的分身应用，并为对应 profile 用户发送原生 `EVENT_USER_PACKAGE_CHANGED`。
- 由原生更新链路重新读取主应用当前图标、合成分身面具并更新数据库，然后刷新桌面。
- Launcher 启动时在原有 `EVENT_USER_PACKAGE_ADDED` 后补发 `EVENT_USER_PACKAGE_CHANGED`，确保图标大小调整导致进程重启后，已有分身也会重建缓存，无需关闭再开启。
- 增加并发保护，避免启动阶段多次 bootstrap 并行刷新。
- 修复原版 `EVENT_USER_PACKAGE_CHANGED` 只接受并查询固定 `userId=10` 的限制；更新时改用事件携带的实际 profile userId，兼容 vivo 等设备动态分配的分身用户编号。此前事件在非 10 用户上会被直接丢弃，正是关闭改进版图标后分身仍保留旧图的根因。

涉及文件：

- `launcher/tools/java/com/smartisanos/launcher/theme/MaintainedLauncherSettingsHost.java`
- `launcher/smali/com/smartisanos/launcher/data/A.smali`

#### 【已废弃】跨厂商动态日历恢复、单层尺寸统一与分身面具微调

### 2026-06-30

#### 文件夹背景打包链路改为 assets 直读

问题与根因：

- 之前为普通主题文件夹背景补入了 `wallpaper_preview_*` / `wallpaper_light_gold` 图片文件，但当前主桌面工程是 `apktool + resources.arsc` 的半反编译结构，不是完整的 Android 源码资源工程。
- `build.bat` 构建主桌面时使用的是 `apktool b launcher`。这条链路会保留已有资源表，但不会像完整 `aapt2 link` 那样自动为后补的 drawable 生成稳定资源表项。
- 结果是：代码里主题 ID 到 `wallpaper_preview_*` 的名字映射存在，最终 APK 里也能看到这些字符串，但 `res/*wallpaper_preview_*` 实际图片并没有被打进主 APK 资源表。运行时 `Resources.getIdentifier(drawable)` 对透明主题还能命中老资源 `t_blur_background_folder`，普通主题却始终找不到，只能回退成默认黑色文件夹背景。

修复：

- 不再继续依赖主 APK 的 drawable 资源表补录文件夹背景，而是新增稳定资产目录 `launcher/assets/folder_theme_bg/`。
- 将普通主题所需的 `wallpaper_preview_*`、`wallpaper_light_gold` 文件复制到该 assets 目录中，由 APK 作为普通资产直接打包。
- 修改 `launcher/smali/com/smartisanos/launcher/e/s.smali`：
  - 新增私有方法 `th(String)`，优先从 `assets/folder_theme_bg/<imageName>.jpg/.png` 直接解码 bitmap。
  - `ug()` 保留原来的主题资源 / 本包资源 / 外部包资源查询顺序，但在本包 drawable 查询失败后，先走新的 assets 解码链路，再回落原版默认背景。
- 这样主桌面 APK 即使仍然不把新增 `wallpaper_preview_*` 注册进资源表，也不会影响普通主题文件夹背景跟随主题变化。

验证：

- `build.bat` 完整通过，新的 `build/launcher-signed.apk` 成功生成。
- 解包检查确认：最终 APK 中已包含 `assets/folder_theme_bg/wallpaper_preview_*.jpg/.png` 与 `assets/folder_theme_bg/wallpaper_light_gold.jpg`；同时 `res/*wallpaper_preview*` 仍为空，说明运行时已切换到新的 assets 读取链路，而不是继续误依赖资源表。
- 实机复测确认：文件夹背景现已随主题正常变化，不再只在透明主题正常、其他主题回退默认黑底。

防回归规则：

- 后续如果再补新的普通主题文件夹背景，不要只往 `launcher/res/drawable-*` 里塞图，然后假设 `Resources.getIdentifier()` 一定能取到。
- 这类“新增但原始资源表里没有登记”的背景图，应该优先视作运行时资产，补到 `assets/folder_theme_bg/`，并沿用 `s.ug() -> th()` 的读取链路。
- 若以后把主桌面切换成完整 `aapt2` 资源工程，再评估是否回归标准 drawable 资源表；在那之前，`assets/folder_theme_bg/` 是当前可信基线。

涉及文件：

- `launcher/smali/com/smartisanos/launcher/e/s.smali`
- `launcher/assets/folder_theme_bg/*`
- `build.bat`

#### v1.5.2 桌面显示、搜索手势与在线图标收口

> [!WARNING]
> **文件夹锁屏结论有一处历史遗漏。** 本节当时只在解锁阶段跳过动画，虽然解决了空 Context 崩溃，却没有阻止锁屏阶段反复创建待播放的桌面宫格节点。该遗漏已由 2026-07-01“文件夹打开时反复锁屏出现桌面宫格残影”修复：文件夹打开时，锁屏准备和解锁播放两端都必须跳过。

本轮在文件夹主题背景修复之外，完成以下调整并统一发布版本为 `v1.5.2 / 27`：

- **应用分身图标**：清理厂商 `getUserBadgedIcon`、旧微信专用角标和 Launcher 自绘面具可能重复叠加的路径。当前以主用户原始应用图标为底图，只绘制一层锤子风格面具，并调整面具轮廓、尺寸和位置；应用分身设置入口恢复使用原来的设置图标。
- **桌面与文件夹文字**：桌面标签略微增大，文件夹内标签保持更小的层级；两处使用一致的字体绘制基线。文件夹内标签显式清除阴影，修复文字重影和模糊。
- **搜索手势**：自绘搜索页采用完整 `DOWN / MOVE / UP` 位移、方向、时长和阈值判断，缩短有效下滑的触发距离；同时停用 SMEngine 中遗留的上滑搜索入口。当前只有明确的桌面下滑手势可以打开搜索页，上滑、点击和轻微抖动不应触发。
- **在线图标库**：取消旧锤子图标服务器依赖，按应用包名访问 `icons/drawable/<package>.png`。优先使用 Gitee 下载镜像，失败后回退 GitHub；下载在后台执行并写入应用私有缓存，包含失败缓存、文件大小与图片尺寸校验。仓库现有 2209 个图标及索引，在线资源不会增加 APK 体积。
- **跨品牌系统图标**：新增受系统应用身份约束的类别映射。不同厂商的相机、相册、浏览器、联系人、短信、邮件、计算器、文件管理、指南针、录音、音乐、视频、天气、便签、设置、安装器和 SIM 工具包可映射到统一的锤子在线图标；日历和时钟保留动态实现，第三方同名应用不参与映射。
- **系统图标识别补充**：部分厂商预装应用实际位于 data 分区，不能只依赖 `FLAG_SYSTEM`。现改为精确显示名称优先，并允许 Android、OPPO/realme、一加、小米、vivo、华为/荣耀和三星系统命名空间参与包名/Activity 识别；补齐软件商店、云服务、手机管家、钱包和语音助手。电话本/联系人优先于拨号包名判断，避免共用 `com.android.dialer` 一类包时被套成电话图标。缓存升级到 v3，清除旧的未命中结果。
- **在线图标自动刷新**：缓存写入采用 2 秒静默期合并刷新；刷新完成后不会永久锁死，后续下载批次仍可再次通知桌面，因此不再要求用户切换主题或重开“改进版图标”。刷新始终不阻塞首次桌面初始化。
- **跨 ROM 主题切换**：普通主题不再只把切换消息保存在进程静态字段后提前返回，而是先将主题 ID 写入 Launcher 两套私有配置并调用原版主题栈，再发送动画消息。这样 vivo/OriginOS 即使回收旧进程，新 Launcher 也能从持久化主题恢复。正常切换不再无条件追加第二次进程重建，避免连续播放两轮加载动画；透明主题等确实需要重启的路径仍会先安排精确 HOME PendingIntent，再结束旧进程。
- **电话本图标优先级**：厂商拨号器可能使用同一包提供拨号和电话本两个 Activity。联系人类别识别已提前到 package-wide packed icon 之前，显式自定义图标仍保持最高优先级；“电话本 / 联系人 / 通讯录”会直接使用联系人图标，不再被整包电话图标抢先覆盖。
- **电话/联系人最终渲染分流**：对照 maintained `97ff218`，图标包的三参数匹配禁止拨号 Activity 回退到联系人包级映射；桌面节点刷新同时传入 `ItemInfo.title`，按“桌面标题 > Activity > 包名”识别电话、拨号、电话本、联系人和通讯录，阻止异步刷新再次把电话本覆盖成电话。
- **原版解锁动画跨 ROM 触发**：确认动画控制器、9/12/16/20 宫格颜色资源和 `USER_PRESENT` 播放链路均属于 Launcher 主 APK。动态接收器监听标准 `SCREEN_OFF` 并映射到原版 `action_keyguard_on` 完成锁定预初始化；部分 ColorOS 可能不向默认 HOME 派发该广播，因此保留生命周期兜底。旧的“握手时间取消生命周期兜底”已废弃；当前唯一可信去重规则见 2026-07-18 的 `unlockGeneration` 记录。
- **解锁动画与临时桌面状态隔离**：修复更换主题后立即锁屏，解锁时再次执行主题切换动画的问题。主题应用原先同时通过原版主题栈和额外静态消息各派发一次 `MESSAGE_CHANGE_THEME`，第二条消息可能滞留到解锁后；现仅在原版主题栈失败时使用额外消息兜底，并在主题过渡保护期内跳过解锁场景重建。修复文件夹打开状态锁屏后解锁导致 GL 线程空上下文崩溃、Launcher 进程重启的问题；解锁前检测当前 FolderController，文件夹打开时保留现有场景，不初始化解锁动画。ADB 实测主题场景无重复 `MESSAGE_CHANGE_THEME`，文件夹场景 PID 不变且无 `FATAL EXCEPTION`，普通桌面锁屏仍正常播放解锁动画。
- **软件更新版本判断与弹窗排版**：更新检测由“版本字符串只要不相等就提示更新”改为语义版本比较，线上版本必须严格高于本地版本才显示下载提示，避免 v1.5.2 错误提示降级到 1.5.1。更新说明不再截断为 120 字；短内容弹窗按内容收紧，中等内容随正文增高，超过安全高度后正文进入可滚动区域。
- **首帧桥接闪退修正**：首次接入组件级加载时误把 `J`（ActivityProxy普通对象）直接作为 `Context` 传给Java桥，Smali可编译但ART会在运行时触发类型校验失败。现先调用 `J.getContext()` 获取真实Context后再调用 `loadIconForComponent()`。
- **改进版开关时序**：先更新所有应用的改进版选择状态并重载配置，再发送数据库与图标刷新，修复旧顺序先刷新、后写状态造成第一次开关仍显示旧图标的问题。
- **初始化阻塞与下载速度修复**：所有图标加载路径只同步读取内存和磁盘缓存，网络请求统一提交到 6 个有限并发任务的独立线程池；连接与读取超时缩短，单个镜像不可达时快速尝试备用地址。Launcher 模型线程不再等待网络超时。
- **版本维护**：新增 `tools/set_launcher_version.py`，用于同步文本 Manifest、设置页版本字符串和保留的二进制 Manifest，避免构建末尾注入旧清单导致最终 APK 版本回退。

文档核对结果：

- 旧记录中的“下滑 / 上滑搜索”是阶段性描述，已纠正为“下滑搜索”；当前上滑入口已明确禁用。
- 应用分身应以 2026-06-29 的“主用户原始图标 + 单层 Launcher 面具”为可信基线；更早关于 `getUserBadgedIcon` 或 QuickLaunchItem 主方案的记录仅代表历史尝试。
- 文件夹普通主题背景不是新增 drawable 资源表项，而是从 `assets/folder_theme_bg/` 直接读取；透明主题继续使用原版模糊背景链路。

验证要求：

- `build.bat` 完整构建后，使用 `aapt2 dump badging` 确认 `versionName='v1.5.2'`、`versionCode='27'`。
- 冷启动检查首帧图标尺寸；分别验证桌面下滑、上滑、点击和短距离抖动；检查普通主题与透明主题文件夹背景、文件夹标签清晰度及应用分身单面具显示。

### 2026-06-29

#### 应用分身落桌面与通知角标生命周期修复

问题与根因：

- 应用分身设置页能发现并开启微信分身，但原版 `EVENT_USER_PACKAGE_ADDED` 处理器读取参数中的真实 userId 后没有保存结果，后续仍把查询、`ItemInfo.userId` 和启动目标硬编码为 user 10。小米等使用 user 999/其他 profile 的分身因此不会写入桌面。
- 横扫清除只保存 suppressed 通知 key，没有把 `COUNTS` 中的持久化数字改为 0。Launcher 进程或桌面场景重建时，`BadgeBridge.replay()` 会重新广播旧数字。
- 企业微信等应用会复用同一个通知 key 更新内容。只按 key 抑制会把后续新通知永久当作旧通知，出现第一次显示、以后不再刷新的现象。
- 打开应用后，如果应用自身没有撤销通知，监听器仍会把活动通知重新统计出来；原版桌面期望从桌面点击应用时先清除该应用当前角标。

修复：

- 分身数据库事件完整保留设置页发现的真实 userId，查询对应用户、写入 `ItemInfo.userId` 并通过 `LauncherApps.startMainActivity(component, realUserHandle, ...)` 启动；反射 `startActivityAsUser` 只保留为旧 ROM 兜底。
- OPPO Android 12 复测表明，仅修正原版 `EVENT_USER_PACKAGE_ADDED` 的 userId 仍不可靠：该事件需要再次按目标用户查询 `ResolveInfo`，部分 OEM 对第三方 Launcher 返回空结果，因此开关已开启但桌面没有新增项。
- 对照 `rianlu/smartisan-launcher-maintained` 的 `ProfileAppsSettingsActivity` 后，分身开关改为直接安装/卸载 profile 快捷方式：快捷方式目标是 Launcher 内 `StartActivityForSearch`，URI 保存 `package / activity / profileSerial`，点击时再由 `LauncherApps` 启动真实 profile。该路径不依赖第二次 Launcher 数据扫描。
- 当前 v26 基线的快捷方式处理器原本只允许微信/支付宝等少量包且只把 user 10 写入 `ItemInfo`；已调整为接受设置页明确创建的 profile 快捷方式，并从 `extra_uid` 还原任意正数 userId。已启用分身在 Launcher 启动同步时也会补发快捷方式安装，升级 APK 后无需先关闭再开启开关。
- 所有 `userId > 0` 的分身图标继续统一经过 `doppelgangerIconBytes()`，叠加同一套原版面具标记，不限定微信或 user 10。
- 通知抑制标识改成 `notification key + postTime`，只屏蔽被清除的那一轮通知；同 key 的后续新发布/更新会重新计数。
- 横扫和应用点击清除时同步保存 `COUNTS=0` 并立即广播 0，Launcher 重建后不会重放旧数字。
- 桌面/搜索启动第三方应用前调用 `BadgeBridge.onPackageLaunched()` 清除该应用当前角标；通知真正移除或后续新通知到达时，监听器继续按实时状态刷新。
- `BadgeBridge.replay()` 在已有通知使用权时主动请求重新绑定监听服务，改善强行停止、覆盖安装或 ROM 后台限制解除后监听器没有及时恢复的问题。

验证与限制：

- `build.bat` 完整通过，BlackBerry 用户 0 真机覆盖安装与 Launcher 冷启动成功，无 `FATAL EXCEPTION` / `VerifyError`。
- 当前连接设备没有第二 profile，微信分身写入、面具显示和正确 profile 启动仍需在原问题手机复测。
- BlackBerry 日志显示该 ROM 在应用处于 restricted/force-stop 状态时会拒绝绑定通知监听；启动 Launcher 后通过主动 rebind 恢复。其他 ROM 仍需确保已授予通知使用权，并避免系统长期冻结 Launcher。

涉及文件：

- `launcher/smali/com/smartisanos/launcher/data/A.smali`
- `launcher/tools/java/com/smartisanos/launcher/theme/MaintainedLauncherSettingsHost.java`
- `launcher/tools/java/com/smartisanos/launcher/badge/BadgeBridge.java`
- `launcher/tools/java/com/smartisanos/launcher/badge/SmartisanBadgeListenerService.java`

#### 应用分身诊断日志与角标隐藏开关修复

文档校对补充（当前可信结论）：

- 本仓库当前关于“应用分身”的可信修复基线，应以 `2026-06-28：通用应用分身管理、首次加载和搜索启动` 与本节为准；更早的 `2026-06-06` 记录只可作为历史背景，不可再直接当成当前实现说明。
- 历史记录里曾出现过“分身开关改为直接安装 / 卸载 profile 快捷方式”的阶段性方案，但该方案随后已被本节上方记录明确撤销；当前正式链路仍是恢复并修正原版 `EVENT_USER_PACKAGE_ADDED / REMOVED` 应用项数据库路径，而不是长期依赖 `QuickLaunchItem` 模拟分身。
- 历史记录里还写过“分身图标会走 `PackageManager.getUserBadgedIcon` 和当前工程的面具绘制兜底”。这在当时是阶段性描述，但对 OPPO / ColorOS 等 ROM 会产生厂商角标 + 锤子面具叠加、甚至与旧微信专用 `wechat_shortcut` 叠加的双面具问题。当前可信规则是：优先读取主用户原始 Activity / Application 图标，只叠加一层锤子风格面具，不再把 `getUserBadgedIcon` 当作当前标准链路说明。
- 防回归时必须同时检查三条链路是否只保留一套面具来源：`LauncherApps/桌面应用项生成`、`ItemInfo.iconData -> doppelgangerIconBytes()`、`快捷方式/搜索图标生成`。如果其中两条以上同时叠加面具，就会再次出现双面具或厂商角标混入。

- 根据 OPPO user 999 诊断日志撤销“用 QuickLaunchItem 模拟分身”的主方案：日志显示快捷方式安装/卸载调用虽然返回成功，但点击从未进入 `PROFILE_LAUNCH`，且旧条目因 package/user/shortcutId 不同无法被新版删除。恢复原版 `EVENT_USER_PACKAGE_ADDED/REMOVED` 应用项链路，只在用户明确启用或已启用项的轻量恢复阶段触发，不恢复首次启动全量扫描。
- 原版新增分身处理器已支持从事件参数读取动态 userId；本轮继续将删除处理器从固定 user 10 改为读取事件中的 userId，因此 OPPO 999、小米/工作资料等其他 profile 均按真实用户删除。
- 启用/关闭分身前会清理历史版本创建的 `com.tencent.mm`/Launcher 包名、user -1/0/真实 profile user 下的无效快捷方式；随后创建的是 `itemType=应用`、真实 userId 的桌面项。图标走普通 user 0 的锤子主题图标链路后叠加面具，点击走 `LauncherApps.startMainActivity(component, profile)` 启动系统现有分身。
- 对照 `rianlu/smartisan-launcher-maintained`：其设置页通过 `LauncherApps.getProfiles/getActivityList` 发现分身，并以 `componentName#profileSerial`/profile serial 区分身份；当前移植保留相同的动态 profile 发现思想，但复用本版本已经存在的原版 user-package 应用项数据库链路，以匹配当前 `QuickLaunchItem`/DatabaseUpdater 数据结构。
- 修复“隐藏图标上的角标”仍显示：原版 `data.O` 仍直接读取 `Settings.System.launcher_hide_badge`，普通 APK 无系统设置写权限，重新加载时会把隐藏状态覆盖为 false。两个原版读取点均改用 `LauncherSettingBridge.readBool`，统一读取应用内持久化设置；切换后同时调用 `Eb.ii()` 更新已有 SceneNode，并在图标刷新结束后再次同步，确保现有角标立即消失而非只影响新建图标。
- OPPO 实机截图进一步确认：旧快捷方式错误地把桌面自身的中转 Activity 标记为 user 999，导致系统尝试在未安装 Launcher 的分身用户中启动中转页，点击无响应。现改为快捷方式归属 user 0，由中转页再通过 `LauncherApps.startMainActivity` 启动真实 user 999 应用，并增加 `startActivityAsUser` 反射兜底及启动结果日志。
- 分身图标不再使用 ColorOS 已经套过圆框和厂商分身角标的 `LauncherActivityInfo` 图标；优先读取 user 0 的原始 Activity/Application 图标，只叠加锤子面具角标。安装正确快捷方式前会先清理旧版无效条目。
- OPPO ADB 日志显示通知监听授权后曾发生 `binding died`，打开系统设置只是间接触发重新绑定。Launcher 每次恢复时现主动检查授权、请求 `NotificationListenerService.requestRebind` 并重放角标，无需再次点击“前往设置”。
- 分身诊断新增 profile 数量、userId、serial、LauncherActivityInfo 数量、组件名、开关状态、快捷方式 URI、直接处理/广播兜底结果及异常记录。
- 分身快捷方式安装/删除优先在桌面进程内反射调用原版 `com.smartisanos.launcher.a.L` 处理器，避免 OPPO 等系统拦截或延迟自发快捷方式广播；直接调用失败时仍保留定向广播兜底。
- “隐藏图标上的角标”不再只保存设置值：切换时直接同步 `Constants.SHOW_MESSAGE_FLAG = !hidden` 并刷新桌面，Launcher 每次恢复前也重新应用持久化值，避免进程重建后失效。
- 验证：`build.bat` 完整通过，输出 `build/launcher-signed.apk`；当前没有连接 ADB 设备，OPPO 分身和角标交互需真机验证。

### 2026-06-28

#### 普通 Android 通知角标与横扫清除

- 原版机制确认：Smartisan 系统通过 `com.smartisanos.launcher.new_message` 携带包名、组件、UID 和计数，Launcher 将其写入 `ItemInfo.messagesNumber`，再由 `g.qb(count)` 生成数字纹理；文件夹汇总和横扫动画均属于 Launcher 内部能力，并不依赖 Smartisan ROM。
- 新增 `SmartisanBadgeListenerService`，使用 Android 公共 `NotificationListenerService` API 监听通知新增、更新和移除，并在连接时通过 `getActiveNotifications()` 全量恢复。按 `packageName + uid` 隔离主用户/分身，按通知 key 去重，过滤 Launcher 自身、ongoing 通知、禁用 badge 的通知渠道和有子通知时的 group summary。
- 计数优先使用通知提供的 `Notification.number`，否则每条有效通知计 1，最高限制 999；结果转换为原版 `new_message` 广播，因此原版绘制、数据库、文件夹汇总和隐藏角标开关无需重写。
- 角标快照写入 Launcher 私有偏好，Launcher `onResume()` 会重放，解决通知监听服务已常驻但桌面动态广播接收器稍后才注册造成的计数丢失。
- 强迫症选项在“隐藏图标上的角标”下新增“紧贴屏幕横扫清除角标”开关，并增加“通知使用权”入口；首次开启横扫且尚未授权时也会跳转系统授权页。通知使用权必须由用户手动授予，应用不能静默获取。
- 横扫继续执行原版 `Yh() -> wx()` 动画和本地数据库归零，同时记录当时存在的通知 key。旧通知继续留在通知栏也不会马上把角标顶回来；只有出现新的通知 key 才重新计数。横扫不会擅自删除系统通知。
- 文本 Manifest 和最终注入 APK 的二进制 Manifest 均注册通知监听服务；新增 `tools/patch_badge_service_manifest.py` 用于向保留的 AXML 清单安全追加服务节点，避免只改文本 Manifest 导致最终 APK 丢失服务。

验证：

- `build.bat` 完整通过，Java 监听服务编译进 `classes2.dex`，APK 使用 v1/v2/v3 签名。
- `aapt2 dump xmltree build/launcher-signed.apk --file AndroidManifest.xml` 确认最终二进制清单包含 `SmartisanBadgeListenerService`、`BIND_NOTIFICATION_LISTENER_SERVICE` 和正确的 service action。
- 当前连接设备覆盖安装成功；`dumpsys package` 确认系统识别通知监听 service intent filter；真机进入“强迫症选项”确认“隐藏图标上的角标”下方显示“紧贴屏幕横扫清除角标”。
- 仍需用户在目标机手动授予通知使用权后，用微信、短信等实际通知完成数字变化、通知移除、文件夹汇总和横扫后新通知恢复四项动态验收。

#### Moto G100 Android 16 启动兼容、页面锁搜索刷新与 v1.5.1

问题与根因：

- Moto G100 升级 Android 16 后 Launcher 无法正常启动。`ja` 构造阶段会实例化继承隐藏接口 `android.app.IActivityObserver$Stub` 的观察器；该 Smartisan 私有系统接口在普通 Android 16 ROM 上不可用，应用会在初始化阶段失败。
- 搜索启动此前在无法从 favorites 数据库确认 App 所属页面时直接按“已锁定”处理。取消页面锁后页面映射可能暂时查不到，因此搜索打开仍错误弹出密码页。
- 文本 Manifest 已写 `v1.5.1 / 26`，但构建末尾注入的二进制 Manifest 和设置页版本仍停留在 `v1.4.9 / 24`，导致最终 APK 版本被覆盖。

修复：

- 在 `launcher`、`clean_launcher`、`clean_launcher_raw` 三份 `ja.1.smali` 中不再创建 `IActivityObserver` 实例，将 `nh` 初始化为 `null`，避开 Android 16 对已移除/不可访问隐藏接口的初始化失败；保留其余广播与桌面初始化流程。
- 搜索启动不再依赖 favorites 查询失败后的“默认锁定”兜底，而是从原版页面容器 `fa.Ua(packageName)` 实时取得 App 单元格，经 `g.Af()` 找到所属页面，再用原版 `M.On()` 判断页面当前是否锁定。原版状态中 `M.Nn()` 是隐藏页（`yI == 1`），`M.On()` 才是锁定页（`yI == 2`）；原版页面点击也只有 `On()` 分支会调用 `Zp()` 验证密码。只有明确处在锁定页面时进入密码页，解除页面锁后下一次搜索启动会直接读取新状态并放行。
- 版本三个写入点统一为 `v1.5.1 / 26`，并在构建后通过 `aapt2 dump badging` 核对最终 APK。
- `.gitignore` 放行根目录 `build` 和本次新增的 maintained 彩色隐私密码锁图标、黑色键盘图片，确保这些产物可以提交到 GitHub，同时避免把其余历史图片资源全部误列为新文件。

验证：

- `build.bat` 完整构建、资源编译和签名通过。
- `aapt2 dump badging build\launcher-signed.apk` 确认 `versionCode='26'`、`versionName='v1.5.1'`、`compileSdkVersion='36'`、`targetSdkVersion='28'`。
- 2026-06-28 用户安装到真机后完成最终回归：锁住板块时，从自绘搜索结果点击该板块内 App 会进入数字密码页；解除板块锁后，再从搜索点击同一 App 会直接启动，不再误弹密码。两条路径均确认正常。

防回归规则：

- 不要把 `M.Nn()` 当作页面锁状态；它表示隐藏页。页面锁必须检查 `M.On()`。
- 不要恢复“找不到 App 页面就默认要求密码”的逻辑，否则解除锁、数据库尚未同步或桌面未完全初始化时会误拦普通搜索启动。
- 不要让搜索结果缓存一个独立的 `locked` 布尔值。每次点击搜索结果时都应重新执行 `fa.Ua(packageName) -> g.Af() -> M.On()`，以当前桌面页面对象为准。
- 不要在 `ConfirmPasswordActivity` 中判断 App 是否属于锁定页面；该 Activity 只负责密码输入和验证，是否需要进入它由搜索启动入口决定。
- 修改这段链路后必须同时回归两种状态：`锁住板块 -> 搜索打开 -> 必须验证密码`，以及 `解除板块锁 -> 搜索打开 -> 必须直接启动`。

涉及文件：

- `launcher/smali/com/smartisanos/launcher/ja.1.smali`
- `clean_launcher/smali/com/smartisanos/launcher/ja.1.smali`
- `clean_launcher_raw/smali/com/smartisanos/launcher/ja.1.smali`
- `launcher/tools/java/com/smartisanos/launcher/theme/MaintainedLauncherSettingsHost.java`
- `launcher/AndroidManifest.xml`
- `launcher/original/AndroidManifest.xml`
- `launcher/tools/maintained_settings_res/res/values/strings.xml`
- `.gitignore`

#### 通用应用分身管理、首次加载和搜索启动

问题与根因：

- 工程原先已有零散的 `userId`、分身角标和 `LauncherApps` 兼容代码，但补录任务首次延迟 12 秒，而且没有稳定参与桌面模型第一次扫描。首轮桌面加载完成后才把分身写入数据库，因此微信分身通常要完全退出 Launcher、第二次启动才显示。
- 旧实现混用 `UserManager.getUserProfiles()`、常见用户 ID 猜测和反射构造 `UserHandle(id)`；搜索又把 `LauncherActivityInfo` 转成 `ResolveInfo` 后从 UID 反推用户。不同 ROM 的分身用户 ID 并不固定，容易只对微信或某个厂商的 user 10/999 偶然有效。
- 原版搜索 URI 只保存包名和组件名，主应用与分身组件相同时无法表达目标 profile；直接 `startActivity()` 会打开主应用。

实现：

- 统一通过 `LauncherApps.getProfiles()` 获取系统实际暴露的 profile，再对每个非当前用户调用 `LauncherApps.getActivityList(null, userHandle)`。没有写死微信、淘宝、京东、拼多多、支付宝或 QQ 包名，系统暴露的所有 Launcher Activity 都可进入同一逻辑。
- 分身记录同时保留 `ComponentName`、真实 `UserHandle`、Launcher 数据库使用的 `userId` 和 `UserManager.getSerialNumberForUser()` 返回的 profile serial。设置偏好和搜索历史键使用 `serial + component`，主应用与分身不会因包名/组件名相同而覆盖。
- 分身改为默认全部关闭。没有任何分身被用户启用时，桌面模型直接返回普通应用列表，不调用 `LauncherApps.getProfiles()`，避免为默认隐藏的功能增加冷启动等待。只有进入“应用分身”设置页时才枚举系统 profile。
- 桌面设置新增“应用分身”入口。页面异步列出所有 profile 应用并提供默认关闭的开关；打开时保存 `serial + component` 状态，发送原版用户包新增/变更事件并刷新桌面。启用过分身后，后续桌面启动才会参与 profile 枚举，并保留立即、2 秒、8 秒重试。关闭时发送 `EVENT_USER_PACKAGE_REMOVED` 并刷新数据库、桌面和搜索。没有额外 profile 或接口不可用时显示正常提示。
- 当前自绘搜索直接从 profile 枚举追加分身结果，不依赖桌面数据库是否已完成首轮补录。分身搜索项保存真实 `UserHandle` 和 serial，点击后使用 `LauncherApps.startMainActivity(componentName, userHandle, null, null)`；普通应用仍使用原来的 `Activity.startActivity()`。
- 原版 `SearchProvider` 生成分身结果 URI 时，根据 `ItemInfo.userId` 找到对应 profile 并追加第三段 serial；`StartActivityForSearch` 优先解析第三段，通过 `UserManager.getUserForSerialNumber()` 还原 `UserHandle` 后调用 `LauncherApps.startMainActivity()`。两段 URI 的普通应用保持原启动方式。
- 页面锁搜索判断继续按 `ItemInfo.userId` 区分同包主应用和分身。分身位于锁定板块时，密码验证完成后也使用保存的 profile serial 启动真正的分身，不会落回主应用。

防回归规则：

- 不得按 `packageName + componentName` 单独去重分身，唯一键必须包含 profile serial 或真实用户标识。
- 不得用固定 user 10/999/888 列表代替 `LauncherApps.getProfiles()`；固定 ID 只能作为旧 ROM 兼容兜底，不能作为主发现路径。
- 分身启动必须使用 `LauncherApps.startMainActivity()` 和发现时保存的 `UserHandle`。不要用普通 `startActivity()`，也不要只依赖反射构造 `UserHandle`。
- 不得让默认关闭状态在桌面冷启动时扫描 profile；只有至少一个 `serial + component` 被明确启用后，桌面模型才允许枚举和短延时重试。
- 设置开关、桌面数据库、当前自绘搜索和旧 SearchProvider URI 必须使用同一份启用状态；关闭分身后不能只隐藏设置行或只删除桌面图标。
- 修改页面锁链路时必须分别验证主应用和同包分身，不能因为包名相同而共用错误的页面锁状态。

验证：

- `build.bat` 完整通过，包括 maintained 设置资源、apktool smali、Java/classes2.dex、zipalign 和签名。
- 当前连接的 BlackBerry 设备覆盖安装成功；该设备只有用户 0，可确认无 profile 调用不会导致安装或 Launcher 启动崩溃。
- 初版 SearchProvider serial 补丁曾错误复用仍保存 `ResolveInfo` 的 `v10`，导致 Android Verifier 报 `VerifyError`，Launcher 在安装 ContentProvider 阶段无法启动。已改用后续会被重新赋值的 `v12` 暂存 `userId`，保留 `v10` 的引用类型；此类 smali 修改必须通过真机冷启动验证，不能只以 apktool 构建成功作为验收。
- 修正后通过 ADB 覆盖安装并执行 `am force-stop` 后冷启动 `.Launcher`：Activity 启动成功、Launcher 进程持续存活且保持前台，logcat 中无 `FATAL EXCEPTION`、`VerifyError` 或 Launcher 崩溃记录。
- Android 16 多 profile 真机仍需完成最终动态验收：微信、淘宝、京东、拼多多首次发现，设置开关即时增删，搜索命中并打开正确分身，以及主应用/分身共存。

涉及文件：

- `launcher/tools/java/com/smartisanos/launcher/theme/MaintainedLauncherSettingsHost.java`
- `launcher/smali/com/smartisanos/launcher/data/SearchProvider.smali`
- `launcher/smali/com/smartisanos/launcher/StartActivityForSearch.smali`
- `launcher/tools/maintained_settings_res/res/layout/setting_main.xml`
- `launcher/tools/maintained_settings_res/res/values/strings.xml`
- `launcher/tools/maintained_settings_res/res/values-zh-rCN/strings.xml`

#### 跨 ROM 安装、首次启动与下滑搜索性能收口

问题与根因：

- 小米 / HyperOS 安装返回 `-112 (INSTALL_FAILED_DUPLICATE_PERMISSION)`。二进制 Manifest 仍声明 7 个原版锤子私有权限，其中一个错误占用 `android.permission.*` 命名空间；手机上存在同名权限但签名不同时会在安装阶段直接拒绝 APK。
- 新安装没有保存过 `ro.build.date.utc`，原版逻辑把空值与当前系统构建时间不一致误判为 OTA。首次建库生成图标后，OTA 路径立即删除全部图标和阴影缓存并再次生成，造成重复 I/O、解码和数据库写入。
- 原版固定 user 10 的分身事件路径会在未启用任何分身时逐包查询第二用户，普通 ROM 上查询全部失败却仍消耗十几秒。
- 自绘搜索页此前在 `setContentView()` 前同步枚举所有 Launcher Activity 并读取全部名称、图标和 profile，导致页面本身延迟数秒；改为异步后，常用图标仍要等待完整索引完成才一起显示。

修复：

- 7 个应用内部 signature 权限统一迁移到 `com.ranhf.smartisanlauncher.permission.*`，同步文本 Manifest、保留的二进制 Manifest、Provider 权限引用、Smali 常量和预装完成广播权限。新增 `tools/patch_manifest_internal_permissions.py`，避免以后重新处理二进制清单时恢复冲突权限。
- 首次建库与 OTA 刷新设为互斥：首次安装只生成一次图标；已有数据库且系统构建时间确实变化时仍执行 OTA 缓存刷新。
- 原版分身包事件增加已启用记录与真实第二 profile 双重门禁；没有用户明确启用的分身时不枚举 profile，也不进入固定 user 10 的逐包处理。
- 搜索页先绘制搜索框并弹出键盘，完整应用索引在 `launcher-search-loader` 后台线程生成。
- 最终取消搜索框下方的常用应用图标区，避免搜索页首帧后再补图标造成明显的二次跳变；完整应用、历史和已启用分身索引仍在后台生成，用户输入搜索时继续覆盖全部应用。
- 强迫症选项里的通知使用权提示把中文“前往设置”/英文“Tap to configure”单独改为蓝色下划线链接样式，并把跳转范围严格限制在链接文字本身。
- 通知使用权提示移动到“隐藏图标上的角标”开关正下方；底部上扫说明继续跟随“紧贴屏幕横扫清除角标”开关，避免权限说明与手势说明归属混淆。
- 设置页交互按控件类型收口：所有 `SettingItemSwitch` 行（含动态创建的透明主题、壁纸模糊、应用分身和改进版图标）取消整行点击，只触摸右侧 `SwitchEx` 滑块才切换；通知权限只点击蓝色下划线“前往设置”文字才跳转；“图标包”“桌面图标大小”等带右箭头的导航标签保持整行任意位置可点击。
- 安装兼容静态审计补齐 5 个旧组件的显式 `android:exported="true"`：Launcher、PinShortcutActivity、LauncherReceiver、DataSyncReceiver、DataDumpReceiver。文本与二进制 Manifest 已同步，避免部分 HyperOS / OriginOS / Android 16 安装器把缺省 exported 判为 `MANIFEST_MALFORMED`。
- “检查更新”结果与新版本确认弹窗改为接近屏幕可用宽度的锤子式圆角卡片：标题居中，版本信息和更新说明统一左对齐，正文增加左右留白与行距，底部继续使用细分割线和分栏按钮；普通确认弹窗保持原尺寸与对齐方式。

验证：

- `build.bat` 完整通过；APK 的 v1/v2/v3 签名和 16KB zipalign 检查通过。
- BlackBerry 真机覆盖安装成功；冷启动 Activity 显示约 `1.284s`，含进程拉起总计约 `2.235s`，无分身全包扫描和 `FATAL EXCEPTION`。
- 自绘搜索 Activity 冷启动显示约 `254ms`；完整索引继续后台加载，不阻塞搜索页首帧。
- 最终 APK 确认 `minSdk=23 / targetSdk=28 / compileSdk=36`，包含 arm64-v8a、armeabi-v7a、armeabi、x86、x86_64；自定义权限已使用独有命名空间，带 intent-filter 的旧组件已显式 exported。目前静态审计未发现新的通用安装阻断项。
- 小米 17 的 `-112` 修复需在对应设备重新安装最终 APK 完成最终确认；若仍失败，应使用 `adb install` 保存 PackageManager 返回的冲突权限或冲突包名。

涉及文件：

- `launcher/AndroidManifest.xml`
- `launcher/original/AndroidManifest.xml`
- `launcher/smali/com/smartisanos/launcher/data/A.smali`
- `launcher/smali/com/smartisanos/launcher/ja.1.smali`
- `launcher/tools/java/com/smartisanos/launcher/theme/MaintainedLauncherSettingsHost.java`
- `tools/patch_manifest_internal_permissions.py`
- `tools/patch_manifest_exported_components.py`

### 2026-06-26

#### 隐私密码页宽度、黑色键盘和搜索解锁链路

- 隐私密码页改为复用主设置项的全宽九宫格背景尺度，“修改密码”不再额外套左右内容边距；底部“关闭密码”保持红色操作按钮，但按主设置卡片可见边缘对齐，并继续和“修改密码”同屏显示。
- 对照 maintained 版搜索页 T9 键盘确认原版按下反馈由 action-down 状态触发并重绘。内置数字键盘现在在 `ACTION_DOWN` 立即 `setPressed(true)`、输入数字、播放点击音和触感反馈，在 `ACTION_UP/CANCEL` 清除 pressed，避免之前触摸事件被消费后 selector 没有按下态。
- 浅色隐私密码验证页继续使用 maintained 设置资源里的 `btn_0_classic_normal` 到 `btn_9_classic_normal`、删除和收起按钮资源；黑色板块锁页因没有对应黑色数字键资源，改为同一套键位逻辑的黑底白字按钮，并提供更明显的按下亮态。
- 搜索结果启动锁定板块内 App 时先进入 Launcher 内置黑色数字密码页，验证成功后再启动目标 App；直接点锁定板块的 requestCode 21 也统一走同一套黑色密码页，取消后会结束本次验证状态，避免再次点击无反应。
- 追加修正：首次设置页面密码的 requestCode 20 也改为启动 `ConfirmPasswordActivity` 的全屏黑色数字键盘，不再弹旧 AlertDialog；黑色键盘资源由白色锤子 `btn_*_classic_normal.9.png` 保留九宫格边框后反色生成 `btn_*_classic_dark.9.png`；由于按下视觉态在当前兼容层里观感仍不够跟手，黑白键盘均取消视觉 pressed 变色，只保留按下即输入、点击音和触感反馈。
- 追加修正：隐私密码页的分组标题和“修改密码”文字左边距统一回 maintained 设置页 `setting_item_text_left` 的 30dp 体系；“关闭密码”按钮高度改为 72dp，左右边缘按设置项可见边缘重新对齐。设置首页“隐私密码”图标由通用齿轮改为基于页面锁动画素材制作的灰银锁图标 `privacy_password_lock_icon.png`，保持锤子设置页的拟物灰度风格。
- 追加修正：主设置页 Java 绑定层此前仍把“隐私密码”入口图标覆盖为 `launcher_settings`，现同步改为 `privacy_password_lock_icon`；“关闭密码”按钮高度从 72dp 收回 64dp，使可见高度更接近上方“修改密码”项。新增 `docs/development/CLEANUP.md`，记录可删除/需谨慎处理的构建产物、反编译目录和被 `.gitignore` 忽略的新 PNG 资源。
- 追加修正：`privacy_password_lock_icon.png` 从灰银系统感图标改为蓝绿色底座、金色锁体、红色提示点的彩色拟物锁图标，更贴近设置首页其他锤子风格彩色图标。角标链路对照：当前 original-port 仍有旧版 `com.smartisanos.launcher.P` 广播接收 `com.smartisanos.launcher.new_message` 并读取 `extra_packagename / extra_componentname / extra_uid / extra_message_count`，再调用 `Aa.a(..., count)` 更新 `ItemInfo.messagesNumber`；maintained 原版 `LauncherModel` 额外兼容 `badge_count_*`、HTC、Sony 等第三方角标字段，`ApplicationProxy` 还注册 `launcher_hide_badge / launcher_badge_swipe_clean` 观察者，通过 `LauncherPreferences` 刷新 `Constants.SHOW_MESSAGE_FLAG / ENABLE_SWEEP_MESSAGE_FLAG`，`Cell.updateFlagMessageNumber()` 根据计数创建或清除 `mFlagMessageRect`。本轮只记录差异，未改角标逻辑。
- 验证：`build.bat` 已通过 maintained 设置资源构建、apktool smali、Java 兼容层编译和签名，输出 `build\launcher-signed.apk`。

### 2026-06-25

#### 日历编辑页灰度最终回归记录

- 可工作的灰度基线是 `3b973b589338b963d5b39a82e1937922577b3f4e`。该版本进入桌面编辑页后，点击底部 Dock 左下齿轮进入“已选择 [0/12] 个应用程序”页，日历会和其他图标一样走静态图层灰度。
- 后续尝试在 `view/a/g.1.smali` 新增 `showCalendarActiveIconOnly()`、或在静态纹理绑定后按 `ItemInfo.Te()` 隐藏日历静态前景，会破坏这条灰度链路：灰度静态层被隐藏，彩色活动日历层留在最上面，导致设置页日历始终红白彩色。
- 最终方案：`view/a/g.1.smali`、`ItemInfo.smali` 的日历图层状态回到 `3b973b5` 行为；只在 `view/activeicon/m.smali` 覆盖 `d([B)` / `o(Bitmap)`，把静态图标替换为合成日历 bitmap，并同步日期矩形比例。这样普通桌面没有双层错位，编辑设置页仍能正常变灰。
- 本轮核对：文件夹对齐相关 `LayoutPropertyAdapter.centerFolderPreview()`、`folder_icon_center_offset_*`、打开文件夹只作用文件夹页的规则未被修改；图标大小相关 `normalizeLauncherIcon()`、`normalizeImprovedIcon()`、`maybeApplyLauncherIconSize()`、50%-150% 保存后完整重启 Launcher 的链路仍保留。日历回退时误带出的 `e/s.smali` 图标 override normalize 调用已补回。
- 毛玻璃主题已改为只保留 `smartisan_theme_aero` 作为透明壁纸主题，移除白雾主题入口和资源引用；毛玻璃桌面与编辑页文字已恢复为原版风格白色文字效果。
- 透明主题切换已从自定义运行时旁路改回原版方向：透明模式写入 `launcher_grid_theme` 的 0/1，普通主题 ID 只写入 `launcher_theme`；透明主题包只用于资源注册，不再把 `smartisan_theme_trans` 当普通主题写入或送入普通主题切换队列，避免关闭透明主题后无法恢复上一主题。
- 透明主题安装包使用 `build\theme-trans-signed.apk`，安装后包名为 `com.smartisanos.launcher.theme.trans`，`minSdkVersion=23`、`targetSdkVersion=28`，最终 APK 元数据已更新为 `compileSdkVersion=36`、`platformBuildVersionName=16`，用于普通 Android / Android 15 / Android 16 安装；`original_apks\com.smartisanos.launcher.theme.trans.apk` 是原始参考包，`targetSdkVersion=17`，不要作为新系统安装包。
- 透明主题开启后只能使用默认翻页动画：主设置页隐藏“桌面翻页动画”入口，翻页动画读写被钳制为 `0`，避免透明主题资源链路和非默认翻页动画混用。
- 普通不透明主题下主设置页不再显示“桌面壁纸”入口；只有毛玻璃主题 `smartisan_theme_aero` 或开启透明主题时才显示。透明主题仍隐藏“桌面主题”和“桌面翻页动画”，只保留“桌面壁纸”和“应用图标”，避免普通主题误进入只对壁纸主题生效的设置。
- 透明主题开关状态读取改为私有 prefs 优先、系统 Settings 兜底，解决普通 Android 上系统 Settings 旧值覆盖设置页开关，导致返回设置页仍显示关闭的问题。
- 修复透明主题开启后仍排队 `MESSAGE_CHANGE_THEME smartisan_theme_black` 的问题；开启透明主题只写透明覆盖状态并重启 / 刷新桌面，关闭透明主题时才恢复上一普通主题。
- 修复原版主题管理器 `X.ca()` 清空主题表后 `smartisan_theme_trans` 丢失的问题：在 `X.da()` 选择当前主题前重新注册透明主题包，避免透明状态回落到黑主题导致黑底、黑宫格或 Dock 混用。
- 透明主题开关和主题列表透明主题入口统一改为写入透明状态后重新触发桌面初始化，让 `O.V()`、`Constants.isTransparentTheme` 和 `X.va()` 重新选择资源，避免设置页开关状态正确但桌面仍停留在上一套主题资源。
- 透明主题开关确认必须完整重启 Launcher 才能稳定生效：普通 `J.a(theme, theme_changing)` 能拿到 `smartisan_theme_trans`，但不会完整重建透明桌面的壁纸 / 网格层；当前改为显示加载动画后重启桌面，避免仅退出设置页导致黑主题资源残留。
- 透明主题重启链路新增跨进程 loading pending 标记：设置页写入标记后杀进程重启，新 Launcher 进程在 `onCreate`、`J.b()` 初始化前显示加载层，等桌面渲染帧稳定后再关闭，避免切换时裸露黑屏 / 壁纸中间态。
- 透明主题壁纸取图改回原版优先系统壁纸 drawable；当 `WallpaperManagerSmt` / `WallpaperManager.getDrawable()` 在普通 Android 返回 null 时，再依次尝试 `peekDrawable()`、`getFastDrawable()`，最后才使用本地壁纸副本按屏幕比例中心裁剪，避免整图拉伸导致壁纸看起来被压缩。
- “桌面壁纸模糊效果”改回原版刷新方式：写入 `original_launcher_wallpaper_blur_on` 的 0/1，更新 `Constants.isTransWallpaperBlur` 后调用 `Eb.lh()` 重建 `t_blur_background`，不再走完整透明主题重载，修复打开模糊开关后背景变黑的问题。
- `ua.i(context)` 已加入普通 Android 兼容读取，优先从 launcher 私有 prefs 读取 `original_launcher_wallpaper_blur_on`，避免无 `WRITE_SECURE_SETTINGS` 时原版只读 `Settings.Global` 导致状态丢失。
- 对照原版确认：毛玻璃 / 透明壁纸主题下应用文字颜色由壁纸明暗决定，原版通过 `Constants.initGaussianDarkLight()` 在普通资源和 `_light` 后缀资源之间切换，不是按时间变化。
- 透明主题 / 毛玻璃主题下，状态栏文字和桌面应用文字已恢复为按壁纸明暗自动切换：
  - 根因一：`Constants.initByTheme()` 调用 `initGaussianDarkLight()` 后已经根据壁纸算出 `sGaussianResSuffix="_light"`，但后续又把 `sGaussianResSuffix` 清空为 `""`，导致浅色壁纸无法继续加载原版 `_light` 应用文字资源，应用名仍显示白字。
  - 根因二：状态栏颜色虽然已经通过原版 `status_bar_icon_color(_light)` 资源传给 `ua.setSystemUiDecoration()`，但普通 Android / Android 6+ 还需要同步 `View.SYSTEM_UI_FLAG_LIGHT_STATUS_BAR`，否则系统状态栏文字可能仍按旧颜色显示。
  - 修复方式：保留 `initGaussianDarkLight()` 算出的 `sGaussianResSuffix`，让 `Mc.o(theme)` / `Constants.initGaussianTheme()` 正常进入 `_light` 资源分支；同时在 `launcher/smali/com/smartisanos/launcher/e/g.smali` 中根据最终解析出的 `status_bar_icon_color` 设置或清除 `LIGHT_STATUS_BAR`。
  - 回归注意：只允许透明主题 `smartisan_theme_trans`、毛玻璃主题 `smartisan_theme_aero` 这类高斯 / 壁纸主题跟随壁纸明暗；普通不透明主题应继续使用主题自身文字资源和状态栏资源，不要改成跟随壁纸。
- 壁纸显示 / 模糊链路当前保持原版方向，不要再次改成手动模糊 bitmap 或把 `background.png` / `t_blur_background` 互相替换：
  - 透明主题壁纸显示正常的关键是 `s.n(context, uri)` / `decodeLauncherWallpaperSurfaceBitmap()` 按屏幕中心裁剪取壁纸，`background.png` 作为桌面背景纹理。
  - “桌面壁纸模糊效果”正常的关键是写入 `original_launcher_wallpaper_blur_on`，更新 `Constants.isTransWallpaperBlur` 后调用 `Eb.lh()`，由原版 SMEngine 重建 `t_blur_background`。
  - 不要在 Java 层自行 StackBlur 主壁纸，也不要把 `t_blur_background` 覆盖回 `background.png`；这样会造成主桌面、Dock 或局部区域显示不一致。
- 透明主题换壁纸要按原版链路做兼容，不能只依赖系统 Settings 或系统广播：
  - 原版 `ApplicationProxy` 的 `M.onReceive()` 监听 `android.intent.action.WALLPAPER_CHANGED`，仅在 `Constants.isTransparentTheme=true` 时继续。
  - 原版先通过 `e.s.ha(context)` 读取当前透明壁纸 URI，再和 `Constants.sWallpaperUri` 比较；不同则更新 `Constants.sWallpaperUri`，最后调用 `Eb.getInstance().lh()`。
  - 原版 `Eb` 重建主背景时会在高斯 / 透明主题下使用 `Constants.sWallpaperUri` 调 `e.s.n(context, uri)` 解码壁纸，并刷新 `background.png` 纹理；`lh()` 主要负责透明壁纸变化后的节点 / blur 背景刷新。
  - 实测普通 Android / 非系统签名设备上，`Settings.Global.putString(...)` 会因 `WRITE_SECURE_SETTINGS` 被拒，应用主动发送 `ACTION_WALLPAPER_CHANGED` 也会被系统拒绝；此时预览图会更新，但桌面可能继续显示系统壁纸。
  - 2026-06-16 真机日志确认：当前普通 Android 设备上桌面实际背景仍优先跟随系统壁纸；只保存 launcher 私有壁纸副本会导致壁纸页预览变化，但桌面主界面继续显示旧系统壁纸。因此选择壁纸成功后必须直接调用 `WallpaperManager.setStream(..., FLAG_SYSTEM)` 同步系统桌面壁纸，私有 URI / `Constants.sWallpaperUri` / `Eb.Vh()` 作为原版透明主题链路和预览兜底继续保留。
  - Android 7.0+（API 24+）支持 `WallpaperManager.setStream(InputStream, Rect, boolean, FLAG_SYSTEM)`，当前主 APK `minSdkVersion=23`，所以 Android 8 可以使用该接口；低版本保留 `WallpaperManager.setStream(InputStream)` 兼容回退。
  - 普通应用不应主动发送系统保护广播 `Intent.ACTION_WALLPAPER_CHANGED`；系统壁纸由 `WallpaperManager` 设置成功后，系统会自行分发真实壁纸变化事件。手动发送只会在普通 Android 上产生 `Permission Denial` 噪音，不能作为刷新依据。
  - 兼容修复必须把系统 Settings 和广播视为辅助：选择壁纸后先写 launcher 私有 prefs，再直接同步 `Constants.sWallpaperUri`，优先调用原版 `Eb.Vh()` 触发 `background.png` 主背景纹理重建，再调用 `Eb.lh()` / SMEngine 刷新透明壁纸节点和模糊背景。不能只调用 `lh()`，否则日志只会出现 `changeWallpaper TEXTURE_ID_BLUR_BACKGROUND`，主桌面仍可能不更新。
- 检查更新读取 Gitee 下载仓库 Release 列表，只识别 `launcher-` 前缀的软件发布标签，并按版本号选择最高版本；APK 资产只选择桌面主 APK，跳过搜索、主题和 `theme-trans-signed.apk` 等附加包。下载走系统 `DownloadManager`，优先使用标准 Gitee Release 下载地址，失败后尝试 Release 资产返回的备用地址；下载完成后使用 `DownloadManager.getUriForDownloadedFile(downloadId)` 得到安装 URI。
- 检查更新会复用已经下载完成的同版本安装包：保存 Release `tag`、APK 文件名和 `downloadId`；再次检查到同一线上版本时，`STATUS_SUCCESSFUL` 显示“安装”，`RUNNING/PENDING` 显示“下载中”，失败或资产变化才重新下载。
- 后续发布 GitHub / Gitee Release 时，推荐同时上传 `build\launcher-signed.apk` 和 `build\theme-trans-signed.apk`；前者是桌面主 APK，后者是透明主题 Android 15 / Android 16 兼容安装包。不要把 `original_apks\com.smartisanos.launcher.theme.trans.apk` 当用户安装资产发布。
- 桌面内“桌面设置”虚拟入口进入设置页后，已给 maintained 设置首页和壁纸页增加短暂点击保护；壁纸选择器入口也会再次检查保护状态并写入日志，避免 Activity 切换或残留输入导致刚进入设置就误打开图片选择器，进而被模拟器关闭整个 Launcher task。
- 主题详情下载按钮状态已按当前主题项隔离，避免切换到其他主题后仍残留“正在下载”状态。
- 桌面图标加载链路加入 drawable 归一化兜底，改善 MuMu 等环境 adaptive drawable 或特殊图标不显示的问题；MuMu 多用户 / 分身查询缺少 `INTERACT_ACROSS_USERS` 时，`getInstalledPackagesAsUser` 和 `queryIntentActivitiesAsUser` 会退回当前用户查询，避免初始化循环清库导致桌面空白。
- 主题详情页预览图已改为外层居中容器，手机壳和主题截图保持原版层级叠加，并会按标题栏和底部主题色栏之间的可用空间自适应缩小，避免小屏手机底部被颜色栏遮住；从主题详情返回主题列表、从关于我们返回设置首页时会保持原滚动位置，并在首帧绘制前恢复，避免上下晃动。
- 对照 maintained 的 APK 结构确认：maintained `minSdkVersion=19`、`targetSdkVersion=28`，且只保留 `assets/Textures/1080p`；当前工程第一轮先降到 `minSdkVersion=23`，保留更多运行安全余量，后续如需覆盖 Android 5.x / 4.x 再继续做 API 兼容回归。

### 2026-06-24

#### 设置页隐私密码入口与页面锁内置密码

- 对照文档中页面锁现状，原版设置隐私密码入口没有迁到当前桌面设置页，导致用户只能在编辑模式点锁时被动设置。主设置页新增“隐私密码”行，点击后无密码则输入两遍 4-16 位数字密码；已有密码则先验证旧密码，再设置新密码。保存仍只写 Launcher 私有 `launcher_page_lock/password_hash`，摘要算法继续使用带命名域的 SHA-256，页面锁 requestCode 20/21 和原版页面状态机不变。
- 页面锁弹窗的校验同步收紧为 4-16 位数字，避免设置页和锁入口对密码格式判断不一致。
- 验证：`build.bat` 已完成 maintained 设置资源构建、apktool smali、Java 兼容层编译和签名，输出 `build\launcher-signed.apk`。APK 结构检查确认包含 `assets/settings_maintained/maintained-settings-res.apk`；当前 shell 中 `adb` 不在 PATH，`apksigner verify` / `aapt dump badging` 单独调用超时，未做装机交互验证。

### 2026-06-22

#### Android 16 触摸、图标尺寸与文件夹动画修复

- Android 16 / VIVO 上压平手指后桌面不翻页：ADB 原始输入与应用事件确认触摸坐标没有中断，根因是旧 `TVelocityAndGestureTracker` 把较大的 `MotionEvent.getSize()` 当作专用 sweep 手势。Android 15+ 将旧 `sweep_threshold` 提升到 1.0，避免抢占普通翻页；下滑搜索改为先把完整 MotionEvent 交给 RootView / SMEngine，再旁路判断，避免搜索入口截断桌面触摸序列。
- 【已废弃】曾将所有来源统一到 alpha 可见边界90%，并把设置页100%运行时基准改为120%。该方案与 DEFAULT-only normalization、统一 IconVisualMetrics 和禁止来源专用倍率的合同冲突，不得恢复。
- 展开文件夹内容按书架实际可见行高自适应：图标为 48%，应用名为 9.2%，文字中心偏移为 29%；用户调整 50%~150% 图标大小时，展开图标、文字和间距同比缩放。此前误把“缩略图松手后上移”当成展开页落点问题而临时修改的 `M.smali` / `FolderCellPositionAdapter` 入口已全部撤销，不保留错误方案。
- 关闭文件夹缩略图松手后再上移：拖入动画以外框几何中心计算，而最终 2×2 / 3×3 viewport 使用 PNG 内真实搁板中心，两者相差约外框高度 3.6%~3.7%。`folder_icon_center_offset_2_2 / 3_3` 现在按当前外框尺寸动态补偿，使动画落点与最终缩略图一致，并随屏幕和图标比例自适应。
- 日期刷新链路保持不变：系统 `DATE_CHANGED`、`TIME_SET`、`TIMEZONE_CHANGED` 广播仍由原版接收器处理，日期纹理缓存键继续包含年份和年内日序；其他手机只要能被标准日历类别或厂商包名检测到，就会显示当日日期并在跨日后更新。
- 页面锁链路对照原版确认仍保留页状态 `0/2`、锁动画、待验证页面以及 requestCode 20（设置密码）/21（验证解锁）的结果处理；断点是原版依赖系统私有 `com.android.settings.ChooseLockPasswordFake`，已有 fallback 又启动依赖锤子安全中心控件的 `ConfirmPasswordActivity`。现改为 Launcher 内 AlertDialog：首次设置输入两遍4-16位数字密码，解锁输入一次；只在私有 `launcher_page_lock` 中保存带固定命名域的 SHA-256 摘要，验证成功后回调原版 `J.onActivityResult()`，页面锁定/隐藏/解锁仍由原版状态机执行。
- 本轮验证：`build.bat` 构建、Java编译、apktool smali、签名均通过；APK覆盖安装到 API31 `emulator-5554` 和华为 DRA-AL00 成功，模拟器执行 `cmd package compile -m verify -f` 成功，两台设备均无 `VerifyError`、`NoSuchMethodError` 或 Launcher 崩溃。SMEngine编辑画面不暴露Android View层级，密码弹窗和页面锁交互仍需用户在当前页面点击确认。

### 2026-06-21

#### 厂商日历识别、日期刷新、双层错位与统一图标尺寸路径

- 根因不是单一素材错误，而是原版仅把 `com.android.calendar` 当活动日历；VIVO 的 `com.bbk.calendar` 会先按主题 / 改进版静态图标绘制，随后兼容层又叠加日期，形成一大一小、底部错位或日期固定在素材中的现象。
- 新增 `CalendarAppDetector`：优先查询 Android 标准 `ACTION_MAIN + CATEGORY_APP_CALENDAR`，再用 Google、VIVO/BBK、Samsung、MIUI、ColorOS/Oplus、Huawei、OnePlus 等常见包名回退。`ItemInfo.Te()` 和活动图标创建统一使用该检测结果。
- 日期纹理缓存键加入年份和年内日序，避免跨日后继续命中旧 bitmap；活动日期节点保持可见，并继续响应系统日期 / 时间 / 时区刷新链路。VIVO Android 16 真机已确认系统日期 21 时桌面显示 21，刷新后不回退到主题素材中的 20。
- 图标百分比保存虽然正确，但旧实现只在“待处理变更”存在时缩放 `LayoutProperty`；覆盖安装、杀进程或系统回收后会从 XML 恢复 100%。`maybeApplyLauncherIconSize()` 现在每个新进程从 XML 基准只执行一次 `100 -> 保存值`，避免漏应用和重复乘算。
- 验证设备：VIVO V2435A、Android 16；ADB 覆盖安装、冷启动、日期 21、12 宫格以及图标尺寸变化均用于回归。时钟当前走普通图标尺寸链路，未增加厂商专用缩放特判。

### 2026-06-20

#### 图标大小即时生效、文件夹对齐、冷启动网格与设置首页排版

- 图标大小不立即生效的根因不是设置值没有保存，而是保存后只把已有 Launcher Activity 拉到前台。旧进程中的 `Constants.layoutPropertyMap`、网格点、普通应用 `SceneNode` 和 SMEngine 纹理仍使用修改前尺寸；因此图标大小保存后必须完整重建 Launcher。
- 删除 `Constants.applyLauncherIconSize()` 对 `MODE_9` 的跳过。当前桌面 3x3 模式同样必须应用用户比例；跳过它正是“应用图标大小改了但当前桌面不变”的直接回归点之一。
- 关闭文件夹预览不能简单沿用 XML 固定边距，也不能把整个正方形平均切成 2 / 3 行。实测 MODE_12 的 246px 文件夹纹理与 MODE_20 的 178px 纹理具有相同的归一化内部几何；2x2 可见行中心为 0.280 / 0.646，列中心为 0.356 / 0.644；3x3 可见行中心为 0.220 / 0.464 / 0.708，列中心为 0.308 / 0.500 / 0.692。`LayoutPropertyAdapter.centerFolderPreview()` 以当前 `icon_size_with_shadow` 乘这些比例，反算 top / left margin 和横纵间距，所以换屏幕、换 12 / 20 宫格、改变 50%-150% 图标尺寸后仍在每层可见区域垂直居中。
- 打开文件夹使用另一张 1080x1356 书架纹理：`FolderCellPositionAdapter.adjustY()` 只允许作用于 `com.smartisanos.launcher.view.b.a` 文件夹页，围绕中间层按可见书架行高修正 Y；X 继续用原版固定三列。普通桌面页必须原样返回坐标，否则会重现冷启动上下大缝隙。
- 文件夹防回归计算顺序：先取当前关闭外框 / 打开书架的实际绘制尺寸，再从对应 PNG 的可见内部边界求行列中心，最后计算图标边长、margin 和 space；禁止按整张含透明边缘的 PNG 均分，也禁止按某一台设备截图写死像素。资源 XML 只保留原版基准，最终坐标统一在适配器中生成。
- 图标尺寸重启使用 requestCode `1002` 的精确 HOME PendingIntent；它与透明主题曾使用的 requestCode `1001` 属于同类闪回风险。设置首页 `show()` 现在同时取消 1001 和 1002，避免用户修改尺寸后立刻重新进入设置时，残留任务再次把设置页顶回桌面。
- 桌面设置首页三枚缩略图入口同步整理：缩略图左边距改为 12dp，与下方纯文字设置行的左侧视觉基线协调；箭头右侧内边距由 30dp 改为标准 12dp，与下方箭头对齐；副标题限制最多两行并在超长时尾部省略，避免“应用图标”说明挤成三行。
- 缝隙修复：`adjustY()` 首先沿继承链确认当前 page 是打开文件夹页；普通桌面页直接返回原始 Y，只有文件夹页才按书架可见层中心修正。禁止在共用的 `M.smali` 坐标入口中使用不带页面类型保护的文件夹算法。
- 验证：`build.bat` 编译、zipalign、签名成功；APK 覆盖安装到 `emulator-5554`。在 1080x1920 / 560dpi 下，当前修复版冷启动的网格顶边直接贴合状态栏、底边直接贴合 Dock，与 `b36f1a9a` 基线一致，无需进入编辑模式；打开文件夹后三列和逐行排列保持正常。图标大小 50% / 100% 下关闭预览均按可见层中心缩放；改完尺寸后立即进入设置并停留 3 秒，`ThemeChooserActivity` 未再闪回。Logcat 未出现 `FATAL EXCEPTION`、`VerifyError` 或 `NoSuchMethodError`。

### 2026-06-19

#### 文件夹预览、展开排列和多分辨率适配

- 对照用户提供的原版 / 当前截图和 `clean_launcher_raw` 原版代码确认，原版文件夹预览由 `launcher/smali/com/smartisanos/launcher/view/a/la.smali` 按数量选择 2x2 或 3x3 参数组；展开布局由 `launcher/smali/com/smartisanos/launcher/view/b/M.smali` 直接使用 `fa.ir()[index]` 的固定网格坐标，项目按顺序逐行填充。原版不会把最后不足一行的项目移动到整行中央。
- 修复方式：
  - 删除 `M.smali` 两处 `FolderCellPositionAdapter.adjustX()` 调用，展开文件夹重新直接使用原版网格坐标；四个项目显示为第一行三项、第二行第一项，列中心与第一行一致。
  - 12 / 20 宫格竖屏资源中的 `folder_preview_*` 只作为原始 100% 输入基准；运行时统一由 `LayoutPropertyAdapter.centerFolderPreview()` 根据当前 `icon_size_with_shadow` 和可见行列中心生成最终 2x2 / 3x3 参数。4 项以内保持 2x2，5-9 项保持 3x3。
  - 删除 `LayoutProperty.smali` 文件夹专用的二次 X/Y 缩放，只保留 `LayoutPropertyAdapter` 单一适配入口。
  - `MODE_9` 的 `folder_bookcase_*`、标题和分页点参数恢复原版基准。书架素材自身带透明边缘，节点宽度等于屏宽时，可见外框约占屏幕 84%，不能再额外乘 84%。
  - 保留原版的多套 `MODE_9` 坐标基准：`values-xxhdpi` 使用 1080 基准，`values-sw411dp` 使用 1440 基准；不把两套资源强制覆盖成同一份。
  - 实测原版 `folder_open_3_3.png` 为 1080x1356，透明区域外的书架范围为 y=129..1299，三层可见中心间距为 358。`LayoutPropertyAdapter` 以 `358 / 1356` 得到真实可见行高，再按行高限制图标、字体和 `name_off_set_y`，图标与文字作为同一组合留在层内。
  - `_folder` 的书架、网格、图标偏移、文字偏移和裁剪参数统一使用屏幕宽度倍率，禁止同一文件夹混用 `scaleX` 与超长屏 `scaleY`。
  - X 坐标继续完全使用原版 `fa.ir()` 固定三列。Y 坐标只在确认 page 类型为打开文件夹页后，以中间层坐标为锚点，用 `window_width * 358 / 1080` 计算当前可见书架行距；普通桌面页无条件返回原始坐标。
  - `a.1.smali` 的文件夹页面裁剪高度改为当前 `folder_bookcase_height`，使大屏放大后的第一、三行不会被旧的 1080 网格裁剪区截断。
- 验证：
  - `build.bat` 编译、zipalign、签名成功，输出 `build\launcher-signed.apk`。
  - `adb install -r -d` 覆盖安装到 `emulator-5556` 成功并保留原文件夹数据。
  - 同一 APK 在 1080x2424 / 420dpi、720x1600 / 280dpi、1440x2560 / 560dpi 三种配置实测：桌面文件夹预览 2x2 对齐；打开后第一行三列对齐，第四项位于第二行第一列；各行图标和文字均留在对应层内，长名称不越过外框。
- 防回归：
  - 关闭预览的 `left/top/side/space` 必须由同一组归一化可见行列中心一次性反算；不能只把旧 XML 参数整组乘比例，也不能分别追加 X/Y 固定修正。
  - 放大最终行距时必须同步放大文件夹页面裁剪高度；只移动图标而不扩大裁剪区，会表现为第一行图标上半部分被截掉。

### 2026-06-17

#### 更新下载通知与透明主题重启链路回归

- 修复“检查更新”开始下载后通知栏提前显示“安装”的问题。原因是更新下载通知在未完成状态也绑定了安装 PendingIntent；现在只有 `complete=true` 且存在已下载 APK / 下载 ID 时才显示“安装”动作，开始新下载前会先清理旧更新通知。
- 更新包下载使用系统 `DownloadManager` 标准链路；完成后通过 `getUriForDownloadedFile(downloadId)` 取得授权 URI，并附加 `FLAG_GRANT_READ_URI_PERMISSION` 拉起系统安装器。
- 更新下载先 enqueue 标准 Gitee Release 地址；若 `DownloadManager` 返回失败，再自动切换 Release 资产返回的备用地址重新 enqueue。状态栏进度由系统下载管理器显示，应用内弹窗只做前台进度提示；下载完成通知和应用弹窗都使用同一个 downloadId 安装入口。
- 检查更新弹窗会复用已经下载完成的更新包：下载时保存当前 Release 的 `tag`、APK 文件名和 `downloadId`；再次检查到同一个线上版本时，如果 `DownloadManager` 状态为 `STATUS_SUCCESSFUL`，右下角按钮显示“安装”并直接调用 `installApk(downloadId)`。如果状态仍是 `RUNNING/PENDING`，按钮显示“下载中”，避免重复下载同一个安装包。
- 透明主题开启 / 关闭恢复原版方向的 Launcher 进程重启。上一轮为了避免设置页刚返回桌面时出现 SIGKILL 日志，把 `Process.killProcess()` 改成了裸 `startActivity()`，结果 `O.V()` / `Constants.isTransparentTheme` / `X.va()` 没完整重走，桌面会出现黑色主区域、Dock 和主题资源半加载。现在保留“显示加载层 -> 结束设置页 -> 重启进程”的完整初始化链路；从设置页触发时不再额外安排 `AlarmManager` HOME 重启，因为 Android 已会在 Launcher 进程结束后拉起默认桌面，残留闹钟反而会在用户立刻重新进入设置页后把页面顶回桌面。
- 修复开启 / 关闭透明主题后立即进入设置页仍会闪回桌面的问题。原因是旧的 `scheduleLauncherRestart()` 用 requestCode `1001` 排了延迟 HOME PendingIntent，进程重启后用户重新打开 `ThemeChooserActivity`，该 PendingIntent 仍可能延后触发并抢焦点。现在设置页入口会调用 `cancelScheduledLauncherRestart()` 清理残留闹钟；透明主题从 Activity 触发时直接结束设置页并杀旧进程，不再排 HOME 闹钟，非 Activity 场景才保留兜底调度。
- 回归注意：透明主题、宫格和图标大小这类依赖 Launcher 启动链路完整初始化的设置，不要仅靠运行时刷新或裸启动桌面替代进程重启；否则资源表、SMEngine 纹理、`Constants` 状态和原版主题管理器可能不同步。

### 2026-06-16

#### 透明 / 毛玻璃主题文字随壁纸明暗修复与壁纸链路说明

修复内容：

- 修复透明主题、毛玻璃主题下浅色壁纸仍显示白色应用文字的问题。
  - 问题根因：`Constants.initByTheme()` 先调用 `initGaussianDarkLight(context)` 根据当前壁纸计算明暗，并会把浅色壁纸结果写为 `sGaussianResSuffix="_light"`；但紧接着旧代码又执行 `sGaussianResSuffix=""`，把 `_light` 后缀清掉，导致 `Constants.initGaussianTheme()` 和 `Mc.o(theme)` 无法进入原版浅色资源分支。
  - 修复方式：删除这次错误清空 `sGaussianResSuffix` 的逻辑，保留 `initGaussianDarkLight()` 的计算结果；浅色壁纸继续加载 `def_apps_text_color_light`、`def_apps_shadow_color_light`、`page_title_text_color_light` 等原版资源，深色壁纸继续走默认资源。

- 修复透明主题、毛玻璃主题下系统状态栏文字不随壁纸明暗稳定切换的问题。
  - 问题根因：原版会解析 `status_bar_icon_color` / `status_bar_icon_color_light` 并传给 `ua.setSystemUiDecoration()`，但普通 Android 上状态栏深浅文字还受 `SYSTEM_UI_FLAG_LIGHT_STATUS_BAR` 控制，只写旧的装饰颜色不够。
  - 修复方式：在 `launcher/smali/com/smartisanos/launcher/e/g.smali` 中，解析出最终 `status_bar_icon_color` 后按颜色亮度设置系统 UI flag：深色图标颜色时设置 `LIGHT_STATUS_BAR`，浅色 / 白色图标颜色时清除该 flag。

- 验证结果：
  - 浅色壁纸下，状态栏文字变深；应用文字应随 `_light` 资源变深，不再白字贴浅色壁纸。
  - 深色壁纸下，状态栏和应用文字保持浅色，仍可读。
  - 本轮只修文字明暗链路，没有改壁纸模糊和背景纹理链路。

后续注意：

- 透明主题和毛玻璃主题属于“壁纸主题 / 高斯主题”，文字明暗跟随壁纸；普通不透明主题不应跟随壁纸，必须继续使用当前主题自己的文字和状态栏资源。
- 壁纸显示正常依赖原版链路：
  - 自定义壁纸保存为 launcher 私有副本，并同步 `launcher_wallpaper_uri` / `desktop_wallpaper_uri` / `lockscreen_background`。
  - 透明 / 毛玻璃主题加载壁纸时由原版路径按屏幕比例中心裁剪，不应拉伸整图。
  - 模糊开关只写 `original_launcher_wallpaper_blur_on` 并刷新 `Constants.isTransWallpaperBlur`，再调用 `Eb.lh()` 让引擎重建 `t_blur_background`。
- 不要再做以下改动：
  - 不要在 `decodeLauncherWallpaperSurfaceBitmap()` 或 Java 辅助代码里主动 StackBlur 主壁纸 bitmap。
  - 不要把 `t_blur_background` 覆盖回 `background.png`。
  - 不要为了修 Dock 或模糊，替换原版 `background.png` 与 `t_blur_background` 的职责；这会导致主桌面、Dock、动画层使用不同来源的壁纸，出现局部清晰 / 局部模糊 / 底部错图。

#### 自绘搜索页下滑误触与历史清除按钮修复

修复内容：

- 调整主设置页透明主题位置和翻页动画联动。
  - 需求原因：透明主题下桌面背景、文字和高斯壁纸链路都走特殊资源分支，继续暴露“桌面翻页动画”容易让用户选到与透明主题不匹配的动画效果。
  - 修复方式：在 `setting_main.xml` 中把“透明主题”开关移动到“强迫症选项”下面；透明主题开启时，`MaintainedLauncherSettingsHost.bindPage()` 隐藏 `item_page_flip_anims`，`applyTransparentThemeSetting()` 立即强制写回默认翻页动画。
  - 回归注意：透明主题开启期间，`readPageAnimation()` 和 `writePageAnimation()` 都会把动画值钳制为 `0`，确保其他入口也只能使用“默认动画”；关闭透明主题后主设置页会重新显示“桌面翻页动画”选项。

- 修复桌面自绘搜索页容易误触发的问题。
  - 问题根因：此前搜索手势在 `Launcher.smali`、`RootView.smali`、`SMGLSurfaceView.smali` 三层都接入了 `MaintainedLauncherSettingsHost.handleLauncherSearchGesture()`，同一次下滑会被多处重复处理；同时 Java 侧在 `ACTION_MOVE` 阶段就会打开搜索页，距离和角度阈值偏松，没有多指 / 取消手势失效和冷却限制，所以短滑、拖动或图标附近滑动容易误触。
  - 修复方式：只保留 `Launcher.smali` 顶层搜索触发入口，删除 `RootView.smali` 和 `SMGLSurfaceView.smali` 的重复搜索钩子；`handleLauncherSearchGesture()` 改为松手 `ACTION_UP` 时才确认打开，并限制单指、起始区域、下滑距离、纵向角度、手势时长和 1 秒冷却。

- 修复自绘搜索页“搜索历史”右侧清除按钮偏大、和标题不水平对齐的问题。
  - 修复方式：在 `MaintainedLauncherSettingsHost.showSearchPage()` 中让“搜索历史”标题使用垂直居中布局；右侧清除按钮从 `30dp / 18sp` 调整为 `22dp / 14sp`，圆角同步缩小，并保持 `CENTER_VERTICAL`，让按钮中心线和标题文字对齐。

验证结果：

- `.\build.bat` 编译成功，输出 `build\launcher-signed.apk`。
- `adb install -r -d build\launcher-signed.apk` 安装到 `emulator-5554` 成功。
- 在 Smartisan Launcher 桌面右侧空白区域短距离下滑，前台仍保持 `com.smartisanos.launcher/.Launcher`，未打开搜索页。
- 在同一区域明确长距离下滑，前台进入 `com.smartisanos.launcher/.theme.ThemeChooserActivity` 自绘搜索页。
- 截图 `build\search_page_after_fix.png` 确认“搜索历史”右侧 X 已缩小并与标题水平对齐。

#### 桌面设置页偶发自动返回桌面排查

现象：

- 用户反馈启动后停在设置页面时，偶尔会自动返回桌面主页。
- ADB 复现路径为：从桌面底部“桌面设置”虚拟入口进入 maintained 设置页，等待数秒后观察任务栈。

ADB 结论：

- 直接 `am start -n com.smartisanos.launcher/.theme.ThemeChooserActivity --ez from_desktop_settings true` 启动设置页，连续观察未复现自动返回。
- 从桌面虚拟入口进入设置页时，旧包日志显示先进入 `ThemeChooserActivity`，约 7 秒后同一 Launcher 进程发起 `ACTION_GET_CONTENT image/*`，系统打开 `com.android.documentsui/.picker.PickActivity`。
- 随后 MuMu 日志出现 `tabs/tab close task:3861`，系统以 `remove task` 原因 kill `com.smartisanos.launcher`，所以表现为设置页退回桌面。
- 日志中没有 `AndroidRuntime FATAL EXCEPTION`，这次不是 Java 崩溃；真正异常点是刚进入设置页后误触发了“桌面壁纸 -> 选择图片”的壁纸选择器链路。

修复方式：

- `MaintainedLauncherSettingsHost.show()` 打开 maintained 设置首页时调用 `armSettingsClickGuard()`，给 Activity 切换后的早期输入增加 800ms 保护窗口。
- `showWallpaperPage()` 切入桌面壁纸页时同样重置保护窗口。
- 首页 `click(...)` 和二级简单列表 `replaceSimpleListWithScroll(...)` 的点击监听统一包装为 `guardedSettingsClick(...)`，保护窗口内的点击会被忽略并打印 `MaintainedSettings` 日志。
- `pickWallpaper()` 在真正拉起系统图片选择器前再次检查保护状态，并记录 `pickWallpaper requested by user`，后续如果再误开图片选择器，可以直接从 logcat 确认入口。

验证：

- `build.bat` 构建成功，输出 `build\launcher-signed.apk`。
- `adb install -r build\launcher-signed.apk` 安装到 `emulator-5554` 成功，设备显示 `versionCode=25`、`versionName=v1.5.0`。
- 使用同一路径从桌面底部“桌面设置”进入设置页，连续 18 秒任务栈一直停留在 `com.smartisanos.launcher/.theme.ThemeChooserActivity`。
- 修复后完整 logcat 中没有再出现 `ACTION_GET_CONTENT`、`PickActivity`、`remove task` 或 Launcher 被 kill 的记录。

涉及文件：

- `launcher/tools/java/com/smartisanos/launcher/theme/MaintainedLauncherSettingsHost.java`
- `docs/development/DEVELOPMENT_LOG.md`

### 2026-06-07

#### v1.4.8 自绘搜索、主题详情与桌面恢复稳定性

修复内容：

- 版本发布：
  - 文本 `launcher/AndroidManifest.xml` 调整为 `versionCode=24` / `versionName=1.4.8`。
  - 同步修正最终构建注入的 `launcher/original/AndroidManifest.xml` 二进制 Manifest，确保最终 APK 真实版本为 `v1.4.8 (24)`。
  - 设置页“关于 / 当前版本”显示同步为 `1.4.8`。

- 搜索方案：
  - 搜索页由 launcher 内 `ThemeChooserActivity` / `MaintainedLauncherSettingsHost.showSearchPage()` 自绘，不依赖外部搜索 APK。
  - Release、构建脚本和 README 均不包含独立搜索安装包；桌面更新资产只选择主 APK。

- 检查更新与发布：
  - 软件检查更新只匹配 `launcher-` 标签，避免 `themes-v1` 主题发布被误识别成软件新版本。
  - Release 只把桌面主 APK 当作桌面更新资产；透明主题包可以随 Release 上传，但由桌面更新逻辑跳过。
  - 主题下载仍使用 Gitee Release `themes-v1`，软件更新与主题下载接口分离。

- 主题详情页：
  - 主题详情页的 PRO3 手机预览改为根据可用宽高动态缩小，尤其适配小屏手机，避免预览底部被底部主题色栏遮挡。
  - 手机外框继续使用白色主题详情框，并保持 PRO3 预览图与外框叠加。

- 桌面恢复稳定性：
  - `Launcher.onResume()` 后增加桌面 GL Surface 可见性、布局刷新和 `requestRender()` 唤醒，缓解部分手机从其他应用返回桌面时只显示黑屏和状态栏的问题。
  - MuMu 上定位到原版分身查询会访问 user 10 并触发跨用户权限异常，已为安装包列表和应用入口查询补 fallback，避免 `dataInitProtected` 多次失败后清库导致桌面空白；ADB 抓屏确认 12 宫格可正常显示。

- 构建验证：
  - `build.bat` 构建通过，输出 `build\launcher-signed.apk`。
  - `aapt dump badging build\launcher-signed.apk` 确认最终 APK 为 `versionCode='24'`、`versionName='v1.4.8'`、`sdkVersion:'23'`、`targetSdkVersion:'28'`。
  - 主 APK 中不包含 `quicksearch` / `bundled_apps` 资产。

### 2026-06-06

#### 应用分身、图标识别、毛玻璃主题、搜索和更新下载修复

修复内容：

- 版本发布：
  - 文本 `launcher/AndroidManifest.xml` 调整为 `versionCode=20` / `versionName=v1.4.6`。
  - 同步修正最终构建注入的 `launcher/original/AndroidManifest.xml` 二进制 Manifest，确保最终 APK 的真实版本也是 `v1.4.6 (20)`。
  - 设置页“检查更新”默认版本字符串同步为 `v1.4.6`。

- 应用分身：
  - 对照 maintained 的多用户查询思路，把桌面应用列表、搜索页和启动链路继续向 `LauncherApps` / 用户句柄查询靠拢。
  - 继续调整面具标记大小、位置和颜色，使其更接近原版锤子桌面左下角黑色面具效果。

- 图标识别：
  - 对照 `smartisan-launcher-maintained` 调整当前工程图标识别逻辑，同时保留当前项目已有的图标识别入口和 redirect / appfilter / 自定义图标能力。
  - 修复部分普通应用被误识别成应用商店图标的情况，例如“闲鱼”“酷安”。
  - 修复部分系统应用名称识别不稳定的情况，例如“电话”“拨号”“电话本”“电话管家”。
  - 应用图标页加载速度继续优化，避免每次打开都做不必要的重拉取和整页重建。

- 搜索页和拖动手势：
  - 搜索页改为能搜索到普通应用和分身应用。
  - 对照 maintained 收窄下滑搜索触发条件，只在明确快速下滑时打开搜索，减少长按拖动应用时误识别为打开搜索页。

- 毛玻璃主题：
  - 对比原版毛玻璃主题 `com.smartisanos.launcher.theme.aero.apk` 和 maintained 的显示效果，修复毛玻璃主题桌面文字、编辑页文字仍显示黑色或加载时先黑后白的问题。
  - 毛玻璃主题文字效果恢复为和其他深色/浅蓝主题一致的白色文字效果。
  - 删除白雾主题入口、显示顺序、字符串、公有资源项和相关 smali 判断；当前透明壁纸主题只保留毛玻璃。

- 主题下载和模拟器兼容：
  - 修复在线主题详情页从一个正在下载的主题切换到其他主题时，右上角下载按钮状态没有正确隐藏或刷新。
  - 桌面图标加载链路加入 drawable 归一化处理，改善 MuMu 模拟器等环境中 adaptive drawable 或特殊 drawable 图标不显示的问题。

- 检查更新：
  - 修复“检查更新 -> 下载”没有任何进度显示的问题。
  - 下载更新包后现在会弹出进度窗口；未知大小时显示等待 / 下载中，已知大小时显示百分比，下载完成后自动关闭并启动安装。

- 构建和清理：
  - 多次执行 `build.bat` 构建通过，输出 `build\launcher-signed.apk`。
  - `aapt2 dump badging build\launcher-signed.apk` 确认最终 APK 为 `versionCode='20'`、`versionName='v1.4.6'`、`sdkVersion:'23'`、`targetSdkVersion:'28'`。
  - `apksigner verify --verbose --print-certs build\launcher-signed.apk` 确认 v1 / v2 / v3 签名均为 true。
  - 按当前约定清理 `build` 目录，只保留 `launcher-signed.apk`、`launcher-signed.apk.idsig` 和 `tools`。

#### v1.4.7 更新下载与 Gitee 镜像测试版

修复内容：

- 版本发布：
  - 文本 `launcher/AndroidManifest.xml` 调整为 `versionCode=21` / `versionName=v1.4.7`。
  - 同步修正最终构建注入的 `launcher/original/AndroidManifest.xml` 二进制 Manifest，确保最终 APK 的真实版本也是 `v1.4.7 (21)`。
  - 设置页“检查更新”默认版本字符串同步为 `v1.4.7`。

- 下载镜像：
  - 软件更新版本列表读取 Gitee Release API，只遍历 `launcher-` 标签并选择最高版本；APK 下载优先 Gitee Release 镜像，失败后使用 Release 资产中的备用地址。
  - 主题下载基地址切换到 Gitee Release `themes-v1`，用于测试国内镜像下载链路。
  - 当前 Gitee `themes-v1` 已上传部分主题附件，已验证公开附件 URL 会跳转到 `attach_files` 下载地址；剩余主题因 Gitee 仓库附件配额提示超过 1GB，待网页端释放容量或扩容后补齐。

- 验证：
  - `build.bat` 构建通过，输出 `build\launcher-signed.apk`。
  - `aapt2 dump badging build\launcher-signed.apk` 确认最终 APK 为 `versionCode='21'`、`versionName='v1.4.7'`、`sdkVersion:'23'`、`targetSdkVersion:'28'`。
  - `apksigner verify --verbose --print-certs build\launcher-signed.apk` 确认 v1 / v2 / v3 签名均为 true。

### 2026-06-04

#### v1.4.5 设置体验、主题详情和英文文案修复

修复内容：

- 版本发布：
  - 文本 `launcher/AndroidManifest.xml` 调整为 `versionCode=19` / `versionName=v1.4.5`。
  - 同步修正最终构建注入的 `launcher/original/AndroidManifest.xml` 二进制 Manifest，避免 APK 真实版本和文本 Manifest 不一致。
  - 设置页“检查更新”默认版本字符串同步为 `v1.4.5`。
- 强迫症选项：
  - `launcher/tools/maintained_settings_res/res/values/strings.xml` 补齐 `ocd_setting=OCD Settings`，中文资源继续使用“强迫症选项”。
  - 主设置页标题改用 `launcher_setting_name`，强迫症入口改用 `ocd_setting`，强迫症二级页标题改用 `obsession_header_title`。
  - 修复英文系统下强迫症入口仍显示中文的问题；后续不要在 Java 中硬编码“强迫症选项 / 桌面设置”等标题。
- 设置返回位置：
  - 从“关于我们”、壁纸、翻页动画、应用图标、强迫症选项等子页返回主设置页时记录并恢复进入前的滚动位置。
  - 从桌面主题列表进入主题详情后返回时恢复主题列表位置。
  - 滚动恢复从 `post()` 延后滚动改为 `OnPreDrawListener` 首帧绘制前恢复，修复返回时先跳顶部再滚回当前位置造成的上下晃动。
- 主题详情页：
  - `activity_theme_item.xml` 改为外层 `phone_detail_preview` 填满标题栏和底部主题标签栏之间区域，内层保留原版手机预览图层并居中。
  - 取消依赖运行时 `translationY` 硬调预览位置，避免手机外壳和主题截图错位。
- 已纳入本轮发布记录的前序功能 / BUG：
  - 应用图标页：改进版图标开关复用首页同款控件；图标包行和图标大小行补齐箭头与点击范围；单应用默认图标、推荐图标、相册自定义图标切换后只刷新当前行并保持滚动位置。
  - 桌面图标大小：50% - 150% 连续调节，小 / 中 / 大三档快捷选择；当前仅对 12 / 20 宫格普通应用统一生效，桌面“桌面设置”保持原版独立 SettingButton，不纳入该替换或缩放链。
  - 图标包兼容：支持 appfilter / component 精确匹配，图标包优先级高于锤子自动识别，单应用自定义图标优先级最高。
  - 内置搜索页：设置页提供“启用下滑搜索”开关；搜索页去掉自绘键盘，改为系统输入法；顶部常用应用横向滑动；搜索结果行固定高度并垂直居中。
  - 双开应用：通过 `LauncherApps.getProfiles()` 补齐多用户可启动 Activity，保存 `ItemInfo.userId` 并通过 `startActivityAsUser` 启动对应用户应用。
  - 刘海屏 / 编辑态：Launcher 主窗口持续保留 fullscreen layout 和 cutout short edges，避免长按图标、进入编辑模式时露出系统状态栏并顶下桌面。
  - 解锁动画：修正动画播放状态判断，让锁屏返回桌面时能按设置开关执行解锁动画。
  - 设置体验：关于我们改为 maintained / 原版风格页面；检查更新、关闭电池优化、默认桌面、隐藏虚拟键、角标开关等入口已接入。

验证计划：

- `build.bat` 构建通过。
- `aapt dump badging build\launcher-signed.apk` 应显示 `versionCode='19'`、`versionName='v1.4.5'`、`sdkVersion:'23'`、`targetSdkVersion:'28'`。
- `apksigner verify --verbose --print-certs build\launcher-signed.apk` 应显示 v1 / v2 / v3 签名均为 true。
- 英文系统进入桌面设置时，主标题应显示 `Launcher Settings`，强迫症入口和二级页标题应显示 `OCD Settings`。
- 从主题列表滚动后进入某个主题详情再返回，应保持主题列表位置；从“关于我们”返回设置首页也应保持原位置且不再上下晃动。
- 主题详情页手机预览应在标题栏与底部主题标签之间居中，手机壳和截图不应错位。

### 2026-06-03

#### 兼容安装与第一轮包体瘦身

背景：

- 用户反馈同一个 APK 发给其他手机安装失败，同时 maintained 能在更多手机上安装、分辨率适配更好，且包体更小。
- 对比 `smartisan-launcher-maintained` 后确认，当前 original-port 主要问题有两类：
  - 安装兼容：当前 APK 原本 `minSdkVersion=29`，Android 10 以下设备会直接安装失败；maintained 为 `minSdkVersion=19`、`targetSdkVersion=28`。
  - 包体过大：当前 APK 约 105.9MB，其中 `assets` 占约 97.5MB；maintained APK 约 44.4MB，其中 `assets` 约 33.9MB。

修复内容：

- 安装兼容：
  - 文本 `launcher/AndroidManifest.xml` 的 `uses-sdk` 从 `minSdkVersion=29` / `targetSdkVersion=29` 调整为 `minSdkVersion=23` / `targetSdkVersion=28`。
  - 同步修正最终构建注入的 `launcher/original/AndroidManifest.xml` 二进制 Manifest，确保最终 APK 真实输出 `sdkVersion:'23'`、`targetSdkVersion:'28'`。
  - `launcher/apktool.yml` 同步记录 `minSdkVersion: 23`、`targetSdkVersion: 28`。
- 包体瘦身：
  - 对照 maintained，确认 maintained 只保留 `assets/Textures/1080p`，没有 `720p` 目录。
  - 将 `com.smartisanos.launcher.pb.getResolution()` 改为统一返回 `1080p`，避免低密度设备继续选择 `Textures/720p`。
  - 删除未跟踪的构建输入目录 `launcher/assets/Textures/720p`，减少约 36.9MB 纹理资源。
- 签名兼容：
  - 原构建脚本使用 `jarsigner`，`apksigner verify` 显示只有 `Verified using v1 scheme: true`，v2/v3 均为 false。
  - Android 12 及部分厂商安装器对重打包 APK 的旧 v1/JAR 签名兼容较差，容易在文件管理器安装时只显示“安装失败”。
  - `build.bat` 改为先 `zipalign -p -f 4`，再使用 `apksigner sign` 输出 v1/v2/v3 签名。

验证：

- `build.bat` 构建通过。
- `aapt dump badging build\launcher-signed.apk` 验证：
  - `versionCode='15'`
  - `versionName='v1.4.1'`
  - `sdkVersion:'23'`
  - `targetSdkVersion:'28'`
- `apksigner verify --verbose --print-certs build\launcher-signed.apk` 验证：
  - `Verified using v1 scheme: true`
  - `Verified using v2 scheme: true`
  - `Verified using v3 scheme: true`
- 新 APK 体积约 `63.92MB`，相比瘦身前约 `105.9MB` 明显降低。
- `adb install -r -d build\launcher-signed.apk` 安装到 `emulator-5554` 成功。
- 启动桌面成功，截图确认 12 宫格主界面显示正常。
- 打开桌面设置成功，截图确认设置页可进入；删除 `720p` 后没有出现启动崩溃。

后续优化方向：

- 继续瘦身的主要大头：
  - `assets/Textures/1080p` 约 27.8MB。
  - `assets/theme_preview` 约 16.2MB。
  - `assets/settings_maintained/maintained-settings-res.apk` 约 6.6MB。
  - `assets/settings_native` 约 3.5MB。
- 下一轮不建议直接删除这些目录，应先确认引用点：
  - 主题预览图可以考虑改成更小尺寸或 WebP/JPG。
  - `settings_maintained` 可以考虑把实际用到的资源合并进主 APK，取消内嵌 APK。
  - `Textures/1080p` 需要继续按实际 12 / 20 宫格、主题和文件夹引用逐项裁剪。
- Manifest 里仍存在大量原版系统级 / Smartisan 私有权限，部分普通 ROM 可能会提示风险；要真正清理需要对二进制 Manifest 做节点级删除或改造构建流程，不宜只改文本 Manifest。

#### v1.4.1 版本与内置搜索页继续修复

修复内容：

- 版本号：
  - 文本 `launcher/AndroidManifest.xml` 从 `versionCode=14` / `versionName=v1.4` 调整为 `versionCode=15` / `versionName=v1.4.1`。
  - 同步修正最终构建会注入的 `launcher/original/AndroidManifest.xml` 二进制 Manifest，确保最终 APK 的 `aapt dump badging` 能读到 `versionCode=15` / `versionName=v1.4.1`。
  - 设置页“检查更新”右侧默认版本字符串同步为 `v1.4.1`。
- 内置搜索页：
  - 去掉自绘 T9 键盘，改为点击顶部输入框后由系统输入法接管。
  - 设置首页新增“启用下滑搜索”开关，绑定 `launcher_search_page_enabled`，关闭后桌面下滑不再进入内置搜索页。
  - 搜索页顶部常用应用区从固定 5 个等分项改成横向可滑动列表，最多展示前 20 个可启动应用。
  - 修复搜索结果行文字错位：结果行固定 84dp 高度，图标和标题都垂直居中，标题使用单行省略。
  - 启动搜索页时使用 `CLEAR_TOP | SINGLE_TOP`，减少最近任务里重复出现两个“锤子桌面”窗口的概率。

验证：

- `build.bat` 构建通过，输出 `build\launcher-signed.apk`。
- `adb install -r -d build\launcher-signed.apk` 安装到 `emulator-5554` 成功。
- 直接启动搜索页，确认顶部常用应用可以横向滑动，滑动后能看到“文件 / 浏览器 / 游戏中心”等后续应用。
- 输入 `root` 后确认搜索结果行中 Root Explorer 图标和文字同一行垂直居中，不再出现标题贴到上方的问题。

涉及文件：

- `launcher/AndroidManifest.xml`
- `launcher/original/AndroidManifest.xml`
- `launcher/tools/java/com/smartisanos/launcher/theme/MaintainedLauncherSettingsHost.java`
- `launcher/tools/maintained_settings_res/res/layout/setting_main.xml`
- `launcher/tools/maintained_settings_res/res/values/strings.xml`
- `launcher/tools/maintained_settings_res/res/values-zh-rCN/strings.xml`
- `README.md`
- `docs/development/DEVELOPMENT_LOG.md`

#### v1.4.2 兼容签名发布

修复内容：

- 版本号：
  - 文本 `launcher/AndroidManifest.xml` 从 `versionCode=15` / `versionName=v1.4.1` 调整为 `versionCode=16` / `versionName=v1.4.2`。
  - 同步修正最终构建会注入的 `launcher/original/AndroidManifest.xml` 二进制 Manifest，确保最终 APK 的真实版本也为 `v1.4.2 (16)`。
  - 设置页“检查更新”右侧默认版本字符串同步为 `v1.4.2`。
- 兼容安装：
  - 延续本日第一轮兼容修复，最终 APK 保持 `minSdkVersion=23`、`targetSdkVersion=28`。
  - 构建脚本继续使用 `zipalign -p` 和 `apksigner` 输出 v1/v2/v3 签名，改善 Android 12 等新系统通过文件管理器安装时失败的问题。
- 包体：
  - 保持 `pb.getResolution()` 统一返回 `1080p`，并继续使用移除冗余 `720p` 纹理后的瘦身构建输入，当前 APK 约 64MB。

验证计划：

- `build.bat` 构建通过。
- `aapt dump badging build\launcher-signed.apk` 应显示 `versionCode='16'`、`versionName='v1.4.2'`、`sdkVersion:'23'`、`targetSdkVersion:'28'`。
- `apksigner verify --verbose --print-certs build\launcher-signed.apk` 应显示 v1 / v2 / v3 签名均为 true。

#### 刘海屏编辑态状态栏下移修复

背景：

- 用户反馈刘海屏手机上长按图标或进入桌面编辑模式时，会露出原本的系统状态栏，桌面内容整体向下移动，底部图标显示不全。
- 对照 maintained 的 `docs/compatibility-fixes.md`，同类问题的根因是编辑、排序、拖拽等特殊模式切换系统 fullscreen / status bar 状态，导致系统状态栏和桌面自绘状态栏坐标脱节。

修复内容：

- `launcher/tools/java/com/smartisanos/launcher/theme/MaintainedLauncherSettingsHost.java`
  - `applyLauncherNavigationBarSetting()` 不再只处理隐藏虚拟键。
  - 每次 `onResume()` / `onWindowFocusChanged()` 应用设置时，都强制保留 `View.SYSTEM_UI_FLAG_LAYOUT_STABLE | View.SYSTEM_UI_FLAG_LAYOUT_FULLSCREEN`。
  - 关闭“桌面隐藏虚拟键”时只清理 `HIDE_NAVIGATION` / `IMMERSIVE_STICKY` / `LAYOUT_HIDE_NAVIGATION`，不再清掉顶部 fullscreen layout。
  - Android 9 及以上设置 `LAYOUT_IN_DISPLAY_CUTOUT_MODE_SHORT_EDGES`，让 Launcher 主窗口可以延伸到刘海短边区域。
  - 同步保持透明状态栏和 `FLAG_DRAWS_SYSTEM_BAR_BACKGROUNDS`，避免系统白色状态栏重新参与布局。
- `launcher/smali/com/smartisanos/launcher/ua.1.smali`
  - 原版窗口初始化 `ua.a(Window)` 不再依赖 `Constants.IS_NAVIGATION_BAR` 才设置 fullscreen layout。
  - 无论是否存在虚拟导航栏，都保留 `0x500`（`LAYOUT_STABLE | LAYOUT_FULLSCREEN`）。
  - Android 9 及以上同步写入 `layoutInDisplayCutoutMode = SHORT_EDGES`。

验证：

- `build.bat` 构建通过。
- `adb -s emulator-5556 install -r -d build\launcher-signed.apk` 安装成功。
- `adb -s emulator-5556 shell am start -n com.smartisanos.launcher/.Launcher` 启动成功。
- 截图 `build\cutout_statusbar_fix_desktop.png` 验证普通态仍使用桌面自绘状态栏，没有出现白色系统状态栏顶下桌面。
- 该问题仍建议在实际刘海屏真机上补充回归：长按桌面图标、进入桌面编辑模式、多页预览、拖动图标到底部 Dock 附近，确认顶部不露系统状态栏、底部图标不被裁切。

### 2026-06-02

#### 【已废弃】桌面图标大小滑块旧接入方式（旧 LayoutProperty 多字段缩放）

#### 桌面设置缺口第一批补齐

修复内容：

- 桌面隐藏虚拟键：
  - restored maintained 首页 `item_id_hide_navigation_bar` 开关，绑定 key `launcher_hide_navigation_bar`。
  - Launcher 主 Activity 在 `onCreate()`、`onResume()`、`onWindowFocusChanged()` 中读取该 key，只在桌面主界面应用 `HIDE_NAVIGATION`、`IMMERSIVE_STICKY`、`LAYOUT_HIDE_NAVIGATION`、`LAYOUT_STABLE`。
  - 设置页、主题页、图标页不直接应用隐藏虚拟键，避免影响非桌面界面。
- 角标相关强迫症选项：
  - maintained 风格设置首页新增“隐藏图标上的角标”和“紧贴屏幕横扫清除角标”两个开关。
  - 分别绑定 `launcher_hide_badge` 和 `launcher_badge_swipe_clean`，沿用旧桌面读取 / 刷新链路。
- 更多区域：
  - “检查更新”读取 Gitee Release 列表，筛选 `launcher-` 标签最高版本，下载使用 `DownloadManager`，Gitee 优先并保留 Release 资产备用地址。
  - “关闭电池优化”优先使用 `ACTION_REQUEST_IGNORE_BATTERY_OPTIMIZATIONS` + 当前包名 `com.smartisanos.launcher`，目标是直接弹出当前锤子桌面的电池优化确认；系统或权限不允许时回退当前应用详情页，不再默认进入所有应用的电池优化列表。
  - “关于我们”从简短信弹窗改为完整页面：顶部锤子风格标题栏、Smartisan OS 标识卡片、“更多 Smartisan 的应用软件”列表和“关注我们”分组。
  - 隐藏“分享此应用给朋友”“问题反馈”“用户体验改进计划 / Smartisan 服务条款”，并修正更多区域卡片背景。
- 下滑搜索：
  - 这一阶段发现原桌面手势代码实际只认上滑，曾临时改为上下滑方向都可进入搜索；该过渡方案已在 2026-06-30 收口，上滑入口现已停用，仅保留下滑搜索。
  - 移除旧逻辑中前三次只弹 `fling_down_tips` 提示、不真正打开搜索的分支，第一次触发就直接进入搜索页。
  - `CallStubUtils.Q()` 不再调用缺失的 `com.smartisanos.quicksearch.provider.extra`，改为直接启动本项目内置搜索页。
  - 将旧 `ua.fc()` 搜索目标从缺失的 `com.smartisanos.quicksearch / com.android.quicksearchbox.SearchActivity` 改为已注册的 `ThemeChooserActivity`，并通过 `launcher_show_search=true` extra 进入搜索模式。
  - `MaintainedLauncherSettingsHost.show(...)` 根据 extra 切换为内置搜索页，支持应用名 / 包名过滤和点击启动。
  - 搜索手势只保留 Launcher 顶层入口；RootView 和 SMGLSurfaceView 不再重复处理同一次触摸，避免下滑被多层触发。

验证：

- `build.bat` 构建通过，输出 `build\launcher-signed.apk`。
- `adb install -r -d build\launcher-signed.apk` 安装到 `emulator-5554` 成功。
- 设置首页截图确认“桌面隐藏虚拟键”“隐藏图标上的角标”“紧贴屏幕横扫清除角标”均显示为同款锤子开关。
- 直接启动 `ThemeChooserActivity --ez launcher_show_search true` 可打开内置搜索页；输入 `root` 后列表过滤到 Root Explorer。
- ADB 与桌面操作验证：短距离下滑保持桌面，明确长距离单指下滑进入 launcher 内自绘搜索页；搜索入口不依赖外部 provider。
- 通过系统设置值和桌面启动路径确认 Launcher 可读取 `launcher_hide_navigation_bar` 并应用隐藏虚拟键 flags；当前模拟器本身底部虚拟键不可见，仍建议在有三键导航的设备上补充截图回归。

涉及文件：

- `launcher/tools/java/com/smartisanos/launcher/theme/MaintainedLauncherSettingsHost.java`
- `launcher/tools/maintained_settings_res/res/layout/setting_main.xml`
- `launcher/smali/com/smartisanos/launcher/Launcher.smali`
- `README.md`
- `docs/development/DEVELOPMENT_LOG.md`

### 2026-06-01

#### 应用图标页交互、样式和刷新稳定性修复

背景：

- 用户反馈应用图标页的“改进版图标”开关虽然接近首页开关，但不是同一个 Smartisan/maintained 样式。
- 选择单应用图标后页面会整体刷新并跳回顶部，尤其从相册选择图片返回后会闪一下回到顶部。
- 点击右侧图标行的文字区域也会弹出选择框，实际预期是只有图标块或图标包右侧状态文字可以点击。
- 图标包行宽度和背景没有和上方开关组成同一组卡片。

修复内容：

- `改进版图标` 开关：
  - 从手写 `LinearLayout + SwitchEx` 改为复用首页同款 `SettingItemSwitch`。
  - 使用 maintained 的 `setting_item_switch_layout`、`SettingSubItemSingleStyle` 背景和同一个 `SwitchEx` 绘制链路。
  - 点击整行和点击开关本身都能切换，但视觉样式不再单独手写。
- `图标包` 行：
  - 背景改为 maintained 的 `selector_setting_sub_item_bg_bottom`，和上面的 `改进版图标` 行组合成一个整体。
  - 默认显示 `不使用图标包`。
  - 弹窗入口收窄为右侧状态文字，点击左侧 `图标包` 标题不再弹出选择框。
- 单应用图标选择：
  - 左侧系统原图、右侧推荐/加号图标块保留点击。
  - 取消整行点击，右侧应用名和说明文字不再误触发弹窗。
  - 选择左侧默认图标、右侧推荐图标后只刷新当前行，不再调用 `showIconPage(activity)` 整页重建。
- 相册自定义图标：
  - 保存选择图片前的当前滚动位置。
  - 图片返回后优先在当前页面查找对应应用行并刷新该行。
  - 如果当前行找不到，才兜底重建应用图标页，并恢复原来的 `ScrollView` 位置。
- 全局改进版图标开关：
  - 开启/关闭后更新当前页面所有已渲染图标行的红色对号和说明文字。
  - 不再通过整页重建制造滚动跳动。

涉及文件：

- `launcher/tools/java/com/smartisanos/launcher/theme/MaintainedLauncherSettingsHost.java`
- `README.md`
- `docs/development/DEVELOPMENT_LOG.md`

验证：

- `build.bat` 构建通过，输出 `build/launcher-signed.apk`。
- `adb install -r -d build\launcher-signed.apk` 安装到 `emulator-5554` 成功。
- 已在 MuMu 虚拟机中确认：
  - 开关样式与桌面设置首页同款开关一致。
  - 选择推荐图标、默认图标时当前页即时更新。
  - 从相册选择图片作为图标后保持当前位置。
  - 右侧应用文字区域不弹窗。
  - 图标包只有右侧状态文字区域弹窗，左侧标题区域不弹窗。

后续注意：

- 应用图标页当前仍由 `ThemeChooserActivity` 承载 maintained 风格兼容页，还不是完整迁移的原生 Smartisan Settings Activity。
- 图标自动识别资源和 Smartisan 网络图标链路仍建议继续做更多应用回归，尤其是系统应用、Google 应用和第三方应用混合安装场景。

## QuickSearch 历史补录（记录日期：2026-08-09，不参与倒序日期轴）

#### QuickSearch Q8-C Original Search Semantics & Ranking

审计与修复：

- 以 `original_apks/quicksearch_phone_reference/base.apk`（SHA256 `EDF915A1CA745276F07538ABEDBBF43711B20426697E45A83A4C076ED0562D66`）及其 `decoded/` 为唯一 pristine 证据，确认 `applications` / `searchkey` schema、LIKE/INTERSECT 查询、HanziToPinyin 前缀 trie、profile/shortcut 边界和独立 History 关系。
- 新增 `docs/development/QUICK_SEARCH_Q8C_SEARCH_SEMANTICS.md`，记录已确认行为与 `UNCONFIRMED_PRISTINE_BEHAVIOR` 边界。
- 在既有 `SharedSearchMatchModel` 内补充后台完整拼音/词首 token form，并按空格分词逐 token 前缀匹配；未新增 Provider、SQLite、第二 matcher、T9 链路或 UI/IME/手势改动。
- `last_resume_time` 写入来源、`token_index` 完整表/视图及 Top Apps 最终排序在 pristine 证据中仍未完全确认，Q8-C 不据此虚报 PASS。

验证：

- `build.bat` 成功，`build/launcher-signed.apk` SHA256：`BADED65C2688E537EFD0B8F829B832010B0DED7F9C15FA30D0884AFB10A18573`。
- APK 签名：v1/v2/v3 `true`；aapt2 badging：`com.smartisanos.launcher`，versionCode `30`，versionName `v1.5.5`。
- 按 Q8-C 限制仅覆盖安装一次 Launcher APK，未安装测试 App、未清除数据、未重新全量扫描。启动日志出现 `QS_INDEX_READY generation=1`、32 条唯一 entry、无 FATAL/ANR/ConcurrentModificationException；设备当前前台仍为 vivo 原桌面，无法完成完整手势/输入语义矩阵。

结论：`Q8-C PARTIAL / UNVERIFIED`，不得启动 Q9；保留后续对 pristine 未确认字段的静态核查。

#### QuickSearch Q8-C.1 Original Search Semantics Evidence Closure

- 以 pristine `original_apks/quicksearch_phone_reference/base.apk`（SHA256 `EDF915A1CA745276F07538ABEDBBF43711B20426697E45A83A4C076ED0562D66`）及 `decoded/` 完成补充静态闭环：`token_index` 仅存在于未接入实际 query 的 `MIN(token_index)` 死字符串，schema 没有该列或来源；`last_resume_time` 的字段、投影和过滤读取已确认，但 QuickSearch APK 内没有写入调用，外部写入保持 `UNCONFIRMED_PRISTINE_BEHAVIOR`。
- 确认原版 Top Apps 五槽位来自 `Settings.Global.maybe_launch_pkg_from_predict_result` 的最多五个包名，由 PackageManager 取得 label/icon；History 和 hot-word 是独立列表。预测源生成方及最终稳定排序未由 pristine APK 证明，仍为 `UNCONFIRMED_PRISTINE_BEHAVIOR`。
- 确认 `FuzzyTonesHelper` 使用后台 HandlerThread 加载 provider-backed `fuzzytones.db`，`fuzzy_tones_enabled` 默认关闭；当前设备是否启用未确认。pristine `alias` 存在并参与 LIKE，但当前 `SearchEntry` 尚未接入 alias，保持 `UNCONFIRMED`。
- 更新 `docs/development/QUICK_SEARCH_Q8C_SEARCH_SEMANTICS.md` 的“PRISTINE EVIDENCE CLOSURE”章节。本轮代码修改 `0`、构建 `0`、安装 `0`，没有新增测试 App，也没有重新扫描应用。
- 已通过显式 Manifest HOME 组件 `com.smartisanos.launcher/.Launcher` 将当前已安装 APK 拉到前台，未修改默认桌面；随后清空 logcat 等待用户真实手指语义操作。当前尚无新的 `dianhua/dh` UI 证据，运行时语义和 Top Apps 五身份暂记 `UNCONFIRMED`，Q9 不启动。

结论：`Q8-C.1 STATIC_EVIDENCE_CLOSED / RUNTIME_PENDING`；不得安装、构建或推送以补齐未知项。

#### QuickSearch Q8-D.1 Final Runtime Visual Verification

- 本轮按用户授权仅对 vivo X21A 执行一次 `adb install -r -d build/launcher-signed.apk`，本地 SHA256 已核对为 `E09A29F2EF4404EEEAB123FCF48144F8F3EACE24749150977BD58A8DA55329D7`；命令超时，未重试。
- 超时后按规定检查设备：`lastUpdateTime=2026-08-09 22:06:16`，设备实际 APK SHA256 仍为 `BADED65C2688E537EFD0B8F829B832010B0DED7F9C15FA30D0884AFB10A18573`，前台为 `com.android.packageinstaller/.PackageInstallerActivity`，未达到目标 APK 一致性，立即停止。
- 未进行真实手指视觉验收，未清 Launcher 数据、未安装测试 App。Q8-D.1=`UNVERIFIED / INSTALL_TIMEOUT`；Q8-D 不得改为 PASS，Q9 不启动。

#### QuickSearch Q8-D.1 真机回放发现与修正

- 目标 APK 后续在 vivo X21A 设备一致；真实进入 Original Search、IME、Top Apps=5、History=4 成功，`微信`/`电话` query 各命中 1 条。
- 点击 History 清除 X 触发 Launcher `FATAL/InflateException`。根因是嵌入 QuickSearch 资源包 Drawable ID 被直接传给宿主 `View.setBackgroundResource()`，宿主资源表将 `0x7f030002` 解为 `layout/abc_action_menu_item_layout`。
- 已将 Dialog panel/button 改为 `uiResources.getDrawable(id)` + `setBackground(Drawable)`；未再次安装。修正版构建 APK SHA256=`77DD92989E3AF1884735809D05C2921876A9C5B60C2C33449DA55BC63E6ED39C`，v1/v2/v3 通过。
- 结果区层级截图已确认 header、白色 row、divider 与淡蓝灰区域仍需修正版重新验收；Q8-D.1=`FAIL / RUNTIME_UNVERIFIED`，Q9 不启动。

#### QuickSearch Q8-D Original Search Result + Dialog Fidelity

- pristine 审计确认应用结果 header 来自 `header.xml` / `StickyListHeaderStyle`，标题源为 `application_desc`（中文“应用程序”），14sp bold、12dp 左内边距、`#f5f5f5` 背景；应用 row 继续使用 60dp / 30dp icon / 16sp bold 的 `list_item_nophoto_bg`，divider 为 `list_divider_drawable` 的 `#14000000`、2px。
- pristine `SearchActivityView.L()` 创建 `i/p/a` `MenuDialog`（普通 Dialog，底部对齐、透明 Window、dim、右上关闭、红色大按钮），不是 Android AlertDialog。当前 OriginalQuickSearch 已接入结果 header、divider、literal query `ForegroundColorSpan(#d44d44)` 和专用底部清空 Dialog；无结果时不显示 header，空态淡蓝灰背景保持不变。
- 新增 `docs/development/QUICK_SEARCH_Q8D_RESULT_PRESENTATION.md`。本轮 `build.bat`、`git diff --check` 通过；未安装 Launcher、未安装测试 App。状态：`CODE_COMPLETE / RUNTIME_UNVERIFIED`，不得启动 Q9。
