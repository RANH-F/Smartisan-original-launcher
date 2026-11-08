# S0 双仓库基线与冻结点

日期：2026-11-08  
范围：Smartisan-IconHub + Smartisan Launcher Original Port 只读基线、规范同步与阶段入口。

## 冻结的统一规范

规范来源为用户提供的《Smartisan Icon × Smartisan Launcher 全链路统一图标生态实施总方案 V1.0》。两仓库文件均为 586 行，SHA-256：

`E6B4C091B17F2D379210964474DC5A8E09DF7C02CB5D16CCDF6D2B3AA578081A`

- IconHub：`docs/architecture/SMARTISAN_ICON_ECOSYSTEM_MASTER_SPEC.md`
- Launcher：`docs/architecture/SMARTISAN_ICON_ECOSYSTEM_MASTER_SPEC.md`
- 覆盖 Launcher 仓库此前未提交版本的备份：IconHub `build/backup/launcher-master-spec-before-sync-20261108.md`（仅本地保留，不纳入规范提交）

## 仓库基线

| 项目 | 基线 |
|---|---|
| Smartisan-IconHub | `fix/ui-ux-20261107`，HEAD `547c62fa`；用户既有截图/构建证据位于 `build/`，不覆盖、不删除。 |
| Smartisan Launcher Original Port | `main`，HEAD `5d38e880`；开始时已有 `AGENTS.md` 修改及未跟踪的架构规范，保留并纳入规范同步检查点。 |
| IconHub Android | versionName `0.1.0` / versionCode `1`；debug API 可通过 `-PapiBase` 指向线上。 |
| Launcher | 开发日志版本 `1.6.0-T` / versionCode `37`；桌面产物由 `launcher/` 与 `build.bat` 维护。 |

## 可复现验证证据

- IconHub 服务端：`python -m pytest tests -q` → **132 passed, 10 skipped**。有 3 条依赖弃用提示。
- Launcher 图标源：`python -B tools/icon_library.py source-audit` → 5,199 PNG、4,720 apps、4,625 packages、1,976 unclassified、18 duplicate groups、0 errors；唯一 warning 为 `INVALID_NAME com.miui. delock.theme`。
- Launcher 派生资源：`python -B tools/icon_library.py audit` → 5,199 sources，runtime assets synchronized。
- IconHub 正式 API：`python -B launcher_mock/mock_client.py --base https://icon.fangbianmian.fun --limit 1 --json` → schemas 可读但 `apps=0`、`index_count=0`、`downloads=false`、revision 缺失，整体失败。线上目前没有可供客户端同步的目录快照。
- Gitee 镜像证据：既有 `docs/phase-reports/S1-iconhub-online-architecture-audit.md` 与 `build/s0-audit/mirror-probe.json` 记录 `icons/index.json`、`icons/variants.json` HTTP 451；文件级回退和发布流程需在 S1/S2 解决。该报告中的旧实施建议以本次总规范为准。
- 真机：vivo X21A 已安装当前 IconHub debug 包；历史安装 SHA 与本地 APK 一致。此前启动首帧有短暂黑屏，5 秒后截图正常；这只作为基线，不代表本轮生态功能验收。

## 关键实现位置（待分阶段改动）

- IconHub Gallery：`android/app/src/main/java/com/smartisan/iconhub/ui/screens/GalleryPageView.kt`
- IconHub 已安装应用适配状态：`android/app/src/main/java/com/smartisan/iconhub/ui/apps/InstalledAppsViewModel.kt`
- IconHub 远端目录：`android/app/src/main/java/com/smartisan/iconhub/data/remote/IconCatalogRepository.kt`
- Launcher 图标目录生成和审计：`tools/icon_library.py`
- IconHub 服务端发布/目录：`server/app/services/catalog.py`、`server/app/services/publish.py`、`server/app/services/storage.py`

## 阶段状态

- [x] S0 基线、版本、分支、规范散列和现存验证记录
- [ ] S1 冻结协议字段、sourceId、路径、revision 与 release manifest；核对 451 回退
- [ ] S2 官方快照导入及 NAS/Gitee 发布事务
- [ ] S3 IconHub 在线目录与最后有效快照
- [ ] S4 IconHub 页面、交互和动效统一
- [ ] S5 Launcher 动态目录接入及原有数据库合同兼容
- [ ] S6 Intent/Provider 双端选择和提交链路
- [ ] S7 坚果 Pro 3 原版桌面集成（硬件/ROM 证据与回滚先决）
- [ ] S8 真实发布、降级、恢复、性能和跨端验收

## 回滚

本检查点只增加/同步规范和报告。代码阶段将独立提交；回退使用对应仓库的 `git revert <commit>`。Launcher 原未提交架构文件已另存至 IconHub `build/backup/`。
