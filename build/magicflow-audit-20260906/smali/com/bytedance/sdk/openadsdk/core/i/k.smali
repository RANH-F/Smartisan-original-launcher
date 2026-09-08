.class public Lcom/bytedance/sdk/openadsdk/core/i/k;
.super Ljava/lang/Object;
.source "TTDnsSettings.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/i/e;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/bytedance/sdk/openadsdk/core/i/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/core/i/k;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/i/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 12
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 13
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    .line 14
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/i/k;->b:Lcom/bytedance/sdk/openadsdk/core/i/c;

    if-eqz v3, :cond_1

    iget-object v3, v3, Lcom/bytedance/sdk/openadsdk/core/i/c;->b:Ljava/util/HashMap;

    if-eqz v3, :cond_1

    .line 15
    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/openadsdk/core/i/d;

    :cond_1
    if-nez v2, :cond_3

    const-string v0, "is.snssdk.com"

    .line 16
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 17
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/i/h;->a(Lcom/bytedance/sdk/openadsdk/core/i/e;)Lcom/bytedance/sdk/openadsdk/core/i/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/i/h;->a()V

    :cond_2
    return-object p1

    .line 18
    :cond_3
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/i/d;->d()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 19
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/i/h;->a(Lcom/bytedance/sdk/openadsdk/core/i/e;)Lcom/bytedance/sdk/openadsdk/core/i/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/i/h;->a()V

    return-object p1

    .line 20
    :cond_4
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/i/d;->e()Ljava/lang/String;

    move-result-object p1

    .line 21
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 22
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/i/h;->a(Lcom/bytedance/sdk/openadsdk/core/i/e;)Lcom/bytedance/sdk/openadsdk/core/i/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/i/h;->a()V

    goto :goto_0

    .line 23
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    .line 24
    invoke-direct {p0, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/i/k;->a(Lcom/bytedance/sdk/openadsdk/core/i/d;J)V

    :goto_0
    return-object p1
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/core/i/d;J)V
    .locals 2

    if-eqz p1, :cond_2

    .line 25
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/i/d;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/i/d;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 27
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/i/d;->a(Z)V

    .line 28
    new-instance v0, Lcom/bytedance/sdk/openadsdk/f/a/a;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/f/a/a;-><init>()V

    const-string v1, "dns_resolution_time"

    .line 29
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/f/a/d;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/f/a/d;

    .line 30
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/i/d;->a()Ljava/lang/String;

    move-result-object p1

    const-string v1, "dns_host"

    invoke-virtual {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/f/a/a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/sdk/openadsdk/f/a/a;

    .line 31
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "dns_duration"

    invoke-virtual {v0, p2, p1}, Lcom/bytedance/sdk/openadsdk/f/a/a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/sdk/openadsdk/f/a/a;

    .line 32
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/f/a;->a()Lcom/bytedance/sdk/openadsdk/f/a;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/f/a;->a(Lcom/bytedance/sdk/openadsdk/f/a/d;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/i/k;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/i/k;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/i/c;->a(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/i/c;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/i/k;->b:Lcom/bytedance/sdk/openadsdk/core/i/c;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private d()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    const-string v1, "dnsinfo"

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/i/k;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/i/k;->a:Ljava/lang/String;

    const-string v2, "tt_dns_settings"

    invoke-static {v2, v1, v0}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    .line 4
    :cond_1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/i/k;->e()Lcom/bytedance/sdk/openadsdk/utils/ad;

    move-result-object v0

    .line 5
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/i/k;->a:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 6
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/i/k;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ad;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private e()Lcom/bytedance/sdk/openadsdk/utils/ad;
    .locals 2

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "tt_dns_settings"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/ad;->a(Ljava/lang/String;Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/utils/ad;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    const-string v1, ""

    const-string v2, "dnsinfo"

    if-eqz v0, :cond_0

    const-string v0, "tt_dns_settings"

    .line 3
    invoke-static {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/i/k;->a:Ljava/lang/String;

    .line 4
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/i/k;->c()V

    return-void

    .line 5
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/i/k;->e()Lcom/bytedance/sdk/openadsdk/utils/ad;

    move-result-object v0

    .line 6
    invoke-virtual {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/utils/ad;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/i/k;->a:Ljava/lang/String;

    .line 7
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/i/k;->c()V

    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 0

    .line 8
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/i/c;->a(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/i/c;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/i/k;->b:Lcom/bytedance/sdk/openadsdk/core/i/c;

    .line 9
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/i/k;->b:Lcom/bytedance/sdk/openadsdk/core/i/c;

    if-eqz p1, :cond_0

    .line 10
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/i/c;->c()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/i/k;->a:Ljava/lang/String;

    .line 11
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/i/k;->d()V

    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/g/e;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/g/e;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/i/k$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/i/k$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/i/k;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/g/e;->a(Lc/b/a/a/d/q;)V

    return-void
.end method
