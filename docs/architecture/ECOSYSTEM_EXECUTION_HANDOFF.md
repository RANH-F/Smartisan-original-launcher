# Smartisan Icon 生态执行计划与交接记录

更新时间：2026-11-09，最近在线核对约 05:26 UTC。本文是**执行状态快照**，接手后先重新检查实际环境，再更新状态和证据。产品目标与跨项目约束见同目录的 `SMARTISAN_ICON_CURRENT_PLAN.md`、`SMARTISAN_ICON_ECOSYSTEM_MASTER_SPEC.md`。协议字段见 IconHub 的 `protocol/catalog-v1.md` 和 `protocol/iconhub-intent-v1.md`。

## 目标与不变量

- Smartisan Icon 展示本机应用适配状态、可搜索图标库、未适配排行和贡献榜，并支持登录、投稿和查看审核进度。首页默认本机已适配。界面保持 Smartisan 风格，图标无棋盘格和额外边框，普通详情无下载按钮。
- 阿里云承载账号、私有投稿、审核、发布任务和权威目录；已在 Gitee 的公开 PNG 先保留。Gitee 必须在隔离环境通过新增、更新、下架、恢复及公开回读验收，才能决定继续作为新图标发布源；无法满足时再迁移图片到阿里云。
- 两个客户端使用同一正式 Catalog Snapshot 和 revision 判断适配。精确组件、包名、变体按规范顺序匹配；离线和镜像故障沿用最后有效快照。已有 Launcher 的资源身份、手工选择和原桌面体验必须保留。
- 桌面和 IconHub 的选图、缓存、网络下载均扩展已有实现。未经用户要求不推送 GitHub、Gitee 正式分支，不覆盖用户未提交改动，不清理证据或数据库。
- 首页第三个筛选项历史上出现过「全部图标」和「全部应用」两种描述，右上角另有「图标库」。涉及重排时先结合最新用户指令和现有交互确认其范围，不能把两个概念自行合并。

## 现场状态

| 项目 | 最近证据 | 状态 |
|---|---|---|
| 阿里云 | 轻量服务器 `139.196.192.93`，`admin` SSH 已通且 `sudo -n` 可用。独立目录 `/opt/smartisan-icon-staging/app`；API 只绑定 `127.0.0.1:18100`，PostgreSQL 为 Compose 内网 | **部分完成**。保留同机 1Panel 和 meowbox 现有服务 |
| 数据库/API | PostgreSQL 与 API 容器健康，Alembic `20261109_0002 (head)`；服务器本机 `/v1/ping` 为 200，`catalog_revision=0`，`/v1/catalog/release` 为 404 | **后端启动，目录未初始化** |
| 服务源码 | 测试包本地 `build/iconhub-aliyun-test-20261109.tar.gz`，SHA-256 `9fa6f572b7d257bd5cd2463bea0506a39e7c48ee6cd3bbd2de1853b97559a7ff`。是 2026-11-09 的工作区快照，不代表某个干净 Git 提交 | **已上传测试机**。服务器 Dockerfile 曾为构建改用阿里云 PyPI 镜像，原文件备份为 `server/Dockerfile.before-aliyun-pypi-mirror`；更新前对照源包和备份 |
| 域名 | 最近查询域名 NS 仍为 Cloudflare `dax`、`paris`。阿里云 `dns13.hichina.com` 上测试 A 记录指向服务器；本机查询也出现该 A 记录。权威委派、缓存和 HTTPS 仍需分别复核 | **未验收**。用户希望改用阿里云 DNS；切换前核对根域、`www`、`order`、`icon` 和邮箱等实际需求 |
| SMTP | 测试环境未配置真实 SMTP。现有 `make_email_sender` 在 smtp 模式但 host 为空时会退回日志发送 | **不可判定真实注册可用**。公开前必须修正或明确阻断无 SMTP 的注册并验证真实投递，禁止把日志验证码当正式邮件 |
| Gitee | `gitee-icons/` 是独立 clone，最近为 `master...origin/master` 干净；外层 Git 已忽略。历史本机 HEAD 请求：一张 PNG 和部分目录 200，`index.json`、`variants.json` 为 451，`release.json` 为 404 | **隔离分支真实写入、版本更新和撤销未验收**。不可由一次 PNG 可读推断完整图库和发布链路可用 |
| IconHub 安卓 | 本地后端用隔离演示数据跑过注册、登录、排行和 12 项 Launcher mock 检查；服务端测试 140 passed/10 skipped，Android 101 项中 2 skipped、0 failures。APK 构建指向 `http://127.0.0.1:18181/`，vivo X21A `b2a4da1c` 已安装，`adb reverse tcp:18181 tcp:18181` 当时存在 | **仅本地演示证据**。手机界面和云端/真实邮箱/Gitee 尚未完成端到端验收；该测试 APK 依赖本机临时服务，不能当云端包 |
| Launcher | 当前图库搜索目录从 APK assets 读取；现有 Gitee PNG 地址指向 `master`，缓存命中优先。自动更新 revision、同源更新失效和撤销未完成 | **未实现双端全链路自动同步** |
| 工作区 | IconHub 存在大量预先暂存的 `build/` 索引删除、已修改源码和未跟踪迁移及文档。Launcher 仓库有既有文档改动 | **保留现场**。不得用 `git reset`、`clean`、整库覆盖或擅自提交；每次先核对 staged、unstaged 和 untracked |

当前 Android 工作区中的 `IconMirror.kt` 将旧的固定 NAS 备用地址改为 `BuildConfig.API_BASE`，对应单测已调整；尚未提交。云端包不包含 Android APK。临时本地服务可能仍监听 18181；先核对进程和设备映射再决定清理或继续使用。

## 依赖顺序与下一步

### 0. 接手复核

1. 两仓库分别查看 `git status --short --branch`、`git diff`、`git diff --cached --stat`。确认 Gitee 子仓库目录和分支。读取项目 AGENTS、总规范和本页。
2. 只读检查目标服务器容器、端口、健康接口、迁移版本、磁盘和内存。不得输出 `.env`、Token、邮箱授权码或数据库密码。核对源码包散列和实际运行镜像。
3. 重新查询域名注册商委派、Cloudflare 与阿里云权威结果、测试域名及 HTTPS；不要根据截图或本页旧记录单独判定 DNS 已切换。

**通过条件**：记录各仓库工作区、运行版本和可用连接，区分实时结果与旧证据。

### 1. 测试域名与 HTTPS

1. 协助用户将现用解析完整迁至阿里云。确认现有 `icon` 是否仍经 Cloudflare Tunnel，不能把 Cloudflare 代理 IP 当作服务源站。核对域名注册商实际 NS 和 DNSSEC，按域名实际业务记录迁移。
2. 将 `test-icon.fangbianmian.fun` 指向服务器，在独立站点申请证书并配置反代至 API。核对 1Panel OpenResty 所在网络，容器内 `127.0.0.1` 可能不是宿主机；不扩大数据库公网暴露。
3. 验证公网 HTTPS 的证书、`/healthz`、`/v1/ping`、未授权接口和上传限制。测试环境内邮件未配置时阻断注册验证码入口，避免现有 SMTP 空 host 静默写日志。

**通过条件**：域名权威解析与证书正确，真实手机可经 HTTPS 到达指定云端 API。若用户选择临时 IP 测试，使用受控 SSH 隧道与 USB 反向转发，仅记为测试路径。

### 2. 账号与邮件

1. 用户选择 SMTP 服务并在服务器私有环境中配置 host、端口、用户、授权码、发件人；不要收集或打印凭据。核对当前邮件实现使用 STARTTLS，所选服务端口必须匹配。
2. 修复 smtp 配置缺失时的静默日志回退，或在正式公开前提供清晰拒绝；本地 log 模式只用于隔离测试。
3. 用用户指定测试邮箱验证验证码发送、过期/重发、注册、登录、退出和错误密码；记录结果，不记录验证码或 token。

**通过条件**：真实邮件收到且真实客户端注册登录成功。没有 SMTP 前只可标记本地模拟通过。

### 3. 目录基线与 Gitee 资源

1. 审计 Launcher 现有 `icons/catalog.json`、`index.json` 和 PNG 与 Gitee `master` 的身份、数量、摘要，保留 `sourceId` 与包/组件映射。历史基线 5,199 个 PNG、4,720 个应用并非实时验收结果。
2. 复查 Gitee 451 的原因和当前公开访问。按正常平台流程处理；禁止绕过审核。官方目录与图片存在性按规范进行完整性审计。
3. 云端从已审计基线建立数据库和版本化目录，四份文件与 `release.json` 摘要一致。现有导入器会复制 PNG 到输出路径，不能直接当作“仅保留 Gitee 图片”的实现；先设计并验证其数据来源和本地备份策略，保持资源合同。
4. 两端配置同一权威目录入口。Gitee 不可读时验证阿里云同 revision 返回，客户端不能把 451 或空目录解释为未适配。

**通过条件**：云端 `/v1/catalog/release` 200，四份快照和抽样 PNG 实际 SHA-256 匹配，双端能读取同一 revision；不只看 `/v1/ping`。

### 4. 发布、更新、下架、恢复

1. 在 IconHub 服务端复用现有发布器，逐一审计 `platform_uploads.py`、`platform.py` 和 `admin.py` 两类入口，统一审核状态、发布任务、失败重试和权限。当前平台图标下架/恢复只改数据库，未重建公开目录。
2. 让新增/更新只写发生变化的图片，确认公开可读和摘要后发布完整快照，最后切换当前指针。当前 `publish_catalog_release` 对每一条索引资源再次调用上传，需处理这一代价与部分失败。保留旧版本及可恢复记录。
3. 下架/恢复必须产生已验证的新目录和撤销信息，服务端状态与 Gitee 目录镜像同步失败时展示待同步/失败，并有可重试路径。当前 `tombstones` 恒为空。判断是否需要旧 raw URL 实际不可访问：目前文件会留在 Gitee，上述下架仅靠移除目录不能使直链失效。
4. 使用独立 `iconhub-staging`，注入最小权限 Gitee 凭据到服务器私有配置，用一枚明确的测试图标完成新增、更新、下架、恢复。校验分支、原文件、公开 URL、哈希、revision 和失败恢复；不把 staging 结果当成 `master` 已更新。审核完成后设计可回退的正式发布及 Launcher 可读路径。

**通过条件**：后台操作与 Gitee 实际状态、云端正式目录同步一致，失败重试和回退均经过验证。Gitee 无法满足条件则按既定方案迁至阿里云，并验证 Launcher 兼容。

### 5. IconHub 与 Launcher 接入

1. IconHub 继续复用 `IconCatalogRepository`、`RemoteIconSource` 和有界图片缓存。验证配置的 API base 与目录备用地址一致，发布版使用正式 HTTPS。
2. Launcher 在 `IconLibraryCatalog`、`IconPreviewRepository` 和现有匹配/缓存链路上实现后台 revision 同步、四文件完整校验、快照原子替换和受影响资源失效。兼容内置目录、已有手工选图及离线状态。
3. 同源更新按 SHA/revision 识别旧缓存。下架后两端同步正式撤销状态，桌面停止自动匹配并回退有效候选或原图。历史 raw 直链是否删除单独验证。
4. 按现有 Intent 协议验证 Launcher 发起搜索/选图、返回选择、自定义图标分享以及身份和权限边界。

**通过条件**：两个客户端对相同已安装组件和 revision 给出相同适配状态；更新、下架、恢复不需重装，未联网时沿用最后有效快照。

### 6. 真机与发布门槛

1. 在目标手机记录设备序列号、原 APK/签名和安装前状态；每条 ADB 命令指定序列号。构建测试域名 APK，核对 API base、签名、SHA-256 后覆盖安装。
2. 同一图标依次测投稿、审核、上架、更新、下架、恢复，对照服务端状态、Gitee 分支与摘要、两个客户端 revision 和桌面显示。测试应用首页、图库搜索/详情、排行、登录/退出、返回与跨端选图。
3. 验证断网、451、服务器异常、快照摘要错误、离线恢复和缓存命中；验证真邮件、未登录权限和后台审核。测启动和滚动性能，区分截图、日志、真实触摸和完整矩阵证据。
4. 做数据库与私有上传文件备份恢复演练，记录源码版本、镜像、APK、迁移及回退操作。用户确认正式发布窗口后切正式域名和分发。

**全部完成**：线上和真机端到端验收通过、剩余限制有明确处理、备份和回退已实证。单元测试、健康接口或模拟账号成功都不能替代此门槛。

## 交接与记录

每一步在 IconHub `DEVELOPMENT_LOG.md` 追加日期、范围、命令、结果、设备或服务器目标、未完成项和回退方式。架构结论变更同步两个仓库同名文档并核对 SHA-256；部署具体命令维护在 `docs/deployment/ALIYUN_RUNBOOK.md`。目录/API/Intent 的合同变化需同时更新协议和双端消费者，不能单独引入第二套状态或协议。
