.class Lcom/bytedance/sdk/openadsdk/core/i/i$1;
.super Ljava/lang/Object;
.source "SdkSettingsHelper.java"

# interfaces
.implements Lc/b/a/a/d/p$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/i/i;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lc/b/a/a/d/p$a<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/i/i;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/i/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/i/i$1;->a:Lcom/bytedance/sdk/openadsdk/core/i/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lc/b/a/a/d/p;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/a/d/p<",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_6

    .line 1
    iget-object v0, p1, Lc/b/a/a/d/p;->a:Ljava/lang/Object;

    if-eqz v0, :cond_6

    .line 2
    check-cast v0, Lorg/json/JSONObject;

    const/4 v1, -0x1

    const-string v2, "cypher"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 3
    iget-object v1, p1, Lc/b/a/a/d/p;->a:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Lorg/json/JSONObject;

    const-string v3, "message"

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v6, "SdkSettingsHelper"

    if-ne v0, v4, :cond_0

    .line 4
    check-cast v1, Lorg/json/JSONObject;

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 7
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setting data : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    const-string v3, "setting data error: "

    .line 9
    invoke-static {v6, v3, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_0
    const/4 v7, 0x2

    if-ne v0, v7, :cond_1

    .line 10
    check-cast v1, Lorg/json/JSONObject;

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 11
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ah;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 12
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 13
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setting data1 : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_0
    move-object v2, v1

    goto :goto_1

    :catchall_1
    move-exception v1

    const-string v3, "setting data error2: "

    .line 15
    invoke-static {v6, v3, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    move-object v0, v5

    .line 16
    :cond_2
    :goto_1
    :try_start_2
    iget-object v1, p1, Lc/b/a/a/d/p;->b:Lc/b/a/a/g/b$a;

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    iget-object p1, p1, Lc/b/a/a/d/p;->b:Lc/b/a/a/g/b$a;

    iget-object v5, p1, Lc/b/a/a/g/b$a;->g:Ljava/util/Map;

    .line 17
    :goto_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/i/i$1;->a:Lcom/bytedance/sdk/openadsdk/core/i/i;

    invoke-static {p1, v0, v5}, Lcom/bytedance/sdk/openadsdk/core/i/i;->a(Lcom/bytedance/sdk/openadsdk/core/i/i;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 18
    :catchall_2
    :try_start_3
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/i/i;->f()Z

    move-result p1

    if-nez p1, :cond_4

    .line 19
    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/core/i/i;->a(Z)Z

    .line 20
    :cond_4
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/i/i$1;->a:Lcom/bytedance/sdk/openadsdk/core/i/i;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/i/i;->a(Lcom/bytedance/sdk/openadsdk/core/i/i;)Lcom/bytedance/sdk/openadsdk/core/i/e;

    move-result-object p1

    invoke-interface {p1, v2}, Lcom/bytedance/sdk/openadsdk/core/i/e;->a(Lorg/json/JSONObject;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 21
    :catchall_3
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/f/a;->a()Lcom/bytedance/sdk/openadsdk/f/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/f/a;->b()V

    .line 22
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 23
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/i/i;->b()V

    :cond_5
    return-void

    .line 24
    :cond_6
    :try_start_4
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/i/i$1;->a:Lcom/bytedance/sdk/openadsdk/core/i/i;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/i/i;->a(Lcom/bytedance/sdk/openadsdk/core/i/i;)Lcom/bytedance/sdk/openadsdk/core/i/e;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/i/e;->a()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :catchall_4
    return-void
.end method

.method public b(Lc/b/a/a/d/p;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/a/d/p<",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/i/i$1;->a:Lcom/bytedance/sdk/openadsdk/core/i/i;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/i/i;->a(Lcom/bytedance/sdk/openadsdk/core/i/i;)Lcom/bytedance/sdk/openadsdk/core/i/e;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/i/e;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
