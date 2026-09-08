.class Lcom/bytedance/sdk/openadsdk/core/p$5;
.super Ljava/lang/Object;
.source "NetApiImpl.java"

# interfaces
.implements Lc/b/a/a/d/p$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/p;->a(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/o$a;)V
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
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/o$a;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/core/p;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/p;Lcom/bytedance/sdk/openadsdk/core/o$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/p$5;->b:Lcom/bytedance/sdk/openadsdk/core/p;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/p$5;->a:Lcom/bytedance/sdk/openadsdk/core/o$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lc/b/a/a/d/p;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/a/d/p<",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lc/b/a/a/d/p;->a:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 2
    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/p$b;->a(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/p$b;

    move-result-object v0

    .line 3
    iget v1, v0, Lcom/bytedance/sdk/openadsdk/core/p$b;->a:I

    int-to-long v1, v1

    .line 4
    iget-wide v3, p1, Lc/b/a/a/d/p;->f:J

    .line 5
    iget-boolean p1, v0, Lcom/bytedance/sdk/openadsdk/core/p$b;->b:Z

    goto :goto_0

    :cond_0
    const-wide/16 v1, -0x1

    const-wide/16 v3, 0x0

    const/4 p1, 0x0

    :goto_0
    move v6, p1

    move-wide v7, v1

    move-wide v9, v3

    .line 6
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/p$5;->a:Lcom/bytedance/sdk/openadsdk/core/o$a;

    invoke-interface/range {v5 .. v10}, Lcom/bytedance/sdk/openadsdk/core/o$a;->a(ZJJ)V

    return-void
.end method

.method public b(Lc/b/a/a/d/p;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/a/d/p<",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-wide v0, p1, Lc/b/a/a/d/p;->h:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    move-wide v4, v0

    .line 2
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/p$5;->a:Lcom/bytedance/sdk/openadsdk/core/o$a;

    const/4 v3, 0x0

    iget-wide v6, p1, Lc/b/a/a/d/p;->f:J

    invoke-interface/range {v2 .. v7}, Lcom/bytedance/sdk/openadsdk/core/o$a;->a(ZJJ)V

    return-void
.end method
