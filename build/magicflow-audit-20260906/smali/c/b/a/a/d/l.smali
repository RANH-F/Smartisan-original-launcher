.class Lc/b/a/a/d/l;
.super Ljava/lang/Thread;
.source "NetworkDispatcher.java"


# instance fields
.field private final a:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lc/b/a/a/d/c<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final b:Lc/b/a/a/g/c;

.field private final c:Lc/b/a/a/g/b;

.field private final d:Lc/b/a/a/g/d;

.field private volatile e:Z


# direct methods
.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;Lc/b/a/a/g/c;Lc/b/a/a/g/b;Lc/b/a/a/g/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lc/b/a/a/d/c<",
            "*>;>;",
            "Lc/b/a/a/g/c;",
            "Lc/b/a/a/g/b;",
            "Lc/b/a/a/g/d;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lc/b/a/a/d/l;->e:Z

    .line 3
    iput-object p1, p0, Lc/b/a/a/d/l;->a:Ljava/util/concurrent/BlockingQueue;

    .line 4
    iput-object p2, p0, Lc/b/a/a/d/l;->b:Lc/b/a/a/g/c;

    .line 5
    iput-object p3, p0, Lc/b/a/a/d/l;->c:Lc/b/a/a/g/b;

    .line 6
    iput-object p4, p0, Lc/b/a/a/d/l;->d:Lc/b/a/a/g/d;

    return-void
.end method

.method private a(Lc/b/a/a/d/c;Lc/b/a/a/f/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/a/d/c<",
            "*>;",
            "Lc/b/a/a/f/a;",
            ")V"
        }
    .end annotation

    .line 42
    invoke-virtual {p1, p2}, Lc/b/a/a/d/c;->a(Lc/b/a/a/f/a;)Lc/b/a/a/f/a;

    move-result-object p2

    .line 43
    iget-object v0, p0, Lc/b/a/a/d/l;->d:Lc/b/a/a/g/d;

    invoke-interface {v0, p1, p2}, Lc/b/a/a/g/d;->a(Lc/b/a/a/d/c;Lc/b/a/a/f/a;)V

    return-void
.end method

.method private b()V
    .locals 1

    .line 3
    iget-object v0, p0, Lc/b/a/a/d/l;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/b/a/a/d/c;

    .line 4
    invoke-virtual {p0, v0}, Lc/b/a/a/d/l;->a(Lc/b/a/a/d/c;)V

    return-void
.end method

.method private b(Lc/b/a/a/d/c;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/a/d/c<",
            "*>;)V"
        }
    .end annotation

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 2
    invoke-virtual {p1}, Lc/b/a/a/d/c;->getTrafficStatsTag()I

    move-result p1

    invoke-static {p1}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lc/b/a/a/d/l;->e:Z

    .line 2
    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method

.method a(Lc/b/a/a/d/c;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/a/d/c<",
            "*>;)V"
        }
    .end annotation

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const/4 v2, 0x3

    .line 4
    invoke-virtual {p1, v2}, Lc/b/a/a/d/c;->a(I)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x4

    :try_start_0
    const-string v5, "network-queue-take"

    .line 5
    invoke-virtual {p1, v5}, Lc/b/a/a/d/c;->addMarker(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Lc/b/a/a/d/c;->isCanceled()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "network-discard-cancelled"

    .line 7
    invoke-virtual {p1, v5}, Lc/b/a/a/d/c;->a(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1}, Lc/b/a/a/d/c;->e()V
    :try_end_0
    .catch Lc/b/a/a/f/a; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    invoke-virtual {p1, v4}, Lc/b/a/a/d/c;->a(I)V

    return-void

    .line 10
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lc/b/a/a/d/l;->b(Lc/b/a/a/d/c;)V

    .line 11
    iget-object v5, p0, Lc/b/a/a/d/l;->b:Lc/b/a/a/g/c;

    invoke-interface {v5, p1}, Lc/b/a/a/g/c;->a(Lc/b/a/a/d/c;)Lc/b/a/a/d/m;

    move-result-object v5

    .line 12
    iget-wide v6, v5, Lc/b/a/a/d/m;->f:J

    invoke-virtual {p1, v6, v7}, Lc/b/a/a/d/c;->setNetDuration(J)V

    const-string v6, "network-http-complete"

    .line 13
    invoke-virtual {p1, v6}, Lc/b/a/a/d/c;->addMarker(Ljava/lang/String;)V

    .line 14
    iget-boolean v6, v5, Lc/b/a/a/d/m;->e:Z

    if-eqz v6, :cond_1

    invoke-virtual {p1}, Lc/b/a/a/d/c;->hasHadResponseDelivered()Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v5, "not-modified"

    .line 15
    invoke-virtual {p1, v5}, Lc/b/a/a/d/c;->a(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p1}, Lc/b/a/a/d/c;->e()V
    :try_end_1
    .catch Lc/b/a/a/f/a; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    invoke-virtual {p1, v4}, Lc/b/a/a/d/c;->a(I)V

    return-void

    .line 18
    :cond_1
    :try_start_2
    invoke-virtual {p1, v5}, Lc/b/a/a/d/c;->a(Lc/b/a/a/d/m;)Lc/b/a/a/d/p;

    move-result-object v6

    .line 19
    iget-wide v7, v5, Lc/b/a/a/d/m;->f:J

    invoke-virtual {p1, v7, v8}, Lc/b/a/a/d/c;->setNetDuration(J)V

    const-string v5, "network-parse-complete"

    .line 20
    invoke-virtual {p1, v5}, Lc/b/a/a/d/c;->addMarker(Ljava/lang/String;)V

    .line 21
    invoke-virtual {p1}, Lc/b/a/a/d/c;->shouldCache()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, v6, Lc/b/a/a/d/p;->b:Lc/b/a/a/g/b$a;

    if-eqz v5, :cond_2

    .line 22
    iget-object v5, p0, Lc/b/a/a/d/l;->c:Lc/b/a/a/g/b;

    invoke-virtual {p1}, Lc/b/a/a/d/c;->getCacheKey()Ljava/lang/String;

    move-result-object v7

    iget-object v8, v6, Lc/b/a/a/d/p;->b:Lc/b/a/a/g/b$a;

    invoke-interface {v5, v7, v8}, Lc/b/a/a/g/b;->a(Ljava/lang/String;Lc/b/a/a/g/b$a;)V

    const-string v5, "network-cache-written"

    .line 23
    invoke-virtual {p1, v5}, Lc/b/a/a/d/c;->addMarker(Ljava/lang/String;)V

    .line 24
    :cond_2
    invoke-virtual {p1}, Lc/b/a/a/d/c;->markDelivered()V

    .line 25
    iget-object v5, p0, Lc/b/a/a/d/l;->d:Lc/b/a/a/g/d;

    invoke-interface {v5, p1, v6}, Lc/b/a/a/g/d;->a(Lc/b/a/a/d/c;Lc/b/a/a/d/p;)V

    .line 26
    invoke-virtual {p1, v6}, Lc/b/a/a/d/c;->b(Lc/b/a/a/d/p;)V
    :try_end_2
    .catch Lc/b/a/a/f/a; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v5

    :try_start_3
    const-string v6, "NetworkDispatcher Unhandled throwable %s"

    new-array v3, v3, [Ljava/lang/Object;

    .line 27
    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v2

    invoke-static {v5, v6, v3}, Lc/b/a/a/d/r;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    new-instance v2, Lc/b/a/a/f/a;

    invoke-direct {v2, v5}, Lc/b/a/a/f/a;-><init>(Ljava/lang/Throwable;)V

    .line 29
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {v2, v5, v6}, Lc/b/a/a/f/a;->a(J)V

    .line 30
    iget-object v0, p0, Lc/b/a/a/d/l;->d:Lc/b/a/a/g/d;

    invoke-interface {v0, p1, v2}, Lc/b/a/a/g/d;->a(Lc/b/a/a/d/c;Lc/b/a/a/f/a;)V

    .line 31
    invoke-virtual {p1}, Lc/b/a/a/d/c;->e()V

    goto :goto_0

    :catch_0
    move-exception v5

    const-string v6, "Unhandled exception %s"

    new-array v3, v3, [Ljava/lang/Object;

    .line 32
    invoke-virtual {v5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v2

    invoke-static {v5, v6, v3}, Lc/b/a/a/d/r;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    new-instance v2, Lc/b/a/a/f/a;

    invoke-direct {v2, v5}, Lc/b/a/a/f/a;-><init>(Ljava/lang/Throwable;)V

    .line 34
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {v2, v5, v6}, Lc/b/a/a/f/a;->a(J)V

    .line 35
    iget-object v0, p0, Lc/b/a/a/d/l;->d:Lc/b/a/a/g/d;

    invoke-interface {v0, p1, v2}, Lc/b/a/a/g/d;->a(Lc/b/a/a/d/c;Lc/b/a/a/f/a;)V

    .line 36
    invoke-virtual {p1}, Lc/b/a/a/d/c;->e()V

    goto :goto_0

    :catch_1
    move-exception v2

    .line 37
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {v2, v5, v6}, Lc/b/a/a/f/a;->a(J)V

    .line 38
    invoke-direct {p0, p1, v2}, Lc/b/a/a/d/l;->a(Lc/b/a/a/d/c;Lc/b/a/a/f/a;)V

    .line 39
    invoke-virtual {p1}, Lc/b/a/a/d/c;->e()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 40
    :goto_0
    invoke-virtual {p1, v4}, Lc/b/a/a/d/c;->a(I)V

    return-void

    :catchall_1
    move-exception v0

    invoke-virtual {p1, v4}, Lc/b/a/a/d/c;->a(I)V

    .line 41
    throw v0
.end method

.method public run()V
    .locals 2

    const/16 v0, 0xa

    .line 1
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 2
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lc/b/a/a/d/l;->b()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3
    :catch_0
    iget-boolean v0, p0, Lc/b/a/a/d/l;->e:Z

    if-eqz v0, :cond_0

    .line 4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    return-void

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Ignoring spurious interrupt of NetworkDispatcher thread; use quit() to terminate it"

    .line 5
    invoke-static {v1, v0}, Lc/b/a/a/d/r;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
