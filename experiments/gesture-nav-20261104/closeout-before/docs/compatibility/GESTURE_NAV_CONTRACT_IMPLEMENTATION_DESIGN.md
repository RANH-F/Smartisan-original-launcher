# 无 ROOT 应用返回图标动画：调用链审计与实施设计

日期：2026-11-04。阶段：**S0完成；S1已接通有限12宫格静态图稿生产回复，系统采用待验；S2／S3未进入**。

本页是本次移植的设计基线。默认策略保持关闭，不能把历史实验算作本次验收；本次实际实现和限制见第7节及开发日志。

## 1. 目标与历史边界

目标是 Android 11+ 收到有效 GestureNavContract 时，让系统缩窗的终点对应原版桌面图标。系统决定动画时钟和 HOME 可见性；本功能只提供目标及后续可选的单图标 Surface。

先读的[HOME 兼容报告](HOME_RETURN_COMPATIBILITY_AND_REFACTOR.md)第3–5、13、17–19、22–23节约束本设计：

- 10月12日 OPPO 位置回复成功只证明发送，未证明系统采用位置，且没有完整 Surface／finish 链。
- 10月14日 Nova APK审计支持 component／user／callback、单图标 Surface 与结束恢复；Lawnchair使用同类合同。它们不是把整个桌面 Surface 缩放。
- 旧证据中部分 Wallpaper 可见采样早于 HOME Intent。后到的合同不能倒改这段时间线。
- Nova 壁纸 zoom A/B没有可复现收益，已撤回；attachment、Texture宿主、全屏截图遮挡、绘制通知等待等旧失败候选不在本次范围。
- 图标收拢、早段壁纸闪回、系统Recents服务异常分别报告；其中一项通过不关闭另外两项。

## 2. 当前实现与参考来源

本次直接检查当前源码、clean_launcher、clean_launcher_raw、maintained及既有AOSP参考。原版APK路径 `original_apks/com.smartisanos.launcher-3.apk` 本次检查不存在，**没有重新反编译原版APK**；干净Smali参考不能冒充本次APK核验。

| 责任 | 已确认的入口 | 审计结论 |
| --- | --- | --- |
| Activity创建 | `launcher/smali/com/smartisanos/launcher/Launcher.smali:onCreate` | Alias先经redirectLauncherAlias转交；正式Activity调用onLauncherCreated，再J.b初始化原版桌面。冷启动解析时scene可能不存在。 |
| 热HOME | 同文件 `onNewIntent` | super→setIntent→onHomeIntent→后续原版J.a(Intent)等HOME分支。不得重发HOME或篡改FROM_HOME_KEY来驱动合同。 |
| 合同观察 | `launcher/tools/java/com/smartisanos/launcher/gesture/LauncherHomeCompat.java:inspectGestureContract` | 仅diagnostics时读取Bundle和callback，未消费extra、未校验完整component／user、未回复。CREATE和NEW_INTENT已接入，无需新增Activity。 |
| 渲染时机 | 同类 `onRendererFrameComplete`；`view/vc.smali`既有调用 | 发生在swap前，只能作为GL线程读取本帧场景的候选时点，不能标present或系统接收。当前diagnostics关闭会提前return，功能不能依赖该诊断门。 |
| 场景与普通页 | `view/Eb.smali:Gh/Ih`→`view/b/fa.smali:mr`→`view/b/M.smali:on` | Gh返回普通PageView；Ih会依据状态返回Folder PageView。mr给页列表；on从pn过滤sm项，不等同“所有实际可见图标”。 |
| Dock | `view/Eb.smali:zh`→`view/V.smali:Uh` | Dock有独立Owner，Uh遍历Go的Cell数组；不能只遍历Ih().mr()宣称覆盖Dock。 |
| 模型身份 | `view/a/g.1.smali:Rl`→ItemInfo；现有ProfileRepository | 用userSerial＋package＋component精确匹配。legacy -1按现有模型语义归主用户，经ProfileRepository转换，不写第二套用户映射。 |
| 图标与合成 | `view/a/g.1.smali:sc/d/f`、`view/a/ka.smali:cb` | sc是多层节点，部分节点属于离屏合成；ka.cb用icon_size_with_shadow及名称开关对应偏移。Cell矩形、图稿主体和含阴影纹理范围不能混用。 |
| 坐标工具 | `launcher/e/s.smali:a(SceneNode,float[],float[])` | 调用Ra.at().Vj()相机及SceneNode.getCornerPointScreenCoord；只取原数组0/1、3/4两组坐标，再除Constants.window_width/height生成8数矩形。未证明它适合所有旋转／离屏节点。 |
| native边界 | `smengine/SceneNode.smali:getCornerPointScreenCoord` | 转交nGetCornerPointScreenCoord，Java/Smali不能单独证明native的矩阵／viewport语义。保持引擎不改，须以真实节点与像素核对。 |
| 设置 | MaintainedLauncherSettingsHost.showOcdOptionsPage／bindSwitch；`launcher/tools/maintained_settings_res/res/layout/setting_ocd_options.xml` | 复用现有SettingItemSwitch、偏好读取及写入，不新增设置系统。 |

maintained的SceneNode仍通过native做投影，主桌面仍是SMGLSurfaceView；所搜Smali中未找到GestureNavContract实现，不将其当成现成可搬运方案。

协议依据：[Lawnchair固定版本](https://github.com/LawnchairLauncher/lawnchair/blob/85335d904a1c8b9790e40c581226684c59166297/src/com/android/launcher3/GestureNavContract.java)。本地系统侧参考为 `build/home-coloros-audit-20261012/FallbackSwipeHandler-aosp12.java` 及其 `OpenSmartisanOS-reference/quickstep/src/com/android/quickstep/FallbackSwipeHandler.java`；后者在accept中更新mTargetRect／spring目标，另在动画结束后发送finish。它们不证明当前OEM实际执行了这些代码。

## 3. S1：坐标协议

### 3.1 入口和会话

协议Owner放在现有LauncherHomeCompat；只在必要时拆出无独立生命周期的纯解析／几何函数，不增加Manager、Service或模型缓存。

1. API<30或非ACTION_MAIN＋CATEGORY_HOME直接退出，不加载SurfaceControl类。
2. 每次新HOME先取消旧pending；解析extra后立即从Intent移除，防同一个Intent在create／resume等路径重复消费。Alias只转交extra，正式Launcher消费。
3. 校验Bundle、ComponentName、UserHandle、Message和replyTo；尊重可选 `gesture_nav_contract_enable=false`。捕获限定的parcel类型／反序列化错误，失败只取消本次合同。
4. 设置 `launcher_home_icon_animation_enabled` 默认false。关闭时不回复、不改图标；切换关闭立即使当前会话失效，旧callback不能在下一次开启时复活。
5. 每会话带单调requestId、Activity身份、收到时间及场景／surface／尺寸／配置快照。不按package缓存旧位置，不把第二次HOME误当第一次重试。重复的同一extra不再处理；不同Intent携带同一callback token须按有界会话去重，不能只按Messenger binder去重（系统可能复用接收器）。
6. CREATE允许等待原场景首个合法采样点；NEW_INTENT不能在原J.a改变页面前抢用旧坐标。读取及节点遍历只在既有GL线程，最终发送前再检查会话仍有效。
7. 暂定会话硬期限为接收后1000ms，仅用于取消资源／丢弃过时消息，**不是延迟发送或动画时长**；首次可用即回复，无固定等待、无循环requestRender、无无限重试。期限作为保守上限，须由目标机时序验证。
8. pause／stop、新HOME、scene／Surface换代、旋转、destroy、关闭设置均取消pending。新建Surface后的冷启动会话需明确绑定首次有效世代，不能把初始化当过时返回误杀，也不能跨后续换代沿用。

### 3.2 目标与坐标

- 从当前真实场景取ItemInfo，精确匹配component＋user；多候选只允许确定的可见Owner。隐藏页、编辑／拖动／翻页中间态或歧义返回不回复，沿系统默认行为，不自动切页或开文件夹。
- 普通页、Dock、已展开文件夹分别取其Owner。收起文件夹内应用第一阶段回退，不能把文件夹封面或任意缩略图当应用图标；后续若支持需单独证实原版容器与预览映射。
- 宫格12／20、隐藏名称、Dock缩放与位移由当前LayoutProperty／场景矩阵提供，不根据行列数手算屏幕中心。
- 先在受控环境同时记录Cell、实际图稿节点、最终合成节点的投影及截图，确认哪一层已经包含父级变换、离屏viewport和阴影。旧 `next-probe/gesture-experiment.java` 的二次组合公式**不直接移植**：目前没有覆盖矩阵证明它既不漏算也不重复变换。
- 明确两套边界：系统收拢的图稿主体RectF，以及未来Surface绘制所需的含阴影范围／内偏移。禁止把整个Cell、标题或投影阴影都作为主体。动态图标沿现有生产链，不用应用原图替换。
- 从经验证的GL投影得到Surface局部像素，再处理原点方向；仅当确认底部原点时做Y翻转。主线程采集Surface在屏幕上的位置、显示／旋转／尺寸与View变换快照；GL结果带同一快照，发送前核对，避免额外叠加状态栏高度。非恒等祖先变换必须映射完整四角，无法可靠映射就回退。
- finite、正宽高、屏幕／Surface相交、当前可见性、相机／viewport、会话代际全部检查。不能通过强行裁切错误坐标让其“合法”。若native只给轴对齐两个角，旋转场景先回退，不伪称已支持。

**坐标准入尚缺：** native投影实际语义、普通图稿与最终合成节点对应、阴影内边界及12／20／Dock／旋转下截图误差。未闭环前不向系统发送推测RectF。

### 3.3 回复与可复核证据

只回复 `gesture_nav_contract_icon_position` 的RectF。用Message.obtain＋copyFrom保留what／arg／obj等callback关联字段，setData替换为结果Bundle，经原replyTo.send发送；RemoteException取消本次，不重试。S1没有Surface，不隐藏原图标；不因缺finish就引入临时Surface。

每轮日志含requestId、来源CREATE／NEW_INTENT、elapsedRealtimeNanos、API、component／userSerial、场景与Surface世代、viewport、图稿／阴影边界、发送时间／取消原因。禁止记录Intent全部extras。`sent`只表示Binder发送未报错；OEM真实接收／采用需系统侧消息／trace或可复核的动画目标变化证据，未知写unknown。

同一APK、布局、应用和导航做关闭A→开启B→关闭A2；分别记录实际手势开始、Intent到达、坐标就绪／发送、可观察的系统目标更新、动画末段轨迹、最终落点、HOME可见性及Recents错误。视频PTS和trace须有共同锚点，否则分别报告，不能逐毫秒硬拼。人工／合成callback接收到RectF仅是协议集成测试，不能写系统实收通过。

**S1验收门：** 本次候选有正常构建、签名、协议负控及异常回退；至少一个真实发送协议的Android11+设备确认目标采用、方向、落点、时序与视觉改善，且回关恢复。只看到sent、没收到协议、或无明确改善，均不进入S2。不存在协议的ROM是回退通过／收拢不适用，不是动画通过。

## 4. S2：独立FloatingIconSurface的条件设计

只有S1有效才开放设计细化与实现。新增它的必要性是GL节点不是Android View，无法直接使用Lawnchair的View.draw；当前没有可直接复用的单图标Surface宿主。不得重画图标、截整个桌面、替换SMEngine主Surface或修改引擎渲染逻辑。

- 单次会话持有一个临时非交互图标Surface，复用原最终图标材质／合成结果的透明图稿与阴影，不建立第二scene或常驻全屏层。若无法通过现有接口得到一致的最终图像，此阶段停留坐标模式，不新增引擎绘制通道来绕过限制。
- Surface创建及首buffer有效后才允许回复可选 `gesture_nav_contract_surface_control`；不可用时继续坐标模式。按API隔离SurfaceControl访问，Android11窗口挂载能力需单独检查，不能照搬平台特权API。
- 原图标只在可替代内容准备好后按原Owner既有显隐接口隐藏；保存准确节点、旧可见状态及世代，不能简单对新节点setVisibility(true)。光影、动态图标和文件夹合成各自Owner要配对。
- 提供 `gesture_nav_contract_finish_callback` 的Message，携requestId和不可混淆token；旧finish只收尾旧会话，不能关闭新图标。共享静态Messenger只保留弱Activity引用，避免每返回一次泄漏Binder。
- 收尾幂等：正常finish、新HOME、关闭设置、超时、binder失败、pause／stop、场景清理、配置变更、destroy均进入同一释放入口。先让原图标恢复可绘制，再释放临时Surface；跨GL／UI线程只异步交接，不互等。最后一帧移除时机以本机呈现证据决定，不复制Nova固定等待到整个桌面。
- 泄漏验收包括重复快速返回、过期finish、创建失败、进程退出／重启；记录Surface／Window数量回到基线和显隐Owner复原。进程被杀不能依赖Java finally保证回调，应确认系统随窗口销毁回收资源。

## 5. S3：回归矩阵与结果分类

下表均为**待执行**，本轮仅ADB设备枚举，无安装、手势、截图或新运行样本。枚举见X21A及V2458A；设备在线不代表协议支持。

| 设备范围 | 关键验收 | 本轮状态 |
| --- | --- | --- |
| Android8／9／10，含X21A | 新类可加载，API门无回复；HOME键／原生手势、文件夹、Dock、锁屏解锁无退化 | 未测 |
| vivo Android11+，含当前V2458A | 先记录真实协议有无；有则坐标A/B/A，无则验证回退；智能刷新率行为不得改动 | 未测 |
| OPPO／ColorOS | 真实协议、目标采用与末段收拢；早段壁纸和Recents错误独立记录；不重跑zoom／宿主旧方案 | 未连接／未测 |
| 小米／HyperOS | 真实协议与当前Recents提供者、系统手势限制；无协议保持默认HOME | 未连接／未测 |
| AOSP模拟器及其他品牌 | 合成协议只验解析／回传；实际系统手势另列；三星／一加等不按OPPO结论外推 | 未测 |

每个可用设备覆盖：开关关／开／回关、冷create／热newIntent／连续HOME；普通页首屏与非首屏、12／20、Dock、文件夹展开／收起；普通／透明／毛玻璃、图标光影与动态日历时钟；旋转与尺寸变化、锁屏解锁、应用卸载／更新后目标缺失、个人／分身用户、退后台及异常退出。未支持的几何必须明确触发回退，不能填写动画PASS。

结果使用独立字段：`protocol_received`、`reply_sent`、`system_target_applied`、`icon_visual_result`、`wallpaper_result`、`recents_service_result`、`fallback_result`；每轮关联APK SHA256、设备／ROM／API、布局／主题、导航路线、日志及视频。无证据填unknown，禁止根据品牌预填。

## 6. 实施文件与回滚

S1预计仅改LauncherHomeCompat、现有设置宿主、OCD布局及strings；确需暴露既有节点数据时，只在原Launcher场景Owner加只读接口，不能改SMEngine。模型读取经现有ItemInfo／ProfileRepository，不增加数据库写入。

计划按独立提交保存：`Add opt-in gesture target coordinates` → `Add optional floating icon surface` → `Record device gesture acceptance`。当前工作区已有大量暂存／未暂存用户修改，HEAD不能代表实际测试基线；S0未创建提交，也没有可宣称已具备的功能回滚提交。进入代码阶段先保存实际源码／APK快照与哈希，提交只包含本任务增量，不能混入现有改动。

运行回退为关闭 `launcher_home_icon_animation_enabled`；代码回退用本任务隔离提交的revert或对实际基线生成的反向补丁，不reset／clean、不恢复旧失败实验。安装前保留原已安装APK及其哈希，必要时保留数据回装；不切HOME Role、不改Recents／Quickstep绑定、不申请ROOT。每阶段正常包与诊断包区分，结束后关闭实验并清理本轮临时文件。

S0阶段只修改设计与文档入口／开发日志，没有修改产品代码／设置开关、构建、安装或执行真机回归。S1实际增量见下节。MEMORY.md未更新。

## 7. S1本次实际状态

- `LauncherHomeCompat`继续拥有唯一HOME生命周期：CREATE／NEW_INTENT消费、requestId、单次GL采样、ProfileRepository门控、主线程复核及Messenger发送入口。新增三个小型辅助类仅承担协议值／有界会话、纯几何运算及只读目标查找，无独立Activity／Manager／Service。
- `HomeGestureContract`消费原extra，校验框架类型及replyTo，复制Message关联字段；State保护重复token、新HOME、一次发送和1000ms取消期限。期限只用于释放，未延迟动画。API<30不进入协议，默认关闭时不创建Handler／GL工作。
- OCD新增指定文案和默认false的 `launcher_home_icon_animation_enabled`；写入复用原设置持久化，单独通知取消，不发原版设置重载。当前布局允许切开关，但**当前产品版本即使打开也没有可发出的真实目标坐标**。
- `HomeIconTarget`只在一个原版GL帧里精确查普通可见页和Dock、匹配ItemInfo／ProfileRepository用户。没有唯一目标、文件夹活动、模型不可用等均回退。即使找到唯一普通／Dock图标，也明确返回 `native_artwork_geometry_unverified`。
- **没有实现／没有声称支持：** 真实12／20、自定义尺寸、隐藏标题、图标包、光影组合的精确图稿屏幕RectF。`HomeIconGeometry`仅实现“已证实为图稿主体的四角投影→屏幕”纯运算，不连接未证实的native输出。受控矩阵输入不等于实际场景几何。没有把Cell、阴影纹理或sc[0]当作主体。
- 阻塞证据：`SceneNode.getCornerPointScreenCoord`直接调用native；`e.s.a`仅从0/1及3/4构造矩形；Cell.f为部分sc节点设置离屏RenderTarget／viewport，Cell.draw再经ca／ga选择实际绘制路径。仅凭这两组数无法证明最终图稿边缘和父变换已被正确应用。原JNI实现及最终合成／截图的对应尚未闭环，不添加任意缩放公式。纯算术可独立使用，但不能据其测试通过放行真实发送。
- 受控测试编译**完整四个产品Java类**，真实RectF回传只由测试夹具注入产品完成入口；没有生产注入开关／调试Intent。测试覆盖协议、复制字段、状态失效、模型精确匹配／Dock、数学变换及生命周期；native／系统采用／动画改善不在其证明范围。
- 本轮不安装APK，不运行ADB设备操作，不修改HOME Role／Recents／Quickstep。S1尚未完成真实几何能力验收，S2准入条件不成立。构建／签名结果及增量回退补丁统一见开发日志和 `build/gesture-nav-s1-20261104/`。

## 8. 2026-11-04 有限生产接入更新

本节取代第7节“所有真实目标回退”的当前状态描述，旧节保留实现阶段背景。HomeIconTarget现将唯一普通页目标送入HomeIconGeometry.staticComposite；只准入12宫格、100%设置、DEFAULT圆形普通静态合成纹理，父链单位缩放／无动画／无旋转／无skew，非动态层，真实纹理尺寸等于LayoutProperty完整纹理。Camera与Surface尺寸一致、单位Cell投影及相同深度通过校验；Surface原点为(0,0)、旋转0且无自身缩放，否则回退。

用Cell单位基准的投影中心与图稿节点局部投影恢复纹理矩形，再按原合成体偏移(纹理−图稿)/2及(纹理−图稿)/4取设计主体；Y只翻转一次，不加入状态栏常数，不以Alpha轮廓缩目标。尺寸由布局与真实纹理比例／取整规则读取，不写相机组件、固定RectF或固定图标边长。

本次只复用上批12宫格相机截图证据：候选[84,229.5,276,421.5]与该蓝色轮廓四边差2／2.5／2／1.5px；其余默认图标尚无各自实测误差，不能写全部12图标通过。图标包、20宫格、Dock、缩放、特殊／动态节点、旋转均未准入。187项受控测试含真实产品resolver→GL采样→Messenger链路，输入是已采集GL数据的替身，不当本轮新实机验收。本轮停止自动设备操作，不安装；系统真实采用、A/B/A视觉改善及S1总体验收仍未完成，S2未进入。
