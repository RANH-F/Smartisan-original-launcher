.class public Lcom/ss/android/socialbase/downloader/impls/k;
.super Ljava/lang/Object;
.source "DownloadCache.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/downloader/k;


# instance fields
.field private final a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lc/d/a/b/a/f/c;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Lc/d/a/b/a/f/b;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/k;->a:Landroid/util/SparseArray;

    .line 3
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/k;->b:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public a()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lc/d/a/b/a/f/c;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/k;->a:Landroid/util/SparseArray;

    return-object v0
.end method

.method public a(I)Lc/d/a/b/a/f/c;
    .locals 1

    .line 2
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/k;->c(I)Lc/d/a/b/a/f/c;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    .line 3
    invoke-virtual {p1, v0}, Lc/d/a/b/a/f/c;->a(I)V

    :cond_0
    return-object p1
.end method

.method public a(II)Lc/d/a/b/a/f/c;
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/k;->c(I)Lc/d/a/b/a/f/c;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 36
    invoke-virtual {p1, p2}, Lc/d/a/b/a/f/c;->b(I)V

    :cond_0
    return-object p1
.end method

.method public a(IJ)Lc/d/a/b/a/f/c;
    .locals 1

    .line 48
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/k;->c(I)Lc/d/a/b/a/f/c;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 49
    invoke-virtual {p1, p2, p3, v0}, Lc/d/a/b/a/f/c;->a(JZ)V

    .line 50
    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->A0()I

    move-result p2

    const/4 p3, -0x3

    if-eq p2, p3, :cond_0

    .line 51
    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->A0()I

    move-result p2

    const/4 p3, -0x2

    if-eq p2, p3, :cond_0

    .line 52
    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->A0()I

    move-result p2

    invoke-static {p2}, Lc/d/a/b/a/a/f;->f(I)Z

    move-result p2

    if-nez p2, :cond_0

    .line 53
    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->A0()I

    move-result p2

    const/4 p3, -0x4

    if-eq p2, p3, :cond_0

    const/4 p2, 0x4

    .line 54
    invoke-virtual {p1, p2}, Lc/d/a/b/a/f/c;->a(I)V

    :cond_0
    return-object p1
.end method

.method public a(IJLjava/lang/String;Ljava/lang/String;)Lc/d/a/b/a/f/c;
    .locals 0

    .line 42
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/k;->c(I)Lc/d/a/b/a/f/c;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 43
    invoke-virtual {p1, p2, p3}, Lc/d/a/b/a/f/c;->c(J)V

    .line 44
    invoke-virtual {p1, p4}, Lc/d/a/b/a/f/c;->b(Ljava/lang/String;)V

    .line 45
    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->r0()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 46
    invoke-virtual {p1, p5}, Lc/d/a/b/a/f/c;->c(Ljava/lang/String;)V

    :cond_0
    const/4 p2, 0x3

    .line 47
    invoke-virtual {p1, p2}, Lc/d/a/b/a/f/c;->a(I)V

    :cond_1
    return-object p1
.end method

.method public a(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lc/d/a/b/a/f/c;",
            ">;"
        }
    .end annotation

    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/k;->a:Landroid/util/SparseArray;

    monitor-enter v0

    .line 6
    :try_start_0
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/impls/k;->a:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 7
    monitor-exit v0

    return-object v1

    .line 8
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 9
    :goto_0
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/impls/k;->a:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 10
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/impls/k;->a:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 11
    iget-object v4, p0, Lcom/ss/android/socialbase/downloader/impls/k;->a:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc/d/a/b/a/f/c;

    if-eqz v3, :cond_2

    .line 12
    invoke-virtual {v3}, Lc/d/a/b/a/f/c;->z()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 13
    invoke-virtual {v3}, Lc/d/a/b/a/f/c;->z()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 14
    invoke-virtual {v3}, Lc/d/a/b/a/f/c;->A0()I

    move-result v4

    invoke-static {v4}, Lc/d/a/b/a/a/f;->f(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 15
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 16
    :cond_3
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    .line 17
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(IIII)V
    .locals 0

    return-void
.end method

.method public a(IIIJ)V
    .locals 2

    .line 28
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/k;->d(I)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 29
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/d/a/b/a/f/b;

    if-eqz v0, :cond_1

    .line 30
    invoke-virtual {v0}, Lc/d/a/b/a/f/b;->t()I

    move-result v1

    if-ne v1, p3, :cond_1

    invoke-virtual {v0}, Lc/d/a/b/a/f/b;->g()Z

    move-result v1

    if-nez v1, :cond_1

    .line 31
    invoke-virtual {v0}, Lc/d/a/b/a/f/b;->h()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_0

    .line 32
    :cond_2
    invoke-virtual {v0}, Lc/d/a/b/a/f/b;->h()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lc/d/a/b/a/f/b;

    if-eqz p3, :cond_3

    .line 33
    invoke-virtual {p3}, Lc/d/a/b/a/f/b;->t()I

    move-result v0

    if-ne v0, p2, :cond_3

    .line 34
    invoke-virtual {p3, p4, p5}, Lc/d/a/b/a/f/b;->b(J)V

    :cond_4
    :goto_0
    return-void
.end method

.method public a(IIJ)V
    .locals 2

    .line 24
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/k;->d(I)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 25
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/d/a/b/a/f/b;

    if-eqz v0, :cond_1

    .line 26
    invoke-virtual {v0}, Lc/d/a/b/a/f/b;->t()I

    move-result v1

    if-ne v1, p2, :cond_1

    .line 27
    invoke-virtual {v0, p3, p4}, Lc/d/a/b/a/f/b;->b(J)V

    :cond_2
    return-void
.end method

.method public a(ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lc/d/a/b/a/f/b;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public declared-synchronized a(Lc/d/a/b/a/f/b;)V
    .locals 3

    monitor-enter p0

    .line 18
    :try_start_0
    invoke-virtual {p1}, Lc/d/a/b/a/f/b;->l()I

    move-result v0

    .line 19
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/impls/k;->b:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_0

    .line 20
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 21
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/impls/k;->b:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 22
    :cond_0
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Lc/d/a/b/a/f/c;)Z
    .locals 4

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 37
    :cond_0
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/impls/k;->a:Landroid/util/SparseArray;

    monitor-enter v1

    .line 38
    :try_start_0
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/impls/k;->a:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->q0()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 39
    :goto_0
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/impls/k;->a:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->q0()I

    move-result v3

    invoke-virtual {v2, v3, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 40
    monitor-exit v1

    return v0

    :catchall_0
    move-exception p1

    .line 41
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public b(IJ)Lc/d/a/b/a/f/c;
    .locals 1

    .line 21
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/k;->c(I)Lc/d/a/b/a/f/c;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 22
    invoke-virtual {p1, p2, p3, v0}, Lc/d/a/b/a/f/c;->a(JZ)V

    const/4 p2, -0x3

    .line 23
    invoke-virtual {p1, p2}, Lc/d/a/b/a/f/c;->a(I)V

    .line 24
    invoke-virtual {p1, v0}, Lc/d/a/b/a/f/c;->c(Z)V

    .line 25
    invoke-virtual {p1, v0}, Lc/d/a/b/a/f/c;->d(Z)V

    :cond_0
    return-object p1
.end method

.method public b(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lc/d/a/b/a/f/c;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/k;->a:Landroid/util/SparseArray;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/impls/k;->a:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 4
    monitor-exit v0

    return-object v1

    .line 5
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 6
    :goto_0
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/impls/k;->a:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 7
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/impls/k;->a:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 8
    iget-object v4, p0, Lcom/ss/android/socialbase/downloader/impls/k;->a:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc/d/a/b/a/f/c;

    if-eqz v3, :cond_2

    .line 9
    invoke-virtual {v3}, Lc/d/a/b/a/f/c;->z()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 10
    invoke-virtual {v3}, Lc/d/a/b/a/f/c;->z()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 11
    invoke-virtual {v3}, Lc/d/a/b/a/f/c;->A0()I

    move-result v4

    const/4 v5, -0x3

    if-ne v4, v5, :cond_2

    .line 12
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 13
    :cond_3
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public b()V
    .locals 2

    .line 17
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/k;->a:Landroid/util/SparseArray;

    monitor-enter v0

    .line 18
    :try_start_0
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/impls/k;->a:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 19
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/impls/k;->b:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 20
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public b(ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lc/d/a/b/a/f/b;",
            ">;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    .line 27
    :cond_0
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/k;->h(I)V

    .line 28
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lc/d/a/b/a/f/b;

    if-nez p2, :cond_2

    goto :goto_0

    .line 29
    :cond_2
    invoke-virtual {p0, p2}, Lcom/ss/android/socialbase/downloader/impls/k;->a(Lc/d/a/b/a/f/b;)V

    .line 30
    invoke-virtual {p2}, Lc/d/a/b/a/f/b;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 31
    invoke-virtual {p2}, Lc/d/a/b/a/f/b;->h()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/d/a/b/a/f/b;

    .line 32
    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/impls/k;->a(Lc/d/a/b/a/f/b;)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public b(Lc/d/a/b/a/f/b;)V
    .locals 0

    return-void
.end method

.method public b(Lc/d/a/b/a/f/c;)V
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/k;->a(Lc/d/a/b/a/f/c;)Z

    return-void
.end method

.method public b(I)Z
    .locals 0

    .line 15
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/k;->f(I)Z

    .line 16
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/k;->h(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public c(I)Lc/d/a/b/a/f/c;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/k;->a:Landroid/util/SparseArray;

    monitor-enter v0

    const/4 v1, 0x0

    .line 2
    :try_start_0
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/impls/k;->a:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/d/a/b/a/f/c;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 3
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    move-object p1, v1

    .line 4
    :goto_0
    monitor-exit v0

    return-object p1

    .line 5
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public c(IJ)Lc/d/a/b/a/f/c;
    .locals 1

    .line 20
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/k;->c(I)Lc/d/a/b/a/f/c;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 21
    invoke-virtual {p1, p2, p3, v0}, Lc/d/a/b/a/f/c;->a(JZ)V

    const/4 p2, -0x2

    .line 22
    invoke-virtual {p1, p2}, Lc/d/a/b/a/f/c;->a(I)V

    :cond_0
    return-object p1
.end method

.method public c(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lc/d/a/b/a/f/c;",
            ">;"
        }
    .end annotation

    .line 6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/k;->a:Landroid/util/SparseArray;

    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/impls/k;->a:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 9
    monitor-exit v0

    return-object v1

    .line 10
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 11
    :goto_0
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/impls/k;->a:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 12
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/impls/k;->a:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 13
    iget-object v4, p0, Lcom/ss/android/socialbase/downloader/impls/k;->a:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc/d/a/b/a/f/c;

    if-eqz v3, :cond_2

    .line 14
    invoke-virtual {v3}, Lc/d/a/b/a/f/c;->z()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 15
    invoke-virtual {v3}, Lc/d/a/b/a/f/c;->z()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 16
    invoke-virtual {v3}, Lc/d/a/b/a/f/c;->A0()I

    move-result v4

    invoke-static {v4}, Lc/d/a/b/a/a/f;->e(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 17
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 18
    :cond_3
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    .line 19
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public d()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Lc/d/a/b/a/f/b;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/k;->b:Landroid/util/SparseArray;

    return-object v0
.end method

.method public d(IJ)Lc/d/a/b/a/f/c;
    .locals 1

    .line 3
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/k;->c(I)Lc/d/a/b/a/f/c;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, p2, p3, v0}, Lc/d/a/b/a/f/c;->a(JZ)V

    const/4 p2, -0x1

    .line 5
    invoke-virtual {p1, p2}, Lc/d/a/b/a/f/c;->a(I)V

    .line 6
    invoke-virtual {p1, v0}, Lc/d/a/b/a/f/c;->c(Z)V

    :cond_0
    return-object p1
.end method

.method public d(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lc/d/a/b/a/f/b;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/k;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public e(I)Lc/d/a/b/a/f/c;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/k;->c(I)Lc/d/a/b/a/f/c;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x5

    .line 2
    invoke-virtual {p1, v0}, Lc/d/a/b/a/f/c;->a(I)V

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, v0}, Lc/d/a/b/a/f/c;->c(Z)V

    :cond_0
    return-object p1
.end method

.method public f(I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/k;->a:Landroid/util/SparseArray;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/impls/k;->a:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 3
    monitor-exit v0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public g(I)Lc/d/a/b/a/f/c;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/k;->c(I)Lc/d/a/b/a/f/c;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1, v0}, Lc/d/a/b/a/f/c;->a(I)V

    :cond_0
    return-object p1
.end method

.method public declared-synchronized h(I)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/k;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public i(I)Lc/d/a/b/a/f/c;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/k;->c(I)Lc/d/a/b/a/f/c;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, -0x7

    .line 2
    invoke-virtual {p1, v0}, Lc/d/a/b/a/f/c;->a(I)V

    :cond_0
    return-object p1
.end method
