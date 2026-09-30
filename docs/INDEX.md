# Smartisan Launcher 文档索引

这里集中放置项目专项文档。根目录只保留项目入口和 AI 工作规则，详细资料按职责归档。

## 必读入口

1. [README.md](../README.md)：项目介绍、当前能力、版本和兼容基线。
2. [AGENTS.md](../AGENTS.md)：Codex / AI 修改项目时必须遵守的工作规则。
3. [MEMORY.md](../MEMORY.md)：长期有效的项目事实、稳定决策和兼容性结论。

## 开发

- [ISSUE_11_LAYOUT_ACCEPTANCE.md](development/ISSUE_11_LAYOUT_ACCEPTANCE.md)：Issue #11 原版字段 Owner、真实资源 profile 与独立验收包；远程视觉待验收。

- [DEVELOPMENT_LOG.md](development/DEVELOPMENT_LOG.md)：BUG 根因、修复方式、验证过程、回归注意和倒序每日记录。
- [LAUNCHER_FIX_AND_OPTIMIZATION_PLAN.md](development/LAUNCHER_FIX_AND_OPTIMIZATION_PLAN.md)：Launcher 启动、重载、宫格和主题专项的阶段计划与验收条件。
- [ICON_RENDERING_CONTRACT.md](development/ICON_RENDERING_CONTRACT.md)：普通、改进版、图标包、自定义及 Weather/Calendar 图标唯一 Owner、栅格、缓存与验收冻结合同。
- [ICON_ILLUMINATION_HANDOFF.md](development/ICON_ILLUMINATION_HANDOFF.md)：原版桌面图标感知阴影的已删除实验、真机证据、未解决断点与续做步骤。
- [QUICK_SEARCH_AUDIT.md](development/QUICK_SEARCH_AUDIT.md)：原版 QuickSearch 主基线、调用链、数据与兼容边界审计。
- [QUICK_SEARCH_FINAL_STATUS.md](development/QUICK_SEARCH_FINAL_STATUS.md)：QuickSearch 冻结后的当前架构、功能、验证与防回归边界。
- [CLEANUP.md](development/CLEANUP.md)：清理和归档候选项。记录候选，不代表可以直接删除。

## 构建

- [BUILD_GUIDE.md](build/BUILD_GUIDE.md)：Windows / PowerShell 构建、JDK / SDK、版本写入、Manifest 注入、签名和产物验证。

## 架构与资源

- [APK_STRUCTURE.md](architecture/APK_STRUCTURE.md)：原版 APK、反编译目录、主题包身份、构建产物和 Release 资产规则。
- [icons/README.md](../icons/README.md)：在线图标命名、资源要求、加载顺序和索引生成规则。

## 参考目录

- `launcher/`：当前可编辑构建源码。
- `clean_launcher/`：原版干净参考目录。
- `clean_launcher_raw/`：原始 raw 反编译参考目录。
- `build/decompiled_theme_check/com.smartisanos.launcher-3/`：原始 APK 反编译缓存。
- `E:\FANG\smartisan\smartisan-launcher-maintained`：设置页和兼容实现参考项目，不是当前构建源码。

## 预留分类

`compatibility/`、`theme/`、`icon/`、`reference/` 已建立为后续专项资料的归档位置。新增文档时优先放入对应目录，并在本索引登记；不要再把专项文档直接放到根目录。
