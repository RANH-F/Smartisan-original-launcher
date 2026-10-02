# Smartisan Launcher 现代 Android 应用模型与生命周期重构

> 涉及 Package、Profile、Launcher Model、应用消失、安装/卸载/升级、Scene 或 ActiveIcon 生命周期的任务，开始修改前必须先阅读本文件。本文件是本专项唯一事实源和进度记录；聊天记录不作为阶段依据。

## 定位

Smartisan Launcher Original Port 的主要运行目标是 vivo、OPPO、OnePlus、小米、三星、Pixel/AOSP 和其他现代 Android 设备，而不再是假定存在 Smartisan ROM 私有服务的原始环境。

项目继续保留 Smartisan Launcher 的 UI、SMEngine、动画、交互、视觉、主题、文件夹和动态图标；需要逐步现代化的是 Package、Profile/User、安装/卸载/升级、Shortcut、Launcher Model、数据库同步、Scene 生命周期和 ActiveIcon 生命周期。

目标不是持续给原版逻辑叠加补丁，而是在不破坏上层体验的前提下，用稳定的公共 Android API 替换底层 Smartisan ROM 私有假设。

## 最初问题

OnePlus Android 16 曾出现：`STARTUP_COMPLETE`、`SURFACE_READY`、`FIRST_FRAME` 后，`WeatherView -> ActiveIcon.uq() -> FolderCell.gj() -> FolderIcons.la.gj() -> FolderInfo.O(package)` 返回空 child，随后 `ItemInfo.Oe()` 在 GLThread 抛出 NPE。Calendar 存在同类 stale callback；`UninstallApp/oa.hd()` 也会在 Scene 尚未建立时访问空对象。

Phase 0 随后确认更大的结构性风险：启动扫描可能将“未发现应用”直接解释为永久删除；身份常只使用 `packageName`；DB/Model/Folder/Scene/ActiveIcon 没有统一生命周期边界；多个模块可自行判断 Package 是否存在并直接删除 Model/DB。这是现代 ROM 上应用偶发消失的潜在根因。

## 目标架构

```text
Android System
PackageManager / LauncherApps / UserManager / PackageInstaller / Shortcut APIs
        ↓
PackageEventGateway
        ↓
PackageStateRepository + ProfileRepository
        ↓
LauncherModelRepository
  ├─ ADD / CHANGE / REPLACE / AVAILABLE
  └─ SYSTEM REMOVE REQUEST → RemovalGateway → CONFIRMED / BLOCKED / DEFERRED
        ↓
Legacy Model / DB Executor (Aa, data/A, data/a/l, DatabaseUpdater)
        ↓
Scene / View / ActiveIcon
```

`RemovalGateway` 只处理系统驱动的永久删除许可，不能承担扫描、写库、Scene 删除或 Profile 管理。`Aa`、`data/A`、`data/a/l`、`DatabaseUpdater` 保留 SQL、事务和 Item 操作能力，但仅是底层执行器。

## 不可违反的原则

1. 当前查不到应用不等于应用已卸载。
2. `UNKNOWN`、`TEMPORARILY_UNAVAILABLE`、`PROFILE_UNAVAILABLE`、`PROFILE_LOCKED`、`PROFILE_QUIET`、`REPLACING`、PackageManager/LauncherApps/Binder 异常及不完整启动扫描，均不得永久删除 Item。
3. 系统永久删除只有 `RemovalGateway` 一个决策入口。
4. Package 状态只有 `PackageStateRepository` 一个权威事实源；Profile 状态只有 `ProfileRepository` 一个权威事实源。
5. 系统 Package Event 只经 `PackageEventGateway` 标准化；业务 Model 写入只经 `LauncherModelRepository`。
6. Scene/View/ActiveIcon 只显示或请求操作，不能自行决定永久删除数据库。
7. 从 Phase 2 起执行替换式重构：新入口接管后必须删除或降级旧业务决策，禁止“旧逻辑继续运行 + 新 Compat 层”。

## 当前阶段状态

| Phase | 状态 | 目标 | 结果 |
|---|---|---|---|
| Phase 0 | 完成 | 只读架构审计 | 确认 Package/Profile 身份、启动误删、ActiveIcon stale callback、Uninstall Scene 生命周期、永久删除入口和 Scene/DB 越级写入问题。 |
| Phase 1 | 完成止血；真机未完整 | 启动稳定性与删除止血 | Weather/Calendar stale callback、Folder orphan、`oa.fd/oa.hd` 保护；不确定查询禁止 `Aa.D`；Receiver/Download 部分直删阻断。 |
| Phase 1.5 | 完成 | 架构收口审计 | 确定 Phase 2 采用替换式重构，并定义五个核心职责。 |
| Phase 2A | 完成 | 建立现代事件、状态、删除和 Model 边界 | 建立 `LauncherItemKey`、五个核心组件；系统删除迁移为 PackageStateRepository → RemovalGateway → LauncherModelRepository；删除 InstallManager 旧删除决策。 |
| Phase 2 | IMPLEMENTATION_COMPLETE | 现代 Package / Profile / Model 生命周期替换 | `PackageStateRepository`、`ProfileRepository`、`PackageEventGateway`、`LauncherModelRepository`、`RemovalGateway` 与 `LauncherItemKey` 已冻结为正式架构；未进入 Phase 3，等待用户确认。 |

### Phase 2A 代码规模

新增约 +408，删除约 -181，净增约 +227。新增用于建立运行期 identity、状态事实、事件边界和唯一系统删除决策；删除的是 InstallManager 内重复的 Package 判断和正式删除决策。

## 当前阻塞项 / 下一步

Phase 2 已完成实现收口；禁止进入 Phase 3，等待用户确认。核心 Package/Profile/Model 生命周期实现和 vivo 运行核心链已经完成；剩余仅为跨设备/人工场景验证和未来 Component lifecycle 专项。

启动 reconcile 的正式逐 Item 链为：`A.Ke` → `LauncherModelRepository.reconcileStartupFromLegacyDb()`；`A.v` → `reconcileStartupItems()`。Repository 以 `userSerial + packageName + componentName` 生成 key，只有 `REMOVED_CONFIRMED` 才提交 `RemovalGateway`；旧 package-list snapshot 删除体不再运行。

**本轮完成：主用户系统删除粒度静态安全门 PASS。** `commitRemove(RemovalRequest)` 现携带 `itemId + userSerial + legacyUserId + packageName + componentName + itemType`，每次执行前通过 `Aa.nc()` 重读当前 `Aa.fi` 模型快照并逐字段校验；缺条目、身份不匹配或执行器异常均只记录并保留。通过后仅调用原版 `Aa.a(ItemInfo)`，其单元素 `DatabaseUpdater` 路径是现有 item-level 执行器；现代 Java 运行路径不再调用 `Aa.D(packageName)` 或 profile package-level 删除回调。

Package REMOVE 已不再把 package 当作删除对象：`LauncherModelRepository.commitPackageRemovals()` 从当前 `Aa.fi` 快照枚举同 `packageName + legacyUserId` 的条目，为每个 `itemType == 0` 的普通应用建立独立 `RemovalRequest` 并再次经过 `RemovalGateway`。QuickLaunch、shortcut、folder、placeholder 及其他特殊 type 只记录 `REMOVE_SKIP_SPECIAL`，不得由系统 package event 删除。

2026-10-02 系统卸载动画兼容修复：系统确认框返回时，`finishSystemUninstall()` 仅对本次普通应用条目通过既有 Package/Profile 事实源和 RemovalGateway 补查；确认移除仍交给同一 `commitRemove → Aa.a(ItemInfo)` 执行器，未知／暂不可用不删除。已提交移除保留原回收站动画；未确认移除走原版 GL 取消回位事件。Sc 的回收站匹配由包名／组件字符串改为数据库条目 ID，避免同组件分身触发另一图标的动画；快捷方式与特殊类型保留原路径。补齐同一执行器的底层边界：A.q 的普通应用分支只删除已确认行，不按包扩展至其他入口、分身或快捷方式；逐条目 GL 任务等待原卸载两阶段完成后，由 Qc/Pc 继续现有队列，避免 forceFinish 截断。data/w 优先级同时使用确切条目 ID。这是当前卸载缺陷修复，不进入 Phase 3。生产模型 169 项隔离／状态检查及生产 Smali 行级执行／队列保护检查通过，真机动画验收见 DEVELOPMENT_LOG 最新记录。

静态隔离证明（尚非真机验证）：

```text
serial=100 / com.test / ActivityA / itemId=101  -> request(101) -> Aa.nc()[101] -> Aa.a(item101)
serial=100 / com.test / ActivityB / itemId=102  -> unchanged
serial=200 / com.test / ActivityA / itemId=201  -> unchanged
folder child itemId=101                         -> 同一 Aa.fi item-level executor；不枚举/删除 FolderInfo
```

因此 item 101 的 request 无法匹配或调用 102、201；任一映射变化会触发 `[MODEL][REMOVE_IDENTITY_MISMATCH]` 或 `[MODEL][REMOVE_NO_ITEM]` 并阻断。该证明覆盖运行路径的键/调用隔离，数据库、Scene、ActiveIcon 与 folder 的实际行为仍须后续受控模拟或真机验证。

仍须以真机和事件模拟验证该链：

```text
DB Item → LauncherItemKey → ProfileRepository → PackageStateRepository
       → RemovalRequest → RemovalGateway
```

仍待完成：

1. OnePlus Android 16、OPPO Android 12、Cross Profile Quiet/Locked 与其他跨设备矩阵均为环境验证 Gate，不影响 Phase 2 实现完成结论。
2. REPLACE 精确 `itemId/page/cell/folder` 可见位置与 Folder 最终视觉规则属于补充环境验证；不改变当前保守 retain 策略。

## 临时实现与待删除技术债

| 项目 | 来源 | 临时原因 | 最终替代 | 状态 |
|---|---|---|---|---|
| `snapshotTrusted` | Phase 1 | 启动误删止血 | PackageStateRepository + 逐 Item reconcile | REMOVED in Phase 2B |
| `LauncherLifecycleCompatBridge` | Phase 1 | 生命周期/诊断止血 | Model 与具体 owner 的职责 | REMOVED in Phase 2B |
| Weather/Calendar 缺失 owner 防线 | Phase 1 | 防止 stale callback NPE | ActiveIconLifecycleOwner + ModelGeneration | 保留，后续阶段整合 |
| 启动 legacy delete deferred | Phase 2B | 旧扫描缺少稳定 Item identity | 完整逐 Item startup reconcile | REMOVED in Phase 2B |

以后任何临时 workaround 都必须登记来源、原因、替代者和删除阶段。

## 已淘汰旧运行路径

| 旧路径 | 状态 | 替代 |
|---|---|---|
| `SmartisanInstallManager.packagePresence()` | REMOVED | PackageStateRepository |
| `SmartisanInstallManager.removeConfirmedInstalledApp()` | REMOVED | LauncherModelRepository + RemovalGateway |
| `SmartisanInstallManager.notifyOriginalPackageRemoved()` | REMOVED | LauncherModelRepository 底层执行 |
| `LauncherModelRepository.commitRemove() -> Aa.D(packageName)` | REMOVED | `RemovalRequest` identity check → `Aa.nc()` re-read → `Aa.a(ItemInfo)` |
| `LauncherLifecycleCompatBridge` | REMOVED | Model/owner 具体职责 |
| `A.Ke` package-list snapshot 删除决策 | REMOVED / UNREACHABLE | LauncherModelRepository 逐 Item reconcile |
| Package pending event 按 packageName/userId 合并 | REMOVED | userSerial + packageName + eventType + componentName EventKey |
| Scene 直接 `Aa.a(ItemInfo)` | MIGRATED / BLOCKED | 用户 Workspace 进入 LauncherModelRepository；不确定系统包查询保留 Item |

## Phase 2 正式架构冻结

以下六个组件是当前 Package / Profile / Model 生命周期的唯一正式架构，后续不得新建并行事实源、Gateway、CompatBridge 或第二状态枚举：

- `PackageStateRepository`：唯一 Package 状态事实源。
- `ProfileRepository`：唯一 Profile 状态事实源与 legacy user / serial 转换入口。
- `PackageEventGateway`：唯一系统 Package Event 标准化入口。
- `LauncherModelRepository`：唯一业务 Model 写入与系统删除执行入口。
- `RemovalGateway`：唯一系统驱动永久删除许可入口。
- `LauncherItemKey`：`userSerial + packageName + componentName` 的正式身份键。

未来 Component lifecycle 专项只处理：update 新增 Launcher Activity、update 删除 Launcher Activity、component rename/migration、stale component cleanup。它们不得重新混入 Package REMOVE，也不得把 component 解析失败映射为 `REMOVED_CONFIRMED`。

## 不得回归的架构规则

- 禁止 Scene、Receiver 或 SmartisanInstallManager 重新直接 `Aa.D`。
- 禁止 SmartisanInstallManager 再成为 Package 存在性事实源。
- 禁止第二套 PackageState 或 ProfileState，禁止 packageName 单独作为跨 Profile identity。
- 禁止 `UNKNOWN -> delete`、`PACKAGE_REPLACING -> delete`、Profile quiet/locked -> delete。
- 禁止再次建立类似 `LauncherLifecycleCompatBridge` 的第二状态中心。

## 重构代码规模

| 阶段 | 新增 | 删除 | 净变化 | 说明 |
|---|---:|---:|---:|---|
| Phase 1 | 待补 | 待补 | 待补 | 启动稳定性止血 |
| Phase 1.5 | 0 | 0 | 0 | 只读架构审计 |
| Phase 2A | +408 | -181 | +227 | 建立五个现代 Model 组件并迁移首条删除链 |
| Phase 2B | 完成 | 完成 | 完成 | 收口剩余旧业务入口；不伪造最终累计代码行数 |

关注点是旧业务入口数量下降，不是机械追求净负代码。

### Phase 2B 本轮：item/key 系统删除执行器收口

> 以下为当阶段历史状态，当前最终状态见顶部 Phase 2 Completion Gate。

- 完成内容：启动 reconcile 与 Package REMOVE 均改为逐 `itemId` 消费当前 Model item；`commitRemove` 在调用执行器前校验 itemId、serial、legacy user、package、component 和 itemType，成功日志为 `[MODEL][REMOVE_COMMIT] itemId=... key=... executor=ITEM_LEVEL`。
- 替代旧路径：主用户 `Aa.D(packageName)`、profile package-level callback 及 SmartisanInstallManager 的一次 package 删除提交均已退出现代系统删除运行链。
- 新增代码量：约 +88 行（identity carrying、当前 Model snapshot 枚举和验证日志）。删除代码量：约 -22 行（package-level `commitRemove` 分支及 package-only removal request）。
- 当前仍存在的重复路径：原版 `Aa.D(String)` 仍保留给未迁移的原版内部调用，**不在**现代 Package/Model 系统删除路径；`Aa.a(ItemInfo)` 同时服务用户工作区删除与经 RemovalGateway 许可的系统删除，二者职责不同且均经 LauncherModelRepository。
- 验证结果：`build.bat` PASS；APK `v1.5.6 (31)`；v1/v2/v3 签名 PASS；源码静态检索确认 modern `model/` 与 `install/` 无 `Aa.D` / `getMethod("D")`。未执行设备安装、卸载、REMOVE、REPLACE 或真机场景。
- 风险：`Aa.a(ItemInfo)` 的真实 DB/Folder/Scene/ActiveIcon 联动、同包多 User、Quiet/Locked/Unavailable、幂等和 REPLACE 保留性仍是 NOT TESTED；本轮按范围停止，不进入这些子项或 Phase 3。

## 验证状态

| 设备 / 项目 | 状态 | 说明 |
|---|---|---|
| OnePlus Android 16 | VALIDATION_ENVIRONMENT_PENDING | 原始故障设备回归 Gate；当前不在线，不能伪造 PASS。 |
| vivo Android 16 | RUNTIME_CORE_PASS | V2458A / Android 16：startup ×20、普通桌面 Weather/Calendar、真实 Fixture ADD/REPLACE/stale/uninstall、同包多 Component 与分身 User 999 核心链均已通过。 |
| OPPO Android 12 | VALIDATION_ENVIRONMENT_PENDING | 待回归。 |
| Smartisan Android 10 | NOT TESTED | 有条件回归。 |
| 构建、v1/v2/v3、aapt2 | PASS | 当前工作树最近构建已通过，版本 v1.5.6 (31)。 |
| 主用户系统删除粒度静态安全门 | PASS（静态） | `commitRemove` 已无 package-wide executor；逐 item `Aa.nc()` identity re-read、普通 app type gate、`RemovalGateway` 复核及 `Aa.a(ItemInfo)` 单项执行器均有静态证据。 |
| 跨设备 startup / 完整设备重启 | VALIDATION_ENVIRONMENT_PENDING | vivo `force-stop → HOME ×20` 已通过；OnePlus/OPPO startup 与任意设备完整 reboot 仍待验证。 |
| vivo fixture 首装 | PASS | A/B 首次 ADD 已由真实 PackageInstaller、LauncherApps、manifest 多来源事件覆盖。 |
| vivo fixture REPLACE retain | PASS | v1→v2 仅 retain，未重复创建、未误删。 |
| vivo fixture 真卸载 | PASS | A/B 均经 REMOVED_CONFIRMED、RemovalGateway 与 item-level executor 独立删除。 |
| 跨设备安装/卸载/REPLACE | VALIDATION_ENVIRONMENT_PENDING | OnePlus、OPPO 等设备尚不可用。 |
| Cross Profile Quiet/Locked | VALIDATION_ENVIRONMENT_PENDING | 不改变真实用户状态；同包不同 User 的 Fixture 隔离已通过。 |
| synthetic ADD×10 / REMOVE×10 | NOT TESTED / NON-BLOCKING | Android 16 protected broadcast 限制；不是 Phase 2 阻塞。 |
| REPLACE 精确 page/cell/folder | VALIDATION_ENVIRONMENT_PENDING | 无法在不干预用户桌面的条件下取得同页可见位置对比。 |
| Folder Weather/Calendar | VALIDATION_ENVIRONMENT_PENDING | 当前自动化无法安全定位 Folder 场景。 |
| vivo Android 16 startup ×20 | PASS | V2458A / Android 16 / v1.5.6 (31)：20/20 force-stop → HOME 回到 Launcher；`STARTUP_COMPLETE=20`、`MODEL_READY=40`、`FATAL/AndroidRuntime=0`、`REMOVE_COMMIT=0`。 |
| startup reconcile（vivo 主用户） | PASS | 20 次启动均记录 `PackageState=PRESENT` 与 `[MODEL][RESTORE]`；当前样本含 Weather/Calendar；无 `REMOVED_CONFIRMED`、`REMOVE_COMMIT` 或启动时应用消失日志。 |
| vivo 普通桌面 Weather/Calendar | PASS | 各 3 轮“打开 → HOME → force-stop Launcher → HOME”；`FATAL=0`、`ItemInfo.Oe=0`、`oa.hd=0`、`REMOVE_COMMIT=0`、`ACTIVEICON/FOLDER` 防线异常=0。 |
| fixture A/B 首次 ADD | PASS | vivo V2458A / Android 16：同 package 的 A/B 各创建一次节点，QuickSearch index `58→60`（added=2），无 REMOVE_COMMIT/FATAL。 |
| fixture REPLACE 不误删 | PASS | v1→v2：`INSTALL_RETAIN_EXISTING`、新增节点=0、索引删除=0、REMOVE_COMMIT=0。itemId/page/cell/folder 保位仍 NOT TESTED。 |
| fixture component stale | PASS | v3-stale 仅解析 B；重启后 A/B 都为 `PRESENT→RESTORE`，REMOVED_CONFIRMED/REMOVE_COMMIT/索引删除/FATAL 均为 0。 |
| fixture 同包多 Component 真卸载 | PASS | A `itemId=88`、B `itemId=89` 各有独立 ITEM_LEVEL REMOVE_COMMIT；索引 `60→58`（removed=2）。 |
| fixture v4-add Component C | PASS（边界确认） | 系统解析 A/B/C；REPLACE 保持 A/B、未自动新增 C，记录 `COMPONENT_DISCOVERY_ON_UPDATE_DEFERRED`，不使用 Package REMOVE 清理 component。 |
| 真实多来源 ADD 幂等 | PASS | 首装同一 A/B 的 PackageInstaller、LauncherApps、manifest 多来源事件最终各创建一次。 |
| 真实多来源 REMOVE 幂等 | PASS | 真卸载 A/B 各 commit 一次，后续回调索引 removed=0。 |
| synthetic ADD×10 / REMOVE×10 | NOT TESTED / NON-BLOCKING | Android 16 阻止 shell 发送受保护 package 广播；未增加生产测试后门。 |
| 同包不同 User | PASS（受控 fixture） | 既有分身 User 999（serial 10）安装/卸载 fixture 与主用户 serial 0 隔离；Profile 删除后 state=TEMPORARILY_UNAVAILABLE，主用户 package 保留、REMOVE_COMMIT=0。 |
| Quiet/Locked/Unavailable | VALIDATION_ENVIRONMENT_PENDING | 不更改真实应用分身状态；已有 User 999 uninstall 覆盖 TEMPORARILY_UNAVAILABLE retain。 |

### Phase 2B 运行时闭环验证（2026-08-14）

> 以下为当阶段历史状态，当前最终状态见顶部 Phase 2 Completion Gate。

- 设备发现：仅 vivo V2458A（Android 16）在线；OnePlus Android 16、OPPO Android 12、Work Profile/第二用户和可恢复测试应用均不可用。
- 安装门：第一次 `adb install -r` 被设备端拒绝；经用户明确授权只重试一次，第二次覆盖安装成功。未清数据、未卸载、未删除数据库，也未触发 Package REMOVE/REPLACE。
- startup ×20：20/20 执行 `force-stop Launcher → HOME` 后回到 `com.smartisanos.launcher/.Launcher`。日志 `LAUNCHER_STARTUP_COMPLETE=20`、`LAUNCH_FIRST_FRAME=20`、`LAUNCH_MODEL_READY=40`、`FATAL/AndroidRuntime=0`、`REMOVE_COMMIT=0`；没有 GLThread crash、`ItemInfo.Oe`、Calendar 同类或 `oa.hd` NPE。
- startup reconcile：主用户当前样本的 PackageState 均为 `PRESENT` 并记录 `[MODEL][RESTORE]`，包括 `com.vivo.weather` 与 `com.bbk.calendar`；无 `REMOVED_CONFIRMED` 和 `REMOVE_COMMIT`。这证明“不存在实际卸载时不删除”的 vivo 主用户启动路径，未覆盖 DB item identity/位置的外部读取。
- Weather/Calendar：普通桌面现有 app 各 3 轮“打开 → HOME → force-stop Launcher → HOME”通过；`FATAL=0`、`ItemInfo.Oe=0`、`oa.hd=0`、`REMOVE_COMMIT=0`、`[ACTIVEICON][STALE_CALLBACK]=0`、`[FOLDER][ORPHAN]=0`。Launcher SurfaceView 没有可安全定位的 Folder accessibility node，故 Folder 内 Weather/Calendar 仍为 NOT TESTED。
- 仍为 NOT TESTED：非删除状态枚举、component stale、ADD×10、REMOVE×10、REPLACE、同包多 Component、多 User/Profile、Quiet/Locked/Unavailable、Folder 删除、`Aa.a(ItemInfo)` 的 DB/Model/Scene 实际副作用、应用消失位置对比、OnePlus 与 OPPO 回归。未以普通主用户或静态结果替代这些条件。
- 保留验证：本轮前的构建、badging、v1/v2/v3 签名与 item-level executor 静态安全门仍为 PASS（静态）；本轮只新增上述 vivo 运行时证据，Phase 2B 仍未完成。

### Phase 2B-C：Launcher Model 独立测试夹具（2026-08-14）

> 以下为当阶段历史状态，当前最终状态见顶部 Phase 2 Completion Gate。

- 夹具：新增 `tools/tests/launcher-model-fixture/`；包名固定为 `com.smartisan.launchertest.fixture`，不被 `build.bat`、`launcher/`、正式 Manifest 或 classes2.dex 引用。独立 `build_fixture.bat` 使用本地 fixture debug key 生成 v1/v2/v3-stale APK，不使用 Launcher 签名或私有权限。
- 变体静态验证：v1（versionCode 1）与 v2（2）各暴露 `LauncherActivityA` / `LauncherActivityB` 两个 `MAIN/LAUNCHER` component；v3-stale（3）仅暴露 B。三个 APK 均通过 v1/v2/v3 签名验证。
- 设备门：vivo V2458A 上 fixture v1 的首次安装被设备端拒绝，结果 `INSTALL_FAILED_ABORTED: User rejected permissions`；该次失败后未继续生命周期测试。后续安装重试和结果见下一条；全程未安装旧夹具、未进行非 fixture 卸载或 Launcher 数据操作。
- 安装重试：经用户明确授权，fixture v1 已成功安装；系统确认 package versionCode 1 且 A/B 两个 Launcher Activity 都存在。PackageEventGateway 实际收到 installer、LauncherApps、manifest 三类 ADDED，原版新增链记录 A/B 各一次 `INSTALL_NEW_NODE_CREATED`，QuickSearch index `58 → 60`（added=2），`REMOVE_COMMIT=0`、FATAL=0。私有 DB 因 Launcher 非 debuggable，`run-as` 被系统拒绝，未绕过沙箱读取 itemId/位置。
- ADD×10 注入门：尝试仅对已安装 fixture 发送十次标准 `PACKAGE_ADDED`，Android 16 将其作为受保护广播拒绝（`Permission Denial: not allowed to send broadcast`）；十次均未到达 Launcher，新增节点=0、`REMOVE_COMMIT=0`、FATAL=0。未以十次重装替代，故 ADD×10 仍为 NOT TESTED。
- REPLACE/stale 首次结果：v1→v2→v3-stale 初测发现 v3 期间 QuickSearch index `60 → 58 → 59`；虽然 `REMOVE_COMMIT=0`，但这表明 late `PACKAGE_ADDED` 仍让旧 `Aa.c()` 插入链参与 REPLACE，不能通过 component-stale/保位验收。
- 根因与替换：`PackageInstaller` 在 REPLACED 后发出的 `ADDED(replacing=false)` 被 `isTrueNewInstall()` 无条件判为新安装，`attemptOriginalPackageAdd()` 也无条件调用 `Aa.c()`。现有 `SmartisanInstallManager` 已改为以 `PackageInfo.firstInstallTime == lastUpdateTime` 识别首装，且只允许真正首装调用 `Aa.c()`；REPLACE、CHANGED 和 late ADDED 改为 `INSTALL_RETAIN_EXISTING`。新增约 +15 行，删除约 -4 行；没有新 Repository/Gateway/CompatBridge/State。
- REPLACE/stale 回归：重新首装 v1 后，v2 覆盖升级没有新增节点、没有索引删除、`REMOVE_COMMIT=0`；v3-stale 系统仅解析 B，强杀后启动 reconcile 仍将保留 A/B 分别记录为 `PRESENT → RESTORE`，且 `REMOVED_CONFIRMED=0`、`REMOVE_COMMIT=0`、索引删除=0、FATAL=0。因此 component stale 不误删为 PASS；`itemId/page/cell/folder` 保位因未获取受保护 DB 的位置记录，仍为 NOT TESTED。
- 真卸载：在上述干净 A/B 基线执行 fixture 卸载，PackageState=REMOVED_CONFIRMED，A `itemId=88` 与 B `itemId=89` 各经一次 RemovalGateway，分别产生 `[MODEL][REMOVE_COMMIT] ... executor=ITEM_LEVEL`。QuickSearch index `60 → 58`（removed=2），后续重复系统回调为 removed=0；identity mismatch=0、executor failed=0、FATAL/GLThread NPE=0。此为同 package / 同 user / 双 component 的真实 item-level 删除 PASS。
- 副作用边界：Launcher 非 debuggable，无法合法读取 `table_iteminfos`、`table_icons.owner`、Aa.fi 或 FolderInfo 私有数据；未绕过沙箱。真实日志已证明两条 model commit 与 Scene/Search index 删除，但 DB owner、Folder contents、精确 cell 与 Scene 像素级检查仍为 NOT TESTED。
- 状态：fixture 独立性、三变体构建、首次 A/B ADD、REPLACE 不误删、component stale 不误删与双 component 真卸载均为 PASS；ADD×10、完整位置保留、REMOVE×10、Folder/DB owner 副作用与多 User 仍为 NOT TESTED。

### Phase 2B-D：最终语义收口与 Completion Gate（2026-08-14）

- `isTrueNewInstall()`：`firstInstallTime == lastUpdateTime` 不再是唯一事实。调用 `Aa.c()` 前必须同时满足 `PACKAGE_ADDED`、非 replacing、稳定 userSerial 与当前 Profile identity 一致、Profile=AVAILABLE、PackageStateRepository=PRESENT、LauncherModelRepository 当前无同 user/package 的正式普通 application item；时间相等仅为最后辅助证据。旧 InstallManager 直接 DB `l.V()` existence 查询已删除，统一改读现有 Model snapshot。
- v4-add：同签名 v4 系统可解析 A/B/C，v1→v4 的 REPLACE 日志只见 `INSTALL_RETAIN_EXISTING`；没有 A/B 重复、没有 REMOVE_COMMIT，C 没有自动加入。结论为 `COMPONENT_DISCOVERY_ON_UPDATE_DEFERRED`：update 新增/删除 Activity、stale component cleanup/migration 是后续独立 Component lifecycle reconcile 技术债，绝不经 Package REMOVED 处理。
- stale component 语义：Package=PRESENT 不证明旧 component 仍可解析；Phase 2 保守保留 stale component，只有整个 package 的 `REMOVED_CONFIRMED` 才可进入 RemovalGateway。 
- Profile 业务入口审计：`queryLauncherActivitiesWithProfiles`、`safeQueryIntentActivitiesForUser`、`queryProfileLauncherActivities` 的生产外部调用者仅为 ProfileRepository；MaintainedLauncherSettingsHost 保留 Android API helper 实现及设置/图标展示查询，不是 Package/Profile 删除事实源。`SOLE_BUSINESS_PROFILE_SOURCE=PASS`。
- Package/删除审计：所有现代系统永久删除均由 PackageEventGateway → PackageStateRepository → LauncherModelRepository → RemovalGateway → `Aa.a(ItemInfo)` item-level executor；modern `model/` 与 `install/` 无 `Aa.D`。Settings/图标/标签/启动可保留 PackageManager 查询，但无一处以该结果直接永久删除。Scene/View/Installer/Receiver 均无现代系统删除决策旁路。`PACKAGE_STATE_SOLE_REMOVAL_SOURCE=PASS`、`REMOVAL_GATEWAY_SOLE_SYSTEM_DELETE=PASS`。
- 分身 User 999：设备实际 `serial=10`、RUNNING_UNLOCKED。fixture 只装入该 profile 后收到 user=999/serial=10 的事件；卸载该 profile 后 PackageState=`TEMPORARILY_UNAVAILABLE`、REMOVE_COMMIT=0，主用户 fixture package 仍在。Quiet/Locked 未触碰用户真实分身，保留环境验证。
- REPLACE 位置与 Folder：用户已将 A/B 放入测试 Folder；v1→v2 只记录 retain、无新节点或删除。随后真实卸载的 A `itemId=95`、B `itemId=96` 各只产生一次 ITEM_LEVEL REMOVE_COMMIT，后续 callback removed=0，FATAL/GLThread/FolderInfo.Oe/ItemInfo.Oe/oa.hd/FOLDER ORPHAN=0。Launcher 强杀重启会跳到另一桌面页，前后截图不能作为精确 page/cell 或 Folder 最终单项/空 Folder 视觉规则证据；该可见性验证仍为 `VALIDATION_ENVIRONMENT_PENDING`。私有 DB/owner 仍因非 debuggable 沙箱不可读，未绕过。
- 幂等：真实首次 ADD 的 installer/LauncherApps/manifest 多来源事件最终 A/B 各新增一次；真实卸载 A/B 各 commit 一次，后续 callback removed=0。synthetic ADD×10/REMOVE×10 保留 `NOT TESTED / NON-BLOCKING`，Android 16 protected broadcast 与禁止生产后门不是实现缺口。
- Completion Gate：架构/功能硬 Gate 均 PASS，Phase 2 状态为 `PHASE_2_IMPLEMENTATION_COMPLETE / CROSS_DEVICE_VALIDATION_PENDING`。未进入 Phase 3；OnePlus Android 16 原始故障回归、OPPO Android 12、Quiet/Locked、手动 Folder、Folder Weather/Calendar 及 REPLACE 精确保位属于 `VALIDATION_ENVIRONMENT_PENDING`，不得表述为 OnePlus 已修复或全兼容通过。
- 本轮代码量：生产约 +47 / -20（首次安装 gate 与旧 DB existence path 替换）；fixture 约 +25 / -2（v4-add 测试资源）；未新增 Repository、Gateway、CompatBridge、Manager、State 或 Model 层。当前保留的重复路径仅是 Settings Host 的 API helper 实现，业务语义已只从 ProfileRepository 进入。

所有后续验证使用 `PASS`、`FAIL` 或 `NOT TESTED`，并记录设备、Android 版本、构建版本和日志证据。
