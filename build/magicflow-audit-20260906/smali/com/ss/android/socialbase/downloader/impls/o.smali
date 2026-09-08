.class public Lcom/ss/android/socialbase/downloader/impls/o;
.super Ljava/lang/Object;
.source "IndependentProcessDownloadHandler.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/downloader/n;
.implements Lcom/ss/android/socialbase/downloader/downloader/o;


# instance fields
.field private volatile a:Lcom/ss/android/socialbase/downloader/downloader/j;

.field private b:Lcom/ss/android/socialbase/downloader/downloader/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ss/android/socialbase/downloader/downloader/p<",
            "Lcom/ss/android/socialbase/downloader/downloader/IndependentProcessDownloadService;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/ss/android/socialbase/downloader/downloader/n;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/ss/android/socialbase/downloader/impls/p;

    invoke-direct {v0}, Lcom/ss/android/socialbase/downloader/impls/p;-><init>()V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->c:Lcom/ss/android/socialbase/downloader/downloader/n;

    .line 3
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->r()Lcom/ss/android/socialbase/downloader/downloader/p;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/p;

    .line 4
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/p;

    invoke-interface {v0, p0}, Lcom/ss/android/socialbase/downloader/downloader/p;->a(Lcom/ss/android/socialbase/downloader/downloader/o;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 7
    invoke-static {p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public a(Ljava/lang/String;)Ljava/util/List;
    .locals 1
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

    .line 8
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->a:Lcom/ss/android/socialbase/downloader/downloader/j;

    if-nez v0, :cond_0

    .line 9
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->c:Lcom/ss/android/socialbase/downloader/downloader/n;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/n;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 10
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->a:Lcom/ss/android/socialbase/downloader/downloader/j;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/j;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 11
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public a()V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->a:Lcom/ss/android/socialbase/downloader/downloader/j;

    if-nez v0, :cond_0

    return-void

    .line 5
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->a:Lcom/ss/android/socialbase/downloader/downloader/j;

    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/downloader/j;->a()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public a(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->a:Lcom/ss/android/socialbase/downloader/downloader/j;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->a:Lcom/ss/android/socialbase/downloader/downloader/j;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/j;->a(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public a(II)V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->a:Lcom/ss/android/socialbase/downloader/downloader/j;

    if-eqz v0, :cond_0

    .line 60
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->a:Lcom/ss/android/socialbase/downloader/downloader/j;

    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/j;->a(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 61
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public a(IIII)V
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->a:Lcom/ss/android/socialbase/downloader/downloader/j;

    if-nez v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->c:Lcom/ss/android/socialbase/downloader/downloader/n;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/ss/android/socialbase/downloader/downloader/n;->a(IIII)V

    goto :goto_0

    .line 50
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->a:Lcom/ss/android/socialbase/downloader/downloader/j;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/ss/android/socialbase/downloader/downloader/j;->a(IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 51
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public a(IIIJ)V
    .locals 8

    .line 44
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->a:Lcom/ss/android/socialbase/downloader/downloader/j;

    if-nez v0, :cond_0

    .line 45
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/impls/o;->c:Lcom/ss/android/socialbase/downloader/downloader/n;

    move v2, p1

    move v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-interface/range {v1 .. v6}, Lcom/ss/android/socialbase/downloader/downloader/n;->a(IIIJ)V

    goto :goto_0

    .line 46
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/impls/o;->a:Lcom/ss/android/socialbase/downloader/downloader/j;

    move v3, p1

    move v4, p2

    move v5, p3

    move-wide v6, p4

    invoke-interface/range {v2 .. v7}, Lcom/ss/android/socialbase/downloader/downloader/j;->a(IIIJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 47
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public a(IIJ)V
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->a:Lcom/ss/android/socialbase/downloader/downloader/j;

    if-nez v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->c:Lcom/ss/android/socialbase/downloader/downloader/n;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/ss/android/socialbase/downloader/downloader/n;->a(IIJ)V

    goto :goto_0

    .line 42
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->a:Lcom/ss/android/socialbase/downloader/downloader/j;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/ss/android/socialbase/downloader/downloader/j;->a(IIJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 43
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public a(IILc/d/a/b/a/c/d0;Lc/d/a/b/a/a/h;Z)V
    .locals 7

    .line 16
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->a:Lcom/ss/android/socialbase/downloader/downloader/j;

    if-nez v0, :cond_0

    return-void

    .line 17
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/impls/o;->a:Lcom/ss/android/socialbase/downloader/downloader/j;

    sget-object v0, Lc/d/a/b/a/a/h;->b:Lc/d/a/b/a/a/h;

    if-ne p4, v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    invoke-static {p3, v0}, Lc/d/a/b/a/j/e;->a(Lc/d/a/b/a/c/d0;Z)Lc/d/a/b/a/c/p;

    move-result-object v4

    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    move v2, p1

    move v3, p2

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/ss/android/socialbase/downloader/downloader/j;->b(IILc/d/a/b/a/c/p;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 18
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public a(ILandroid/app/Notification;)V
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->a:Lcom/ss/android/socialbase/downloader/downloader/j;

    if-nez v0, :cond_0

    .line 24
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->c:Lcom/ss/android/socialbase/downloader/downloader/n;

    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/n;->a(ILandroid/app/Notification;)V

    goto :goto_0

    .line 25
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->a:Lcom/ss/android/socialbase/downloader/downloader/j;

    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/j;->a(ILandroid/app/Notification;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 26
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public a(ILc/d/a/b/a/c/g0;)V
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->a:Lcom/ss/android/socialbase/downloader/downloader/j;

    if-eqz v0, :cond_0

    .line 63
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->a:Lcom/ss/android/socialbase/downloader/downloader/j;

    invoke-static {p2}, Lc/d/a/b/a/j/e;->a(Lc/d/a/b/a/c/g0;)Lc/d/a/b/a/c/f0;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/j;->a(ILc/d/a/b/a/c/f0;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 64
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public a(ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lc/d/a/b/a/f/b;",
            ">;)V"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->a:Lcom/ss/android/socialbase/downloader/downloader/j;

    if-nez v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->c:Lcom/ss/android/socialbase/downloader/downloader/n;

    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/n;->a(ILjava/util/List;)V

    goto :goto_0

    .line 54
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->a:Lcom/ss/android/socialbase/downloader/downloader/j;

    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/j;->b(ILjava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 55
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public a(IZ)V
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->a:Lcom/ss/android/socialbase/downloader/downloader/j;

    if-nez v0, :cond_0

    return-void

    .line 34
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->a:Lcom/ss/android/socialbase/downloader/downloader/j;

    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/j;->a(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 35
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public a(Landroid/os/IBinder;)V
    .locals 0

    .line 65
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/downloader/j$a;->a(Landroid/os/IBinder;)Lcom/ss/android/socialbase/downloader/downloader/j;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/impls/o;->a:Lcom/ss/android/socialbase/downloader/downloader/j;

    .line 66
    invoke-static {}, Lc/d/a/b/a/j/d;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 67
    new-instance p1, Lcom/ss/android/socialbase/downloader/impls/o$a;

    invoke-direct {p1, p0}, Lcom/ss/android/socialbase/downloader/impls/o$a;-><init>(Lcom/ss/android/socialbase/downloader/impls/o;)V

    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/o;->a(Lc/d/a/b/a/c/h;)V

    :cond_0
    return-void
.end method

.method public a(Lc/d/a/b/a/c/h;)V
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->a:Lcom/ss/android/socialbase/downloader/downloader/j;

    if-eqz v0, :cond_0

    .line 57
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->a:Lcom/ss/android/socialbase/downloader/downloader/j;

    invoke-static {p1}, Lc/d/a/b/a/j/e;->a(Lc/d/a/b/a/c/h;)Lc/d/a/b/a/c/g;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/j;->a(Lc/d/a/b/a/c/g;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 58
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public a(Lc/d/a/b/a/f/b;)V
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->a:Lcom/ss/android/socialbase/downloader/downloader/j;

    if-nez v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->c:Lcom/ss/android/socialbase/downloader/downloader/n;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/n;->a(Lc/d/a/b/a/f/b;)V

    goto :goto_0

    .line 38
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->a:Lcom/ss/android/socialbase/downloader/downloader/j;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/j;->a(Lc/d/a/b/a/f/b;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 39
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public a(Lc/d/a/b/a/f/d;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/p;

    if-eqz v0, :cond_1

    .line 32
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/p;->b(Lc/d/a/b/a/f/d;)V

    :cond_1
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 12
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->a:Lcom/ss/android/socialbase/downloader/downloader/j;

    if-nez v0, :cond_0

    .line 13
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->c:Lcom/ss/android/socialbase/downloader/downloader/n;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/n;->a(Ljava/util/List;)V

    goto :goto_0

    .line 14
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->a:Lcom/ss/android/socialbase/downloader/downloader/j;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/j;->a(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 15
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public a(ZZ)V
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->a:Lcom/ss/android/socialbase/downloader/downloader/j;

    if-nez v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->c:Lcom/ss/android/socialbase/downloader/downloader/n;

    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/n;->a(ZZ)V

    goto :goto_0

    .line 29
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/impls/o;->a:Lcom/ss/android/socialbase/downloader/downloader/j;

    invoke-interface {p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/j;->a(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 30
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public a(Lc/d/a/b/a/f/c;)Z
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->a:Lcom/ss/android/socialbase/downloader/downloader/j;

    if-nez v0, :cond_0

    .line 20
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->c:Lcom/ss/android/socialbase/downloader/downloader/n;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/n;->a(Lc/d/a/b/a/f/c;)Z

    move-result p1

    return p1

    .line 21
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->a:Lcom/ss/android/socialbase/downloader/downloader/j;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/j;->a(Lc/d/a/b/a/f/c;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 22
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public b(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->a:Lcom/ss/android/socialbase/downloader/downloader/j;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->a:Lcom/ss/android/socialbase/downloader/downloader/j;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/j;->b(I)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    return v1
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Lc/d/a/b/a/f/c;
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/ss/android/socialbase/downloader/impls/o;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 5
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/o;->g(I)Lc/d/a/b/a/f/c;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;)Ljava/util/List;
    .locals 1
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
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->a:Lcom/ss/android/socialbase/downloader/downloader/j;

    if-nez v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->c:Lcom/ss/android/socialbase/downloader/downloader/n;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/n;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 8
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->a:Lcom/ss/android/socialbase/downloader/downloader/j;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/j;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public b(IILc/d/a/b/a/c/d0;Lc/d/a/b/a/a/h;Z)V
    .locals 7

    .line 10
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->a:Lcom/ss/android/socialbase/downloader/downloader/j;

    if-nez v0, :cond_0

    return-void

    .line 11
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/impls/o;->a:Lcom/ss/android/socialbase/downloader/downloader/j;

    sget-object v0, Lc/d/a/b/a/a/h;->b:Lc/d/a/b/a/a/h;

    if-ne p4, v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    invoke-static {p3, v0}, Lc/d/a/b/a/j/e;->a(Lc/d/a/b/a/c/d0;Z)Lc/d/a/b/a/c/p;

    move-result-object v4

    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    move v2, p1

    move v3, p2

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/ss/android/socialbase/downloader/downloader/j;->a(IILc/d/a/b/a/c/p;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 12
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_1
    return-void
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

    .line 16
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->a:Lcom/ss/android/socialbase/downloader/downloader/j;

    if-nez v0, :cond_0

    return-void

    .line 17
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->a:Lcom/ss/android/socialbase/downloader/downloader/j;

    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/j;->a(ILjava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 18
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public b(Lc/d/a/b/a/f/c;)V
    .locals 0

    return-void
.end method

.method public b(Lc/d/a/b/a/f/d;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/p;

    if-eqz v0, :cond_1

    .line 15
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/p;->a(Lc/d/a/b/a/f/d;)V

    :cond_1
    return-void
.end method

.method public b()Z
    .locals 1

    .line 13
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->z()Z

    move-result v0

    return v0
.end method

.method public c(Ljava/lang/String;)Ljava/util/List;
    .locals 1
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
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->a:Lcom/ss/android/socialbase/downloader/downloader/j;

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->c:Lcom/ss/android/socialbase/downloader/downloader/n;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/n;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 6
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->a:Lcom/ss/android/socialbase/downloader/downloader/j;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/j;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public c()V
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/p;

    if-eqz v0, :cond_0

    .line 9
    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/downloader/p;->c()V

    :cond_0
    return-void
.end method

.method public c(I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->a:Lcom/ss/android/socialbase/downloader/downloader/j;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->a:Lcom/ss/android/socialbase/downloader/downloader/j;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/j;->c(I)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    return v1
.end method

.method public c(Lc/d/a/b/a/f/c;)Z
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->a:Lcom/ss/android/socialbase/downloader/downloader/j;

    if-nez v0, :cond_0

    .line 11
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->c:Lcom/ss/android/socialbase/downloader/downloader/n;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/n;->c(Lc/d/a/b/a/f/c;)Z

    move-result p1

    return p1

    .line 12
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->a:Lcom/ss/android/socialbase/downloader/downloader/j;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/j;->b(Lc/d/a/b/a/f/c;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 13
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public d(Ljava/lang/String;)Ljava/util/List;
    .locals 1
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
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->a:Lcom/ss/android/socialbase/downloader/downloader/j;

    if-eqz v0, :cond_0

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->a:Lcom/ss/android/socialbase/downloader/downloader/j;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/j;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public d(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->a:Lcom/ss/android/socialbase/downloader/downloader/j;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->a:Lcom/ss/android/socialbase/downloader/downloader/j;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/j;->d(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public d()Z
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->a:Lcom/ss/android/socialbase/downloader/downloader/j;

    if-nez v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->c:Lcom/ss/android/socialbase/downloader/downloader/n;

    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/downloader/n;->d()Z

    move-result v0

    return v0

    .line 9
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->a:Lcom/ss/android/socialbase/downloader/downloader/j;

    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/downloader/j;->c()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 10
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public e()V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->a:Lcom/ss/android/socialbase/downloader/downloader/j;

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->c:Lcom/ss/android/socialbase/downloader/downloader/n;

    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/downloader/n;->e()V

    goto :goto_0

    .line 6
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->a:Lcom/ss/android/socialbase/downloader/downloader/j;

    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/downloader/j;->d()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public e(I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->a:Lcom/ss/android/socialbase/downloader/downloader/j;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->a:Lcom/ss/android/socialbase/downloader/downloader/j;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/j;->e(I)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    return v1
.end method

.method public f(I)J
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->a:Lcom/ss/android/socialbase/downloader/downloader/j;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    .line 2
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->a:Lcom/ss/android/socialbase/downloader/downloader/j;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/j;->f(I)J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    return-wide v1
.end method

.method public f()Z
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->a:Lcom/ss/android/socialbase/downloader/downloader/j;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public g(I)Lc/d/a/b/a/f/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->a:Lcom/ss/android/socialbase/downloader/downloader/j;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->c:Lcom/ss/android/socialbase/downloader/downloader/n;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/n;->g(I)Lc/d/a/b/a/f/c;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->a:Lcom/ss/android/socialbase/downloader/downloader/j;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/j;->g(I)Lc/d/a/b/a/f/c;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public g()V
    .locals 1

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->a:Lcom/ss/android/socialbase/downloader/downloader/j;

    return-void
.end method

.method public h(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->a:Lcom/ss/android/socialbase/downloader/downloader/j;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->a:Lcom/ss/android/socialbase/downloader/downloader/j;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/j;->h(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public i(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lc/d/a/b/a/f/b;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->a:Lcom/ss/android/socialbase/downloader/downloader/j;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->c:Lcom/ss/android/socialbase/downloader/downloader/n;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/n;->i(I)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->a:Lcom/ss/android/socialbase/downloader/downloader/j;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/j;->i(I)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public j(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->a:Lcom/ss/android/socialbase/downloader/downloader/j;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->c:Lcom/ss/android/socialbase/downloader/downloader/n;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/n;->j(I)V

    goto :goto_0

    .line 3
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->a:Lcom/ss/android/socialbase/downloader/downloader/j;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/j;->j(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public k(I)Lc/d/a/b/a/c/g0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->a:Lcom/ss/android/socialbase/downloader/downloader/j;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->a:Lcom/ss/android/socialbase/downloader/downloader/j;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/j;->k(I)Lc/d/a/b/a/c/f0;

    move-result-object p1

    invoke-static {p1}, Lc/d/a/b/a/j/e;->a(Lc/d/a/b/a/c/f0;)Lc/d/a/b/a/c/g0;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public l(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->a:Lcom/ss/android/socialbase/downloader/downloader/j;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->c()Lcom/ss/android/socialbase/downloader/downloader/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/c;->b(I)I

    move-result p1

    return p1

    .line 3
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->a:Lcom/ss/android/socialbase/downloader/downloader/j;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/j;->l(I)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, -0x1

    return p1
.end method

.method public m(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->a:Lcom/ss/android/socialbase/downloader/downloader/j;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->c:Lcom/ss/android/socialbase/downloader/downloader/n;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/n;->m(I)V

    goto :goto_0

    .line 3
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->a:Lcom/ss/android/socialbase/downloader/downloader/j;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/j;->m(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public n(I)Lc/d/a/b/a/c/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->a:Lcom/ss/android/socialbase/downloader/downloader/j;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->a:Lcom/ss/android/socialbase/downloader/downloader/j;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/j;->n(I)Lc/d/a/b/a/c/c;

    move-result-object p1

    invoke-static {p1}, Lc/d/a/b/a/j/e;->a(Lc/d/a/b/a/c/c;)Lc/d/a/b/a/c/d;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public o(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->a:Lcom/ss/android/socialbase/downloader/downloader/j;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->c:Lcom/ss/android/socialbase/downloader/downloader/n;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/n;->o(I)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->a:Lcom/ss/android/socialbase/downloader/downloader/j;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/j;->o(I)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public p(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->a:Lcom/ss/android/socialbase/downloader/downloader/j;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->c:Lcom/ss/android/socialbase/downloader/downloader/n;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/n;->p(I)V

    goto :goto_0

    .line 3
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->a:Lcom/ss/android/socialbase/downloader/downloader/j;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/j;->p(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public q(I)Lc/d/a/b/a/c/x;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->a:Lcom/ss/android/socialbase/downloader/downloader/j;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->a:Lcom/ss/android/socialbase/downloader/downloader/j;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/j;->q(I)Lc/d/a/b/a/c/n;

    move-result-object p1

    invoke-static {p1}, Lc/d/a/b/a/j/e;->a(Lc/d/a/b/a/c/n;)Lc/d/a/b/a/c/x;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public r(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->a:Lcom/ss/android/socialbase/downloader/downloader/j;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->c:Lcom/ss/android/socialbase/downloader/downloader/n;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/n;->r(I)V

    goto :goto_0

    .line 3
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->a:Lcom/ss/android/socialbase/downloader/downloader/j;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/j;->r(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public s(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->b:Lcom/ss/android/socialbase/downloader/downloader/p;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/p;->a(I)V

    :cond_0
    return-void
.end method

.method public t(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->a:Lcom/ss/android/socialbase/downloader/downloader/j;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->c:Lcom/ss/android/socialbase/downloader/downloader/n;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/n;->t(I)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->a:Lcom/ss/android/socialbase/downloader/downloader/j;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/j;->t(I)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public u(I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->a:Lcom/ss/android/socialbase/downloader/downloader/j;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/o;->a:Lcom/ss/android/socialbase/downloader/downloader/j;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/j;->s(I)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    return v1
.end method
