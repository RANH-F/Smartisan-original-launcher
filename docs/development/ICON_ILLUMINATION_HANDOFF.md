# 桌面图标感知阴影续做记录

记录日期：2026-09-27。状态：**视觉效果未实现；兼容实验代码已删除，当前构建未开启该功能。** 本文记录曾经做过的工作和下次的验证入口，不把实验日志写成当前功能。

## 目标与验收

目标是恢复原版 Smartisan 桌面图标随设备姿态变化的可见投影，同时保持当前普通图标、Folder、天气和日历动态图标的大小、静态阴影、缓存及交互。验收必须用原版设备与移植版在相同图标、主题和倾斜动作下的并排画面或录像，看到投影的位置或形态连续变化。传感器回调、节点存在、mask 绑定、构建和安装成功都只是中间证据。

## 原版链路及当前保留部分

原版参考是 `clean_launcher_raw/` 和 `original_apks/com.smartisanos.launcher-3.apk`。原版 `TYPE_ROTATION_VECTOR` 经 `H.onSensorChanged()` 转换姿态，`Ra.H(hour, minute)` 与 `Ra.k(vector)` 更新世界光源；`Qa` / `SceneNode` 将位置传给材质的 `uLightLoc`。`SHOW_ICON_SHADOW_LIST` 同时控制 Cell 的 `sc[27]`、`shadowlist` 和八张阴影纹理。`MutiTexMaterial` 的 `SmartisanFakeShadow()` / `SFSOffset()` 根据 `uLightLoc` 偏移八张 mask 的采样并合成投影。`SimpleTextureWithDirLightMaterial` 的固定 `uLightDir=(0,0,1)` 不是这条投影链。

当前 `launcher/smali/com/smartisanos/launcher/view/a/g.1.smali`、`smengine/mymaterial/g.1.smali`、`SceneNode.smali` 等仍保留原版结构；`SHOW_ICON_SHADOW_LIST` 默认关闭。普通应用当前使用安全的软件静态阴影和最终图标 Composer。Weather/Calendar 的 `weatherLiveShadow`、`calendarLiveShadow` 以及 ActiveIcon `sc[0]`/`sc[7]` 几何归属不能由感知阴影实验接管。原版生成阴影纹理时用到 Smartisan 私有 `BlurImageFilter` / `Paint.setImageFilter`，普通 Android 不能直接依赖。

## 已做的实验及结果

1. 曾增加 `IconIlluminationCompat`、设置桥接、设置页与备份/重载接线，尝试复用原版材质和传感器链，而非另建一套阴影系统。该兼容实验代码现已删除；当前 `launcher/` 中没有 `IconIlluminationCompat.java` 或其设置入口，不能按仍可开启来描述。
2. 传感器最初在主 Looper 上没有稳定回调。实验改用专用 `HandlerThread` 后，V2458A 日志出现持续的 `TYPE_ROTATION_VECTOR` 回调和变化中的光照向量；sensorservice 也显示 `rot_vec` 注册。它解决的是输入链，不是最终画面。
3. 实验生成并绑定八张 mask，记录到 `ICON_LIGHT_MASKS_GENERATED`、`ICON_LIGHT_MASKS_READY`、`ICON_LIGHT_PROJECTION_BOUND`，且看到 `sc[27]` 节点存在。一次日志曾显示 `cells=1`、绑定比例约 `0.78`。这些只证明 CPU/场景对象阶段；没有证明该节点经过 GPU 绘制及 shader 有非透明输出。
4. 曾尝试强制节点可见及 Cell `0x80000` 标志。V2458A 实际截图仍没有原版明显的倾斜投影，故不能把可见性或标志当作根因修复。静态图标合同脚本 PASS 也不覆盖动态投影。
5. 实验包曾通过 `build.bat`、签名与安装检查，但用户明确指出“根本没有动态光影”。最终状态是**视觉失败、实验撤下**，没有跨 Android 版本验收。

## 尚未解决的断点

首个未证实点是 `sc[27]` 是否实际进入 `MutiTexMaterial` 绘制并写出可见像素。其后依次核查八个 sampler 的纹理单元和内容、`uLightLoc`、`uShadowLengthFactor`、`uShadowOpacityFactor`、`uShadowRadius`、UV/alpha 与混合状态。`Ra.pt()`、`Ra.qt()` 分别对应 `SU.y`、`SU.z`；仅看到 Java/Smali 绑定调用不能证明 shader 接收到有效非零值。此前把 `Ra.k()` 接到 `uLightDir` 视为成功的判断已被原版代码否定。

## 下次继续的最小步骤

1. 先固定当前代码、APK 与设备配置，保存原版/移植版同场景画面。检查工作区和现有图标合同，勿覆盖解锁、主题或图标的其他改动。
2. 只为一枚测试图标临时启用原版 `sc[27]` 绘制路径。用高对比测试纹理或固定颜色 shader 证明它在真机屏幕上实际出图；诊断不得混入发布包。
3. 若仍无输出，从 SceneNode 绘制调用、材质选择、GL 状态与纹理单元定位第一个失败点；若能出图，再逐项恢复原版八张 mask、uniform、UV/alpha 和姿态驱动。每步留同设备截图/日志。
4. 确认可见投影后再研究普通 Android 的 mask 生成兼容与唯一阴影 Owner，防止和静态阴影、`weatherLiveShadow`、`calendarLiveShadow` 双层叠加。
5. 对照原版与 V2458A 的倾斜录像，并回归 12/20 宫格、不同图标来源、Folder、Weather/Calendar、主题切换及冷/热启动。关闭功能时须恢复现有视觉与资源占用。

不要用随机延迟、提高不透明度、再加一个可见性标志或第二套图标 Composer 代替上述绘制证明。
