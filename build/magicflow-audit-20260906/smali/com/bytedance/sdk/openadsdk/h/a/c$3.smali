.class Lcom/bytedance/sdk/openadsdk/h/a/c$3;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/h/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/h/a/c;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/h/a/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/h/a/c$3;->a:Lcom/bytedance/sdk/openadsdk/h/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/a/c$3;->a:Lcom/bytedance/sdk/openadsdk/h/a/c;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/a/c;->b(Lcom/bytedance/sdk/openadsdk/h/a/c;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/h/a/c$3$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/h/a/c$3$1;-><init>(Lcom/bytedance/sdk/openadsdk/h/a/c$3;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
