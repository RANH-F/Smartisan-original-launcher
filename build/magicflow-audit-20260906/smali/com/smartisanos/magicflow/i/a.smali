.class public Lcom/smartisanos/magicflow/i/a;
.super Ljava/lang/Object;
.source "AdManagerHolder.java"


# static fields
.field private static a:Z = false

.field private static b:Ljava/lang/String; = "5060149"

.field public static c:Ljava/lang/String; = "945176925"


# direct methods
.method private static a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/TTAdConfig;
    .locals 3

    .line 4
    sget-boolean p0, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-nez p0, :cond_1

    .line 5
    sget-object p0, Lsmartisanos/util/DeviceType;->OSCAR:Lsmartisanos/util/DeviceType;

    invoke-static {p0}, Lsmartisanos/util/DeviceType;->is(Lsmartisanos/util/DeviceType;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "5061073"

    .line 6
    sput-object p0, Lcom/smartisanos/magicflow/i/a;->b:Ljava/lang/String;

    const-string p0, "945140562"

    .line 7
    sput-object p0, Lcom/smartisanos/magicflow/i/a;->c:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p0, "5061072"

    .line 8
    sput-object p0, Lcom/smartisanos/magicflow/i/a;->b:Ljava/lang/String;

    const-string p0, "945140561"

    .line 9
    sput-object p0, Lcom/smartisanos/magicflow/i/a;->c:Ljava/lang/String;

    .line 10
    :cond_1
    :goto_0
    new-instance p0, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;-><init>()V

    sget-object v0, Lcom/smartisanos/magicflow/i/a;->b:Ljava/lang/String;

    .line 11
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->appId(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    move-result-object p0

    const/4 v0, 0x1

    .line 12
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->useTextureView(Z)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    move-result-object p0

    const-string v1, "MagicFlow"

    .line 13
    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->appName(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    move-result-object p0

    const/4 v1, 0x0

    .line 14
    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->titleBarTheme(I)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    move-result-object p0

    .line 15
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->allowShowNotify(Z)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    move-result-object p0

    .line 16
    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->allowShowPageWhenScreenLock(Z)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    move-result-object p0

    sget-boolean v2, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    .line 17
    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->debug(Z)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    move-result-object p0

    new-array v0, v0, [I

    const/4 v2, 0x4

    aput v2, v0, v1

    .line 18
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->directDownloadNetworkType([I)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    move-result-object p0

    .line 19
    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->supportMultiProcess(Z)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    move-result-object p0

    new-array v0, v1, [Ljava/lang/String;

    .line 20
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->needClearTaskReset([Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    move-result-object p0

    new-instance v0, Lcom/smartisanos/magicflow/i/b;

    invoke-direct {v0}, Lcom/smartisanos/magicflow/i/b;-><init>()V

    .line 21
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->httpStack(Lc/b/a/a/g/a;)Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;

    move-result-object p0

    .line 22
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/TTAdConfig$Builder;->build()Lcom/bytedance/sdk/openadsdk/TTAdConfig;

    move-result-object p0

    return-object p0
.end method

.method public static a()Lcom/bytedance/sdk/openadsdk/TTAdManager;
    .locals 1

    .line 1
    sget-boolean v0, Lcom/smartisanos/magicflow/i/a;->a:Z

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/smartisanos/magicflow/service/MagicFlowService;->d()Lcom/smartisanos/magicflow/service/MagicFlowService;

    move-result-object v0

    invoke-static {v0}, Lcom/smartisanos/magicflow/i/a;->c(Landroid/content/Context;)V

    .line 3
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->getAdManager()Lcom/bytedance/sdk/openadsdk/TTAdManager;

    move-result-object v0

    return-object v0
.end method

.method private static b(Landroid/content/Context;)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/smartisanos/magicflow/i/a;->a:Z

    if-nez v0, :cond_0

    .line 2
    :try_start_0
    invoke-static {p0}, Lcom/smartisanos/magicflow/i/a;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/TTAdConfig;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/TTAdSdk;->init(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/TTAdConfig;)Lcom/bytedance/sdk/openadsdk/TTAdManager;

    const/4 p0, 0x1

    .line 3
    sput-boolean p0, Lcom/smartisanos/magicflow/i/a;->a:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 4
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    .line 5
    sput-boolean p0, Lcom/smartisanos/magicflow/i/a;->a:Z

    :cond_0
    :goto_0
    return-void
.end method

.method public static c(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/smartisanos/magicflow/i/a;->b(Landroid/content/Context;)V

    return-void
.end method
