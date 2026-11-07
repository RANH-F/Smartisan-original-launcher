# 自适应刷新率：2026-11-04工作区审计

## 结论和范围

本报告落实用户提供的自适应刷新率任务书第一阶段。生产代码不变，不新增控制器、Service、权限、帧回调或厂商请求。请求入口和主动画时钟已定位；完整动画活动状态及异常退出的聚合契约尚未闭环，不据此直接进入全量控制器改造。

本地HEAD为`4e17104866db1c46eb5864462668ef16f31ff747`，但工作区有大量已有暂存／未暂存修改，本报告以实际文件为准。既有改动不归入本次工作。原版主APK当前缺失，使用现存clean／clean_raw作历史参考，不声称本次重新对照原始APK。

设备只读检查：X21A和模拟器在线，X200s不在线。本次没有安装、输入、切换设置或向设备提交刷新率请求。不能使用其他设备替代X200s的OriginOS17验证。

## 现有请求入口

| 文件／方法 | 实际行为 | 缺口／约束 |
|---|---|---|
| `LauncherSettingBridge.applyLauncherSurfaceRefresh` | API30+，取SurfaceView当前Display，枚举同物理分辨率最高模式；API30两参数DEFAULT，API31+三参数DEFAULT／ONLY_IF_SEAMLESS；先同步Activity Window偏好 | 不是按交互活动状态申请；无0f释放入口。每次调用均可重新提交Surface请求，不是每帧调用 |
| `LauncherSettingBridge.applyLauncherWindowRefresh` | 取peekDecorView所属Display，设置同分辨率最高preferredRefreshRate；相同数值不重复setAttributes；已有preferredDisplayModeId时保留其他Owner | 无空闲／后台恢复0偏好；不能只释放Surface并遗留Window偏好 |
| `SMGLSurfaceView.surfaceChanged` | 调用父类及既有HOME兼容通知后申请Surface刷新率 | Surface重建后通常由尺寸回调恢复；surfaceCreated本身不申请，不能写成每个创建回调都已覆盖 |
| `SMGLSurfaceView.onWindowVisibilityChanged` | 仅VISIBLE重新申请 | 不可见、onPause、surfaceDestroyed、detach没有对应的刷新率释放调用；已有HOME通知不能误当刷新率释放 |
| `MaintainedLauncherSettingsHost.applyLauncherNavigationBarSetting` | 共用设置／搜索／Launcher窗口入口调用Window申请 | 范围超出GL主页；未来统一Owner时要明确这些窗口是否保留独立偏好 |

对`launcher/`全部Java和Smali检索：公开Surface请求和Window偏好写入集中在上述Bridge；未找到生产`setRequestedFrameRate`、`setFrameContentVelocity`、Window TouchBoost／PowerSavingsBalanced显式设置，或`AnimationFrameRateController`／`frameIntervalEma`。这不代表系统没有默认TouchBoost，既有真机Window证据已显示其为true。

当前能力检测没有90／144／165固定上限，且已使用View所属Display。无需重新实现Display枚举。没有持续DisplayListener处理同Surface下的模式／Display迁移；未来需要按生命周期补齐，不能靠新增轮询。

## 渲染及动画时钟

- `J.K(II)`与`J.b(View,II)`初始化Renderer后使用`setRenderMode(0)`，即RENDERMODE_WHEN_DIRTY；不是应直接替换为另一个Choreographer循环的独立游戏引擎。
- `vc.onDrawFrame`调用`Eb.update()`，后者经`Ra.T(float)`推进原引擎。`Ra.wt()`调用GLSurfaceView.requestRender，现有动画／事件路径会继续请求绘制。
- `Eb.update()`使用uptimeMillis实测时间差，恢复首帧为0，后续以`min(deltaMs,100) * fx * 0.06f`推进；按住指针时另有既有保护。不存在任务书预设的60／90／120／144档位EMA时钟。
- 文件夹打开／关闭活动由`view/b/t.Zr()`／`Yr()`识别；活动期间Bridge的`folderAnimationFrameDelta`按`originalFrameDelta * 60 / displayRate`换算，且保留100ms等效上限。`Ra.T`还处理同一tick内新建文件夹的首帧换算。其Display来源仍是getDefaultDisplay，不应混同于已采用View Display的能力检测。
- `smengine/d.1.smali`才是小写`d`的AnimationManager，`d.smali`实际是大写`D`的PageRenderTarget；同理`p.1.smali`为小写`p`事件管理器，`p.smali`是大写`P`的SMGLES20。Windows导出文件名不能按字母猜类。
- AnimationManager.update检查原Tween列表及FC活动列表，并继续requestRender；不能把“某次requestRender发生”直接等同“有用户可感知动画”。暂停、结束、取消、重复动画及事件队列的整体活动语义仍需在实现前明确。当前没有覆盖全部翻页／拖拽／解锁／快捷桌面的统一begin/end计数契约。
- maintained参考的`MainView.update`同样以uptimeMillis时间差和0.06f进入World.runOneFrame；其SMGLSurfaceView／SMRenderer未发现可直接借用的现代公开帧率请求实现。clean的SMGLSurfaceView保留原onPause／onResume父类调用，未提供现代动态请求控制器。

因此不得实施“升级既有AnimationFrameRateController并保留EMA”这一不存在的任务。后续首先保留现有动画时间轴；实测Render FPS仅用于诊断，不能未经证明反馈成新的动画倍率。未对native二进制和所有动画逐项做165Hz运行验证，不把Java／Smali未发现上限写成全引擎高刷验收。

## 已有X200s证据：不重复实验

完整过程保留在`DEVELOPMENT_LOG.md`的2026-11-01合并条目及`build/refresh-upgrade-20261101/`，本报告只引用结论：

- Window／Surface请求120已收到；真实手指和后来自动uinput路径均复现主页触摸90、静止60。
- 系统Perfetto记录`reason:touch`主动选择90，不能只归因为Launcher性能不足。
- preferredDisplayModeId、View请求、AT_LEAST、窗口标题、GL View／RootView语义基类、应用高刷开关对照均未产生获准生产修复；源码及候选已恢复。
- 标题候选已完成自动补验并撤回，上一轮口头评审称其“待设备”不再符合最新记录，本报告更正。
- 普通ADB swipe曾仅得到60；既有uinput已复现90，不再次要求用户手指配合，不把普通注入60当作真实触摸上限。

有效证据入口：`SYSTEM_DECISION_REPORT_ZH.md`、`AT_LEAST_REPORT.md`、`uinput-final-summary.json`、`VIVO_ENGINEERING_REPRO.md`。X200s不在线时不重复构建、签名或安装旧候选。

## RMS离线审查与新验证假设

来源：本地留存X200s的`build/refresh-upgrade-20261101/vivo-services.jar`及其既有apktool解码。JAR SHA256：`59201b0570b056bb955133061b9af600613f220700a73c8405a046419ae2541b`。这是历史设备产物；下次设备在线需核对系统版本／产物身份，不能当作任意vivo版本接口。

本次REA Android检查工具拒绝JAR，报告其只接受独立APK；未改扩展名冒充APK、未安装新工具。以下证据来自直接读取已有Smali，不声称是REA生成的反编译结果。

| 证据位置（位于上述解码目录） | 已确认的静态行为 | 不能据此宣称 |
|---|---|---|
| `smali_classes2/com/vivo/services/rrm/RefreshRateAdjuster.smali:817` | acquire检查handle>0；caller<=0取mMyProc，caller>0查AppManager真实进程；client>0亦检查进程存在；请求键按callerPid与handle组合 | 普通APK一定能调用，或参数被服务接受就一定选120 |
| `smali_classes2/com/vivo/services/rrm/SceneManager.smali:1116`附近 | 请求登记到caller扩展；满足条件时也登记到client扩展 | 系统进程归属可替代Launcher进程死亡回收 |
| 同文件`:1148`及`:3184` | duration>0时系统Handler延迟消息；回调按handle释放请求 | 长动画可以不续期且永不失效，或零duration也会自动超时 |
| `smali/com/android/server/am/RMProcessInfoExtension.smali`的onReset／clearRefreshRateHandles | 进程扩展重置时取登记handle，经clearDeathHandles释放；ProcessInfo.reset会调用onReset | 所有杀进程／冻结／锁屏路径均已动态证明能回收 |

新假设：优先使用Launcher真实PID归属和有限duration，避免直接照搬上游默认caller=0的系统进程长期请求。服务入口、参数序列、flags、优先级、Display范围、普通APK反射限制及清理链仍需确认。`com.vivo.rms.IRM`是接口描述符，不能把它直接当服务注册名；已有上游使用的服务名为`rms`。

上游参考：[vivo-HighRefresh-NoRoot](https://github.com/AndroPlus-org/vivo-HighRefresh-NoRoot)。其默认FixRate机制影响面板选频，本项目不能直接整段移入。当前未复制其代码；未来复制必要实现时保留MIT许可及版权。

有限租期与“只在状态变化调用”有冲突：长时间持续活动可能没有新状态转换，租期会过期。必须先证明进程归属／前后台状态约束可靠，或在现有活动帧路径上仅到租期边界续期；不得悄悄变成逐帧Binder调用、新轮询或无限续期。该设计尚未准入生产。

## 后续最小验证与准入条件

1. X200s在线后先只读核对系统版本、Launcher安装包、智能模式、Display及服务协议；保留当前用户包作为恢复基线，不回装历史e5a093b1覆盖更新的用户改动。
2. 核对RMNative完整事务布局及调用身份限制，再制作独立可撤回诊断候选。第一次请求采用有限duration和真实进程归属；先证明释放／超时，再测高刷，不以caller=0无限期FixRate作为默认回退。
3. 使用既有uinput路线，分开保存系统批准频率、GL提交节奏及SF呈现间隔；至少做正常／候选／恢复正常同条件对照，排除过渡／Popup混合场景。
4. 验证主动释放、超时、离开前台、Surface销毁和进程异常终止；确认其他应用不继承残余请求。若请求作用范围或回收不满足约束，停止接入。
5. 只有获得满足上述约束的有效升频证据，才在现有Bridge入口后收敛一个控制器：MAIN持有Window／Surface生命周期，GL发布原动画活动快照；状态变化时申请／释放，Surface重建增加代际；多个活动使用Owner token聚合，不能由某一动画结束清空所有请求。先补全取消／异常退出契约，不新建替代时钟。

API边界：API23–29复用Window偏好；30用两参数Surface；31+才用三参数seamless；35+View／Window提示需区分View投票和GL Surface；36+具备hasArrSupport／AT_LEAST。ARR能力不等同普通多模式切换能力。保持现有SDK选择和target28，不在本任务附带升级。

## Gate状态和交付边界

| Gate | 状态 |
|---|---|
| 1 现有请求入口审计 | 已定位；全部动画Owner／取消结束聚合仍是实现前置条件 |
| 2 X200s原生请求受控对照 | 既有多个A/B已完成，均未达到目标；不重复同参数实验 |
| 3 RMS机制验证 | [离线协议及有限诊断设计](RMS_GATE3_PROTOCOL_20261104.md)已完成，仅设计准入；普通APK调用、120Hz及可靠回收待验，未制包／未操作真机 |
| 4 实际目标帧率且空闲释放 | 未通过 |
| 5 144／165Hz | 无本次目标设备结果 |
| 6 旧Android／多品牌回归 | 未因本报告新增结果 |

本次仅新增报告、索引和一条合并日志；生产／构建／资源及MEMORY.md不改。不重复既有已通过测试，也不构建相同APK制造“已验证”结论。文档路径和关键源码锚点作离线核对。尚无高刷修复、功耗改善或跨品牌兼容性验收结论。
