.class public Lcom/ss/android/socialbase/downloader/impls/n;
.super Lcom/ss/android/socialbase/downloader/downloader/a;
.source "IndependentDownloadServiceHandler.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# static fields
.field private static final h:Ljava/lang/String;


# instance fields
.field private e:Lcom/ss/android/socialbase/downloader/downloader/j;

.field private f:Lcom/ss/android/socialbase/downloader/downloader/o;

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/ss/android/socialbase/downloader/impls/n;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ss/android/socialbase/downloader/impls/n;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/downloader/a;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/ss/android/socialbase/downloader/impls/n;->g:I

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .line 6
    sget-object p1, Lcom/ss/android/socialbase/downloader/impls/n;->h:Ljava/lang/String;

    const-string v0, "onBind IndependentDownloadBinder"

    invoke-static {p1, v0}, Lc/d/a/b/a/e/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    new-instance p1, Lcom/ss/android/socialbase/downloader/impls/m;

    invoke-direct {p1}, Lcom/ss/android/socialbase/downloader/impls/m;-><init>()V

    return-object p1
.end method

.method public a(I)V
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/n;->e:Lcom/ss/android/socialbase/downloader/downloader/j;

    if-nez v0, :cond_0

    .line 31
    iput p1, p0, Lcom/ss/android/socialbase/downloader/impls/n;->g:I

    .line 32
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->y()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1, p0}, Lcom/ss/android/socialbase/downloader/impls/n;->a(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    goto :goto_0

    .line 33
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/j;->u(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 34
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public a(Landroid/content/Context;Landroid/content/ServiceConnection;)V
    .locals 2

    .line 1
    :try_start_0
    sget-object v0, Lcom/ss/android/socialbase/downloader/impls/n;->h:Ljava/lang/String;

    const-string v1, "bindService"

    invoke-static {v0, v1}, Lc/d/a/b/a/e/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/ss/android/socialbase/downloader/downloader/IndependentProcessDownloadService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    .line 3
    invoke-virtual {p1, v0, p2, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 4
    :cond_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public a(Lc/d/a/b/a/f/d;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 8
    :cond_0
    sget-object v0, Lcom/ss/android/socialbase/downloader/impls/n;->h:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tryDownload aidlService == null:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/impls/n;->e:Lcom/ss/android/socialbase/downloader/downloader/j;

    const/4 v3, 0x0

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc/d/a/b/a/e/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/n;->e:Lcom/ss/android/socialbase/downloader/downloader/j;

    if-nez v0, :cond_2

    .line 10
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/downloader/a;->c(Lc/d/a/b/a/f/d;)V

    .line 11
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->y()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1, p0}, Lcom/ss/android/socialbase/downloader/impls/n;->a(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    goto :goto_5

    .line 12
    :cond_2
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/a;->b:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lc/d/a/b/a/f/d;->o()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 13
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/a;->b:Landroid/util/SparseArray;

    monitor-enter v0

    .line 14
    :try_start_0
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/a;->b:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lc/d/a/b/a/f/d;->o()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 15
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/a;->b:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lc/d/a/b/a/f/d;->o()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 16
    :cond_3
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 17
    :cond_4
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/n;->e:Lcom/ss/android/socialbase/downloader/downloader/j;

    invoke-static {p1}, Lc/d/a/b/a/j/e;->a(Lc/d/a/b/a/f/d;)Lc/d/a/b/a/f/a;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/j;->a(Lc/d/a/b/a/f/a;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 18
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 19
    :goto_2
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/a;->b:Landroid/util/SparseArray;

    monitor-enter v0

    .line 20
    :try_start_2
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/a;->b:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v1

    .line 21
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/downloader/a;->b:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 22
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->t()Lcom/ss/android/socialbase/downloader/impls/a;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 23
    :goto_3
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v3, v2, :cond_6

    .line 24
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 25
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/d/a/b/a/f/d;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v2, :cond_5

    .line 26
    :try_start_3
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/impls/n;->e:Lcom/ss/android/socialbase/downloader/downloader/j;

    invoke-static {p1}, Lc/d/a/b/a/j/e;->a(Lc/d/a/b/a/f/d;)Lc/d/a/b/a/f/a;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/ss/android/socialbase/downloader/downloader/j;->a(Lc/d/a/b/a/f/a;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_4

    :catch_1
    move-exception v2

    .line 27
    :try_start_4
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_5
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 28
    :cond_6
    monitor-exit v0

    :goto_5
    return-void

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method

.method public a(Lcom/ss/android/socialbase/downloader/downloader/o;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/impls/n;->f:Lcom/ss/android/socialbase/downloader/downloader/o;

    return-void
.end method

.method public b(Lc/d/a/b/a/f/d;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->c()Lcom/ss/android/socialbase/downloader/downloader/c;

    move-result-object v0

    invoke-virtual {p1}, Lc/d/a/b/a/f/d;->o()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/downloader/c;->a(IZ)V

    .line 2
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->t()Lcom/ss/android/socialbase/downloader/impls/a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/impls/a;->a(Lc/d/a/b/a/f/d;)V

    :cond_1
    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/n;->e:Lcom/ss/android/socialbase/downloader/downloader/j;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->y()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, p0}, Lcom/ss/android/socialbase/downloader/impls/n;->a(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    :cond_0
    return-void
.end method

.method public onBindingDied(Landroid/content/ComponentName;)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/impls/n;->e:Lcom/ss/android/socialbase/downloader/downloader/j;

    .line 2
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/impls/n;->f:Lcom/ss/android/socialbase/downloader/downloader/o;

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Lcom/ss/android/socialbase/downloader/downloader/o;->g()V

    :cond_0
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    .line 1
    sget-object p1, Lcom/ss/android/socialbase/downloader/impls/n;->h:Ljava/lang/String;

    const-string v0, "onServiceConnected IBinder"

    invoke-static {p1, v0}, Lc/d/a/b/a/e/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {p2}, Lcom/ss/android/socialbase/downloader/downloader/j$a;->a(Landroid/os/IBinder;)Lcom/ss/android/socialbase/downloader/downloader/j;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/impls/n;->e:Lcom/ss/android/socialbase/downloader/downloader/j;

    .line 3
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/impls/n;->f:Lcom/ss/android/socialbase/downloader/downloader/o;

    if-eqz p1, :cond_0

    .line 4
    invoke-interface {p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/o;->a(Landroid/os/IBinder;)V

    .line 5
    :cond_0
    sget-object p1, Lcom/ss/android/socialbase/downloader/impls/n;->h:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onServiceConnected aidlService!=null"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/n;->e:Lcom/ss/android/socialbase/downloader/downloader/j;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " pendingTasks.size:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/a;->b:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lc/d/a/b/a/e/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/impls/n;->e:Lcom/ss/android/socialbase/downloader/downloader/j;

    if-eqz p1, :cond_5

    .line 7
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->c()Lcom/ss/android/socialbase/downloader/downloader/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/downloader/c;->a()V

    .line 8
    iput-boolean v2, p0, Lcom/ss/android/socialbase/downloader/downloader/a;->c:Z

    .line 9
    iget p1, p0, Lcom/ss/android/socialbase/downloader/impls/n;->g:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_2

    .line 10
    :try_start_0
    iget-object p2, p0, Lcom/ss/android/socialbase/downloader/impls/n;->e:Lcom/ss/android/socialbase/downloader/downloader/j;

    invoke-interface {p2, p1}, Lcom/ss/android/socialbase/downloader/downloader/j;->u(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 11
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 12
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/downloader/a;->b:Landroid/util/SparseArray;

    monitor-enter p1

    .line 13
    :try_start_1
    iget-object p2, p0, Lcom/ss/android/socialbase/downloader/impls/n;->e:Lcom/ss/android/socialbase/downloader/downloader/j;

    if-eqz p2, :cond_4

    .line 14
    iget-object p2, p0, Lcom/ss/android/socialbase/downloader/downloader/a;->b:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object p2

    .line 15
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/a;->b:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 16
    :goto_2
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 17
    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    .line 18
    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/d/a/b/a/f/d;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_3

    .line 19
    :try_start_2
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/impls/n;->e:Lcom/ss/android/socialbase/downloader/downloader/j;

    invoke-static {v0}, Lc/d/a/b/a/j/e;->a(Lc/d/a/b/a/f/d;)Lc/d/a/b/a/f/a;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/ss/android/socialbase/downloader/downloader/j;->a(Lc/d/a/b/a/f/a;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catch_1
    move-exception v0

    .line 20
    :try_start_3
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_3
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 21
    :cond_4
    monitor-exit p1

    goto :goto_4

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p2

    :cond_5
    :goto_4
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 1
    sget-object p1, Lcom/ss/android/socialbase/downloader/impls/n;->h:Ljava/lang/String;

    const-string v0, "onServiceDisconnected"

    invoke-static {p1, v0}, Lc/d/a/b/a/e/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/impls/n;->e:Lcom/ss/android/socialbase/downloader/downloader/j;

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/downloader/a;->c:Z

    .line 4
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/impls/n;->f:Lcom/ss/android/socialbase/downloader/downloader/o;

    if-eqz p1, :cond_0

    .line 5
    invoke-interface {p1}, Lcom/ss/android/socialbase/downloader/downloader/o;->g()V

    :cond_0
    return-void
.end method
