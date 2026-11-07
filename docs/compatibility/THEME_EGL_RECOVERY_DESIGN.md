# 主题动画中 EGL 重建的恢复合同

状态：2026-11-05 候选在 X200s Android 17 与 X21A Android 9 的经典黑→毛玻璃、动画 active、同进程／场景 EGL 1→2 场景实屏通过；动画结束后 target 键为 0、模糊源已释放。随后两机均安装相同的正常构建包，完成经典黑→毛玻璃→经典黑往返并保留正常包；X200s 于本次收尾前断开连接，最后一次连接时为经典黑且进程存活。其他主题／动画矩阵尚未验证，暂不作为通用修复发布。

## 故障与边界

X21A 原主题动画进行中、同进程 context 1→2 后，先后暴露 `t_blur_anim_background`、`target/--/Textures/1080p/12/back1.png` 和 `target/--/..._fore` 缺失。三个键由不同生产者生成；`Ea.bb()` 对无保留像素的跨代 `Da` 返回 miss，键名不能作为统一资源路径。

| 键 | 原生产者 | 恢复输入 | 正常释放 |
| --- | --- | --- | --- |
| `t_blur_anim_background` | `theme/t.e(Bitmap)`，由 `Sf()` 调用 | 高斯分支原经 `t.s(v)` 取得输入；另一分支经 `e/s.l(null)` 取得输入。恢复时必须保留原分支与原主题身份，原输入在上传后回收 | `theme/q` 动画完成分支 |
| `target/--/Textures/...` | `theme/t.d(v, boolean)` | `v.mResources` 的 AssetManager、`v.mPath`、实际素材相对路径 | `Ea.Is()` 在目标主题提交之后 |
| `target/--/..._fore` | `theme/t.bx()` | 当前 ItemInfo 原图稿、活动图标合成和目标页前缀 | `Ea.Is()` 在目标主题提交之后 |

## 接入条件

1. 只在同一场景的主题动画仍 active、EGL 代际已变化时进入恢复；正常启动、稳定主题和四指壁纸动画不走此入口。
2. 在原 GL／主题事件队列、下一次使用这些纹理之前，按原生产者重建当前动画实际引用的键。资源解码使用目标主题的 AssetManager；图标快照使用 `bx()` 的 ItemInfo 来源。模糊位图必须确认可从原过渡状态重建，不能把键名送入普通 asset loader。
3. 在恢复完成前不得运行 `Ea.Is()` 或 `q` 的完成清理；完成、取消、主题覆盖及场景销毁时沿原清理链释放新旧代资源，不能保持整套背景 Bitmap 到进程结束。
4. 不改变 `Sf()` 的 `et`／`gt`／`it` 门控、动画时间与主题提交顺序；`theme/Z` 持有的共享 EGL context 也要与主 context 代际一致。

第一版只将 `t.e(Bitmap)` 的单张模糊输出保留至原清理路径；`vc.onSurfaceCreated` 在主 EGL context 交给 `theme/Z` 后、首次绘制前，调用原 `t.d(v,true)`，却沿用 `Sf()` 的 `it` 门控决定是否调用 `bx()`。X21A 毛玻璃切换动画 active、target 键26个、同 PID／scene EGL 1→2 后，仍因 `target/--/4_com.smartisanos.launcher_fore` 缺失崩溃。第二版无条件调用 `bx()`，同场景 EGL 1→2 后第二帧仍因同一键缺失崩溃。离线查到 `Ea.a(key,Da)` 遇到旧表中同名非空对象会跳过注册；因此执行原生产者并不保证新 Da 替换旧代描述符。这是下一版需要处理的具体阻断点，尚未经有效真机验证。

第三版试验在活动过渡恢复入口先移除 `target/--/` 旧描述符，再运行原 `d(v,true)` 与 `bx()`；`build.bat`、签名和诊断包 `classes.dex` 一致性通过。X21A 第一次诊断因在 Launcher 场景建立前打开 ThemeChooser，首代 `UnlockAnimationXML` 访问空 `Camera`，没有得到目标样本。改为等待场景建立后，在 vivo X200s Android 17 上真实取得经典黑→毛玻璃动画 active、28 个 target 键、同 PID／scene EGL 1→2、四帧后无崩溃，但最终实屏 Dock 三个图标均成黑方块。追加按原 `DockView.Fo()` 查找 Cell 的候选后，同场景仍是三个黑方块；日志持续报 `ICON_RETAINED_TEXTURE_UNAVAILABLE reason=owner_or_key_changed`，对应三个 Dock itemId 11／3／30。此结果否定“只要重建 target 描述符、补找 Dock Cell 就完成恢复”的假设。

`clean_launcher` 的 `t.bx()`、`t.d()` 与当前原生产结构一致，原版并无动画中途 EGL 换代的恢复入口；maintained 的 DockView／Cell 同样引用 `target/--/`，不能直接移植整套主题逻辑。原版主 APK 文件当前缺失，故这里是 clean 反编译对照，不能称已重新核对 APK。Dock Owner 现从原 `DockView.Fo()` 按真实 ItemInfo ID 查找，图稿仍由原 Cell 生成；此受控结果不覆盖活动图标、其他主题和取消分支。

后续逐项记录 X200s 的 Dock 三项完整旧键和新键，证实差异仅在 `:shadowSpec=` 段；来源、尺寸、组件、投影等其余字段一致。`IconRasterDiagnostics.recoverRetainedGeneratedTexture` 原先要求渲染旧键等于 `Cell.Ol()`，而原 `reloadRetainedForegroundTexture()` 会计算新键，不同步旧 SceneNode 的 `ImageName`，导致三项均报 `owner_or_key_changed`。当前候选仅在完整键除阴影规格外逐段相等时找回原 Cell（含原 Dock 列表），调用原前景纹理工厂，并将原前景节点绑定到新键；其他来源变化继续拒绝。原版 `t.d()`、`bx()` 继续生成主题临时纹理，只清理旧 EGL 代 `target/--/` 描述符。

新候选的诊断包仅 `classes2.dex` 与正常包不同，构建、签名均通过。X200s 同 PID／scene、动画 active、28 个 target 键期间 EGL 1→2，三项 Dock 分别记录 `ICON_RETAINED_SHADOW_KEY_REBOUND`；最终毛玻璃实屏三项图标正常，状态 `active=false targets=0` 且模糊源 absent，未见该次崩溃。X21A 原崩溃场景按新候选复验：同 PID 21030／scene 143909199、动画 active、26 键期间 EGL 1→2，最终毛玻璃及 Dock 实屏正常，`active=false targets=0`、模糊源 absent，未见本次崩溃。画面与日志见 `build/theme-transition-x200s-20261104/shadow-key-home-after.png`、`shadow-key-final-audit.txt`、`dock-key-transitions.txt` 及 `build/theme-transition-device-20261104/x21a-shadow-result.png`、`x21a-shadow-final-audit.txt`。内存峰值、取消／连续切换及其他 ROM 尚未验证。

故障注入结束后，两台设备曾回装各自测试前 APK 并恢复经典黑，回拉 SHA256 均与原备份一致。按用户后续指示，两机又安装相同的正常包并保留；诊断包未留在设备上。正常包主题往返后的经典黑首页和 Dock 实屏正常，用户数据与布局未清除。

## 验收

- 原故障场景：动画 active 时同进程 EGL 1→2，三类键均由其原来源恢复，主题完成后无临时键残留、无崩溃。
- 对照：正常主题切换、动画取消、连续切换、普通／透明／毛玻璃主题及 12／20 宫格；图标和背景画面、原动画时序不变。
- 内存：比较恢复前后 Bitmap 峰值与动画结束后的回落；不能以长期保留全部目标背景换取单次不崩溃。
- 故障机验证须与源码／构建证据分开；此前 X21A 崩溃实验已停止，不能用构建通过宣称修复。

参考：`launcher/smali/com/smartisanos/launcher/theme/t.1.smali`、`theme/q.1.smali`、`theme/Z.smali`、`smengine/Ea.smali`、`smengine/Da.smali`、`view/vc.smali`；干净参考 `clean_launcher/`、`clean_launcher_raw/`。原主 APK 文件当前缺失。
