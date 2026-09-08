.class Lcom/bytedance/sdk/openadsdk/f/a$1;
.super Ljava/lang/Object;
.source "StatsLogManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/f/a;->i(Lcom/bytedance/sdk/openadsdk/f/a/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/f/a/d;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/f/a;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/f/a;Lcom/bytedance/sdk/openadsdk/f/a/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/f/a$1;->b:Lcom/bytedance/sdk/openadsdk/f/a;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/f/a$1;->a:Lcom/bytedance/sdk/openadsdk/f/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/f/a$1;->b:Lcom/bytedance/sdk/openadsdk/f/a;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/f/a$1;->a:Lcom/bytedance/sdk/openadsdk/f/a/d;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/f/a;->a(Lcom/bytedance/sdk/openadsdk/f/a;Lcom/bytedance/sdk/openadsdk/f/a/d;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/f/a$1;->b:Lcom/bytedance/sdk/openadsdk/f/a;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/f/a$1;->a:Lcom/bytedance/sdk/openadsdk/f/a/d;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/f/a/d;->e()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/f/a;->a(Lcom/bytedance/sdk/openadsdk/f/a;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/f/a$1;->a:Lcom/bytedance/sdk/openadsdk/f/a/d;

    const-string v1, "reg_creative"

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/f/a/d;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/f/a/d;

    .line 3
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->j()Lcom/bytedance/sdk/openadsdk/f/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/f/a$1;->a:Lcom/bytedance/sdk/openadsdk/f/a/d;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/f/b/a;->a(Lcom/bytedance/sdk/openadsdk/f/a/b;)V

    :cond_1
    :goto_0
    return-void
.end method
