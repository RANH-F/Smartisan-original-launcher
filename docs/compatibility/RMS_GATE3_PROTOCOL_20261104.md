# Gate 3：X200s RMS离线协议、诊断设计与恢复准入

## 本轮结论

**离线审查通过“有限、可撤回路径的设计准入”；Gate 3真机验证未通过也未执行，暂不制作诊断APK。** 存在真实进程归属、服务端有限租期、前台／焦点约束和主动释放的静态实现；普通APK是否可取得Binder、请求是否被批准及异常回收时效仍需目标机验证。没有充分证据把这些待验项写成已兼容。

唯一假设：在既有X200s智能模式下，Launcher主进程以自身PID同时作为caller和client，提交**一次8秒、仅限内屏且受前台／焦点约束的120Hz FixRate请求**，可以覆盖已观测的touch90选择；主动释放、失去前台、租期届满或进程死亡能使该请求退出调度。任何部分失败即停止，不变更身份、优先级、flags或无限续期寻求成功。

本轮只做离线文件读取、上游源码核对及文档交付，无ADB调用、安装、设备输入或系统设置修改。生产源码、原APK及全部既有修改保留。未开发SmartisanAdaptiveRefreshController，未扩展144／165Hz逻辑。

## 来源和可复核证据

- 项目基线：[第一阶段审计](ADAPTIVE_REFRESH_AUDIT_20261104.md)。不重复Gate 1／2。
- 本地X200s历史产物：`build/refresh-upgrade-20261101/vivo-services.jar`，SHA256 `59201b0570b056bb955133061b9af600613f220700a73c8405a046419ae2541b`。下文服务端Smali路径均相对此目录下的`vivo-services-decoded/`。
- [静态证据账本](../../build/rms-gate3-20261104/protocol-evidence.json)：保留5个事务分支、关键方法的文本、路径／行号和三个JAR哈希；已核对各事务Parcel字段数量。它验证解码文本，不是Binder执行测试，也不证明SELinux允许访问。使用已有解码，未重新反编译JAR；沿用前次REA仅支持独立APK、拒绝本JAR的已知边界，未伪装文件类型。
- 上游固定版本：[AndroPlus vivo HiHz源码](https://github.com/AndroPlus-org/vivo-HighRefresh-NoRoot/tree/dafa514f118300addcfae3c05a44bb30aadf84f0)，commit `dafa514f118300addcfae3c05a44bb30aadf84f0`。main源码快照与该commit归档中的Rms.java、RmsVote.java、README及LICENSE逐字节比对一致，记录在[上游身份](../../build/rms-gate3-20261104/upstream-pin.json)。仅保存源码参考，不运行其DEX／APK。MIT版权为`Copyright (c) 2026 AndroPlus`；本轮未向项目复制其实现代码。

## 一、Binder协议确认

### 1. 服务和访问边界

`rms/sdk/RMNative.smali`的SERVICE_NAME为`rms`，构造器attachInterface描述符为`com.vivo.rms.IRM`。`rms/RMServer.smali`的publish路径以ServiceManager.addService注册`rms`。描述符不是服务名。

调用链为RMNative.onTransact → RMServer → `smali/com/android/server/RMServerExtension.smali` → RefreshRateAdjuster → SceneManager。**本次核对的acquire／release／getActiveRefreshRate分支及其RMServer／extension包装没有UID权限判断或interface-token校验**；同一服务的其他接口确有权限检查，不能把结论扩大为整个rms服务无访问限制。

协议按原始Parcel直接读字段，不写writeInterfaceToken，不使用通用`service call`拼包。acquire／release采用IBinder.FLAG_ONEWAY；服务端不写reply，也不把内部返回handle／boolean传给调用方。`transact=true`只能说明发送被接受，不能说明请求登记、120Hz批准或释放完成。tx26同步回包先writeNoException，再writeFloat；这个float是面板当前活动频率，不能当GL FPS，也不能列举所有请求。

已有本机Framework的`android/os/ServiceManager.smali`将getService／checkService标为greylist。上游普通APK以反射取得Binder并能工作，这是可行性线索；本机普通Launcher UID的service_manager查找、SELinux Binder访问、运行时非SDK限制和厂商变更，不能只凭JAR证明。任一步被拒绝或返回null时直接停止，不修改隐藏API策略或系统属性、不提权、不伪造系统身份。

### 2. 事务编号和完整布局

以下是**实际wire顺序**。J=writeLong/readLong，S=String，I=int；所有布尔量在wire上也是I。

| 编号 | 本机分支 | 依次读取的数据 | 回包 |
|---|---|---|---|
| 23（旧版） | `:pswitch_12` | J handle；S sceneName；S reason；I fps, priority, duration, caller, client, states, dfps, extra | 无 |
| 24 | `:pswitch_11` | I caller；J handle | 无 |
| 25 | `:pswitch_10` | S name；I priority, powerFirst | exception头＋I结果；本候选禁止创建新scene |
| 26 | `:pswitch_f` | 无 | exception头＋F activeRate |
| 31（V2） | `:pswitch_a` | J handle；S sceneName；S reason；I reqDisplay, reqResolution, reqFps, reqDFps, reqConfigBits, reqStates, priority, duration, caller, client, extraFlags, arg1, arg2 | 无 |
| 32 | `:pswitch_9` | I fps, hop | exception头＋I configBits；不用于修改模式 |
| 36（扩展） | `:pswitch_5` | V2布局后再加I arg3 | 无；本候选不用 |

31的1J＋2S＋13I、36的1J＋2S＋14I、23的1J＋2S＋8I及24的1I＋1J已由账本提取核对。V2在Adjuster内委托扩展重载，arg3补0。**不可把36的arg3布局发给31，或将旧extra位图直接当V2 flags。** 旧23中的dfps只在wire值等于1时转true；extra另行解码为V2配置／私有FPS等位，候选不使用旧版回退。

### 3. 参数归属及限制

| 参数 | 静态确认的含义／处理 | 候选约束 |
|---|---|---|
| handle | Adjuster要求正long；键为`callerApp.mPid + "_" + handle`，不是Binder token／UID | 每个阶段新建正handle，内存仅一个活动请求；提交前记录PID、进程起始身份、handle及期限。不可重用旧handle，以免旧超时消息释放新请求 |
| caller | >0查AppManager.getProcessInfo(pid)，找不到返回-1；<=0用mMyProc，即system_server | 只用Launcher主进程Process.myPid()，不得用shell app_process PID代替，不回退0 |
| client | >0也必须查到ProcessInfo；用于状态检查、前台退出释放、客户端死亡登记 | 同caller真实PID，不能留0。caller／client不是Binder的真实身份认证，也不自动等于前台 |
| duration | DynamicScene继承BaseScene.getDuration，原样保留；createTime用uptimeMillis | 固定8000ms，必须>0；0或负数不触发服务端定时释放，禁止 |
| priority | BaseScene钳制到[-100,100]后加scene基础值；FixRate基础105000 | 唯一值-1，有效104999。它仍是高于常规场景的有限FixRate诊断票，不能说成普通低优先级提示；失败不递增 |
| reqDisplay | SceneManager与PhysicalDisplay.getIdx()比较；-1接受所有 | 必须先证明内屏vendor index；不能把Android逻辑DisplayId无条件当vendor index，不回退-1 |
| reqResolution | -1在BaseScene转0；0留给当前模式选择链 | 固定0，不申请变分辨率；验收记录物理分辨率，变化则停止 |
| reqFps | 目标请求值，仍经场景可用性、模式、配置和系统调度 | 固定120，必须在目标机公开同分辨率能力中存在 |
| reqDFps | 非零可影响目标／vsync节奏 | 固定0，不修改应用帧率节奏 |
| reqConfigBits | 面板配置位；配合flags可覆盖配置 | 固定0，且不设USE_OWN_CONFIG_BITS |
| reqStates | client必须hasStates(mask)；本机实现为全部位同时满足 | 固定0x409=FGACTIVITY(1)＋VISIBLE(8)＋FOCUS(0x400) |
| flags | 见下表；与Binder.FLAG_ONEWAY属于完全不同的字段 | 固定0x10000，仅“离开前台释放” |
| arg1／arg2／arg3 | 特定flags下承载Display token、应用FPS、frame pacing等；扩展arg3仅36提供 | 31的arg1／arg2均0；不用36 |

`SceneManager.acquire`还要求scene存在且reason未被禁用，检查caller扩展handle数量；代码条件为数量>64才拒绝，本候选始终只允许一个。FixRate由DynamicScene构造，继承BaseScene状态与duration逻辑，没有独立豁免。reason必须为本项目专属标识，不伪装系统touch、QQ、VivoHz或其他场景。

### 4. flags明确选择

| 位 | 本机定义／效果 | 本候选 |
|---|---|---|
| 0x1 | USE_OWN_CONFIG_BITS | 不设 |
| 0x2 | USE_PRIVATE_FPS | 不设；120不借私有144／165路径 |
| 0x4 | USE_VSYNC_DFPS | 不设 |
| 0x8 | IGNORE_BRIGHTNESS | 不设，保留亮度相关模式选择 |
| 0x10 | IGNORE_CLIENT_DEATH | 不设；它不等于忽略caller死亡，不能混淆 |
| 0x400 | IGNORE_FOCUS_STATE_IN_MAIN_SCREEN | 不设，不能绕过焦点约束 |
| 0x1000 | VALID_IN_FREEFORM | 不设 |
| 0x10000 | RELEASE_IN_UNFOREGROUND | 设；client前台Activity变false时释放对应handle |
| 0x80000 | RELEASE_IN_FOCUS | 不设；该位是client**获得**焦点时释放，不能误当失去焦点释放 |
| 0x40／0x800及frame-pacing扩展 | 跳过配置／特殊Display／应用FPS等 | 均不设 |

## 二、回收链和不可混同的生命周期

| 事件 | 静态链路 | 动态待验／限制 |
|---|---|---|
| 主动释放 | tx24(callerPid,handle)→Adjuster拼键→SceneManager.remove请求→清caller／client登记→移除定时消息／监听→requestUpdateActiveConfig | oneway无成功确认，必须看具体请求退出及选频轨迹；不能只看函数返回 |
| 租期届满 | createTime=uptimeMillis；duration直接作为Handler.sendMessageDelayed的毫秒延迟；handleMessage取请求handle调用release；选频遍历另检查isTimeout(now) | isTimeout比较为`now-createTime > duration`，Handler及选频调度可能略晚。uptime不计深睡，不能承诺墙钟8秒绝对到期；实验全程保持亮屏，不以深睡测试替代 |
| 进程死亡 | AppManager.removeApp→ProcessInfo.onDied→reset→RMProcessInfoExtension.onReset→clearRefreshRateHandles→Adjuster.clearDeathHandles→releaseHandles；BaseScene.needRemove还检查caller／client.isAlive | 不是依赖App.onDestroy或shutdownHook。系统事件／调度时延、异常杀进程实际回收仍待验；PID复用须靠旧进程身份和新handle防误操作 |
| 离开前台 | SceneManager.onForegroundActivitiesChanged(pid,false)对匹配client且flags含0x10000的请求主动release | 只有真实client且开启该位才存在，caller=自身但client=0不具备；本机完整回调时序待验 |
| 焦点／可见状态丢失 | BaseScene.isValid按client.hasStates全部位判断；注册的状态observer触发重新调度 | **失效不等于立刻删除**，未释放而再获焦点可在租期内重新有效。应用侧必须丢焦点就release并取消arm；后台flag和超时作额外边界 |
| 进程冻结 | 所审BaseScene／SceneManager未发现“冻结即删除全部票”的保证；ProcessInfo.isAlive只检查mAlive及PID，冻结不等于死亡 | 主线程Handler／onPause可能执行不了。依赖系统定时／状态门控／外部清理；不得声称冻结清理已通过，也不以freezeDisplayMode这个显示模式开关冒充进程冻结 |
| Surface销毁／重建 | 本机RMS请求数据没有Surface／SurfaceControl归属；BaseScene的displayToken是特定flag的Display对象，不是Launcher Surface | RMS不会因surfaceDestroyed自动释放。候选需要既有Surface生命周期主动release／取消arm；重建绝不自动重新申请 |
| 锁屏／屏灭 | 可造成client状态变化，但没有从本次静态审查证明“锁屏必同步清票” | 候选客户端取消；系统租期仍为uptime。未知屏灭／冻结路径不依赖应用回调独自兜底 |

有限duration还有一项好处：SceneManager.release中仅在duration==0且其他条件满足时才可能将普通应用请求放入mReleaseRequests保留表；本候选duration>0不走该保留条件。不能把“保留表没有记录”当作整个服务没有其他遗留请求。

死亡链的clearDeathHandles并非同步完成硬件切频：releaseHandles向Adjuster.MainHandler发送what=2，由performReleaseHandles逐键释放，之后还要重新选频。GlobalConfigs注册的IProcessObserver负责前台Activity变更回调；其onProcessDied为空，死亡回收证据来自另一条AppManager.removeApp链，不能混写。registerProcessObserver也有异常捕获分支，故静态存在回调不等于运行时已成功注册。

## 三、先确定恢复与回退

以下是未来执行前必须具备的手段，本轮尚未实现或运行。

1. **先保存基线**：核对系统build／API及三个JAR身份、智能模式、分辨率、Launcher安装包全部split／签名／版本／哈希。保存实际已安装包，不假定根build产物或历史e5a093b1就是当前正常包。不卸载、不清数据、不改HOME／壁纸／权限／主题／布局。
2. **确认票据可观察且无HiHz干扰**：核对现有RMS请求／当前决策原因，以及是否安装、运行vivo HiHz和是否开启重启重申／按应用重申。优先经其自身Release退出并暂停自动重申，记录明确变更。不能盲目释放caller0的900001／900002或其他未知handle。若请求清单受dump门控且其他证据不足以排除活动／潜在HiHz票，**停止，不能仅凭静止60或tx26值认定干净**；不写allow_dump属性绕过门控。
3. **预置只释放工具**：未来先准备只包含tx24和只读tx26的独立shell DEX；只能读取本次本地票据账本中明确的callerPid／handle，不能acquire、不能枚举猜测或清空其他票。release wire caller是被清理请求的键，不是修改执行进程身份。先在无活动请求时验证Binder可达和Parcel发送；这不证明实际释放成功，C阶段才验有效票释放。
4. **记录后才申请**：每个phase先将sessionId、系统／APK哈希、PID＋进程启动身份、handle、8秒期限和固定参数写到主机账本；确认主机清理进程已经就绪，才允许一次显式arm。不要等进程崩溃后才寻找handle。
5. **有限故障边界**：客户端主动release／失焦／onPause／Surface销毁取消均为首层；服务端租期和client状态为第二层；主机在提交后10秒uptime观察窗到达仍不明确时，向唯一已知票发一次release，随后观察。10秒为清理触发点，不是保证10秒内硬件必恢复。没有成功证据就停止，不循环重发acquire。
6. **最终恢复**：先确认票退出且无持续强制选频，再保留数据安装本轮保存的完整原APK集、核对哈希，恢复本轮实际改过的设备设置并注销uinput。若释放失败，禁止再次申请；在已确认本次正常包恢复渠道可用时，使用普通ADB恢复／重启作为最后故障处置，重启后再次检查；不将“重启能清”当作C／D／E／F通过。任一步状态无法可靠恢复则立即停止并明确报出，不继续后续阶段。

诊断APK若未来需要同包覆盖：必须先验证签名一致、数据格式不变、版本可恢复。独立包无法代表Launcher实际主进程的前后台／Surface语义；shell向服务填另一个PID也不构成普通APK自身调用验证。不能为省事采用这两种替代。

## 四、最小诊断候选设计（未制作APK）

候选只在隔离目录生成源文件覆盖层和输出，绝不修改`launcher/`、根build产物或正式签名发布包；不新增Service／Receiver／权限。未来具体覆盖层及构建命令必须先对照当时工作区review，产物与当时原包逐ZIP成员对比。

- 一个诊断类承担有限票的记录／发送／取消，复用既有Launcher设置及生命周期接入。没有第二个动画Owner或渲染循环。
- 默认DISARMED；诊断界面显式“准备一次8秒试验”只设置内存arm。仅当主Launcher resumed＋windowFocus＋有效原Surface满足后消费一次arm发票；返回桌面／冷启动／恢复进程不能自动arm。每阶段需要新的显式动作，没有持久化开关、BOOT重申或自动续期。
- 使用普通APK的ServiceManager反射，获取失败则DISABLED并退出；禁止隐藏API豁免、包名伪装、caller0或服务协议探测式写入。
- 请求唯一固定组合：tx31，scene=`FixRate`，reason=`SmartisanGate3/<session>/<phase>`，reqFps=120，duration=8000，caller=client=Process.myPid()，reqStates=0x409，priority=-1，flags=0x10000，reqResolution／reqDFps／reqConfigBits／arg1／arg2均0。reqDisplay只用经证据确认的内屏vendor index；未确认不提交。
- 状态为DISARMED→ARMED→SUBMITTED→RELEASE_SENT／EXPIRED_UNCONFIRMED→DISARMED或FAILED。不得将SUBMITTED命名为ACTIVE120；必须通过系统证据确认实际生效。未知结果一律清理并FAILED。
- 普通阶段在MAIN以一次有界deadline清理；失焦、pause、stop、Surface销毁、显式释放都取消arm并释放唯一票。生命周期仅调用诊断类，不修改原SMEngine／GL提交／动画时钟。主机预置清理不依赖这些回调。
- **D阶段为显式的超时验证模式**：固定同样的8000参数，但暂不由客户端deadline主动release，客户端也不续期；否则会把App清理误当服务器过期。主机10秒故障清理仍保留；一旦主机清理介入，D判失败或证据不足，不能判自动过期通过。
- F阶段在已记录票后让目标进程异常退出，不能依赖finally／onDestroy主动release；目标进程死亡必须早于租期终点。若只在8秒后恢复，最多证明租期回收，**不算死亡回收通过**。冻结同理不得用force-stop结果代替。

禁止自动更换scene、priority、flags、reqStates、Display范围或重申租期。有限FixRate若仍不能120，则本假设失败；不转用无限FixRate或IGNORE_BRIGHTNESS／PRIVATE_FPS制造结果。

## 五、上游vivo HiHz对照

核对的实际实现为固定commit的`android/app/src/main/java/jp/androplus/vivohz/Rms.java`及根`RmsVote.java`，不是只读README。

可复用的是raw Parcel字段顺序、tx31／24／26及recycle／异常处理模式、区分提交和观察结果的方法。上游APK确以ServiceManager.getService反射取得Binder；CLI用checkService。它提供普通APK调用可行性的外部案例，不证明本机成功。

不能照搬：APK默认caller=0、client=0、duration=0、reqDisplay=-1、FixRate优先级-1、flags=14（私有FPS＋vsyncDFPS＋忽略亮度），票归system_server并跨应用持续存在；固定900001／900002双handle替换及重启重申也不能进入本候选。上游的transact成功后切换handle／释放旧票，没有服务端登记成功确认，本项目不能据此宣称“新票已成功生效”。CLI还可能添加IGNORE_CLIENT_DEATH，且shutdownHook不是可靠异常退出回收保证。

本机SceneManager.acquire可见直接put请求，未从这条路径确认上游注释所说“同handle一定被忽略”；候选不依赖该注释，通过不重用handle规避旧定时消息和先后次序风险。

## 六、唯一受控验收计划与停止判据

前置条件：系统／JAR与协议匹配；普通APK只读Binder调用可用；干扰票已排除；内屏vendor index明确；恢复包和只释放工具就绪；Perfetto能归属到当前Launcher PID／GL线程／准确Surface层。任一不满足，停在PREFLIGHT_FAILED，不提交120请求。

FixRate即使priority=-1也高于常规调度场景，不能宣称它天然保留所有温控／省电决策。本次仅允许正常温度、无省电／热限制的短时对照；出现热限制或面板配置／亮度异常即清理停止，不调整flags去绕过。

使用现有uinput触摸定义和Perfetto采集路线，但不能直接运行旧五轮脚本：其每轮HOME＋3秒等待会耗尽8秒租期，且可能触发生命周期释放。新执行器只复用触摸事件序列，先归位／准备轨迹后显式arm，所有有效触摸和采样必须落在提交后约1–6秒内；不为迁就采样延长租期。

| 阶段 | 一次固定参数实验中的操作 | 明确通过条件／失败即停止 |
|---|---|---|
| A | 原始正常包，智能模式，既有uinput路线 | 前台纯GL主页触摸约90、静止回系统空闲选择；120基线或混合Popup场景说明条件不符，不能归功候选 |
| B | 安装经核对的隔离候选，默认关闭先确认与A一致；显式arm一次 | 系统选频轨迹和当前准确GL层共同支持120；同时记录GL swap／提交节奏。若仅面板120而GL仍90，不算目标达成；无120即清票、恢复并停止 |
| C | 在第一票到期前主动release | 必须在租期之前观察请求退出及回到A的调度行为；tx24发送成功或瞬时Hz变化不单独计通过 |
| D | 明确arm新的同参数票，不调用客户端deadline释放 | 服务端在约8秒uptime到期后清票／重调度，主机10秒兜底未介入；超时处理延迟单独记录，不以墙钟严格8秒断言 |
| E | 新同参数票有效时切换一个原本未被固定120的应用 | 其调度回到自身基线，无本票持续覆盖；另回桌面确认不会自动重新申请。其他应用本来120不能作为泄漏判据，必须结合票归属和其无票基线 |
| F | 新同参数票提交后、租期前终止Launcher目标进程 | 在租期前有进程死亡及票退出的对应证据，未由客户端finally或主机清理造成；不能证明则不准正式集成。最后恢复本轮保存的原APK及设置并核对 |

B／D／E／F是同一假设下验证不同回收机制所需的独立有限票，每票同一参数、不同handle，无续期／扫参。上一票未确认结束不得申请下一票；任一阶段触发停止条件就不做后续票。设备掉线时不继续，只执行已预置主机恢复流程；本轮不运行任何一项。

Perfetto分别报告：系统批准／活动模式；目标GL线程swap起点／完成间隔及dequeue等待；目标Surface实际呈现间隔／FrameTimeline。swap调用节奏不等于已呈现FPS，SF renderRate／开发者Hz也不能替代GL节奏。有效120阶段应接近8.33ms持续节奏并有足量有效帧，排除首次转场／旧层／缓冲覆盖；若轨迹不能获得有效GL证据，结论为证据不足，不用面板Hz补齐。

## 七、三类结论及离线准入清单

**静态已确认**：服务／描述符、23／24／26／31／36布局、相关调用链无方法级UID校验、PID注册及键、duration毫秒／uptime／Handler回收、真实client的全部状态约束、0x10000后台释放、死亡清理链、Surface无自动归属、有限duration不走零时长保留条件。

**动态待验证**：本机普通APK访问Binder／实际登记；120Hz批准与真实GL／呈现；内屏vendor index与实际设备对应；HiHz残留可排除；主动／到期／前台退出／死亡回收的时序与可观察性；冻结／屏灭及服务异常的实际表现。X200s离线，以上没有新增动态PASS。

**明确不可用作本轮方案**：caller<=0长期系统票、duration<=0自动过期承诺、把冻结等同死亡、Surface销毁自动清RMS的假设、client=0却声称受前台约束、把0x80000当失焦释放、无token协议改用service call、仅transact=true认定成功、借其他PID／shell进程代替普通APK自身调用验证，以及提高参数或无限续期掩盖失败。它们有的技术上可调用，但与本轮约束冲突，不代表所有设备上接口必然报错。

本轮交付至此：**允许上述固定有限请求的设计，不允许现在宣称可用或正式集成；诊断制包和真机请求仍受在线preflight阻断。** 若在线无法排除旧票、证实普通APK访问或准备可观测恢复手段，直接停止制作／运行；若B–F任项失败，记录一次明确失败并回退，不开展参数搜索。MEMORY.md不更新；开发日志同日原专项条目合并更新，不追加实验流水。
