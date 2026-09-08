.class Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;
.super Ljava/lang/Object;
.source "LibEventLogger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private final a:Lc/d/a/a/a/d/d;

.field private b:Lcom/bytedance/sdk/openadsdk/downloadnew/a/b/a;

.field private c:Lcom/bytedance/sdk/openadsdk/core/e/k;


# direct methods
.method private constructor <init>(Lc/d/a/a/a/d/d;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a:Lc/d/a/a/a/d/d;

    .line 3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a:Lc/d/a/a/a/d/d;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lc/d/a/a/a/d/d;->d()Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a:Lc/d/a/a/a/d/d;

    invoke-virtual {p1}, Lc/d/a/a/a/d/d;->d()Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "ad_extra_data"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "open_ad_sdk_download_extra"

    .line 7
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 8
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b/a;->a(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/downloadnew/a/b/a;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->b:Lcom/bytedance/sdk/openadsdk/downloadnew/a/b/a;

    .line 9
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->b:Lcom/bytedance/sdk/openadsdk/downloadnew/a/b/a;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a:Lc/d/a/a/a/d/d;

    invoke-virtual {v0}, Lc/d/a/a/a/d/d;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b/a;->b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/downloadnew/a/b/a;

    .line 10
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->b:Lcom/bytedance/sdk/openadsdk/downloadnew/a/b/a;

    if-eqz p1, :cond_0

    .line 11
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->b:Lcom/bytedance/sdk/openadsdk/downloadnew/a/b/a;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b/a;->a:Lcom/bytedance/sdk/openadsdk/core/e/k;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->c:Lcom/bytedance/sdk/openadsdk/core/e/k;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private a()Landroid/content/Context;
    .locals 1

    .line 2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->a()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lc/d/a/a/a/d/d;)Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;
    .locals 1

    .line 1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;-><init>(Lc/d/a/a/a/d/d;)V

    return-object v0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 1

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a:Lc/d/a/a/a/d/d;

    .line 4
    invoke-virtual {p1}, Lc/d/a/a/a/d/d;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "embeded_ad"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a:Lc/d/a/a/a/d/d;

    .line 5
    invoke-virtual {p1}, Lc/d/a/a/a/d/d;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "draw_ad"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a:Lc/d/a/a/a/d/d;

    .line 6
    invoke-virtual {p1}, Lc/d/a/a/a/d/d;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "draw_ad_landingpage"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a:Lc/d/a/a/a/d/d;

    .line 7
    invoke-virtual {p1}, Lc/d/a/a/a/d/d;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "banner_ad"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a:Lc/d/a/a/a/d/d;

    .line 8
    invoke-virtual {p1}, Lc/d/a/a/a/d/d;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "banner_call"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a:Lc/d/a/a/a/d/d;

    .line 9
    invoke-virtual {p1}, Lc/d/a/a/a/d/d;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "banner_ad_landingpage"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a:Lc/d/a/a/a/d/d;

    .line 10
    invoke-virtual {p1}, Lc/d/a/a/a/d/d;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "feed_call"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a:Lc/d/a/a/a/d/d;

    .line 11
    invoke-virtual {p1}, Lc/d/a/a/a/d/d;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "embeded_ad_landingpage"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a:Lc/d/a/a/a/d/d;

    .line 12
    invoke-virtual {p1}, Lc/d/a/a/a/d/d;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "interaction"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a:Lc/d/a/a/a/d/d;

    .line 13
    invoke-virtual {p1}, Lc/d/a/a/a/d/d;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "interaction_call"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a:Lc/d/a/a/a/d/d;

    .line 14
    invoke-virtual {p1}, Lc/d/a/a/a/d/d;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "interaction_landingpage"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a:Lc/d/a/a/a/d/d;

    .line 15
    invoke-virtual {p1}, Lc/d/a/a/a/d/d;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "slide_banner_ad"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a:Lc/d/a/a/a/d/d;

    .line 16
    invoke-virtual {p1}, Lc/d/a/a/a/d/d;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "splash_ad"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a:Lc/d/a/a/a/d/d;

    .line 17
    invoke-virtual {p1}, Lc/d/a/a/a/d/d;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "fullscreen_interstitial_ad"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a:Lc/d/a/a/a/d/d;

    .line 18
    invoke-virtual {p1}, Lc/d/a/a/a/d/d;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "splash_ad_landingpage"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a:Lc/d/a/a/a/d/d;

    .line 19
    invoke-virtual {p1}, Lc/d/a/a/a/d/d;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "rewarded_video"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a:Lc/d/a/a/a/d/d;

    .line 20
    invoke-virtual {p1}, Lc/d/a/a/a/d/d;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "rewarded_video_landingpage"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a:Lc/d/a/a/a/d/d;

    .line 21
    invoke-virtual {p1}, Lc/d/a/a/a/d/d;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "openad_sdk_download_complete_tag"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a:Lc/d/a/a/a/d/d;

    .line 22
    invoke-virtual {p1}, Lc/d/a/a/a/d/d;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "download_notificaion"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private b()Z
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    return v0

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->c:Lcom/bytedance/sdk/openadsdk/core/e/k;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->c:Lcom/bytedance/sdk/openadsdk/core/e/k;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/e/k;->k()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->c:Lcom/bytedance/sdk/openadsdk/core/e/k;

    .line 3
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/e/k;->y()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->c:Lcom/bytedance/sdk/openadsdk/core/e/k;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/e/k;->L()Lcom/bytedance/sdk/openadsdk/core/e/f;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 5
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/e/f;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    .line 6
    :cond_2
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->c:Lcom/bytedance/sdk/openadsdk/core/e/k;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/e/k;->K()Lcom/bytedance/sdk/openadsdk/core/e/b;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 7
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/e/b;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    .line 8
    :cond_3
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/e/b;->d()Ljava/lang/String;

    move-result-object v1

    .line 9
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/bytedance/sdk/openadsdk/utils/ah;->a(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    :catchall_0
    :cond_4
    :goto_0
    return v0
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a:Lc/d/a/a/a/d/d;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a:Lc/d/a/a/a/d/d;

    invoke-virtual {v0}, Lc/d/a/a/a/d/d;->a()Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->b:Lcom/bytedance/sdk/openadsdk/downloadnew/a/b/a;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->b:Lcom/bytedance/sdk/openadsdk/downloadnew/a/b/a;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b/a;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->b:Lcom/bytedance/sdk/openadsdk/downloadnew/a/b/a;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b/a;->b:Ljava/lang/String;

    .line 5
    :cond_1
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a:Lc/d/a/a/a/d/d;

    invoke-virtual {v1}, Lc/d/a/a/a/d/d;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->c:Lcom/bytedance/sdk/openadsdk/core/e/k;

    invoke-static {v0, v1, v2, v7}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/d;->a(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/e/k;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    const-string v0, "exit_warn"

    .line 7
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a:Lc/d/a/a/a/d/d;

    invoke-virtual {v1}, Lc/d/a/a/a/d/d;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "click_install"

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    if-eqz v0, :cond_a

    .line 8
    :try_start_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a:Lc/d/a/a/a/d/d;

    invoke-virtual {v0}, Lc/d/a/a/a/d/d;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v6

    const v8, -0x2e551e8b

    if-eq v6, v8, :cond_5

    const v8, -0x56761c

    if-eq v6, v8, :cond_4

    const v1, 0x35dafd

    if-eq v6, v1, :cond_3

    goto :goto_0

    :cond_3
    const-string v1, "show"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_1

    :cond_4
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v4, v2

    goto :goto_1

    :cond_5
    const-string v1, "click_exit"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v4, v3

    goto :goto_1

    :cond_6
    :goto_0
    move v4, v5

    :goto_1
    if-eqz v4, :cond_9

    if-eq v4, v3, :cond_8

    if-eq v4, v2, :cond_7

    goto :goto_2

    .line 9
    :cond_7
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->c:Lcom/bytedance/sdk/openadsdk/core/e/k;

    const-string v2, "back_install_1"

    invoke-static {v0, v1, v2, v7}, Lcom/bytedance/sdk/openadsdk/c/d;->c(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/k;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_2

    .line 10
    :cond_8
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->c:Lcom/bytedance/sdk/openadsdk/core/e/k;

    const-string v2, "back_install_0"

    invoke-static {v0, v1, v2, v7}, Lcom/bytedance/sdk/openadsdk/c/d;->c(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/k;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_2

    .line 11
    :cond_9
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->c:Lcom/bytedance/sdk/openadsdk/core/e/k;

    const-string v2, "back_install"

    invoke-static {v0, v1, v2, v7}, Lcom/bytedance/sdk/openadsdk/c/d;->c(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/k;Ljava/lang/String;Ljava/util/Map;)V

    :goto_2
    return-void

    :cond_a
    const-string v0, "delay_install"

    .line 12
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a:Lc/d/a/a/a/d/d;

    invoke-virtual {v6}, Lc/d/a/a/a/d/d;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "start_install"

    .line 13
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a:Lc/d/a/a/a/d/d;

    invoke-virtual {v6}, Lc/d/a/a/a/d/d;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 14
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->c:Lcom/bytedance/sdk/openadsdk/core/e/k;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/c/d;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/k;)V

    return-void

    .line 15
    :cond_b
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->b:Lcom/bytedance/sdk/openadsdk/downloadnew/a/b/a;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->c:Lcom/bytedance/sdk/openadsdk/core/e/k;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a:Lc/d/a/a/a/d/d;

    .line 16
    invoke-virtual {v0}, Lc/d/a/a/a/d/d;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a:Lc/d/a/a/a/d/d;

    .line 17
    invoke-virtual {v0}, Lc/d/a/a/a/d/d;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    goto/16 :goto_6

    .line 18
    :cond_c
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->b:Lcom/bytedance/sdk/openadsdk/downloadnew/a/b/a;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/b/a;->b:Ljava/lang/String;

    .line 19
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a:Lc/d/a/a/a/d/d;

    invoke-virtual {v6}, Lc/d/a/a/a/d/d;->a()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 20
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a:Lc/d/a/a/a/d/d;

    invoke-virtual {v6}, Lc/d/a/a/a/d/d;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    goto/16 :goto_3

    :sswitch_0
    const-string v1, "deeplink_url_true"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    const/16 v2, 0x9

    goto/16 :goto_4

    :sswitch_1
    const-string v1, "click_start"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    move v2, v4

    goto/16 :goto_4

    :sswitch_2
    const-string v1, "click_pause"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    move v2, v3

    goto/16 :goto_4

    :sswitch_3
    const-string v1, "install_finish"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 v2, 0x6

    goto :goto_4

    :sswitch_4
    const-string v1, "deeplink_open_success"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    const/16 v2, 0xc

    goto :goto_4

    :sswitch_5
    const-string v1, "open_url_app"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    const/16 v2, 0x8

    goto :goto_4

    :sswitch_6
    const-string v1, "download_finish"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 v2, 0x3

    goto :goto_4

    :sswitch_7
    const-string v1, "download_failed"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 v2, 0x4

    goto :goto_4

    :sswitch_8
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 v2, 0x5

    goto :goto_4

    :sswitch_9
    const-string v1, "deeplink_open_fail_for_packagename_no_match"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    const/16 v2, 0xa

    goto :goto_4

    :sswitch_a
    const-string v1, "click_open"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    const/4 v2, 0x7

    goto :goto_4

    :sswitch_b
    const-string v1, "deeplink_url_app"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    const/16 v2, 0xb

    goto :goto_4

    :sswitch_c
    const-string v1, "click_continue"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_4

    :cond_d
    :goto_3
    move v2, v5

    :goto_4
    packed-switch v2, :pswitch_data_0

    goto/16 :goto_7

    .line 21
    :pswitch_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->c:Lcom/bytedance/sdk/openadsdk/core/e/k;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a:Lc/d/a/a/a/d/d;

    invoke-virtual {v3}, Lc/d/a/a/a/d/d;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v0, v3, v7}, Lcom/bytedance/sdk/openadsdk/c/d;->i(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/k;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_7

    .line 22
    :pswitch_1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->c:Lcom/bytedance/sdk/openadsdk/core/e/k;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a:Lc/d/a/a/a/d/d;

    invoke-virtual {v3}, Lc/d/a/a/a/d/d;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v0, v3, v7}, Lcom/bytedance/sdk/openadsdk/c/d;->g(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/k;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_7

    .line 23
    :pswitch_2
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->c:Lcom/bytedance/sdk/openadsdk/core/e/k;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a:Lc/d/a/a/a/d/d;

    invoke-virtual {v3}, Lc/d/a/a/a/d/d;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v0, v3, v7}, Lcom/bytedance/sdk/openadsdk/c/d;->f(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/k;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_7

    .line 24
    :pswitch_3
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->c:Lcom/bytedance/sdk/openadsdk/core/e/k;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a:Lc/d/a/a/a/d/d;

    invoke-virtual {v3}, Lc/d/a/a/a/d/d;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v0, v3, v7}, Lcom/bytedance/sdk/openadsdk/c/d;->e(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/k;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_7

    .line 25
    :pswitch_4
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->c:Lcom/bytedance/sdk/openadsdk/core/e/k;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a:Lc/d/a/a/a/d/d;

    invoke-virtual {v3}, Lc/d/a/a/a/d/d;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v0, v3, v7}, Lcom/bytedance/sdk/openadsdk/c/d;->p(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/k;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_7

    .line 26
    :pswitch_5
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->c:Lcom/bytedance/sdk/openadsdk/core/e/k;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/ah;->f(Lcom/bytedance/sdk/openadsdk/core/e/k;)Ljava/lang/String;

    move-result-object v1

    .line 27
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->c:Lcom/bytedance/sdk/openadsdk/core/e/k;

    invoke-static {v2, v3, v0, v1, v7}, Lcom/bytedance/sdk/openadsdk/c/d;->q(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/k;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_7

    .line 28
    :pswitch_6
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a:Lc/d/a/a/a/d/d;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b;->c(Lc/d/a/a/a/d/d;)Lorg/json/JSONObject;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v2, "hijack"

    if-eqz v1, :cond_e

    :try_start_2
    const-string v3, "scene"

    .line 29
    invoke-virtual {v1, v3, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 30
    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    move v5, v3

    .line 31
    :cond_e
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v7, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->c:Lcom/bytedance/sdk/openadsdk/core/e/k;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a:Lc/d/a/a/a/d/d;

    invoke-virtual {v3}, Lc/d/a/a/a/d/d;->b()Ljava/lang/String;

    move-result-object v4

    move-object v3, v0

    move-object v6, v7

    invoke-static/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/c/d;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/k;Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;)V

    .line 33
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->b()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 34
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->c:Lcom/bytedance/sdk/openadsdk/core/e/k;

    const-string v3, "auto_control"

    invoke-static {v1, v2, v0, v3, v7}, Lcom/bytedance/sdk/openadsdk/c/d;->q(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/k;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_7

    .line 35
    :pswitch_7
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->c:Lcom/bytedance/sdk/openadsdk/core/e/k;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a:Lc/d/a/a/a/d/d;

    invoke-virtual {v3}, Lc/d/a/a/a/d/d;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v0, v3, v7}, Lcom/bytedance/sdk/openadsdk/c/d;->d(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/k;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_7

    .line 36
    :pswitch_8
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a:Lc/d/a/a/a/d/d;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b;->c(Lc/d/a/a/a/d/d;)Lorg/json/JSONObject;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v2, "unknown"

    if-eqz v1, :cond_f

    :try_start_3
    const-string v3, "fail_status"

    .line 37
    invoke-virtual {v1, v3, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "fail_msg"

    .line 38
    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v6, v1

    move v5, v3

    goto :goto_5

    :cond_f
    move-object v6, v2

    .line 39
    :goto_5
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->c:Lcom/bytedance/sdk/openadsdk/core/e/k;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a:Lc/d/a/a/a/d/d;

    invoke-virtual {v3}, Lc/d/a/a/a/d/d;->b()Ljava/lang/String;

    move-result-object v4

    move-object v3, v0

    invoke-static/range {v1 .. v7}, Lcom/bytedance/sdk/openadsdk/c/d;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/k;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)V

    goto :goto_7

    .line 40
    :pswitch_9
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->c:Lcom/bytedance/sdk/openadsdk/core/e/k;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a:Lc/d/a/a/a/d/d;

    invoke-virtual {v3}, Lc/d/a/a/a/d/d;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v0, v3, v7}, Lcom/bytedance/sdk/openadsdk/c/d;->c(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/k;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_7

    .line 41
    :pswitch_a
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->c:Lcom/bytedance/sdk/openadsdk/core/e/k;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a:Lc/d/a/a/a/d/d;

    invoke-virtual {v3}, Lc/d/a/a/a/d/d;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v0, v3, v7}, Lcom/bytedance/sdk/openadsdk/c/d;->b(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/k;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_7

    .line 42
    :pswitch_b
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->c:Lcom/bytedance/sdk/openadsdk/core/e/k;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a:Lc/d/a/a/a/d/d;

    invoke-virtual {v3}, Lc/d/a/a/a/d/d;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v0, v3, v7}, Lcom/bytedance/sdk/openadsdk/c/d;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/k;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_7

    .line 43
    :pswitch_c
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->c:Lcom/bytedance/sdk/openadsdk/core/e/k;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/b$a;->a:Lc/d/a/a/a/d/d;

    invoke-virtual {v3}, Lc/d/a/a/a/d/d;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7}, Lcom/bytedance/sdk/openadsdk/utils/ah;->a(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v1, v2, v0, v3, v4}, Lcom/bytedance/sdk/openadsdk/c/d;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/k;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_7

    :cond_10
    :goto_6
    return-void

    :catchall_0
    move-exception v0

    const-string v1, "LibEventLogger"

    const-string v2, "upload event log error"

    .line 44
    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_11
    :goto_7
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x4d5dae82 -> :sswitch_c
        -0x36492908 -> :sswitch_b
        -0x2e50b15f -> :sswitch_a
        -0x20461910 -> :sswitch_9
        -0x56761c -> :sswitch_8
        0x95a9fd4 -> :sswitch_7
        0x9cd982a -> :sswitch_6
        0x12e6025c -> :sswitch_5
        0x33781bc7 -> :sswitch_4
        0x51ddefb7 -> :sswitch_3
        0x6442087f -> :sswitch_2
        0x6474a6eb -> :sswitch_1
        0x6d2cb397 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
