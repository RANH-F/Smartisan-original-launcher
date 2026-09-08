.class Lcom/bytedance/sdk/openadsdk/h/f$3;
.super Ljava/lang/Object;
.source "ProxyServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/h/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/h/f;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/h/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/h/f$3;->a:Lcom/bytedance/sdk/openadsdk/h/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const-string v0, "127.0.0.1"

    const-string v1, "TAG_PROXY_ProxyServer"

    .line 1
    :try_start_0
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/h/f$3;->a:Lcom/bytedance/sdk/openadsdk/h/f;

    new-instance v3, Ljava/net/ServerSocket;

    const/16 v4, 0x32

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v3, v6, v4, v5}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V

    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/h/f;->a(Lcom/bytedance/sdk/openadsdk/h/f;Ljava/net/ServerSocket;)Ljava/net/ServerSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/h/f$3;->a:Lcom/bytedance/sdk/openadsdk/h/f;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/h/f;->c(Lcom/bytedance/sdk/openadsdk/h/f;)Ljava/net/ServerSocket;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v3

    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/h/f;->a(Lcom/bytedance/sdk/openadsdk/h/f;I)I

    .line 3
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/h/f$3;->a:Lcom/bytedance/sdk/openadsdk/h/f;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/h/f;->d(Lcom/bytedance/sdk/openadsdk/h/f;)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    const-string v0, "socket not bound"

    const-string v1, ""

    .line 4
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/h/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/f$3;->a:Lcom/bytedance/sdk/openadsdk/h/f;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/f;->b(Lcom/bytedance/sdk/openadsdk/h/f;)V

    return-void

    .line 6
    :cond_0
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/h/f$3;->a:Lcom/bytedance/sdk/openadsdk/h/f;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/h/f;->d(Lcom/bytedance/sdk/openadsdk/h/f;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/h/j;->a(Ljava/lang/String;I)V

    .line 7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/f$3;->a:Lcom/bytedance/sdk/openadsdk/h/f;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/f;->e(Lcom/bytedance/sdk/openadsdk/h/f;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/f$3;->a:Lcom/bytedance/sdk/openadsdk/h/f;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/f;->f(Lcom/bytedance/sdk/openadsdk/h/f;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v6, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 9
    :cond_2
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/h/e;->c:Z

    if-eqz v0, :cond_3

    const-string v0, "proxy server start!"

    .line 10
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    :cond_3
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/f$3;->a:Lcom/bytedance/sdk/openadsdk/h/f;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/f;->f(Lcom/bytedance/sdk/openadsdk/h/f;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v0, v2, :cond_5

    .line 12
    :try_start_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/f$3;->a:Lcom/bytedance/sdk/openadsdk/h/f;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/f;->c(Lcom/bytedance/sdk/openadsdk/h/f;)Ljava/net/ServerSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 13
    :try_start_3
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/h/f$3;->a:Lcom/bytedance/sdk/openadsdk/h/f;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/h/f;->g(Lcom/bytedance/sdk/openadsdk/h/f;)Lcom/bytedance/sdk/openadsdk/h/b/c;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 14
    new-instance v4, Lcom/bytedance/sdk/openadsdk/h/g$a;

    invoke-direct {v4}, Lcom/bytedance/sdk/openadsdk/h/g$a;-><init>()V

    .line 15
    invoke-virtual {v4, v3}, Lcom/bytedance/sdk/openadsdk/h/g$a;->a(Lcom/bytedance/sdk/openadsdk/h/b/c;)Lcom/bytedance/sdk/openadsdk/h/g$a;

    move-result-object v3

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/h/f$3;->a:Lcom/bytedance/sdk/openadsdk/h/f;

    .line 16
    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/h/f;->i(Lcom/bytedance/sdk/openadsdk/h/f;)Ljava/util/concurrent/ExecutorService;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/openadsdk/h/g$a;->a(Ljava/util/concurrent/ExecutorService;)Lcom/bytedance/sdk/openadsdk/h/g$a;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/bytedance/sdk/openadsdk/h/g$a;->a(Ljava/net/Socket;)Lcom/bytedance/sdk/openadsdk/h/g$a;

    move-result-object v0

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/h/f$3;->a:Lcom/bytedance/sdk/openadsdk/h/f;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/h/f;->h(Lcom/bytedance/sdk/openadsdk/h/f;)Lcom/bytedance/sdk/openadsdk/h/g$c;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/h/g$a;->a(Lcom/bytedance/sdk/openadsdk/h/g$c;)Lcom/bytedance/sdk/openadsdk/h/g$a;

    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/h/g$a;->a()Lcom/bytedance/sdk/openadsdk/h/g;

    move-result-object v0

    .line 18
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/h/f$3;->a:Lcom/bytedance/sdk/openadsdk/h/f;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/h/f;->i(Lcom/bytedance/sdk/openadsdk/h/f;)Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 19
    :cond_4
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/g/d;->a(Ljava/net/Socket;)V

    goto :goto_0

    :catch_0
    move-exception v0

    .line 20
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const-string v3, "accept error"

    .line 21
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/bytedance/sdk/openadsdk/h/f;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    add-int/lit8 v6, v6, 0x1

    const/4 v0, 0x3

    if-le v6, v0, :cond_3

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 22
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    .line 23
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "proxy server crashed!  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "error"

    .line 24
    invoke-static {v2, v0}, Lcom/bytedance/sdk/openadsdk/h/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    :cond_5
    :goto_1
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/h/e;->c:Z

    if-eqz v0, :cond_6

    const-string v0, "proxy server closed!"

    .line 26
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    :cond_6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/f$3;->a:Lcom/bytedance/sdk/openadsdk/h/f;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/f;->b(Lcom/bytedance/sdk/openadsdk/h/f;)V

    return-void

    :catch_1
    move-exception v0

    .line 28
    sget-boolean v2, Lcom/bytedance/sdk/openadsdk/h/e;->c:Z

    if-eqz v2, :cond_7

    .line 29
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "create ServerSocket error!  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    :cond_7
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "create ServerSocket error"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/h/f;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/f$3;->a:Lcom/bytedance/sdk/openadsdk/h/f;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/f;->b(Lcom/bytedance/sdk/openadsdk/h/f;)V

    return-void
.end method
