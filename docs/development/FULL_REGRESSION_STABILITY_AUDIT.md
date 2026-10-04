# 全项目回归、稳定性、架构与性能专项审计

审计日期：2026-10-02。基线：`912fd89a38d185444935bc146d6c52032b309d58`，v1.5.8 / versionCode 33。第一轮，仅审计。

> 后续处理（2026-10-02）：用户指定先修复 F04。恢复日志失败门、证据保留和重载结果检查已实现，141 项生产控制流故障注入、57 项 Android 9 真实平台隔离检查通过；最终构建验证与完整恢复待验边界见 DEVELOPMENT_LOG 当日 F04 记录。本文问题统计和代码证据保留为上述第一轮基线快照，不代表其余问题已修复，也不将 F04 标记为完整真机闭环。

> 下一阶段 F03（2026-10-02）：用户确认继续后，恢复条目判断已接入现有 Package/Profile 状态源，目标身份 remap 后去重，UNKNOWN 保留／pending 仅正向事实补入。旧代码丢失 clone-only 当前行的隔离 SQLite 负例已复现，新版 83 项生产恢复链检查及构建通过；真实分身、完整恢复与跨 ROM 仍待验，详细范围见 DEVELOPMENT_LOG。F02 页面槽尚未处理，本文 F03 代码行号和问题统计仍保留为原始审计快照。

> 下一阶段 F02（2026-10-03）：待安装恢复已复用主恢复的槽选择／写入和页面上限，事务内按真实根级条目／FolderInfo 定位末页，保护特殊页。基线生产 Pending 方法已复现 `1001` 行且 `999` 槽未用；新版 120 项真实 Android SQLite 页面／导出再恢复检查、F03 的 83 项、F04 的 141 项及构建通过。真实补装、完整恢复、帧耗时与跨 ROM 仍待验；数据库与 pending 文件之间的故障窗口没有在本项关闭。原始问题统计／代码证据仍为第一轮基线，不据隔离检查将整个项目标记无回归。

> 下一阶段 F01（2026-10-03）：系统卸载请求已复用 ProfileRepository 检查目标句柄／serial，仅放行已确认的当前用户；两份 Intent 均携带 EXTRA_USER。跨用户／身份未知明确提示到系统设置操作，并复用原版取消回位；旧 A.p 普通 Item 在包名／user10 扩展前转交原条目入口。旧版在 JVM 与 Android Intent 隔离检查中复现分身请求丢失用户；新版 95 项目标、43 项 Android 9 Intent 检查与既有卸载检查、F02–F04 回归及构建通过。跨用户卸载功能当前明确受限，实际新提示／动画、完整系统卸载和跨 ROM 仍待验；原始 15 项统计和下文证据不改为全部关闭。

> 下一阶段 F05（2026-10-03）：撤销解包与 :reload 导入主体改为后台执行，MAIN 接收结果；首次／重试都等待旧 PID 退出，销毁／旧 generation 不启动桌面，原首帧超时在导入期间暂停。复用现有 BackupOperationLock 增加 OS 文件锁，启动守卫等写任务结束后重读日志，F04 阶段门保留。旧版 MAIN 导入负例、新版70 项线程／生命周期、141 项事务、69 项 Android 9 隔离检查及标准构建通过。启动守卫、首帧清理仍同步，真实最大等待／帧耗时、完整恢复与跨 ROM 尚未验收；本项仅主体实现完成，原15 项审计统计和基线证据不改为全部关闭。详细结果见 DEVELOPMENT_LOG。

> 下一阶段 F06（2026-10-03）：复用 InstallManager 已有串行 worker 完成 pending IO 后再向 MAIN 发原 ADD 通知，既有 firstInstall／Profile／Package／Model 判断保持；上一进程持久化派发标记在启动时重新判定。Pending 事务复用现有恢复身份检查已经提交及批内重复行，修复 DB 提交而 JSON 失败后的重复插入。完整旧 InstallManager 已复现 MAIN IO，旧 Pending 已复现 EACCES 重试重复行；39 项 Android 调度、17 项 SQLite／JSON／身份、3 项 SIGKILL 重进及相关回归通过。已保留数据覆盖安装 vivo，启动、设置返回和左右翻页完成，设备 APK hash 与产物一致；真正 pending＋原 ADD 联动、OEM 分身和跨 ROM 仍待验。原15 项统计继续保留为审计基线，详细范围见 DEVELOPMENT_LOG。

> 下一阶段 F07（2026-10-03）：仅在现有投影缓存 Owner 内把 Bitmap 修订／逐行源Alpha签名命中移到256² raster之前，保持全Alpha、尺寸、八层模糊与原材质；477项 Android 缓存／PNG／失败恢复检查，21组原版native Alpha零差异、九GPU姿态与静态图标契约通过。隔离同Alpha新Bitmap热命中中位耗时10.204ms→0.792ms，只是write探针，非桌面帧耗时／冷启动结论。正式包保留数据安装vivo，电话及设置图标所测正文区域与安装前RGB零差异、12宫格编辑90×90px；今天清晰度／比例／垃圾桶相关五文件哈希未变，APK签名之外仅classes2.dex改变。命中所需八文件存在／非空门已补，F08版本／失效通知／条目上限、F09并发和完整性能矩阵仍待处理；原15项统计和下文基线不改为全部关闭，详细范围见DEVELOPMENT_LOG。

> 下一阶段 F08（2026-10-03）：原Aa四个清理入口委托给现有投影Owner，按原Pe／下载key和包分隔符同步移除内存、索引与八层文件；修复原包清理绝对路径匹配不到的条件。MASKS限256条，淘汰不删GL文件，同目录小型索引消费VERSION／源Alpha／八层长度CRC，冷进程／淘汰后可校验复用；部分生成不提交成功索引。旧非零坏PNG／旧内存条目／包清理／无容量上限已在Android复现，新版788项、重进复用／版本升级／中断缓存夹具SIGKILL修复及F07的477项通过；八层PNG与F07 RGBA0差异且逐字节一致。正式包保留数据安装vivo，启动／12宫格编辑／设置返回／翻页通过，图标采样未重新软化，今日五个视觉文件哈希不变。实际卸载重装＋GL重绑、生产断电／IO预算、同长度同mtime的进程内外部改写、跨ROM与完整性能仍待验，F09未改；原15项统计与下文证据仍是第一轮基线，详细边界见DEVELOPMENT_LOG。

## 1. 结论与证据边界

### 当前施工进度（2026-10-03，编号澄清）

本次施工沿用本文 F01–F15 问题编号；不与 LAUNCHER_FIX_AND_OPTIMIZATION_PLAN 的旧启动阶段编号混用。F09–F15 已在同一轮集中处理，后续 F05 补充检查不是回退阶段，也不重新编号为阶段9／10。新增施工前先核对下表和 DEVELOPMENT_LOG，避免重复修改已完成实现。

| 范围 | 当前实现状态 | 已验证与剩余边界 |
|---|---|---|
| F01–F08 | 所列最小修复已实现；F05 主体与两项清理后续已实现 | 各项隔离检查和正式包基本路径已有记录；完整恢复／撤销、真实补装、OEM 分身和最坏启动预算仍待统一验收 |
| F09 | 共享 GU 向量交接修复已实现 | 23,011 项 Android 检查通过；Sensor 注册／Scene 世代、真实队列和手持光影未闭环 |
| F10／F11 | 快捷桌面 draw 消费快照、媒体单 worker、内容首次揭露时创建已实现 | 12 项 Android View／Looper 检查、受控像素零差异及已记录真机路径通过；真实授权 MediaSession 完整矩阵、首次揭露及持续帧预算未闭环 |
| F12–F14 | READY／页面归属、同规则配置委托及 UNKNOWN 保留已实现 | 对应逻辑检查与集中批次通过；完整生命周期／跨 ROM 仍待统一验收 |
| F15 | 审计处理完成，保留共享 hook | 保持 SUSPECTED，未取得生产不可达证据，安全删除0行 |

F05 跨进程 writer 补充验收已完成：Android16隔离夹具11种完成／退出情形、111项宿主及69项原生检查通过；正式 Launcher PID和APK不变。受控导入／提供器及人工持锁等待不能代替真实恢复或最坏 HOME 耗时。证据在 build/f05-restore-lease-20261003/，不据此重开F05实现或宣称全部风险关闭。

> F05 启动旧备份清理后续（2026-10-03）：旧方法在真实Android MAIN调用SAF删除的隔离负例已复现；仅DesktopBackupController把原清理主体移入单后台任务并消费已有操作门，活动备份与新备份／恢复不交叉，数据库初始化前的恢复安全门不变。Android16实际摘录方法＋生产备份日志／锁／文件工具112项、原恢复122项线程与144项事务检查通过。正式包0DB246F07097C3B9E46B05235C76CE2394AD090E4DF0007DCE7C7AB43F4F8DD2保留数据安装V2458A，启动及设置返回通过，三个图标采样RGB零差异、五个视觉保护文件不变。SAF／偏好边界受控；真实提供器、Android9新路径、完整恢复／断电及启动writer等待最坏预算仍待验。原15项统计保留首轮快照，详见DEVELOPMENT_LOG对应记录。

> F05 首帧收尾后续（2026-10-03）：实际 Controller 基线复现 MAIN 首帧同步 journal／递归清理；仅该生产文件改为单后台任务，预留原操作门、持原跨进程 writer 后重读 token／终态，持久化顺序和原成功提示／补源保留。122 项线程／并发、144 项事务及13,131项设置／监听器检查通过；Android 9／16 各93项真实平台隔离检查含13项新收尾路径通过。X21A 安装期间断开，该尝试不计通过；正式包保留数据安装新连接 V2458A／API36，SHA998968DC94CD05C51863AEAD4412420BFC79FA72ADB97E9972875F31D19A1C35一致，设置和快捷桌面返回首页通过。五个视觉保护文件未变、APK相对上一轮仅classes2.dex／签名改变，所测三个静态图标区域RGB零差异。启动前同步守卫／HOME等待预算、完整真实恢复和生产断电／持续帧验收仍未关闭；原15项统计仍是首轮快照，详见 DEVELOPMENT_LOG 的 F05 后续记录。

> 集中处理 F09–F15（2026-10-03）：F09 原 GU 三分量交接已确定性复现并以同向量 monitor 修复，23,011 项 Android 检查通过；注册／Scene 世代与真实队列预算仍待验。F10／F11 现有快捷桌面内容延后到首次揭露，draw 只消费快照，媒体在可见期间单 worker 查询，12 项真实 View／Looper 检查及受控 RGBA 0 差异通过。F12 READY 身份、弱 Activity／页面／监听器归属与 attach／detach 已接线；F13 同规则 boolean 委托既有 Bridge；F14 查询错误保留 UNKNOWN，188 项 Model、13,131 项设置／监听器、74 项恢复线程检查通过。F15 缺正式入口证据但仍有共享 hook，保持 SUSPECTED，安全删除 0 行。19 组本地和 10 组隔离 Android 集中批次通过；vivo 正式包保留数据安装，最终 SHA F5F3295077335F446A6A01A4179966E026D913B3A8E5DA18035177E2FB6EA298，主题／快捷桌面／搜索／设置返回等已测路径未见新回归，五个今日视觉保护文件哈希未变。完整真实恢复、OEM／跨 ROM、物理倾斜和实测帧性能仍未验收。原 15 项统计与下文行号保留第一轮基线，不能改成全项目无问题；最终范围见 DEVELOPMENT_LOG 的 F09–F15 记录及 build/final-regression-20261003/。

当前项目已形成明确的 Package/Profile/Removal、图标几何与 Composer、搜索快照、解锁会话、冷重载 Owner。不能把它整体定性为“没有架构的补丁堆”。风险集中在绕过正式边界的备份恢复辅助路径、系统卸载 Intent、新增光影的缓存与线程交接，以及承担过多职责的设置宿主。继续增加兼容层会扩大风险；下一阶段应优先让这些旁路消费已有 Owner。

本次登记 **15 项：P0 0、P1 4、P2 10、P3 1；CONFIRMED 12、SUSPECTED 3**。CONFIRMED 表示代码结构或明确条件下的逻辑结果已经证明，不代表故障已在真机出现。未发现足以确认的 P0；这不是全项目无 Crash/ANR/数据损坏的保证。系统卸载分身目标、跨 ROM 生命周期、GL/Sensor 并发和真实帧耗时仍未完成设备验证。

最优先处理的是 F01–F04：系统卸载请求丢失 profile；待安装恢复继续创建第 1001 个页面槽；恢复保留新应用时忽略用户身份；恢复过程忽略关键日志持久化失败。后两项涉及恢复安全，不能因为现有偏好备份测试通过就判定完整恢复安全。

### 基线与审计方式

- 开始时分别检查 `git status`、`git diff --name-only`、`git diff`、`git diff --cached`：工作区及暂存区干净。审计后不提交、不推送、不删除、不回滚。
- 盘点 `launcher/tools/java` 的 128 个 Java 文件和 `launcher/smali` 的 3712 个 Smali 文件；对核心入口、生产调用、引用与禁止模式扫描，对下文列出的关键链路深读。**没有逐条证明全部 Smali、所有资源及 native 库的语义安全**。
- 读取 AGENTS、项目 MEMORY、INDEX、DEVELOPMENT_LOG 当前状态及相关日期、BUILD_GUIDE、APK_STRUCTURE、CLEANUP、README，以及 Model、Icon、Illumination、QuickDesktop、QuickSearch、启动基线与修复计划专项文档。旧名 `BUILD_AND_VERSION_NOTES.md` / `APK_INVENTORY.md` 使用现行 BUILD_GUIDE / APK_STRUCTURE 对应入口，不据旧名判断项目缺文档。
- 对照原始 APK 归档及 `clean_launcher` 的 Sensor、Aa 投影文件和 SMEngine 链；maintained 的 ProfileAppsSettingsActivity 仅作 API/身份处理参考，未替换原版核心。原始 APK 47,655,576 bytes；本轮未重新全量反编译或验证其全部资源。
- 检查最近提交与重点方法 blame。7 月以来的文件修改计数采用 Git 提交触达次数，不是 Bug 数、运行频率或复杂度分数。
- 本轮没有安装、启动复现、强停、清数据、切导航模式或改变设备设置。ADB 设备列表在审计中发生变化，不能作为同机性能基线。本轮真机、录像、GC/CPU/frame-time 数值均为 **NOT TESTED**。

### 标签统计（按问题 ID 去重；标签可交叉）

| 标签 | 数量 | ID |
|---|---:|---|
| REGRESSION_CONFIRMED | 1 | F02：历史不变量仍能从旁路被破坏；不是新提交恢复了旧代码 |
| MULTIPLE_OWNER | 2 | F03、F13 |
| DUPLICATION | 2 | F02、F13；其他重复候选见 DUP 表，未全部算 Bug |
| DEAD_CODE | 1 | F15，SUSPECTED，不能删除 |
| MAIN_THREAD_HEAVY_WORK | 4 | F05、F06、F10、F11 |
| LIFECYCLE_RISK | 6 | F04、F05、F08、F09、F12、F14 |
| MEMORY_RISK | 3 | F07、F08、F12 |
| THREAD_RISK | 1 | F09 |
| ROM_COMPAT_RISK | 2 | F01、F03 |

另外登记 `SILENT_CRITICAL_FAILURE`：F04。全文命中数量不能替代问题数量。

## 2. REGRESSION_GUARD_MATRIX

“保持”指本次生产链路检查仍具备保护；“历史设备证据”只沿用文档中的对应版本结果，不冒充本轮验收。自动测试编号见第 12 节。所有行的“本轮真机”均为未执行。

| 历史问题 | 原根因/需要维持的前提 | 修复位置/当前生产链 | 当前是否保持 | 后续触达 | 自动测试 | 历史设备证据与本轮缺口 | 回归风险 |
|---|---|---|---|---|---|---|---|
| 偶发不能左右滑动 | 系统面板消耗触摸后 FlingUp 标记残留 | `a/a/a.ew`、`smengine/v.1` 消耗 MOVE/UP/CANCEL 后复位 | 关键复位仍在；中断矩阵未证全 | SystemPanel/QD 后续接线 | 无完整端到端自动测试 | 日志记录已有修复；本轮未操作 | 高：CANCEL 丢失/失焦 |
| HOME 返回卡死 | unlock、卸载、手势 owner 未释放 | UnlockAnimationCoordinator、oa、BelowKeyguard、QD cleanup | 多个已有出口保持；不能仅凭不 Crash 判 PASS | 9/27、10/2 改动 | T03/T05–08 局部 | 微信返回与 Android9 卸载有历史反馈 | 高：组合路径 |
| Android9 窗口丢失 | 设置任务链/窗口恢复与 modern task 混用 | Settings session；BelowKeyguard；Android9 同 task | 分版本规则仍在，未发现整块覆盖 | 10/1–2 设置/窗口触达 | T10/T11 | X21A 仅部分窗口路径已有证据 | 高：HOME、Back、Nested |
| 安装后不显示 | REMOVE/REPLACE 混淆，已有 Item 门误判 | InstallManager → Event/Model；first-install gate | 正式 ADD/CHANGE 链保持；F14 UNKNOWN 门例外 | 10/2 Install | T05/T07/T09 局部 | 多入口更新专项仍待跨设备 | 中高 |
| 应用/图标偶发消失 | 查询空列表被当作永久卸载 | PackageStateRepository → RemovalGateway | 正式系统删除保持；恢复旁路 F03 例外 | Model 后续卸载接线 | T05/T07/T08 | 文档 Phase2 实现完成，非全 ROM 通过 | 高：恢复/未知状态 |
| Package REMOVE 误删 | package 级删除扩展到其他类型/组件 | Model exact request → Aa.a(ItemInfo) → A.q | 普通 type0 精确身份及 executor 门保持 | 10/2 A.q/Sc/data-w | T05/T07/T08 | 本轮未核对实际 DB/Scene | 中高 |
| 分身误删 | 缺 userSerial/legacyUserId | ProfileRepository、LauncherItemKey、RemovalRequest | DB 门保持；系统 Intent F01、恢复 F03 有缺口 | 10/2 卸载/搜索 | T04/T06–08 部分 | Intent stub 未验证用户目标 | 高 |
| Weather/Calendar stale callback | owner 已离开 Folder/Scene 仍访问 Item | FolderIcons `la.gj` missing-owner 分支 → Model.note | null owner 跳过，未恢复整个 clear；无完整 callback epoch 证明 | shadow/active geometry 后续触达 | T14/T15 主要视觉合同 | OnePlus GL NPE 是历史根因；本轮未追 callback | 中高 |
| Folder orphan | stale callback 清空资源后仍 draw | `la.gj`、FolderInfo/FolderCell owner 保护 | 不再在 missing-owner 时全 clear | 10/2 Item executor | T08 局部，非 folder lifecycle | 缺 Folder+卸载+主题连续设备矩阵 | 高 |
| 图标大小不统一 | static/live/preview 多倍率与 raw 纹理 | IconVisualMetrics、Raster composer、sc[0] oracle | 合同与静态门保持 | 10/1–2 follow-app/shadow | T01/T13/T14 | Static/Active 全范围视觉未完成 | 中高 |
| 动态阴影冲突 | 静态阴影和 ActiveIcon 同时叠加 | Bridge shadow spec + sc[0]/sc[7] 交接 | 当前接触阴影/投影分层有原版依据，不是第二静态 owner | 10/2 light/shadow | T14/T15 | 八层投影数值 probe 是历史证据，非当前全屏验收 | 高 |
| MD5 命中重复生成 | Aa 返回 null 被认为无图，最多重做4次 | Aa 命中读取 Oe → iconRawData → e/s | 已存数据回用分支仍在 | 10/2 projection precompose 新工作 | T01 静态；无当前冷启动计时 | 9/27 同机改善文档；F07 新成本需分开测 | 中高 |
| 文件夹动画卡顿 | 几何/栅格与 GL 热路径混杂 | Folder Mode8 独立 metrics；原 Timeline | 未发现新全局倍率；帧成本未测 | g.1 高频变动 | 布局工具，非帧性能自动测试 | 不使用旧 PSS 作为帧证据 | 中高 |
| 解锁误触发 | resumed ≠ 真正解锁；重复会话 | Coordinator session/generation + GL receipts | gates保持；10/1 compat120ms 是最新有意规则 | 9/27取消、10/1兼容 | T03 | default/compat 开关矩阵未齐 | 高 |
| 微信返回误播解锁 | application cover 后残 session / USER_PRESENT | Stop/cancel-not-direct-home + no-session | 主门保持；文档仍提示单帧残段待录像 | 10/1接线 | T03 | 9/27用户确认一次路径改善 | 中高 |
| 90/120/144Hz速度 | 固定帧数推进 / 双重补偿 | Eb.update真实dt → Ra.T，Timeline不加新倍率 | 现行dt链仍在；局部elapsed为同一解锁owner | 10/1控制链 | T03公式覆盖 | 公式不是实际四刷新率录像 | 高 |
| 主题切换异常 | trans/aero混用、旧纹理/时序失效 | launcher_theme vs launcher_grid_theme、ColdReload、shadow spec | 身份和队列限制保持 | 10/1–2退出aero/阴影 | T15局部 | 透明覆盖/四指连续切换未完全验收 | 高 |
| 状态栏颜色不同步 | legacy flags 与 API30 appearance 两份状态 | Host.commitStatusBarIconAppearance | 最新统一提交仍在，未恢复旧dim0方案 | 10/1提交 | 无完整自动window测试 | Android16四指颜色需设备 | 高 |
| QD手势冲突 | 右滑/编辑/多指共享Root手势序列 | RootView原轴 → QD触摸门、revealed后取消 | 多指/owner cleanup 保持 | 9/14、10/2 settings | 无完整QD手势自动测试 | 文档旧连续测试限定旧版 | 高 |
| 负一屏触摸残留 | 横滑结束/离开时tracking残留 | RootView MagicFlow 原路 + QD cleanup分开 | 未合并不同方向owner；组合恢复未证 | Root/QD接线 | 无 | 需HOME/锁屏/CANCEL路径 | 高 |
| Loading显示导航栏 | Dialog/Transition不跟 Activity窗口 | LoadingUiWindowCompat、OriginalLoadingFactory | 强制隐藏独立于用户开关保持 | 10/1–2loading/status | 无真实窗口自动测试 | 需启动/主题/恢复不同窗口截图 | 中高 |
| 虚拟键仅部分页面隐藏 | 只处理 Launcher decor | Host applyWindow、Dialog/loading、Search窗口 | 多入口覆盖存在；完整Window枚举待runtime | 10/1设置窗口 | T10会话非实际系统栏 | 本轮没有截图；不可称所有页面PASS | 高 |
| 搜索图标不同步 | 图标来源变了仍绑定旧snapshot | SearchIconBackend source generation + hydration | coalescing与失效保持 | 9/30搜索 | T04 | theme/custom/online混合未设备测 | 中 |
| 微信分身搜索图标异常 | cache key/失效忽略用户，clone-only回退主用户 | SearchIconBackend、Index user identity | 当前生产单元测试保持 | 9/30和10/2缓存版本 | T04 | isolated stub不等于OEM LauncherApps | 中高 |
| 备份恢复异常 | 页面上限、失效预览锁、profile/偏好混合 | Importer slot复用、discardPrepared、PreferenceCodec | 主Importer修复保持；F02/F03/F04未收口 | 9/30 +10/2偏好 | T12仅偏好；SQL fixture见F02 | 全量恢复/中断回滚未本轮验证 | 高 |
| 卸载动画误匹配分身 | 包/组件字符串匹配不同Item | Sc/data-w itemId、Model全身份、Pc/Qc队列 | 动画/executor门保持；Intent目标仍F01 | 10/2 | T05–08 | Android9用户确认；克隆/多入口待测 | 高 |

### 废弃方案复查

生产现代路径未发现重新建立第二份 PackageState/ProfileState enum，或重新使用 `Aa.D(package)` 作为现代正式删除入口。保留旧底层能力不等于旧决策仍运行。当前 TYPE_ROTATION_VECTOR → 原 H → Ra.k → 原材质链有原版依据，不能用9/27删除旧实验的结论否定10/2正式实现。

未发现原版 Timeline 被本轮新全局刷新率倍率替换；`Eb.update` 的 dt 上限/归一化与原引擎调用须整体看。10/1兼容模式120ms属于当前同一解锁 Owner 的最新规则，不能因存在120ms字符串就标回归。正常卸载已恢复原 `Y(1) → W → V` 和确认移除两阶段动画；`fd → T → hd` 仅异常兜底，不能再恢复为无条件正常出口。Host 的 RestartLoadingView 仍是失败后备用实现，Native同名实现还需可达性证明；这与SMEngine动画推进不应混为一项。

## 3. OWNER_MATRIX

| 状态/职责 | 当前唯一或正式Owner | 生产消费者/底层 | 边界与结论 |
|---|---|---|---|
| Package事件 | PackageEventGateway | InstallManager/Receiver | 标准化event；后者不能自行永久删除 |
| Package事实 | PackageStateRepository | LauncherApps/PM | UNKNOWN/不可见不能变成REMOVE；F03是恢复例外 |
| Profile事实与映射 | ProfileRepository | UserManager/兼容查询适配 | 不硬编码所有分身为10；F01丢失目标身份 |
| Model业务写入 | LauncherModelRepository | Aa / data-A / DatabaseUpdater | Aa为执行器；F14存在查询失败语义落空 |
| 系统删除许可 | RemovalGateway | exact RemovalRequest | itemId+serial+legacyUserId+pkg+component+type0；不能扩散成package删除 |
| Item持久身份 | LauncherItemKey + exact Item id | DB/Scene/cache | package相同不意味着同一对象；恢复序列映射另有职责 |
| 图标source | 已有IconManager/来源选择链 | 自定义、图标包、在线、原图/动态 | 保持现行优先级；不另建source系统 |
| 桌面最终几何 | IconVisualMetrics | LayoutPropertyAdapter、Composer | FolderMode8另有合同，不并入桌面倍率 |
| 静态Composer | IconRasterDiagnostics composeTexture | e/s、设置预览/搜索相关成图适配 | raw不是final texture；F07同步投影工作需审计时机 |
| static/live交接 | Cell sc[0] oracle；Bridge同步 | sc[7] ActiveIconRoot | sc[0]缺失只defer，不能猜world rect |
| 普通接触阴影 | LauncherSettingBridge effective spec + 原shadow helper | 静态纹理/Active sibling | 同一原版半径/颜色事实，layout anchor可以不同 |
| 感应投影阴影 | 原Aa mask、sc[27] MutiTexMaterial | IlluminationCompat仅平台适配 | 八层投影不是另一个静态Composer；F07/F08 |
| 感应生命周期 | J.mRegistered + Compat register/unregister | H/I Sensor → Ra/Qa | 单实例注册基本保持；F09 generation/共享vector待证 |
| 天气数据 | WeatherBridge适配；原H显示 | provider/network/ActiveIcon | Folder owner缺失跳过；不据缺图删除Model |
| Calendar显示 | 原m ActiveIcon | 原定时更新、FolderIcons | 冻结内部内容/Timeline；外部geometry对齐 |
| Window生命周期 | 各Activity/Window宿主 | BelowKeyguard、settings session、Reload | 不能用一个全局UI快照覆盖所有窗口 |
| 导航栏策略 | Host applyNavigationBarToWindow / Launcher缓存入口 | settings/Dialog/Search | Loading强制策略另有Owner；窗口不同不自动算重复Owner |
| 状态栏文字颜色 | Host.commitStatusBarIconAppearance | 主题/设置、legacy+API30 | 同一提交门；透明theme颜色仍须设备 |
| Reload握手 | LauncherColdReloadCoordinator | TransitionActivity / 主进程first-present | token+旧PID退出门，不恢复固定延迟作为握手 |
| Loading内容/强制窗口 | OriginalLoadingContentFactory / LoadingUiWindowCompat | 启动/重载/Dialog | 优先原资源；错误备用canvas有重复候选 |
| 普通/透明主题 | 原ChangeTheme链 + 既有settings持久化 | theme prefs/包/ColdReload | trans只launcher_grid_theme，不进入普通主题队列 |
| QD显示与手势 | QuickDesktopController / HostView | RootView原横滑；BackgroundCapture | process宿主可以强持有但destroy要cleanup；F10/F11 |
| 负一屏 | 原RootView/MagicFlow | 原左滑/feature gate | 与QD方向/可见状态分开，不能共用盲目reset |
| Search索引 | SearchIndexRepository immutable snapshot | OriginalQuickSearchActivity | single executor + generation；图标source世代独立 |
| Search图标 | SearchIconBackend / SearchIconBridge | source resolver/cache | clone-only与package/user失效有测试 |
| Gesture方向/系统面板 | VerticalGestureDirectionConfig / SystemPanelCompat | 原FlingUp + InputManager/v.1 | cancel由原触摸Owner完成，View不能抢第二次DOWN |
| Backup/Restore事务 | DesktopBackupController / DesktopRestoreController | journal/importer/icon/theme codecs | 两类操作不能共用状态机；F02–F06/F12 |
| DB底层 | 原data/a表/DatabaseUpdater | Model executor；恢复隔离过程 | 恢复允许隔离写，但判断安装事实仍需正式Repository |
| 设置配置投影 | LauncherSettingBridge；专属codec保留类型规则 | Host、native设置、原Settings | F13同优先级boolean reader复制，适合直接委托 |

系统删除决策不是最终SQL执行。恢复整库事务也不是系统删除：不能机械要求它每行都经过RemovalGateway；但恢复保留新条目的安装/Profile事实不能另造boolean Owner。

## 4. 问题登记（唯一计数来源）

下面的行号是本次基线行号。路径前缀 `J/` 为 `launcher/tools/java/com/smartisanos/launcher/`，`S/` 为 `launcher/smali/com/smartisanos/launcher/`。删除行数为保守估计，不含空行/重排收益，不是本轮承诺。

### F01 · P1 · CONFIRMED · ROM_COMPAT_RISK

**文件/方法**：`J/compat/UninstallCompat.java:31,67,73,138` requestUninstall/requestUninstallItem；`S/a/na.smali` type0公共卸载入口。

历史要求是主应用与分身隔离。当前 `na → requestUninstallItem(item) → requestUninstall(package,item) → ACTION_UNINSTALL_PACKAGE(package:)`，备用ACTION_DELETE亦如此。Item保存到pending，仅用于返回后确认/动画；两份Intent均未携带或解析用户身份，使用当前Application上下文。

**问题/触发/证据**：从非当前用户的普通Item发起卸载时，系统目标不再由 `userSerial/legacyUserId` 表达。确认的是身份信息丢失；OEM卸载UI会选哪个用户尚未真机确认。可能卸载主用户、无法卸载分身、错误保持/回位。T06的Intent stub只记录action，clone case测试commit回调隔离，未测系统目标。

历史回归 **NO**（未证明新提交重引旧方案）；违反Owner **YES**（未消费Profile目标）；重复实现 **NO**。最小方向：消费既有Profile映射和该ROM支持的公共目标能力；不能准确表达目标时阻止错误卸载并明示，不能猜user10或增加新Manager。可删除重复行0。保持原动画，但“不支持精确卸载”的交互需明确验收。必测主/clone-only/主+clone/同包两component/系统取消及返回后的实际系统安装状态。

### F02 · P1 · CONFIRMED · REGRESSION_CONFIRMED · DUPLICATION

**文件/方法**：`J/backup/PendingItemRestoreHandler.java:51–78` insertAtDesktopEnd；对照 `LayoutSnapshotImporter.java:96,186,200` 空槽复用。

9/30修复主Importer保留新应用时继续追加第1001槽。待安装恢复旁路仍为 `InstallManager.handle event → Pending.onPackageAdded → MAX(_id)+1 INSERT`，未复用 `pageIndex=-1` 槽，亦没有同样上限约束。blame定位为8/1 `6818fce34`，说明是历史修复覆盖不完整，**不是10/2重新写回旧块**。

触发：原表预置1000槽，当前末页满，随后补装一个pending应用。内存SQLite按同SQL验证：1000→1001，仍有999个空槽。证据 `build/full-audit-20261002/pending-page-fixture.json`；仅证明SQL后果，未调用Android生产方法。Exporter可在安全条件下重新映射，因此不能断言每次立即导出失败；但持久拓扑重新违反已修复上限，后续失败/超限风险真实存在。

历史回归 **YES（不变量旁路）**；违反Owner **YES（页面分配未收口）**；重复 **YES**。最小方向：提取/复用现有Importer槽选择小函数供Pending使用，保留原页/宫格逻辑，不增加新的页面Manager。预计替换10–20行重复分配，新增量须小于被替代逻辑；不改变视觉。必测12/20、末页满/空、1000预置槽、全占用、pending连续补装、导出再恢复。

### F03 · P1 · CONFIRMED · MULTIPLE_OWNER · ROM_COMPAT_RISK

**文件/方法**：`J/backup/RestoreMergePlanner.java:73–88,180` isInstalled；`LayoutSnapshotImporter.java:72–89` preserved筛选和清表；Pending:38同样消费此判断。

Phase2冻结Package/Profile事实源。恢复却调用当前用户PM的getActivityInfo/launchIntent，未读item.user/serial，异常最终false。当前库中“备份之外的新应用”只有isInstalled=true才保留；随后整表重建。**clone-only当前Item、主用户无该包、旧备份无该Item** 时，该Item不进入preserved，整表清理会丢失其桌面条目。备份条目的source→target profile remap不能保护这个“当前条目”分支。

确认的是此条件下筛选/清表逻辑；未声称实际设备已丢条目。查询异常也会落到相同false。历史回归 **NO**（旧旁路）；违反Owner **YES**；重复 **YES（独立安装事实）**。可能表现为恢复后新分身图标消失、pending归错/延迟。最小方向：用既有Repository+Profile识别当前Item，UNKNOWN保留/待确认，明确区分备份源serial与目标serial；不用新enum。估计替代15–25行包事实重复代码，恢复预览计数会更准确，不改原桌面动画。测试clone-only、locked/quiet、Binder异常、同包双组件、source serial不同及new pinned shortcut。

### F04 · P1 · CONFIRMED · LIFECYCLE_RISK · SILENT_CRITICAL_FAILURE

**文件/方法**：`J/backup/RestoreOperationJournal.java:76–111` read/write；`DesktopRestoreController.java:116,177,197,257,295–317`等状态写入。

恢复的安全前提是跨进程/崩溃后能判断DB、偏好、图标和回滚阶段。write失败返回false但没有记录，调用方不检查；read对损坏、不可读与首次不存在统一返回IDLE。链路 `applyArchive → write(APPLYING_DATABASE) → importer → write(DATABASE_COMMITTED) → prefs/icons/theme` 能在日志未落盘时继续。

触发：日志目录/AtomicFile写入失败，或中断后现存日志损坏。确认调用方忽略失败，**未做设备断电/坏盘注入，未观察数据损坏**。可能把半完成恢复当成无事务或错误阶段，破坏恢复/撤销可判定性。历史回归 **NO**；违反Owner **YES（durability协议）**；重复 **NO（两个journal不应合并状态机）**。最小方向：现有journal返回值成为继续写库前的硬门，区分NOT_FOUND与CORRUPT，沿现有回滚与错误码返回，不另加重试/日志Manager。预计删除0重复行。改变异常路径使其停止而非假成功。测试AtomicFile失败、每阶段进程退出、日志损坏、完整回滚、prefs commit失败、磁盘不足。

### F05 · P2 · CONFIRMED · MAIN_THREAD_HEAVY_WORK · LIFECYCLE_RISK

**文件/方法**：`J/theme/MaintainedLauncherSettingsHost.java:13466–13476` confirmUndoRestore；`backup/DesktopRestoreController.java:221,253,295`；`reload/LauncherColdReloadCoordinator.java:340–386`。

validate和rollback准备已有后台线程，但撤销按钮同步beginUndo包含archive读/解包；隔离reload进程的MAIN_HANDLER待旧PID退出后直接applyPrepared，继续DB、文件、偏好和verify。隔离进程不等于后台线程。启动RecoveryGuard的同步恢复也须测首帧预算。

触发大备份/大量自定义图标。确认主线程执行重活，不宣称测到ANR。可能Loading停顿、窗口恢复迟滞、长恢复无法及时处理输入。历史回归 **NO**；违反Owner **NO（线程预算缺口）**；重复 **NO**。最小方向在现有Controller内部安排worker，完成后回MAIN推进现有token/PID协议；不能省去原进程退出门。预计删除0。必须保持回滚顺序/首帧握手，属于REQUIRES_RUNTIME_VALIDATION。测试大/小归档、取消、页面离开、旧进程已退/未退、失败恢复与Loading帧率。

### F06 · P2 · CONFIRMED · MAIN_THREAD_HEAVY_WORK

**文件/方法**：`J/install/SmartisanInstallManager.java:132,1002–1010`；`backup/PendingItemRestoreHandler.java:25,51,130`。

包事件主线程Runnable中，pending恢复同步读取JSON、PM查标签、DB事务及AtomicFile落盘，之后notify原Model。触发有pending_items且包新增，规模越大阻塞越大；当前代码线程归属明确，设备耗时未测。历史回归 **NO**；违反Owner **NO（线程边界）**；重复 **NO**。影响包广播/UI响应，不能直接计为必然ANR。最小方向复用InstallManager已有任务串行链，按身份完成DB后再发原通知；不可因异步把ADD与restore写库顺序颠倒。删除0。测试burst安装、同包多个用户、进程退场、restore事务与正常ADD去重。

### F07 · P2 · CONFIRMED · MEMORY_RISK

**文件/方法**：`J/theme/IconIlluminationCompat.java:138–157` write；`IconRasterDiagnostics.java:591` composeTexture中prepare；Aa原生成入口亦调用write。

缓存命中前已extractAlpha、生成256² mask、Canvas绘制、分配int[65536]+byte[65536]并遍历算fingerprint。int+byte单次至少320KiB，另有Bitmap和extractAlpha成本；缓存命中只省八次blur/PNG。方法全局synchronized，阻塞所有调用方。新进程MASKS为空，不消费现存磁盘版本索引，会重新生成。

触发开启光影后的重复compose/冷加载。确认代码成本，不把它自动标成“每帧主线程”，实际调用线程/频次待trace。历史回归 **NO**（新路径，不是旧MD5重试恢复）；违反Owner **NO**；重复 **NO**。可能重新增大冷启动/设置预览延迟与分配。最小方向从现有source revision/raster identity取稳定alpha签名，在同Owner内把廉价hit放前，确保source变化仍重建；不能用package-only或mtime猜同图。删除0–10，新增缓存复杂度必须有冷/热收益证据。测试任意Alpha、透明边缘、同包换图/分身、热命中分配、八层数值probe和冷启动预算。

### F08 · P2 · CONFIRMED · MEMORY_RISK · LIFECYCLE_RISK

**文件/方法**：`J/theme/IconIlluminationCompat.java:28,157,179` MASKS；`S/Aa.smali:2831–2975` b(ItemInfo)；`S/data/A.smali:16156` m事务前缓存清理。

write以进程Map fingerprint相等直接返回true，不验证八个PNG存在，不消费VERSION作为缓存键，也无失效/清理入口。原Aa.b(ItemInfo)能删除同Pe的八层文件，Java Map没有同步失效。**文件已删除、同key同alpha、force=false**时会错误声称准备完成；此条件的代码逻辑已确认，实际卸载/重装是否先走force重建须设备/生产调用顺序测试。Map还随新key累积，未证明造成大内存泄漏。

历史回归 **NO**；违反Owner **YES（磁盘与内存缓存有效性分离）**；重复 **NO**。可能投影缺层/失效后不恢复。最小方向沿已有Aa缓存清理通知使该Map失效，hit检查完整版本/八层资源；不要另建shadow cache Owner。预计删除0。原视觉不变；测试generate→delete→same-alpha prepare、部分写失败、theme/icon-pack切换、同key重装及版本升级。

### F09 · P2 · SUSPECTED · THREAD_RISK · LIFECYCLE_RISK

**文件/方法**：`J/theme/IconIlluminationCompat.java:65–121`；`S/H.smali` onSensorChanged；`launcher/smali/com/smartisanos/smengine/Ra.smali:1974` k；`smengine/Qa.smali:36` run。

原Sensor链现在在HandlerThread写Ra.GU共享vector，再投递可复用Qa给GL；GU分量读写未发现该段快照/锁/volatile协议，后续事件可在GL读取期间修改。unregister的quitSafely会允许队列收尾，H/Qa没有对应注册epoch/Scene generation校验。队列发布提供先前写的可见性，**不能据没有volatile就认定所有读取必错**。

触发旋转事件密集、pause/resume/换Scene与剩余Sensor/GL任务重叠。尚未测出混合vector、队列积压或stale mutation；判SUSPECTED。历史回归 **NO**；违反Owner **可能YES，尚未证明实际越世代写入**；重复 **NO**。最小方向仅在既有J/Ra队列边界定义latest-snapshot/coalescing和注册epoch，不新增LightingManager/全局动画Owner。删除估计0，需原链数值和视觉一致性验证。测试旋转50Hz、lux不同硬件速率、快速pause/resume/关开、锁屏、主题重载、GL任务数/延迟与分量一致性。

### F10 · P2 · CONFIRMED · MAIN_THREAD_HEAVY_WORK

**文件/方法**：`J/quickdesktop/QuickDesktopContentView.java:87–130` onDraw；`QuickDesktopMediaBridge.java:46` read。

每次onDraw为音乐卡读取secure setting、active sessions/metadata/playback state或AudioManager，并创建Snapshot；三类card重复读配置，header/绘制另有临时对象。存在1000ms刷新和交互80/180ms刷新，不代表每次GL帧都重查。确认Android View绘制期间同步platform读取；Binder耗时未测。

历史回归 **NO**；违反Owner **NO**；重复 **NO**。可能右滑/音乐刷新卡顿。最小方向同QD宿主更新media snapshot和card配置，draw只消费快照；若改listener须定义注册/解注册，现实现没有media listener，不能虚构listener泄漏。删除0–10。测试无授权/有授权、ROM拒绝、音轨变化、退后台、卡片开关与draw执行时长。

### F11 · P2 · CONFIRMED · MAIN_THREAD_HEAVY_WORK

**文件/方法**：`S/J.smali:997` attach；`J/quickdesktop/QuickDesktopController.java:144–172`；ContentView constructor:57–82。

attach无论isEnabled真假都new Host，ContentView构造同步解码12个固定asset及2个payment派生图。J布局连接时就承担这项工作，关闭QD也付费。不是background capture反复decode；Bitmap为视图生命周期持有。

历史回归 **NO**；违反Owner **NO**；重复 **NO**。确定不必要工作位于主线程，是否拖延FIRST_PRESENT需实测。最小方向仅延后已有Host的内容构造到首次启用/揭露，并保持原RootView手势门/过程宿主语义；不能重写QD。删除0。测试关闭冷启动、首次开启无空白、快速开关、reattach/destroy、内存释放及视觉完全一致。

### F12 · P2 · SUSPECTED · LIFECYCLE_RISK · MEMORY_RISK

**文件/方法**：`J/backup/DesktopRestoreController.java:21,30–53,133–140` prepared/Listener；Host.restoreListener及showBackupPreviewPage。

prepared是static，listener强引用Activity；attach/detachListener生产检索只有声明，无接线。READY preview离开/重建时可能持有旧Activity；MAIN callback仅测listener非空，未核对ready==prepared/session/Activity。Host.show已有部分finishing守卫，因此不能认定必然BadToken。新选文件/discard可清ready，也不能称永久泄漏。

触发验证完成前离开、READY后HOME/重建/换设置页，再回调。确认强引用与缺接线，实际旧页回调/留存时长未测，综合判SUSPECTED。历史回归 **NO**；违反Owner **YES（会话消费未明确）**；重复 **NO**。最小方向接已有attach/detach和token，复用settings session；不新增生命周期Manager。删除0。测试销毁后回调、新旧preview交叠、取消/重新选择、弱引用回收和全局progress dialog归属。

### F13 · P2 · CONFIRMED · MULTIPLE_OWNER · DUPLICATION

**文件/方法**：`J/theme/LauncherSettingBridge.java:96–131` readBool；Host:10861–10891 readSystemBool。

两份boolean解析顺序均是launcher_settings→launcher_prefs→Settings.System→Global→default，包含同样吞异常与转换语义。此处可复用已有bridge，无须新PrefsRepository。确认重复，尚未观察值不同；历史回归 **NO**；违反Owner **YES（同配置读取规则两份）**；重复 **YES**。

最小方向Host直接委托Bridge，删约29–35行；同一key/异常行为保持。测试四来源冲突、缺值、非法字符串、SecurityException、备份后恢复及导航/动态开关。只有这个相同boolean规则适合委托；int/string或写入目标不同不机械合并。

### F14 · P2 · CONFIRMED · LIFECYCLE_RISK

**文件/方法**：`J/model/LauncherModelRepository.java:220–255` hasFormalApplicationItem/currentModelItems；InstallManager:1078 first-install门。

hasFormalApplicationItem的外层catch意图UNKNOWN时retain=true，但内层currentModelItems吞snapshot反射/复制异常并返回空ArrayList。失败变成正常“未找到”，外层保护不会生效。触发Aa.nc读取失败、非Map快照或复制异常。确认语义折叠，未在设备注入失败；可能重复进入first-install/新增通知，未证明一定重复DB行。

历史回归 **NO**；违反Owner **YES（UNKNOWN保留约定）**；重复 **NO**。最小方向在既有Model里保留unknown结果/传播给已有retain门，不新增ModelState/PackageState。删除0–5行吞异常fallback，修复仅异常路径。测试snapshot抛错/非Map/空Map/真实Item、同包不同user及已有项重复event。

### F15 · P3 · SUSPECTED · DEAD_CODE

**文件/方法**：`J/theme/LauncherSettingsOverlayHost.java:45` openFromDesktop；Launcher/Host仍有28处类引用（含声明）。

旧overlay设计已不用于正式settings入口；openFromDesktop检索只有声明，私有open只能由此入口进入，但生命周期hook仍调用类，build仍编入全部Java。动态外部reflection无法被文本检索彻底证明为零。标 **DEAD_CODE_SUSPECTED**，不是453行可删结论。

历史回归 **NO**；违反Owner **NO（休眠候选）**；重复 **NO**。可能只是无收益保留/理解成本；未证运行故障。最小方向先证明入口/反射/Manifest/资源/构建全集并列出所有hook，再移除真正不可达部分。当前可安全删除0行。若将来完全撤掉，必须回归Android9同task、Android14+NEW_TASK、HOME页位置保存，不能复活旧自绘overlay。

## 5. DUPLICATION_REPORT 与可删除性

全文做了去空行/注释的连续10行相似块筛查，再按语义核对；扫描得到7组跨文件匹配，包含attrRes的重叠窗口，**不是7个独立Bug或全量clone统计**。下面10个候选同时含算法/职责重复和不可合并边界。估计行数不相加作为“可立即删总数”。

| ID | 重复内容/数量/位置 | 当前Owner与形成原因 | 复用/最小替代 | 预计净删 | 分类/风险 |
|---|---|---|---|---:|---|
| DUP-01 | 相同boolean四来源读取；2份；Bridge:96、Host:10861 | 设置兼容接线先后复制 | Host委托已有Bridge；F13 | 29–35 | SAFE_TO_DEDUP；先做来源冲突/异常测试 |
| DUP-02 | 页面尾追加；Importer两处/Pending一处；Importer:186/200、Pending:68 | 恢复流程分叉；主路新修复没有覆盖pending | 复用Importer槽选择算法；不改页面表现；F02 | 10–20 | REQUIRES_RUNTIME_VALIDATION；页面/Item事务顺序 |
| DUP-03 | pending JSON AtomicFile写入；2份；Importer:403、Pending:130 | 两个流程维护同文件落盘方式 | 放进已有BackupFileUtils的窄写入函数，错误必须继续抛出 | 10–15 | SAFE_TO_DEDUP（仅字节写入）；不能顺带合并DB事务 |
| DUP-04 | attrRes两namespace fallback；3份；PreviewSettingItemView:90、SettingItemSwitch:190、SettingItemTextVertical:173 | maintained XML wrapper兼容 | 当前没有确认可直接委托的同合同父类；如无现有宿主，不为十余行新建框架 | 0（当前）；约12–18（找到已有Owner后） | DO_NOT_MERGE，低收益；Resource namespace必须保留 |
| DUP-05 | RestartLoadingView绘制/定时；2份；Host:9633、Native:434 | 原loading失败备用和旧native重启各保留一份 | 优先已有OriginalLoadingContentFactory/资源；Native入口先证不可达 | 50–70（有条件） | REQUIRES_RUNTIME_VALIDATION；不能删故障窗口兜底或改原动画 |
| DUP-06 | Backup/Restore journal AtomicFile读写模板；2份；BackupJournal:68、RestoreJournal:82 | 两个操作各自状态与容量/错误规则 | 只可复用字节IO，不合并Entry/State/恢复协议；先F04 | 10–20（有条件） | DO_NOT_MERGE 状态机；恢复日志错误不能再返回普通空状态 |
| DUP-07 | 父类反射getField循环；2份；FolderReturnTargetCompat:178、FolderCellPositionAdapter:119 | owner不同、fallback用途不同 | 两个私有小helper先保留；不新增万能ReflectionUtil | 0 | DO_NOT_MERGE；null/default/继承字段可见性不同 |
| DUP-08 | static/live原shadow层生成循环；2份；Bridge:447/501 | 共用半径/颜色但不同canvas anchor和输出用途 | 只可提取同类内draw-layers，保留所有坐标参数、原helper；不要合并raster envelope | 12–20（有条件） | REQUIRES_RUNTIME_VALIDATION；golden、trans/aero、live交接 |
| DUP-09 | nav preference两份mask应用；Host:1594/1638 | Launcher布局/颜色/cutout缓存 vs其他窗口 | 可抽同类内纯mask计算，保留Window Insets与每窗缓存策略 | 5–8（有条件） | REQUIRES_RUNTIME_VALIDATION；不能整个方法互换 |
| DUP-10 | packageInstalled boolean多处；RestoreMerge:180、ThemeBackupCodec:25、Host:9902 | 安装事实与主题包可用性被写成近似API调用 | 业务Model/恢复必须消费Package/Profile（F03）；主题包UI只能作资源可用性，不能赋永久删除许可 | 15–25（有条件） | DO_NOT_MERGE 通用boolean；应按已有Owner分职责替换 |

真正适合直接收口的起点是DUP-01、DUP-03；不是把十类代码塞进一个CompatUtils。优先顺序：修复既有Owner异常语义 → 委托既有Owner → 同类/现有模块内小函数 → 仅在无可复用边界时新增小helper。不要新建第二Bridge、第二Model、第二shadow/cache/Reload Manager。

### 七轴死代码证明

“0*”是检索未发现，不代表动态构造/外部反射的绝对证明。任一轴未清零或未证明，只能SUSPECTED。

| 候选 | Java direct | Smali invoke | 最终Manifest | Reflection | Intent | Resource | Build | 结论 |
|---|---|---|---|---|---|---|---|---|
| Overlay.openFromDesktop | 仅声明；其内部有private open | 未见直接入口；类仍有生命周期hook | 非组件 | 无literal调用证据，动态未知 | 当前正式入口未命中 | 0* | 全Java编译，类在生产 | DEAD_CODE_SUSPECTED，F15，0行可立即删除 |
| Native.restartLauncher private及同类loading | 方法名只有声明；内部引用showLoading | 未见入口，private跨dex不应普通调用 | Native宿主不是独立组件 | 未穷尽动态调用 | 无明确Intent直达该方法 | 0* | 同类整个编译 | SUSPECTED旧重启链；不能把Native整类删掉 |
| DesktopRestoreController.attach/detachListener | 只有声明 | 未见调用 | 非组件 | 无literal调用证据 | 非Intent入口 | 0* | 生产编入 | 当前未接线API；F12需要接线，不能按无调用删除 |
| Host.RestartLoadingView | showRestartLoading异常分支明确引用 | Host入口可达 | 由settings宿主进入 | 对话框反射失败即fallback | 多个加载路径 | canvas自绘 | 生产编入 | 可达备用，非dead；DUP-05候选 |
| Model旧执行器Aa.D | 底层声明/旧能力保留 | 现代删除扫描未发现调用；不能等价全APK无引用 | 非组件 | 未完整证明 | 无业务Intent直达 | 非resource类 | Smali编入 | 不擅删底层能力；架构门只约束现代决策路径 |

临时扫描文件放在忽略的build审计目录。没有删除类、方法、诊断或test hook；没有因行数大就建议删除整个Host。

## 6. 感应光影完整链、缓存与帧成本

### 原版复用链与职责

```text
设置持久化 launcher_icon_illumination_enabled
  → J已有Sensor register gate / mRegistered
  → IconIlluminationCompat 平台注册（独立HandlerThread）
  → 原H旋转计算 / J光照preset
  → 原Ra.H、Ra.k → GU/LU → 原Qa排GL任务
  → 原Light / SceneNode / sc[27]
  → 原MutiTexMaterial八层mask / uLightLoc

图标source → 唯一静态Composer
  → 原Aa mask契约 / Compat.write → shadow/<Pe>_1..8.png
  → 原纹理/材质消费（不是每次Sensor回调都生成PNG）
```

当前保留原版八层mask、140px目标/256pxPNG、完整Alpha；投影blur实现用于替换普通Android缺少的私有BlurImageFilter。原版接触阴影与受光投影的并存有原材质依据，不应把所有双层阴影都判为重复Owner。动态Weather/Calendar仍通过sc[0]/sc[7]外部geometry交接，不能重画内部内容。新增sensor adapter与blur替代有明确平台缺失原因，不能把它们当作无依据新lighting系统。

| 检查项 | 当前证据 | 审计判断 |
|---|---|---|
| 开关默认/持久化 | false默认，supported gate，commit；偏好codec包含该键 | 本轮T12通过；完整恢复后感应状态未设备测 |
| Sensor选择 | Rotation → GeomagneticRotation → GameRotation；无vector时false | 不支持不启用；T16覆盖失败/回退 |
| 旋转采样 | registerListener参数20000微秒 | 请求约50Hz；真实事件频率不能据参数断言 |
| lux采样 | 2000微秒，原preset更新有阈值逻辑 | 理论请求500Hz，硬件/OEM可能限频；不能宣称实测500Hz |
| 重复注册 | J.mRegistered及THREADS.containsKey(rotation) | 基本单实例门存在；失败线程quit |
| pause/注销 | J原注销位置 → Compat.unregister → remove map / finally quitSafely | 未发现每resume必泄漏；旧回调收尾/GL世代仍F09 |
| Surface/Scene生命周期 | 原J/Scene链保留 | 没有新增Scene epoch到Sensor/Qa，F09待测 |
| mask生成时机 | Aa/compose准备阶段；非onSensorChanged | 不误标成每帧PNG；命中前仍有F07成本 |
| 投影纹理缓存 | Pe含Item来源身份，8个文件，Map fingerprint | source Alpha变可重建；缺disk有效性/版本门，F08 |
| 设置/返回/锁屏 | 仍进入已有J生命周期和原开关 | Android9/16、主题/锁屏组合没有本轮证明 |
| 静态/动态图标交接 | Bridge original shadow spec、sc[0] oracle、原投影层 | T14/T15是合同检查，非全视觉验收 |
| 原版投影数值/出图 | 专项文档记录Skia/GLES probe | 本轮没有再安装probe；不能据历史probe宣称最终桌面一致 |

### FRAME_PATH_MATRIX

| 路径 | 高频操作/已有保护 | 结论与需要测量 |
|---|---|---|
| SMEngine update/draw | 原Scene/Tween；Eb真实dt传Ra.T | 本轮不改引擎；记录每帧CPU/GL、update+draw时长和任务数 |
| Sensor H → Qa | quaternion/matrix/vector写入；每有效事件排GL更新 | F09：确认无该段coalescing；是否积压待实际队列追踪 |
| 静态icon compose | source/raster/cache；light.prepare同步 | 不是每draw必compose；F07统计compose次数和cache hit分配 |
| ActiveIcon交接 | world rect/sc[0]同步、shared shadow | 不重复乘用户倍率；不得为优化删除原timeline |
| FolderIcons更新 | missing-owner skip | owner保护不能移到整Folder.clear；采集callback前后draw状态 |
| QD onDraw | platform媒体快照+prefs+对象 | F10：可抽出draw工作；实际draw次数与Binder耗时待测 |
| Search结果bind | immutable snapshot、row/session generation | 不每输入整库重建；图标同snapshot hydration已有合并 |
| SystemUI focus/window提交 | Launcher缓存+实际flags校验 | 不在每GL帧无条件set；失焦/主题同窗重写需要runtime |

### ICON_CACHE_MATRIX

| 缓存 | 键/失效Owner | Alpha/内容/用户/尺寸检查 | 当前结论 |
|---|---|---|---|
| 原DB MD5/iconRawData | Aa与e/s | 已存字节回用；source变化走原生成 | 9/27修复分支仍在，无固定4次命中重生证明 |
| final raster | IconRasterDiagnostics版本v29 | package/component/user + source/geometry相关identity | 静态合同T01通过；完整内容换图仍需runtime证据 |
| settings preview | IconPreviewRepository IconRenderKey | source type/userSerial/targetPx；session不混进稳定bitmap key | 字节LRU6–16MiB、队列/session取消、trimMemory；T13通过 |
| online icon | 现行v4目录与生成索引 | 包名真实映射，动态日历/天气不被静态在线覆盖 | index/cache升级已文档化；本轮未访问镜像/发布 |
| active shadow | Bridge active_icon_shadow_v7/spec/source | original半径/颜色及source；live anchor独立 | T14/T15通过；不机械等同感应mask |
| projection mask | Compat MASKS / shadow Pe_1..8 | Alpha hash；未验证disk完整与VERSION | F07/F08；不是MD5重复重试本身 |
| Search图标 | SearchIconBackend source generation + profile key | clone-only、主用户fallback受控、来源失效/hydration | T04通过；OEM query异常仍需设备 |

缓存应区分raw source、final raster、Active snapshot、projection layers；不能简单合并成一个global bitmap map。格式/尺寸/绘制Owner不同，强行合并会让失效更难证明。

## 7. 生命周期、卡死与状态恢复

### GESTURE_RECOVERY_MATRIX

| 状态Owner/状态 | 正常出口 | CANCEL出口 | 生命周期/其他Owner打断 | 异常/缺口 | 验证结论 |
|---|---|---|---|---|---|
| SystemPanel TRACKING/OWNED | ACTION_UP → finish/reset | ACTION_CANCEL → reset；v.1处理已消耗序列 | 多指/drag拒绝或终止；interactive target通知 | focus/pause发生而UP/CANCEL未送达，未建立完整设备证明 | 两个Fling reset调用在smengine/v.1，不因仅扫描launcher目录而漏判 |
| FlingUp rk/sk/tk | 原c/ew，消耗UP后专用reset | v.1消费CANCEL后reset | 系统面板消费MOVE也reset | 生命周期全分支未逐状态穷尽 | 未确认卡死回归；必须测下拉后立刻左右翻页 |
| Root横滑/负一屏 | 原UP/settle | 原CANCEL分支 | HOME/锁屏/窗口变化由原生命周期 | MagicFlow与QD组合缺自动逻辑测试 | 不新增全局reset所有gesture |
| QD reveal/consumeRootGestureUntilEnd | UP settle，末尾清tracking | ACTION_CANCEL/多指清tracker/capture，揭露后才cancel原序列 | HOME、Stop、Destroy、reattach/unexpecteddetach cleanup | Focus-only跳转是否正常由Stop/原系统分发需验证 | cleanup覆盖比旧版完整，但本轮非E2E PASS |
| Drag/edit/folder ub bits | 原事件/Timeline结束释放 | 原InputManager.rh/对应cancel | SystemPanel检测已有owner不抢；QD多指退出 | 所有异常是否解除bit未证全 | 不能凭bit名存在认定无卡死 |
| Uninstall pending/oa trash | confirmed exact Item → 原两阶段 → Pc/Qc继续队列 | 返回无confirmed → 原cancel animation | 等待系统框J.pause不提前清场；异常fd兜底 | F01系统目标身份；动画与DB顺序runtime组合 | T05–08通过；不得恢复无条件forceFinish |
| Unlock session/GL prepared | 一次commit/finish，generation receipts | 非direct HOME/cover取消，stale拒绝 | pause/stop/screen事件进入同Owner | compat与focus规则需按10/1版本测 | T03通过，不能推定真机各刷新率视觉 |
| Settings session/页位置 | 同task与NEW_TASK各自session | Back dismiss/page回退 | HOME保留页位置；destroy取消回调 | Overlay休眠入口不等于正式owner | T10/T11通过，Android9窗口再现待测 |
| Reload pending token/PID | first-present及旧PID退出 | token失配/Activity finishing取消start | 隔离process负责转换 | F05重活阻塞；异常日志有但完整恢复未测 | state/callback握手保持，禁止固定650ms替代 |

卡死验收必须同时记录输入是否进入Root、当前ub状态、InputManager target、SMEngine线程是否继续draw、oa/Timeline是否pending、窗口focus/task/PID。仅无FATAL或Surface存在不够。

### ASYNC_IDENTITY_MATRIX

| 异步写入/回调 | 现有identity与guard | 缺口/边界 |
|---|---|---|
| Remove commit | exact id/serial/legacyUser/pkg/component/type，执行前重读Aa.nc | 执行器行隔离已有测试；F01系统Intent在此前丢身份 |
| Search index发布 | single executor + snapshot generation | 不建立第二model；profile/平台实际回调待测 |
| Search query/row图标 | bound/adapter generation、destroyed、source generation hydration | T04覆盖coalescing；stale发布不等于所有UI均会错误绑定 |
| Preview | RequestSession、key/pending callback、cancel消费者门 | 不把View或session作为stable bitmap缓存key |
| QD capture | generation、pendingGeneration、weak host、cancel后reject/recycle | frame readback真实Surface代价需测；不能重复复制全分辨率 |
| Weather/Calendar Folder更新 | current owner存在检查、缺失记录并skip | null安全不等于全部callback都有epoch；未登记无证据新Crash |
| Weather城市搜索 | cache+网络超时；UI调用者需query/page gate | 每次外部worker、Geocoder.join1200超时不杀worker；需测连续输入残留线程 |
| Restore preview | operation token/lock，但静态prepared.listener | F12：没有接入已存在attach/detach；ready callback未校验当前prepared |
| Reload | token、old pid、Activity weak ref、first-frame门 | F05后台执行与现有token必须一起保持 |
| Sensor→GL | 注册listener键和J.mRegistered | F09注册epoch/Scene generation不足证；不是另建scene管理系统 |

### DB_MODEL_SCENE_CONSISTENCY

| 操作 | DB/Model/Scene链 | 允许与禁止 |
|---|---|---|
| 系统REMOVE | package+profile事实 → 每type0 Item request → execute前重验 → Aa.a单条 → DatabaseUpdater → Scene队列 | 禁止Scene自己以PM空结果永久删库；当前正式路径保持 |
| 卸载确认返回 | finishSystemUninstall沿同RemovalGateway，再保留原成功/取消动画 | 不能用animation结束代替系统安装事实；F01影响系统目标 |
| CHANGE/REPLACE | refresh已有Items，不按install ADD所有components | 新component自动添加仍是已明确延后的专项，不把未做Phase3当本轮回归 |
| 恢复 | 旧主进程退出 → 隔离整库/偏好/icon/theme → verify → 新主进程重建 | F03保留当前Item判断、F04journal durability是主要破口 |
| Pending补装 | JSON pending → DB insertion → pending文件移除 → 原ADD通知 | F02/F06；DB提交与JSON文件提交不是同一事务，失败需幂等/identity核对测试 |
| Folder/ActiveIcon | 显示层使用现存Item；缺owner只skip | 不能清整个Folder然后继续draw；当前保护仍在 |

## 8. 启动、主线程、内存与线程矩阵

### STARTUP_WORK_MATRIX

| 阶段/工作 | 必需性 | 当前证据与建议 |
|---|---|---|
| Application配置/资源初始化 | 首帧基础必须 | 原ja/Constants路径保留；不得延后必须的主题/宫格事实 |
| Model read/reconcile | 首屏Item必要；完整扫描不应阻塞基础present | 单Owner/UNKNOWN保留维护；F14错误语义待修 |
| 图标来源/compose/texture | 可见icon必要，其余可后置但须原调度支持 | MD5复用保持；F07光影命中前成本需要阶段计时 |
| projection八层生成 | 仅光影开启且缺资源时必要 | 可以优先检查有效缓存；不能为快首帧先画错误阴影 |
| QD固定assets | 关闭功能/从未揭露时非首帧必须 | F11：attach已提前解码；延后须无首次揭露空白 |
| Search全索引/联系人 | 搜索进入前不应强制主线程全扫 | existing executor/snapshot；联系人权限/缓存另有边界 |
| 在线图标下载/天气网络 | 首帧非必要 | 必须沿已有后台/失败显示，不能延迟整个桌面等待网络 |
| 备份/恢复Recovery | 有未完成事务时必须先恢复一致性 | 普通无事务启动应廉价；F05需区分repair与正常启动 |
| Loading退出/Unlock | 依present/state，而非随机延迟 | ColdReload/Coordinator守卫保持；compat规则不等于通用等待时间 |

7月启动基线没有在最新v1.5.8重测；旧“首次画面/内存”数字不可直接套用。不能把本轮build成功改写成FIRST_PRESENT成功。

### MAIN_THREAD_WORK_MATRIX

| 路径 | 已确认主线程? | 工作 | 本轮结论 |
|---|---|---|---|
| 撤销beginUndo / reload applyPrepared | YES | archive解包、DB、prefs、图标、verify | F05；隔离process仍有UI线程 |
| Pending.onPackageAdded | YES | JSON、PM、DB、fsync | F06；要保持ADD时序/幂等 |
| QD onDraw media | YES | platform/Binder查询、分配 | F10；仅draw触发，不泛称60fps常驻 |
| QD attach assets | YES | decode12 assets +2派生图 | F11；关闭开关亦执行 |
| Illumination.write | caller同步；未证明全部MAIN | alpha/320KiB arrays/blur/PNG | F07；trace线程与调用频次后再排优化优先级 |
| Preview decode | NO，2-worker pool | decode/compose后回callback | existing session取消与LRU，不再加第二缓存 |
| Search build/match/icons | existing executor | PM/Profile/文本匹配、bitmap | 主要后台；Activity bind保持轻量 |
| Weather city Geocoder join | 外部OpenMeteo worker | 再开worker join1200 | 不按join字符串就称主线程ANR；残worker预算待测 |

### THREAD_OWNER_MATRIX

| 线程/队列Owner | 创建与数量策略 | 退出/取消/持有者 | 评价 |
|---|---|---|---|
| Main/UI | 平台主线程，每进程各一 | Activity生命周期 | :reload也有MAIN，F05不能漏 |
| 原SMEngine/GL | 原Surface/engine管理 | 原pause/Surface生命周期 | 不改成另一渲染线程；native内资源未全证 |
| IconIlluminationCompat | 每rotation listener一个HandlerThread，map去重 | unregister remove+quitSafely；J gate | 不认定resume必泄漏；F09尾任务/世代 |
| IconPreviewRepository | application单例，2-thread PriorityBlockingQueue | session队列上限96、取消/消费者guard、trim | process寿命合理；不以未shutdown认定Activity泄漏 |
| SearchIndexRepository | process singleton single executor | generation/listeners | process常驻用途明确；发布/订阅退出需设备 |
| SearchIconBackend | singleton QuickSearchIcon单executor | source/identity cache | 不另建每Activity图标线程 |
| OriginalQuickSearchActivity matcher | dedicated matching executor及联系人/检索相关任务 | destroyed/query/row guard、onDestroy释放订阅 | T04不覆盖所有联系人/provider生命周期 |
| QD capture | static single WORKER | generation cancel、weak owner、raw reject recycle | process线程常驻合理；capture输出峰值需Graphics统计 |
| DesktopBackupController | 按backup/inspection任务new Thread | cancellation/operationLock/callback | 并发被事务锁约束；Listener回收另需runtime |
| DesktopRestoreController | validation/rollback准备worker | cancellation+lock；prepared为static | F05同步apply/undo；F12listener |
| InstallManager | init/event handler +已有工作链 | 注册/生命周期与event去重 | F06 pending恢复仍在main |
| Weather city/geocoder | 搜索可每次新外部worker+内部worker | 网络超时、join超时不终止Geocoder | 潜在线程积累需burst+stale UI trace，未作为确认Bug |
| Host其他下载/图标包/城市等 | 多个任务入口 | 分别取消/operation gate | 21处thread构造命中不是21个活线程；优先按任务列实例 |

### MEMORY_OWNER_MATRIX

| 对象 | 持有/释放Owner | 当前证据 | 未验证风险 |
|---|---|---|---|
| final/preview Bitmaps | repository LRUs /显示consumer | preview按allocation bytes限6–16MiB、trim、session取消 | 总峰值包含native/graphics，不能只看Java缓存 |
| Sensor线程map | Compat以listener强键持线程 | 注册失败quit、注销remove | late任务引用Scene/Activity间接链，F09待测 |
| Projection MASKS | static Map<String,Integer> | 不持bitmap但无evict/invalidations | F08文件有效性与key累积；不夸大成大量Bitmap泄漏 |
| QD host/capture图 | process强host + root weak；截图generation | detach/destroy/reattach cleanup，拒绝raw回收 | Popup/Surface与texture峰值需要Graphics/native测 |
| QD固定图 | ContentView final fields | 视图生命周期持有，不逐draw decode | F11关闭时提前占用；真实detach回收需heap看 |
| Restore prepared | static prepared→listener→Activity | 新选文件/discard可释放 | F12离页留存；不等于永不释放 |
| ActiveIcon/Folder纹理 | 原Scene/Cell/材质owner | null owner不全clear；shadow output正常recycle | native Texture/FBO释放未逐项设备证明 |
| SystemUI缓存 | Host lastWindowToken/flags；特定dialog refs | 仅状态token不等于Activity强引用 | 全局Dialog在callback中是否跨session误dismiss需测试 |

## 9. QuickDesktop、Search/T9、窗口与配置

QuickDesktop继续消费原RootView横滑，没有恢复整体自绘Launcher缩放。BackgroundCapture取消使用generation，原bitmap交接拒绝空帧/旧generation；Host cleanup涵盖destroy、HOME、stop、reattach和unexpecteddetach。最明显的新预算问题是F10/F11。负一屏MagicFlow仍由原路径管理，不能因为两个入口都涉及横滑就共用一个布尔状态。

Search继续使用Launcher内搜索；没有恢复独立QuickSearch APK下载/构建依赖。索引和图标是不同Owner，图标source generation变化须重新hydrate当前snapshot，不意味着重建全文索引。OriginalQuickSearchActivity有destroyed、adapter/query/IME request generation门，T9/system-IME切换沿当前会话处理。T04验证的是图标/identity和合并回调；T9、联系人真实provider、权限撤销、IME返回、结果点击、多用户启动本轮未做端到端测试。

### SYSTEM_UI_OWNER_MATRIX

| 窗口 | 导航栏Owner/策略 | 状态栏Owner/恢复 | 审计结果 |
|---|---|---|---|
| Launcher主Activity | Host applyNavigationBarIfChanged，布局behind bars、token缓存+实际flags校验 | 主题color提交门；transparent window/cutout | 本轮无每帧无条件重写证据；API30+ Insets隐藏行为须手势/三键测 |
| maintained设置Activity | Host applyNavigationBarToWindow，legacy mask+API30 Insets | 设置宿主自己的背景/颜色 | 不能拿Launcher全屏布局覆盖设置page |
| Search Activity | own Window/IME policy并消费导航偏好 | 搜索背景对应appearance | IME与隐藏导航同时测试；无实际本轮截图 |
| Dialog/确认框 | 宿主/Host按Window应用 | 保留该对话框status策略 | 必须逐窗口覆盖，而非主Activity一次设置 |
| 原Loading Dialog | LoadingUiWindowCompat强制hide | loading特定黑色/全屏策略 | 用户hide开关为false仍可强制；不能删该特例 |
| ReloadTransition /启动Loading | LoadingUiWindowCompat + OriginalLoadingContentFactory | reload/主题不同恢复责任 | 主Launcher不能接收loading旧flags快照覆盖主题新appearance |
| QD PopupWindow | QD宿主popup flags/focus/窗口范围 | 与当前桌面主题交接 | popup不是Activity；需实际SystemUI/window检查 |
| 休眠SettingsOverlay | 类内snapshot恢复代码仍编入 | 无正式open入口证据 | F15，不能把其代码当已运行的状态栏冲突 |

导航隐藏和状态栏文字颜色是两种状态。API30 appearance与legacy flags对同一状态栏提交需要一致，但不能把强制Loading、Search IME、Launcher cutout的策略拼成全局WindowManager。32处Java SystemUI调用命中仅是清单；涉及不同Window不等于32个竞争Owner。

### CONFIG_SOURCE_MATRIX

| 配置 | 权威/读取顺序 | 备份/运行投影 | 审计重点 |
|---|---|---|---|
| 通用boolean（dynamic/nav等） | launcher_settings → launcher_prefs →System→Global→default | Bridge消费；Host有复制F13 | 先统一同规则读取，不改fallback优先级 |
| 12/20grid | 原偏好/原layout与迁移逻辑 | 20持久值与内部pageMode9有区别 | 不把9宫格资源当新增可选模式 |
| 普通theme | launcher_theme | 原changeTheme queue | trans不能写入此普通ID |
| trans覆盖 | launcher_grid_theme | 开关0/1、只默认翻页 | 恢复后运行投影需全链验证 |
| icon尺寸/source | IconVisualMetrics及现有source pref | final key/Active sync/preview | 不二次倍率，不把100伪装成120 |
| illumination | 单KEY，supported gate，默认false | portable preference已收录 | T12通过不等于Sensor完整恢复 |
| QD feature/card | QD persisted values→Constants runtime gate | attach syncRuntimeLeftScreenEnabled | 关闭时仍construct内容F11；runtime sync不要删除 |
| backup目录/SAF | 明确URI权限和路径记录 | 非portable设备本地身份/权限 | 不把旧设备授权写入新设备而假装可读 |
| permission/notification access | Android system事实 | 不可仅恢复一个pref就认为授权成功 | Media/联系人/定位/分身API须查询实际system |

## 10. 兼容性边界与失败处理

| 适配 | API/ROM前提 | fallback/失败后果 | 审计与后续验证 |
|---|---|---|---|
| LauncherApps/Profile | public21+；User/quiet/unlocked相应API gate | query异常→UNKNOWN/暂不可用，禁止删 | 当前Repository保守门保持；F03旁路必须纳入 |
| UserHandle映射 | 非主legacy用户的反射构造可能受ROM/hidden API限制 | null/serial-1→UNKNOWN保留 | 不臆定所有ROM都返回；Pixel/三星/HyperOS/Profile测 |
| public uninstall | ACTION_UNINSTALL_PACKAGE，当前user上下文 | ACTION_DELETE备用；失败toast+场景cleanup | F01：fallback并不补齐profile目标 |
| status/nav | legacy flags + API30 Insets/appearance | 不同Window权限/ROM重写 | 三键/手势、focus/IME、Android9/14/16逐窗测 |
| below-keyguard/settings task | Android9同task；Android14+NEW_TASK | 原生命周期与实际任务保留 | HOME从嵌套页返回，再开同位置；系统桌面误返回需task/PID日志 |
| 原投影私有BlurImageFilter | 普通Android没有原私有实现 | 现行blur适配+原8层材质 | 不退化为普通drop-shadow或另做uLightDir假动画 |
| Media sessions | 通知使用权/系统service/OEM | 无controller用AudioManager/media keys，提示无metadata | F10不要在draw反复做平台探测；无授权不算异常crash |
| Weather/provider/location | 厂商weather包、权限、Geocoder、网络 | 已有识别/provider与网络降级 | 包名检测T02通过；服务权限/API真实可用性未设备测 |
| Backup SAF | provider URI授权和目录访问 | invalid archive/无法读写返回错误 | F04不能把durability失败静默当成功 |
| target28/modern ROM | 最终min23、target28、compile36 | 应用兼容取决于实际ROM行为，非compileSDK | 构建通过不证明Android8–16全功能覆盖 |

### catch分类

全文Java筛查命中709处 `catch(Throwable/Exception ignored*)`；其中432处在Host。还扫描生产Smali catch与关键调用，但没有把每个catch逐条证明为缺陷。分类依据是失败后的语义：

- 可接受：OEM/反射探测失败后选择已有public fallback，或只读取非关键诊断且不改变Model；例如Sensor异常明确日志、注册失败quit、不支持返回false。
- 危险：Model/DB/journal/icon持久化失败仍返回“成功/空数据”并继续业务。F04确定关键静默失败；F14虽然内层有Log，UNKNOWN被空集合吞掉仍是不安全语义。
- 需要独立验证：Package/Profile反射失败的保守默认、reload窗口恢复、Scene操作fallback。大范围try/catch本身既不是兼容成功，也不是可以机械删掉的代码。
- 必须保留类型区别：首次journal不存在可以IDLE；已有文件损坏不能同义。网络城市为空不是Package不安装；没有weather source不允许删除Item。

### Handler / Delay / Runnable

Java专门delay筛查37处，覆盖postDelayed/sendMessageDelayed/postInvalidateDelayed；thread构造48处，heavy API274处。它们是语法命中，不是全部Handler数量。普通post、Handler/Executor/Choreographer和关键Smali异步入口另行检索，不能据37宣称全项目只有37个延迟。

| 延迟/调度 | 等待内容 | 重入/取消证据 | 结论 |
|---|---|---|---|
| unlock compat120ms | 最新单Owner的GL prepare/resume节奏 | session/generation门及T03 | 不随机删除，不泛化成所有ROM都需要120ms |
| Host备用loading120ms | 备用动画帧tick | start先remove，detach remove | 生命周期退出存在；DUP-05，非SMEngine定帧回归 |
| Native旧restart650ms | 纯时间后start HOME | 入口只有声明，未证可达 | DEAD_CODE_SUSPECTED候选；不称它当前生产握手 |
| QD 1000ms/80/180ms | media刷新/用户控制后更新 | view redraw生命周期；无media listener | 可改同Owner快照但不是固定delay都是Bug，F10 |
| ColdReload Choreographer轮询 | 可观察旧PID退出，而非固定时间 | token、weakActivity/finishing取消 | 保留状态门；应用恢复重活F05另外解决 |
| Install事件相关delays | event合并/确认原Model状态 | 要检查每种event及identity | 本轮只对关键生产路径证明，未宣称所有delay可删 |
| QD capture调度 | 对应背景frame请求 | generation取消并释放旧raw | 不用延迟猜readback成功，frame receipt仍要保留 |

## 11. HOTSPOT Top 20 与 HIGH_CHURN_RISK

排序综合职责、状态交叉、历史故障和变更频率，**不是行数排序**。触达次数：Git从2026-07-01到当前HEAD的每提交文件出现计数；merge/历史形状可能影响计数，不能当实际修改方法次数。Smali长文件主要来自反编译，不以长度本身建议重写。

| 排名 | HOTSPOT | 触达次数 | 风险依据/复查重点 | HIGH_CHURN_RISK |
|---:|---|---:|---|---|
| 1 | MaintainedLauncherSettingsHost | 39 | 20,543行，配置/Window/图标/主题/下载/恢复/手势/页面共宿主；432个silent catch命中、19delay、21thread构造命中 | HIGH；F05/F12/F13；先窄委托，不全面重构 |
| 2 | J.smali | 12 | Launcher主生命周期、unlock/sensor/主题/Scene交汇；最新卸载pause例外 | HIGH；HOME/锁屏/系统卸载/快速focus组合 |
| 3 | view/a/g.1.smali（Cell） | 17 | 静态/动态sc[]、几何、投影、Folder交接 | HIGH；light/尺寸/shadow共触达 |
| 4 | data/A.smali | 7 | DB执行器、Item扩展、Scene任务与原队列 | HIGH；确认row-level+Pc/Qc继续仍有效 |
| 5 | Aa.smali | 10 | MD5、图标数据、八层mask、Model底层和cache清理 | HIGH；F08与历史MD5性能必须同时测 |
| 6 | IconRasterDiagnostics | 16 | source→raster/shape/geometry/cache键，多个身份维度 | HIGH；1251行、20silent命中，F07 |
| 7 | LauncherSettingBridge | 15 | live geometry、original shadow、pref读取/配置投影 | HIGH；F13/DUP-08；原anchor冻结 |
| 8 | SmartisanInstallManager | 10 | 广播/替换/安装确认/Profile/Download/原通知 | HIGH；F06/F14，模型去重与异步顺序 |
| 9 | Launcher.smali | 11 | HOME/stop/focus/destroy hooks；多个compat消费者 | HIGH；不增加第二次cleanup/GL直接写 |
| 10 | LauncherBelowKeyguardCompat | 7 | focus/keyguard/settings session与任务恢复 | HIGH；759行、已显式日志；多窗口真实证据优先 |
| 11 | LauncherColdReloadCoordinator | 7 | 跨进程PID/token/first-present/window握手 | HIGH；F05；不能用新定时器替代 |
| 12 | DesktopRestoreController | 6 | journal多阶段、回滚、worker/Main、Listener与OperationLock | HIGH；F04/F05/F12，不是单纯IOhelper |
| 13 | LayoutSnapshotImporter | 6 | 全表事务、slot/Item/Profile/shortcut合并 | HIGH；F02/F03，数据损失条件优先 |
| 14 | OriginalQuickSearchActivity | 5 | IME/T9/联系人/query/row/source多个世代 | MEDIUM-HIGH；1540行，但有generation/destroyed门 |
| 15 | IconPreviewRepository | 6 | 队列/session/pending消费者/缓存/回调竞争 | HIGH；10/2调度改动，T13只能证明测试条件 |
| 16 | QuickDesktopController + Capture | 4 / 2 | 原手势、Popup/GL截屏、强host/弱root、cleanup | MEDIUM-HIGH；连续进入退出/多指/后台 |
| 17 | SystemPanelCompat + smengine/v.1 | 4（Java部分） | 原Input target与系统面板所有权转换 | MEDIUM-HIGH；消费MOVE与UP/CANCEL必须成对 |
| 18 | WeatherBridge + 原H/m/FolderIcons | 6（Bridge） | provider/network/thread、stale owner、动态纹理 | HIGH；旧NPE/whole-clear风险，不动原内容/Timeline |
| 19 | IconIlluminationCompat + Ra/Qa | 1（新adapter） | 新线程穿过原GL共享数据、同步mask重活 | NEW_FEATURE_RISK；低churn不等于低风险，F07–09 |
| 20 | SearchIndexRepository + SearchIconBackend | 2 / 2 | snapshot与source独立失效、Profile身份、多入口 | MEDIUM-HIGH；9/30clone修复不能被cache简化破坏 |

### Git交叉复查

- `912fd89a`涉及57文件，约+2691/-864；把light、shadow、uninstall、preview/settings、portable prefs同时落在多个历史热点。需按功能守卫回归，不能只跑单一光影probe。
- `ce499f31`（10/1）、`f0e52605`（9/30）、`ec2fd2bc`（9/24）与最新文档共同确定基线。旧文档废弃方案不是可恢复代码来源。
- Pending页分配和RestoreMerge安装判断的8/1旧实现仍存，后来的主Importer/Model收口没有自动覆盖它们；F02/F03是典型“修过A后B旁路仍破坏A前提”。
- 增加sc[27]投影不能放宽sc[0]/sc[7]实际geometry合同；修卸载队列不能重新按包扩展行删除；修状态栏不能用loading旧snapshot覆盖主题新appearance；修Search clone不能退化为包名唯一cache。
- HEAD build/sign通过只能说明编译/包装一致性。最近多职责同时改动最需要受控设备回归，不需要更多无证据compat层。

## 12. 已执行验证、测试覆盖与缺口

### 本轮执行记录

16组现有脚本全部exit0；结果清单在 `build/full-audit-20261002/test-results.json`，对应完整输出也在该目录。没有修改测试脚本；没有新建生产审计工具。T编号只用于本报告索引。

| 编号 | 现有脚本 | 本轮结果/所覆盖 | 不能据此声称 |
|---|---|---|---|
| T01 | tools/audit_icon_contract.py | PASS，静态图标合同门 | 最终图片/全设备视觉完全一致 |
| T02 | tools/verify_weather_package_detection.py | PASS，11positive/3negative | 厂商weather service/provider运行可用 |
| T03 | tools/tests/unlock/run_tests.py | PASS，生产Owner的stub环境：session/gates/GL receipts/stale/返回/偏好；刷新率公式 | 60/90/120/144Hz真机动画速度/帧画面一致 |
| T04 | tools/tests/search_icons/run_tests.py | PASS，clone-only/user失效/source generation/coalesced hydration | 全Search/T9/联系人/IME的端到端通过 |
| T05 | tools/tests/stability/run_tests.py | PASS，removal108、cancel8、pending-systemconfirm4等逻辑 | 真实系统卸载Intent选对profile；previous-index基线就是当前，不能当修复前失败数 |
| T06 | tools/tests/stability/test_uninstall_bridge.py | PASS，原Java bridge：取消动画/一次返回/commit隔离/launch失败fallback | stub Intent没有user目标断言，F01不在覆盖内 |
| T07 | tools/tests/stability/test_uninstall_model.py | PASS，169项状态/身份隔离 | 真机PM/Profile授权和所有OEM REMOVE都正确 |
| T08 | tools/tests/stability/test_uninstall_executor.py | PASS，有限Smali解释器检查行隔离/两阶段队列 | 完整Android DB/GL/Folder/Timeline执行 |
| T09 | tools/tests/stability/test_download.py | PASS，5种逻辑条件 | 真机下载/替换/广播权限全路径 |
| T10 | tools/tests/settings_session/run_tests.py | PASS，33项会话检查 | 所有ROM真实task/window/导航行为 |
| T11 | tools/tests/settings_session/test_bottom_gesture.py | PASS，71项触摸边界 | 任意设备底部手势/窗口CANCEL送达 |
| T12 | tools/tests/backup_preferences/run_tests.py | PASS，21项portable pref检查 | 完整archive/DB/图标/回滚durability；F02–04缺失 |
| T13 | tools/tests/icon_preview/run_tests.py | PASS，32项queue/session/key检查 | native峰值、所有screen生命周期与最终UI无闪烁 |
| T14 | tools/tests/icon_shadow/run_tests.py | PASS，58+24检查 | 全主题/分辨率/动态图标切换真机视觉 |
| T15 | tools/tests/icon_shadow/test_theme_handoff.py | PASS，44项主题阴影/交接检查 | 四指连续theme、transparent override端到端 |
| T16 | tools/tests/icon_illumination/test_sensor_fallback.py | PASS，57项注册失败/备用sensor/thread bookkeeping | H/Ra/Qa生产Smali并发、真实Sensor频率/GL投影、F09 |

其他工具现存但本轮没有为获得“更多PASS”而盲跑：`verify_icon_contract.py`需要实际runtime日志；`verify_issue11_layout.py`/issue11 fixture需要对应设备/场景；`icon_illumination/run_probes.py`、OriginalShadowProbe、ProjectionGpuProbe需要部署；launcher-model-fixture含升级变体需实际安装。没有把这些未执行工具列为PASS。

标准 `build.bat` 完成，exit0。输出保存在 `build/full-audit-20261002/build.log`。最终APK经badging、manifest xmltree、签名、zipalign检查：

- package `com.smartisanos.launcher`；versionName `v1.5.8`、versionCode33；minSDK23、targetSDK28、compileSDK36。
- APK v1/v2/v3签名通过；`zipalign -c -P 16 4`通过。
- 最终二进制Manifest包含LauncherAlias、SmartisanBadgeListenerService、`:reload` ReloadTransitionActivity，以及INTERNET/定位相关权限。文本Manifest存在并不替代此验证。
- signed APK SHA-256：`CE3721F00B7D62DEB6783550CAEAAA6BAFD8B3DFDB9CDD963B0F0E07C50B2CB7`。
- 独立内存SQLite页分配fixture得到1000→1001且999空槽；不冒充Android importer执行。

### COVERAGE_GAP_MATRIX

| 高风险领域 | 已有自动覆盖 | 缺口/建议最小测试 |
|---|---|---|
| 系统Package删除 | YES，T05/T07/T08 | PM UNKNOWN、profile silent/locked已逻辑覆盖；仍需真实broadcast+DB+Scene |
| 分身隔离 | YES，item/commit/search层 | 加Intent目标捕获断言；clone-only新Item恢复保留；不能只测callback |
| Unlock | YES，T03 | 真机默认/compat、HOME/app-return/锁屏，每档refresh录像与generation日志 |
| Icon contract | YES，T01/T13–15 | static/live实际world rect与Alpha golden；source换图/主题跨cache |
| QuickSearch | 部分，T04 | T9/IME/联系人权限/Query销毁、多用户点击启动 |
| Navigation/status | settings session部分 | 实际各Window flags/Insets/appearance；loading强制规则/IME与theme |
| QD gesture/负一屏 | 没有完整自动回归 | 小范围状态序列fixture：DOWN→reveal→多指/CANCEL/Stop→再次横滑；然后设备 |
| Reload | Owner/token文档与间接测试 | 旧PID退出/first-frame状态fixture；apply失败与Loading同步阻塞 |
| 完整Backup/Restore | 偏好YES，完整NO | SQLite1000slots、clone-preserved、pending幂等、journal失败+各阶段中断 |
| Illumination | 注册回退YES，GPU probe已有 | MASKS磁盘失效fixture；Sensor→GL snapshot/epoch；设备频率与帧预算 |

下一轮新增测试应针对实际不变量和失败条件，不复制实现写同样的if。优先三个数据/身份负例：F01系统Intent profile、F02空槽分配、F03clone-only保留；随后F04journal失败、F14snapshot失败。无需新建庞大测试框架。

### 推荐统一架构扫描（本轮未新增）

建议第二轮在现有tools目录新增一个窄的 `tools/audit_architecture_regressions.py`，按生产路径做allowlist，输出文件/方法/调用证据，不用字符串黑名单误报全部原始参考。

| 明确禁止模式 | 范围/允许例外 | 验收输出 |
|---|---|---|
| 现代正式删除使用Aa.D/package-level删除 | Model/Event/Install现代决策；旧参考和纯执行器声明不直接报错 | 调用到执行器的上下文，而非方法名存在 |
| 第二PackageState/ProfileState及新的Package/Profile事实Owner | 正式Java生产；测试stub/clean参考排除 | 唯一class/enum定义列表 |
| Component/User/itemId缺失的系统删除 | commit/executor生产入口 | request字段及执行前重读保护 |
| IconVisualMetrics外新建最终倍率/尺寸Owner | exclude原FolderMode8合同/纯preview targetPx | 检查语义owner，不能封禁所有乘法 |
| 第二静态Composer/raw direct final texture | source到final纹理生产入口；Active内容/原特殊renderer有明确例外 | 调用图与白名单定位 |
| Scene/View根据PM为空永久删库 | 系统删除业务路径 | DB写与未知状态分支证据 |
| 同一Window每帧无条件SystemUI重写 | 区分强制Loading/不同Window | owner/window/frame关联，不以32处调用全失败 |
| Restore安装事实布尔旁路与日志false忽略 | restore/pending路径 | F03/F04最小规则先落地 |

脚本不能替代动态反射、ROM任务栈和GL视觉验证。目标是提前阻止明确架构违例，不生成大量无法解释的告警。

## 13. 三个优先榜单

### A. 最危险的10项潜在故障

按可能用户损失和覆盖缺口排序，不把潜在后果冒充已经发生。

| 排名 | ID/故障 | 证据状态 | 下一步最小确认 |
|---:|---|---|---|
| 1 | F04恢复日志不持久仍继续 | CONFIRMED协议缺口 | AtomicFile失败及阶段中断后重进恢复 |
| 2 | F03恢复丢clone-only新Item | CONFIRMED条件逻辑 | 主无包/分身有包+旧备份缺Item的完整fixture |
| 3 | F01卸载系统目标丢profile | CONFIRMED结构，OEM结果未知 | Intent目标与实际主/分身安装状态 |
| 4 | F02待装恢复再扩到1001页槽 | CONFIRMED SQL | Android pending补装→export→restore闭环 |
| 5 | F09Sensor/GL共享vector与stale任务 | SUSPECTED | pause/theme交叠、队列/epoch/分量记录 |
| 6 | F05恢复/撤销堵UI线程 | CONFIRMED线程归属 | 大备份Loading、输入及帧耗时 |
| 7 | F12旧恢复preview回调/Activity保留 | SUSPECTED | 验证中HOME/销毁、新旧session交叠 |
| 8 | F14snapshot失败当无Item | CONFIRMED错误语义 | 生产gate失败注入、重复ADD去重 |
| 9 | F08mask文件失效后false hit | CONFIRMED条件逻辑 | delete八层→same-alpha prepare，实际重装顺序 |
| 10 | F06pending补装阻塞与写入顺序 | CONFIRMED主线程重活 | burst包event、事务/JSON失败后幂等 |

未另造“已确认桌面卡死”来填榜；gesture recovery虽高风险，本轮未发现足以登记为新确认Bug的证据。

### B. 低风险优化资格榜（最多10候选）

本轮只确认 **2项适合窄收口**；没有足够证据宣称10项都低风险。下表将其余有价值候选及尚未满足的条件明确列出，不以优化名义跳过runtime验证。

| 排名 | 候选 | 当前低风险资格 | 条件/收益证据 |
|---:|---|---|---|
| 1 | DUP-01 Host boolean委托Bridge | YES，直接复用已有Owner | 优先级完全相同；四来源/异常测试通过后约删29–35行 |
| 2 | DUP-03同pending JSON AtomicFile字节写入 | YES，窄IO函数 | 保留throw/failWrite协议，不改DB事务；约删10–15行 |
| 3 | F14明确snapshot UNKNOWN，去掉误导空fallback | 异常修复，不能仅称优化 | 要证明正常empty与unknown分开；已有Model内修改 |
| 4 | F07同源mask廉价cache hit | 待profile数据与source revision证明 | 确认减少320KiB arrays及bitmap工作，不引入另一缓存 |
| 5 | F10 QD draw消费已有宿主快照 | 待runtime | 媒体变化/无权限/停止刷新与原视觉必须保持 |
| 6 | F11 QD关闭时延后内容解码 | 待runtime | 首次揭露无空白、attach/feature toggle不破坏 |
| 7 | DUP-08同类内shadow draw-layers小函数 | 待golden视觉 | 不合并static/live anchor或geometry |
| 8 | DUP-09同类纯nav mask计算 | 待跨Window验证 | 不能共享所有Window布局/缓存/颜色策略 |
| 9 | Native旧restart/loading候选撤除 | 待七轴不可达证明 | 当前可删0行；入口休眠不等于整个宿主可删 |
| 10 | F12接已有restore listener/session取消 | 待生命周期测试 | 这是风险修复；不得加新全局manager |

F04、F03、F02涉及恢复安全/数据结构；优先级高，但不包装成“低风险性能优化”。F05迁移线程会改时序，也必须单独验证。

### C. 最值得删除/收口的10处候选

按照DUP表：DUP-01 → DUP-03 → DUP-02 → DUP-05 → DUP-08 → DUP-09 → DUP-10 → DUP-06 → DUP-04 → DUP-07。前两项已有窄收口方向；中间项先补数据/视觉/窗口验证；后三项不能为凑删除行数合并不同状态机或创造万能helper。**没有一个候选在第一轮被删除**。

## 14. 性能基准与第二阶段边界

### BENCHMARK_PLAN（本轮未执行设备场景）

固定同一设备/ROM、APK SHA、数据量、12/20、主题/trans、动态开关、light开关、导航模式和刷新率。区分首次清数据安装、保留数据cold进程启动、warm HOME与repeat-open；未获授权不清数据。每个场景记录至少5次，冷启动单独分首次缓存未建/缓存已建，列中位数和最坏值；不拿不同设备/不同数据库次数相减。

| 场景 | 用户路径/守卫 | 必需指标 |
|---|---|---|
| Cold start | 正常图标、light关闭/开启，QD关闭/开启 | STARTUP阶段、model ready、FIRST_FRAME/FIRST_PRESENT、compose/mask次数与各线程耗时 |
| Warm HOME | 主桌面→微信→HOME，settings嵌套页→HOME→重开 | task/PID/onCreate/onNewIntent/focus、unlock session、first present/输入可用时间 |
| Page scroll | 12/20、单指/四指、上下系统面板后横滑 | p50/p95/p99 frame time、jank、CPU/GL task数、gesture bits |
| Folder open/close | 含Weather/Calendar、分身、多入口Item | open/close帧、stale owner、Geometry/Alpha和DB/Scene条目一致 |
| QD/负一屏 | 开关/首次揭露/连续10次/多指CANCEL/锁屏中断 | capture/readback时长、draw中Binder、settle/cleanup、Bitmap/native/Graphics峰值 |
| Unlock | default/compat、真实screen-off、APP cover返回、各refresh | START/COMMIT/FINISH receipts、每帧dt、录像速度/首尾帧、误触发次数 |
| Theme switch | 普通/aero/trans组合、四指连续往返 | Reload token/PID、纹理存在、状态栏appearance、原阴影/动态交接 |
| Sensor illumination | 静止/旋转、后台/恢复/快速关开/主题重载 | rotation/lux实际Hz、队列depth/latency、per-frame GL成本、暂停后任务数 |
| Search/T9 | 同包主/分身、换icon source、退出输入/销毁 | snapshot/source generation、query/publish/bind时长、错行/旧callback次数 |
| Restore/undo/pending | 1000预置槽、大图归档、clone-only、阶段失败 | UI响应、DB/JSON/journal原子性、回滚可恢复性、事务前后key集合 |

每场景同时采集PSS、Java Heap、Native Heap、Graphics、线程数量/名称、CPU、GC次数/停顿和frame time。SMEngine原生Surface可使系统gfxinfo不完整，需现有SMEngine诊断/trace与录像互证。只看PSS下降或build签名成功不能宣称性能改善。

### 第二阶段建议次序（未授权实施）

1. 先做身份/数据负例与失败注入，确认F01–F04/F14；为恢复事务定义可检查的持久状态。
2. 在既有Profile/Package/Model/Restore Owner内替换旁路，不扩大到Phase3 component lifecycle，不动原版UI/Timeline。
3. 做DUP-01、DUP-03的小收口；每次给出新增/删除/净变化行数与完全相同的读写规则证据。
4. 单独收口光影cache失效与线程交接；同步验证原八层投影和静态/动态交接，不改成通用灯光效果。
5. 用最新设备基准决定F05–F11的调度优化；保留原任务链、状态门和首帧契约。收益没有测量前不大改。
6. 最后处理七轴证明后的dead code；低收益反射/namespace模板可以继续保留，避免为少几十行加新的抽象层。

所有下一阶段修改须围绕单一根因和已有Owner，禁止第二State enum、第二Scene/Reload/cache Manager、固定延迟止血、忽略错误后伪成功，以及顺手重构整Host。

## 15. 交付与改动范围

本轮新增仅本报告 `docs/development/FULL_REGRESSION_STABILITY_AUDIT.md`。生产源码/资源/Manifest/构建脚本/测试脚本未修改，未提交/推送/安装。没有更新项目 `MEMORY.md`、`docs/development/DEVELOPMENT_LOG.md` 或用户全局memory。

允许的标准构建更新了4个已跟踪本地产物：`build/launcher-aligned.apk`、`build/launcher-signed.apk`、`build/launcher-signed.apk.idsig`、`build/launcher-unsigned.apk`。保留原地，不为让Git干净回滚/删除它们。审计扫描、测试输出、manifest和SQLite fixture仅在忽略的 `build/full-audit-20261002/`。

第一轮至此结束。后续修复需以本报告具体ID、补充证据和守卫验收推进，不能把本报告的最小方向当作已经实现或已经真机通过。
