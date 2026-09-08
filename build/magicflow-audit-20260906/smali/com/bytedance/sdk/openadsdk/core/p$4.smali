.class Lcom/bytedance/sdk/openadsdk/core/p$4;
.super Ljava/lang/Object;
.source "NetApiImpl.java"

# interfaces
.implements Lc/b/a/a/d/p$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/p;->a(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/o$c;)V
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
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/o$c;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/core/p;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/p;Lcom/bytedance/sdk/openadsdk/core/o$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/p$4;->b:Lcom/bytedance/sdk/openadsdk/core/p;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/p$4;->a:Lcom/bytedance/sdk/openadsdk/core/o$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lc/b/a/a/d/p;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/a/d/p<",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_5

    .line 1
    iget-object v0, p1, Lc/b/a/a/d/p;->a:Ljava/lang/Object;

    if-eqz v0, :cond_5

    .line 2
    check-cast v0, Lorg/json/JSONObject;

    const/4 v1, -0x1

    const-string v2, "cypher"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 3
    iget-object v1, p1, Lc/b/a/a/d/p;->a:Ljava/lang/Object;

    check-cast v1, Lorg/json/JSONObject;

    const-string v2, "message"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4
    iget-object p1, p1, Lc/b/a/a/d/p;->a:Ljava/lang/Object;

    check-cast p1, Lorg/json/JSONObject;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    .line 5
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    .line 6
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/ah;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 7
    :cond_1
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 8
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object p1, v0

    .line 9
    :catchall_0
    :cond_2
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/p$c;->a(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/p$c;

    move-result-object p1

    .line 10
    iget v0, p1, Lcom/bytedance/sdk/openadsdk/core/p$c;->a:I

    const/16 v1, 0x4e20

    if-eq v0, v1, :cond_3

    .line 11
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/p$4;->a:Lcom/bytedance/sdk/openadsdk/core/o$c;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/g;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/o$c;->a(ILjava/lang/String;)V

    return-void

    .line 12
    :cond_3
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/core/p$c;->c:Lcom/bytedance/sdk/openadsdk/core/e/q;

    if-nez v0, :cond_4

    .line 13
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/p$4;->b:Lcom/bytedance/sdk/openadsdk/core/p;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p$4;->a:Lcom/bytedance/sdk/openadsdk/core/o$c;

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/p;->a(Lcom/bytedance/sdk/openadsdk/core/p;Lcom/bytedance/sdk/openadsdk/core/o$c;)V

    return-void

    .line 14
    :cond_4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p$4;->a:Lcom/bytedance/sdk/openadsdk/core/o$c;

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/o$c;->a(Lcom/bytedance/sdk/openadsdk/core/p$c;)V

    goto :goto_1

    .line 15
    :cond_5
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/p$4;->b:Lcom/bytedance/sdk/openadsdk/core/p;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/p$4;->a:Lcom/bytedance/sdk/openadsdk/core/o$c;

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/p;->a(Lcom/bytedance/sdk/openadsdk/core/p;Lcom/bytedance/sdk/openadsdk/core/o$c;)V

    :goto_1
    return-void
.end method

.method public b(Lc/b/a/a/d/p;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/a/d/p<",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    const/4 v0, -0x2

    .line 1
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/g;->a(I)Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_0

    .line 2
    iget-wide v2, p1, Lc/b/a/a/d/p;->h:J

    long-to-int v0, v2

    :cond_0
    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p1, Lc/b/a/a/d/p;->c:Lc/b/a/a/f/a;

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/p$4;->a:Lcom/bytedance/sdk/openadsdk/core/o$c;

    invoke-interface {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/o$c;->a(ILjava/lang/String;)V

    return-void
.end method
