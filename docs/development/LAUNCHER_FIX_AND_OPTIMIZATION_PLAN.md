# LAUNCHER_FIX_AND_OPTIMIZATION_PLAN.md

# Smartisan Launcher Original Port
## 原版代码复用、BUG 修复与性能优化专项计划

## 2026-10-08 审计后修复顺序与防回归门（计划，尚未实施）

本节以当前工作树（包括已暂存及未暂存内容）和 10 月 7 日开发日志为起点。旧 `docs/build/LAUNCHER_FIX_AND_OPTIMIZATION_PLAN.md` 是历史副本，不能覆盖本文件的当前状态。以下“待修”不表示已经修改或真机通过；每阶段只处理一个现有 Owner，阶段间重新记录源码／APK hash 和验证结果，不覆盖用户已有暂存内容。

| 顺序 | 当前证据与改动边界 | 完成门（缺一不可） |
|---|---|---|
| P0 固定现状 | 分开记录 HEAD、暂存、未暂存及设备 APK；对照 `DEVELOPMENT_LOG.md` 最新状态、原 APK／`clean_launcher`／maintained，确认用户最近改动是否已覆盖旧审计问题。锁屏、Folder、快捷桌面、图标库各固定一条可重放路径。 | 有同一构建的源码与 APK hash、设备／ROM／宫格／主题／数据状态、复现步骤和第一异常；旧记录与新证据冲突时标明被取代。无需清除用户数据。 |
| P1 图标库正确性 | 先在 `IconLibrarySearchPage` 复现暂停时待执行查询丢失、恢复后旧结果与当前输入不一致，以及目录失败时重试文字不可见。只在现有查询世代和 Loading View 内修复。随后在 `tools/icon_library.py` 验证截断／损坏 PNG 不可入库、同名图片换内容后的目录修订与缓存失效；在现有 `IconPackManager` 隔离单个坏包，保留其余包可用。 | 每个问题有修前失败、修后通过的行为断言；取消／恢复、快速改词、分类返回、坏包＋好包、图片替换与重新进程均通过。源审计失败应阻止生成，不能静默丢资源。 |
| P2 预览队列及回归门 | `IconPreviewRepository` 的 96 项阈值目前仅淘汰 P1/P2，P0 连续进入仍可增长；先测真实可见 Cell 最大并发、队列峰值、取消与回调时序，再决定保留／合并 P0 的现有调度策略。把 P1 的生产行为负例接入现有 `tools/tests` 与构建前门；构建后核对实际二进制 Manifest、签名、版本和 APK hash。 | 同一 session 压力下队列／内存有可解释上限，当前可见图标不丢失、不闪旧图、取消后不回写；负例在修前确实失败。每次触及图标库、主题、解锁、快捷桌面或恢复 Owner，运行该 Owner 的既有回归及共享冒烟矩阵。 |
| P3 流畅度证据与窄优化 | 延续 S0–S6，不重做已完成的 S1a／S2／S3／F01–F15。优先核验锁屏 Perfetto 是否实际包含 Launcher／窗口／首个可见帧，再对齐关屏、Resume、准备、PLAY 和解锁前静止段；普通／兼容起播时机、120ms 预滚和动画时长冻结。Folder 首开长帧、快捷桌面 readPixels／S1b、图标候选峰值分别采样，确认首个重活 Owner 后才单项优化。 | 相同设备、APK、数据、12／20 宫格、主题及刷新率下各至少 5 次，记录中位数与最坏值、帧／CPU／内存／GC 和录像；保持原版视觉、手势、动态效果与数据新鲜度。无有效样本则保持现状，不以构建成功或局部 CPU 数值宣称整体流畅。 |
| P4 累积验收与文档收口 | 按现有 S6／全项目回归矩阵检查冷启动、HOME、锁屏／解锁、12↔20、普通／透明／毛玻璃、四指主题、Folder、搜索／T9、图标替换、快捷桌面首次打开／取消、备份恢复与分身；区分可自动测和需真机测。 | 每项记录 PASS／FAIL／NOT TESTED 及 APK hash；失败仅回退所属小补丁并重测。最终状态更新本文件与 `DEVELOPMENT_LOG.md` 顶部及当日详情，长期稳定规则才进入项目 `MEMORY.md`，不创建新的流水文档。 |

施工时遵守 `ICON_RENDERING_CONTRACT.md` 的四层 Owner、`QUICK_SEARCH_FINAL_STATUS.md` 的冻结边界和 `MODERN_ANDROID_LAUNCHER_MODEL_REFACTOR.md` 的唯一 Package/Profile/Model 状态源。10 月 7 日已撤回的光影 atlas／mesh／直接绘制试验、历史标记【已废弃】的解锁或图标方案均不得当作候选修复。快捷桌面冷重载后首次打开已有有限真机证据；真实备份恢复与跨 ROM 仍是待验项，不能因 P3 再次改变其原手势或背景交接。

## 2026-10-05 当前暂停点与验收边界

用户要求“先这样，更新文档”，代码处理停在当前版本；本次只更新文档，不继续构建、安装、操作手机或调整参数。最新事实以DEVELOPMENT_LOG的“图标搜索界面与锁屏／解锁：停止时的当前状态”为准。

| 范围 | 当前状态 | 尚未验收／后续约束 |
|---|---|---|
| 图标搜索与候选（S4相关） | 已实现元数据索引、可回收网格、网络／预览线程隔离、有界缓存；本机分类真分页、原设置样式、结果数量及返回已检查 | 中文／分类未全量完善，真实跨应用持久化与恢复、20个真实安装包、长稳／跨ROM未全覆盖；不能再把S4整体写成尚未实施，也不能写整体验收完成 |
| 微信返回误播 | 已取到后台USER_PRESENT晚消费证据并加入现有Owner资格保护；一个诊断包获用户确认，正常兼容解锁也有记录 | 后续准备流程多次调整，最终包完整误播回归待补；不能用系统设置未复现证明微信正常 |
| 锁屏卡顿／解锁前静止 | **未解决、未完成性能验收**；用户最新反馈优先 | 普通与兼容起播时机冻结，不改变原120ms预滚、焦点门或动画时长；播放方法相同不等于首次可见画面时序相同 |
| 新Perfetto样本 | trace已保留本地，首次查询未返回Launcher进程／切片 | 必须先验证采样有效性，再对齐窗口与真实动画帧；不能据此宣称提速／根因已确认 |

先前S1／S2／S3的实测收益仍只对其原样本有效，不能延伸为本轮锁屏／解锁通过。准备链恢复与再次调整未获得稳定最终验收，后续必须先读当前代码与包hash，不继续按中间试验结论施工。MEMORY.md未更新；既有暂存／未暂存内容保留，本次不暂存、提交或推送。

## 2026-10-04 流畅度专项方案：功能与原版表现优先

状态：**已开始实施，首批正式包已安装；完整矩阵未全部验收**。本节对应用户要求“制定完整方案，看下怎么优化流畅度，但是不要影响正常功能操作”。它补充本文件旧阶段计划，不重新编号或重做已完成的阶段，也不将 F01–F15 稳定性修复撤回。最新实现、正式性能样本及未验范围见 DEVELOPMENT_LOG 的“2026-10-04 流畅度优化首批实施”。

| 当前项 | 实施状态与所测结果 | 后续边界 |
|---|---|---|
| S0 | 基线 APK／源码保存；相同普通主题12宫格动作复测，剔除采错页面的样本 | 冷启动、多主题与跨ROM基线仍需补足 |
| S1a | DOWN 不截图；原版确认分支授予资格，背景完成后揭露，GPU读回携带 generation。2026-10-05纠正多页13／10被一律拒绝的回归：单／多页首页沿原版门进入，截图前CANCEL，终止不重复派发，未呈现宿主／窗口失败清理。97项触发／模式／归属及9项世代检查通过；单／多页各10次图标起手、取消／反向／第二指、非首页返回及Folder／设置响应已测，详见10月5日日志 | 历史冻结未全部捕获同等现场；实际20宫格、多主题、四指及完整系统打断／生命周期矩阵未全覆盖，不标全阶段验收 |
| S3（比例校正热点） | S1复测仍有长帧后，定位重复反射并缓存元数据；71项几何检查通过。正式5轮10组切换，最大 GL CPU 28.011／15.161／13.751／13.963／14.897 ms；基线52.999 ms，所测 >33.33ms CPU 长帧由4降至0 | 实际20宫格／透明／毛玻璃／倍率／编辑拖动回归待补；未缓存场景结果、未改引擎 |
| S2a/S2b | 已实施资源数据复用、主题共享状态及后台刷新、同 Activity 已离场 MAIN 复用；434项 Android 资源、23项主题状态、67项页面生命周期检查通过。正式包10轮设置往返，BACK处理最大7.783–12.063ms，基线29.171ms；完整结果见最新日志 | 初次主题状态扫描仍在MAIN以保持首屏准确；全设置／下载安装／配置变更／overlay完整真机矩阵未全部验收 |
| S5（搜索资源准备） | 原搜索资源提取复用已有队列，在真实首帧后预热；不更改Loading、恢复守卫或首帧交接 | 仅此非关键准备项已实现，不代表启动／HOME／Loading阶段验收 |
| S1b、S5其余项 | 尚未实施；S4后续实现与验收边界见本文件2026-10-05节 | 继续按实际Owner逐阶段定位，不能用设置返回收益替代截图缓冲、候选预览及Loading验收 |
| S6 | 本批标准构建、签名／对齐、保留数据安装与hash、正式包双向路径和日志检查通过 | 全范围回归仍待完成 |

首批性能正式 APK 为 v1.5.8/code33，SHA256 `3BF81D29ECD21E033874232949C1E512FE2EC90D2BAE75DA3316AB83FA1CA827`；后续触摸归属修复包 SHA256 为 `84F06AADC57E99F3D6DD23E71759E1EB63B222706BDE6ED843F047AFDA57FF7A`，vivo V2458A/Android16 已保留数据安装并拉取校验一致。最新现场及验证见 DEVELOPMENT_LOG“快捷桌面与单页／多页触摸归属修复”。临时 Trace 包装已移除。普通帧 p95/p99 未证明改善，当前收益是减少已定位的切换尖峰与误截图，不代表整个项目的显示帧率。S3先处理同一多页复测中确认的热点，S2资源／转场没有混入该补丁。

2026-10-05的现行触摸修复包为v1.5.8/code33，SHA256 `083CD9C8E1E149EB92C5F87D51C11A8F1620D9936ED7C2CD2B61F8E151031393`，保留数据安装与拉取hash一致。原版核对证明多页首页可进入；上一条历史包的模式13／10排除规则不再适用。最终包单／多页各3次、反向取消、Folder／设置返回的18项窗口复验及9次请求的取消先于截图日志通过；更完整首轮矩阵与剩余边界详见DEVELOPMENT_LOG的10月5日记录。

S2后续正式包为v1.5.8/code33，SHA256 `DB2C5CF79F051C5CDEDC3DDC88F7E88A4FC5C43DC76001977D3C0CA7C009BE99`；已在同一vivo保留数据安装并拉取校验。原动画时长／曲线、光影及主题参数保持。10轮结果限定主题、应用图标、翻页动画页重复打开与返回，不代表所有子页或整个项目已优化完成。

2026-10-04后续建议已作可行性复核，详见DEVELOPMENT_LOG“后续流畅度建议可行性复核”：初始化迁移已有持久完成门，调度去重仅属有限后台整理，尚无滑动收益证明；候选已有优先级／缓存／尺寸采样，应先量完整批次的队列占用，保持完整列表单次发布与下载副作用；S1b缓冲复用不能减少readPixels且可能增加闲时内存，需实测再保留。正式主题详情70张源图仅626×1356／556×1204，不采纳笼统普遍降采样。搜索资源预热锁等待、首次主题状态及共享队列竞争需补证，Loading与恢复安全门不动。本次为审计，未实施上述后续改动。

### A. 目标、基线与施工约束

目标是减少点击后停顿、动画中的长帧、重复打开的加载和不必要的内存分配。手势、页面结构、数据新鲜度、图标来源／尺寸／Alpha／光影、原版动画和稳定性保护优先于性能收益。不能预先承诺所有 ROM 零风险；以明确回归矩阵和逐项验收证明所测范围功能保持。

2026-10-04 已测 APK SHA256 为 `0598DD95FDD8DF48EE52AF497AE47A38E597E176E7F0DA688DED0AB2022CBF2E`，vivo V2458A / Android16，本地正式产物 hash 本次重查仍一致。工作区含既有 staged／unstaged 修改；实施前必须重新记录相关源文件 hash 与安装 APK hash，不以 HEAD 单独代表当前功能基线。

| 已有证据 | 可据此决定的事 | 不能据此决定的事 |
|---|---|---|
| 普通点击／Folder／多指会申请快捷桌面截图，普通点击产生1260×2800锐利层；缓冲＋位图约26.9 MiB | 优先消除无效截图，审计读回与分配 | 不能未经验证延后真实揭露所需截图、降低背景清晰度 |
| 两轮单页↔四页切换出现47.6–52.8 ms GL长帧 | 必须单独定位模式切换与截图链 | 当前缺方法栈，不认定唯一长帧Owner，不直接改原版FBO／mipmap |
| 设置Activity往返84个surface frame中9个App Deadline Missed；MAIN doFrame最高32.65 ms，inflate最高28.55 ms | 减少重复页面准备和首帧布局 | 不是所有子页／overlay的卡顿率，不能混入Buffer Stuffing／Display HAL |
| 1919²解码45.54 ms发生在worker，GC48.07 ms发生在HeapTaskDaemon | 核对源图内存及任务并发 | 不能写成主线程被解码或GC暂停48 ms |

固定施工规则：

1. 一次只处理一个Owner或一个可独立验证的改动；先验证误截图触发，再验证缓冲复用，二者不绑成不可拆的补丁。
2. 复用现有QuickDesktopController／Capture、SettingsHost、Bridge、IconPreviewRepository、资源Owner、ReloadCoordinator；不新增重复Manager／Service，不替换原版引擎。
3. 不改动画时长／曲线／手势阈值来制造“更快”；不关闭感应光影、动态图标、模糊或其他现有功能换取帧率。
4. F01–F15身份、事务、UNKNOWN保留、writer锁、generation／session、GU三分量原子交接均为保护条件。磁盘commit／fsync只按调用线程和数据依赖逐个判断，禁止整体改成apply或删锁。
5. 所有复用都有明确失效条件和生命周期上限；不静态持有Activity／View，不缓存一次结果后永不刷新，不任意增大线程池或长期缓存容量。
6. 保留原版资源、12／20可选宫格、透明主题动画限制和图标冻结合同。九／十六宫格仅参考，不作为新增可选项。

### B. 实施顺序与每阶段范围

| 顺序 | 范围 | 预期收益 | 风险控制 |
|---|---|---|---|
| S0 | 固定基线、补足动作／帧／任务时间线 | 后续能证明改善而非换场景 | 不做功能改动，临时诊断可移除 |
| S1a | 快捷桌面截图触发及多指取消 | 消除普通操作中的无效GPU读回／大分配 | 原版手势归属和揭露前背景逐帧对比 |
| S1b | 截图缓冲生命周期 | 降低真实打开时分配／GC压力 | 不覆盖worker／ImageView仍消费的位图 |
| S2a | 共用资源复用、主题状态快照 | 降低页面准备和重复Binder查询 | 配置／安装／下载变化正确失效 |
| S2b | 设置共用转场、有限页面复用 | 降低返回和首次布局长帧 | Activity与overlay分别验，数据／返回／滚动状态一致 |
| S3 | Cell热路径与多页切换剩余Owner | 减少重复反射／临时对象／模式准备 | 保留像素对齐、圆形比例、Folder／Dock遮挡 |
| S4 | 图标候选／预览及搜索绑定 | 减少队列等待、大图及集中回调 | 稳定候选排序、来源契约、IME／T9／取消门 |
| S5 | 启动／HOME／Loading非关键工作 | 减少首帧前和动画期间竞争 | 数据库前安全门及真实首帧交接不动 |
| S6 | 全路径回归与同条件性能复测 | 确认累积改动的收益和功能保持 | 每项失败回退对应补丁，保留既有稳定性修复 |

S1完成后重新采样多页和Folder；若长帧已消失，不以旧样本为由继续修改原版渲染。S2、S3、S4也采用相同“复测后再决定”的原则。

#### S0：可比较的功能和性能基线

- 复用现有Perfetto、LauncherStartupDiagnostics、SettingsNavigation、SmartisanPerf、QuickDesktop日志与审计脚本。以事件标记记录点击／手势开始、原版Owner确认、资源就绪、首个可见画面、动画结束、任务取消；避免逐图标逐帧日志。
- 先跑正式包功能烟测再启用诊断。需要补采样时只增加受控短时Trace区段：模式准备、Cell绑定、页RenderTarget、截图分配／readPixels／worker、设置inflate／bind／layout；不增加第二套性能Service。
- 当前正式包不允许shell方法采样；只有必要时才做可移除的诊断包，先验证启动／Folder／日历／设置基本功能，诊断开销明显的样本不与正式包直接比较。结束恢复正式包，确认诊断类和标记不残留。
- 真实打开方式由截图／窗口／页面标记确认：长按单图标不算多页编辑，失败搜索入口不算搜索性能，冷进程不算首次干净安装。普通HOME、进程冷启动、升级后第一次打开、同进程重复打开分别记录。
- Perfetto缓冲必须覆盖动作完整区间；检查丢失事件。GL统计区分CPU运行、buffer／VSync等待和实际显示；FrameTimeline缺少GL应用帧时不输出虚假的显示FPS／全项目卡顿率。

#### S1a：消除快捷桌面误截图，不改变手势

当前问题是ACTION_DOWN只按桌面区域即准备截图。已有RootView调用顺序是Controller.onTouch在原识别器之前，RootView.a中的onProgress也位于`J.Ta()`／单指／原版MagicFlow允许门之前。因此**不能简单把DOWN里的schedule搬到现有onProgress，然后宣称触发条件正确**。

实施边界：

- DOWN仅记录手势起点和候选状态；普通点击不刷新内容、不清空背景、不申请整屏截图。
- 必须复用原版确认为可揭露快捷桌面的单指右滑状态，包括`J.Ta()`、sLeftScreenEnabled、桌面区域、RootView当前状态和现有取消规则。Folder／编辑／多指／竖滑／反向翻页／Dock／系统区域不提前领取快捷桌面截图。
- 优先在现有原版确认分支与Capture之间做最小接线。原识别器继续拥有手势，兼容层不能提前消费事件或改变RootView的Ad／拖拽／多指派发。
- 确认意图后，核对GL framebuffer是否仍是揭露前完整桌面，并让所需锐利层在首次可见揭露时可用。先用逐帧证据选择安全读回位置，不用固定毫秒延迟，不在揭露途中替换已显示背景。
- 新世代、第二指、ACTION_CANCEL、关闭／HOME／stop／detach使旧请求失效；已开始的GPU读回不声称可以强行取消，但其结果不得覆盖新窗口或新手势。

验收：每种非快捷桌面操作连续20次，capture请求／读回次数应为0；一次有效打开最多一次有效读回，不能漏背景。慢拖／快甩／往返反向取消、揭露后加第二指、快速开关、Dock／Folder、多页模式、设置／搜索返回及最新桌面背景均通过；没有闪白、旧画面、背景突然更换或错误吃手势。若不能同时做到触发准确和揭露连续，S1a不验收，不使用视觉退化fallback。

#### S1b：只优化已有截图Owner的内存生命周期

- S1a先降低频率，再决定是否值得复用DirectByteBuffer；仅在GL线程按真实Surface宽高／像素格式复用一个受限缓冲，尺寸或Surface变化时失效，退出／内存压力时释放引用。
- `vc.b`还服务原版截图路径；新增可选缓冲使用方式必须留在既有Owner内，只影响快捷桌面调用，其他原版截图仍走原合同。
- 初期不复用仍交给worker／ImageView的Bitmap，不主动recycle显示中的锐利层。确需位图池时必须先证明交接完成与独占写入，并限制容量；不能为了减少分配制造撕裂、recycled bitmap或UAF式竞态。
- 保留当前锐利分辨率、垂直翻转、240px模糊层和既定模糊参数，不换截图API或原版背景材质。

验收：重复开关、取消、Surface重建、分辨率／配置变化、后台／内存压力下图像正确；比较峰值内存、分配次数、GC与首次揭露延迟，不能用额外长期常驻全屏位图抵消收益。

#### S2a：资源与状态数据复用

1. `OriginalQuickSearchResources`复用AssetManager／Resources，按自身APK更新时间、完整Configuration／density建立有效资源项；每次创建绑定当前Context的轻包装，Theme按现有应用样式创建或校验，禁止复用绑定旧Activity的Wrapper／Theme。复制失败不发布有效缓存；升级提取先在已有后台链预热，临时文件完成后发布，不取消fsync语义。
2. maintained设置资源已有`settingsResources`缓存和`scheduleSettingsResourcesWarm`，保留并核对锁等待，不另建预热线程系统。预热安排在真实首帧之后，受可见任务优先级约束；不能把所有页面提前inflate来拖慢启动。
3. 主题页面两个adapter共用一次安装／下载状态快照；worker查询，MAIN绑定。沿用现有页面身份、下载任务和广播；安装、卸载、下载状态变化更新相关条目，下载时仍显示真实进度，已完成时不能继续显示过期“下载中”。
4. 保留已有SwitchEx位图缓存、ThemePreviewAdapter资源ID缓存、后台主题预览和图标分组；它们已实现，不重复施工。

验收：首次／重复打开，覆盖升级、语言／密度／系统配置变化、主题安装卸载、下载失败／恢复／完成、页面离开后迟到回调；开关／搜索栏／主题预览无资源串用，当前主题与图标来源即时正确。

#### S2b：设置共用转场及受限页面复用

- 先修首帧集中工作：减少重复构造／绑定／requestLayout，仅变化条目更新；可见列表优先，未显示内容不抢首帧；禁止将Android View inflate／操作整体移到任意worker。
- 第一批页面复用只考虑主设置页和测得重复构建较重的页面，限定当前Activity／会话与少量最近页面；能释放监听器和重绑数据才保留View。应用图标、分身、权限、备份／密码等状态敏感页不直接缓存完整View。主页面复用成功后再按证据扩大，而非一次缓存所有子页。
- 复用和重建共用原back／scroll／owner逻辑；进入／返回重新读取变更数据并创建正确请求session，旧图标／主题回调不得更新新页面。
- 评估新旧整页硬件层的建立／上传／销毁成本。保持当前动画180ms、主设置进退场260／220ms和现有曲线；只在同条件证实层策略降低长帧后调整层使用。动画取消、快速导航、HOME和销毁都释放层、清理旧root并恢复触摸状态。
- Activity与Launcher overlay分别走回归，不用其中一条通过代替另一条。首次页面必须正确布局后可见；不靠延迟触摸或空白占位掩盖准备耗时。

验收：所有设置子页逐项前进／返回、快速重复点击、标题返回／系统返回／HOME／边缘手势、滚动位置恢复、开关修改后重进、权限页往返；不存在错页、空白、点击穿透、丢滚动位置、过期标题／开关、重复监听或Activity泄漏。

#### S3：绘制热路径和剩余多页长帧

- `LauncherSettingBridge.alignStaticIconPixelGrid`保留所有原判断与1:1像素对齐，仅补全按真实类／方法签名的Method与Field缓存，以及GL线程scratch复用。首批不缓存最终位置或父链动画结果，因为场景仍可能变化。
- `preserveOverviewIconAspect`只在模式绑定链优化相同模式几何／反射信息；保留节点自身scale被ActiveIcon重绑后重新计算的行为，不能累计缩放或永久缓存旧模式比例。
- 缓存不持有Scene／Activity，scratch不能在MAIN／GL共享写入。主题、图标倍率、12↔20、Surface、节点／ActiveIcon重建仍能正确生效。
- S1／上述优化后若多页仍有长帧，用短时区段或方法栈定位到模式准备、Cell绑定、FBO／纹理上传或mipmap真实Owner再做单项改动。优先复用未变化的原版RenderTarget／dirty机制；没有失效证据不改引擎、不新增预渲染系统。
- Folder与Dock分别验证：保留当前Folder打开时全部桌面／Dock及投影隐藏和关闭恢复、Dock投影遮挡修复；不为减少draw把日历／天气／时钟或投影停住。

验收：12／20各验证单页↔多页、页间拖动、编辑／垃圾桶升降、松手取消、图标加入／移出Folder与Dock；50／100／150%图标倍率，普通／透明／毛玻璃主题、静态及活动日历／天气／时钟。正文与影子几何按合同比较，静止像素对齐和多页圆形比例保持，手持投影方向一致。

#### S4：图标候选、预览与搜索

- 现有IconPreviewRepository已具备两线程优先级队列、最多96个会话任务、容量限制、取消门及多类缓存；不增加第二仓库。补测task enqueue→start→decode→publish，区分排队、解码、MAIN绑定与布局。
- 候选页保持“当前选中优先＋稳定来源顺序”的完整列表语义；优先复用元数据，将长批次拆成有取消边界的小任务，让真正可见预览可以执行。不要把顺序更新为按下载完成顺序，不漏候选或因后台慢任务阻止返回。
- 只对有尺寸采样入口的栅格来源采用目标尺寸解码；不能泛化为Drawable强转、改变AdaptiveIcon裁切或给正式桌面增加二次resample。系统Drawable无法在现有入口低成本降采样时，先做缓存和去重，不重写系统资源解码。
- 图片源／应用／图标包更新、主题与配置变化及时失效；缓存权重按真实字节计。页面不可见时取消预览，卸载、恢复、搜索与桌面仍消费正确来源。
- 搜索先复用S2a资源成果；索引／历史／联系人已有后台与快照链保持。只有采到集中bind／layout开销才合并MAIN刷新，首个可见结果不为批量合并等待固定延迟。原T9、系统IME、首开键盘时机和进退场行为不动。

验收：应用图标查询、清空、返回重进、改进版／原图／图标包／自定义切换、当前选中候选、快速换应用／退出、图标包升级卸载、分身身份；搜索实际进入、首开与重复打开、IME／T9切换、输入清空／结果点击／返回、索引更新／联系人权限及头像回调。

#### S5：启动、HOME和Loading

- 分别测普通HOME、冷进程、升级后资源首次提取和真实重载；分离launcher model、必要图标、恢复守卫、资源提取和首帧之后任务的时间。
- 仅将无首帧／事务依赖的资源预热、预览、索引和维护工作放入现有后台链，首帧后按优先级执行；不在首帧完成瞬间同时启动所有后台任务，也不凭经验新增固定延迟。
- RestoreRecoveryGuard仍在DB初始化之前完成durable状态判定和writer互斥。恢复中的rollback／写日志不能异步越过数据库；只对已确认安全的非事务清理评估后台处理，已有清理后台实现不重复改。
- OriginalLoadingContentFactory／ReloadTransitionActivity保留原加载素材、正常无文字、失败反馈、token匹配、真实首帧交接、10秒失败提示及手动重试。Loading不卡依靠MAIN及时调度；不改为提前关闭遮罩／timeout成功／自动杀进程。
- 角标、天气、安装／卸载／替换和分身沿用已有事件Owner与单飞／合并机制；只有记录到重复任务竞争才在已有队列合并，不能丢通知、延迟正确新增或把UNKNOWN当卸载。

验收：冷启动／HOME／重载／锁屏解锁、加载中切后台／返回／失败重试，正常Loading无黑屏／壁纸闪回／残留遮罩；独立故障注入检查锁／日志／token／generation保持，真实备份恢复另以保留数据的可恢复验证包验收，不拿真实布局做破坏性实验。

### C. 功能保护与集中回归矩阵

| 模块 | 必须保持的操作 | 必须保持的状态／视觉 |
|---|---|---|
| 桌面／多页／Dock | 单页／多页、12／20、编辑、拖拽、垃圾桶及取消 | 图标不压扁／跳位，Dock与桌面同显隐，动画完整 |
| Folder | 打开关闭、快速连开、翻页、应用启动、增删／移出 | 无Dock幽灵投影、无错位、关闭后正确恢复 |
| 设置全部子页 | 标题／系统／边缘返回、HOME、快速导航、值修改重进、权限往返 | 页面和滚动位置正确，状态即时，点击不穿透 |
| 主题／壁纸／动画 | 普通主题、四指切换、透明覆盖、毛玻璃、下载／安装、壁纸变更 | 状态栏／虚拟键／背景交接正确，透明主题动画限制保持 |
| 图标／感应 | 五类来源、倍率、静态／动态日历天气时钟、手持倾斜 | 原Alpha／正文清晰度／比例／位置／投影合同保持，不改深浅 |
| 快捷桌面 | 开关、慢拖、快甩、反向取消、多指、卡片启动／返回、搜索／设置入口 | 背景是最新桌面且揭露连续，媒体／天气正确，手势归属保持 |
| 搜索 | 下滑／快捷桌面入口、T9／系统IME、查询／清空／启动／返回 | 索引新鲜、权限正确、键盘与进退场正确，无旧结果回调 |
| 事件与持久化 | 安装／更新／卸载、角标、OEM分身／工作资料、备份／恢复 | 身份／槽／数据不丢，事务门不退化，UNKNOWN继续保留 |
| 生命周期与内存 | HOME、stop/resume、锁屏解锁、进程／Surface重建、低内存／配置变更 | 无Activity／位图／监听器泄漏，无黑屏／残留层／崩溃 |

每阶段先测受影响路径双向20次、快速操作至少10组；资源／缓冲修改增加50次连续往返内存采样。集中阶段热路径至少10个完整同条件样本，冷进程至少5次；数量是发现回归的起点，不等于全机型可靠性证明。V2458A优先；原版锤子Android9可作行为参考，Android8兼容检查及其他ROM／旧设备在可用时追加，未提供设备的范围明确标为未验。

### D. 性能目标与“不影响功能”的验收门

- 每条路径记录点击／手势→首个正确可见画面、动画区间、p50／p95／p99帧间隔或真实present耗时、超预算帧数、MAIN与GL CPU、任务排队、位图分配／峰值内存、GC。按当前实际刷新间隔T计算预算，60Hz时T约16.67ms；不提前承诺120Hz或统一用60Hz判断所有设备。
- 同一设备／APK来源／宫格／主题／图标倍率／光影开关／缓存冷热／动作／刷新率下，先明确热状态再取多次样本；同时记录后台负载和温度异常，不能用少图标／关闭功能／等待更久伪造收益。
- S1a硬指标：非快捷桌面操作capture读回为0；有效打开次数不多于有效手势数，取消结果不晚到覆盖。
- 有测量根因的目标路径，以跨样本p95／p99改善至少20%或超过2T的长帧次数减少至少50%为优化目标；重复约3T长帧优先消除。它们是待验目标，不是当前结果；改善小于测量波动时不保留增加复杂度的补丁。
- 无关路径p95或首个可见画面延迟若稳定变差超过10%，必须调查；数据、手势、视觉、崩溃／ANR、遮罩、位图安全出现任一回归，直接判该项失败，无论平均FPS是否提高。
- 一项通过需要代码／平台隔离检查＋标准build.bat＋签名／对齐检查＋保留数据安装＋所涉真实前进／返回路径＋AndroidRuntime／ANR／native日志＋视觉／状态对比＋同条件性能复测。编译和安装仅是中间验证。

### E. 回退、产物与阶段报告

实施前在本地build下保存当前已安装／正式APK及本项相关文件内容／hash；既有源码和build产物保留，不执行reset／clean或覆盖用户无关改动。保存基线无需提交或推送。阶段变更保持可独立撤销；发现回归只撤销本项，并按需保留数据恢复本轮已确认可用APK，重新验证启动、Folder、日历、设置和数据状态。不得因为性能补丁失败撤销F01–F15稳定性保护。

每项结果记录进DEVELOPMENT_LOG：实际改动、真实根因、文件、构建／安装／功能／性能证据、未验范围、是否保留、回退结果。成功标准是用户正常操作与原版视觉保持，并且目标路径有可重复收益；未验收项不标完成。阶段完成后去掉临时诊断、验证正式包，并恢复采样临时改变的用户偏好。

本方案仅使用现有Owner和项目构建流程；新增代码须在实施时说明为何现有方法不能直接复用。当前建议先完成S0→S1a，以最少风险消除已证明的无效截图，再按复测结果进入后续阶段。

## 1. 文档用途

本计划用于分阶段处理：

- Launcher 启动和返回桌面速度
- 重载时闪回系统壁纸
- 12/20 宫格
- 透明主题和普通主题
- 动态天气/日历
- 壁纸处理
- 图标加载
- 应用安装、更新、卸载
- 角标
- 应用分身和多用户

每次任务只执行用户指定阶段或第一个未完成阶段，不要一次修改所有模块。

开始每个阶段前：

1. 阅读 `AGENTS.md`
2. 阅读 `MEMORY.md`
3. 阅读 `DEVELOPMENT_LOG.md` 最新状态
4. 阅读本计划对应章节
5. 检查工作区未提交修改
6. 先调查原版链路，再修改当前代码

---

# 2. 总体目标

最终结构必须是：

```text
当前设置页 UI
→ 原版 Smartisan Settings 行为语义
→ 原版 Launcher 配置/事件
→ 原版数据库
→ 原版 PageView / ActiveIcon / Theme / SMEngine
→ 最小普通 Android 兼容
```

需要逐步淘汰：

```text
设置页 Java helper
→ 反射调用多个用途不明的方法
→ 多次固定延迟刷新
→ 杀进程
→ Alarm 重启 Launcher
```

---

# 3. 代码参考顺序

## 3.1 原版 Smartisan Settings

```text
build/decompiled_theme_check/com.android.settings-100/
```

用于确认原版设置操作：

- 点击回调
- 写入键值
- Provider
- 广播
- Intent
- Loading
- 返回 Launcher 顺序

重点入口：

```text
smali_classes2/com/android/settings/widget/LauncherPreview.smali
smali_classes2/com/android/settings/widget/LauncherPreview$Callback.smali
smali/com/android/settings/AppIconsSettingsFragment.smali
smali/com/android/settings/AppIconsSettingsFragment$4.smali
```

以下是当前补写兼容控件，不是原版行为依据：

```text
launcher/tools/java/com/android/settings/widget/LauncherPreview.java
```

## 3.2 原版 Launcher

```text
clean_launcher_raw/
```

用于确认原版生命周期、配置读取、数据库迁移、PageView、主题、ActiveIcon、安装事件和 SMEngine。

## 3.3 已有兼容

```text
clean_launcher/
```

用于确认已经完成的普通 Android 兼容。

## 3.4 当前修改目标

```text
launcher/
```

最终修复必须落在这里。

## 3.5 maintained

```text
E:\FANG\smartisan\smartisan-launcher-maintained
```

只参考 UI 和公开 API 兼容，不替换原版核心。

---

# 4. 修改前必须建立原版链路记录

创建：

```text
docs/development/ORIGINAL_BEHAVIOR_REFERENCE.md
```

每个核心功能按以下格式记录：

```markdown
## 功能名称

### 原版 Settings
- 文件：
- 方法：
- 点击值：
- 写入键：
- Provider/广播/Intent：
- Loading/返回流程：

### 原版 Launcher 接收
- 文件：
- 方法：
- 线程：

### 原版数据库
- 文件：
- 方法：
- 完成条件：

### 原版场景
- 文件：
- 方法：
- 渲染线程：
- 更新节点：

### 当前差异
- 新增代码：
- 被替换的原版行为：
- 固定延迟：
- 是否杀进程：
- 是否重复刷新：

### 最小修复
- 复用方法：
- 必需兼容：
- 修改文件：
```

没有完成对应链路调查，不直接重写核心功能。

---

# 5. 阶段 0：启动基线和诊断

状态：已完成（2026-07-15）。诊断实现和实测基线见
`docs/development/LAUNCHER_STARTUP_BASELINE.md`，原版链路见
`docs/development/ORIGINAL_BEHAVIOR_REFERENCE.md`。

## 目标

先测量，再优化。本阶段不改变功能。

## 参考

```text
clean_launcher_raw/smali/com/smartisanos/launcher/Launcher.smali
clean_launcher_raw/smali/com/smartisanos/launcher/J.smali

clean_launcher/smali/com/smartisanos/launcher/Launcher.smali
clean_launcher/smali/com/smartisanos/launcher/J.smali

launcher/smali/com/smartisanos/launcher/Launcher.smali
launcher/smali/com/smartisanos/launcher/J.smali
```

## 修改

增加可关闭的轻量日志：

```text
LAUNCH_ONCREATE_BEGIN
LAUNCH_ORIGINAL_INIT_BEGIN
LAUNCH_ORIGINAL_INIT_END
LAUNCH_MODEL_READY
LAUNCH_PAGE_READY
LAUNCH_SURFACE_READY
LAUNCH_FIRST_FRAME
LAUNCH_DEFERRED_TASKS_BEGIN
LAUNCH_DEFERRED_TASKS_END
```

记录：

- `elapsedRealtime`
- PID
- 线程
- Activity 实例
- 宫格
- 普通主题
- 透明模式
- 动态图标
- 图标包
- 角标

不得逐帧或逐图标写日志。

## 测试

- 首次安装启动
- 第二次冷启动
- HOME 返回
- 最近任务返回
- 锁屏解锁
- 熄屏点亮
- 进程回收后启动

输出基线：

- `onCreate → first frame`
- 原版初始化耗时
- 模型耗时
- 首屏绑定耗时
- SMEngine 首帧
- `onResume` 兼容任务耗时

---

# 6. 阶段 1：Launcher 启动和返回桌面

状态：已完成（2026-07-15）。首帧后兼容任务、窗口状态缓存和实测结果见
`docs/development/LAUNCHER_STARTUP_BASELINE.md`；阶段 2 已完成，阶段 3 为下一个未完成阶段。

## 目标

首帧只执行原版必要初始化，其他任务首帧后按需执行。

## 当前目标

```text
launcher/smali/com/smartisanos/launcher/Launcher.smali
launcher/smali/com/smartisanos/launcher/J.smali
launcher/tools/java/com/smartisanos/launcher/theme/MaintainedLauncherSettingsHost.java
```

搜索：

```powershell
rg -n "stabilizeLauncherResume|showPendingLauncherReloadLoading|applyLauncherNavigationBarSetting|maybeRefreshLauncherWallpaper|BadgeBridge\.replay|WeatherBridge\.onLauncherResume" launcher
```

## 修改步骤

恢复顺序：

```text
super.onCreate
→ 廉价且必要的窗口设置
→ 原版 J.b(Activity)
→ Page/Surface ready
→ 第一帧
→ 延后兼容任务
```

拆分 `stabilizeLauncherResume()`：

```text
applyProcessCompatOnce()
applyNavigationBarIfChanged()
applyBadgeIfDirty()
completePendingReloadAfterFirstFrame()
```

删除普通启动中的多次补帧。

缓存导航栏状态：

```text
lastWindowToken
lastHideNavigationBar
lastSystemUiVisibility
lastNavigationBarColor
```

首帧后再安排：

- 天气
- 角标
- 图标包
- 在线图标
- Profile
- 设置资源
- 检查更新

每项先判断开关、dirty、缓存和重复任务。

## 验收

- 原版 `J.b()` 和场景初始化不被跳过
- 首帧前无网络、定位、全应用扫描和大图处理
- 重复 `requestLayout/invalidate/requestRender` 明显减少
- 不以关闭原版动画换取速度

---

# 7. 阶段 2：天气和角标的恢复开销

状态：已完成（2026-07-15）。天气关闭态、组件缓存、定位权限边界和角标增量同步已实现；
构建、签名、覆盖安装及关闭态冷启动/三次恢复验证通过。通知访问开启后的实体机角标回归仍保留为风险项。

## 天气参考

```text
build/decompiled_theme_check/com.android.settings-100/
smali/com/android/settings/AppIconsSettingsFragment.smali

build/decompiled_theme_check/com.android.settings-100/
smali/com/android/settings/AppIconsSettingsFragment$4.smali

launcher/tools/java/com/smartisanos/launcher/theme/WeatherBridge.java
launcher/tools/java/com/smartisanos/launcher/theme/LauncherSettingBridge.java
```

## 天气修改

`WeatherBridge.onLauncherResume()` 第一层判断：

```java
if (!LauncherSettingBridge.dynamicWeatherCalendarEnabled(activity)) {
    return;
}
```

关闭时不得：

- 扫描天气应用
- 加载应用 Label
- 请求定位
- 安排周期任务
- 联网

缓存天气组件，以下事件才失效：

```text
PACKAGE_ADDED
PACKAGE_REMOVED
PACKAGE_REPLACED
PACKAGE_CHANGED
Profile 变化
分身变化
```

定位权限只在用户进入天气设置、开启自动定位或主动刷新时申请。

周期任务每次执行前重新检查开关，关闭后停止续约。

## 角标参考

```text
clean_launcher_raw/smali/com/smartisanos/launcher/
launcher/tools/java/com/smartisanos/launcher/badge/
```

搜索：

```powershell
rg -n "badge|Badge|SHOW_MESSAGE_FLAG|EFFECT_REMOVE_BADGE" clean_launcher_raw\smali\com\smartisanos\launcher
```

## 角标修改

只保留一个 `BadgeBridge.replay()` 生命周期入口。

以下情况直接返回：

- 角标关闭
- 无通知访问权限
- 服务已同步
- 通知版本未变化

只更新受影响节点，不重复全量数据库和场景刷新。

## 验收

- 关闭动态图标后恢复桌面不扫描天气应用
- 普通 Launcher 启动不弹定位权限
- 每次 resume 角标只同步一次
- 无多次延迟全量刷新

---

# 8. 阶段 3：12/20 宫格配置和原版迁移

状态：核心实现完成，完整回归待最终验证（2026-07-15）。已确认私有配置优先、原版模式映射和
`N.d + F.i` 数据库链；12→20 已成功，模式相同时直接跳过，未修改数据库结构或原版迁移算法。
阶段 3 的最终回归集中保留：20→12 且板块超过 12 个图标、文件夹、隐藏板块、加密板块、连续切换和设备重启保持。

## 原版 Settings

```text
build/decompiled_theme_check/com.android.settings-100/
smali_classes2/com/android/settings/widget/LauncherPreview.smali

build/decompiled_theme_check/com.android.settings-100/
smali_classes2/com/android/settings/widget/LauncherPreview$Callback.smali
```

查找真实 Callback：

```powershell
rg -n "onLauncherTypeChanged|onLauncherModeChanged|LauncherPreview\$Callback|launcher_mode|launcher_multi_block_mode" `
  build\decompiled_theme_check\com.android.settings-100
```

确认点击值、写入键、确认框、Provider 和重载流程。

## 原版 Launcher

```text
clean_launcher_raw/smali/com/smartisanos/launcher/ua.1.smali
clean_launcher_raw/smali/com/smartisanos/launcher/data/N.smali
clean_launcher_raw/smali/com/smartisanos/launcher/data/F.smali
clean_launcher_raw/smali/com/smartisanos/launcher/data/A.smali
clean_launcher_raw/smali/com/smartisanos/launcher/data/O.smali
```

对照相同路径：

```text
clean_launcher/
launcher/
```

## 当前目标

```text
launcher/tools/java/com/smartisanos/launcher/theme/MaintainedLauncherSettingsHost.java
```

方法：

```text
confirmLauncherMode()
saveLauncherMode()
writeLauncherModePref()
pageModeForLauncherCellCount()
migrateLauncherModeAndRestart()
restartLauncherAfterGridMigration()
```

## 修改步骤

```text
读取当前模式
→ 将 12/20 写入私有 SharedPreferences
→ commit 成功
→ 有权限时镜像 Settings.Global
→ DatabaseHandler worker 执行 N.d + F.i
→ 等待数据库完成
→ Launcher 重新读取配置和页面
→ 等待真实第一帧
→ 关闭设置页
```

私有配置：

```text
prefs: com.smartisanos.launcher_prefs
key: prefs_key_launcher_mode
value: 12 / 20
```

必须保留：

```text
N.d(context, newPageMode)
F.i(oldPageMode, newPageMode)
```

不得重写 12→20、20→12、隐藏/加密板块、图标顺序和文件夹数据。

## PageView 验证

```powershell
rg -n '\.source "PageView.java"|\.source "Cell.java"|switchPageMode|handleSettingsChange|initPageLocation' `
  clean_launcher_raw\smali\com\smartisanos\launcher
```

验证重新建立：

- 行列数
- 单板块容量
- Cell
- Dock
- 文件夹
- 隐藏/加密板块
- 当前页

## 验收

- 12→20 保留原板块和顺序
- 20→12 只由原版 `F.i()` 拆分
- 重启后模式不丢失
- 主存储不依赖系统写权限
- 宫格迁移完成后交给阶段 4 冷重载协调器；宫格业务本身不得直接杀进程

---

# 9. 阶段 4：统一重载与闪回系统壁纸

状态：核心实现完成，完整回归待最终验证（2026-07-15）。独立 `:reload` 不透明过渡页、原版 Smartisan
LoadingUI、旧主进程 PID 精确终止、新 Launcher 真实首帧 token 握手均已验证；没有 Alarm 延迟重启或新增固定成功延迟，未发现新的 Java/native 崩溃。
`:reload` Activity 结束后暂时作为 cached 进程存在属正常系统行为，不得手工杀掉。最终回归集中保留：实体机逐帧无系统壁纸、黑帧/白帧、多 ROM、连续切换压力、异常中断和超时恢复。

## 目标

消除“杀进程后等待 Launcher 新首帧”造成的窗口空档。

## 当前目标

```text
launcher/tools/java/com/smartisanos/launcher/theme/MaintainedLauncherSettingsHost.java
```

搜索：

```powershell
rg -n "killProcess|System\.exit|scheduleLauncherRestart|restartLauncherForColdSceneChange|restartLauncher\(|recreateLauncherInPlace|finishSettingsTask|startLauncherFromForeground|showRestartLoading" `
  launcher\tools\java\com\smartisanos\launcher\theme
```

## 原版参考

```text
clean_launcher_raw/smali/com/smartisanos/launcher/Launcher.smali
clean_launcher_raw/smali/com/smartisanos/launcher/J.smali
clean_launcher_raw/smali/com/smartisanos/launcher/ua.1.smali
```

原版设置 Loading：

```powershell
rg -n "SmartisanProgressDialog|LoadingUI|ProgressDialog|finish\(|CATEGORY_HOME|startActivity" `
  build\decompiled_theme_check\com.android.settings-100
```

## 修改步骤

正常路径：

```text
原版数据库/主题业务准备完成
→ 主进程生成唯一 reloadToken 和旧主 PID
→ 启动 :reload 中不透明 ReloadTransitionActivity
→ OnPreDraw + 一个 Choreographer 帧确认过渡窗口已显示
→ 精确结束旧主 PID
→ 显式启动新 Launcher
→ GL 帧 + Decor OnPreDraw + 一个 Choreographer 帧
→ 包内 Broadcast 校验同一 reloadToken
→ 关闭并移除过渡任务
```

禁止：

```text
Activity.recreate() 处理宫格
手工重建 PageView、Cell、EGL 或 SMEngine
按包名 force-stop / killBackgroundProcesses
透明过渡 Activity
固定延迟判定启动成功
```

进程重启只能作为以下异常的最终兜底：

- 找不到 Launcher Activity
- Activity 正在 finishing
- `recreate()` 抛异常
- 场景无法恢复

必须记录兜底原因。

## 真实首帧判断

不得固定等待 260/650/1200/1600ms。

组合使用现有真实状态：

- Launcher Activity 有效
- MainView 有效
- PageView 有效
- 当前页存在
- Surface 有效
- Cell 已绑定
- 原版 ready 状态
- `OnPreDrawListener`
- `Choreographer.FrameCallback`
- SMEngine 渲染状态

## 验收

- 旧主 PID 仅在过渡窗口真实绘制后按精确 PID 结束
- `:reload` 在新 Launcher 首帧前仍存在
- reloadToken 严格匹配，不串线
- 过渡窗口和 Launcher starting window 均不透明
- 逐帧无系统壁纸、黑帧和白帧

该阶段解决项目代码主动进程重生导致的闪屏，不包含系统强杀、Launcher 崩溃和厂商 WindowManager BUG。

---

# 10. 阶段 5：透明主题

状态：进行中（2026-07-15）。本阶段复用阶段 4 的 `ReloadTransitionActivity`、`LauncherColdReloadCoordinator`、`ReloadProtocol`、reloadToken、旧主 PID 精确终止、`FIRST_FRAME_READY` 与失败手动重试；不携带任何宫格迁移状态。

## 原版 Settings

```text
build/decompiled_theme_check/com.android.settings-100/
smali_classes2/com/android/settings/widget/LauncherPreview.smali
```

搜索：

```powershell
rg -n "onLauncherThemeChanged|launcher_grid_theme|TransparentTheme|transparent" `
  build\decompiled_theme_check\com.android.settings-100
```

## 原版 Launcher

```text
clean_launcher_raw/smali/com/smartisanos/launcher/ua.1.smali
clean_launcher_raw/smali/com/smartisanos/launcher/data/O.smali
clean_launcher_raw/smali/com/smartisanos/launcher/data/Constants.smali
clean_launcher_raw/smali/com/smartisanos/launcher/theme/X.smali
clean_launcher_raw/smali/com/smartisanos/launcher/theme/t.smali
clean_launcher_raw/smali/com/smartisanos/launcher/theme/ThemeChooserActivity.smali
clean_launcher_raw/smali/com/smartisanos/launcher/view/Eb.smali
```

搜索：

```powershell
rg -n "launcher_grid_theme|isTransparentTheme|smartisan_theme_trans|initByTheme|ChangeThemeHandler|updateGLView" `
  clean_launcher_raw\smali\com\smartisanos\launcher
```

资源：

```text
build/decompiled_theme_check/com.smartisanos.launcher.theme.trans/
```

## 当前目标

```text
launcher/tools/java/com/smartisanos/launcher/theme/MaintainedLauncherSettingsHost.java
launcher/tools/java/com/smartisanos/launcher/theme/LauncherSettingBridge.java
```

## 修改步骤

保留：

```text
launcher_grid_theme
transparent_previous_theme
原版透明主题资源
Constants.isTransparentTheme
原版 O/X 初始化
```

开启：

```text
保存当前普通主题
→ 私有配置写 launcher_grid_theme=1
→ commit 成功
→ 注册原版透明资源
→ 准备原版透明壁纸、模糊和翻页动画限制
→ 调用冷重载协调器
→ 新 Launcher 冷启动读取透明配置
→ 原版 Constants/O/X/Eb/SMEngine 按透明模式初始化
→ 等待真实首帧
→ 关闭过渡页
```

关闭：

```text
写 launcher_grid_theme=0
→ 恢复 transparent_previous_theme
→ 清除透明模式专用覆盖和模糊状态
→ commit 成功
→ 调用冷重载协调器
→ 新 Launcher 按普通主题初始化
→ 等待首帧
→ 关闭过渡页
```

禁止：

- 永久写 `launcher_theme=smartisan_theme_trans`
- 透明主题进入普通主题队列
- 正常路径杀进程
- Alarm 拉起 HOME
- 调用 `N.d()`、`F.i()` 或宫格 pending 消息
- 固定延迟判断成功
- Activity.recreate()、局部重建 PageView/Cell、手工重置 EGL/SMEngine

第一阶段稳定后，才研究原版 SMEngine 热切换；不得新建第二套主题引擎。

---

# 11. 阶段 6：普通主题

状态：进行中（2026-07-15）。普通主题只使用原版 ThemeManager、`ChangeThemeHandler.RequireChangeFrom.SETTING`、过渡截图和 Launcher 返回后的单条原版消息；仅当原版持久化明确失败时，才写一条兼容 pending 消息。

## 原版参考

```text
clean_launcher_raw/smali/com/smartisanos/launcher/theme/X.smali
clean_launcher_raw/smali/com/smartisanos/launcher/theme/t.smali
clean_launcher_raw/smali/com/smartisanos/launcher/theme/ThemeChooserActivity.smali
```

搜索：

```powershell
rg -n "MESSAGE_CHANGE_THEME|0x12|RequireChangeFrom|launcher_theme|ChangeThemeEvent|ChangeThemeHandler" `
  clean_launcher_raw\smali\com\smartisanos\launcher
```

## 当前目标

```text
launcher/tools/java/com/smartisanos/launcher/theme/MaintainedLauncherSettingsHost.java
```

方法：

```text
applyTheme()
applyThemeViaOriginalStack()
queueThemeChangeForLauncher()
submitThemeSnapshot()
refreshThemeRuntime()
refreshLauncherThemeSurface()
```

## 修改步骤

权威流程：

```text
设置页选主题
→ 原版 ThemeManager 持久化
→ ChangeThemeHandler 来源为 SETTING
→ 原版过渡截图
→ 返回 Launcher
→ 消费一条原版主题消息
→ 原版场景更新
```

原版栈明确持久化失败才使用一条 fallback pending message；fallback 不再叠加原版写入、手工 Handler 消息或固定延迟。

同一次切换不能同时执行：

- 原版 `O.a`
- 多份手工配置
- 手工 pending message
- 手工 Handler message
- 所有 `Eb` 方法
- 多次延迟刷新

必须从原版确认 `Eb.lh/Vh/oh/Z` 等混淆方法用途。

## 验收

- 一次操作只有一条主题链
- 主题重启后保持
- 无重复动画
- 不用冷启动方法作为通用刷新
- 正常路径不杀进程

---

# 12. 阶段 7：动态天气和日历场景更新

状态：进行中（2026-07-15）。动态开关已收敛为原版 `com.smartisanos.launcher.update_icon` → `Aa.c()` → 原版数据库更新；只发送原版 WeatherView/CalendarView 的包名，不扫描全部 Launcher 应用、不重启 Launcher。

## 原版协议

```text
build/decompiled_theme_check/com.android.settings-100/
smali/com/android/settings/AppIconsSettingsFragment.smali
smali/com/android/settings/AppIconsSettingsFragment$4.smali
```

```text
action: com.smartisanos.launcher.update_icon
extra: extra_packagename
```

## 原版 Launcher

```text
clean_launcher_raw/smali/com/smartisanos/launcher/receiver/LauncherReceiver.smali
clean_launcher_raw/smali/com/smartisanos/launcher/data/
```

搜索：

```powershell
rg -n "update_icon|extra_packagename|EVENT_REFRESH|EVENT_PACKAGE_CHANGED|updateCell|updateCells" `
  clean_launcher_raw\smali\com\smartisanos\launcher
```

查找场景类：

```powershell
rg -n '\.source "ActiveIcon.java"|\.source "WeatherView.java"|\.source "CalendarView.java"|ActiveIcon|WeatherView|CalendarView' `
  clean_launcher_raw\smali\com\smartisanos\launcher
```

## 当前目标

```text
launcher/tools/java/com/smartisanos/launcher/theme/LauncherSettingBridge.java
launcher/tools/java/com/smartisanos/launcher/theme/WeatherBridge.java
launcher/tools/java/com/smartisanos/launcher/theme/MaintainedLauncherSettingsHost.java
launcher/smali/com/smartisanos/launcher/receiver/LauncherReceiver.smali
```

## 修改步骤

```text
写开关
→ 原版 update_icon 或数据库事件
→ DatabaseHandler 更新
→ 数据库完成
→ 只更新天气/日历 Cell
→ 创建原版 ActiveIcon 或普通图标
→ 一次渲染
```

兼容层只负责定位、天气数据、包映射、配置 fallback 和安全阴影 fallback。

禁止：

- 重启 Launcher
- recreate Activity
- 杀进程
- 设置页直接强转 ActiveIcon
- 设置页直接操作用途不明的节点槽位
- 多次延迟刷新

## 验收

- 开关无需重启 Launcher
- 天气/日历使用原版节点
- 数据库类型与场景节点一致
- 关闭后无天气后台任务

---

# 13. 阶段 8：壁纸处理和刷新

状态：核心实现完成，基本验证完成（2026-07-15）；最终回归待完成。已确认 `Eb.lh()` 是原版透明壁纸 `changeWallpaper` 入口；壁纸选择在后台完成复制/解码/缩略图/高斯图，主线程只写最终状态并调用一次 `lh()`，场景不可用才保留 pending。已完成完整构建、v1/v2/v3 签名、`emulator-5556` 覆盖安装和 HOME 启动无新增 Java/native fatal；图片选择、透明主题壁纸、默认壁纸恢复及逐帧视觉回归留待最终集中验证。

## 原版 Settings

```powershell
rg -n "WallpaperCache|launcher_wallpaper_uri|WallpaperManager|CHANGE_LOCKSCREEN_WALLPAPER" `
  build\decompiled_theme_check\com.android.settings-100
```

其他参考：

```text
build/decompiled_theme_check/com.smartisanos.wallpaperprovider-100/
build/decompiled_theme_check/com.smartisanos.desktop-3/
```

## 原版 Launcher

```text
clean_launcher_raw/smali/com/smartisanos/launcher/ua.1.smali
clean_launcher_raw/smali/com/smartisanos/launcher/data/O.smali
clean_launcher_raw/smali/com/smartisanos/launcher/view/Eb.smali
```

## 当前目标

```text
launcher/tools/java/com/smartisanos/launcher/theme/MaintainedLauncherSettingsHost.java
```

搜索：

```powershell
rg -n "onWallpaperPicked|saveGaussianWallpaperCopy|refreshLauncherWallpaperNow|refreshLauncherAfterWallpaperUriChanged|maybeRefreshLauncherWallpaper|markWallpaperRefreshPending" `
  launcher\tools\java
```

## 修改步骤

后台线程：

- 文件复制
- 大图解码
- 裁剪
- 缩略图
- 高斯图
- 压缩和保存

主线程：

```text
写最终 URI
→ 通知原版配置
→ 调用一个确认用途的原版壁纸刷新入口
→ 一次渲染
```

删除“立即 + 120ms + 420ms + onResume pending”的重复刷新。

运行时刷新成功后清除 pending；只有 Launcher/场景不可用时设置 pending。

未确认 `Eb.Vh()` 用途前，不把它作为壁纸热刷新方法。

## 验收

- 图片处理不阻塞设置页
- 壁纸只更新一次
- 成功后不重复 pending 刷新
- 透明主题壁纸状态正确

---

# 14. 阶段 9：图标加载

状态：加载性能核心实现完成；图标 geometry/raster 架构于 2026-08-21 重新审计并冻结为 [`ICON_RENDERING_CONTRACT.md`](ICON_RENDERING_CONTRACT.md)。当前实现仍需按合同消除数据库预合成与最终 Composer 的双 Owner，并打通 ActiveIcon attach 后的 STATIC geometry sync，最终跨分辨率矩阵尚未完成。普通模式不再启动图标包扫描或 appfilter 解析；所选图标包解析、在线图标落盘均只合并更新受影响包名，不再以设置资源预热或图标缓存写入触发全量数据库刷新。

冻结规则只在 [`ICON_RENDERING_CONTRACT.md`](ICON_RENDERING_CONTRACT.md) 维护，本计划不再复制另一套算法。核心边界：来源只解析 RAW；`IconVisualMetrics` 唯一决定 geometry/physical raster；普通 Application 每次生成只调用一次最终 Composer；DEFAULT-only optical normalization；ActiveIcon 内部原版动画冻结并在每个 geometry generation 追随 STATIC artwork world rect。完整矩阵通过前不得标记 `ICON_SYSTEM_VALIDATION_FROZEN=true`、`FINAL` 或 `PASS`。

## 原版参考

```powershell
rg -n '\.source "IconCache.java"|\.source "IconBitmapCache.java"|loadIcon|ResolveInfo|ItemInfo' `
  clean_launcher_raw\smali\com\smartisanos\launcher
```

## 当前目标

```text
launcher/tools/java/com/smartisanos/home/settings/icons/IconManager.java
launcher/tools/java/com/smartisanos/home/settings/icons/IconPackManager.java
launcher/tools/java/com/smartisanos/home/settings/icons/AppIconAdapter.java
launcher/tools/java/com/smartisanos/launcher/theme/MaintainedLauncherSettingsHost.java
```

搜索：

```powershell
rg -n "shouldUseManagedIcon|selectedIconDrawable|preloadSelectedIconPackAsync|warmUpIconPackList|online_icon|RedirectIconDB" `
  launcher\tools\java
```

## 修改步骤

以下全部关闭时，直接走原版图标：

- 改进图标
- 图标包
- 单应用覆盖
- 在线/本地覆盖

快速判断不得解码图片、扫描图标包、解析 appfilter、联网、读大 JSON 或枚举全部应用。

首帧显示原图；下载或解析完成后只更新受影响包名。

删除仅因设置资源预热而触发的数据库刷新。

## 验收

- 普通模式不初始化管理图标系统
- 在线图标失败不阻塞模型
- 图标更新合并执行
- 动态图标不被静态图片覆盖

---

# 15. 阶段 10：安装、卸载、角标和分身

状态：核心实现完成，基本验证完成（2026-07-15）；最终回归待完成。普通安装广播在 Launcher Activity 可查询后只进入一次原版 `Aa.c(context, package)`；仅当 PackageManager 尚未暴露目标 Activity 时最多重试两次。卸载进入原版 `Aa.D(package)` 删除链，并清除该包可选图标缓存。分身只在存在已启用记录时查询 profile，删除 350/450/900/2200/2000/8000ms 的多次全量补偿刷新；已完成完整构建、v1/v2/v3 签名、`emulator-5556` 覆盖安装与 HOME 启动无新增 Java/native fatal。真实安装/卸载、替换、工作资料/分身和角标联动留待最终回归。

## 应用事件参考

```text
clean_launcher_raw/smali/com/smartisanos/launcher/receiver/LauncherReceiver.smali
clean_launcher_raw/smali/com/smartisanos/launcher/data/
```

搜索：

```powershell
rg -n "PACKAGE_ADDED|PACKAGE_REMOVED|PACKAGE_REPLACED|PACKAGE_CHANGED|EVENT_PACKAGE_ADDED|EVENT_PACKAGE_REMOVED|EVENT_PACKAGE_CHANGED" `
  clean_launcher_raw\smali\com\smartisanos\launcher
```

当前目标：

```text
launcher/tools/java/com/smartisanos/launcher/install/SmartisanInstallManager.java
launcher/smali/com/smartisanos/launcher/receiver/LauncherReceiver.smali
```

## 修改步骤

普通 Android 的广播、`LauncherApps.Callback` 和 `PackageInstaller` 最终转换为原版 DatabaseUpdater 事件。

安装：

```text
LauncherActivityInfo 可查询
→ 原版 PACKAGE_ADDED
→ 数据库完成
→ 受影响页面
→ 一次渲染
```

PackageManager 信息暂未可用时最多有限重试 2–3 次，成功立即停止。

卸载：

```text
原版 PACKAGE_REMOVED
→ 删除数据库
→ 移除 Cell
→ 清理图标缓存
→ 一次渲染
```

## 分身参考

```powershell
rg -n "EVENT_USER_PACKAGE_ADDED|EVENT_USER_PACKAGE_REMOVED|EVENT_USER_PACKAGE_CHANGED|getInstalledPackagesAsUser|startActivityAsUser" `
  clean_launcher_raw\smali\com\smartisanos\launcher
```

没有启用分身记录时不调用 `LauncherApps.getProfiles()`，不枚举次用户应用。

有变化时：

```text
原版 USER_PACKAGE 事件
→ 数据库完成
→ 一次刷新
→ 一次渲染
```

删除 350/900/2200ms 等多次全量补偿刷新。

## 验收

- 安装后无需重启即显示
- 卸载后无需重启即移除
- 默认不扫描 Profile
- 角标和分身不重复全量刷新

---

# 16. 固定延迟审计

状态：核心审计完成，基本验证完成（2026-07-15）；最终回归待完成。已删除透明壁纸 160ms、角标 180ms、主题运行时 120/360ms、手动城市 1800ms 的竞态补偿刷新。保留项已分类：`:reload` 10 秒仅为失败提示；安装 300ms 仅在 PackageManager 尚不可查询时最多两次；主题/更新下载 800–1500ms 为网络轮询；在线图标 2 秒为写入安静窗口合并；天气 TTL、UI Loading 帧和键盘/预览动画属于功能性调度。未重新接入旧 Alarm 重启路径。

搜索：

```powershell
rg -n "postDelayed|setExact|setExactAndAllowWhileIdle|sleep\(" launcher
```

把每个延迟分类：

- UI 动画必要
- 系统节流必要
- 网络轮询必要
- 有上限的安装轮询
- 竞态掩盖
- 重复补帧

后两类必须替换为真实完成信号。

保留的延迟必须在代码或文档说明原因。

---

# 17. 任务合并和状态

状态：核心实现完成，基本验证完成（2026-07-15）；最终回归待完成。既有图标、天气、分身和冷重载任务均保持单飞/合并状态；`ReloadTransitionActivity` 已明确 `WAITING_FIRST_FRAME → COMPLETED/FAILED`，失败手动重试会重新挂载失败超时，token 首帧只完成一次。超时仅显示失败，不自动杀进程。

优先在现有类中使用轻量状态：

```text
IDLE
DATABASE_UPDATING
SCENE_UPDATING
WAITING_FIRST_FRAME
COMPLETED
FAILED
```

规则：

- 同类任务同时只运行一个
- 重复请求合并
- 新请求可覆盖旧参数
- 数据库未完成不更新场景
- 场景不可用时只记一个 pending
- 一次完成只提交一次渲染
- 超时记录错误并恢复状态
- 超时不自动杀进程

---

# 18. 建议 Commit 顺序

状态：已审阅（2026-07-15）。本轮未暂存、未提交：工作区包含用户既有改动与跨阶段的构建产物，必须待最终回归后按上述功能边界人工拆分提交。

1. `perf: add launcher startup and first-frame diagnostics`
2. `perf: defer non-critical launcher resume work`
3. `perf: skip weather work when dynamic icons are disabled`
4. `fix: persist launcher grid mode before original migration`
5. `fix: reload launcher in process after grid migration`
6. `fix: apply transparent mode without process rebirth`
7. `fix: refresh dynamic icons through original update pipeline`
8. `perf: remove redundant wallpaper and theme refreshes`
9. `perf: preserve original icon fast path`
10. `perf: coalesce badge and profile refresh events`

每阶段独立构建和验证后再进入下一阶段。

---

# 19. 构建和安装

```powershell
.\build.bat
```

产物：

```text
build\launcher-signed.apk
```

检查：

```powershell
aapt2 dump badging build\launcher-signed.apk
aapt2 dump xmltree build\launcher-signed.apk AndroidManifest.xml
apksigner verify --verbose build\launcher-signed.apk
```

安装：

```powershell
adb install -r build\launcher-signed.apk
```

回归测试不要清除数据。

---

# 20. 重载和闪屏验证

操作前后：

```powershell
adb shell pidof com.smartisanos.home
```

日志：

```powershell
adb logcat -c
adb logcat -v threadtime > launcher_reload_test.txt
```

录屏：

```powershell
adb shell screenrecord /sdcard/launcher_test.mp4
adb pull /sdcard/launcher_test.mp4
```

检查：

- `am_proc_died`
- `Process.killProcess`
- scheduled process rebirth
- FATAL EXCEPTION
- HOME 切换
- 系统壁纸帧
- 黑帧/白帧
- 旧场景闪回
- 设置页或 Loading 提前消失

---

# 21. 测试矩阵

## 启动

- 首次安装
- 覆盖安装
- 冷启动
- 热启动
- HOME 返回
- 最近任务返回
- 锁屏解锁
- 熄屏点亮
- 进程回收后启动

## 宫格

- 12→20
- 20→12
- 连续切换 10 次
- 超过 12 个图标的板块
- 少于 12 个图标的板块
- 隐藏板块
- 加密板块
- 文件夹
- 重启保持

## 主题

- 普通 A→B
- 普通→透明
- 透明→普通
- 连续开关透明 10 次
- 透明模式换壁纸
- 透明模式锁屏解锁
- 透明模式 HOME/Recents

## 动态图标

- 开启/关闭
- 有/无天气应用
- 定位允许/拒绝
- 手动城市
- 自动定位
- 跨日
- 天气更新

## 应用和分身

- 安装
- 更新
- 卸载
- 禁用/恢复
- 分身开启/关闭
- 次用户应用

---

# 22. 每阶段完成报告

必须说明：

## 修改内容

具体行为变化。

## 根因

旧实现为什么失败或慢。

## 原版复用

具体原版 Settings 和 Launcher 文件/方法。

## 普通 Android 兼容

缺失的 Smartisan 能力、使用的替代方式，以及为何不改变原版语义。

## 修改文件

完整路径。

## 验证

- 构建
- 签名
- 安装
- PID
- 日志
- 录屏
- 功能测试

## 风险

- 未测试 ROM
- 反射
- fallback
- 仍保留的延迟
- 未验证行为

还必须明确：

- 是否仍有 `killProcess`
- 是否仍有 Alarm 重启
- 增删了哪些固定延迟
- 是否修改二进制 Manifest
- 是否修改数据库结构
- 是否修改原版 `F.i()`
- 是否更新 `MEMORY.md`
- 是否更新 `DEVELOPMENT_LOG.md`

---

# 23. 闪回系统壁纸的预期结论

旧项目内闪屏链路：

```text
设置页结束
→ Launcher 进程死亡
→ Surface 消失
→ 延迟启动 HOME
→ 新首帧未准备好
→ 系统壁纸暴露
```

当前受控冷重载结构：

```text
原版宫格数据库迁移完成
→ :reload 过渡 Activity 不透明首帧
→ 精确结束旧 Launcher 主 PID
→ 新 Launcher 不透明 starting window
→ GL 帧、Decor OnPreDraw、Choreographer 帧
→ token 匹配后关闭过渡任务
```

该方案允许 Launcher 主 PID 变化，但要求用户始终被过渡窗口或 Launcher starting window 覆盖。不得使用 timeout 当成功；10 秒只用于显示失败和一次手动重试。

不包含：

- Launcher 自身崩溃
- 系统低内存强杀
- 厂商手势合成 BUG
- WindowManager/SurfaceFlinger 异常
- 用户切换默认桌面

只有在可用 ROM 上多次逐帧验证通过后，才能把项目内部重载闪屏标记为已修复。
