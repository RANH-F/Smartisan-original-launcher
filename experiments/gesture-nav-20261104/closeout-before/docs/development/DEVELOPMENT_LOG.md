# 开发与修复记录

当前版本：**1.6.0-T / versionCode 34（测试版）**。正式发布时才改为 **1.6.0**。

## 当前状态

- 已保留：原生批量数组越界修复、按需内存分配、失败纹理单元隔离旧绑定、Shader／Material及普通纹理随EGL代际失效、公共Mesh缓冲代际保护、阴影WX接入EGL重建、普通FBO代际保护与失败清理、深度目标创建／采样有效性准入、EGL重建后的离屏生产者重绘通知、一次性模糊背景原生产者恢复、文件夹动态背景原工厂恢复及缩略图独立生产者／素材失效处理、保留前景纹理恢复与当前动画几何解耦、动态日历清理后位图合成及原阴影来源恢复、文件夹缩略图天气／日历Owner正确分流、自动改进图标的系统别名优先及共享电话／联系人包分流、默认圆框 v14 底板分类／透明图稿保留与原始资源回退、作者整行跳转、桌面自身卸载保护，以及此前已验证的兼容修复。
- 尚未解决：整体冷启动慢、Folder 打开／关闭的可感知停顿、OPPO 手势返回闪回。
- 待定位／补验：其他主题／动画及目标GPU尚未覆盖的EGL恢复矩阵、系统图标跨机来源一致性的目标机验收（时钟X21A受控恢复已通过）、故障 NewBox 双机、iQOO百叶窗及Z8公共翻页串图、vivo S20 Pro手势返回空档、X200s升级后智能模式高刷差异、魅族高刷及完整跨 ROM／长稳矩阵。局部通过不代表整项关闭。
- 下一步顺序及验收条件统一见[专项计划](LAUNCHER_FIX_AND_OPTIMIZATION_PLAN.md)，不在每条记录重复安排“下一项”。

## 记录规则

本页只保留近期合并记录和历史入口。每个日期一节，每个问题按“修改、验证、剩余”记录；同一问题当天直接更新原条目，不追加试验流水。

完整旧日志与旧专项计划已合并到**一份[历史归档](archive/DEVELOPMENT_HISTORY.md)**，保留原始样本、哈希、失败尝试和旧锚点，停止滚动追加。新证据放对应 `build/` 目录，本页只写结论和入口。构建方法、架构合同只有实际变化时才更新，不再复制每日记录。旧记录中的“下一项”不作为当前施工安排。

## 近期记录

### 2026-11-04

#### 自适应刷新率任务书第一阶段：只读审计完成，RMS待X200s验证

- **审计／结论：** 以实际工作区定位Bridge中的Window／Surface请求及两处Surface生命周期调用，当前无交互空闲释放；未找到任务书预设的AnimationFrameRateController／EMA／144Hz固定档位，现有Eb真实时间差和文件夹独立换算必须保留。最新标题／语义基类／uinput候选已补验撤回，更正此前口头评审“标题待测”的旧状态，不重做既有同参数实验。原主APK当前缺失，以clean／clean_raw和maintained作参考，未声称重新核对原包。
- **新机制／边界：** 本地留存X200s服务Smali确认支持真实进程归属登记、duration>0系统定时释放及进程扩展重置清理链；这只是RMS可回收请求的新验证假设，不证明普通Launcher调用可用、实际120Hz或异常退出已验。REA拒绝JAR后直接读取既有解码，没有改名冒充APK或新增工具。后续先核协议和有限租期／进程归属，不照搬caller=0长期FixRate，也不为此新增逐帧请求或轮询。
- **验证／文件／风险：** ADB只读清单仅X21A及模拟器，X200s不在线，未安装／输入／改设置或发厂商请求。新增[第一阶段报告](../compatibility/ADAPTIVE_REFRESH_AUDIT_20261104.md)及索引；生产代码、构建产物、用户已有修改保留，MEMORY.md未改。报告列出后续受控A/B及释放／超时／异常死亡准入条件；完整动画Owner契约、目标机高刷／功耗及跨品牌验收尚未完成，不宣称修复。

#### 主题切换中EGL恢复：候选未通过，已停止实验并恢复设备

- **真实故障：** 用户授权X21A临时主题及诊断包并恢复。第一份稳定场景遍历诊断误读主题拆卸中的空文件夹Owner、自身退出且未执行EGL丢失，该样本作废。修正诊断后，PID21546／scene143909199在原动画active、26个target键时真实context1→2，崩溃栈为t_blur_anim_background缺失。逐步候选后续又分别暴露target主题back1.png及原bx的target图标快照缺失，说明三类源不能用普通asset路径统一恢复；局部解除异常不等于整项修复。
- **撤回：** 最后一份快照保留候选仅构建、未部署。用户指出崩溃后立即停止设备实验并回装直接测试前正常包；theme/t.1.smali完整恢复本批前内容，mymaterial/f.1.smali只撤销本批新增分支，诊断HomeCompat恢复，既有修改保留。未通过候选隔离在build/theme-transition-audit-20261103的candidate-unverified文件，不是当前产品实现。不关闭动画、限制页数或吞异常掩盖缺口。
- **恢复：** 正常1.6.0-T／34安装成功，拉回SHA256与测试前一致：5731f8ee37291f9f93afc905b258536f27c5fc6c4970961c54659ee4e6901f77；短时检查PID24666保持、崩溃缓冲无新增，经典黑首页y90以下与测试前逐像素一致，原Dock及用户时钟＋日历文件夹保留。不清数据、不改壁纸／权限／默认HOME、不操作另一台设备。仅定点清理本批设备请求／日志／录像，原同名文件如存在则还原；崩溃后误录其他应用的本地画面已删除。证据见[正常包恢复](../../build/theme-transition-audit-20261103/emergency-restore-proof.json)与[画面及清理](../../build/theme-transition-audit-20261103/rollback-state-proof.json)。恢复后同工程另一任务新增代码并重建根APK，保留其改动，不再覆盖根产物；不再假定设备与根产物一致。
- **当前状态：** 本项未修复，本轮不再向用户手机安装诊断包；后续先离线统一核对三类源及原清理边界，不继续逐个崩溃试错。仅更新日志与专项计划，MEMORY.md未更新，未提交／推送。


#### 无ROOT应用返回图标动画：S1协议／开关落地，真实图稿几何仍阻塞

- **范围／根因：** S0已核对10月14日Nova／Lawnchair／OPPO历史及失败壁纸实验，设计见[实施设计](../compatibility/GESTURE_NAV_CONTRACT_IMPLEMENTATION_DESIGN.md)。原LauncherHomeCompat只有诊断；S1复用其CREATE／NEW_INTENT及既有Renderer回调，新增HomeGestureContract（协议值／有界会话）、HomeIconTarget（只读精确目标查找）、HomeIconGeometry（纯坐标运算），没有第二套Manager／Service或SMEngine改动。图标收拢、早段壁纸及Recents异常继续独立，不拿旧实验当新验收。
- **实际实现：** Android11+消费并校验component／user／Message／replyTo，保持原HOME字段；requestId、callback token去重、1000ms仅取消期限、一次GL采样、主线程复核和copyFrom保留回调关联。锁屏、旋转／尺寸、Surface／scene换代、新Intent、关闭开关及销毁取消旧请求，冷启动可等待稍后就绪的原场景。OCD按指定文案新增默认false键launcher_home_icon_animation_enabled，写入复用原设置持久化，单独取消，不触发原设置重载；关闭／无合同不创建Handler或GL工作。S1未引入SurfaceControl／FloatingIconSurface。
- **明确阻塞／影响：** 普通可见页与Dock按ItemInfo及ProfileRepository用户精确查找已接通，但唯一目标仍返回native_artwork_geometry_unverified。e.s只用native两组角点生成矩形，sc节点可进入离屏target／viewport，图稿主体与含阴影素材／最终合成的映射未获证明。纯几何函数只接受已证明的图稿四角，不能把其合成输入测试当12／20、图标包或自定义尺寸真实几何通过。**当前产品即使打开开关也不会发送真实坐标，尚不能产生本功能的可见收拢改善**；不重绘／隐藏原图标，不改变原HOME恢复。证据 `build/gesture-nav-s1-20261104/native-geometry-blocker.json`，含具体源码入口；原版APK当前路径缺失，未重新反编译。
- **自动化／构建：** tools/tests/gesture_nav编译完整四个产品类，用受控Android服务／场景替身验证177项协议、字段复制、过期／重复、新旧回调、模型／Dock查找、数学变换及生命周期；消费去重与期限两份负控副本按预期断言失败。真实RectF发送仅由测试反射注入产品完成入口，产品无测试注入Intent，不能等同系统接收／采用。根build.bat最终构建、v1／v2／v3签名、16KiB ZIP对齐及1.6.0-T／34检查通过；设置资源内ID／文案、DEX内产品类及无测试入口检查通过，Manifest与native库和基线相同。APK SHA256 `8172ddacb80762e8db1e7b9aac0ff12274a24df64a8d0e403c1039ce96d5838d`；输出与证据统一在 `build/gesture-nav-s1-20261104/`。该APK构建自含用户原有Smali变更的实际工作区，非干净HEAD独立包；相较先存APK变化为classes.dex、classes2.dex及设置资源，不能将全部二进制差异归因于S1。
- **回滚／剩余：** 开始前实际源码及四份原APK产物保存于证据目录before；只含本批增量的s1-increment.patch经git apply --reverse --check检查，可撤销本批产品／测试／文档，不混入既有改动；暂存区未主动修改，未提交／推送。原已安装设备未操作，本次没有ADB安装、手势或系统设置变更。Android8–10真实ART兼容及vivo／OPPO／小米等ROM、native图稿边界、系统采用及动画改善均未验；需先闭环几何与授权真机A/B/A，S2准入不成立。MEMORY.md未更新；本问题当天记录合并在此，未另加流水。

- **真实几何专项（同日补充）：** 按用户新授权启动现有Pixel_6_Pro／API36虚拟机，保留数据安装一次性HomeGeometry诊断。复用GL帧读取首个可见普通Cell及现有Dock，不改SMEngine；Log tag关闭时不扫描。新增HomeGeometryDiagnostics及离线overlay_geometry.py，HomeCompat仅接一次恢复采样；受控测试177项仍通过，诊断类在该JVM套件为替身，真实native另由模拟器验证。原生方法对NaN预填的12数只写前6数（两个XYZ），相机sc0位于合成局部、Cell投影位于屏幕真实位置。结合实际192图稿／246纹理与原合成偏移(差值/2,差值/4)，静态12宫格候选为[84,229.5,276,421.5]；与蓝色圆形彩色轮廓差2／2.5／2／1.5px。轮廓不是设计边界，不据此开生产门。20宫格、Dock普通图标（原Dock仅设置）、旋转及最终矩阵仍未验；生产仍回退，系统采用／动画A/B/A未验，S1未完成，S2未进入。证据及叠加图见 `build/gesture-geometry-20261104/`。构建曾因首轮安装过早重叠发生文件占用，随后独立签名检查／重新安装及拉回哈希确认诊断包一致，16KiB对齐通过；未把有占用警告的构建exit0单独当签名证明。原模拟器版本码33，普通回装被拒后用-r -d保留数据恢复成功并核对原包哈希；诊断tag恢复空，未操作X21A或V2458A、未改原布局。

- **有限生产接入（同日合并）：** 按用户本轮要求将已采集12宫格普通静态图稿数据接入HomeIconTarget→HomeIconGeometry→HomeCompat→Message回复。准入仅限12／100%／DEFAULT圆形普通静态合成纹理，父链静止、单位缩放、rotation／skew为零，Camera与Surface尺寸相同、单位Cell投影及相同深度、真实纹理／布局尺寸一致，Surface原点0／旋转0／自身无缩放；其他目标继续回退。尺寸来自LayoutProperty与真实纹理、原合成取整及偏移，不写相机RectF或固定边长。根build.bat、v1／v2／v3签名与16KiB ZIP对齐通过，1.6.0-T／34；候选SHA256为3f71848faf1f867b5f636ac8d5351c455596b3ccd82e9cf67628ef623215c89f。187项受控测试通过，含实际resolver→原GL采样入口→Messenger完整链路，不注入RectF；记录GL数据由替身重放，不是本轮真机采集。上批12宫格相机轮廓误差沿用2／2.5／2／1.5px，仅此样本；不同图标、图标包、20、Dock、自定义缩放未扩大验收。本轮未继续设备操作／安装，系统采用及A/B/A视觉改善待用户授权，S1仍未通过、S2未进入。源码基线、构建／签名及回退补丁见 `build/gesture-production-20261104/`；MEMORY.md未更新，原有改动保留，未提交／推送。

- **最终系统采用验证（同日合并）：** 仅操作明确授权的emulator-5554／API36，先保存当时安装原包43a8f180…6f0f2e及设置／UI状态，候选安装后拉回SHA256核对为3f71848f…15c89f。真实相机组件、同一12宫格布局及首次启动定位说明屏，关闭A→开启B→回关A2各3次底部250ms上滑均由前后topResumedActivity确认APP→HOME；HOME键仅准备。B三轮收到有效合同并通过生产几何，发出RectF(83.99994,229.5,275.99994,421.5)，收到至发送162.2／163.8／130.4ms。没有系统接收确认；B录像仍向中下部缩小消失而非左上相机目标，与关闭组未见有意义改善。证据为应用日志＋真实手势录像及30fps重采样彩色窗口轨迹，非系统TargetRect／面板present证据，不宣称系统绝未处理任何回信。单轮核对position字段及copyFrom未发现明确格式错误，缺接收／动画结束时间对齐，原因保留未知，停止试改；不改几何、不重建APK、不开发S2。首次回关未生效组保留为invalid-A2-still-on并排除，确认UI关闭后重录有效A2。完整原视频A／B／A2、B-protocol-only.log、轨迹图、哈希及result.json在 `build/gesture-acceptance-20261104/`。结束用本批实际原包-r -d保留数据回装并拉回核对哈希一致；UI开关关闭，System／Global与log tags还原，临时远端视频／XML清理。新建的应用私有false偏好可能保留（与原未设定同为有效关闭），未清数据；未改HOME Role、导航或布局，未操作连接真机。本环境S1未通过，S2不准入；系统收到协议／Launcher成功发送／系统采用分别记录，壁纸早段空档与Recents长稳不由本轮代验。MEMORY.md未更新，未提交／推送。

- **有界finish确认实验（同日合并）：** 用户明确同意后，仅HomeGestureContract新增默认关闭的HomeFinishProbe log-tag诊断：回信附带独立ParcelUuid／requestId的可选finish Message，静态Messenger无Activity引用，最多4条／3秒清理，不加Surface、不动图标几何／支持范围。193项受控测试、根构建、v1／v2／v3及16KiB对齐通过；仅emulator-5554保留数据安装，拉回核对本次APK b75bc08a…183607一致。三次真实相机→底部上滑均收到有效协议／发送原RectF，且收到匹配FINISH_ACK 3/3，发送到ACK约24.0／25.2／473.4ms；结合已核对系统accept→maybeSendEndMessage代码，确认本轮通过UUID／弱Consumer校验并进入accept，可排除本轮回信完全未到达／被token拒绝，不能倒推上批旧轮。此次收到到发送539.7／494.1／213.2ms，较上批130–164ms不同；ACK到达时间不能证明accept时刻或该时刻spring.isEnded，不认定三次均为迟到。录像仍向中下部消失，未见朝相机目标收拢；系统接受消息与可见目标采用继续区分，S1未通过、S2未进入，不继续试改。证据 `build/finish-probe-20261104/` 含Probe.mp4、probe-only.log、service-dump、轨迹、result.json及增量回退补丁。结束恢复实际安装前原包43a8f180…6f0f2e并拉回逐字节哈希核对，UI开关false、系统键及三个诊断tag恢复，远端文件清理；未操作真机、HOME Role／Quickstep／SystemUI／布局不变。生产几何两源码哈希前后一致；MEMORY.md未更新，未提交／推送。

### 2026-11-03

#### 主题／壁纸临时纹理：完成调用与交接审查，中断恢复仍待受控验证

- **实际入口：** 普通设置选主题仍调用原ChangeThemeHandler，不是全部走冷重载；设置选壁纸经Eb.lh合并待处理事件，再由zb生成背景。四指换壁纸是另一条a.n链，依赖Smartisan wallpaperprovider；当前ADB仅连接X21A，包查询未发现该provider，不能把普通设置换壁纸当作四指路径已经运行。未安装替代provider或改壁纸。
- **所有权结论：** 四指路径的texture_back_anim／t_blur_background_anim与主题路径的t_blur_anim_background不是同一个键。a.l先释放生产节点，按透明模糊条件将输出转交texture_back_anim；a.m完成回调再转交正式background.png及必要的t_blur_background，最后cb只移除临时别名。不能将cb改成ab，否则会释放已被正式背景接管的同一个Da。主题正常完成沿l→k调用Ea.Is释放target/--/，再提交主题；原q负责相应主题过渡背景清理。这里只确认正常完成路径，不认定所有分支均无泄漏，也不据此关闭切换中断问题。
- **对照／验证：** 生成与交接等6个方法分别与clean及clean_raw逐字一致；maintained的ChangeThemeHandler／TextureManager亦保留目标前缀、主题过渡背景与remove／delete区分，未直接移植。原主APK仍缺失，不声称本批重新反编译。10项源码合同检查通过，明确不是运行覆盖或性能收益；证据[源码检查与参考哈希](../../build/theme-transition-audit-20261103/proof.json)。未改生产代码、构建或安装，正常APK哈希仍为5731f8ee37291f9f93afc905b258536f27c5fc6c4970961c54659ee4e6901f77。
- **尚缺与下一步：** 稳定主题恢复通过不证明切换进行中的一次性输出、旧主题快照及完成回调能跨EGL代际正确交接。下一步只验证“主题动画进行中→同进程EGL重建→完成交接”，记录临时键／Owner／代际与实际画面，再按真实异常最小修复；本项保持开放，不重跑稳定背景样本。已请求X21A临时主题与诊断包授权，收到答复后实施；不触碰用户壁纸、布局、权限或默认桌面。仅更新本条与专项计划，MEMORY.md未更新，未提交／推送。

#### 外部Surface导入审查：当前原版调用链无输入入口，停止空跑

- **调用与归属：** 检查RenderTarget N的全部方法、全Smali字段引用及构造调用，另核对Java／可见本地native源码。当前N只有String＋尺寸及标志两种构造形式，9个构造调用点均不传Surface；没有Surface参数方法。mSurface只在N内部访问，两个写入分别为Ka(true)清空、create失败清理时保存并还原原值，不是外部注入；跨代ensureTargetContext继续Ka(false)只作废旧GL编号。create里虽保留非空Surface时调用Smartisan OpenGLHelper.nativeImageTargetTex2D的分支，但正常源码路径没有非空来源。
- **原版／参考边界：** clean_raw同样没有Surface构造入口。maintained RenderTarget另有String／Surface／尺寸构造器，但它不是当前构建源码，不能据此新增当前Launcher没有的导入功能。Android支持库MediaPlayer里的同名mSurface属于其他Owner，不能算引擎入口。原版主APK当前缺失，本批未重新反编译原包；也未证明外部ROM反射／JNI注入绝对不可能，只认定当前可见普通调用链无使用入口。
- **处理／验证：** 不改生产代码，不删除保留兼容分支，不新建Surface、Manager或失效恢复系统。可复核的9项源码可达性／写入边界检查通过，含全部9处构造调用，明确不是外部Surface导入运行覆盖。证据[audit.py与proof.json所在目录](../../build/surface-import-audit-20261103/proof.json)。未运行构建、安装、设备手势或旧FBO回归；没有相关生产修改，不以重复测试充当进度。正常APK哈希仍为5731f8ee37291f9f93afc905b258536f27c5fc6c4970961c54659ee4e6901f77。
- **结论／后续：** 将此项从当前施工队列移出，标记“当前无码入口”；不是宣称外部Surface跨代兼容已验证。未来出现真实调用、厂商注入证据或明确需求再开放。下一项只核主题／壁纸切换中断时的临时纹理生产者与释放链，和已通过的稳定t_blur_background恢复区分，不重跑普通FBO／静态主题样本。仅更新本条与专项计划；MEMORY.md未更新，未提交／推送，既有暂存及未暂存修改保留。

#### 毛玻璃／透明主题EGL：恢复已移除的一次性模糊背景生产者

- **审查／真实负控：** t_blur_background不是PNG，而是Eb.uh→y→GaussianBlurEffectMaterial／TwoPassFilterMaterial两遍绘制生成的FBO。原Ab在生成后清理F节点，但保留命名输出；Da.needsSourceReload对RenderTarget不走CPU源重载，root.refreshRenderTarget也无法通知已移除生产者。X21A／Android9用户授权临时主题切换与受控包并恢复；旧整合包毛玻璃PID12738、同scene173870237、真实contextGen1→2后背景丢失，并出现重复／翻转图标，内容区2033793像素变化、无新增崩溃。这是受控恢复故障，不归因到分辨率，也不把所有iQOO翻页问题直接等同此缺口。原Eb.uh／y、Ab.run、C.Tt／It五段与clean_raw逐字相同；maintained MainView与TwoPassFilterMaterial同样保留原两遍生产／清理结构，未找到可直接替代的现代恢复通知；原主APK当前缺失。透明与aero包虽theme_id同名，背景素材分别全透明RGBA与RGB，运行分支不能混为一谈。
- **最小修复／新增理由：** 从Eb.Vh抽出原Gaussian源准备→原uh→force draw→原Ab清理体到rebuildGaussianBackground(Camera)，首次加载也委托同一段，抽取体哈希一致；原壁纸URI选择、素材处理、尺寸、模糊参数、材质及清理流程不改。Renderer在保留场景context>1且sIsGaussianTheme时，复用原n事件队列安排一次恢复，位于原EGL共享初始化之后。新增极小GaussianBackgroundRestore仅作为既有事件队列回调，校验当前代际及同一Eb Owner后委托原工厂／相机；没有新增Manager、缓存、位图合成或模糊算法。必须在原事件阶段执行，保证Ab清理在生产之后，不能直接在onSurfaceCreated外置绘制再提前清理，也不加随机延迟。普通主题／首代不安排该恢复，透明主题默认翻页约束保留。生产涉及Eb.smali、vc.smali及此事件类。
- **专项验证／边界：** 现有run_generated_recovery_tests.py增加gaussian-owner-only：12项抽取体哈希、冷载单委托、原URI、事件时序／条件、首代／空Owner、非逐帧、过时代际／场景保护及原相机工厂边界静态检查通过；旧Eb准确负控失败。静态项不当运行分支覆盖。修后毛玻璃PID13636、同scene49722595、context1→2首屏内容区差0；继续打开文件夹及编辑态至context4，每次恢复仅一次，累计3次原生产者恢复，文件夹差0、编辑态仅3像素差1色阶。透明主题PID14186、同scene31745298、context1→2内容区差0，原生产者恢复一次，未新增崩溃。真实画面通过，不以回调日志代替实屏；本批不是启动／文件夹性能优化，不重复冻结Mesh／FBO／深度及性能五样本。证据[毛玻璃连续场景](../../build/egl-theme-20261103/fixed/aero-scenes-proof.json)、[透明主题](../../build/egl-theme-20261103/trans/aero-proof.json)、旧包aero-proof.json／aero-pair.png及source-owner-proof.json。
- **最终包／恢复：** 根build.bat、v1／v2／v3签名、16KiB ZIP对齐、1.6.0-T／34通过；相较本批前d29f518e正常包，非签名APK成员仅classes.dex改变。正常包SHA256为5731f8ee37291f9f93afc905b258536f27c5fc6c4970961c54659ee4e6901f77，保留数据回装并拉回核对，临时HomeCompat与事件标记源码恢复，最终DEX无SCENE_AUDIT_REQUEST／EGL_AUDIT暂停／GAUSSIAN_BACKGROUND_RESTORE诊断标记。已关闭透明覆盖、恢复经典黑／12宫格，35项布局字段集合相同，保留用户联系人Dock与Folder46；未设置壁纸、权限、默认HOME或系统日志，没有操作另一台连接设备。正常包翻页、文件夹、底部上滑搜索、设置及返回与清理见[收尾证据](../../build/egl-theme-20261103/normal-proof.json)。只定点清理本批设备请求／计时和两份输入DEX，不清数据。
- **剩余：** 此次关闭本机当前毛玻璃首屏／文件夹／编辑态及透明首屏的确定背景恢复缺口，不等于所有透明光影／atlas边缘、主题切换中断、四指换壁纸中断、其他GPU／ROM已验；不恢复早先撤回的wrap／alpha猜测修复。下一项只核原生外部Surface导入目标是否有真实Launcher调用及上下文所有权，不重跑普通FBO专项。仅更新本条与专项计划，MEMORY.md未更新，未提交／推送。

#### 20宫格真实动态图标恢复：日历黑块、阴影丢失与缩略图日期回退

- **范围／真实负控：** 用户授权X21A／Android9临时20宫格、启用动态天气／日历并恢复。原12宫格／动态图标关闭；联系人在三图标Dock中间、Folder46“时钟＋日历”保留。天气sc[7]实际为H、文件夹日历实际为m，不用静态素材冒充活动Owner。PID32767、同scene195341127、contextGen1→2→3→4完成天气页→打开文件夹→编辑态连续换代；日历变192px黑块。系统日志未提供有效栈，故仅在临时诊断包把既有恢复异常写入本应用测试日志；取得真实NPE：CalendarView.createComposedBitmap读取空Nn.calendar_back_size。异常由恢复入口捕获、没有进程崩溃，不能称整条链通过。
- **根因／最小修改：** Calendar.g(ZZ)原清理将Nn及活跃子树释放，但其保留Owner仍可用于缓存位图恢复。生产`view/activeicon/m.smali`仅在createComposedBitmap以局部变量使用原Nn；为空时沿原构造函数Eb.Ih→getSinglePageMode→Constants.mode重新取得CPU布局参数。保留g原清理，不复活节点、不另建几何Owner，不改日期素材、Canvas绘制、尺寸算法或sc[0]。原绘制主体重组哈希一致。黑块消失后实屏发现阴影丢失：原composeActiveIconToBaseBounds只遍历活跃子树，而Calendar的activeIconShadowNode仍持有正确素材路径。`LauncherSettingBridge.java`仅在缓存合成找不到已挂载阴影时读取该保留路径，复用原解码／合成；不重挂／绘制已清理节点，通用findLiveShadow及实时阴影归属逻辑不变。
- **缩略图来源修复／参考：** 编辑态日历还从当前“3”回退旧原图“20”。`view/a/la.smali`新增恢复段此前用Qe选天气Owner，但ItemInfo.Qe是通用活动图标判别、包含Te日历；现只将这一次判别改为天气专用bf，再按Te选日历。原初始化及缺失Owner工厂保留。对照clean／clean_raw的Calendar构造、清理、合成及maintained view/CalendarView，原版同样释放布局引用，没有可直接照搬的现代保留恢复；原APK当前缺失，不声称重新反编译。没有修改图标资源、另建缓存、Manager或关闭动态功能。
- **专项与实屏：** 9项合成／清理／阴影读取边界、14项FolderIcons Owner与原绘制主体静态检查通过，明确不是运行分支覆盖；旧Calendar源码准确负控失败。旧整合APK黑块与上述真实栈是运行负控。修后PID8787连续四代样本中文件夹内容区逐像素差0、无恢复异常；修正Owner后，一份编辑态中途退回普通页的样本不计入编辑态通过，未猜测归因。随后有效PID9946、同scene173870237、contextGen1→2→3，文件夹差0；编辑态当天“3”及阴影保持，变化集中在活动天气区域，区域外仅2像素差1色阶，无普通图标偏移，崩溃缓冲未新增。天气页真实H恢复有动画画面差异，不将整幅动态图标截图差异当故障或声称逐像素一致。证据[有效连续路径](../../build/egl-mode20-20261103/confirm/proof.json)，同目录保存旧包黑块、异常栈、分阶段素材对比及被剔除样本，不追加流水报告。
- **构建／恢复与正常包：** 根build.bat、v1／v2／v3签名、16KiB ZIP对齐、1.6.0-T／34通过。正常classes2.dex无RETAINED_FAILURE／EDIT_BIND／SCENE_AUDIT_REQUEST／EGL_AUDIT暂停入口，临时HomeCompat及IconRasterDiagnostics源码逐字节恢复。已恢复12宫格、关闭本次动态图标开关；原35项id／page／cell／folder／mode集合完全一致，保留用户Dock和Folder46。vivo临时“定位手机”授权已关闭，原Android COARSE granted=true与AppOps allow未改，不把厂商额外授权和Android权限混为一谈。最终正常包及相邻UI结果见[收尾记录](../../build/egl-mode20-20261103/normal-ui-proof.json)，[构建签名记录](../../build/egl-mode20-20261103/apk-proof.json)。本批设备请求、计时及两份输入DEX定点清理；不改主题／默认HOME／自启动／系统日志。
- **边界：** 仅关闭本机当前普通主题下确认的日历恢复缺陷与20宫格局部链；不是文件夹性能、冷启动或所有跨ROM翻页问题已解决。更多主题／动画／活动组合、12宫格实际动态图标、故障GPU／iQOO及Android15／16／17仍有未验条件，不循环重测已过静态12宫格。仅更新本条与专项计划，MEMORY.md未更新，未提交／推送。

#### 自动改进图标来源一致性：系统别名优先及电话／联系人共包分流

- **来源证据／确定缺陷：** 上批X21A／Android9实际com.android.BBKClock没有活动Owner，raw／legacy未变；尚未销毁EGL时，解析器已选包名512浅盘，而初始实屏／保留键仍为内置clock的192深盘。继续代码审查确认，resolveImprovedIconSource先选Repository候选、失败才用含标签／外部设置资源上下文的系统别名，候选可用性会改变优先级。另IconManager在电话／联系人组件判断前直接返回包名映射，com.android.contacts.activities.DialtactsActivity会被包级contacts规则截走。这是两处具体选择缺陷，不是两个动态／静态时钟交替；不把未完整追踪的候选就绪时刻猜成网络故障。
- **最小生产修改／参考：** 仅改`MaintainedLauncherSettingsHost.java`与`home/settings/icons/IconManager.java`。AUTO／全局改进图标下，确认system／updated-system应用且别名素材实际可用时，先复用既有系统别名与非联网素材加载器；不可用仍走原候选／回退。普通第三方候选优先不变，显式RESOURCE／PACK／CUSTOM／ORIGINAL及全局DEFAULT／PACK仍在此前终止；不新建缓存、Manager，不改图像、圆框、材质／几何或动态Owner。电话／联系人包级别名返回前，复用既有标签／Activity判别，精确组件映射仍优先，其他包级映射不变。clean_raw的data.T原本按拨号组件区分电话；maintained包目录仅作原版资源／组件参考，不移植其核心；原APK当前缺失，不声称重新反编译对照。
- **修前负控／定向验证：** 新增既有app_icon_candidates测试目录下`run_system_source_tests.py`，复用其方法摘录器，执行实际生产源选择／手动覆盖方法及实际IconManager别名方法。旧Host失败于“warm package candidate displaced canonical system alias”，旧IconManager失败于共享包DialtactsActivity应选电话；修后49项JVM方法夹具通过（12项实际别名分类＋37项来源／覆盖检查）。覆盖电话／联系人共包、标签与Activity分流、精确组件保留、非电话包映射不变、冷暖包名候选、别名不可用回退、第三方及手动／全局设置。不把夹具中的OEM包名当作对应手机实测。
- **真机EGL定向结果：** 只对本次已变来源链补一次既有授权的受控测试，不重复Mesh／FBO／性能五样本。源优先级修复包在X21A同PID16118、scene143909199，真实EGL句柄改变、contextGen1→2，SCENE_CREATE一次；时钟三阶段键均192x192:71066659、active=null，时钟和整个首屏内容区y90..2280逐像素差0，崩溃缓冲不变。随后电话共包补丁不改变clock分支，另以实际分类方法负控及最终正常包相邻UI验收；未冒充最终包重跑了全部EGL矩阵。clock-review.png及egl-proof.json在本批证据目录。
- **最终构建／恢复：** 根build.bat、v1／v2／v3签名、16KiB ZIP对齐及1.6.0-T／34通过，较本批前正常包非签名成员仅classes2.dex变化。正常包保留数据回装并拉回核对SHA256一致：ae3be48e419c4c23daf4d641867893fb3845b3ff9849b185be42d069068a3978。最终正常DEX无EGL_AUDIT／CLOCK_ORIGIN，LauncherHomeCompat源码逐字节恢复；首屏、底部上滑搜索／键盘、设置和返回、翻页及原第三页实屏通过，同PID16601、崩溃缓冲不变。电话仅做Dock点击／返回及图标观察，未作为完整拨号功能验收。诊断外部文件与本次输入DEX定点清理，主题、布局、权限、默认HOME和系统日志设置未改。
- **剩余／风险：** AUTO系统图标会稳定优先规范别名，可能不同于此前偶然选中的包名候选；用户显式选图不受影响。仅修已确认选择缺陷，不承诺所有包都能识别、别名缺失也能统一或所有手机图标相同。故障双机电话／NewBox、三星S25U、文件夹／编辑态和其他主题／动画的EGL恢复、故障iQOO／Mali及跨ROM长稳仍未验。证据统一`build/system-icon-source-20261103/`；早期来源观察保留在`build/clock-origin-20261102/`。更新本条与专项计划，MEMORY.md未改，未提交／推送。

#### 文件夹／编辑态EGL补验：背景、缩略图及连续恢复后的普通图标偏移已修

- **授权／布局基线：** X21A／Android9原先无文件夹，用户允许临时建“文件管理＋日历”并恢复；用户随后手动建了“时钟＋日历”，已再次确认保留。真正拖动前的诊断基线已记录FolderInfo46及其余35个场景布局项；这时日历已进用户文件夹、联系人占原空位，测试拖动实际短暂生成“文件管理＋联系人”。本批已拆除此测试文件夹，恢复文件管理／联系人原位置，不拆用户的46号文件夹。最早拖动前与最终受控恢复后的布局字段集合完全一致，不声称DB字节不变；普通正常包最后实屏也保留该布局。
- **真实负控／背景根因：** 首轮PID18622、同一场景和Surface，主动preserve=false暂停／恢复使contextGen1→2，打开文件夹的真实Mode8子Cell能被Eb.q正确找到，但首个绘制抛出`load image error: t_blur_background_folder`，落到xa.getBitmap的APK图片入口。原FolderPageView.Ur原本调用e.s.ug取得当前主题的动态背景并注册原TextureManager；重建后这张生成图丢失，Material未重新通知它。生产`mymaterial/f.1.smali`只在缓存缺失且键精确等于此名称时调用原Ur，再从原Manager取回Da，成功沿原采样／绑定分支；失败返回false并沿已有失败单元隔离旧绑定，不伪造图片、不误读APK路径。普通资产／主题包装／前景恢复保留。这是普通主题的文件夹生成背景，不等同于aero毛玻璃主题；透明／Gaussian其他背景键未改。已对照clean_raw原Ur／使用点，maintained的FolderPageView背景所有者仅作参考；原APK当前缺失。
- **编辑态缩略图根因／最小修复：** 背景修后PID19594已能在文件夹换代后逐像素恢复，但接着编辑态换代显示文件夹黑块。FolderIcons是Object而非SceneNode，jz独立门控不受root.refreshRenderTarget覆盖。先只接原dj后，PID20304外框恢复、两个小图仍黑，说明不能只改脏标记。小图是FolderIcons持有的F而非应用Cell，素材不能仅依赖Eb.q找应用Cell。生产`view/a/la.smali`增加每Owner一个代际值，复用主EGL代际；换代时按现有iz和FolderInfo.nf的共同上限，恢复原小图素材，再调用原dj。静态复用原a(F,ItemInfo)，已有Weather／Calendar控制器走原e.s工厂而不替换控制器，缺失Owner仍走原初始化。首代不额外重载，同代不反复触发；不创建替代Manager／缓存，不重建F节点，不改视口、坐标、尺寸、宫格或原两条绘制分支。原oa主体逐字保留，含当前已有的空对象保护；与clean_raw同类脏标记机制区分，不说整段本来完全一致。
- **前批受控结果／本批负控依据：** PID20992、scene143909199，SCENE_CREATE仅一次、Surface代际保持；两次受控换代contextGen1→2→3，真实句柄533802943488→533804868096→534125611136。冷载仅作测试准备，不把进程重启当作换代通过。打开文件夹的内容区y90..2280差异0；编辑态文件夹缩略图ROI(215,650)-(325,800)差异0，两个小图及外框均恢复。35个布局项前后相同、崩溃缓冲未新增。当时整个编辑态仍有181106个变化像素，主要为第二／第三页普通图标纵向变化，未提前认定通过；本批沿这份证据定位并修复，见下。
- **前批检查／正常包收尾：** 当时生产只改上述两处Smali。既有run_generated_recovery_tests.py增加6项背景调用顺序和13项缩略图Owner／首代／同代门控、原工厂、活动控制器保留及原绘制主体哈希静态检查，19项通过，明确不是运行时分支覆盖；未重跑冻结的46项前景／Mesh／FBO／性能五样本。run_resume_probe.py仅补新增引用所需的F／FolderPageView夹具，未冒充旧专项已重跑；两份Python语法检查通过。根build.bat、v1／v2／v3签名、16KiB ZIP对齐、1.6.0-T／34通过，较本批前ae3be48e正常包非签名成员仅classes.dex变化。正常包已保留数据回装并拉回核对SHA256：153c3be8a704e6c445dcca1f384666c390e3dda10d2de86c0e9cbdd1e0d437bb；正常DEX无SCENE_AUDIT_REQUEST／EGL_AUDIT，LauncherHomeCompat源码逐字节恢复。最终正常包PID21634下文件夹开关、双指进入／退出编辑态、底部上滑搜索／键盘、Dock设置及返回实屏通过，崩溃缓冲未新增；测试请求、计时文件及两个输入DEX定点清理。未主动改变主题、权限、默认HOME或系统日志。
- **连续恢复偏移根因／最小修复：** 直接冷载进入编辑态再换代没有可见变化（两份样本仅8个以内像素相差1色阶），不能由此推断fb无副作用。真实连续“文件夹换代→关闭→编辑态换代”在PID27886、同scene173870237／contextGen1→2→3稳定重现181106像素差异。原恢复入口调用fb(false)，它末尾仍调用Cm；延迟生成非当前页纹理时，真实sc[0]位置先由-7变8，再于后续换代由8变-7，完整键、Owner未变。原版clean／clean_raw的fb也包含Cm；maintained的Cell同类刷新不作为现代EGL恢复替代，原APK当前缺失。生产仅把Cell.fb既有纹理生成段抽为reloadRetainedForegroundTexture，普通fb继续委托它并保留原后续逻辑；IconRasterDiagnostics恢复改调这个原工厂段，不再触发整Cell刷新。没有新增素材解析、Manager、缓存或坐标补偿，不改sc[0]／sc[7]位置、缩放、视口及活动Owner。抽取后重组fb与本批前逐字等价。
- **修后连续路径验收：** PID28872、同scene20365172，真实contextGen1→2→3且场景只创建一次；文件夹内容区逐像素差0，编辑态全内容区仅11像素相差1色阶、没有>1色阶差异，无可见偏移；68对真实恢复前后绑定记录的位置／缩放／视口／目标／队列相同。既有方法夹具增加动画锚点保护，旧Java方法准确负控失败，修后46项方法夹具与6项调用边界静态检查通过；夹具不是完整运行分支覆盖。只集中验证新增连续恢复链，不重跑冻结Mesh／FBO／深度和性能五样本。
- **本批最终包／环境恢复：** 根build.bat、v1／v2／v3签名、16KiB ZIP对齐、1.6.0-T／34通过。正常包保留数据回装，拉回SHA256一致：f666b45d39395b937069d52dcdfda1772bb4a8671b1f72321292cbc8cd0a67a1；classes2.dex无EDIT_BIND／EDIT_REDRAW_NO_CONTEXT_LOSS／SCENE_AUDIT_REQUEST／EGL_AUDIT暂停入口，LauncherHomeCompat源码逐字节恢复。正常包编辑态进出、翻页往返、底部上滑搜索／键盘、Dock设置和返回实屏验证，崩溃缓冲未新增。用户本批手动将联系人移到Dock中间，已明确确认，保留新三图标Dock及Folder46，不恢复更旧布局。诊断请求／计时文件与本批两份输入DEX定点清理；未调整主题、宫格、权限或默认HOME。证据统一[连续路径与绑定结果](../../build/egl-edit-viewport-20261103/fixed-sequence-proof.json)、[正常包收尾](../../build/egl-edit-viewport-20261103/normal-ui-proof.json)及同目录修前sequence样本、构建与签名记录。
- **未关闭范围／证据：** 本批不是文件夹打开停顿的性能修复。X21A当前12宫格连续恢复偏移已关闭并冻结；真实活动Weather／Calendar控制器的恢复、20宫格、更多文件夹内容／页数、其他主题／动画、故障GPU和跨ROM仍未验。原Ur源不可用失败分支仅静态检查，未做真机故障注入。证据统一`build/egl-scenes-20261103/`：旧包folder-crash.txt、背景修后fixed-proof.json、仅脏标记修后final-proof.json、最终owner-proof.json／owner-scenes-review.png、restoration-proof.json及正常包normal-ui-proof.json。只更新本条与专项计划；MEMORY.md未改，未提交／推送。

### 2026-11-02

#### 完整场景EGL集成：崩溃／黑图及普通图标恢复已修，时钟盘面仍开放

- **授权／真实负控：** 用户授权在X21A安装临时诊断包，单次preserve=false→GLSurfaceView.onPause→onResume销毁／重建上下文，再恢复preserve=true；未杀进程或重建Activity／场景，不用普通返回／冷启动冒充。25秒等待仅为采样准备，诊断HOME_TIMING写入应用external-files，未改系统日志／诊断设置。第一轮PID2999、scene1146514保持，真实EGL句柄改变且代际1→2，随后把普通生成前景键`4_com.smartisanos.launcher_fore#raster:...`当APK路径读取并崩溃。
- **生成图标来源根因／本批最小修复：** 最初仅扩展生成键识别，虽然越过按APK路径读取的崩溃，但把Aa.g的旧iconData重新静态合成，导致普通图标圆框／比例与初次加载不同。生产`IconRasterDiagnostics.java`新增严格的保留前景键准入与原Owner恢复：通过既有Eb.q(id)找到Cell，Ol校验当前完整键，再调用原fb(false)更新已有前景，最后从原TextureManager.bb取回实际Texture；静态素材、圆框、活动图标对象和布局参数由原Cell／e.s决定，不新增缓存／Manager／遍历查找或自己拼图。恢复前后键不匹配、Owner不存在或原工厂失败则明确告警并返回失败，不伪造图片。生产`mymaterial/f.1.smali`仅在缓存缺失且识别为该类键时接入，成功复用原采样参数／绑定分支；失败直接返回false，沿已有失败单元解除旧绑定，不再误读为APK路径。普通资产及target/--/主题过渡原Bitmap回退保留。已对照clean_raw的Cell.fb／Eb.q、maintained的updateForegroundRect／loadIconToTexture，未修改这些原Owner或e.s核心。
- **定向验证／边界：** 扩展既有run_generated_recovery_tests.py，摘录实际Java方法；显式Cell／Manager／Bitmap夹具46项通过，覆盖12／20模式、静态及活动键、原Owner只调用一次且不重建Cell、错误／改变键、Owner移除、工厂异常、空结果后恢复，以及旧主题包装回退。旧源码适配器实际调用原Bitmap恢复，准确失败于“recovery bypassed the original retained Cell factory”；它是受控方法负控，不当作GPU或真实合成证据，修前真实外观差异仍由上批截图证明。另5项仅为Material调用顺序静态检查。run_resume_probe.py只补所依赖的新方法夹具，本批未重跑其旧专项；两份Python语法编译检查通过。
- **第二处原Owner修复：** 对照clean_raw的Ec.wz／Bi与maintained SettingButton，原设置按钮两张程序生成贴图上传后释放CPU像素，但EGL恢复未通知原重建入口。生产`view/vc.smali`仅在主EGL代际>1且已有场景按钮时调用Ec.Bi；首次构建继续原create，不改绘制／尺寸／资源，不常驻Bitmap、不新增Manager或兜底图片。原版APK当前缺失，未声称重新反编译对照。
- **黑图根因／本批最小修复：** 上批PID5656虽然越过两处崩溃，主页面图标／背景仍黑，不能计为恢复通过。本批先不改生产，沿同一授权路线在PID7308、scene1146514取得真实脏标记：200个节点／24个离屏目标，换代后仍仅12个目标为dirty。Cell的ga／da和背景tc沿原isNeedDisplay门控跳过生产绘制，消费端重建的是没有旧像素的新FBO。调用既有SceneNode.refreshRenderTarget后，200节点／24目标全部标脏，黑图立即消失，未重建进程／场景。ga.draw、tc.draw、refreshRenderTarget及其ka遍历体与clean_raw逐字一致；maintained也保留同类NodeTravel刷新入口，只作参考。生产本批仅在`view/vc.smali`的onSurfaceCreated中，主代际>1且已有Q／root时调用一次原refreshRenderTarget，位于代际／投影失效之后；首次构建、普通返回及逐帧绘制不调用。不改FBO算法、原绘制门控、宫格／动画／阴影，不新增缓存或Owner。
- **本批集中验证／仍非完整视觉通过：** 修后诊断包移除事后补刷入口，只保留一次上下文销毁与脏标记观察。PID7948、scene1146514、同一GL线程和Surface代际保持，真实EGL句柄改变、contextGen1→2、SCENE_CREATE仅一次；重建后首轮绘制前200节点／24目标均dirty，三页实屏均恢复内容，崩溃缓冲不变。原始日志开头包含旧诊断进程安装时暂停的尾巴，按ACTIVITY_CREATE PID7948切出会话，未混算为一次恢复。另6项仅为回调顺序／首代及空根保护／非逐帧调用的静态检查，不当运行覆盖数。该批实屏还发现免费电子书、使用技巧、云服务、时钟等外观变化，促成本批改用保留Cell的原前景入口，未用常驻Bitmap或猜测阈值掩盖差异。诊断和录屏时间不作为启动／性能收益，GL完成及SF呈现记录仍不证明首个buffer内容正确。
- **本批真实来源一致性结果：** X21A／Android9同一进程PID9718、scene1146514，真实EGL句柄改变、contextGen1→2、SCENE_CREATE仅一次，三页均有内容、崩溃缓冲不变。首屏重建前后内容ROI（y90..2280）逐像素差异仅位于时钟盘面x433..647／y1089..1303，其余11格及Dock一致；第二／第三页恢复后内容与随后正常包冷载对应页像素差0，这是跨进程对应内容比较，不冒充它们在同进程换代前已有截图。免费电子书／使用技巧／云服务等圆框、比例差异已消除。时钟仍从深色盘面变浅色，不能解释为指针正常走时，因此完整视觉验收仍开放；下一项只核对时钟首次预载、实际Cell／活动Owner及重建素材，不重测已一致的普通图标、不硬编码盘面图或关闭动态功能。
- **构建／正常包恢复：** 根build.bat、v1／v2／v3签名、16KiB ZIP对齐、1.6.0-T／34通过；较本批前7e8764d6包，非签名成员仅classes.dex／classes2.dex改变。正常包已保留数据回装并拉回核对SHA256一致：aa8f039e3b9f5d89ac4d3965dade1076139954c45f0d0a7d135b0a00cc87722d；正常DEX无EGL_AUDIT／auditDirtyState，LauncherHomeCompat源码逐字节恢复。正常翻页往返、底部上滑搜索／键盘、Dock设置及返回通过，同PID10453、崩溃缓冲不变；原第三页实屏恢复。普通页面的初次加载链未改，未重跑冻结的Mesh／FBO／深度或性能五样本。
- **恢复／边界：** 用户主题／宫格／动画／布局／权限／默认HOME不变；设备本次计时文件、录屏和输入DEX清理，系统日志／诊断键不调整，Android17设备未操作。受控暂停不等价所有驱动丢失；故障iQOO／Mali、其他动画／主题／Android15／16／17、文件夹／编辑态、缺失Owner的真实场景及长稳未验。时钟差异仍未关闭，不将已恢复内容说成全视觉通过。本批[验证汇总](../../build/egl-source-owner-20261102/proof.json)、方法负控、首屏逐格像素结果及正常恢复截图在`build/egl-source-owner-20261102/`；黑图证据在`build/egl-redraw-20261102/`，此前崩溃证据在`build/egl-integration-20261102/`。仅更新本条／专项计划，MEMORY.md未改，未提交／推送。

#### 深度纹理目标：创建完整性检查与绘制／采样准入

- **根因／参考：** DepthRenderTarget原create没有检查FBO完整性，失败目标仍被清屏；bind／Ac也未检查WX归属，EGL换代后尚未重建时可能绑定新上下文同编号的外来对象。ShadowManager的fu／gu／hu没有失败准入，fu已切换阴影相机。修前深度目标与clean_raw一致；maintained具名DepthRenderTarget也只有代际比较而无完整性检查，原版APK当前缺失，未声称重新对照原包。
- **最小修改／文件：** 生产仅改`launcher/smali/com/smartisanos/smengine/c/b.smali`与`c/i.smali`。深度目标生成挂接后检查有效编号及FBO完整性，成功才ready；失败释放本次纹理／FBO、解绑并每代告警一次。同代失败不逐帧重新分配，等原有context／theme的WX变化或新目标创建才重试。bind拒绝未就绪目标，Ac对未就绪目标只解除请求单元旧绑定；fu失败恢复原主相机，gu不进入阴影节点绘制，hu不进入无效目标采样。正常阴影算法、尺寸、颜色、shader、宫格及动画保持不变，不关闭阴影配置。
- **专项验证：** 扩展既有MaterialBindingProbe.java与run_binding_state_tests.py。旧APK两项真实负控分别失败于“incomplete depth target was cleared before completeness check”和“stale depth sampler exposed foreign texture”。Android9真实APK深度目标方法／EGL／GLES修后13项创建失败检查及19项跨代采样检查通过，覆盖同代复用、两非共享上下文、同编号外来绿色纹理／FBO不被误采样或误删、正常重建恢复。零宽FBO为明确故障夹具，不是用户现场尺寸。另5项仅为fu／gu／hu源码顺序静态断言，不计为完整失败场景运行验证。证据`build/depth-admission-20261102/`。
- **构建／真机回归：** 根build.bat、v1／v2／v3签名、16KiB ZIP对齐及1.6.0-T／34通过；较上一批非签名APK成员仅classes.dex变化。X21A／Android9保留数据安装并拉回核对SHA256一致：ce384dc7e483266e44430b7c1b365a5c48d25a754a581b3454ac0b07a3049fee。一次左右翻页、底部上滑搜索、Dock设置、BACK返回通过，同PID32756、崩溃缓冲逐字节不变；最终实屏确认恢复测试前第三页。未改主题／宫格／动画／布局／权限／默认HOME，临时输入DEX及探针清理；Android17连接设备未操作。完整[产物与回归记录](../../build/depth-admission-20261102/apk-proof.json)留证，不重跑已冻结专项或性能五样本。
- **边界／风险：** 同代瞬时创建失败也需原有context／theme重建或新目标才重试，该期间跳过无效深度绘制／采样，不承诺立即恢复阴影。完整桌面失败注入时fu／gu／hu动态链、完整Launcher同进程EGL恢复、iQOO／Mali现场、Android15／16／17集成及长稳尚未验证，本批不关闭全部翻页故障。用户暂存内容保留，未提交／推送；仅更新本日志与专项计划，MEMORY.md未更新。

#### 普通离屏RenderTarget：补代际保护与不完整FBO清理

- **根因／负控：** N(RenderTarget)只检查xG创建成功标记，不检查EGL代际；换上下文后bind／Rk／Uk／Qk／Ka等可继续使用或删除新代同编号对象。另保留的FBO不支持回退直接return，留下已分配纹理／附件／FBO及绑定，重试再次分配。Android9／X21A实际旧APK方法与真实GLES分别准确失败于“stale FBO bound after EGL recreation”和“incomplete FBO resources retained across retry”；后者以零宽目标触发确定的不完整状态，属于显式故障夹具，不当作用户现场尺寸。
- **最小修改／文件：** 生产只改`launcher/smali/com/smartisanos/smengine/N.smali`。七个GL入口复用现有主EGL代际，换代先记录归属，再经原Ka(false)仅作废GL编号与成功标记，避免删除外来新代对象；重置mipmap就绪状态，未创建时不生成mipmap。完整性检查失败仍保持既有不抛异常策略，但经原Ka(true)释放本次资源，并保留外部mSurface描述供后续重试。未改颜色／深度／模板分配格式、阴影算法、动画、宫格、尺寸或原生Surface导入。clean_raw对照确认修前唯一差异为原FBO RuntimeException改成return，本批未恢复旧抛错；maintained具名RenderTarget同样按mCreateOK直接返回，未整块移植；原版APK当前缺失。
- **专项结果：** 扩展现有MaterialBindingProbe.java及run_binding_state_tests.py：fbo-context485项通过，覆盖4种颜色／depth／stencil组合、7种操作、两个非共享EGL上下文、同编号外来对象碰撞、绿色像素不被清除、附件重建完整及新代正常释放；fbo-failure14项覆盖三次不完整创建清理、绑定回零、有效尺寸恢复。测试实际执行APK RenderTarget及平台GLES，不包装替身FBO。深度目标异步删除另在本批前包检查16项通过：同WX删除、更换WX保留纹理／FBO／renderbuffer；该16项是显式WX变化的回调门控检查，不宣称完整深度纹理绘制恢复，c/a未改，也不为已有通过重复跑一遍。证据`build/fbo-context-20261102/negative-context/`、`negative-failure/`、`fixed-context/`、`fixed-failure/`与`depth-release/`。
- **构建／安装／回归：** 根build.bat、v1／v2／v3签名、16KiB ZIP对齐、1.6.0-T／34通过；较上一批整合包非签名成员仅classes.dex变化。X21A保留数据安装并拉回核对SHA256一致：9c8de1087c5142a21e76797da16c3423e52274e6dd3449940100c1ed2210e2cd。一次左右翻页、底部上滑搜索、Dock设置及BACK返回实屏通过，同PID31545，崩溃缓冲无新增。未调整主题／宫格／动画／权限／默认HOME／布局，恢复测试前第三页；本批输入DEX及探针均清理。[产物与回归记录](../../build/fbo-context-20261102/apk-proof.json)集中留证，不重跑已冻结的Mesh／WX或无关性能五样本。
- **剩余／风险：** 普通FBO这两处确定缺陷已修，不等于iQOO／Mali翻页故障关闭。尚未验证原生外部Surface导入、深度纹理目标完整重建及绘制前失败准入、完整Launcher同进程EGL恢复、Android15／16／17集成和长稳；下一项只查深度目标的创建／采样失败链，不重复普通FBO同条件测试。未提交／推送，用户暂存内容保留；更新本条与专项计划，MEMORY.md未更新。

#### 阴影资源代际：将原WX失效链接入真实EGL重建回调

- **根因／负控：** ShadowManager已有WX／SX／UX比较，但WX仅在Launcher场景初始化的两处init调用推进；SMRenderer.onSurfaceCreated只推进主兼容代际、清理纹理绑定和设置帧监听，没有推进WX。用旧整合APK真实SMRenderer回调、ShadowManager单例及私有oB／nB在Android9两个非共享EGL上下文执行，发生新代同编号外来缓冲碰撞时，准确失败于“renderer context recreation reused foreign shadow vertex”；不是仅手动修改计数器的推演。
- **最小修复／文件：** 生产仅`launcher/smali/com/smartisanos/launcher/view/vc.smali`与`launcher/smali/com/smartisanos/smengine/c/i.smali`。把原init的WX递增体提为静态advanceContextGeneration，init继续委托该原逻辑；onSurfaceCreated在主EGL代际推进后、任何后续资源操作前调用一次。使用静态入口是为避免GL线程为失效通知额外构建带HandlerThread的ShadowManager单例，复用既有失效／重建链，不新增Manager、缓存或第二计数器。未改阴影算法、CPU缓冲、动画、几何或FBO实现。修前ShadowManager与clean_raw逐字一致；maintained具名ShadowManager同样由init递增_surfaceIndex，Renderer未提供可直接照搬的现代失效通知；原版APK当前缺失。
- **专项验证／边界：** 扩展现有MaterialBindingProbe与run_binding_state_tests的shadow-context，29项通过：真实Renderer回调每次推进WX一次、同代缓冲复用、跨代顶点／索引重新上传、外来缓冲不被覆盖、显式init仍有效，且回调不额外创建ShadowManager工作线程。测试使用显式World路由和主题EGL接收替身，Ea／Renderer／ShadowManager及GLES为真实APK／平台实现；ThreadVerify由夹具初始化，首次漏初始化报错仅为夹具错误，修正后才取得上述有效负控。隔离测试不等于完整桌面EGL恢复、阴影程序及所有离屏目标已验。证据`build/shadow-generation-20261102/negative/`、`fixed/`、`source-proof.json`。
- **构建／真机相邻回归：** 根build.bat、v1／v2／v3签名、16KiB ZIP对齐、1.6.0-T／34通过；较上一批公共Mesh整合包，非签名APK成员仅classes.dex改变。X21A保留数据安装，普通系统安装确认完成；拉回安装包与构建包SHA256一致：9a439c8713e87b9021e4510749a3cca6db2d44006dc44bb5a2eb9d6eb1933952。既有稳定downTime输入完成左右翻页、底部上滑搜索、Dock设置、BACK返回，实屏可见，同PID28280，崩溃缓冲无新增；恢复测试前第三页，本批输入DEX及探针已清理。未改主题／宫格／动画／权限／默认HOME／布局。参见[产物及回归记录](../../build/shadow-generation-20261102/apk-proof.json)。
- **剩余：** 本批关闭WX未接EGL回调这个确定遗漏，不宣称iQOO／Mali翻页问题已全部修复，Android15／16／17及长稳未补验，也没有性能／高刷收益结论。下一项进入普通RenderTarget／深度附件及异步释放的FBO所有权，不重跑公共Mesh或本轮已通过的同条件检查。未提交／推送，保留用户暂存内容；仅更新本条与专项计划，MEMORY.md未更新。

#### 公共Mesh缓冲：修复EGL重建后旧VBO／索引编号复用与误删

- **根因／负控：** 公共Mesh的Ak／rk仅凭bF／cF非负就复用编号；Dk／Yx／Ta可更新旧编号，ok／za可删除旧编号，没有上下文归属校验。Android9／X21A的隔离EGL测试实际执行旧APK的Mesh方法：先上传CPU夹具数据，销毁上下文，在新上下文创建同编号的外来缓冲，旧Mesh准确失败于“recover reused foreign vertex instead of restoring CPU data”。这证明局部资源所有权缺陷，不证明其就是iQOO翻页视频的全部原因。
- **最小修复／文件：** 生产只改`launcher/smali/com/smartisanos/smengine/y.1.smali`，新增本对象缓冲代际字段及私有ensureBufferContext，复用已有LauncherHomeCompat.getEglContextGeneration；在两个取编号、两个上传、索引更新与两个释放入口共七处校验。换代仅作废两个GL编号，不在新上下文删除旧编号；保留原CPU数组／Buffer、共享aF语义及原懒上传。未新增Manager／缓存，不改动画、几何、Shader、纹理及FBO。修前Mesh与clean_launcher_raw逐字同哈希；maintained的具名Mesh也直接复用非负编号，没有可直接借用的代际修复；原版APK当前缺失，未声称重新反编译原APK。ShadowManager已有WX机制，但与真实EGL重建关联仍待独立闭环，不算本批已修。
- **专项验证：** 扩展既有`MaterialBindingProbe.java`和`run_binding_state_tests.py`的mesh-context模式，真实Android9 GLES／两个不共享EGL上下文、实际APK Mesh方法150项通过；覆盖同代编号复用与共享保留、跨代顶点／索引重建、直接删除／释放／共享释放、顶点更新和索引更新不伤及外来缓冲、新代正常释放。CPU顶点／索引数据由显式测试夹具提供，不替代完整桌面建模与EGL恢复验收。证据`build/mesh-context-20261102/negative/`、`fixed/`及[产物与回归记录](../../build/mesh-context-20261102/apk-proof.json)。本批是正确性修复，没有冷启动／文件夹性能收益结论，不重跑无关五样本。
- **构建／安装／相邻回归：** 根build.bat成功，v1／v2／v3签名、16KiB ZIP对齐、1.6.0-T／34通过；相较本批前整合包，非签名APK成员仅classes.dex变化。X21A保留数据安装，普通系统“继续安装”确认完成；安装后首次检查仍在安装器、进程未就绪，不误记为Launcher崩溃，明确启动后正常。拉回APK与构建包SHA256一致：33ca2c1715f528768d9c1592efefdd6ce0642afc131431d1d3defa1fe7dc316d。一次左右翻页、底部上滑搜索、Dock设置与BACK返回实屏通过，同PID27207，崩溃缓冲无新增（存量DisplayStreamer错误不是Launcher崩溃）。普通input swipe未触发翻页／搜索，排除该输入路线后复用既有稳定downTime的TouchInput完成，不重复查生产搜索逻辑。未改主题／宫格／动画／权限／默认HOME／布局，最终回到测试前第三页；本批探针与输入DEX均清理。
- **剩余／风险：** 未验证故障iQOO／Mali、Android15／16／17集成、完整Launcher同进程EGL恢复或长稳；本次只关闭公共Mesh的确定缺口，不关闭百叶窗／翻页问题。下一处先核ShadowManager的WX与EGL关联，再处理FBO／深度附件，停止重复本批同条件测试。原暂存内容保留，未提交／推送；仅更新本日志及专项计划，MEMORY.md未更新。

### 2026-11-01

#### 应用自行隐藏／更换启动图标：补齐组件变更同步

- **根因／修改：** X200s 的 Aurora 10.1 仍安装，但 SkinInfoActivity 已被应用禁用；旧 InstallManager 将无 Launcher Activity 当安装未就绪重试，非首次安装仅保留旧项。CHANGED／REPLACED 现经既有 LauncherModelRepository，在原版 DB worker 读取同包完整行及公开组件状态，复用 data/A 的原版更新／迁移／放置执行器；禁用入口清理前再次确认，查询异常／未知删除／挂起／跨用户包保留，不伪造 Package REMOVED_CONFIRMED。模型就绪时补清已经残留的禁用入口。未新增 Manager、Service、轮询或权限。
- **验证／边界：** 生产组件保护30项、原卸载保护188项及原动画／身份检查通过。Aurora itemId=91 的失效入口已消失，应用仍安装。独立测试 App 自己切换别名，实际蓝A→绿B、同位置名称／图案更新、隐藏消失及重新启用恢复；留有实屏。补验点击时曾受页位置和已有任务恢复影响，未将失败的自动点按当生产启动故障，也未宣布全部启动矩阵通过。测试 App 已卸载。证据及限制见 [报告](../../build/component-refresh-20261101/REPORT_ZH.md)。
- **恢复显示说明：** 这版 Aurora APK 只有禁用主入口的 Hideicon，未提供启用调用；“返回主页面”只启动已禁用 Activity。已更正“关闭隐藏开关即可恢复”的说法。本机普通 ADB enable／default-state 均被系统拒绝；普通恢复需卸载后重装 Aurora，可能丢失其自身设置，不需卸载 Poweramp。本轮未卸载或清除 Aurora 数据。MEMORY.md 未更新。

#### 默认圆框：保留完整的不规则透明图稿

- **根因／修改：** 旧 v13 在完整底板判定失败后仍添加浅色圆底，导致 Smartisan模块的透明重绘图标被装进圆框。DefaultIconCircleRenderer 复用原有完整底板分类：方形／圆角／完整圆底继续原路径，不符合底板的 legacy 透明图稿保留完整画布、轮廓和边距；空图保持透明。未改光影算法或几何 Owner，版本升 v14 使最终纹理键失效，保留248 Alpha门槛、完整底板Shader及API26门控。
- **验证：** X200s 原生Canvas127项、实际DEFAULT来源回退334项通过；从已安装 Smartisan模块读取真实APK PNG，新输出与同源规范画布逐像素一致（0差异），旧输出53918像素不同。生产投影缓存477项通过，另用该模块旧圆底／新透明轮廓验证8层全部重建，和强制参考逐像素一致，合计522项。仅RGB改变、Alpha不变时复用遮罩是现有正确行为；主图／颜色经原版更新路径刷新。原图、前后结果和日志见 `build/smart-circle-20261101/`。
- **边界：** 上述为真实Android Bitmap／Canvas／遮罩文件检查，不等于持机传感器到GPU的全部可见投影验收；跨ROM、分身及完整新旧Android矩阵未完成。既有用户修改保留；MEMORY.md未更新。
- **交付：** 整合包正常构建、v1／v2／v3签名、16KiB ZIP对齐及X200s保留数据安装通过；拉回安装包与构建包SHA256一致（021ef44c…6822cd），相较任务前正常包仅classes.dex／classes2.dex改变（排除签名）。设置页实读为“圆形”、感应光影开启；[最终实屏](../../build/smart-circle-20261101/desktop-module-final.png)同时显示BieCuiLe圆形底板和Smartisan模块透明原形，没有更改最终开关选择。[产物与检查](../../build/smart-circle-20261101/final-proof.json)。崩溃缓冲另有系统media.swcodec／libvpx溢出，未将它当Launcher崩溃或宣称整机无新崩溃。

#### X200s系统升级后高刷：已取得系统touch选择90Hz的直接事件，规则命中待核

- **设备／版本：** 用户确认当前X200s的开发者刷新率显示由120降为90／60；ADB实际V2458A、Android17／API37、PD2458C_A_17.2.11.2.W10。手机原安装包SHA256为87ca6d81，虽同为1.6.0-T但早于当前工程；先保留数据安装当前正常e5a093b1，再做单变量对照，不混算版本。另一台X21A未操作。
- **实证：** 智能适配下，窗口preferredRefreshRate=120.00001、GL Surface requestedFrameRate=120，系统支持同分辨率120／90／60但实际mode3、SF renderRate=60；3次ADB滑动均60，用户手动滑动报告90。系统DisplayInfo的high类别为90、hasArrSupport=false，不把该类别单独认作完整因果，也不把静止60当动画只能60FPS。读取系统设置页确认选中“智能适配”；系统页说明其自适应场景，应用帧率请求不突破系统设置。证据集中 `build/refresh-upgrade-20261101/`。
- **请求候选／撤回：** 临时同分辨率preferredDisplayModeId=1，WindowManager确认收到120Hz模式，3次ADB滑动仍60；另临时在API35+给GL View及Decor设置setRequestedFrameRate，智能模式静止仍60。两份诊断包正常构建并保留数据安装，仅用于因果对照，均不保留生产。原版clean_raw／maintained没有现代Surface刷新率API请求；原主APK当前缺失，没有改原版引擎时钟、动画参数、私有接口或添加机型白名单。
- **系统设置对照：** 沿用此前同V2458A临时刷新率对照授权，把“智能适配”临时改为“高（最高120Hz）”，View候选实际120；随后回装完全未改高刷代码的正常e5a093b1包，3次滑动SF均120。恢复原智能适配后实际再回60。此对照只证明切换全局模式可使桌面达到120，不能解释同一智能模式下QQ与桌面不同，不能据此关闭兼容问题；新增请求改法未准入，不宣称恢复为高可保证所有机型／所有场景。只读取设置页、切换获授权的刷新率模式，不改其他设置／默认HOME／权限／布局，不进入工程模式。
- **收尾／边界：** 高刷源码逐字恢复到本批前，四份正常构建产物恢复；当前手机拉回包SHA256确认为 `e5a093b11c55533a83fac87017c883f8eb7711727379f3bdacbed7c6fa19f4ba`，仍1.6.0-T／34。正常v1／v2／v3签名、16KiB ZIP对齐、既有34项Window／Surface受控检查通过。系统页XML确认恢复智能适配，临时设备XML清理；[对照汇总](../../build/refresh-upgrade-20261101/proof.json)保留全部候选及正常包边界。SF选择／开发者Hz不等于呈现FPS；未测稳定120FPS、温控、长稳或其他ROM。本批不新增生产修复，仅更新日志与计划，MEMORY.md未更新。
- **用户纠正／同模式实证：** 用户补充同一智能模式QQ手动滚动120、桌面手动翻页90，原“主要是智能适配策略”的结论过早，明确撤回完整归因。先做ADB模拟触摸，两者均60，该输入未复现触摸升频，不能否定用户观察。随后由用户实际滑动，约35秒被动采集仅保存前台应用和SF renderRate：QQ在3.31–14.33秒共15个样本均120；切回桌面中途出现搜索页，已按焦点隔离；真实GL主页4.10秒短暂120，4.89–14.48秒13个样本均90，尾段回60。当前同一正常e5a093b1、同一智能模式，确实存在应用／交互路径差异，非仅全局最高120设置问题。原始数据 `physical-qq-compare.json`、[摘要](../../build/refresh-upgrade-20261101/physical-summary.json)保留全部时间点，不当作呈现FPS统计。
- **当前定位边界：** Window／Surface请求120已确认；系统允许面板120已确认；QQ持续手动滚动120与自绘GL主页持续90已复现。厂商应用分类／独立限帧与自绘滚动未触发新系统持续高刷识别仍是候选，尚无直接策略日志，不能任选其一当根因。mode编号候选曾收到用户手动90反馈；View候选只测了静止及全局高模式，未完成真实手指同条件对照，撤回不等于证明它在所有交互中无效。当前SMGLSurfaceView触摸仍经原GLSurfaceView分发，未见新增固定90限制，本轮不凭猜测新增触摸增频、私有API或更换动画时钟。问题保持开放，下一步对齐真实手指输入／应用分类／GL提交与SF选择，先确认限制落点再窄修；源码与正常包未再修改，系统设置未再调整，最终留在锤子桌面。
- **系统策略只读审查／诊断受阻：** 从当前手机拉取vivo-services.jar后只读解码，确认WindowRequest先以优先级10接收应用请求，XML条目优先级不低于它时可覆盖reqFps，且另有touchMinFps／touchMaxFps；这只是确定的策略优先级，不等于已查到Launcher的90Hz条目。继续追踪发现mFrameRateOverrides来自DisplayEventReceiver.FrameRateOverride，不把它误说成已发现独立的厂商限帧表。详细入口应为`dumpsys rms --display --window-settings`，`vivo_rrm`本身只打印简介；正确入口实测被isAllowDump门控。用户授权临时诊断后，仅尝试写persist.sys.rms.allow_dump=true一次，系统明确拒绝，复查原空值未变，无需额外恢复；未尝试其他属性、提权或修改限帧命令。QQ／桌面实时XML、触摸上下限及优先级仍未取得，不能归因为白名单。证据`build/refresh-upgrade-20261101/oem-policy-findings.json`。高刷生产源码仍与本批前逐字一致，本次未构建／安装新候选，问题未关闭。
- **View候选真实手指补验：** 复用既有da8f7b1c诊断包，与正常包比较非签名成员仅classes2.dex不同，生产源码保持原样。用户实际连续左右翻页反馈仍90Hz，View数值请求候选未解决本机问题，不准入生产。同期被动采样误用`dumpsys window windows`，该ROM不返回mCurrentFocus，全部焦点为空；其60／瞬时120样本不作目标交互证据，不能据此否定用户90反馈。已确认应使用`dumpsys window`，不为补无效样本再让用户重复相同实验。证据`build/refresh-upgrade-20261101/view-physical-result.json`；用户确认安装后，正常包回装成功，重新拉回APK核对SHA256为e5a093b11c55533a83fac87017c883f8eb7711727379f3bdacbed7c6fa19f4ba；焦点已回到smt_launcher，诊断属性仍原空值。
- **平台边界：** Android官方明确preferredRefreshRate／preferredDisplayModeId是偏好，系统可不采纳；应用应在允许范围内申请、按实际节奏推进，不能承诺所有手机始终达到面板最高频率。参考[窗口刷新率API](https://developer.android.com/reference/android/view/WindowManager.LayoutParams#preferredRefreshRate)及[自适应刷新率](https://developer.android.com/develop/ui/views/animations/adaptive-refresh-rate)。
- **自动复查／呈现间隔：** 再次连接同一V2458A／API37，前台smt_launcher窗口仍请求120.00001Hz，GL Surface仍请求120Hz；该窗口`frameRateBoostOnTouch=true`，公开Display的`mFrameRateOverrides=[]`，因此没有依据再加触摸开关或认定存在当前UID覆盖。保持系统设置、APK及布局不变，自动成对左右翻页；有效四组各63个新增呈现时间戳，组内间隔中位数16.650–16.654ms、无100ms以上间隔，同期SF均60Hz，只证明ADB注入输入下呈现节奏与系统选择一致，不证明真实手指90Hz原因或稳定120FPS。Android17的`--list`输出带RequestedLayerState包装，首次未去包装／未正确引用层名得到零帧，该结果无效；按包含`#id`的准确层名及shell引用纠正后才取得上述数据。[有效结果](../../build/refresh-upgrade-20261101/selfcheck-result.json)、原始latency、SF及Window证据均以`selfcheck-`命名。系统在线配置路径`/data/bbkcore/sceneconfig.0.xml`所属目录只读列举也被拒绝，未绕过权限或再写属性；未新增生产修复、未构建／安装，MEMORY.md未更新。可用临时方案仍为此前已验证的系统“高（最高120Hz）”，智能模式兼容根因保持开放。
- **AT_LEAST专项A/B／未准入：** 公开main、HEAD、origin/main均为4e171048，三个刷新率入口及Surface脚本本批前与main一致；未发现所述AnimationFrameRateController／GL frameIntervalEma实现。系统普通设置页“使用高刷新率的应用”中锤子桌面已存在且开启，未改应用开关，检查后恢复智能适配；不能再归因为漏开可见开关。API36+仅将Surface DEFAULT改为AT_LEAST，API30–35保留原策略、seamless／同分辨率最高值／Window逻辑不变；系统SF实际收到120Hz／Gte。A／B各5组成对ADB翻页、10个样本，SF呈现分别59.09–60.06／59.11–60.08FPS，系统均60Hz，前后静止均60；这不是GL回调FPS，也不能否定真实手指路径可能不同。B安装后首次采样碰上Surface重建，旧层零帧结果无效，已用稳定新层重测全部样本。保存完整[专项报告](../../build/refresh-upgrade-20261101/AT_LEAST_REPORT.md)、候选源码／APK及ADB原始证据。候选正常构建、v1／v2／v3签名、16KiB对齐及保留数据安装通过，非签名ZIP仅classes2.dex变化；现有两份测试扩展支持A/B源码，35+47项两种策略均通过，补齐Surface旧脚本原已缺失的Activity／ContextWrapper替身。用户随后回复并完成真实手指补验：A桌面前台54样本均90Hz，另2个其他应用前台样本排除；B全程桌面前台54样本中26个90Hz、后段28个60Hz，无120Hz。按新增SF呈现间隔，A／B的90Hz阶段中位数均约11.10ms（90.09帧/秒），仍不代表GL回调FPS；B后段60不据此认定持续触摸退化。证据`atleast-physical-summary.json`及原始样本同目录。补验后再次回装正常包；未完成12场景五次矩阵、功耗或多版本真机验收；USB满电短测不作功耗结论，无有效120Hz验收录像。候选不作生产修复，刷新率源码逐字恢复、正常四产物及正常包回装；保留测试支持与证据，不新增动态调度／轮询／Service、不改引擎。问题保持开放，MEMORY.md未更新。

- **系统决策轨迹／限制点已定位：** 本轮使用系统Perfetto公开诊断入口，无生产改动／安装／系统设置变更。20秒桌面轨迹明确记录system_server PID1908／TID2040执行`performSetActiveConfig modeid:1, fps:90, handle:1908_2175, reason:touch`，同期338个真实MOVE投递smt_launcher，ActiveModeFps从60到90，GL swap起点间隔中位数16.64→11.20ms且dequeue存在等待。因此本次90Hz有系统主动选频的直接证据，不能再仅归因为Launcher画不动或未申请高刷。45秒对照保留QQ入场转场120→桌面获焦点→touch90；不能把转场120误写为QQ触摸请求的原因码。与设备哈希一致的vivo-services代码核对到InteractionScene输入场景及窗口touchMaxFps链路，但当前命中XML、flags及调整配置仍不可读，不把白名单、第三方HOME分类或high类别90任选其一当最终根因。两份轨迹均记录采集局限：长轨迹有缓冲覆盖，短轨迹无覆盖但存在11个discarded chunks，保留事件有效，不依据缺失事件排除其他分支。[中文报告与证据](../../build/refresh-upgrade-20261101/SYSTEM_DECISION_REPORT_ZH.md)列出时间戳、GL／呈现区别和厂商需核对的配置；尚无满足约束的应用侧已验证修复，不宣称OTA一定可解决。未进行功耗／多版本验收，MEMORY.md未更新。

- **窗口标题匹配续查／诊断包待设备：** 公开`rms --promotion-settings`只读入口返回空表及Version:-1；完整缓冲按RRM标签过滤的logcat为零字节，不据此认定规则不存在。系统WindowRecord.getSettingsLocked确认先精确／前缀匹配窗口标题，再包名／前缀，最后common；主窗口`smt_launcher`来自原版ua.1，J中的launchpad不是主窗口。尚无证据证明旧标题命中90Hz规则，但可进行独立因果对照；因此“只能等待厂商配置”的路径判断应收窄。已生成仅API37+将标题改为自身真实组件名的诊断包，包名／Surface DEFAULT／Window120／渲染动画不变；不伪装其他应用。正常构建、v1／v2／v3签名及16KiB对齐通过，非签名成员仅classes.dex改变，证据`title-artifact-proof.json`。X200s当时已从ADB消失，只剩X21A，本批未操作其他设备、未安装候选；源码和四正常产物已逐字恢复。[中文报告](../../build/refresh-upgrade-20261101/SYSTEM_DECISION_REPORT_ZH.md)补充A/B/A验收条件；无真机结果，不准入生产，MEMORY.md未更新。

- **标题候选自动补验／撤回：** 用户要求后续全部自行测试，不再请求手指操作。重连核对正常包和智能模式后，标题候选实际安装通过；首次往返滑动出现A60／B120／回装A仍120，完整重启后的A亦120，未建立标题因果。正常包轨迹另记录到windowMinFps60及UserSetting120，含快捷桌面PopupWindow，截图确认仅按smt_launcher焦点不能排除混合场景；最初120不计标题收益。随后固定每次HOME归位、仅向左翻页并保存画面，A／B／回装A各5个有效呈现样本均60.06–60.08FPS、系统60Hz、静止60，见`title-workspace-summary.json`。普通注入仍不替代既有真实touch90路径；无状态底层事件写入探针权限拒绝，未ROOT或提权。标题候选不准入、正常包已回装并核对e5a093b1…19f4ba，生产源码／正常四产物保持原样。仅更新[专项报告](../../build/refresh-upgrade-20261101/SYSTEM_DECISION_REPORT_ZH.md)与本条；MEMORY.md未更新，问题仍未根治，不重复同一候选。

- **uinput自动复现与识别候选排除：** 用户要求无需其操作，改用系统自带uinput、shell现有权限注册临时DIRECT触摸设备，确认映射内屏；正常包5次均复现触摸90Hz、静止60Hz，区别于普通ADB swipe的60Hz。标题、GL View语义基类、真正触摸Owner RootView语义基类及正常包应用高刷开关关／开后恢复智能模式，分别5次仍90Hz；候选均撤回。新读取的本机Framework确有按View及父类名称识别滚动组件，以及厂商isRespectAppRequested门控公共dVRR的机制，但候选没有恢复120，不能把类名差异当最终根因；实时VSPA／RRM配置仍未取得，未写新属性、ROOT或隐藏API。正常构建、签名／对齐及保留数据安装通过，原生产源码／四产物与正常e5a093b1…19f4ba均已恢复，各组临时输入设备已注销；[自动汇总](../../build/refresh-upgrade-20261101/uinput-final-summary.json)及[最小复现说明](../../build/refresh-upgrade-20261101/VIVO_ENGINEERING_REPRO.md)留证。没有根治、功耗或跨版本通过结论，MEMORY.md未更新。

### 2026-10-28

#### 默认圆框：修正真实音乐／日历底板误判及旧边缘重复绘制

- **实际复现／根因：** 从X21A／Android9的真实Launcher组件按现有640dpi APK资源路径读取音乐 `com.android.bbkmusic` 与日历 `com.bbk.calendar`，旧v12重放准确出现内层圆角矩形及白色外圈。音乐第一条不透明横截面宽86／256，小于旧35%门槛而被拒绝；日历底板内部一个Alpha249像素低于250，被误认为真实镂空。另确认底板Shader已经包含完整图案，随后再次绘制原Bitmap会叠回旧圆角的软阴影／轮廓。证据 `build/circle-plate-20261028/`，含两份原始PNG、修前／修后及[同源对照图](../../build/circle-plate-20261028/comparison.png)。
- **最小修复／文件：** 生产只改 `DefaultIconCircleRenderer.java`：近不透明底板阈值248；已有高覆盖、连续、对称、单调及中段完整轮廓约束保留，删除多余的35%首横截面限制。确认底板的既有Shader绘制完成后不再叠画原图，保持原前景矩阵及源Bitmap所有权；真正镂空、不规则／含歧义圆形、角落图案及成功命中的managed来源保持保守规则。VERSION升v13使旧最终纹理键失效；不清用户数据、不新增缓存、不放大或中心裁掉前景。对照clean_raw圆形clip／Bitmap绘制与maintained IconManager来源管理，均无当前智能底板分类器，不替换原版核心；原版APK当前缺失。
- **验证：** 扩展原有 `DefaultCircleProbe.java`、`CircleVisualProbe.java`、`run_device_tests.py`，后者支持真实组件资源重放。Android9原生Canvas127项通过，覆盖窄首行、249像素、源软阴影，legacy／adaptive、128／256／384画布，且借用源像素不变、完整前景／真镂空负例保留；旧渲染器新增负控在白圈断言准确失败。334项有效DEFAULT回退策略通过；两枚实际资源原始PNG前后相同，修后不再出现内层圆角边／白圈。测试允许Skia预乘取整的每通道2级差，不将其当形状退化。
- **构建／真机：** 正常构建、v1／v2／v3签名、16KiB ZIP对齐通过，仍1.6.0-T／34；较上一批非签名成员仅classes2.dex变化，资源／Smali／原生库不变。X21A保留数据覆盖安装并拉回核对SHA256；真实桌面音乐红底铺满圆形，日历旧轮廓消失；翻页、底部上滑搜索、设置和BACK返回通过，同PID27997、崩溃缓冲无新增。首次相邻脚本未确保Launcher前台，后续2240底边滑动被系统HOME接管，均未计通过；显式启动Launcher并复用已验2180入口后完成回归，不改默认HOME。
- **交付／边界：** [当前测试APK](../../build/circle-plate-20261028/launcher-1.6.0-T.apk)，SHA256 `e5a093b11c55533a83fac87017c883f8eb7711727379f3bdacbed7c6fa19f4ba`，[验证汇总](../../build/circle-plate-20261028/proof.json)。未拖动图标、调整主题／图标来源／布局／权限／默认桌面；本轮开始时Dock已为设置左／电话右，未按上轮截图回改。临时DEX与PNG清理；原版DT1902A虽连接但未操作。本次确认修复截图同源的两个实例，不宣称所有机型／所有图案完美；三星实际资源及Android15／16本批集成仍待验，图案自带白色设计不无条件删除。仅更新本日志与计划状态，MEMORY.md未更新。

#### 长按桌面设置：禁止通过桌面自身入口卸载Launcher

- **根因／参考：** 原版公共删除资格 `e/s.j(ItemInfo)` 依赖原系统数据与isCanUninstall，未显式排除自身；移植为普通用户应用后，桌面设置指向Launcher自身，跨ROM卸载桥也未拦截该包。已对照clean_launcher_raw相同资格方法及maintained系统应用身份判断；原版APK／clean_launcher对应文件当前缺失。无需伪装系统应用、改数据库或改变其他应用身份。
- **最小修复／文件：** `UninstallCompat.java` 共用精确包名判断，包名及Item两条入口在发起系统卸载前拒绝自身并复用原取消场景；已有其他卸载待确认时不打断它。`e/s.smali` 在原公共删除资格方法最前返回false，覆盖长按菜单及桌面／文件夹拖动入口，后续原规则逐字保留。主题包、普通应用、快捷方式及多用户隔离逻辑保留；只限制Launcher内的自身卸载，系统设置卸载能力不变。
- **验证：** 扩展已有 `test_uninstall_bridge.py` 和 `UninstallTargetProbe.java`；旧桥在新增自身保护断言准确失败，修后包名／Item自身拒绝、普通应用、主题包、确认取消及失败回退通过，既有用户目标95项及Smali执行器回归通过。X21A／Android9真实Intent／Parcel受控46项通过，发起被测试替身拦截，不实际卸载应用。首次设备脚本因Launcher未运行停在pidof，随后直接运行相同DEX；预期计数误写53已按实际46校正，不重复采样凑结果。
- **构建／真机：** 正常构建、v1／v2／v3签名、16KiB ZIP对齐、1.6.0-T／34通过；较上批仅classes.dex／classes2.dex改变，原生库资源不变。保留数据覆盖安装并拉回核对哈希；长按及拖动桌面设置后出现原版“该应用程序无法被删除”提示，未进入系统自身卸载。设置打开、翻页往返通过，同PID23841；默认HOME仍为测试前vivo，未更改。普通应用真实卸载确认／取消UI未验，不能用受控Intent替代。
- **恢复／交付：** 拖动回归曾误改首页顺序和Dock顺序并生成临时文件夹，已解散文件夹并按测试前截图恢复图标顺序，最终实屏留证；未卸载任何包。首次触摸工具漏传swipe参数产生shell探针异常，修正后设独立UI基线，后续崩溃缓冲无新增，非Launcher崩溃。本次设备临时DEX已清理，暂存区不变。证据 `build/self-uninstall-20261028/`；[测试APK](../../build/self-uninstall-20261028/launcher-1.6.0-T.apk)，SHA256 `b571b3ebb509379da436051e89878559775974b81804635c8151380e48cc80e7`。其他ROM／Android15／16本批未验；只更新本条日志，专项优化顺序不变，MEMORY.md未更新。

#### 普通纹理：EGL换代后重建来源及隔离旧编号删除

- **确定根因：** 真实APK的Material→TextureManager→Texture在独立、不共享的GLES上下文换代后仍持有旧普通纹理编号；该编号被新上下文绿色纹理复用时，旧包实际采样为绿色。另一个负控确认释放旧描述符会删除新上下文同编号纹理。两项是受控复现，不当作Z8现场全部根因。对照clean_launcher_raw及maintained Texture／TextureManager；原版APK及clean_launcher对应源码当前缺失。
- **最小修改：** 生产仅改 `smengine/Da.smali` 和 `Ea.smali`。复用已有EGL代际，普通纹理换代后不再暴露旧ID；保留Bitmap／像素Buffer走原上传，已释放像素的旧描述符通过原Manager移除键、原来源加载器重建。构造时区分从未上传与已失效，缺失来源不逐帧重复读取；旧代普通纹理禁止GL删除，新代仍正常删除。保留原retain／recycle规则，不新增Bitmap缓存，不改图标裁剪、阴影、几何、Shader或动画；离屏目标继续原Owner委托，不宣称修复FBO。
- **受控验证：** 扩展既有 `MaterialBindingProbe.java` 与 `run_binding_state_tests.py`。API35 SwiftShader普通纹理恢复48项、删除19项通过，旧包负控分别命中串图及误删；共享来源每代只重建一次、保留像素及别名身份不变、Buffer重新上传、缺失来源不反复解码通过。真实APK Material／TextureManager／Texture执行，测试专用World路由仅接入真实Manager，hb来源受控；不等于完整Launcher同进程EGL恢复。Shader292项、绑定402项回归通过。
- **产物／界面：** 根目录正常构建、v1／v2／v3签名、16KiB ZIP对齐、1.6.0-T／34通过；较Shader修复包非签名成员仅classes.dex变化，原生库不变。API35 ARM64翻译保留数据安装并拉回核对哈希；四页12宫格三动画共18次停稳切页、6组快速反向及搜索、真实系统设置结果、Dock设置、HOME键返回通过，同PID11594，停稳页面／最终首页与修前Golden内容区域像素差0，崩溃缓冲无新增。默认动画已恢复；HOME键不代验全面屏手势。
- **交付／剩余：** [当前测试APK](../../build/texture-context-20261027/launcher-1.6.0-T.apk)，SHA256 `2046688d9d5c0f50828d44e86d9a49ec669fbf3cf2bd822f48175c50620c1767`；[验证汇总](../../build/texture-context-20261027/final-proof.json)及负控／源码／产物证据同目录。真机未操作；Z8／Mali、真实ARM64、Android9本批集成、完整EGL恢复及S20 Pro手势仍待验。收尾时模拟器已断开，两份测试临时文件尚未清理，待该AVD接入后仅移除本次文件，不重跑已通过测试。暂存区未变；仅更新本日志与计划，MEMORY.md未更新。

### 2026-10-27

#### Android15模拟与公共绘制兼容审查

- **参数／环境：** 已读取[iQOO Z8官方参数](https://www.vivo.com.cn/vivo/param/iqooz8)：V2314A、天玑8200／Mali-G610 MC6、1080×2388、最高120Hz、8／12GB RAM；官网为出厂Android13／OriginOS3，不作为用户升级Android15的版本证明。独立AVD使用核对SHA1的Google API35 Play镜像，实际API35、1080×2388、活动显示120Hz；480dpi是假设、RAM受宿主余量限制为3GB。x86_64／ARM64翻译、NVIDIA／SwiftShader不能还原OriginOS或Mali，不作性能或120fps等价结论；原Android16 AVD及真机未操作。基础证据 `build/api35-emulator-20261027/`。
- **ABI确定修复：** x86_64首次启动在SceneNode之前因误入ARM64专用分配器、缺失launcher_batch_compat而失败。`NativeBatchAllocation` 改按现有ClassLoader选中的launcher_opt路径识别ABI，未知路径才看架构；其他ABI继续原JNI，ARM64翻译仍配对ARM64引擎。18个独立JVM、API19／22／23／28／35／36共496项与旧源码负控通过；API35原生x86_64及ARM64翻译实际进入桌面。初次产物79c3456f与此前1127fd75仅classes2.dex不同，原生库未改；真实ARM64门控集成仍待验。
- **公共缓冲审查：** GL封装P、实际Mesh格式x.1／数据y.1、Ca、Shader宿主sa及r／t批量材质在初查时与clean_raw一致，修前f六个公共绑定方法也一致；原版APK及clean_launcher对应文件当前缺失，已读maintained具名对应实现。API35 ART直接加载真实APK Mesh，8种格式、4／48／80顶点及三种坐标宽度72组／22140项通过，覆盖位置、UV、阴影UV、索引、步长／容量／字节序及游标复用；仅排查CPU打包，不证明GPU实际绑定正确，证据 `mesh-readonly/`。
- **纹理失败确定修复：** 受控失效Texture Owner、真实Material.Ht／Texture.Sb及独立采样shader回读证实：一层绑定失败但其他层成功时，原逻辑仍采样上张红图，像素255／0／0。仅在f.Ht失败单元解除旧GL_TEXTURE_2D绑定；正常绑定、UV／矩阵／阴影及Owner恢复逻辑不变。负控79c3456f准确失败，ce994d4c修后12组正常／缺失／恢复402项通过；三动画及搜索／设置回归通过。证据 `build/texture-binding-20261027/` 保留旧Smali、像素结果、误收安装Loading的无效基线及有效四页Golden轮。本修复不恢复缺失素材，不保证缺失采样时没有空白／黑色。
- **Shader代际确定修复：** 本轮直接复用APK真实sa／f，在独立GLES上下文销毁后保留相同对象，再创建无共享的新上下文。旧ce994d4c把正数program3视为可复用；新上下文测试绿色program也为3，实际输出0／255／0，准确复现错误对象复用。生产仅改 `sa.smali` 与 `mymaterial/f.1.smali` 的create及各一个代际字段，复用已有LauncherHomeCompat EGL计数：Shader换代清program与有效位置缓存计数，Material换代复用既有clear清其49个uniform／7个attribute位置。不删除新上下文中的旧数字ID，不改shader源码／原生库／几何，不新增Manager或GL查询；同代际保留原缓存。SceneNode原本每次绘制前即调用Material.create，Gaussian代理create继续进入已有内部Material；原版sa没有此代际门控，maintained显式delete清缓存仅作参考。
- **Shader验证／产物：** 扩展上批两份 `tools/tests/icon_illumination/MaterialBindingProbe.java` 和 `run_binding_state_tests.py`，编译桩不进入DEX。API35 SwiftShader四个独立上下文、两个Material共享Shader、每代20轮重复准备共292项通过，含新program红像素、两层缓存失效、同代不重建／不清缓存、新上下文无关program不被误删；旧包负控准确失败。纹理绑定402项再次通过。正常构建、v1／v2／v3签名、16KiB ZIP对齐及1.6.0-T／34通过；较ce994d4c非签名成员仅classes.dex改变，原生库不变。当批[Shader修复APK](../../build/shader-context-20261027/launcher-1.6.0-T.apk)，SHA256 `5c32505f724a89eea5d9ab53ca8928ae6b89beea2b660ed76b641b29a0546d0b`，安装拉回核对一致，证据 `build/shader-context-20261027/`。
- **本轮界面／路线边界：** API35 ARM64翻译保留数据安装后，四页12宫格三动画各6次停稳翻页、2组快速反向通过，停稳内容与修前Golden差0，动画轮同PID9710。额外CLEAR_TASK尝试触发与clean_raw一致的Launcher.onDestroy→J.c→ua.dc主动kill，9710变10641且首页恢复，不能计为同进程保留Shader的EGL验收。随后10641内搜索、真实系统设置结果、Dock设置、HOME键及翻页通过；生成的底部滑动实际进入AOSP Recents，未计为HOME手势通过，也不据此修改导航。崩溃缓冲无新增，既有PID7012为上批故意失败的探针，非Launcher。默认动画恢复，设备临时文件清理、暂存区不变；final-proof.json分别保留有效与不适用路线。
- **开放范围／停止条件：** 宿主GPU加录屏旧轮仅默认动画完成，百叶窗中全虚拟机／ADB无响应，不能判为Launcher崩溃或由软件轮成功反推单一GPU／录屏原因。Z8现场仍未复现，不能把受控纹理失败或上下文重建当其全部根因；S20 Pro手势空档、普通纹理／VBO／离屏目标随EGL失效、跨ROM／真实ARM64／Android9本批集成仍有未验范围。不重跑纯CPU或同一正常动画来冒充目标机证据；普通纹理后续处理见10-28记录。只更新本日志及计划，MEMORY.md未更新。

#### 定位：融合服务拒绝时保留权限内的provider回退

- **根因／修改：** `WeatherBridge.requestSingleLocation` 在Criteria融合请求抛SecurityException后立即结束，未区分“COARSE权限已撤销”与“融合provider拒绝但网络provider可用”。受控案例复现后，仅在此异常分支复查已有 `hasLocationPermission`；权限仍在时进入现有enabled-provider循环，权限撤销仍立即报错。原20秒期限、单个listener、清理／迟到回调防护、GPS精确权限门控和手动城市优先不变，不新增provider系统或扩大权限。原版依赖独立天气服务、maintained沿用粗定位许可和末次位置；本次复用当前兼容层，未搬换天气核心，原版APK当前缺失。
- **验证／文件：** `tools/tests/oem_compat/run_tests.py` 扩展实际方法摘录，修前在融合拒绝／网络可用断言准确失败；修后336项通过，覆盖API23／28／30／31／35／36条件、粗定位网络成功、无精确权限不转GPS、真实权限撤销立即停止及后续重试。Android9真实LocationListener接口7项通过，服务／权限／偏好仍为替身，不能说已验证真实定位。生产仅改WeatherBridge，另改该测试脚本；相较本轮前b34a9d48正常包，非签名APK成员只有classes2.dex改变。
- **构建／相邻回归：** 正常构建、v1／v2／v3签名、16KiB ZIP对齐、1.6.0-T／34通过。X21A／Android9保留数据安装并拉回逐字节核对；翻页、文件夹、底部上滑搜索／系统设置结果、Dock设置和HOME通过，同PID18446、崩溃缓冲无新增。不修改主题／宫格／动画／权限／默认HOME／定位开关；没有在该机启用真实定位冒充S23现场测试，设备临时文件已清理，暂存区不变。
- **交付／风险：** [测试APK](../../build/android15-compat-20261027/launcher-1.6.0-T.apk)，SHA256 `1127fd752c3b468d11c59ee25bd0cdcdd017962d7a80470b7d48471962e461e0`，包含上一批圆框v12修复。证据 `build/android15-compat-20261027/`，含负控、原生接口、签名及[相邻实屏](../../build/android15-compat-20261027/device-review.png)。S23／其他Android15真机的provider状态、实际定位回调与天气请求未验，不能认定这就是全部自动定位失败的原因；ROM拒绝所有provider仍会报错并清理。仅更新本日志和计划，MEMORY.md未更新。

#### Android15新视频：Z8公共翻页串图与S20 Pro手势返回空档

- **证据／分类：** 用户确认两段视频均为最新1.6.0-T、Android15；第一段为iQOO Z8，第二段为vivo S20 Pro，未取得故障机ADB属性或APK哈希。Z8可见翻页中的图标区域混入其他图标碎片／黑色矩形；用户补充默认动画也不正常，因此转查公共纹理、UV、变换及投影绑定，不能只按百叶窗缺陷处理。S20 Pro明确为底部全面屏手势：抽帧2.65–3.15秒未见首页图标，3.25秒恢复；这不是已量出的Surface丢失时长，视频不足以判断进程重建、窗口可见性或Wallpaper图层归属。
- **原版与边界：** 只读对照clean_launcher_raw，r／t批量材质与原版一致，f包含既有投影／生成纹理恢复，g包含既有投影偏移shader兼容修改；这些差异不等于已确认根因，本轮未修改材质、shader、原生库、HOME或动画。视频约30fps且经压缩，不能测手机刷新率；第二段容器android标记为16，与用户系统说明不一致，按“用户报告15、待设备属性确认”记录，不凭编码元数据改判系统版本。
- **验收／后续：** 两项均未修复，先查Z8所有动画共用的纹理／UV及投影绑定，再按S20 Pro实际手势对齐Activity→Surface→首个有效buffer→SF可见画面；既有Android9／16通过不外推这些故障机。证据同目录的 `video-findings.json`、[Z8抽帧](../../build/android15-compat-20261027/video-1-detail.jpg)及[S20 Pro抽帧](../../build/android15-compat-20261027/video-2-detail.jpg)。兼容验收按同一APK哈希、ROM/API、GPU／驱动、宫格／主题、导航路线及定位provider分开记录；保留原版核心，能力／失败回退由现有兼容Owner承担，不新增机型白名单、随机延迟、页数限制或禁用效果。

#### 默认圆框：补齐组件无法解析时的应用级资源回退

- **确定遗漏／边界：** v11只在存在ResolveInfo时优先读取APK资源；`loadIconForComponentSource` 和 `loadDefaultIconForDesktopItem` 的无组件分支仍直接调用 `PackageManager.getApplicationIcon`，可能重新引入ROM包装图案。新增受控的“Activity解析失败但应用仍存在”案例，修前代码在原始资源优先断言准确失败。这是已复现的代码遗漏，尚不能认定就是S25U截图的唯一根因；当前未连接三星，未取得其真实组件／icon／roundIcon与包装来源。
- **最小修改／文件：** `MaintainedLauncherSettingsHost.java` 将已有原始资源读取收为私有共用方法，两处无组件分支经应用元数据读取同一640dpi资源；组件资源及resolve命名空间优先级保留，资源／包／权限不可用或icon为0时沿原系统回退，分身用户已找到的图标继续原路径。原helper需要ResolveInfo，不能直接处理无组件输入，因此复用内部资源操作而不伪造Activity。`DefaultIconCircleRenderer.java` 仅VERSION改为v12，使旧最终纹理键失效；裁剪、颜色、阴影、白色素材及绘制算法未改，无新Manager／缓存，也不清用户图标数据。
- **回归脚本／结果：** 扩展 `tools/tests/oem_compat/run_tests.py` 的实际摘录方法，114项通过，涵盖组件／应用资源、规范密度、资源缺失／拒绝、空输入和分身优先；旧源码负控命中上述遗漏。`icon_metadata/run_key_source_device_tests.py` 仅补新依赖的夹具与版本失效断言，Android9两次新ART进程各480组／1685项通过，圆框版本、开关、来源更新和来源缺失改变相应键；受控Owner检查不等于三星资源验证。Android9原生圆框回退策略334项通过，裁剪源码除VERSION外与修前完全一致。
- **构建／真机：** 正常构建、v1／v2／v3签名、16KiB ZIP对齐、1.6.0-T／34检查通过。X21A／Android9保留数据安装并拉回核对哈希，相较87ca6d81非签名成员只有classes2.dex改变。20宫格原布局下，翻页、文件夹、底部上滑搜索／系统设置结果、Dock设置和HOME通过，同PID17119、崩溃缓冲无新增；第二页抽检区域与修前像素差0，不扩展为整屏／全部图标一致性证明。无组件分支由受控案例验证，本机正常组件路线只作相邻回归。
- **交付／剩余：** [测试APK](../../build/default-circle-source-20261027/launcher-1.6.0-T.apk)，SHA256 `b34a9d485419cd04e7959d2257162093555d5667ae48ed89cd7ec91c02e780a4`；完整证据 `build/default-circle-source-20261027/`，含旧源码负控、资源／键检查、签名、产物及[实屏](../../build/default-circle-source-20261027/final-review.png)。未改手机主题／动画／宫格／权限／默认HOME／快捷桌面开关，临时触摸文件已清理，暂存区不变；仅更新本日志及计划，MEMORY.md未更新。三星实际素材、平台选中的icon／roundIcon、分身包装和Android16／跨ROM最终像素仍待验；资源不可用时保留的系统回退仍可能带ROM外观，不强行抹除白边或内容。

#### 快捷桌面：首次布局／绘制耗时归因

- **范围／证据：** 复核10-26正常87ca6d81包在V2458A／Android16的现有五份首次打开atrace，不新增设备样本或把旧样本记成新回归。五份均无缓冲溢出，按同一Popup首个draw和所属RenderThread帧拆解；脚本及结果集中在 `build/quickdesktop-draw-20261027/`，主结果为 `historical-five.json`。
- **定位：** 五次实际layout为0.074／0.074／0.126／0.130／0.091ms；每次首次遍历有两次框架measure和一次layout，未见自定义重复布局循环。Popup首draw中位12.876ms，其中 `Record View#draw()` 2.259ms、`postAndWait` 9.384ms；对应RenderThread帧34.819ms，包含prepareTree 9.252ms、全分辨率1260×2800背景上传5.544ms和flush layers 19.472ms。上述包含／跨线程耗时不能相加，也不等于SF物理可见首帧或整页打开时长。
- **来源／结论：** 每份记录中同一纹理上传ID均只出现一次，全分辨率背景上传一次；这只证明当前可见标记没有重复，不扩大成所有图片来源绝无重复。当前Content无自定义measure/layout，素材在构造时加载，绘制消费现有Bitmap，普通位移不重解码；clean原版通过独立卡片树呈现，当前原版APK缺失，maintained无等价移植宿主，未以不同Owner替换当前实现。剩余主要指向首次RenderThread资源／硬件层工作，没有确认可删除的重复调用。
- **处理／边界：** 本轮不改生产、不构建／安装、不调整手机状态，不删除硬件层或新增预载／缓存；是否改变层策略需目标GPU的首帧和动画全程对照，当前未实施，首次绘制成本仍开放。静态布局／指令录制审查到此收口，不重跑Popup或裁剪实验。现有五份范围／嵌套／layout／纹理ID检查通过，APK仍87ca6d81，暂存区不变；仅更新本文及计划，MEMORY.md未更新。

#### 快捷桌面：Android9真实UI与触摸交接补验

- **基线／范围：** X21A／Android9、当前20宫格／默认动画，安装包拉回核对为87ca6d81（1.6.0-T／34）。沿已有授权将原来关闭的快捷桌面临时开启；不改生产代码、不重建或重装，不调整主题、布局、权限、日志及默认HOME。本轮是10-26裁剪修复后的旧系统UI补验，不是新的性能对照。
- **真实路线：** 首屏右滑打开后分别左滑、HOME、BACK关闭；三条路线均打开时1个Launcher Popup、关闭后0个，随后真实翻页成功。快捷桌面搜索交接时Popup为0，输入settings并实际打开系统设置，再HOME及翻页通过；文件夹开关、底部上滑搜索也通过。全程同PID4246，崩溃缓冲无新增，未复现本范围内的关闭后触摸遮挡，不据此增加无依据修复。
- **恢复／证据：** 开关恢复原关闭，实屏确认；关闭状态右滑不出现Popup，最终回到首页。设备临时XML及触摸DEX清理，暂存区不变；仅更新本文及计划，MEMORY.md未更新。证据 `build/quickdesktop-real9-20261027/`，含三条关闭路线窗口快照、搜索结果Activity、原始／恢复设置实屏及 `final-proof.json`；[实屏对照](../../build/quickdesktop-real9-20261027/final-review.png)。滚动后uiautomator曾返回空Root，未把旧XML当新状态，开关判断与恢复使用当次实屏。
- **边界：** 当前支付卡片提供方为支付宝；微信裁剪原生检查和Android16实屏结果见10-26，不声称本轮覆盖Android9微信完整UI。其他ROM、首次布局／绘制耗时及长稳仍开放；本轮通过的窗口清除／触摸／搜索路线冻结，不重复循环代替扩大覆盖。

#### 动画：Android16当前12宫格九页补验

- **目的／基线：** 补10-26按需批量分配后、最新无诊断1.6.0-T／34的Android16真实三动画短测。当前仅操作V2458A，APK为87ca6d81，12宫格、现有9页，原动画为默认0；原System／Global的 `launcher_page_animation` 均为null，已先保存界面／XML与值。本轮不改生产代码、不重建、不安装APK，不改宫格、主题、布局或默认HOME。
- **范围：** 默认0、百叶窗4、立体翻转3各完成现有9页前后翻动（8次前进＋8次后退）及4组快速反向；合计48次停稳页间翻动、12组快速反向。每动画保存17张停稳页面、4张快速反向结果，以及35秒1080×2400录屏。没有缩减页数或图标数，也未将当前12宫格的通过扩大为20宫格／任意布局证明。
- **图标／标题：** 每动画128处可见Cell标题的二值字形与默认基线完全一致，未见停稳后镜像；对应128处图标占用检查均保留图案，最低比值约0.998。12组快速反向均回到首页；停稳内容区域与基线的平均RGB差最大约0.011／255，差异限于动态时钟等，不能声称全屏逐像素相同。所抽取的百叶窗／翻转慢速区间可见旋转页片间隙，停稳后消失；本轮未复现持续黑条、整页图标丢失或标题反转，不把任何旋转间隙一概标为故障或已修复。
- **稳定性／相邻路线：** 全程同PID19906、崩溃缓冲无新增。恢复默认后文件夹开关、搜索结果启动系统设置、Dock设置、快捷桌面打开及HOME返回通过，最终无Launcher Popup残留。屏幕录制及有限抽帧不等于真实显示fps、120Hz或长期稳定性验收。
- **恢复／证据：** 选择页已确认“默认动画／当前”，动画恢复0，System／Global键恢复原null；原12宫格与布局保持，安装包SHA256仍为 `87ca6d81678d0ac7b1e3cf343a9f7a4950294e46507250e2ea7ebacde3dfb91a`。设备临时录屏／XML清理，暂存区不变，仅更新本日志与计划；MEMORY.md未更新。完整证据 `build/animations-real16-20261027/`；[百叶窗录屏](../../build/animations-real16-20261027/blinds/route.mp4)、[标题与恢复对照](../../build/animations-real16-20261027/final-review.png)。
- **剩余：** V2458A当前范围补验完成；故障iQOO11、其他GPU／ROM、20宫格、32位实装、实际16KiB内核及长稳仍未全部验收，不能关闭百叶窗全机型反馈。后续只按新风险或待验设备补矩阵，不重跑本轮72次手势冒充扩大覆盖。

#### 冷启动：首屏采样与分类方法元数据候选撤回

- **当前证据：** 在最新87ca6d81正常实现上补Android9／16方法采样，首屏GL仍主要花在图标创建／合成，以及绑定后的投影图片解码／上传。未取得可删重复投影读取的证据；图标目录拼音索引属于并行后台CPU，不能算成GL阻塞。Android16采样wall字段与标记时间单位不一致，已从分析结论排除；采样CPU与栈仅用于找Owner，不能将采样条目当精确调用次数或稳定耗时。
- **候选范围：** `resizeClassification` 每张图都反射查找同一个原版 `f.c(Bitmap)`。试验只在现有分类Owner保存固定Method，仍对当前Bitmap每次调用原分类器；未缓存Bitmap／分类结果、改色彩算法、提前释放Loading或新增Manager。clean原版直接调用该分类器；maintained是不同引擎，未替换其核心。原版主APK当前缺失，没有声称完成新的APK反编译对照。该生产候选最终撤回。
- **隔离检查：** 新增 `tools/tests/icon_raster/run_classifier_metadata_tests.py`。两台真机各1553项通过，覆盖当前像素而非旧Item颜色、空／回收输入、异常／空返回回退、失败查找重试及并发每次调用；512次普通调用的方法查找512→1，分类调用次数不减。旧源码负控在预期查找次数处失败；这是生产反射逻辑＋受控分类器，不能代替真实GPU／完整色彩回归。恢复原实现后，该工具默认控制组也通过（查找512→512）。
- **性能准入：** 两包使用相同临时启动标记，五样本未启用方法采样。中断约两小时后两台仍为同一基线、布局和解锁状态，补采修前组作为主对照；原组保留，不混算。主对照PAGE_READY中位：X21A／Android9为2156→2272ms，场景绑定1417→1447ms；V2458A／Android16为1867→1901ms，场景绑定1547→1585ms。非交错A/B，没有收益，不能以查找次数下降宣称冷启动变快，也不凭小样本断言候选造成因果退化。候选正常APK为6c4188c0，未交付；元数据复用实验冻结。
- **撤回与验证：** 生产 `IconRasterDiagnostics.java` 及临时 `LauncherStartupDiagnostics.java` 逐字节恢复，四份正常构建产物恢复为原文件。两台保留数据回装87ca6d81并拉回核对，签名／16KiB ZIP对齐通过，仍为1.6.0-T／34。恢复后Android9同PID27526、Android16同PID19906完成文件夹／翻页／搜索结果／设置／HOME；Android16另验快捷桌面打开及HOME清除Popup，崩溃缓冲无新增。最终DEX无候选字段或采样标记，设备临时文件已清理；未改主题／布局／权限／动画／日志／默认HOME，暂存区不变。
- **保留与剩余：** 本批仅保留上述测试工具和本日志／计划状态更新，未保留性能候选生产代码。证据集中在 `build/startup-gl-current-20261026/`，含完整两机30次非采样标记运行（中断前各5、续测修前各5、候选各5）及两份探索采样；这些不等于物理首帧、首次安装或全ROM验收。继续使用[正常测试APK](../../build/quickdesktop-window-20261026/launcher-1.6.0-T.apk)，SHA256 `87ca6d81678d0ac7b1e3cf343a9f7a4950294e46507250e2ea7ebacde3dfb91a`。整体冷启动仍开放；原定Android16动画补验见本日对应记录，不重跑此元数据实验。MEMORY.md未更新。

### 2026-10-26

#### 快捷桌面：窗口链审计与首次微信角标裁剪

- **定位：** V2458A／Android16正常包首次右滑的RootView输入处理约128ms，热开约0.95ms。临时分段五轮确认：每轮Popup仅创建／显示一次，构造配置中位0.065ms、`showAtLocation`约11.125ms，背景就绪回调约11.349ms；三者有包含关系，不能相加。资格检查中位约0.026ms，未删实时工作区校验或触摸交接。窗口链无可安全删除的重复显示，按计划冻结，不池化常驻窗口或改动画。
- **真实热点：** 现有微信支付角标为698×698；首次创建内容时 `loadProjectWechatBadge → cropTransparentBounds` 逐像素调用 `getPixel`，共487204次。诊断中裁剪102.830ms、内容初始化116.117ms，发生在Popup显示之前；普通关闭／重开沿用内容，不能称每次打开都会裁剪。这里是移植宿主的现有角标边界处理；clean原版及maintained没有同一宿主实现，保留原版手势、资源、布局和现有裁剪语义，未替换核心。原版主APK当前缺失，未声称完成新的APK反编译对照。
- **最小修复／文件：** 仅 `QuickDesktopContentView.java::cropTransparentBounds` 改为本次调用内逐行 `getPixels`，同一Alpha扫描及min/max边界不变；实图变为698次行读取，仅增加约2.73KiB临时行数组。空／已回收／全透明／全幅的返回规则、原Bitmap所有权和裁剪结果不变，不新增Bitmap缓存、Manager、线程或延时。Controller／Host／Capture未保留修改。
- **原生验证：** 新增 `tools/tests/quickdesktop/run_badge_crop_tests.py`，提取修前／修后实际方法，在Android9与16各通过569项检查：原PNG和140组尺寸／Alpha形状的输出尺寸、像素、返回身份及源图不变；旧方法负控在逐行读取断言准确失败。同图预热后交替调用的五样本裁剪中位：Android9为135.776→8.618ms，Android16为74.681→1.884ms；这些是该函数耗时，不冒称整页或Launcher启动指标。
- **正常包首次打开五样本：** V2458A同数据／12宫格／原微信支付配置，前后各五次新进程，桌面就绪后首次右滑；非交错A/B。最长RootView输入处理wall中位134.958→28.455ms，CPU中位134.696→28.198ms；每轮Popup显示1个、关闭后0个，证明本次减少同步阻塞。正常包与诊断包样本严格分开，不将上述数值当成SF可见首帧、完整快捷桌面显示时间、整体冷启动或120fps证明。
- **回归／边界：** Android16最终包的五轮首次开关、快捷桌面内搜索交接／结果启动、BACK／HOME、短滑反向、关闭后桌面翻页、文件夹及设置通过，同PID27367，崩溃缓冲无新增。Android9最终包文件夹、翻页、搜索结果／设置／HOME通过，同PID20701，最终回归基线后崩溃缓冲无新增；Android9真实快捷桌面UI未操作，不能由原生裁剪测试代验。实屏角标视觉正常，整屏含时钟／通知等动态内容，不作全屏逐像素相同结论。其他ROM、不同支付提供方完整UI与长稳仍待验收，剩余首次布局／绘制停顿没有关闭。
- **交付／恢复：** 完整构建、签名、16KiB ZIP对齐、两机保留数据安装及拉回哈希通过，版本1.6.0-T／34；相较4410a6ed正常包仅classes2.dex改变（排除签名），原PNG／资源／Smali／原生库不变。[测试APK](../../build/quickdesktop-window-20261026/launcher-1.6.0-T.apk)，SHA256 `87ca6d81678d0ac7b1e3cf343a9f7a4950294e46507250e2ea7ebacde3dfb91a`。诊断源码／产物已恢复，最终DEX确认无 `QuickDesktopWindowProbe` 等临时类／文件名，临时设备文件清理且tracing关闭。未调整开关／支付提供方／主题／布局／权限／默认HOME／日志，暂存区不变。证据集中在 `build/quickdesktop-window-20261026/`；MEMORY.md未更新。

#### 文件夹开关：元数据、标题纹理与建页坐标复用

- **已保留的前两批：** `Cell.draw → alignStaticIconPixelGrid` 复用既有Field／Method缓存；应用标题仅在同GO画笔身份、尺寸及EGL代际内复用现有纹理描述符，保留原释放责任。匿名诊断三轮文字上传3／3／3→3／1／1；最终代际限制通过518项标题准入、103项多页／Dock比例及29项像素／元数据检查。前两批最长帧未证明改善，不再重复计数和字段缓存实验。证据保留在 `build/folder-metadata-20261026/`、`build/folder-textures-20261026/`。
- **本批根因：** 剩余打开长帧的方法采样中，输入／打开事件约51ms CPU，建页链进入 `M.fn()`；`fa.ir()` 已返回适配后的本页坐标副本，创建循环却逐格再次执行 `adjustY`（采样约6.9ms）。原版clean实现直接消费返回坐标；当前原版APK缺失，未冒称完成APK新比对。maintained不是同一场景引擎，不替换其核心。自定义atrace分段标记在本机未出数，诊断包启动采样本身有开销，只用方法样本定位调用，不用诊断帧作性能收益。
- **最小修改／文件：** `view/b/M.smali` 建页循环直接消费已适配快照Y；空／原始数组仍走既有 `adjustY`。没有更换几何公式、跨次缓存坐标、改变图标大小／页数／动画或新增Bitmap缓存。前两批的 `F.smali`、`Da.smali`、`LauncherSettingBridge.java`、`LauncherHomeCompat.java` 保留；本批未再修改它们。测试新增 `run_position_consumption_tests.py`，扩展既有 `run_creation_gate_tests.py` 解释器。
- **行为检查：** 实际Smali分支10项、生产几何1187项、既有创建门控346项通过；覆盖适配快照、原始／空数组及普通页面。旧M源码负控在重复适配处失败。最终DEX无临时 `FolderSceneProbe`／纹理／方法采样类，诊断源码已恢复，未夹带诊断构建。
- **最终五样本：** X21A／Android9、20宫格／默认动画、原两应用文件夹，预热一次、同PID16312五轮，无atrace溢出。基线沿用紧邻前版91e38f0c同配置五样本（PID13980），**非交错A/B**。每轮最长GL帧中位：打开94.790→71.619ms，关闭53.284→59.132ms；本组打开下降，关闭未改善，**文件夹可感知停顿仍开放**，不据此宣称整体流畅度或冷启动解决。五轮开／关文件夹区域与前版逐像素相同。原始数据及CPU／缓冲拆分见 `build/folder-scene-20261026/`。
- **实机回归／工具修正：** X21A文件夹五轮、翻页、设置、底部上滑搜索、结果启动与HOME通过，同PID16312，崩溃缓冲无新增。V2458A／Android16、12宫格原三应用文件夹三轮及同类相邻路线通过，同PID12004、默认HOME未变；其安装前包为4b7e2440，早于多批修复，只作功能覆盖，不作本次单改动像素／速度A/B。Android16新增崩溃来自shell触摸工具PID12833：旧 `InputManager.getInstance()` 存在但依赖Application，在app_process中空指针。仅修测试工具 `TouchInput.java` 的该失败回退，并扩展 `search_gesture/run_tests.py`；81项手势及旧接口／新接口／无Application／拒绝／缺失5组通过，旧工具负控准确失败；两台真机工具复查通过，无新崩溃。未修改生产搜索入口。
- **交付／恢复：** 构建、签名、16KiB ZIP对齐、版本1.6.0-T／34及两机安装拉回哈希通过；相对91e38f0c仅classes.dex改变（排除签名）。[建页修复测试APK](../../build/folder-scene-20261026/launcher-1.6.0-T.apk)，SHA256 `98e9a55ea0cf7ecc7cfeebeb5f2799d23d2c55b92e735a4466bfde30fc0d2df2`。两机回到桌面，主题／宫格／布局／权限／默认桌面／动画／日志开关均未调整；临时设备采样与触摸文件已清理，tracing关闭，暂存区不变。MEMORY.md未更新。
- **续查来源键：** `FolderIcons.la.Ui → buildTextureCacheKey` 内已有单次来源快照；CUSTOM文件解码、IMPROVED请求分别仍为每键1次，不能跨调用缓存而跳过后续来源到达／替换检查。确认重复的是该键内两次 `IconVisualMetrics.resolve`，试验仅改为调用现有快照重载，未新增缓存。clean原版没有移植层的物理来源键，maintained为另一引擎，均不能直接替换现有身份与失效规则。
- **未准入候选：** 扩展既有 `icon_metadata/run_key_source_device_tests.py`，补当前依赖的测试替身。Android9／16各两次新ART进程，每次480组来源、192组几何对照共2074项检查通过；键全文、来源失效／缺失、几何不可用及下次调用实时变化保留，几何解析2→1，旧源码负控准确失败。候选SHA256 `45b3b9ad65fb0dc32ce1da3ba892c67c849fffa6f26c1bfa9b28f27c0cb4c994`，两机安装及相邻路线通过，但**不交付为性能优化**；这些是受控Owner与Android Bitmap检查，不是目标三星／魅族验收。
- **本轮五样本与撤回：** X21A同配置、前后各预热一次并新采五轮，非交错A/B；最长GL帧中位打开65.173→75.262ms、关闭48.739→54.913ms；全部GL帧CPU累计中位打开205.184→217.469ms、关闭130.272→144.218ms。未证明收益，不能仅凭调用次数减少准入，也不据小样本断言因果退化。五轮开／关文件夹区域逐像素相同；Android9／16候选翻页、设置、搜索结果启动和HOME通过，同进程18511／17519，崩溃缓冲无新增。生产Java逐字节恢复，正常包重建／回装结果见本条末尾；试验源码、被否决APK与证据仅保留在 `build/folder-key-geometry-20261026/`，不反复重做该试验。
- **本轮恢复交付：** 正常包重建成功，签名／16KiB ZIP对齐通过；相对任务前98e9a55e，全部非签名APK成员逐字节一致。两机已保留数据回装并拉回核对哈希，文件夹打开／关闭及HOME正常，同进程19624／19237，崩溃缓冲无新增，默认HOME仍为锤子；Android9文件夹区域与基线逐像素一致。采样关闭、临时触摸／测试文件清理，未调整主题／宫格／权限／动画／日志，暂存区不变。[恢复后的正常测试APK](../../build/folder-key-geometry-20261026/launcher-1.6.0-T.apk)，SHA256 `4410a6ed70c02eca878b9586420a1ebd3af7cf8999ffb32ab726178ec1a43c16`，版本仍为1.6.0-T／34；本轮仅保留测试工具和本文／计划变更，未保留性能候选生产代码。
- **剩余：** 文件夹可感知停顿继续开放，真实主题／倍率／改名及EGL重建全矩阵、目标三星／魅族／iQOO和长稳未验。本轮来源键重复解析核对已结束；下一项按专项计划转到快捷桌面资格检查／Popup创建和显示链，不新加裸Bitmap缓存。MEMORY.md未更新。

#### 魅族高刷、三星默认图标与自动定位兼容候选

- **基线：** 用户确认旧包为官方 [v1.5.8](https://github.com/RANH-F/Smartisan-original-launcher/releases/tag/v1.5.8)，对应提交 `5d13886328d94840391a946132f393ad940a84ba`，与本地 HEAD／tag 一致。已对照该版本源码；未把其他同号历史构建当基线，也未在故障魅族上完成前后对照。
- **高刷：** 当前 GL Surface 已请求高刷，但所属 Activity Window 缺少同步请求；复用已有同分辨率最高刷新率选择，在 Surface 回调处同时申请 Window。保留 vivo 已有效的 Surface 路径、显式显示模式和系统刷新策略。本项是兼容候选，尚不能断定该缺口就是魅族锁60Hz的现场根因，也不承诺系统批准或每帧达到120fps。
- **默认图标：** API26以上原来经 `PackageManager.loadIcon`，可能取得厂商加工的 Drawable，旧系统却直接取 APK 资源。现统一优先读取组件资源并固定取图密度，保留资源不可用时的原回退；圆框版本升为 v11，使旧最终合成缓存失效。未改圆框绘制算法或抹除素材中的白色设计。系统也可能在元数据中选择不同 icon／roundIcon，且尚无 S25U 实际资源，故同应用跨 ROM 一致性及白边反馈仍开放。
- **定位：** 旧实现仅请求 network provider，没有超时；网络定位服务不可用或不回调时会一直等待。改为平台 Criteria 融合定位，缺失时仅尝试已启用且有权限的 provider；20秒超时、成功／失败统一注销监听和定时任务，允许后续重试，不新增权限。天气页改为随既有天气偏好变更刷新，离开即注销，替换固定时间轮询，避免晚到结果不显示。
- **文件：** `LauncherSettingBridge.java`、`MaintainedLauncherSettingsHost.java`、`DefaultIconCircleRenderer.java`、`WeatherBridge.java`；新增 `tools/tests/oem_compat/run_tests.py`。复用现有刷新率选择、图标来源和天气状态所有者，未新增 Manager／Service／Bitmap 缓存。
- **验证：** 受控测试：定位258、原始图标44、Window／Surface请求34、页面监听生命周期10；前三项旧源码负控均在对应行为失败。Android9真实框架定位回调接口兼容检查通过（服务为替身，未采集位置）；原生圆框88、回退策略334通过。构建、签名、16KiB ZIP对齐、版本1.6.0-T／34、保留数据安装及拉回哈希通过。X21A实屏文件夹开关、翻页、设置、底部上滑搜索、结果启动与HOME返回通过，同PID5755，崩溃缓冲无新增。天气开关保持关闭，未进行真实定位或天气页实屏验收，未更改权限／布局／主题／默认桌面。
- **剩余／交付：** Meizu20／S25U／S23均未连接，三项故障现场验收仍未完成；真实定位还受系统服务、权限和网络条件影响。证据 `build/oem-compat-20261026/`；[候选APK](../../build/oem-compat-20261026/launcher-1.6.0-T.apk)，SHA256 `b9a27b98da3bb5e8d4d430253b190e92113fb1629adaabcd34a71ee1c0a99850`。相较本轮基线，仅 `classes2.dex` 改变（排除签名）。Folder性能修复按新增反馈暂停，未夹带改动。MEMORY.md未更新。

#### 搜索入口回归与冷启动候选评估

- **搜索：** 相同包、设置及上滑位置，系统 `input swipe` 未打开搜索，现有连续触摸工具可以打开；完成五轮搜索 `settings`、启动系统设置及 HOME 返回，同 PID 20339。先前未打开归于自动化输入路线差异，本轮未证实搜索生产回归，未修改入口判断。
- **修复：** `tools/tests/search_gesture/run_tests.py` 的旧夹具缺少新增多指接口，导致编译失败；补齐后81项手势检查及新旧输入服务、拒绝／缺失服务检查通过，覆盖2／3／4指取消。
- **冷启动：** 当前包方法采样定位到候选检查重复获取私有目录。只复用目录路径的候选虽通过204项实时文件／目录、Owner及并发检查，五样本 PAGE_READY 中位却为2077→2173ms，未通过性能准入，生产与专用测试改动已撤回，不作为交付优化。该指标是 Activity 到页面就绪，含临时标记，不等于物理首帧或完整冷启动。
- **证据／边界：** `build/search-entry-20261026/`、`build/startup-current-20261026/`。安装未完成的一组采样已排除；临时采样源码逐字节恢复，已回装不含采样的1.6.0-T，签名／对齐及安装哈希核对通过；非签名APK成员与任务前完全一致。正式包搜索／设置结果启动、文件夹开关和翻页实屏通过，7处静态区域像素一致，最终回装后无新增崩溃条目；11:04的夹具断言来自预期负控，不是Launcher崩溃。Loading期间一次文件夹点按已排除并在就绪后补验。临时设备文件已清理。最终SHA256 `829fb680f22fc57dd3f42cf93d8206fbd75f7b42d01e8bf53499bd82fe561ede`。整体冷启动仍未解决，目录复用候选冻结，不再重复该微任务。MEMORY.md未更新。

#### 测试版命名与文档整理

- **修改：** 三处版本入口同步为 `1.6.0-T / 34`。主日志按问题合并，完整旧流水与旧计划集中归档；删除重复的每日长摘要和过时的固定偏移改版本示例。
- **验证：** 最终 APK 与真机设置页均显示 `1.6.0-T`；文档检查覆盖正文保留、日期顺序、章节锚点、新增链接及暂存区不变。
- **文件：** 版本三处、README、AGENTS、文档索引、构建指南、APK 结构及本日志／专项计划。仅整理文档的这一轮未改代码、未重建或安装 APK。

#### 关于我们：编译作者整行跳转

- **原因／修改：** 监听原来只绑在右侧名字。改绑既有整行 `setting_follow_weixin`，移除名字单独的焦点设置，保留布局及 B 站地址。
- **文件：** `MaintainedLauncherSettingsHost.java`、`setting_follow_view.xml`。
- **验证：** vivo X21A／Android9 的左侧标题、中间空白、右侧名字均打开 `https://space.bilibili.com/284480387`，返回正常。构建、签名、对齐、保留数据安装及拉回哈希核对通过。
- **剩余：** 其他 ROM、已安装 B 站客户端时的接管路径未实测。

#### 默认圆框：跨包装差异与白边

- **原因／修改：** Bitmap 与 Adaptive 前景走了不同底板判断；已有圆底又带透明留白时会叠出白圈。复用原扫描算法统一判断，识别满足条件的大底板，并在替换背景前清空本次私有画布；缓存版本升为 v10。
- **文件：** `DefaultIconCircleRenderer.java`；相应原生绘制测试及可视对照工具。
- **验证：** Android9 原生 Canvas 88 项、来源回退策略 334 项通过；旧实现负控复现差异。合成素材对照见 `build/default-circle-wrapper-20261026/native-comparison.png`。
- **剩余：** 未取得两台故障手机上 NewBox 的实际 Drawable，双机反馈尚未关闭；合成测试不能替代该现场。

#### 原生批量节点：按需扩容

- **原因／修改：** 前一版为修越界而扩大全部节点，普通节点也多占内存。现只扩三类批量写入节点，普通节点恢复原分配；保留原构造／释放责任、12／20宫格、动画和页数。
- **文件：** `SceneNode.smali`、`NativeBatchAllocation.java`、原生桥源码及 arm64 库、补丁／构建工具。
- **验证：** Android9／16 原生边界 162 项、初始化及 10000 轮创建释放通过；受控 5000 节点且 5% 为批量节点的五样本，分配 39.37→11.35MiB。Android9 三动画短测、五次启动及文件夹／设置往返通过，动画已恢复默认值 0。
- **剩余：** 上述分配量不是整机内存收益。整体启动、长稳、故障 iQOO、32位实装、12宫格和真实16KiB内核未全部验收；本轮搜索上滑未打开，不能记通过。

**本日交付与证据：** [测试 APK](../../build/docs-order-20261026/launcher-1.6.0-T.apk)；SHA256 `4b7e244037a8fc47a33d91035a78c9460f0f1fe98d45e088155b7cc1556e06b3`。证据目录：`build/docs-order-20261026/`、`build/default-circle-wrapper-20261026/`、`build/blinds-video-20261025/selective-allocation/`。[完整原始记录](archive/DEVELOPMENT_HISTORY.md#2026-10-26)。

### 2026-10-25

#### 百叶窗、标题镜像与闪退

- **原因／修改：** 主线程读取了 GL 临时坐标；arm64 批量光照数组从第17格起越出原对象。改用 GL 发布的标量快照，并修复原生存储边界。
- **验证：** 原库越界及旧线程路径负控有效；V2458A 上默认、百叶窗、立体翻转及相邻功能短测通过。
- **后续状态：** 当天的“全部节点扩容”已被 10-26 按需分配取代，不能恢复。目标 iQOO 与长期稳定仍缺实测。

#### 快捷桌面：取消读回与模糊计算

- **修改：** 场景更新后补查已失效请求，避免无效整屏读回；一次模糊调用内复用精确整数商表，保留原参数及像素结果。
- **验证：** 世代、手势、像素／预算检查及 V2458A 功能回归通过；模糊中位 6.645→3.079ms，首次总链未改善，不能称首次打开卡顿已解决。
- **已撤回：** 常驻13.46MiB的单缓冲池与无时间收益的索引预计算。后续只查窗口创建／显示链，不重复池化实验。

#### 图标、备份与设置页

- **修改：** 自定义图标改用抗碰撞身份，修复新写入／导出／恢复的命名碰撞；资源图标复用正确的设置资源表。About 的作者链接、QQ群及本地支持开发者页沿用原设置导航。
- **验证／边界：** 对应原生检查、实际备份恢复／撤销及有限主题、压力路线已记录。旧算法已经覆盖的图片无法自动找回；时钟白盘有合法资源来源，不能将其直接判成缓存错误。作者点击范围由 10-26 的整行实现取代。

证据：`build/blinds-video-20261025/`、`build/quickdesktop-stages-20261025/`、`build/quickdesktop-preread-20261025/`、`build/finish-real16-20261025/`、`build/theme-icon-refresh-160-20261025/`。[完整原始记录](archive/DEVELOPMENT_HISTORY.md#2026-10-25)。

### 2026-10-24

#### 快捷桌面触摸与覆盖返回

- **原因／修改：** 零进度终止事件遗漏可留下触摸遮挡；修复终止清理，并核对半开、多指及截图失败路径。
- **验证：** Android9／16 的相应有限路线通过；没有据此关闭全部窗口、厂商 ROM 或长稳矩阵。

#### 刷新率、HOME 与图标

- **修改：** 修复设置窗口高刷申请交接及 HOME 别名重复初始化；默认圆框处理实心圆角底板。默认桌面设置文案和页面职责收敛。
- **验证／边界：** vivo 设置页有90→120Hz五轮对照；模拟器只验证30／60节拍。魅族120Hz、OPPO手势闪回仍开放，系统刷新率显示不等于实际渲染帧率。圆框后续以10-26修复为准。

#### 冷启动与授权审计

- **结论：** 投影 PNG 预载为剩余热点，但逐图检查未发现可删除的重复解码；不新加裸 Bitmap 缓存。许可审计保留既有木兰授权，非商业草案的权属仍待确认。

[完整原始记录及逐次设备证据](archive/DEVELOPMENT_HISTORY.md#2026-10-24)。

### 2026-10-23

- **修改：** 修复多页总览 Dock 图标比例／尺寸、加载结束后的状态栏黑带；复用同次合成几何与实际圆框策略，减少重复反射和变体数组复制，跳过普通主题零几何阶段的提前壁纸分析。
- **验证：** 对应 Android9 原生检查、五样本、像素与搜索／设置回归见原始记录。
- **边界：** 局部调用成本下降不代表整体冷启动已解决，透明／毛玻璃与其他 ROM 未全部验收。
- **证据：** [10-23 完整记录](archive/DEVELOPMENT_HISTORY.md#2026-10-23)。

### 2026-10-22

- **修改：** 同次静态合成及键生成复用已解析来源；修复图标数据库写入结果误报，并处理 P10／Android7 的启动与资源兼容问题。
- **已否决：** 最终纹理磁盘缓存、无条件延后页面；不以启动更快但首滑变差的候选交付。
- **边界：** P10 路线和局部缓存测试不能代表完整跨 ROM 或整体启动验收。
- **证据：** [10-22 完整记录](archive/DEVELOPMENT_HISTORY.md#2026-10-22)。

### 2026-10-21

- **修改：** 修复来源目录构建与发布的世代失效交接；复用已有预热线程，减少重复 Alpha 提取、颜色分类逐像素调用及诊断边界扫描。
- **已否决：** 软件准备简单前移后再等待的候选，完整启动变慢，未保留。
- **边界：** 局部读取／分类收益不代表首屏完成链已优化完。
- **证据：** [10-21 完整记录](archive/DEVELOPMENT_HISTORY.md#2026-10-21)。

### 2026-10-20

- **修改：** SAF 导出补齐同名保护、取消清理、真实 URI 追踪、journal 写后确认、损坏停止及权限失效处理。
- **验证：** Android16 专用目录实际导出／回读／取消与授权失效路线完成，备份位置按约恢复；没有恢复或覆盖用户桌面数据。
- **边界：** 该目录、Provider 与设备范围的通过，不等于全 ROM 全历史备份格式通过。
- **证据：** [10-20 完整记录](archive/DEVELOPMENT_HISTORY.md#2026-10-20)。

### 2026-10-19

- **修改：** 默认未匹配圆框按实际来源判定；修复恢复预览、孤儿／环引用、旧撤销快照取消保护及操作锁；减少 Folder 单次几何重复计算并修复首次动画步长。
- **验证／边界：** 对应隔离与设备测试保留；Android9 当天搜索入口曾通过，不替代10-26未打开路线的核对；Folder 可感知停顿未关闭。
- **证据：** [10-19 完整记录](archive/DEVELOPMENT_HISTORY.md#2026-10-19)。

### 2026-10-18

- **修改：** Folder 来源键、单次组件解析、坐标复制及资源查询复用；对照原版 DT1902A 与原版代码，核对动画推进和 Surface 节拍。
- **结论：** 部分长帧属于缓冲等待，打开前 CPU 停顿仍有缺口；未以坐标自适应已完成为由宣称流畅。
- **证据：** [10-18 完整记录](archive/DEVELOPMENT_HISTORY.md#2026-10-18)。

### 2026-10-17

- **修改：** 复用同次来源、键、准备结果及合成输入；补齐图标预览队列淘汰、缓存载荷与镜像边界。
- **用户确认：** 清理后台后返回桌面恢复正常；A22 不再作为独立问题重复复测，没有新证据不重开。
- **边界：** GPU／持久化分段调查不是新的整体性能修复。
- **证据：** [10-17 完整记录](archive/DEVELOPMENT_HISTORY.md#2026-10-17)。

### 2026-10-16

- **修改：** 搜索常用图标淘汰后补载、缺图回退、被暂停补写恢复及 Dock 上滑起点；修复图标库页面后台取消后的旧结果绑定与重试显示，并减少元数据重复读取。
- **验证：** Android9 当天搜索、图标及设置有限回归通过；Android16 模拟器与 Android9 启动基线完成分段采集。
- **边界：** 三星 S25U／Share 现场、完整恢复与跨 ROM 未验收；当时启动样本不作为当前整机提速结论。
- **证据：** [10-16 完整记录](archive/DEVELOPMENT_HISTORY.md#2026-10-16)。

## 更早记录

2026-06 至 2026-10-15 的完整内容只保存在[历史归档](archive/DEVELOPMENT_HISTORY.md)，不继续占用当前日志正文：

| 时间范围 | 主要内容 | 历史入口 |
|---|---|---|
| 2026-10-01～15 | 主题／壁纸、光影、图标库、HOME 返回、全项目审计及备份 | [10月](archive/DEVELOPMENT_HISTORY.md#2026-10-15) |
| 2026-09 | 图标几何、动画、兼容与感应光影试验 | [9月](archive/DEVELOPMENT_HISTORY.md#2026-09-30) |
| 2026-08 | 搜索、来源／绘制合同、图标加载 | [8月](archive/DEVELOPMENT_HISTORY.md#2026-08-31) |
| 2026-07 | 启动、宫格、动态图标及兼容功能 | [7月](archive/DEVELOPMENT_HISTORY.md#2026-07-31) |
| 2026-06 | 初期设置、图标和主题修复 | [6月](archive/DEVELOPMENT_HISTORY.md#2026-06-30) |

`MEMORY.md` 未更新。本页记录结论，原始数据按证据目录查阅；历史候选、失败试验和未验证范围均保留在归档中。
