.class public Lcom/bytedance/sdk/openadsdk/h/d;
.super Ljava/lang/Object;
.source "Preloader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/h/d$b;,
        Lcom/bytedance/sdk/openadsdk/h/d$a;
    }
.end annotation


# static fields
.field private static volatile e:Lcom/bytedance/sdk/openadsdk/h/d;


# instance fields
.field private volatile a:I

.field private final b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/openadsdk/h/b;",
            ">;>;"
        }
    .end annotation
.end field

.field private final c:Lcom/bytedance/sdk/openadsdk/h/d$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/sdk/openadsdk/h/d$b<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/concurrent/ExecutorService;

.field private volatile f:Lcom/bytedance/sdk/openadsdk/h/b/c;

.field private volatile g:Lcom/bytedance/sdk/openadsdk/h/a/c;

.field private volatile h:Lcom/bytedance/sdk/openadsdk/h/a/b;

.field private final i:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/bytedance/sdk/openadsdk/h/d$a;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Lcom/bytedance/sdk/openadsdk/h/b$b;

.field private volatile k:Lcom/bytedance/sdk/openadsdk/h/c;

.field private volatile l:Lcom/bytedance/sdk/openadsdk/h/c;

.field private volatile m:Ljava/lang/String;

.field private volatile n:Z


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x28000

    .line 2
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/h/d;->a:I

    .line 3
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/d;->b:Landroid/util/SparseArray;

    .line 4
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/d;->i:Ljava/util/HashSet;

    .line 5
    new-instance v0, Lcom/bytedance/sdk/openadsdk/h/d$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/h/d$1;-><init>(Lcom/bytedance/sdk/openadsdk/h/d;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/d;->j:Lcom/bytedance/sdk/openadsdk/h/b$b;

    .line 6
    new-instance v0, Lcom/bytedance/sdk/openadsdk/h/d$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/h/d$b;-><init>(Lcom/bytedance/sdk/openadsdk/h/d$1;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/d;->c:Lcom/bytedance/sdk/openadsdk/h/d$b;

    .line 7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/d;->c:Lcom/bytedance/sdk/openadsdk/h/d$b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/d;->a(Lcom/bytedance/sdk/openadsdk/h/d$b;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/d;->d:Ljava/util/concurrent/ExecutorService;

    .line 8
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/d;->c:Lcom/bytedance/sdk/openadsdk/h/d$b;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/h/d;->d:Ljava/util/concurrent/ExecutorService;

    check-cast v1, Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/h/d$b;->a(Ljava/util/concurrent/ThreadPoolExecutor;)V

    .line 9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/d;->b:Landroid/util/SparseArray;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 10
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/d;->b:Landroid/util/SparseArray;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/h/d;)Landroid/util/SparseArray;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/h/d;->b:Landroid/util/SparseArray;

    return-object p0
.end method

.method private static a(Lcom/bytedance/sdk/openadsdk/h/d$b;)Ljava/util/concurrent/ExecutorService;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/h/d$b<",
            "Ljava/lang/Runnable;",
            ">;)",
            "Ljava/util/concurrent/ExecutorService;"
        }
    .end annotation

    .line 107
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/h/g/d;->a()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    move v5, v2

    goto :goto_0

    :cond_0
    if-le v0, v1, :cond_1

    move v5, v1

    goto :goto_0

    :cond_1
    move v5, v0

    .line 108
    :goto_0
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v4, 0x0

    const-wide/16 v6, 0x3c

    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v10, Lcom/bytedance/sdk/openadsdk/h/d$4;

    invoke-direct {v10}, Lcom/bytedance/sdk/openadsdk/h/d$4;-><init>()V

    new-instance v11, Lcom/bytedance/sdk/openadsdk/h/d$5;

    invoke-direct {v11, p0}, Lcom/bytedance/sdk/openadsdk/h/d$5;-><init>(Lcom/bytedance/sdk/openadsdk/h/d$b;)V

    move-object v3, v0

    move-object v9, p0

    invoke-direct/range {v3 .. v11}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    return-object v0
.end method

.method static synthetic b(Lcom/bytedance/sdk/openadsdk/h/d;)Lcom/bytedance/sdk/openadsdk/h/d$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/h/d;->c:Lcom/bytedance/sdk/openadsdk/h/d$b;

    return-object p0
.end method

.method public static c()Lcom/bytedance/sdk/openadsdk/h/d;
    .locals 2

    .line 1
    sget-object v0, Lcom/bytedance/sdk/openadsdk/h/d;->e:Lcom/bytedance/sdk/openadsdk/h/d;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/bytedance/sdk/openadsdk/h/d;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/openadsdk/h/d;->e:Lcom/bytedance/sdk/openadsdk/h/d;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/bytedance/sdk/openadsdk/h/d;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/h/d;-><init>()V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/h/d;->e:Lcom/bytedance/sdk/openadsdk/h/d;

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
    sget-object v0, Lcom/bytedance/sdk/openadsdk/h/d;->e:Lcom/bytedance/sdk/openadsdk/h/d;

    return-object v0
.end method


# virtual methods
.method a()Lcom/bytedance/sdk/openadsdk/h/c;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/d;->k:Lcom/bytedance/sdk/openadsdk/h/c;

    return-object v0
.end method

.method public a(I)V
    .locals 2

    if-lez p1, :cond_0

    .line 4
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/h/d;->a:I

    .line 5
    :cond_0
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/h/e;->c:Z

    if-eqz v0, :cond_1

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MaxPreloadSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TAG_PROXY_Preloader"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public declared-synchronized a(JJJ)V
    .locals 0

    monitor-enter p0

    .line 7
    monitor-exit p0

    return-void
.end method

.method a(Lcom/bytedance/sdk/openadsdk/h/a/c;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/h/d;->g:Lcom/bytedance/sdk/openadsdk/h/a/c;

    return-void
.end method

.method a(Lcom/bytedance/sdk/openadsdk/h/b/c;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/h/d;->f:Lcom/bytedance/sdk/openadsdk/h/b/c;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 104
    invoke-virtual {p0, v0, v0, p1}, Lcom/bytedance/sdk/openadsdk/h/d;->a(ZZLjava/lang/String;)V

    return-void
.end method

.method a(ZLjava/lang/String;)V
    .locals 7

    .line 9
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/h/d;->m:Ljava/lang/String;

    .line 10
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/h/d;->n:Z

    .line 11
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/h/e;->c:Z

    if-eqz v0, :cond_0

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCurrentPlayKey, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TAG_PROXY_Preloader"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    if-nez p2, :cond_3

    .line 13
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/h/d;->i:Ljava/util/HashSet;

    monitor-enter v1

    .line 14
    :try_start_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/h/d;->i:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 15
    new-instance v0, Ljava/util/HashSet;

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/h/d;->i:Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 16
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/h/d;->i:Ljava/util/HashSet;

    invoke-virtual {p1}, Ljava/util/HashSet;->clear()V

    .line 17
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_f

    .line 18
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/bytedance/sdk/openadsdk/h/d$a;

    .line 19
    iget-boolean v1, p2, Lcom/bytedance/sdk/openadsdk/h/d$a;->a:Z

    iget-boolean v2, p2, Lcom/bytedance/sdk/openadsdk/h/d$a;->b:Z

    iget v3, p2, Lcom/bytedance/sdk/openadsdk/h/d$a;->c:I

    iget-object v4, p2, Lcom/bytedance/sdk/openadsdk/h/d$a;->d:Ljava/lang/String;

    iget-object v5, p2, Lcom/bytedance/sdk/openadsdk/h/d$a;->e:Ljava/util/Map;

    iget-object v6, p2, Lcom/bytedance/sdk/openadsdk/h/d$a;->f:[Ljava/lang/String;

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/h/d;->a(ZZILjava/lang/String;Ljava/util/Map;[Ljava/lang/String;)V

    .line 20
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/h/e;->c:Z

    if-eqz v0, :cond_2

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCurrentPlayKey, resume preload: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/h/d$a;->d:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "TAG_PROXY_Preloader"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 22
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 23
    :cond_3
    sget v1, Lcom/bytedance/sdk/openadsdk/h/e;->h:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_6

    const/4 v3, 0x2

    if-ne v1, v3, :cond_4

    goto :goto_1

    :cond_4
    const/4 v2, 0x1

    if-ne v1, v2, :cond_f

    .line 24
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/h/d;->b:Landroid/util/SparseArray;

    monitor-enter v1

    .line 25
    :try_start_2
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/h/d;->b:Landroid/util/SparseArray;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/h/b/b;->a(Z)I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_5

    .line 26
    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/bytedance/sdk/openadsdk/h/b;

    .line 27
    :cond_5
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_f

    .line 28
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/h/a;->a()V

    goto/16 :goto_5

    :catchall_1
    move-exception p1

    .line 29
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    .line 30
    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/h/d;->b:Landroid/util/SparseArray;

    monitor-enter p1

    const/4 p2, 0x0

    .line 31
    :try_start_4
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/h/d;->b:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    :goto_2
    if-ge p2, v3, :cond_a

    .line 32
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/h/d;->b:Landroid/util/SparseArray;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/h/d;->b:Landroid/util/SparseArray;

    invoke-virtual {v5, p2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    if-eqz v4, :cond_9

    .line 33
    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    if-eqz v5, :cond_8

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_8

    if-nez v0, :cond_7

    .line 34
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 35
    :cond_7
    invoke-virtual {v0, v5}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 36
    :cond_8
    invoke-interface {v4}, Ljava/util/Map;->clear()V

    :cond_9
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    .line 37
    :cond_a
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz v0, :cond_f

    .line 38
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_f

    .line 39
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_b
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/bytedance/sdk/openadsdk/h/b;

    .line 40
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/h/a;->a()V

    .line 41
    sget-boolean v3, Lcom/bytedance/sdk/openadsdk/h/e;->c:Z

    if-eqz v3, :cond_b

    .line 42
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setCurrentPlayKey, cancel preload: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/h/a;->g:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v3, "TAG_PROXY_Preloader"

    invoke-static {v3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_c
    if-ne v1, v2, :cond_f

    .line 43
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/h/d;->i:Ljava/util/HashSet;

    monitor-enter p1

    .line 44
    :try_start_5
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_d
    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/h/b;

    .line 45
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/h/b;->n:Ljava/lang/Object;

    check-cast v0, Lcom/bytedance/sdk/openadsdk/h/d$a;

    if-eqz v0, :cond_d

    .line 46
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/h/d;->i:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 47
    :cond_e
    monitor-exit p1

    goto :goto_5

    :catchall_2
    move-exception p2

    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p2

    :cond_f
    :goto_5
    return-void

    :catchall_3
    move-exception p2

    .line 48
    :try_start_6
    monitor-exit p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw p2
.end method

.method public varargs a(ZZILjava/lang/String;Ljava/util/Map;[Ljava/lang/String;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZI",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object/from16 v1, p0

    move/from16 v0, p1

    move-object/from16 v9, p4

    move-object/from16 v10, p6

    .line 50
    sget-boolean v2, Lcom/bytedance/sdk/openadsdk/h/e;->c:Z

    if-eqz v2, :cond_0

    const-string v2, "TAG_PROXY_Preloader"

    const-string v3, "preload start \uff01\uff01\uff01\uff01"

    .line 51
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz v0, :cond_1

    .line 52
    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/h/d;->h:Lcom/bytedance/sdk/openadsdk/h/a/b;

    goto :goto_0

    :cond_1
    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/h/d;->g:Lcom/bytedance/sdk/openadsdk/h/a/c;

    :goto_0
    move-object v11, v2

    .line 53
    iget-object v12, v1, Lcom/bytedance/sdk/openadsdk/h/d;->f:Lcom/bytedance/sdk/openadsdk/h/b/c;

    if-eqz v11, :cond_15

    if-nez v12, :cond_2

    goto/16 :goto_6

    .line 54
    :cond_2
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_14

    if-eqz v10, :cond_14

    array-length v2, v10

    if-gtz v2, :cond_3

    goto/16 :goto_5

    :cond_3
    if-gtz p3, :cond_4

    .line 55
    iget v2, v1, Lcom/bytedance/sdk/openadsdk/h/d;->a:I

    move v13, v2

    goto :goto_1

    :cond_4
    move/from16 v13, p3

    :goto_1
    if-eqz p2, :cond_5

    move-object v14, v9

    goto :goto_2

    .line 56
    :cond_5
    invoke-static/range {p4 .. p4}, Lcom/bytedance/sdk/openadsdk/h/g/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v14, v2

    .line 57
    :goto_2
    invoke-virtual {v11, v14}, Lcom/bytedance/sdk/openadsdk/h/a/a;->d(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 58
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v3

    int-to-long v5, v13

    cmp-long v3, v3, v5

    if-ltz v3, :cond_7

    .line 59
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/h/e;->c:Z

    if-eqz v0, :cond_6

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no need preload, file size: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", need preload size: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "TAG_PROXY_Preloader"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return-void

    .line 61
    :cond_7
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/h/f;->a()Lcom/bytedance/sdk/openadsdk/h/f;

    move-result-object v2

    invoke-static/range {p1 .. p1}, Lcom/bytedance/sdk/openadsdk/h/b/b;->a(Z)I

    move-result v3

    invoke-virtual {v2, v3, v14}, Lcom/bytedance/sdk/openadsdk/h/f;->a(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 62
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/h/e;->c:Z

    if-eqz v0, :cond_8

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "has running proxy task, skip preload for key: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "TAG_PROXY_Preloader"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    return-void

    .line 64
    :cond_9
    iget-object v15, v1, Lcom/bytedance/sdk/openadsdk/h/d;->b:Landroid/util/SparseArray;

    monitor-enter v15

    .line 65
    :try_start_0
    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/h/d;->b:Landroid/util/SparseArray;

    const/16 v16, 0x0

    const/4 v8, 0x1

    if-eqz v0, :cond_a

    move v3, v8

    goto :goto_3

    :cond_a
    move/from16 v3, v16

    :goto_3
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Ljava/util/Map;

    .line 66
    invoke-interface {v7, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 67
    monitor-exit v15

    return-void

    .line 68
    :cond_b
    new-instance v6, Lcom/bytedance/sdk/openadsdk/h/d$a;

    move-object v2, v6

    move/from16 v3, p1

    move/from16 v4, p2

    move v5, v13

    move-object v10, v6

    move-object/from16 v6, p4

    move-object/from16 v17, v7

    move-object/from16 v7, p5

    move/from16 p3, v13

    move v13, v8

    move-object/from16 v8, p6

    invoke-direct/range {v2 .. v8}, Lcom/bytedance/sdk/openadsdk/h/d$a;-><init>(ZZILjava/lang/String;Ljava/util/Map;[Ljava/lang/String;)V

    .line 69
    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/h/d;->m:Ljava/lang/String;

    if-eqz v2, :cond_11

    .line 70
    sget v3, Lcom/bytedance/sdk/openadsdk/h/e;->h:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_d

    .line 71
    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/h/d;->i:Ljava/util/HashSet;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 72
    :try_start_1
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/h/d;->i:Ljava/util/HashSet;

    invoke-virtual {v0, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 73
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 74
    :try_start_2
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/h/e;->c:Z

    if-eqz v0, :cond_c

    const-string v0, "TAG_PROXY_Preloader"

    .line 75
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancel preload: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", add to pending queue"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_c
    monitor-exit v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_0
    move-exception v0

    .line 77
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    :cond_d
    const/4 v4, 0x2

    if-ne v3, v4, :cond_f

    .line 78
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/h/e;->c:Z

    if-eqz v0, :cond_e

    const-string v0, "TAG_PROXY_Preloader"

    .line 79
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancel preload: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :cond_e
    monitor-exit v15

    return-void

    :cond_f
    if-ne v3, v13, :cond_11

    .line 81
    iget-boolean v3, v1, Lcom/bytedance/sdk/openadsdk/h/d;->n:Z

    if-ne v3, v0, :cond_11

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 82
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/h/e;->c:Z

    if-eqz v0, :cond_10

    const-string v0, "TAG_PROXY_Preloader"

    .line 83
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancel preload: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", it is playing"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_10
    monitor-exit v15

    return-void

    :cond_11
    const/4 v0, 0x0

    .line 85
    invoke-static/range {p5 .. p5}, Lcom/bytedance/sdk/openadsdk/h/g/d;->a(Ljava/util/Map;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/h/g/d;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_13

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 87
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    move/from16 v4, v16

    :goto_4
    if-ge v4, v3, :cond_13

    .line 88
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/bytedance/sdk/openadsdk/h/i$b;

    if-eqz v5, :cond_12

    .line 89
    new-instance v6, Lcom/bytedance/sdk/openadsdk/h/i$b;

    iget-object v7, v5, Lcom/bytedance/sdk/openadsdk/h/i$b;->a:Ljava/lang/String;

    iget-object v5, v5, Lcom/bytedance/sdk/openadsdk/h/i$b;->b:Ljava/lang/String;

    invoke-direct {v6, v7, v5}, Lcom/bytedance/sdk/openadsdk/h/i$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_12
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 90
    :cond_13
    new-instance v2, Lcom/bytedance/sdk/openadsdk/h/b$a;

    invoke-direct {v2}, Lcom/bytedance/sdk/openadsdk/h/b$a;-><init>()V

    .line 91
    invoke-virtual {v2, v11}, Lcom/bytedance/sdk/openadsdk/h/b$a;->a(Lcom/bytedance/sdk/openadsdk/h/a/a;)Lcom/bytedance/sdk/openadsdk/h/b$a;

    move-result-object v2

    invoke-virtual {v2, v12}, Lcom/bytedance/sdk/openadsdk/h/b$a;->a(Lcom/bytedance/sdk/openadsdk/h/b/c;)Lcom/bytedance/sdk/openadsdk/h/b$a;

    move-result-object v2

    .line 92
    invoke-virtual {v2, v9}, Lcom/bytedance/sdk/openadsdk/h/b$a;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/h/b$a;

    move-result-object v2

    invoke-virtual {v2, v14}, Lcom/bytedance/sdk/openadsdk/h/b$a;->b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/h/b$a;

    move-result-object v2

    new-instance v3, Lcom/bytedance/sdk/openadsdk/h/l;

    .line 93
    invoke-static/range {p6 .. p6}, Lcom/bytedance/sdk/openadsdk/h/g/d;->a([Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/bytedance/sdk/openadsdk/h/l;-><init>(Ljava/util/List;)V

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/h/b$a;->a(Lcom/bytedance/sdk/openadsdk/h/l;)Lcom/bytedance/sdk/openadsdk/h/b$a;

    move-result-object v2

    .line 94
    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/openadsdk/h/b$a;->a(Ljava/util/List;)Lcom/bytedance/sdk/openadsdk/h/b$a;

    move-result-object v0

    move/from16 v2, p3

    .line 95
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/h/b$a;->a(I)Lcom/bytedance/sdk/openadsdk/h/b$a;

    move-result-object v0

    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/h/d;->j:Lcom/bytedance/sdk/openadsdk/h/b$b;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/h/b$a;->a(Lcom/bytedance/sdk/openadsdk/h/b$b;)Lcom/bytedance/sdk/openadsdk/h/b$a;

    move-result-object v0

    .line 96
    invoke-virtual {v0, v10}, Lcom/bytedance/sdk/openadsdk/h/b$a;->a(Ljava/lang/Object;)Lcom/bytedance/sdk/openadsdk/h/b$a;

    move-result-object v0

    .line 97
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/h/b$a;->a()Lcom/bytedance/sdk/openadsdk/h/b;

    move-result-object v0

    move-object/from16 v2, v17

    .line 98
    invoke-interface {v2, v14, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    monitor-exit v15
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 100
    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/h/d;->d:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_1
    move-exception v0

    .line 101
    :try_start_5
    monitor-exit v15
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    :cond_14
    :goto_5
    return-void

    .line 102
    :cond_15
    :goto_6
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/h/e;->c:Z

    if-eqz v0, :cond_16

    const-string v0, "TAG_PROXY_Preloader"

    const-string v2, "cache or videoProxyDB null in Preloader!!!"

    .line 103
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    return-void
.end method

.method public varargs a(ZZILjava/lang/String;[Ljava/lang/String;)V
    .locals 7

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v6, p5

    .line 49
    invoke-virtual/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/h/d;->a(ZZILjava/lang/String;Ljava/util/Map;[Ljava/lang/String;)V

    return-void
.end method

.method public a(ZZLjava/lang/String;)V
    .locals 1

    .line 105
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 106
    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/h/d$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/h/d$2;-><init>(Lcom/bytedance/sdk/openadsdk/h/d;ZZLjava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/g/d;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method b()Lcom/bytedance/sdk/openadsdk/h/c;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/d;->l:Lcom/bytedance/sdk/openadsdk/h/c;

    return-object v0
.end method

.method public d()V
    .locals 1

    .line 1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/h/d$3;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/h/d$3;-><init>(Lcom/bytedance/sdk/openadsdk/h/d;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/g/d;->a(Ljava/lang/Runnable;)V

    return-void
.end method
