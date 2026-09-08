.class Lcom/bytedance/sdk/openadsdk/h/g$1;
.super Ljava/lang/Object;
.source "ProxyTask.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/h/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/h/g;->a(Lcom/bytedance/sdk/openadsdk/h/b/a;Ljava/io/File;Lcom/bytedance/sdk/openadsdk/h/g$b;Lcom/bytedance/sdk/openadsdk/h/l$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/h/g;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/h/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/h/g$1;->a:Lcom/bytedance/sdk/openadsdk/h/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/openadsdk/h/b;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/g$1;->a:Lcom/bytedance/sdk/openadsdk/h/g;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/h/a;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v1, p1, Lcom/bytedance/sdk/openadsdk/h/a;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/g$1;->a:Lcom/bytedance/sdk/openadsdk/h/g;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/h/a;->d:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v1, p1, Lcom/bytedance/sdk/openadsdk/h/a;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 3
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/h/b;->m:Ljava/lang/Object;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p1, Lcom/bytedance/sdk/openadsdk/h/b;->m:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/h/a;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 7
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/h/g$1;->a:Lcom/bytedance/sdk/openadsdk/h/g;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/h/g;->a(Lcom/bytedance/sdk/openadsdk/h/g;)Lcom/bytedance/sdk/openadsdk/h/d;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/g$1;->a:Lcom/bytedance/sdk/openadsdk/h/g;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/h/a;->g()Z

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/h/d;->a(ZLjava/lang/String;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 8
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
