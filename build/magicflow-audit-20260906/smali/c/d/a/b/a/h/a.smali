.class public Lc/d/a/b/a/h/a;
.super Ljava/lang/Object;
.source "DeviceBandwidthSampler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/d/a/b/a/h/a$a;
    }
.end annotation


# static fields
.field private static final e:Ljava/lang/String; = "a"

.field private static f:J = -0x1L

.field private static volatile g:Lc/d/a/b/a/h/a;


# instance fields
.field private final a:Lc/d/a/b/a/h/g;

.field private final b:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final c:Lc/d/a/b/a/h/a$a;

.field private d:J


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lc/d/a/b/a/h/g;->b()Lc/d/a/b/a/h/g;

    move-result-object v0

    iput-object v0, p0, Lc/d/a/b/a/h/a;->a:Lc/d/a/b/a/h/g;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lc/d/a/b/a/h/a;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 4
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ParseThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 6
    new-instance v1, Lc/d/a/b/a/h/a$a;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lc/d/a/b/a/h/a$a;-><init>(Lc/d/a/b/a/h/a;Landroid/os/Looper;)V

    iput-object v1, p0, Lc/d/a/b/a/h/a;->c:Lc/d/a/b/a/h/a$a;

    return-void
.end method

.method public static e()Lc/d/a/b/a/h/a;
    .locals 2

    .line 1
    sget-object v0, Lc/d/a/b/a/h/a;->g:Lc/d/a/b/a/h/a;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lc/d/a/b/a/h/a;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lc/d/a/b/a/h/a;->g:Lc/d/a/b/a/h/a;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lc/d/a/b/a/h/a;

    invoke-direct {v1}, Lc/d/a/b/a/h/a;-><init>()V

    sput-object v1, Lc/d/a/b/a/h/a;->g:Lc/d/a/b/a/h/a;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lc/d/a/b/a/h/a;->g:Lc/d/a/b/a/h/a;

    return-object v0
.end method

.method public static f()J
    .locals 4

    .line 1
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v0

    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxBytes()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lc/d/a/b/a/h/a;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-static {}, Lc/d/a/b/a/e/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Lc/d/a/b/a/h/a;->e:Ljava/lang/String;

    const-string v1, "startSampling"

    invoke-static {v0, v1}, Lc/d/a/b/a/e/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lc/d/a/b/a/h/a;->c:Lc/d/a/b/a/h/a$a;

    invoke-virtual {v0}, Lc/d/a/b/a/h/a$a;->a()V

    .line 5
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lc/d/a/b/a/h/a;->d:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lc/d/a/b/a/h/a;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-static {}, Lc/d/a/b/a/e/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Lc/d/a/b/a/h/a;->e:Ljava/lang/String;

    const-string v1, "stopSampling"

    invoke-static {v0, v1}, Lc/d/a/b/a/e/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lc/d/a/b/a/h/a;->c:Lc/d/a/b/a/h/a$a;

    invoke-virtual {v0}, Lc/d/a/b/a/h/a$a;->b()V

    .line 5
    invoke-virtual {p0}, Lc/d/a/b/a/h/a;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    return-void
.end method

.method protected c()V
    .locals 9

    .line 1
    :try_start_0
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->y()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lc/d/a/b/a/j/d;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lc/d/a/b/a/h/a;->f()J

    move-result-wide v0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxBytes()J

    move-result-wide v0

    .line 4
    :goto_0
    sget-wide v2, Lc/d/a/b/a/h/a;->f:J

    sub-long v2, v0, v2

    .line 5
    sget-wide v4, Lc/d/a/b/a/h/a;->f:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-ltz v4, :cond_1

    .line 6
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 8
    iget-object v6, p0, Lc/d/a/b/a/h/a;->a:Lc/d/a/b/a/h/g;

    iget-wide v7, p0, Lc/d/a/b/a/h/a;->d:J

    sub-long v7, v4, v7

    invoke-virtual {v6, v2, v3, v7, v8}, Lc/d/a/b/a/h/g;->a(JJ)V

    .line 9
    iput-wide v4, p0, Lc/d/a/b/a/h/a;->d:J

    .line 10
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0

    .line 11
    :cond_1
    :goto_1
    sput-wide v0, Lc/d/a/b/a/h/a;->f:J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method

.method protected d()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lc/d/a/b/a/h/a;->c()V

    const-wide/16 v0, -0x1

    .line 2
    sput-wide v0, Lc/d/a/b/a/h/a;->f:J

    return-void
.end method
