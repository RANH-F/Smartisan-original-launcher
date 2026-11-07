# Smartisan Launcher 文档索引

这里是桌面主工程的文档入口。ROOT HOME 兼容模块有独立工作区、版本和发布周期，见模块工作区的 README。

## 必读入口

- [项目介绍](../README.md)
- [AI 工作规则](../AGENTS.md)
- [长期项目记忆](../MEMORY.md)

## 当前状态与开发

- [开发与修复日志](development/DEVELOPMENT_LOG.md)：唯一修复流水入口；顶部看当前状态，下方每个日期一节、倒序查根因、修改、验证和风险。
- [启动与性能专项计划](development/LAUNCHER_FIX_AND_OPTIMIZATION_PLAN.md)：只维护当前剩余事项、执行顺序和验收边界，不复制开发流水。
- [备份、壁纸与源码体积](development/BACKUP_WALLPAPER_AND_SOURCE_SIZE.md)：真机备份归因、壁纸恢复、旧档兼容和测试边界。
- [清理候选](development/CLEANUP.md)：归档建议，不授权直接删除。

## 文档维护与合并规则

- 一次修复的根因、改动、验证和风险只记在开发日志；不要求同步抄到多个文档。
- 构建、资产、合同、用户说明仅在其长期内容实际变化时更新；专项计划只更新任务状态。
- 专项审计报告是有日期范围的证据快照，保留各自职责，不作为新的滚动日志，也不为减少文件数混成一份。
- 旧日志完整流水与旧专项计划已合并[归档](development/archive/DEVELOPMENT_HISTORY.md)，原文保留供追溯，其“当前／下一项”不再生效。
- 旧名称 `BUILD_AND_VERSION_NOTES.md`、`APK_INVENTORY.md` 的职责分别由现有构建指南和 APK 结构承担，不新建同义文档。

## 稳定合同与专项审计

- [自适应刷新率工作区审计](compatibility/ADAPTIVE_REFRESH_AUDIT_20261104.md)：2026-11-04请求入口、动画时钟、既有无效候选及RMS进程归属／有限租期验证前置条件；未新增生产修复。
- [Gate 3 RMS协议与有限诊断设计](compatibility/RMS_GATE3_PROTOCOL_20261104.md)：实际Binder布局、caller／client及回收边界、固定8秒候选、恢复方案和唯一A–F验收；仅离线设计准入，未制包／未操作真机。

- [无 ROOT 返回图标动画：调用链审计与实施设计](compatibility/GESTURE_NAV_CONTRACT_IMPLEMENTATION_DESIGN.md)：截至2026-11-04暂停；S1未通过，S2不启动。正式入口隐藏、编译开关关闭；代码／补丁与证据见实验归档。

- [全项目架构审计](development/FULL_PROJECT_ARCHITECTURE_AUDIT.md)：2026-10-15真实工作区、入口、线程和Owner盘点。
- [稳定性与问题清单](development/FULL_STABILITY_AND_BUG_AUDIT.md)：分级证据、最小修复、撤回候选及未关闭风险。
- [性能基线与优化](development/PERFORMANCE_BASELINE_AND_OPTIMIZATION.md)：五样本日志基线、分配验证和未证明的收益。
- [完整功能回归报告](development/FULL_FUNCTION_REGRESSION_REPORT.md)：27组离线、Android隔离、真实输入及未验设备矩阵。
- [代码简化与维护](development/CODE_SIMPLIFICATION_AND_MAINTENANCE.md)：实际收敛、保留复杂代码的理由和后续边界。
- [图标渲染合同](development/ICON_RENDERING_CONTRACT.md)：图标来源、唯一 Owner、栅格、缓存与验收边界。
- [图标光影交接](development/ICON_ILLUMINATION_HANDOFF.md)：感应光影合并记录与原版数值探针。
- [QuickSearch 审计](development/QUICK_SEARCH_AUDIT.md) 与 [最终状态](development/QUICK_SEARCH_FINAL_STATUS.md)：原版基线、数据链路和冻结边界。
- [HOME 返回兼容性与重构审计](compatibility/HOME_RETURN_COMPATIBILITY_AND_REFACTOR.md)：机型／导航矩阵、时序证据、已排除实验及宿主合同。
- [Android 17 启动、状态栏与图标审计](compatibility/ANDROID17_STARTUP_AND_ICON_AUDIT_20261014.md)：状态栏重载修复、默认图标处理和启动耗时拆分。

## 构建与架构

- [构建指南](build/BUILD_GUIDE.md)：Windows 构建、版本、Manifest、签名和产物验证。
- [APK 结构](architecture/APK_STRUCTURE.md)：原版 APK、反编译参考、主题包和桌面 Release 资产规则。
- [在线图标资源规则](../icons/README.md)

## 参考目录

- `launcher/`：桌面可编辑构建源码。
- `clean_launcher/`、`clean_launcher_raw/`：原版干净参考。
- `build/decompiled_theme_check/`：反编译参考缓存。
- `E:\FANG\smartisan\smartisan-launcher-maintained`：设置页和兼容实现参考，不是当前构建源码。
