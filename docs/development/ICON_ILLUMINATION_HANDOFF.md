# 桌面图标感应投影记录入口

当前实现、齿轮修复、静态阴影统一、主题交接白线、设置生命周期、备份恢复、设备证据与未验证范围，统一见 [DEVELOPMENT_LOG.md](DEVELOPMENT_LOG.md) 的“2026-10-01—02 图标感应光影、阴影统一与备份（合并记录）”，不在本页重复维护状态。

2026-09-27 的兼容实验已撤下，不能恢复或作为当前代码。该实验曾确认传感器输入及八张 mask 的生成，但没有证明 GPU 可见投影；10 月实现通过原版设备 blur／GLES 对照继续定位，最终保留原版投影链。数值检查通过不代表全部主题、桌面动画和跨设备视觉验收。

数值复核使用 `tools/tests/icon_illumination/run_probes.py`：传 `--original`、`--target` 两台 ADB 序列号，以及 `--jdk`、`--sdk`、可选 `--output`。依赖 Pillow、numpy、SDK android-30/build-tools 36.1.0；独立 app_process 探针不安装或替换原版 Launcher。
