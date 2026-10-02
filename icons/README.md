# 在线图标库

桌面按 Android 包名直接查找 PNG：

```text
icons/drawable/<packageName>.png
```

例如：

```text
icons/drawable/com.tencent.mm.png
icons/drawable/com.tencent.wework.png
```

## 图片要求

- PNG，建议 256×256 或 512×512。
- 必须保留透明背景；不要把截图背景、网格或白底一起放入图片。
- 单个文件不超过 512 KiB，边长 48–1024 px。
- 主图标文件名必须使用应用的真实包名，区分大小写。

## 加载顺序

1. Gitee 下载镜像仓库 `Smartisan-original-launcher-download` 的 `master` 分支。
2. GitHub `main` 分支镜像。
3. 两个镜像都失败时使用应用原图。

成功下载后写入桌面本地持久缓存 `filesDir/online_icon_cache_v4`。只有两个镜像都明确返回 404 时才写入短期 miss 缓存；网络超时、DNS/TLS 错误等临时失败不会污染不存在记录，后续加载可以继续重试。
更新同名图片后，如需立即让已下载用户刷新，应递增代码中的缓存目录版本，
本轮从 `online_icon_cache_v3` 改为 `online_icon_cache_v4`，下载、预览和备份恢复的源码缓存使用同一版本。
发布新 APK 前应先同步 GitHub／Gitee 图片库，否则新缓存仍可能下载到镜像中的旧图片；图片库不打包进主 APK。

## 应用图标选择

应用图标页的单应用“替换图标”会读取 APK 内：

```text
launcher/assets/icons/variants.json
```

仓库源文件为：

```text
icons/variants.json
```

`variants.json` 用于把一个包名映射到多个候选 PNG。候选文件仍放在 `icons/drawable/`，文件名可以是包名本身，也可以使用语义化类别名或兼容旧库的 `_2`、`_3` 后缀，例如：

```json
{
  "variants": {
    "com.example.app": [
      "com.example.app.png",
      "com.example.app_2.png"
    ]
  }
}
```

单应用选择页会合并系统应用别名、这里登记的变体、当前图标包命中图标和相册自定义入口；应用默认图标仅在页面顶部用于说明，不会重复出现在候选网格。当前正在使用的候选图标会显示维护版资源中的选中标记。选择“默认图标”会清除单应用替换并回到应用原图。

图标包通过标准 `appfilter.xml` 的 `component` / `drawable` 映射参与候选项；已安装且能命中当前应用的第三方图标包会显示在这里，无需把图标包图片再下载到在线图标库。

`index.json` 是完整文件清单，保留 `_2`、`_3` 等真实候选图，以便同步和完整性校验；实际“属于哪个应用、在替换页如何展示”只由 `variants.json` 决定。不要仅凭后缀判断文件错误，更不能批量删除或改名。

## 系统应用自适应

不同厂商的系统应用包名并不统一。Launcher 会先确认目标是系统应用或更新后的系统应用，再按包名、Activity 名称和系统应用标签识别相机、相册、浏览器、联系人、短信、邮件、计算器、文件管理、指南针、录音、音乐、视频、天气、便签、设置、安装器和 SIM 工具包，并映射到本目录中的锤子标准图标。第三方同名应用不会套用该映射。

系统视频统一请求 `com.smartisanos.videoplayerproject.png`，因此 OPPO、ColorOS、OnePlus 等系统视频应用不再依赖各自包名。`com.android.VideoPlayer.png` 保留为同一类别的可选图标，用户可在“替换图标”中手动选择。

`icons/system/archive/` 仅保存曾被错误归到系统设置候选的历史图片，不参与在线下载、自动匹配或候选图展示。

日历和时钟继续使用 Launcher 已有的动态日期 / 指针实现，不会被静态在线图片覆盖。

新增或替换图片后执行：

```powershell
python tools/generate_icon_index.py
```
