.class public abstract Lcom/ss/android/socialbase/downloader/downloader/a;
.super Ljava/lang/Object;
.source "AbsDownloadServiceHandler.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/downloader/p;


# static fields
.field private static final d:Ljava/lang/String; = "a"


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Service;",
            ">;"
        }
    .end annotation
.end field

.field protected final b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lc/d/a/b/a/f/d;",
            ">;"
        }
    .end annotation
.end field

.field protected volatile c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/a;->b:Landroid/util/SparseArray;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/downloader/a;->c:Z

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .line 2
    sget-object p1, Lcom/ss/android/socialbase/downloader/downloader/a;->d:Ljava/lang/String;

    const-string v0, "onBind Abs"

    invoke-static {p1, v0}, Lc/d/a/b/a/e/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/downloader/a;->c:Z

    return-void
.end method

.method public a(I)V
    .locals 0

    .line 27
    invoke-static {p1}, Lc/d/a/b/a/e/a;->a(I)V

    return-void
.end method

.method public a(ILandroid/app/Notification;)V
    .locals 1

    .line 3
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/downloader/a;->c:Z

    if-nez v0, :cond_0

    .line 4
    invoke-static {}, Lc/d/a/b/a/e/a;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    sget-object p1, Lcom/ss/android/socialbase/downloader/downloader/a;->d:Ljava/lang/String;

    const-string p2, "startForeground but serive is not alive"

    invoke-static {p1, p2}, Lc/d/a/b/a/e/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/a;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Service;

    invoke-virtual {v0, p1, p2}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected abstract a(Landroid/content/Context;Landroid/content/ServiceConnection;)V
.end method

.method public a(Landroid/content/Intent;II)V
    .locals 0

    return-void
.end method

.method public a(Lc/d/a/b/a/f/d;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 14
    :cond_0
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/downloader/a;->c:Z

    if-nez v0, :cond_2

    .line 15
    invoke-static {}, Lc/d/a/b/a/e/a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 16
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/a;->d:Ljava/lang/String;

    const-string v1, "tryDownload but service is not alive"

    invoke-static {v0, v1}, Lc/d/a/b/a/e/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    :cond_1
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/downloader/a;->c(Lc/d/a/b/a/f/d;)V

    .line 18
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->y()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/ss/android/socialbase/downloader/downloader/a;->a(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    goto :goto_1

    .line 19
    :cond_2
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/a;->b:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lc/d/a/b/a/f/d;->o()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 20
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/a;->b:Landroid/util/SparseArray;

    monitor-enter v0

    .line 21
    :try_start_0
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/a;->b:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lc/d/a/b/a/f/d;->o()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 22
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/a;->b:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lc/d/a/b/a/f/d;->o()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 23
    :cond_3
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 24
    :cond_4
    :goto_0
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->t()Lcom/ss/android/socialbase/downloader/impls/a;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 25
    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/impls/a;->a(Lc/d/a/b/a/f/d;)V

    .line 26
    :cond_5
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/downloader/a;->b()V

    :goto_1
    return-void
.end method

.method public a(Lcom/ss/android/socialbase/downloader/downloader/o;)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/ref/WeakReference;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/downloader/a;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 8
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/downloader/a;->c:Z

    if-nez v0, :cond_0

    .line 9
    invoke-static {}, Lc/d/a/b/a/e/a;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 10
    sget-object p1, Lcom/ss/android/socialbase/downloader/downloader/a;->d:Ljava/lang/String;

    const-string v0, "stopForeground but serive is not alive"

    invoke-static {p1, v0}, Lc/d/a/b/a/e/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/a;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 12
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Service;

    invoke-virtual {v0, p1}, Landroid/app/Service;->stopForeground(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected b()V
    .locals 5

    .line 1
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/a;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resumePendingTask pendingTasks.size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/downloader/a;->b:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc/d/a/b/a/e/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/a;->b:Landroid/util/SparseArray;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/a;->b:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/downloader/a;->b:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 5
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->t()Lcom/ss/android/socialbase/downloader/impls/a;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v3, 0x0

    .line 6
    :goto_0
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 7
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 8
    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc/d/a/b/a/f/d;

    if-eqz v4, :cond_0

    .line 9
    invoke-virtual {v2, v4}, Lcom/ss/android/socialbase/downloader/impls/a;->a(Lc/d/a/b/a/f/d;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 10
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public b(Lc/d/a/b/a/f/d;)V
    .locals 0

    return-void
.end method

.method public c()V
    .locals 2

    .line 8
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/downloader/a;->c:Z

    if-nez v0, :cond_1

    .line 9
    invoke-static {}, Lc/d/a/b/a/e/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/a;->d:Ljava/lang/String;

    const-string v1, "startService"

    invoke-static {v0, v1}, Lc/d/a/b/a/e/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    :cond_0
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->y()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/a;->a(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    :cond_1
    return-void
.end method

.method public c(Lc/d/a/b/a/f/d;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/a;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pendDownloadTask pendingTasks.size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/downloader/a;->b:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " downloadTask.getDownloadId():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lc/d/a/b/a/f/d;->o()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc/d/a/b/a/e/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/a;->b:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lc/d/a/b/a/f/d;->o()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 3
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/a;->b:Landroid/util/SparseArray;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/a;->b:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lc/d/a/b/a/f/d;->o()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 5
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/a;->b:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lc/d/a/b/a/f/d;->o()I

    move-result v2

    invoke-virtual {v1, v2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 6
    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 7
    :cond_2
    :goto_0
    sget-object p1, Lcom/ss/android/socialbase/downloader/downloader/a;->d:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "after pendDownloadTask pendingTasks.size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/a;->b:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lc/d/a/b/a/e/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
