# Icon Rendering Contract

状态：**ARCHITECTURE_FROZEN / IMPLEMENTATION_COMPLETE / RUNTIME_MATRIX_NOT_PASSED**

2026-11-01 默认圆框补充：用户要求已重绘的不规则透明图稿保留原形。v14复用已有完整底板分类；分类未命中的legacy图稿保留其规范来源画布及Alpha，不再添加中性圆底。该处理仅决定DEFAULT来源装饰，不新增几何倍率或Layout Owner；Adaptive背景和已确认完整底板沿原路径。模块实图、遮罩与回归边界见DEVELOPMENT_LOG.md本日记录。
冻结日期：2026-08-21

2026-10-24 圆框限定补充：DefaultIconCircleRenderer V9 对符合高覆盖、连续实心圆角底板特征的输入，仅在私有副本延展背景，保留完整前景矩阵；圆形、孔洞及不规则图案不强行当作底板。Adaptive 背景按平台 extra inset 展开，前景与阴影合同不变，API26引用仍受版本门控。Android9原生74检查及真实OPPO来源重放通过，OPPO整机/跨ROM矩阵未验收；详见 DEVELOPMENT_LOG.md 同日记录，不改变本文运行时矩阵未通过状态。

本文档是普通 Application 图标与 Weather/Calendar ActiveIcon 的唯一施工合同。其他文档出现冲突时，以原版真机证据和本文档为准。当前四层实现已经收敛且静态审计/构建通过，但固定运行时矩阵尚未完成；禁止记录 `FINAL`、`PASS` 或“所有机型一致”。

## 1. 一致性的定义

DEFAULT、IMPROVED、PACK、CUSTOM、RESOURCE 以及 Weather/Calendar 必须共享：

- 外部 artwork box；
- texture box；
- center；
- shadow contract；
- 用户图标大小；
- 当前 Surface 到原版逻辑坐标的统一映射。

不要求不同图案的 alpha visible bounds 完全相同。不得因单个机型、单个包名或单张截图“看起来偏大/偏小”新增倍率。

## 2. 唯一四层 Owner

### 2.1 Source Resolver

只决定 RAW artwork 的来源、身份和表示类型。不得缩放、加边距、加阴影或生成最终 texture。

来源类型：

- `DEFAULT`
- `IMPROVED`
- `PACK`
- `CUSTOM`
- `RESOURCE`

必须按应用实际解析结果分类，不能把全局选择等同于该应用实际命中。正式 managed source 暂时不可用时回退 `DEFAULT`。

2026-10-19 用户确认：开启默认圆框后，IMPROVED/PACK/CUSTOM/RESOURCE未匹配而回退应用原图时，也应按实际DEFAULT来源应用圆框；成功匹配的图案保持原样，来源选择不被回退改写。此前为透明模块按所选来源禁止回退圆框的旧策略不再作为本项通用规则。

### 2.2 IconVisualMetrics

唯一决定：

- `logicalArtworkBox`
- `logicalTextureBox`
- `physicalScale`
- `physicalArtworkPx`
- `physicalTexturePx`

其他模块禁止重新计算屏幕倍率或维护第二套最终图标尺寸。`physicalScale` 优先使用真实 Launcher/SMEngine Surface：

```text
physicalScale = actualLauncherSurfaceWidth / originalLogicalSurfaceWidth
```

`DisplayMetrics` 只能作为 Surface 尚不可用时的明确 fallback。禁止写死 720、1080、1220、1260、1440 或具体机型倍率。

### 2.3 Static Application Composer

所有普通 Application 来源，无论 Cold Bind、Hot Update、Backup Restore，都只能通过同一个最终 Composer。

每次新生成最终 raster 的合同：

```text
RAW artwork -> physical artwork -> shadow -> final physical texture
```

只允许一次 resample。禁止：

- `RAW -> logical bitmap -> physical bitmap` 二次缩放；
- `预合成 -> DB -> 再合成`；
- RAW 网络 Bitmap 直接成为最终 texture；
- managed source 解析失败后，把语义未知或已经留白的 DB bitmap 当 RAW 再加工。

计数规则：一次实际生成必须 `composerCount=1`；合法 final cache hit 可以为 `0`；同一 generation 中大于 `1` 或 RAW 直达 texture 均失败。

### 2.4 ActiveIcon Geometry Sync

Weather/Calendar 内部继续保留原版：

- `useSmallActiveIcon`
- `active_icon_scale`
- 192 reference space
- 背景、日期、数字、前景、Timeline 和翻转动画比例

`IconVisualMetrics` 是唯一数值 Owner；由它生成的 STATIC artwork geometry 是运行时 oracle。用户持久化/显示值必须保持真实 50/100/150，不得由 Bridge、ActiveIcon 或来源模块改写；原版 Golden 的 100% artwork 基准换算只能存在于 `IconVisualMetrics`，并由 LayoutProperty、STATIC Composer 和 ActiveIcon 共同消费。

每个 geometry generation 必须在 ActiveIcon attach 后、首次显示前，幂等执行一次：

```text
syncActiveIconToStaticArtwork()
```

验收指标：

```text
finalWidthRatio  = 0.995 .. 1.005
finalHeightRatio = 0.995 .. 1.005
abs(centerDeltaX) <= 0.5 logical px
abs(centerDeltaY) <= 0.5 logical px
```

Surface、宫格、用户大小、主题/阴影、Cell attach 或 Scene generation 改变时必须产生新的 geometry generation；同一 generation 重复调用不得累乘 scale。原版 Weather/Calendar 不创建普通 Application artwork 节点 `sc[1]`；最终缓存/静态 texture 由同一 Cell 的 `sc[0]` 显示。优先读取其实际 world rect；节点因不可见而未发布 world bounds 时，允许读取 `sc[0]` 已解析的 local display scale，因为它与 `sc[7]` 同属一个 Cell 且已经包含宫格和用户尺寸。LIVE 只能调整 Root 最终外部 geometry，不得改写内部 Timeline/child 动画。`sc[0]` 尚不存在时只能 defer，禁止用 `IconVisualMetrics` 的 logical/physical 数值臆造第二个运行时 oracle，禁止把 physical raster px 写回 SMEngine logical scale，也不得另算一份用户百分比。

## 3. Source normalization

### DEFAULT

允许执行经原版和真机验证的统一 optical normalization。不得按包名、设备、图标形状、面积或 fill ratio 特判。

### IMPROVED / PACK / CUSTOM / RESOURCE

保留设计方原始比例，不得再次按照 alpha bounds 执行 DEFAULT optical normalization。所有来源仍必须进入同一个 artwork box、texture box、center 和 shadow contract。

## 4. 数据库与备份表示

持久化 bitmap 必须具有可验证语义：

- `RAW_ARTWORK`：允许进入一次最终 Composer；
- `FINAL_TEXTURE`：仅在 geometry/cache identity 完全匹配时直接复用，禁止再次 Composer；
- `PROVIDER_DECORATED_FINAL`：QuickLaunch 独立合同，禁止进入普通 Application Composer；
- `LEGACY_UNKNOWN`：禁止作为 managed RAW，再解析失败时回退 DEFAULT。

持久身份至少包含 representation、source identity/hash、component、user/profile、geometry revision。备份保存可移植 RAW source 和来源选择；最终纹理属于可丢弃缓存，不是普通应用备份真相。

旧备份不能证明 bitmap 是 RAW 时，宁可暂时显示 DEFAULT，也禁止对可能已经预留白或预缩放的 bitmap 再加工。managed source 恢复后必须使 DEFAULT fallback cache 失效并按同一 Composer 重建。

## 5. Cache contract

所有普通图标 cache key 必须包含：

- geometry revision；
- actual Surface width；
- original logical Surface width；
- grid mode；
- icon size；
- theme/shadow mode 与 shadow revision；
- source type、identity、content hash 与 representation；
- component；
- user/profile；
- adaptive/legacy kind 与 badge identity。

不同 Surface、宫格、用户大小、主题、来源或 profile 禁止复用旧 raster。

## 6. Golden baseline

原版 Smartisan Launcher 是唯一视觉基准，不得以上一个修改版本作为 Golden。冻结原版 1080、12/20 宫格、100% 的：

- logical artwork/texture；
- center；
- shadow 参数和合成顺序；
- ActiveIcon 内部比例与动画。

设置页 100% 必须仍显示、持久化并进入 cache identity 为 100；若移植层需要把它映射到冻结的 Golden logical artwork/texture，只允许 `IconVisualMetrics` 持有该统一基准换算。禁止通过把用户值伪装成 120 或在 ActiveIcon 再乘一次比例实现。

现代设备的 physical px 只能由统一 `physicalScale` 推导。源素材分辨率不足只能标记 `SOURCE_LIMITED`，不得把插值放大描述成高清。

## 7. 修改纪律

任何图标修改必须先报告 `FIRST_BAD_OWNER`，且一次只修改一个 Owner。禁止修改 B 层参数补偿 A 层错误；禁止包名/机型/分辨率 magic ratio；禁止用延迟第二次 Composer、延迟覆盖 texture 或延迟 scale 修补竞态。

合法的下载合并、异步刷新和动画调度不因本合同禁止 `postDelayed`；审计只禁止它承担尺寸 Owner、第二次合成或最终纹理覆盖职责。

## 8. 自动检查

必须维护：

```powershell
python tools/audit_icon_contract.py
python tools/verify_icon_contract.py --log <runtime-log-file>
```

Static Audit 检查新增尺寸 Owner、Composer、magic ratio、尺寸补偿延迟和 direct RAW texture。Runtime Verify 检查每 generation Composer count、physical geometry、ActiveIcon ratio/center delta，以及 Cold/Hot/Restore 路由。

自动工具通过只表示合同指标通过，不替代关键组合的人工视觉验收。

## 9. 固定测试矩阵

- Source：DEFAULT、IMPROVED、PACK、CUSTOM、RESOURCE
- Lifecycle：Cold Bind、Hot Update、Backup Restore
- Grid：12、20
- Icon Size：50、100、150
- Surface：720、1080、1220/1260、1440/2K
- Active：Weather LIVE/STATIC、Calendar LIVE/STATIC、Calendar flip/day change

不要求对完整笛卡尔积全部人工截图；几何硬指标由自动日志验证，Golden 与高风险组合人工验收。

## 10. 通过与基线

矩阵未完成时不得写 `FINAL/PASS`。通过后建立本地、不可歧义的 `icon-contract-vX-pass` 基线，至少保存：

- 合同版本与代码 revision；
- Golden logical metrics；
- 自动审计与运行时验证输出；
- 关键组合截图/录像索引；
- APK hash、设备、Surface、宫格、用户大小和主题信息。

以后所有图标修改必须与该基线 diff；不得重新碰运气调倍率。
