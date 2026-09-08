.class public Lcom/bytedance/sdk/openadsdk/core/c/c;
.super Ljava/lang/Object;
.source "FrequentCallEventHelper.java"


# direct methods
.method private static a(Ljava/lang/String;J)Lorg/json/JSONObject;
    .locals 3

    .line 5
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "type"

    const-string v2, "over_freq"

    .line 6
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "rit"

    .line 7
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "ad_sdk_version"

    const-string v1, "2.8.0.3"

    .line 8
    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "timestamp"

    .line 9
    invoke-virtual {v0, p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 2

    .line 1
    invoke-static {p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/c/c;->a(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object p1

    .line 2
    new-instance p2, Lc/b/a/a/b/h;

    const/4 p3, 0x1

    const-string v0, "https://i.snssdk.com/api/ad/union/sdk/stats/"

    const/4 v1, 0x0

    invoke-direct {p2, p3, v0, p1, v1}, Lc/b/a/a/b/h;-><init>(ILjava/lang/String;Lorg/json/JSONObject;Lc/b/a/a/d/p$a;)V

    .line 3
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/g/e;->b()Lc/b/a/a/d/h;

    move-result-object p1

    const/16 p3, 0x2710

    invoke-virtual {p1, p3}, Lc/b/a/a/d/h;->a(I)Lc/b/a/a/d/h;

    invoke-virtual {p2, p1}, Lc/b/a/a/d/c;->setRetryPolicy(Lc/b/a/a/g/e;)Lc/b/a/a/d/c;

    move-result-object p1

    .line 4
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/g/e;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/g/e;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/g/e;->d()Lc/b/a/a/d/o;

    move-result-object p0

    invoke-virtual {p1, p0}, Lc/b/a/a/d/c;->build(Lc/b/a/a/d/o;)V

    return-void
.end method
