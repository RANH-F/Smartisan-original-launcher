.class public Lcom/bytedance/sdk/openadsdk/core/r;
.super Ljava/lang/Object;
.source "SecSdkHelper.java"


# static fields
.field private static a:Lcom/bytedance/sdk/openadsdk/core/r;

.field private static b:Lcom/bytedance/sdk/openadsdk/core/s;


# instance fields
.field private volatile c:Z

.field private volatile d:Z

.field private e:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/r;->c:Z

    .line 3
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/r;->d:Z

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/r;->e:Ljava/lang/String;

    .line 5
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/r;->e:Ljava/lang/String;

    .line 6
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/r;->b()Lcom/bytedance/sdk/openadsdk/TTSecAbs;

    move-result-object v0

    if-nez v0, :cond_0

    .line 7
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/s;->b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/s;

    move-result-object p1

    sput-object p1, Lcom/bytedance/sdk/openadsdk/core/r;->b:Lcom/bytedance/sdk/openadsdk/core/s;

    return-void

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/r;->e:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 9
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/r;->d:Z

    .line 10
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/r;->b()Lcom/bytedance/sdk/openadsdk/TTSecAbs;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/r;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/TTSecAbs;->NM_setParams(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private b()Lcom/bytedance/sdk/openadsdk/TTSecAbs;
    .locals 1

    .line 7
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h;->b()Lcom/bytedance/sdk/openadsdk/core/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/h;->m()Lcom/bytedance/sdk/openadsdk/TTSecAbs;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/r;
    .locals 2

    .line 1
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/r;->a:Lcom/bytedance/sdk/openadsdk/core/r;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/bytedance/sdk/openadsdk/core/r;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/r;->a:Lcom/bytedance/sdk/openadsdk/core/r;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/r;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/r;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/core/r;->a:Lcom/bytedance/sdk/openadsdk/core/r;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 6
    :cond_1
    :goto_0
    sget-object p0, Lcom/bytedance/sdk/openadsdk/core/r;->a:Lcom/bytedance/sdk/openadsdk/core/r;

    return-object p0
.end method

.method private e(Ljava/lang/String;)Z
    .locals 5

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const-string v0, ":"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 3
    array-length v0, p1

    const/16 v2, 0x14

    if-lt v0, v2, :cond_1

    .line 4
    array-length v0, p1

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    const-string v4, "00"

    .line 5
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 3

    const-string v0, ""

    const/4 v1, 0x0

    .line 9
    :try_start_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/r;->b()Lcom/bytedance/sdk/openadsdk/TTSecAbs;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 10
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/r;->b()Lcom/bytedance/sdk/openadsdk/TTSecAbs;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/TTSecAbs;->NM_pullSg()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 11
    :cond_0
    sget-object v2, Lcom/bytedance/sdk/openadsdk/core/r;->b:Lcom/bytedance/sdk/openadsdk/core/s;

    if-eqz v2, :cond_1

    .line 12
    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/r;->b:Lcom/bytedance/sdk/openadsdk/core/s;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/s;->a()Ljava/lang/String;

    move-result-object v1

    .line 13
    :cond_1
    :goto_0
    invoke-direct {p0, v1}, Lcom/bytedance/sdk/openadsdk/core/r;->e(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 14
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 15
    :cond_2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/e;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 16
    invoke-direct {p0, v1}, Lcom/bytedance/sdk/openadsdk/core/r;->e(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 17
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/r;->b:Lcom/bytedance/sdk/openadsdk/core/s;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/s;->a(Ljava/lang/String;)V

    .line 3
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/r;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/r;->e:Ljava/lang/String;

    .line 6
    :cond_2
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/r;->d:Z

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/r;->b()Lcom/bytedance/sdk/openadsdk/TTSecAbs;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/r;->d:Z

    .line 8
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/r;->b()Lcom/bytedance/sdk/openadsdk/TTSecAbs;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/TTSecAbs;->NM_setParams(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/r;->b:Lcom/bytedance/sdk/openadsdk/core/s;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/s;->c(Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/r;->c:Z

    if-eqz v0, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/r;->b()Lcom/bytedance/sdk/openadsdk/TTSecAbs;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    .line 5
    :cond_2
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/r;->b()Lcom/bytedance/sdk/openadsdk/TTSecAbs;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/TTSecAbs;->NM_reportNow(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/r;->c:Z

    return-void
.end method

.method public d(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    .line 4
    :cond_1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/r;->b()Lcom/bytedance/sdk/openadsdk/TTSecAbs;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 5
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/r;->b()Lcom/bytedance/sdk/openadsdk/TTSecAbs;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/TTSecAbs;->NM_pullVer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 6
    :cond_2
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/r;->b:Lcom/bytedance/sdk/openadsdk/core/s;

    if-eqz v0, :cond_3

    .line 7
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/s;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    return-object v1
.end method
