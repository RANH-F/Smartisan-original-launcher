.class Lc/b/a/a/d/g;
.super Ljava/lang/Thread;
.source "CacheDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/b/a/a/d/g$b;
    }
.end annotation


# static fields
.field private static final g:Z


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

.field private final b:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lc/b/a/a/d/c<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final c:Lc/b/a/a/g/b;

.field private final d:Lc/b/a/a/g/d;

.field private volatile e:Z

.field private final f:Lc/b/a/a/d/g$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-boolean v0, Lc/b/a/a/d/r;->b:Z

    sput-boolean v0, Lc/b/a/a/d/g;->g:Z

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/BlockingQueue;Lc/b/a/a/g/b;Lc/b/a/a/g/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lc/b/a/a/d/c<",
            "*>;>;",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lc/b/a/a/d/c<",
            "*>;>;",
            "Lc/b/a/a/g/b;",
            "Lc/b/a/a/g/d;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lc/b/a/a/d/g;->e:Z

    .line 3
    iput-object p1, p0, Lc/b/a/a/d/g;->a:Ljava/util/concurrent/BlockingQueue;

    .line 4
    iput-object p2, p0, Lc/b/a/a/d/g;->b:Ljava/util/concurrent/BlockingQueue;

    .line 5
    iput-object p3, p0, Lc/b/a/a/d/g;->c:Lc/b/a/a/g/b;

    .line 6
    iput-object p4, p0, Lc/b/a/a/d/g;->d:Lc/b/a/a/g/d;

    .line 7
    new-instance p1, Lc/b/a/a/d/g$b;

    invoke-direct {p1, p0}, Lc/b/a/a/d/g$b;-><init>(Lc/b/a/a/d/g;)V

    iput-object p1, p0, Lc/b/a/a/d/g;->f:Lc/b/a/a/d/g$b;

    return-void
.end method

.method static synthetic a(Lc/b/a/a/d/g;)Ljava/util/concurrent/BlockingQueue;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/b/a/a/d/g;->b:Ljava/util/concurrent/BlockingQueue;

    return-object p0
.end method

.method static synthetic b(Lc/b/a/a/d/g;)Lc/b/a/a/g/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/b/a/a/d/g;->d:Lc/b/a/a/g/d;

    return-object p0
.end method

.method private b()V
    .locals 1

    .line 2
    iget-object v0, p0, Lc/b/a/a/d/g;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/b/a/a/d/c;

    .line 3
    invoke-virtual {p0, v0}, Lc/b/a/a/d/g;->a(Lc/b/a/a/d/c;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lc/b/a/a/d/g;->e:Z

    .line 3
    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method

.method a(Lc/b/a/a/d/c;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/a/d/c<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "cache-queue-take"

    .line 4
    invoke-virtual {p1, v0}, Lc/b/a/a/d/c;->addMarker(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 5
    invoke-virtual {p1, v0}, Lc/b/a/a/d/c;->a(I)V

    const/4 v1, 0x2

    .line 6
    :try_start_0
    invoke-virtual {p1}, Lc/b/a/a/d/c;->isCanceled()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "cache-discard-canceled"

    .line 7
    invoke-virtual {p1, v2}, Lc/b/a/a/d/c;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    invoke-virtual {p1, v1}, Lc/b/a/a/d/c;->a(I)V

    return-void

    .line 9
    :cond_0
    :try_start_1
    iget-object v2, p0, Lc/b/a/a/d/g;->c:Lc/b/a/a/g/b;

    invoke-virtual {p1}, Lc/b/a/a/d/c;->getCacheKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lc/b/a/a/g/b;->a(Ljava/lang/String;)Lc/b/a/a/g/b$a;

    move-result-object v2

    if-nez v2, :cond_2

    const-string v2, "cache-miss"

    .line 10
    invoke-virtual {p1, v2}, Lc/b/a/a/d/c;->addMarker(Ljava/lang/String;)V

    .line 11
    iget-object v2, p0, Lc/b/a/a/d/g;->f:Lc/b/a/a/d/g$b;

    invoke-static {v2, p1}, Lc/b/a/a/d/g$b;->a(Lc/b/a/a/d/g$b;Lc/b/a/a/d/c;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 12
    iget-object v2, p0, Lc/b/a/a/d/g;->b:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    :cond_1
    invoke-virtual {p1, v1}, Lc/b/a/a/d/c;->a(I)V

    return-void

    .line 14
    :cond_2
    :try_start_2
    invoke-virtual {v2}, Lc/b/a/a/g/b$a;->a()Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "cache-hit-expired"

    .line 15
    invoke-virtual {p1, v3}, Lc/b/a/a/d/c;->addMarker(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p1, v2}, Lc/b/a/a/d/c;->setCacheEntry(Lc/b/a/a/g/b$a;)Lc/b/a/a/d/c;

    .line 17
    iget-object v2, p0, Lc/b/a/a/d/g;->f:Lc/b/a/a/d/g$b;

    invoke-static {v2, p1}, Lc/b/a/a/d/g$b;->a(Lc/b/a/a/d/g$b;Lc/b/a/a/d/c;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 18
    iget-object v2, p0, Lc/b/a/a/d/g;->b:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 19
    :cond_3
    invoke-virtual {p1, v1}, Lc/b/a/a/d/c;->a(I)V

    return-void

    :cond_4
    :try_start_3
    const-string v3, "cache-hit"

    .line 20
    invoke-virtual {p1, v3}, Lc/b/a/a/d/c;->addMarker(Ljava/lang/String;)V

    .line 21
    new-instance v3, Lc/b/a/a/d/m;

    iget-object v4, v2, Lc/b/a/a/g/b$a;->a:[B

    iget-object v5, v2, Lc/b/a/a/g/b$a;->g:Ljava/util/Map;

    invoke-direct {v3, v4, v5}, Lc/b/a/a/d/m;-><init>([BLjava/util/Map;)V

    .line 22
    invoke-virtual {p1, v3}, Lc/b/a/a/d/c;->a(Lc/b/a/a/d/m;)Lc/b/a/a/d/p;

    move-result-object v3

    const-string v4, "cache-hit-parsed"

    .line 23
    invoke-virtual {p1, v4}, Lc/b/a/a/d/c;->addMarker(Ljava/lang/String;)V

    .line 24
    invoke-virtual {v2}, Lc/b/a/a/g/b$a;->b()Z

    move-result v4

    if-nez v4, :cond_5

    .line 25
    iget-object v2, p0, Lc/b/a/a/d/g;->d:Lc/b/a/a/g/d;

    invoke-interface {v2, p1, v3}, Lc/b/a/a/g/d;->a(Lc/b/a/a/d/c;Lc/b/a/a/d/p;)V

    goto :goto_0

    :cond_5
    const-string v4, "cache-hit-refresh-needed"

    .line 26
    invoke-virtual {p1, v4}, Lc/b/a/a/d/c;->addMarker(Ljava/lang/String;)V

    .line 27
    invoke-virtual {p1, v2}, Lc/b/a/a/d/c;->setCacheEntry(Lc/b/a/a/g/b$a;)Lc/b/a/a/d/c;

    .line 28
    iput-boolean v0, v3, Lc/b/a/a/d/p;->d:Z

    .line 29
    iget-object v2, p0, Lc/b/a/a/d/g;->f:Lc/b/a/a/d/g$b;

    invoke-static {v2, p1}, Lc/b/a/a/d/g$b;->a(Lc/b/a/a/d/g$b;Lc/b/a/a/d/c;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 30
    iget-object v2, p0, Lc/b/a/a/d/g;->d:Lc/b/a/a/g/d;

    new-instance v4, Lc/b/a/a/d/g$a;

    invoke-direct {v4, p0, p1}, Lc/b/a/a/d/g$a;-><init>(Lc/b/a/a/d/g;Lc/b/a/a/d/c;)V

    invoke-interface {v2, p1, v3, v4}, Lc/b/a/a/g/d;->a(Lc/b/a/a/d/c;Lc/b/a/a/d/p;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 31
    :cond_6
    iget-object v2, p0, Lc/b/a/a/d/g;->d:Lc/b/a/a/g/d;

    invoke-interface {v2, p1, v3}, Lc/b/a/a/g/d;->a(Lc/b/a/a/d/c;Lc/b/a/a/d/p;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    :try_start_4
    const-string v3, "CacheDispatcher Unhandled Throwable %s"

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 32
    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    invoke-static {v2, v3, v0}, Lc/b/a/a/d/r;->a(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    new-instance v0, Lc/b/a/a/f/a;

    invoke-direct {v0, v2}, Lc/b/a/a/f/a;-><init>(Ljava/lang/Throwable;)V

    .line 34
    iget-object v2, p0, Lc/b/a/a/d/g;->d:Lc/b/a/a/g/d;

    invoke-interface {v2, p1, v0}, Lc/b/a/a/g/d;->a(Lc/b/a/a/d/c;Lc/b/a/a/f/a;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 35
    :goto_0
    invoke-virtual {p1, v1}, Lc/b/a/a/d/c;->a(I)V

    return-void

    :catchall_1
    move-exception v0

    invoke-virtual {p1, v1}, Lc/b/a/a/d/c;->a(I)V

    .line 36
    throw v0
.end method

.method public run()V
    .locals 3

    .line 1
    sget-boolean v0, Lc/b/a/a/d/g;->g:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "start new dispatcher"

    invoke-static {v2, v0}, Lc/b/a/a/d/r;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/16 v0, 0xa

    .line 2
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 3
    iget-object v0, p0, Lc/b/a/a/d/g;->c:Lc/b/a/a/g/b;

    invoke-interface {v0}, Lc/b/a/a/g/b;->a()V

    .line 4
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lc/b/a/a/d/g;->b()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5
    :catch_0
    iget-boolean v0, p0, Lc/b/a/a/d/g;->e:Z

    if-eqz v0, :cond_1

    .line 6
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    return-void

    :cond_1
    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "Ignoring spurious interrupt of CacheDispatcher thread; use quit() to terminate it"

    .line 7
    invoke-static {v2, v0}, Lc/b/a/a/d/r;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
