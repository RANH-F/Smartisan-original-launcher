.class Lcom/bytedance/sdk/openadsdk/d/a$1;
.super Ljava/lang/Object;
.source "JsAppAdDownloadManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/d/a;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/k;Lorg/json/JSONObject;Ljava/lang/String;Z)Lcom/bytedance/sdk/openadsdk/downloadnew/core/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/json/JSONObject;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/d/a;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/d/a;Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/d/a$1;->b:Lcom/bytedance/sdk/openadsdk/d/a;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/d/a$1;->a:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private varargs a([Ljava/lang/String;)V
    .locals 4

    if-eqz p1, :cond_2

    .line 1
    array-length v0, p1

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "message"

    const-string v2, "success"

    .line 3
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "appad"

    .line 4
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/d/a$1;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v1, 0x0

    .line 5
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 6
    aget-object v2, p1, v1

    add-int/lit8 v3, v1, 0x1

    aget-object v3, p1, v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/d/a$1;->b:Lcom/bytedance/sdk/openadsdk/d/a;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/d/a;->a(Lcom/bytedance/sdk/openadsdk/d/a;)Lcom/bytedance/sdk/openadsdk/d/b;

    move-result-object p1

    const-string v1, "app_ad_event"

    invoke-interface {p1, v1, v0}, Lcom/bytedance/sdk/openadsdk/d/b;->a(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string p1, "JsAppAdDownloadManager"

    const-string v0, "JSONException"

    .line 8
    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public onDownloadActive(JJLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 p5, 0x6

    new-array p5, p5, [Ljava/lang/String;

    const/4 p6, 0x0

    const-string v0, "status"

    aput-object v0, p5, p6

    const/4 p6, 0x1

    const-string v0, "download_active"

    aput-object v0, p5, p6

    const/4 p6, 0x2

    const-string v0, "total_bytes"

    aput-object v0, p5, p6

    .line 1
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x3

    aput-object p1, p5, p2

    const/4 p1, 0x4

    const-string p2, "current_bytes"

    aput-object p2, p5, p1

    .line 2
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x5

    aput-object p1, p5, p2

    .line 3
    invoke-direct {p0, p5}, Lcom/bytedance/sdk/openadsdk/d/a$1;->a([Ljava/lang/String;)V

    return-void
.end method

.method public onDownloadFailed(JJLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 p5, 0x6

    new-array p5, p5, [Ljava/lang/String;

    const/4 p6, 0x0

    const-string v0, "status"

    aput-object v0, p5, p6

    const/4 p6, 0x1

    const-string v0, "download_failed"

    aput-object v0, p5, p6

    const/4 p6, 0x2

    const-string v0, "total_bytes"

    aput-object v0, p5, p6

    .line 1
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x3

    aput-object p1, p5, p2

    const/4 p1, 0x4

    const-string p2, "current_bytes"

    aput-object p2, p5, p1

    .line 2
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x5

    aput-object p1, p5, p2

    .line 3
    invoke-direct {p0, p5}, Lcom/bytedance/sdk/openadsdk/d/a$1;->a([Ljava/lang/String;)V

    return-void
.end method

.method public onDownloadFinished(JLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 p3, 0x6

    new-array p3, p3, [Ljava/lang/String;

    const/4 p4, 0x0

    const-string v0, "status"

    aput-object v0, p3, p4

    const/4 p4, 0x1

    const-string v0, "download_finished"

    aput-object v0, p3, p4

    const/4 p4, 0x2

    const-string v0, "total_bytes"

    aput-object v0, p3, p4

    .line 1
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p4

    const/4 v0, 0x3

    aput-object p4, p3, v0

    const/4 p4, 0x4

    const-string v0, "current_bytes"

    aput-object v0, p3, p4

    .line 2
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x5

    aput-object p1, p3, p2

    .line 3
    invoke-direct {p0, p3}, Lcom/bytedance/sdk/openadsdk/d/a$1;->a([Ljava/lang/String;)V

    return-void
.end method

.method public onDownloadPaused(JJLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 p5, 0x6

    new-array p5, p5, [Ljava/lang/String;

    const/4 p6, 0x0

    const-string v0, "status"

    aput-object v0, p5, p6

    const/4 p6, 0x1

    const-string v0, "download_paused"

    aput-object v0, p5, p6

    const/4 p6, 0x2

    const-string v0, "total_bytes"

    aput-object v0, p5, p6

    .line 1
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x3

    aput-object p1, p5, p2

    const/4 p1, 0x4

    const-string p2, "current_bytes"

    aput-object p2, p5, p1

    .line 2
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x5

    aput-object p1, p5, p2

    .line 3
    invoke-direct {p0, p5}, Lcom/bytedance/sdk/openadsdk/d/a$1;->a([Ljava/lang/String;)V

    return-void
.end method

.method public onIdle()V
    .locals 2

    const-string v0, "status"

    const-string v1, "idle"

    .line 1
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/d/a$1;->a([Ljava/lang/String;)V

    return-void
.end method

.method public onInstalled(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    const-string p1, "status"

    const-string p2, "installed"

    .line 1
    filled-new-array {p1, p2}, [Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/d/a$1;->a([Ljava/lang/String;)V

    return-void
.end method
