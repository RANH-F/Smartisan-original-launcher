.class public Lcom/smartisanos/magicflow/f;
.super Ljava/lang/Object;
.source "ThreadExecutor.java"


# static fields
.field private static final b:Ljava/lang/Object;

.field private static volatile c:Lcom/smartisanos/magicflow/f;

.field private static final d:Ljava/util/concurrent/TimeUnit;

.field private static final e:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/smartisanos/magicflow/f;->b:Ljava/lang/Object;

    .line 2
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sput-object v0, Lcom/smartisanos/magicflow/f;->d:Ljava/util/concurrent/TimeUnit;

    .line 3
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    sput-object v0, Lcom/smartisanos/magicflow/f;->e:Ljava/util/concurrent/BlockingQueue;

    return-void
.end method

.method private constructor <init>()V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v7, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Lcom/smartisanos/magicflow/f;->d:Ljava/util/concurrent/TimeUnit;

    sget-object v6, Lcom/smartisanos/magicflow/f;->e:Ljava/util/concurrent/BlockingQueue;

    const-wide/16 v3, 0x78

    const/4 v1, 0x4

    const/4 v2, 0x5

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v7, p0, Lcom/smartisanos/magicflow/f;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method public static a()Lcom/smartisanos/magicflow/f;
    .locals 2

    .line 6
    sget-object v0, Lcom/smartisanos/magicflow/f;->c:Lcom/smartisanos/magicflow/f;

    if-nez v0, :cond_1

    .line 7
    sget-object v0, Lcom/smartisanos/magicflow/f;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/smartisanos/magicflow/f;->c:Lcom/smartisanos/magicflow/f;

    if-nez v1, :cond_0

    .line 9
    new-instance v1, Lcom/smartisanos/magicflow/f;

    invoke-direct {v1}, Lcom/smartisanos/magicflow/f;-><init>()V

    sput-object v1, Lcom/smartisanos/magicflow/f;->c:Lcom/smartisanos/magicflow/f;

    .line 10
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 11
    :cond_1
    :goto_0
    sget-object v0, Lcom/smartisanos/magicflow/f;->c:Lcom/smartisanos/magicflow/f;

    return-object v0
.end method

.method private static a(Lcom/smartisanos/magicflow/f;)V
    .locals 0

    .line 5
    sput-object p0, Lcom/smartisanos/magicflow/f;->c:Lcom/smartisanos/magicflow/f;

    return-void
.end method

.method static synthetic a(Lcom/smartisanos/magicflow/f;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/smartisanos/magicflow/f;->b(Z)V

    return-void
.end method

.method public static a(Z)V
    .locals 1

    .line 4
    new-instance v0, Lcom/smartisanos/magicflow/f$a;

    invoke-direct {v0, p0}, Lcom/smartisanos/magicflow/f$a;-><init>(Z)V

    invoke-static {v0}, Lcom/smartisanos/magicflow/o/c;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private b(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/smartisanos/magicflow/f;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {p1}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdownNow()Ljava/util/List;

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/smartisanos/magicflow/f;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {p1}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V

    :goto_0
    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/smartisanos/magicflow/f;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 4
    invoke-static {p1}, Lcom/smartisanos/magicflow/f;->a(Lcom/smartisanos/magicflow/f;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/smartisanos/magicflow/i/e;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/util/concurrent/Future<",
            "Lcom/smartisanos/magicflow/h/r;",
            ">;>;"
        }
    .end annotation

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/f;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->invokeAll(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method
