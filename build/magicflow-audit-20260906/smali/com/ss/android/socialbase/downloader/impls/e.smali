.class public Lcom/ss/android/socialbase/downloader/impls/e;
.super Lcom/ss/android/socialbase/downloader/impls/a;
.source "DefaultDownloadEngine.java"


# static fields
.field private static j:Lc/d/a/b/a/i/d;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/impls/a;-><init>()V

    .line 2
    new-instance v0, Lc/d/a/b/a/i/d;

    invoke-direct {v0}, Lc/d/a/b/a/i/d;-><init>()V

    sput-object v0, Lcom/ss/android/socialbase/downloader/impls/e;->j:Lc/d/a/b/a/i/d;

    return-void
.end method

.method public static b(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->l()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->invokeAll(Ljava/util/Collection;)Ljava/util/List;

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 9
    sget-object v0, Lcom/ss/android/socialbase/downloader/impls/e;->j:Lc/d/a/b/a/i/d;

    invoke-virtual {v0}, Lc/d/a/b/a/i/d;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a(ILc/d/a/b/a/f/d;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "start doDownload for task : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DownloadTask"

    invoke-static {v0, p1}, Lc/d/a/b/a/e/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    new-instance p1, Lc/d/a/b/a/i/c;

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a;->i:Lc/d/a/b/a/i/f;

    invoke-direct {p1, p2, v0}, Lc/d/a/b/a/i/c;-><init>(Lc/d/a/b/a/f/d;Landroid/os/Handler;)V

    .line 8
    sget-object p2, Lcom/ss/android/socialbase/downloader/impls/e;->j:Lc/d/a/b/a/i/d;

    invoke-virtual {p2, p1}, Lc/d/a/b/a/i/d;->a(Lc/d/a/b/a/i/c;)V

    return-void
.end method

.method public a(I)Z
    .locals 2

    .line 1
    sget-object v0, Lcom/ss/android/socialbase/downloader/impls/e;->j:Lc/d/a/b/a/i/d;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Lc/d/a/b/a/i/d;->b(I)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 3
    :cond_1
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/a;->e(I)Lc/d/a/b/a/f/c;

    move-result-object v0

    if-nez v0, :cond_2

    return v1

    .line 4
    :cond_2
    invoke-virtual {v0}, Lc/d/a/b/a/f/c;->A0()I

    move-result v0

    invoke-static {v0}, Lc/d/a/b/a/a/f;->b(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 5
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/e;->b(I)V

    return v1

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method public b(I)V
    .locals 1

    .line 3
    sget-object v0, Lcom/ss/android/socialbase/downloader/impls/e;->j:Lc/d/a/b/a/i/d;

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {v0, p1}, Lc/d/a/b/a/i/d;->d(I)V

    return-void
.end method

.method protected c(I)V
    .locals 1

    .line 1
    sget-object v0, Lcom/ss/android/socialbase/downloader/impls/e;->j:Lc/d/a/b/a/i/d;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Lc/d/a/b/a/i/d;->c(I)V

    return-void
.end method

.method public d(I)V
    .locals 1

    .line 1
    sget-object v0, Lcom/ss/android/socialbase/downloader/impls/e;->j:Lc/d/a/b/a/i/d;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Lc/d/a/b/a/i/d;->a(I)V

    :cond_1
    :goto_0
    return-void
.end method
