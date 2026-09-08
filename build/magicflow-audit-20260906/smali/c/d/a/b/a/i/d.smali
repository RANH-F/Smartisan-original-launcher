.class public Lc/d/a/b/a/i/d;
.super Ljava/lang/Object;
.source "DownloadThreadPool.java"


# instance fields
.field private volatile a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lc/d/a/b/a/i/c;",
            ">;"
        }
    .end annotation
.end field

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lc/d/a/b/a/i/d;->b:I

    .line 3
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lc/d/a/b/a/i/d;->a:Landroid/util/SparseArray;

    return-void
.end method

.method private b()V
    .locals 5

    .line 1
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 2
    :goto_0
    iget-object v3, p0, Lc/d/a/b/a/i/d;->a:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 3
    iget-object v3, p0, Lc/d/a/b/a/i/d;->a:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 4
    iget-object v4, p0, Lc/d/a/b/a/i/d;->a:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc/d/a/b/a/i/c;

    .line 5
    invoke-virtual {v4}, Lc/d/a/b/a/i/c;->d()Z

    move-result v4

    if-nez v4, :cond_0

    .line 6
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-ge v1, v2, :cond_3

    .line 8
    :try_start_1
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_2

    .line 9
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 10
    iget-object v3, p0, Lc/d/a/b/a/i/d;->a:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->remove(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v2

    .line 11
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catchall_1
    move-exception v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    return-void
.end method

.method private b(Lc/d/a/b/a/i/c;)V
    .locals 2

    .line 19
    :try_start_0
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->k()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 20
    instance-of v1, v0, Ljava/util/concurrent/ThreadPoolExecutor;

    if-eqz v1, :cond_0

    .line 21
    check-cast v0, Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 22
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 22
    const-class v0, Lc/d/a/b/a/i/d;

    monitor-enter v0

    .line 23
    :try_start_0
    invoke-direct {p0}, Lc/d/a/b/a/i/d;->b()V

    .line 24
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 25
    :goto_0
    iget-object v3, p0, Lc/d/a/b/a/i/d;->a:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 26
    iget-object v3, p0, Lc/d/a/b/a/i/d;->a:Landroid/util/SparseArray;

    iget-object v4, p0, Lc/d/a/b/a/i/d;->a:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc/d/a/b/a/i/c;

    if-eqz v3, :cond_0

    .line 27
    invoke-virtual {v3}, Lc/d/a/b/a/i/c;->e()I

    move-result v3

    .line 28
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 29
    :cond_1
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 30
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public a(I)V
    .locals 2

    .line 18
    const-class v0, Lc/d/a/b/a/i/d;

    monitor-enter v0

    .line 19
    :try_start_0
    iget-object v1, p0, Lc/d/a/b/a/i/d;->a:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 20
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 21
    :goto_0
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1
.end method

.method public a(Lc/d/a/b/a/i/c;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Lc/d/a/b/a/i/c;->f()V

    .line 2
    const-class v0, Lc/d/a/b/a/i/d;

    monitor-enter v0

    .line 3
    :try_start_0
    iget v1, p0, Lc/d/a/b/a/i/d;->b:I

    const/16 v2, 0x1f4

    const/4 v3, 0x0

    if-lt v1, v2, :cond_0

    .line 4
    invoke-direct {p0}, Lc/d/a/b/a/i/d;->b()V

    .line 5
    iput v3, p0, Lc/d/a/b/a/i/d;->b:I

    goto :goto_0

    .line 6
    :cond_0
    iget v1, p0, Lc/d/a/b/a/i/d;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lc/d/a/b/a/i/d;->b:I

    .line 7
    :goto_0
    iget-object v1, p0, Lc/d/a/b/a/i/d;->a:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lc/d/a/b/a/i/c;->e()I

    move-result v2

    invoke-virtual {v1, v2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    invoke-virtual {p1}, Lc/d/a/b/a/i/c;->c()Lc/d/a/b/a/f/d;

    move-result-object v0

    const/16 v1, 0x3eb

    .line 10
    :try_start_1
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->k()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 11
    invoke-interface {v2, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_2

    .line 12
    :cond_1
    invoke-virtual {v0}, Lc/d/a/b/a/f/d;->e()Lc/d/a/b/a/c/e0;

    move-result-object p1

    invoke-virtual {v0}, Lc/d/a/b/a/f/d;->a()Lc/d/a/b/a/f/c;

    move-result-object v2

    new-instance v4, Lc/d/a/b/a/d/a;

    const-string v5, "execute failed cpu thread executor service is null"

    invoke-direct {v4, v1, v5}, Lc/d/a/b/a/d/a;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0}, Lc/d/a/b/a/f/d;->a()Lc/d/a/b/a/f/c;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v0}, Lc/d/a/b/a/f/d;->a()Lc/d/a/b/a/f/c;

    move-result-object v5

    invoke-virtual {v5}, Lc/d/a/b/a/f/c;->A0()I

    move-result v5

    goto :goto_1

    :cond_2
    move v5, v3

    :goto_1
    invoke-static {p1, v2, v4, v5}, Lc/d/a/b/a/g/a;->a(Lc/d/a/b/a/c/e0;Lc/d/a/b/a/f/c;Lc/d/a/b/a/d/a;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    if-eqz v0, :cond_4

    .line 13
    invoke-virtual {v0}, Lc/d/a/b/a/f/d;->e()Lc/d/a/b/a/c/e0;

    move-result-object v2

    invoke-virtual {v0}, Lc/d/a/b/a/f/d;->a()Lc/d/a/b/a/f/c;

    move-result-object v4

    new-instance v5, Lc/d/a/b/a/d/a;

    const-string v6, "execute OOM"

    invoke-direct {v5, v1, v6}, Lc/d/a/b/a/d/a;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0}, Lc/d/a/b/a/f/d;->a()Lc/d/a/b/a/f/c;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lc/d/a/b/a/f/d;->a()Lc/d/a/b/a/f/c;

    move-result-object v0

    invoke-virtual {v0}, Lc/d/a/b/a/f/c;->A0()I

    move-result v3

    :cond_3
    invoke-static {v2, v4, v5, v3}, Lc/d/a/b/a/g/a;->a(Lc/d/a/b/a/c/e0;Lc/d/a/b/a/f/c;Lc/d/a/b/a/d/a;I)V

    .line 14
    :cond_4
    invoke-virtual {p1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_2

    :catch_1
    move-exception p1

    if-eqz v0, :cond_6

    .line 15
    invoke-virtual {v0}, Lc/d/a/b/a/f/d;->e()Lc/d/a/b/a/c/e0;

    move-result-object v2

    invoke-virtual {v0}, Lc/d/a/b/a/f/d;->a()Lc/d/a/b/a/f/c;

    move-result-object v4

    new-instance v5, Lc/d/a/b/a/d/a;

    const-string v6, "DownloadThreadPoolExecute"

    invoke-static {p1, v6}, Lc/d/a/b/a/j/d;->b(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v1, v6}, Lc/d/a/b/a/d/a;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0}, Lc/d/a/b/a/f/d;->a()Lc/d/a/b/a/f/c;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lc/d/a/b/a/f/d;->a()Lc/d/a/b/a/f/c;

    move-result-object v0

    invoke-virtual {v0}, Lc/d/a/b/a/f/c;->A0()I

    move-result v3

    :cond_5
    invoke-static {v2, v4, v5, v3}, Lc/d/a/b/a/g/a;->a(Lc/d/a/b/a/c/e0;Lc/d/a/b/a/f/c;Lc/d/a/b/a/d/a;I)V

    .line 16
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void

    :catchall_0
    move-exception p1

    .line 17
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public b(I)Z
    .locals 3

    .line 13
    const-class v0, Lc/d/a/b/a/i/d;

    monitor-enter v0

    .line 14
    :try_start_0
    iget-object v1, p0, Lc/d/a/b/a/i/d;->a:Landroid/util/SparseArray;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lc/d/a/b/a/i/d;->a:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_0

    .line 15
    :cond_0
    iget-object v1, p0, Lc/d/a/b/a/i/d;->a:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/d/a/b/a/i/c;

    if-eqz p1, :cond_1

    .line 16
    invoke-virtual {p1}, Lc/d/a/b/a/i/c;->d()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v2, 0x1

    :cond_1
    monitor-exit v0

    return v2

    .line 17
    :cond_2
    :goto_0
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p1

    .line 18
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public c(I)V
    .locals 2

    .line 1
    const-class v0, Lc/d/a/b/a/i/d;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lc/d/a/b/a/i/d;->b()V

    .line 3
    iget-object v1, p0, Lc/d/a/b/a/i/d;->a:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/d/a/b/a/i/c;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1}, Lc/d/a/b/a/i/c;->b()V

    .line 5
    invoke-direct {p0, v1}, Lc/d/a/b/a/i/d;->b(Lc/d/a/b/a/i/c;)V

    .line 6
    iget-object v1, p0, Lc/d/a/b/a/i/d;->a:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 7
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public d(I)V
    .locals 2

    .line 1
    const-class v0, Lc/d/a/b/a/i/d;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lc/d/a/b/a/i/d;->b()V

    .line 3
    iget-object v1, p0, Lc/d/a/b/a/i/d;->a:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/d/a/b/a/i/c;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1}, Lc/d/a/b/a/i/c;->a()V

    .line 5
    invoke-direct {p0, v1}, Lc/d/a/b/a/i/d;->b(Lc/d/a/b/a/i/c;)V

    .line 6
    iget-object v1, p0, Lc/d/a/b/a/i/d;->a:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 7
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
