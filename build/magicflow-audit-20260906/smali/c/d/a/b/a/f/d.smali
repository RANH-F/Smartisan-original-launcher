.class public Lc/d/a/b/a/f/d;
.super Ljava/lang/Object;
.source "DownloadTask.java"


# instance fields
.field private a:Lc/d/a/b/a/f/c;

.field private b:Lcom/ss/android/socialbase/downloader/downloader/i;

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lc/d/a/b/a/a/h;",
            "Lc/d/a/b/a/c/d0;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lc/d/a/b/a/a/h;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lc/d/a/b/a/c/d0;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lc/d/a/b/a/c/d0;",
            ">;"
        }
    .end annotation
.end field

.field private g:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lc/d/a/b/a/c/d0;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lc/d/a/b/a/c/g0;

.field private i:Lc/d/a/b/a/c/c0;

.field private j:Lc/d/a/b/a/c/s;

.field private k:Lc/d/a/b/a/c/e0;

.field private l:Lc/d/a/b/a/f/c$b;

.field private m:Lc/d/a/b/a/c/b0;

.field private n:Lc/d/a/b/a/c/w;

.field private o:Lcom/ss/android/socialbase/downloader/downloader/r;

.field private p:Lc/d/a/b/a/c/d;

.field private q:Z

.field private r:Lc/d/a/b/a/c/x;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lc/d/a/b/a/f/d;->c:Ljava/util/Map;

    .line 3
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lc/d/a/b/a/f/d;->d:Landroid/util/SparseArray;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lc/d/a/b/a/f/d;->q:Z

    .line 5
    new-instance v0, Lc/d/a/b/a/f/c$b;

    invoke-direct {v0}, Lc/d/a/b/a/f/c$b;-><init>()V

    iput-object v0, p0, Lc/d/a/b/a/f/d;->l:Lc/d/a/b/a/f/c$b;

    .line 6
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lc/d/a/b/a/f/d;->e:Landroid/util/SparseArray;

    .line 7
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lc/d/a/b/a/f/d;->f:Landroid/util/SparseArray;

    .line 8
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lc/d/a/b/a/f/d;->g:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>(Lc/d/a/b/a/f/c;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Lc/d/a/b/a/f/d;-><init>()V

    .line 10
    iput-object p1, p0, Lc/d/a/b/a/f/d;->a:Lc/d/a/b/a/f/c;

    return-void
.end method

.method private a(Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lc/d/a/b/a/c/d0;",
            ">;",
            "Landroid/util/SparseArray<",
            "Lc/d/a/b/a/c/d0;",
            ">;)V"
        }
    .end annotation

    .line 59
    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    const/4 v0, 0x0

    .line 60
    :goto_0
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 61
    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 62
    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/d/a/b/a/c/d0;

    if-eqz v2, :cond_0

    .line 63
    invoke-virtual {p1, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private d(Lc/d/a/b/a/a/h;)V
    .locals 6

    .line 4
    invoke-virtual {p0, p1}, Lc/d/a/b/a/f/d;->a(Lc/d/a/b/a/a/h;)Landroid/util/SparseArray;

    move-result-object v0

    .line 5
    monitor-enter v0

    const/4 v1, 0x0

    move v2, v1

    .line 6
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 7
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 8
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc/d/a/b/a/c/d0;

    if-eqz v3, :cond_0

    .line 9
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->c()Lcom/ss/android/socialbase/downloader/downloader/c;

    move-result-object v4

    invoke-virtual {p0}, Lc/d/a/b/a/f/d;->o()I

    move-result v5

    invoke-virtual {v4, v5, v3, p1, v1}, Lcom/ss/android/socialbase/downloader/downloader/c;->b(ILc/d/a/b/a/c/d0;Lc/d/a/b/a/a/h;Z)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 10
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public a(Lc/d/a/b/a/a/h;)Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/d/a/b/a/a/h;",
            ")",
            "Landroid/util/SparseArray<",
            "Lc/d/a/b/a/c/d0;",
            ">;"
        }
    .end annotation

    .line 26
    sget-object v0, Lc/d/a/b/a/a/h;->a:Lc/d/a/b/a/a/h;

    if-ne p1, v0, :cond_0

    .line 27
    iget-object p1, p0, Lc/d/a/b/a/f/d;->e:Landroid/util/SparseArray;

    return-object p1

    .line 28
    :cond_0
    sget-object v0, Lc/d/a/b/a/a/h;->b:Lc/d/a/b/a/a/h;

    if-ne p1, v0, :cond_1

    .line 29
    iget-object p1, p0, Lc/d/a/b/a/f/d;->f:Landroid/util/SparseArray;

    return-object p1

    .line 30
    :cond_1
    sget-object v0, Lc/d/a/b/a/a/h;->c:Lc/d/a/b/a/a/h;

    if-ne p1, v0, :cond_2

    .line 31
    iget-object p1, p0, Lc/d/a/b/a/f/d;->g:Landroid/util/SparseArray;

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Lc/d/a/b/a/a/h;I)Lc/d/a/b/a/c/d0;
    .locals 2

    .line 32
    invoke-virtual {p0, p1}, Lc/d/a/b/a/f/d;->a(Lc/d/a/b/a/a/h;)Landroid/util/SparseArray;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-gez p2, :cond_0

    goto :goto_0

    .line 33
    :cond_0
    monitor-enter p1

    .line 34
    :try_start_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge p2, v1, :cond_1

    .line 35
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p2

    .line 36
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lc/d/a/b/a/c/d0;

    monitor-exit p1

    return-object p2

    .line 37
    :cond_1
    monitor-exit p1

    return-object v0

    :catchall_0
    move-exception p2

    .line 38
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    :cond_2
    :goto_0
    return-object v0
.end method

.method public a()Lc/d/a/b/a/f/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/d/a/b/a/f/d;->a:Lc/d/a/b/a/f/c;

    return-object v0
.end method

.method public a(I)Lc/d/a/b/a/f/d;
    .locals 1

    .line 23
    iget-object v0, p0, Lc/d/a/b/a/f/d;->l:Lc/d/a/b/a/f/c$b;

    invoke-virtual {v0, p1}, Lc/d/a/b/a/f/c$b;->a(I)Lc/d/a/b/a/f/c$b;

    return-object p0
.end method

.method public a(ILc/d/a/b/a/c/d0;)Lc/d/a/b/a/f/d;
    .locals 2

    if-eqz p2, :cond_0

    .line 6
    iget-object v0, p0, Lc/d/a/b/a/f/d;->e:Landroid/util/SparseArray;

    monitor-enter v0

    .line 7
    :try_start_0
    iget-object v1, p0, Lc/d/a/b/a/f/d;->e:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 9
    iget-object v0, p0, Lc/d/a/b/a/f/d;->c:Ljava/util/Map;

    sget-object v1, Lc/d/a/b/a/a/h;->a:Lc/d/a/b/a/a/h;

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object p2, p0, Lc/d/a/b/a/f/d;->d:Landroid/util/SparseArray;

    monitor-enter p2

    .line 11
    :try_start_1
    iget-object v0, p0, Lc/d/a/b/a/f/d;->d:Landroid/util/SparseArray;

    sget-object v1, Lc/d/a/b/a/a/h;->a:Lc/d/a/b/a/a/h;

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 12
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 13
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    :cond_0
    :goto_0
    return-object p0
.end method

.method public a(Lc/d/a/b/a/a/g;)Lc/d/a/b/a/f/d;
    .locals 1

    .line 24
    iget-object v0, p0, Lc/d/a/b/a/f/d;->l:Lc/d/a/b/a/f/c$b;

    invoke-virtual {v0, p1}, Lc/d/a/b/a/f/c$b;->a(Lc/d/a/b/a/a/g;)Lc/d/a/b/a/f/c$b;

    return-object p0
.end method

.method public a(Lc/d/a/b/a/c/b0;)Lc/d/a/b/a/f/d;
    .locals 0

    .line 19
    iput-object p1, p0, Lc/d/a/b/a/f/d;->m:Lc/d/a/b/a/c/b0;

    return-object p0
.end method

.method public a(Lc/d/a/b/a/c/c0;)Lc/d/a/b/a/f/d;
    .locals 0

    .line 15
    iput-object p1, p0, Lc/d/a/b/a/f/d;->i:Lc/d/a/b/a/c/c0;

    return-object p0
.end method

.method public a(Lc/d/a/b/a/c/d0;)Lc/d/a/b/a/f/d;
    .locals 1

    if-nez p1, :cond_0

    return-object p0

    .line 5
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lc/d/a/b/a/f/d;->a(ILc/d/a/b/a/c/d0;)Lc/d/a/b/a/f/d;

    return-object p0
.end method

.method public a(Lc/d/a/b/a/c/d;)Lc/d/a/b/a/f/d;
    .locals 0

    .line 18
    iput-object p1, p0, Lc/d/a/b/a/f/d;->p:Lc/d/a/b/a/c/d;

    return-object p0
.end method

.method public a(Lc/d/a/b/a/c/e0;)Lc/d/a/b/a/f/d;
    .locals 0

    .line 17
    iput-object p1, p0, Lc/d/a/b/a/f/d;->k:Lc/d/a/b/a/c/e0;

    return-object p0
.end method

.method public a(Lc/d/a/b/a/c/g0;)Lc/d/a/b/a/f/d;
    .locals 0

    .line 14
    iput-object p1, p0, Lc/d/a/b/a/f/d;->h:Lc/d/a/b/a/c/g0;

    return-object p0
.end method

.method public a(Lc/d/a/b/a/c/s;)Lc/d/a/b/a/f/d;
    .locals 0

    .line 16
    iput-object p1, p0, Lc/d/a/b/a/f/d;->j:Lc/d/a/b/a/c/s;

    return-object p0
.end method

.method public a(Lc/d/a/b/a/c/w;)Lc/d/a/b/a/f/d;
    .locals 0

    .line 20
    iput-object p1, p0, Lc/d/a/b/a/f/d;->n:Lc/d/a/b/a/c/w;

    return-object p0
.end method

.method public a(Lc/d/a/b/a/c/x;)Lc/d/a/b/a/f/d;
    .locals 0

    .line 25
    iput-object p1, p0, Lc/d/a/b/a/f/d;->r:Lc/d/a/b/a/c/x;

    return-object p0
.end method

.method public a(Lcom/ss/android/socialbase/downloader/downloader/i;)Lc/d/a/b/a/f/d;
    .locals 0

    .line 3
    iput-object p1, p0, Lc/d/a/b/a/f/d;->b:Lcom/ss/android/socialbase/downloader/downloader/i;

    return-object p0
.end method

.method public a(Lcom/ss/android/socialbase/downloader/downloader/r;)Lc/d/a/b/a/f/d;
    .locals 0

    .line 4
    iput-object p1, p0, Lc/d/a/b/a/f/d;->o:Lcom/ss/android/socialbase/downloader/downloader/r;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lc/d/a/b/a/f/d;
    .locals 1

    .line 21
    iget-object v0, p0, Lc/d/a/b/a/f/d;->l:Lc/d/a/b/a/f/c$b;

    invoke-virtual {v0, p1}, Lc/d/a/b/a/f/c$b;->a(Ljava/lang/String;)Lc/d/a/b/a/f/c$b;

    return-object p0
.end method

.method public a(Ljava/util/List;)Lc/d/a/b/a/f/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lc/d/a/b/a/f/e;",
            ">;)",
            "Lc/d/a/b/a/f/d;"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lc/d/a/b/a/f/d;->l:Lc/d/a/b/a/f/c$b;

    invoke-virtual {v0, p1}, Lc/d/a/b/a/f/c$b;->a(Ljava/util/List;)Lc/d/a/b/a/f/c$b;

    return-object p0
.end method

.method public a(ILc/d/a/b/a/c/d0;Lc/d/a/b/a/a/h;Z)V
    .locals 1

    .line 39
    invoke-virtual {p0, p3}, Lc/d/a/b/a/f/d;->a(Lc/d/a/b/a/a/h;)Landroid/util/SparseArray;

    move-result-object v0

    if-nez v0, :cond_1

    if-eqz p4, :cond_0

    .line 40
    iget-object p1, p0, Lc/d/a/b/a/f/d;->c:Ljava/util/Map;

    invoke-interface {p1, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 41
    iget-object p1, p0, Lc/d/a/b/a/f/d;->c:Ljava/util/Map;

    invoke-interface {p1, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void

    .line 42
    :cond_1
    monitor-enter v0

    if-eqz p4, :cond_3

    .line 43
    :try_start_0
    iget-object p1, p0, Lc/d/a/b/a/f/d;->c:Ljava/util/Map;

    invoke-interface {p1, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 44
    iget-object p1, p0, Lc/d/a/b/a/f/d;->c:Ljava/util/Map;

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Lc/d/a/b/a/c/d0;

    .line 45
    iget-object p1, p0, Lc/d/a/b/a/f/d;->c:Ljava/util/Map;

    invoke-interface {p1, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-eqz p2, :cond_5

    .line 46
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_5

    .line 47
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result p2

    if-ge p1, p2, :cond_5

    .line 48
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->removeAt(I)V

    goto :goto_0

    .line 49
    :cond_3
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 50
    iget-object p2, p0, Lc/d/a/b/a/f/d;->d:Landroid/util/SparseArray;

    monitor-enter p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 51
    :try_start_1
    iget-object p3, p0, Lc/d/a/b/a/f/d;->d:Landroid/util/SparseArray;

    invoke-virtual {p3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lc/d/a/b/a/a/h;

    if-eqz p3, :cond_4

    .line 52
    iget-object p4, p0, Lc/d/a/b/a/f/d;->c:Ljava/util/Map;

    invoke-interface {p4, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_4

    .line 53
    iget-object p4, p0, Lc/d/a/b/a/f/d;->c:Ljava/util/Map;

    invoke-interface {p4, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iget-object p3, p0, Lc/d/a/b/a/f/d;->d:Landroid/util/SparseArray;

    invoke-virtual {p3, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 55
    :cond_4
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    :cond_5
    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_0
    move-exception p1

    .line 57
    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1

    :catchall_1
    move-exception p1

    .line 58
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

.method public a(Landroid/util/SparseArray;Lc/d/a/b/a/a/h;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lc/d/a/b/a/c/d0;",
            ">;",
            "Lc/d/a/b/a/a/h;",
            ")V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 64
    :cond_0
    :try_start_0
    sget-object v0, Lc/d/a/b/a/a/h;->a:Lc/d/a/b/a/a/h;

    if-ne p2, v0, :cond_1

    .line 65
    iget-object p2, p0, Lc/d/a/b/a/f/d;->e:Landroid/util/SparseArray;

    monitor-enter p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 66
    :try_start_1
    iget-object v0, p0, Lc/d/a/b/a/f/d;->e:Landroid/util/SparseArray;

    invoke-direct {p0, v0, p1}, Lc/d/a/b/a/f/d;->a(Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 67
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1

    .line 68
    :cond_1
    sget-object v0, Lc/d/a/b/a/a/h;->b:Lc/d/a/b/a/a/h;

    if-ne p2, v0, :cond_2

    .line 69
    iget-object p2, p0, Lc/d/a/b/a/f/d;->f:Landroid/util/SparseArray;

    monitor-enter p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 70
    :try_start_3
    iget-object v0, p0, Lc/d/a/b/a/f/d;->f:Landroid/util/SparseArray;

    invoke-direct {p0, v0, p1}, Lc/d/a/b/a/f/d;->a(Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 71
    monitor-exit p2

    goto :goto_0

    :catchall_1
    move-exception p1

    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p1

    .line 72
    :cond_2
    sget-object v0, Lc/d/a/b/a/a/h;->c:Lc/d/a/b/a/a/h;

    if-ne p2, v0, :cond_3

    .line 73
    iget-object p2, p0, Lc/d/a/b/a/f/d;->g:Landroid/util/SparseArray;

    monitor-enter p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 74
    :try_start_5
    iget-object v0, p0, Lc/d/a/b/a/f/d;->g:Landroid/util/SparseArray;

    invoke-direct {p0, v0, p1}, Lc/d/a/b/a/f/d;->a(Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 75
    monitor-exit p2

    goto :goto_0

    :catchall_2
    move-exception p1

    monitor-exit p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :catchall_3
    move-exception p1

    .line 76
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_0
    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lc/d/a/b/a/f/d;->q:Z

    return-void
.end method

.method public b(Lc/d/a/b/a/a/h;)I
    .locals 1

    .line 14
    invoke-virtual {p0, p1}, Lc/d/a/b/a/f/d;->a(Lc/d/a/b/a/a/h;)Landroid/util/SparseArray;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 15
    :cond_0
    monitor-enter p1

    .line 16
    :try_start_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    monitor-exit p1

    return v0

    :catchall_0
    move-exception v0

    .line 17
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(I)Lc/d/a/b/a/f/d;
    .locals 1

    .line 13
    iget-object v0, p0, Lc/d/a/b/a/f/d;->l:Lc/d/a/b/a/f/c$b;

    invoke-virtual {v0, p1}, Lc/d/a/b/a/f/c$b;->b(I)Lc/d/a/b/a/f/c$b;

    return-object p0
.end method

.method public b(ILc/d/a/b/a/c/d0;)Lc/d/a/b/a/f/d;
    .locals 2

    if-eqz p2, :cond_0

    .line 2
    iget-object v0, p0, Lc/d/a/b/a/f/d;->f:Landroid/util/SparseArray;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lc/d/a/b/a/f/d;->f:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    iget-object v0, p0, Lc/d/a/b/a/f/d;->c:Ljava/util/Map;

    sget-object v1, Lc/d/a/b/a/a/h;->b:Lc/d/a/b/a/a/h;

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object p2, p0, Lc/d/a/b/a/f/d;->d:Landroid/util/SparseArray;

    monitor-enter p2

    .line 7
    :try_start_1
    iget-object v0, p0, Lc/d/a/b/a/f/d;->d:Landroid/util/SparseArray;

    sget-object v1, Lc/d/a/b/a/a/h;->b:Lc/d/a/b/a/a/h;

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 8
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 9
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    :cond_0
    :goto_0
    return-object p0
.end method

.method public b(Lc/d/a/b/a/c/d0;)Lc/d/a/b/a/f/d;
    .locals 1

    if-nez p1, :cond_0

    return-object p0

    .line 10
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lc/d/a/b/a/f/d;->c(ILc/d/a/b/a/c/d0;)Lc/d/a/b/a/f/d;

    return-object p0
.end method

.method public b(Ljava/lang/String;)Lc/d/a/b/a/f/d;
    .locals 1

    .line 11
    iget-object v0, p0, Lc/d/a/b/a/f/d;->l:Lc/d/a/b/a/f/c$b;

    invoke-virtual {v0, p1}, Lc/d/a/b/a/f/c$b;->b(Ljava/lang/String;)Lc/d/a/b/a/f/c$b;

    return-object p0
.end method

.method public b(Z)Lc/d/a/b/a/f/d;
    .locals 1

    .line 12
    iget-object v0, p0, Lc/d/a/b/a/f/d;->l:Lc/d/a/b/a/f/c$b;

    invoke-virtual {v0, p1}, Lc/d/a/b/a/f/c$b;->a(Z)Lc/d/a/b/a/f/c$b;

    return-object p0
.end method

.method public b(ILc/d/a/b/a/c/d0;Lc/d/a/b/a/a/h;Z)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    :cond_0
    if-eqz p4, :cond_1

    .line 18
    iget-object p4, p0, Lc/d/a/b/a/f/d;->c:Ljava/util/Map;

    if-eqz p4, :cond_1

    .line 19
    invoke-interface {p4, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    iget-object p4, p0, Lc/d/a/b/a/f/d;->d:Landroid/util/SparseArray;

    monitor-enter p4

    .line 21
    :try_start_0
    iget-object v0, p0, Lc/d/a/b/a/f/d;->d:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 22
    monitor-exit p4

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 23
    :cond_1
    :goto_0
    invoke-virtual {p0, p3}, Lc/d/a/b/a/f/d;->a(Lc/d/a/b/a/a/h;)Landroid/util/SparseArray;

    move-result-object p3

    if-nez p3, :cond_2

    return-void

    .line 24
    :cond_2
    monitor-enter p3

    .line 25
    :try_start_1
    invoke-virtual {p3, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 26
    monitor-exit p3

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1
.end method

.method public b(Lc/d/a/b/a/c/g0;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lc/d/a/b/a/f/d;->h:Lc/d/a/b/a/c/g0;

    return-void
.end method

.method public b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc/d/a/b/a/f/d;->q:Z

    return v0
.end method

.method public c()Lc/d/a/b/a/c/c0;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/d/a/b/a/f/d;->i:Lc/d/a/b/a/c/c0;

    return-object v0
.end method

.method public c(Lc/d/a/b/a/a/h;)Lc/d/a/b/a/c/d0;
    .locals 1

    .line 13
    iget-object v0, p0, Lc/d/a/b/a/f/d;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/d/a/b/a/c/d0;

    return-object p1
.end method

.method public c(I)Lc/d/a/b/a/f/d;
    .locals 1

    .line 12
    iget-object v0, p0, Lc/d/a/b/a/f/d;->l:Lc/d/a/b/a/f/c$b;

    invoke-virtual {v0, p1}, Lc/d/a/b/a/f/c$b;->c(I)Lc/d/a/b/a/f/c$b;

    return-object p0
.end method

.method public c(ILc/d/a/b/a/c/d0;)Lc/d/a/b/a/f/d;
    .locals 2

    if-eqz p2, :cond_0

    .line 2
    iget-object v0, p0, Lc/d/a/b/a/f/d;->g:Landroid/util/SparseArray;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lc/d/a/b/a/f/d;->g:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    iget-object v0, p0, Lc/d/a/b/a/f/d;->c:Ljava/util/Map;

    sget-object v1, Lc/d/a/b/a/a/h;->c:Lc/d/a/b/a/a/h;

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object p2, p0, Lc/d/a/b/a/f/d;->d:Landroid/util/SparseArray;

    monitor-enter p2

    .line 7
    :try_start_1
    iget-object v0, p0, Lc/d/a/b/a/f/d;->d:Landroid/util/SparseArray;

    sget-object v1, Lc/d/a/b/a/a/h;->c:Lc/d/a/b/a/a/h;

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 8
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    .line 9
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    :cond_0
    :goto_0
    return-object p0
.end method

.method public c(Ljava/lang/String;)Lc/d/a/b/a/f/d;
    .locals 1

    .line 10
    iget-object v0, p0, Lc/d/a/b/a/f/d;->l:Lc/d/a/b/a/f/c$b;

    invoke-virtual {v0, p1}, Lc/d/a/b/a/f/c$b;->c(Ljava/lang/String;)Lc/d/a/b/a/f/c$b;

    return-object p0
.end method

.method public c(Z)Lc/d/a/b/a/f/d;
    .locals 1

    .line 11
    iget-object v0, p0, Lc/d/a/b/a/f/d;->l:Lc/d/a/b/a/f/c$b;

    invoke-virtual {v0, p1}, Lc/d/a/b/a/f/c$b;->b(Z)Lc/d/a/b/a/f/c$b;

    return-object p0
.end method

.method public d()Lc/d/a/b/a/c/s;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/d/a/b/a/f/d;->j:Lc/d/a/b/a/c/s;

    return-object v0
.end method

.method public d(Ljava/lang/String;)Lc/d/a/b/a/f/d;
    .locals 1

    .line 2
    iget-object v0, p0, Lc/d/a/b/a/f/d;->l:Lc/d/a/b/a/f/c$b;

    invoke-virtual {v0, p1}, Lc/d/a/b/a/f/c$b;->d(Ljava/lang/String;)Lc/d/a/b/a/f/c$b;

    return-object p0
.end method

.method public d(Z)Lc/d/a/b/a/f/d;
    .locals 1

    .line 3
    iget-object v0, p0, Lc/d/a/b/a/f/d;->l:Lc/d/a/b/a/f/c$b;

    invoke-virtual {v0, p1}, Lc/d/a/b/a/f/c$b;->d(Z)Lc/d/a/b/a/f/c$b;

    return-object p0
.end method

.method public e()Lc/d/a/b/a/c/e0;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/d/a/b/a/f/d;->k:Lc/d/a/b/a/c/e0;

    return-object v0
.end method

.method public e(Ljava/lang/String;)Lc/d/a/b/a/f/d;
    .locals 1

    .line 2
    iget-object v0, p0, Lc/d/a/b/a/f/d;->l:Lc/d/a/b/a/f/c$b;

    invoke-virtual {v0, p1}, Lc/d/a/b/a/f/c$b;->e(Ljava/lang/String;)Lc/d/a/b/a/f/c$b;

    return-object p0
.end method

.method public e(Z)Lc/d/a/b/a/f/d;
    .locals 1

    .line 3
    iget-object v0, p0, Lc/d/a/b/a/f/d;->l:Lc/d/a/b/a/f/c$b;

    invoke-virtual {v0, p1}, Lc/d/a/b/a/f/c$b;->c(Z)Lc/d/a/b/a/f/c$b;

    return-object p0
.end method

.method public f(Ljava/lang/String;)Lc/d/a/b/a/f/d;
    .locals 1

    .line 2
    iget-object v0, p0, Lc/d/a/b/a/f/d;->l:Lc/d/a/b/a/f/c$b;

    invoke-virtual {v0, p1}, Lc/d/a/b/a/f/c$b;->f(Ljava/lang/String;)Lc/d/a/b/a/f/c$b;

    return-object p0
.end method

.method public f(Z)Lc/d/a/b/a/f/d;
    .locals 1

    .line 3
    iget-object v0, p0, Lc/d/a/b/a/f/d;->l:Lc/d/a/b/a/f/c$b;

    invoke-virtual {v0, p1}, Lc/d/a/b/a/f/c$b;->e(Z)Lc/d/a/b/a/f/c$b;

    return-object p0
.end method

.method public f()Lcom/ss/android/socialbase/downloader/downloader/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/d/a/b/a/f/d;->b:Lcom/ss/android/socialbase/downloader/downloader/i;

    return-object v0
.end method

.method public g(Ljava/lang/String;)Lc/d/a/b/a/f/d;
    .locals 1

    .line 3
    iget-object v0, p0, Lc/d/a/b/a/f/d;->l:Lc/d/a/b/a/f/c$b;

    invoke-virtual {v0, p1}, Lc/d/a/b/a/f/c$b;->g(Ljava/lang/String;)Lc/d/a/b/a/f/c$b;

    return-object p0
.end method

.method public g(Z)Lc/d/a/b/a/f/d;
    .locals 1

    .line 2
    iget-object v0, p0, Lc/d/a/b/a/f/d;->l:Lc/d/a/b/a/f/c$b;

    invoke-virtual {v0, p1}, Lc/d/a/b/a/f/c$b;->f(Z)Lc/d/a/b/a/f/c$b;

    return-object p0
.end method

.method public g()Lcom/ss/android/socialbase/downloader/downloader/r;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/d/a/b/a/f/d;->o:Lcom/ss/android/socialbase/downloader/downloader/r;

    return-object v0
.end method

.method public h()Lc/d/a/b/a/c/b0;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/d/a/b/a/f/d;->m:Lc/d/a/b/a/c/b0;

    return-object v0
.end method

.method public h(Ljava/lang/String;)Lc/d/a/b/a/f/d;
    .locals 1

    .line 2
    iget-object v0, p0, Lc/d/a/b/a/f/d;->l:Lc/d/a/b/a/f/c$b;

    invoke-virtual {v0, p1}, Lc/d/a/b/a/f/c$b;->h(Ljava/lang/String;)Lc/d/a/b/a/f/c$b;

    return-object p0
.end method

.method public h(Z)Lc/d/a/b/a/f/d;
    .locals 1

    .line 3
    iget-object v0, p0, Lc/d/a/b/a/f/d;->l:Lc/d/a/b/a/f/c$b;

    invoke-virtual {v0, p1}, Lc/d/a/b/a/f/c$b;->i(Z)Lc/d/a/b/a/f/c$b;

    return-object p0
.end method

.method public i()Lc/d/a/b/a/c/w;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/d/a/b/a/f/d;->n:Lc/d/a/b/a/c/w;

    return-object v0
.end method

.method public i(Z)Lc/d/a/b/a/f/d;
    .locals 1

    .line 2
    iget-object v0, p0, Lc/d/a/b/a/f/d;->l:Lc/d/a/b/a/f/c$b;

    invoke-virtual {v0, p1}, Lc/d/a/b/a/f/c$b;->g(Z)Lc/d/a/b/a/f/c$b;

    return-object p0
.end method

.method public j()Lc/d/a/b/a/c/g0;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/d/a/b/a/f/d;->h:Lc/d/a/b/a/c/g0;

    return-object v0
.end method

.method public j(Z)Lc/d/a/b/a/f/d;
    .locals 1

    .line 2
    iget-object v0, p0, Lc/d/a/b/a/f/d;->l:Lc/d/a/b/a/f/c$b;

    invoke-virtual {v0, p1}, Lc/d/a/b/a/f/c$b;->j(Z)Lc/d/a/b/a/f/c$b;

    return-object p0
.end method

.method public k()Lc/d/a/b/a/c/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/d/a/b/a/f/d;->p:Lc/d/a/b/a/c/d;

    return-object v0
.end method

.method public k(Z)Lc/d/a/b/a/f/d;
    .locals 1

    .line 2
    iget-object v0, p0, Lc/d/a/b/a/f/d;->l:Lc/d/a/b/a/f/c$b;

    invoke-virtual {v0, p1}, Lc/d/a/b/a/f/c$b;->h(Z)Lc/d/a/b/a/f/c$b;

    return-object p0
.end method

.method public l()Lc/d/a/b/a/c/x;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/d/a/b/a/f/d;->r:Lc/d/a/b/a/c/x;

    return-object v0
.end method

.method public l(Z)Lc/d/a/b/a/f/d;
    .locals 1

    .line 2
    iget-object v0, p0, Lc/d/a/b/a/f/d;->l:Lc/d/a/b/a/f/c$b;

    invoke-virtual {v0, p1}, Lc/d/a/b/a/f/c$b;->k(Z)Lc/d/a/b/a/f/c$b;

    return-object p0
.end method

.method public m(Z)Lc/d/a/b/a/f/d;
    .locals 1

    .line 3
    iget-object v0, p0, Lc/d/a/b/a/f/d;->l:Lc/d/a/b/a/f/c$b;

    invoke-virtual {v0, p1}, Lc/d/a/b/a/f/c$b;->l(Z)Lc/d/a/b/a/f/c$b;

    return-object p0
.end method

.method public m()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lc/d/a/b/a/f/d;->a:Lc/d/a/b/a/f/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lc/d/a/b/a/f/c;->x()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public n()I
    .locals 1

    .line 1
    iget-object v0, p0, Lc/d/a/b/a/f/d;->l:Lc/d/a/b/a/f/c$b;

    invoke-virtual {v0}, Lc/d/a/b/a/f/c$b;->a()Lc/d/a/b/a/f/c;

    move-result-object v0

    iput-object v0, p0, Lc/d/a/b/a/f/d;->a:Lc/d/a/b/a/f/c;

    .line 2
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->c()Lcom/ss/android/socialbase/downloader/downloader/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ss/android/socialbase/downloader/downloader/c;->a(Lc/d/a/b/a/f/d;)V

    .line 3
    iget-object v0, p0, Lc/d/a/b/a/f/d;->a:Lc/d/a/b/a/f/c;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 4
    :cond_0
    invoke-virtual {v0}, Lc/d/a/b/a/f/c;->q0()I

    move-result v0

    return v0
.end method

.method public o()I
    .locals 1

    .line 1
    iget-object v0, p0, Lc/d/a/b/a/f/d;->a:Lc/d/a/b/a/f/c;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lc/d/a/b/a/f/c;->q0()I

    move-result v0

    return v0
.end method

.method public p()V
    .locals 5

    const-string v0, "DownloadTask"

    const-string v1, "same task just tryDownloading, so add listener in last task instead of tryDownload"

    .line 1
    invoke-static {v0, v1}, Lc/d/a/b/a/e/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lc/d/a/b/a/a/h;->a:Lc/d/a/b/a/a/h;

    invoke-direct {p0, v0}, Lc/d/a/b/a/f/d;->d(Lc/d/a/b/a/a/h;)V

    .line 3
    sget-object v0, Lc/d/a/b/a/a/h;->b:Lc/d/a/b/a/a/h;

    invoke-direct {p0, v0}, Lc/d/a/b/a/f/d;->d(Lc/d/a/b/a/a/h;)V

    .line 4
    iget-object v0, p0, Lc/d/a/b/a/f/d;->k:Lc/d/a/b/a/c/e0;

    iget-object v1, p0, Lc/d/a/b/a/f/d;->a:Lc/d/a/b/a/f/c;

    new-instance v2, Lc/d/a/b/a/d/a;

    const/16 v3, 0x3eb

    const-string v4, "has another same task, add Listener to old task"

    invoke-direct {v2, v3, v4}, Lc/d/a/b/a/d/a;-><init>(ILjava/lang/String;)V

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lc/d/a/b/a/g/a;->a(Lc/d/a/b/a/c/e0;Lc/d/a/b/a/f/c;Lc/d/a/b/a/d/a;I)V

    return-void
.end method
