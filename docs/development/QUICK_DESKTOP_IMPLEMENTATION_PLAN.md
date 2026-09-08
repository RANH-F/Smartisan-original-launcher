# 快捷桌面（负一屏）原版证据与冻结实施方案

## 结论

项目可以在不引入桌面分页、不改桌面数据库、不申请悬浮窗权限、也不依赖 Smartisan 私有系统窗口的前提下，实现接近原版的快捷桌面，并使用 Android 标准 `AppWidgetHost` 承载第三方小组件。

实施期间冻结以下架构；除非阶段验证证明前提不成立，否则不改路线：

```
RootView 原版首页右滑判定与原始横向位移
        ↓
Launcher Activity 内 QuickDesktopController
        ↓
QuickDesktopHostView（普通 View 内容；挂到 Launcher token 的应用内子窗口）
        ├─ 固定全屏 BackgroundLayer（本次手势截图、渐进模糊、蒙层）
        ├─ 独立平移 ContentLayer（固定 Smartisan 卡片）
        └─ 标准 Android AppWidgetHost
```

## 不可改变的边界

- 不把快捷桌面加入 PageIndex、PageView 或 Launcher 数据库。
- 不修改 `fa.updateScroll()`；开启快捷桌面时继续使用原版已有的首页位移钳制。
- 不启动独立 Magic Flow Activity、Service 或 APK。
- 不使用 `TYPE_DOCK_WINDOW`、悬浮窗、系统签名、Root、隐藏 WindowManager API。
- Launcher 的 `GLSurfaceView` 原版设置了 `setZOrderOnTop(true)`；因此普通内容 View 使用公开的
  `PopupWindow` 作为 Launcher token 的应用内子窗口显示在 GL Surface 之上。它不是系统悬浮窗，
  不需要额外权限，也不创建 Activity；打开时保持 `FLAG_NOT_FOCUSABLE`，避免触发 Launcher
  Activity 的 `onPause/onStop` 或窗口焦点切换。
- 不接管或重写 `RootView` 的起手、方向锁定、搜索、分页、文件夹或编辑模式手势。
- `RootView` 保持 Launcher 原版唯一的起手、方向锁定和首页门控 Owner。原版 `Ad` 在部分现代 ROM
  仍按旧逻辑宽度归一化，完整物理屏拖动只能到约半页；门控确认后，替代宿主按本次
  `ACTION_DOWN` 到当前事件的物理 `deltaX / hostWidth` 做绝对映射。该值不是逐帧累计，不接管
  手势识别，也不得写回或修改 `fa.updateScroll()`。
- `BackgroundLayer` 永远铺满窗口且不参与横移；只有 `ContentLayer` 在 `-windowWidth..0`
  范围内移动。不得再次平移整个宿主或 PopupWindow。
- 总开关和卡片配置保存在 Launcher 私有配置，不写 `Settings.Global`。
- 第三方 Widget 只统一外框、间距、圆角、标题和占位状态，不篡改 `RemoteViews` 内部视觉。

## 功能边界

### 原版固定卡片

- 保留原版入口、比例、排列和视觉层级。
- 在设置中逐项打开或关闭。
- 不允许自由缩放、换皮或改变卡片内部结构。
- 点击时打开用户选择的对应应用；未指定时按类别解析系统默认或可处理应用。
- 音乐与快捷支付、快捷工具、日历提醒、生活信息分别实现；失效的 Magic Flow 云服务内容不恢复。

### 第三方 Android 小组件

- 长按快捷桌面空白区域进入添加流程。
- 使用 `AppWidgetManager` 枚举 Provider，使用 `AppWidgetHost` 创建宿主 View 和持久 ID。
- 未预授权时通过系统 `ACTION_APPWIDGET_BIND` 请求用户确认。
- 支持 Provider 配置页、添加取消、删除、排序、允许范围内调整尺寸、Provider 卸载和失效占位。
- Android 12 及以上把实际最小/最大尺寸选项回传 Provider；Android 8–11 使用兼容尺寸路径。

## 手势和显示状态机

- `CLOSED`：宿主为 `GONE`，首页保持现有行为。
- `DRAGGING_OPEN`：沿用 RootView 的有效手势门控，以本次手势物理位移绝对设置
  `ContentLayer.translationX`；手指不动时不更新 View、不更新窗口、不启动动画。
- `SETTLING_OPEN/CLOSED`：松手后依据进度和横向速度，从当前位置吸附。
- `OPEN`：宿主在同一 Launcher Activity 内；不触发 Launcher `onPause/onStop`。
- `DRAGGING_CLOSE`：由已打开宿主处理向左关闭；竖向手势留给内容滚动。
- 原 Magic Flow APK 已确认松手参数：横向速度阈值 `900 px/s`；Launcher 来源使用屏宽
  `1/3` 位置阈值；默认 `200ms`，剩余距离小于屏宽 `1/5` 时按剩余像素缩短时长；
  插值器为 cubic ease-out。
- Back 关闭快捷桌面；HOME 走原版 HOME 链路并同时复位宿主；打开外部应用再返回时保持可恢复状态。
- 关闭总开关后，宿主立即复位，首页恢复当前原版弹簧回弹。

## 分辨率和系统兼容

- 所有视觉尺寸使用 `dp/sp`、运行时窗口宽高和 WindowInsets，不写死 1080 或 1440 坐标。
- 卡片使用宽度分级和最大内容宽度；窄屏单列，宽屏按原比例组合。
- 状态栏、刘海、打孔和手势导航区域由 Insets 决定。
- API 23–35 使用普通 View 模糊/预渲染或壁纸兜底；API 31+ 可在性能允许时使用 `RenderEffect`，但模糊失败不能阻塞进入。
- 最低版本继续保持项目现有 minSdk 23（Android 6）；正式验收矩阵重点覆盖 Android 8–16。

## 分阶段 Gate

### Phase 0：原手势证据

- 只加低频日志，证明普通首页和编辑模式首页均产生连续进度。
- 验证搜索、首页回弹、横向分页、文件夹、HOME、解锁无回归。

### Phase 1：空宿主

- 接入 Launcher Activity 内普通 View 宿主。
- 验证跟手进入、反向拖回、速度/阈值吸附、向左退出、Back、HOME、锁屏和应用返回。
- 连续进出至少 50 次，无黑屏、Surface 重建、触摸残留或崩溃。

### Phase 2：原版视觉骨架

- 还原随主题变化的桌面背景、透明蒙层、层级和卡片网格。宿主本身保持透明；固定背景
  使用每次有效右滑起手时的当前桌面清晰截图、模糊缩略图和暗色层。原 APK 的暗层为
  `#4d000000`；当前普通 Android 兼容模糊按真机验收提高终态遮罩，不能复用上一次首页缓存。可见进度由
  `1 - abs(contentTranslationX) / windowWidth` 计算；原版在进度 `0~0.4` 内把模糊和暗层
  增强到最大，清晰截图在这段归一化进度的前 `0.08` 内淡出。不得使用固定蓝色填充，
  也不得让背景跟随 ContentLayer 横移。
- 模糊和快照使用异步缓存；任何失败立即回退壁纸/纯色。

### Phase 3：固定卡片与设置

- 桌面设置主页面使用一个“快捷桌面”开关项：右侧 Switch 启停功能，只有开启后点击其余区域才进入二级设置；不得拆成两个相邻入口。
- 实现四类固定卡片开关、顺序和对应手机应用入口。天气头部复用桌面动态天气同一数据源；搜索不得在目标页面出现前闪回桌面。
- 负一屏内容整体纵向位置、底部手势横条背景按原版/桌面真机对照验收，所有绘制坐标调整必须同步命中区域。
- 音乐卡通过标准 MediaSession 获取曲名、歌手、封面和状态；通知使用权只由用户在系统设置授予，
  不写入备份。负一屏私有总开关、固定卡片开关和顶部自定义文字全部进入桌面备份恢复白名单。
- 固定卡片不能进入第三方 Widget 的自由调整模式。

### Phase 4：AppWidgetHost

- 完成选择、绑定、配置、持久化、恢复、删除、排序、尺寸更新和失效占位。
- 长按入口只在快捷桌面内容层生效，不改变桌面图标长按。

### Phase 5：完整回归

- Android 8、11、12、14、16；12/20 宫格；不同分辨率、字体缩放和导航模式。
- 普通首页/编辑模式、搜索、Folder、HOME、锁屏、冷启动、主题切换。
- Widget 配置取消、Provider 卸载/升级、进程死亡、低内存、多用户/工作资料。

每个 Phase 只有在本阶段运行时证据通过后才能进入下一阶段。构建、签名或安装成功本身不算通过。

## 当前 Gate 状态（2026-09-07）

- Phase 0：PASS，原 RootView 连续进度与入口边界已确认。
- Phase 1：PASS，跟手、悬停、反向、Back/HOME 和宿主生命周期已在 V2458A 运行。
- Phase 2：PASS，用户真机确认当前整页拖动正常；实时截图、模糊和旧缓存问题已收口。
- Phase 3：IN PROGRESS，V2458A/Android 16 已覆盖安装并经用户逐轮确认整体布局、背景、音乐卡、设置结构及微信支付徽标视觉；仍需完成备份恢复实测，以及支付宝/微信扫码与付款双入口回归，才能标记 PASS。
- Phase 4/5：NOT STARTED，不得用 Phase 2/3 结果宣称第三方 Widget 或跨 ROM 全部完成。
- **整体进度口径**：按 Phase 0–5 的完整交付范围估算约完成一半；这是阶段范围估算，不替代各 Phase 的运行时 Gate。
