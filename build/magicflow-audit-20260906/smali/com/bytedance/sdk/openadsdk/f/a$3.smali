.class Lcom/bytedance/sdk/openadsdk/f/a$3;
.super Ljava/lang/Object;
.source "StatsLogManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/f/a;->a(Ljava/util/List;Lcom/bytedance/sdk/openadsdk/core/e/k;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/core/e/k;

.field final synthetic c:Lcom/bytedance/sdk/openadsdk/f/a;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/f/a;Ljava/util/List;Lcom/bytedance/sdk/openadsdk/core/e/k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/f/a$3;->c:Lcom/bytedance/sdk/openadsdk/f/a;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/f/a$3;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/f/a$3;->b:Lcom/bytedance/sdk/openadsdk/core/e/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->h()Lcom/bytedance/sdk/openadsdk/core/i/l;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/i/l;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/w;->c(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/f/a$3;->c:Lcom/bytedance/sdk/openadsdk/f/a;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/f/a$3;->a:Ljava/util/List;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/f/a$3;->b:Lcom/bytedance/sdk/openadsdk/core/e/k;

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/f/a;->a(Lcom/bytedance/sdk/openadsdk/f/a;Ljava/util/List;Lcom/bytedance/sdk/openadsdk/core/e/k;)Lorg/json/JSONObject;

    move-result-object v0

    .line 5
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->f()Lcom/bytedance/sdk/openadsdk/core/o;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v0, v2}, Lcom/bytedance/sdk/openadsdk/core/o;->a(Lorg/json/JSONObject;I)Z

    return-void
.end method
