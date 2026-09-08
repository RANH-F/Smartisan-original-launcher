.class Lcom/bytedance/sdk/openadsdk/core/i/h$1;
.super Ljava/lang/Object;
.source "SdkDnsHelper.java"

# interfaces
.implements Lc/b/a/a/d/p$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/i/h;->run()V
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
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/i/h;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/i/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/i/h$1;->a:Lcom/bytedance/sdk/openadsdk/core/i/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lc/b/a/a/d/p;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/a/d/p<",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/i/h;->b()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p1, Lc/b/a/a/d/p;->a:Ljava/lang/Object;

    if-eqz p1, :cond_1

    .line 3
    check-cast p1, Lorg/json/JSONObject;

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/i/h$1;->a:Lcom/bytedance/sdk/openadsdk/core/i/h;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/i/h;->a(Lcom/bytedance/sdk/openadsdk/core/i/h;)Lcom/bytedance/sdk/openadsdk/core/i/e;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/i/e;->a(Lorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :catchall_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/i/h;->a(Ljava/lang/String;)V

    :cond_0
    return-void

    .line 7
    :cond_1
    :try_start_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/i/h$1;->a:Lcom/bytedance/sdk/openadsdk/core/i/h;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/i/h;->a(Lcom/bytedance/sdk/openadsdk/core/i/h;)Lcom/bytedance/sdk/openadsdk/core/i/e;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/i/e;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    return-void
.end method

.method public b(Lc/b/a/a/d/p;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/a/d/p<",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/i/h;->b()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2
    :try_start_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/i/h$1;->a:Lcom/bytedance/sdk/openadsdk/core/i/h;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/i/h;->a(Lcom/bytedance/sdk/openadsdk/core/i/h;)Lcom/bytedance/sdk/openadsdk/core/i/e;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/i/e;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
