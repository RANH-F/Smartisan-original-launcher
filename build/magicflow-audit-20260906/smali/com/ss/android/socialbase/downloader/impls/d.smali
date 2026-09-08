.class public Lcom/ss/android/socialbase/downloader/impls/d;
.super Ljava/lang/Object;
.source "DefaultDownloadCache.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/downloader/k;


# instance fields
.field private final a:Lcom/ss/android/socialbase/downloader/impls/k;

.field private final b:Lc/d/a/b/a/b/c;

.field private volatile c:Z

.field private d:Lc/d/a/b/a/i/f$a;

.field private e:Lc/d/a/b/a/i/f;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/ss/android/socialbase/downloader/impls/d$a;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/impls/d$a;-><init>(Lcom/ss/android/socialbase/downloader/impls/d;)V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->d:Lc/d/a/b/a/i/f$a;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->e:Lc/d/a/b/a/i/f;

    .line 4
    new-instance v0, Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-direct {v0}, Lcom/ss/android/socialbase/downloader/impls/k;-><init>()V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->a:Lcom/ss/android/socialbase/downloader/impls/k;

    .line 5
    new-instance v0, Lc/d/a/b/a/b/c;

    invoke-direct {v0}, Lc/d/a/b/a/b/c;-><init>()V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->b:Lc/d/a/b/a/b/c;

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->c:Z

    .line 7
    new-instance v0, Lc/d/a/b/a/i/f;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/impls/d;->d:Lc/d/a/b/a/i/f$a;

    invoke-direct {v0, v1, v2}, Lc/d/a/b/a/i/f;-><init>(Landroid/os/Looper;Lc/d/a/b/a/i/f$a;)V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->e:Lc/d/a/b/a/i/f;

    .line 8
    invoke-virtual {p0}, Lcom/ss/android/socialbase/downloader/impls/d;->e()V

    return-void
.end method

.method private a(Lc/d/a/b/a/f/c;Z)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 36
    :cond_0
    invoke-static {}, Lc/d/a/b/a/j/d;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_3

    const/4 p2, 0x1

    .line 37
    invoke-static {p2}, Lcom/ss/android/socialbase/downloader/impls/l;->a(Z)Lcom/ss/android/socialbase/downloader/downloader/n;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 38
    invoke-interface {p2, p1}, Lcom/ss/android/socialbase/downloader/downloader/n;->c(Lc/d/a/b/a/f/c;)Z

    goto :goto_0

    .line 39
    :cond_1
    iget-object p2, p0, Lcom/ss/android/socialbase/downloader/impls/d;->b:Lc/d/a/b/a/b/c;

    invoke-virtual {p2, p1}, Lc/d/a/b/a/b/c;->a(Lc/d/a/b/a/f/c;)Z

    goto :goto_0

    .line 40
    :cond_2
    iget-object p2, p0, Lcom/ss/android/socialbase/downloader/impls/d;->b:Lc/d/a/b/a/b/c;

    invoke-virtual {p2, p1}, Lc/d/a/b/a/b/c;->a(Lc/d/a/b/a/f/c;)Z

    :cond_3
    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/ss/android/socialbase/downloader/impls/d;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/impls/d;->c:Z

    return p1
.end method

.method private c(Lc/d/a/b/a/f/c;)V
    .locals 1

    const/4 v0, 0x1

    .line 3
    invoke-direct {p0, p1, v0}, Lcom/ss/android/socialbase/downloader/impls/d;->a(Lc/d/a/b/a/f/c;Z)V

    return-void
.end method


# virtual methods
.method public a(I)Lc/d/a/b/a/f/c;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->a:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/impls/k;->a(I)Lc/d/a/b/a/f/c;

    move-result-object p1

    .line 4
    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/d;->c(Lc/d/a/b/a/f/c;)V

    return-object p1
.end method

.method public a(II)Lc/d/a/b/a/f/c;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->a:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-virtual {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/impls/k;->a(II)Lc/d/a/b/a/f/c;

    move-result-object p1

    .line 29
    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/d;->c(Lc/d/a/b/a/f/c;)V

    return-object p1
.end method

.method public a(IJ)Lc/d/a/b/a/f/c;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->a:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ss/android/socialbase/downloader/impls/k;->a(IJ)Lc/d/a/b/a/f/c;

    move-result-object p1

    const/4 p2, 0x0

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/ss/android/socialbase/downloader/impls/d;->a(Lc/d/a/b/a/f/c;Z)V

    return-object p1
.end method

.method public a(IJLjava/lang/String;Ljava/lang/String;)Lc/d/a/b/a/f/c;
    .locals 6

    .line 32
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->a:Lcom/ss/android/socialbase/downloader/impls/k;

    move v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/ss/android/socialbase/downloader/impls/k;->a(IJLjava/lang/String;Ljava/lang/String;)Lc/d/a/b/a/f/c;

    move-result-object p1

    .line 33
    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/d;->c(Lc/d/a/b/a/f/c;)V

    return-object p1
.end method

.method public a()Lcom/ss/android/socialbase/downloader/impls/k;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->a:Lcom/ss/android/socialbase/downloader/impls/k;

    return-object v0
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

    .line 5
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->a:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/impls/k;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public a(IIII)V
    .locals 1

    .line 23
    invoke-static {}, Lc/d/a/b/a/j/d;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 24
    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/impls/l;->a(Z)Lcom/ss/android/socialbase/downloader/downloader/n;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 25
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/ss/android/socialbase/downloader/downloader/n;->a(IIII)V

    goto :goto_0

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->b:Lc/d/a/b/a/b/c;

    invoke-virtual {v0, p1, p2, p3, p4}, Lc/d/a/b/a/b/c;->a(IIII)V

    goto :goto_0

    .line 27
    :cond_1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->b:Lc/d/a/b/a/b/c;

    invoke-virtual {v0, p1, p2, p3, p4}, Lc/d/a/b/a/b/c;->a(IIII)V

    :goto_0
    return-void
.end method

.method public a(IIIJ)V
    .locals 9

    .line 18
    invoke-static {}, Lc/d/a/b/a/j/d;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 19
    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/impls/l;->a(Z)Lcom/ss/android/socialbase/downloader/downloader/n;

    move-result-object v1

    if-eqz v1, :cond_0

    move v2, p1

    move v3, p2

    move v4, p3

    move-wide v5, p4

    .line 20
    invoke-interface/range {v1 .. v6}, Lcom/ss/android/socialbase/downloader/downloader/n;->a(IIIJ)V

    goto :goto_0

    .line 21
    :cond_0
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/impls/d;->b:Lc/d/a/b/a/b/c;

    move v3, p1

    move v4, p2

    move v5, p3

    move-wide v6, p4

    invoke-virtual/range {v2 .. v7}, Lc/d/a/b/a/b/c;->a(IIIJ)V

    goto :goto_0

    .line 22
    :cond_1
    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/impls/d;->b:Lc/d/a/b/a/b/c;

    move v4, p1

    move v5, p2

    move v6, p3

    move-wide v7, p4

    invoke-virtual/range {v3 .. v8}, Lc/d/a/b/a/b/c;->a(IIIJ)V

    :goto_0
    return-void
.end method

.method public a(IIJ)V
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->a:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/ss/android/socialbase/downloader/impls/k;->a(IIJ)V

    .line 13
    invoke-static {}, Lc/d/a/b/a/j/d;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 14
    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/impls/l;->a(Z)Lcom/ss/android/socialbase/downloader/downloader/n;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 15
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/ss/android/socialbase/downloader/downloader/n;->a(IIJ)V

    goto :goto_0

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->b:Lc/d/a/b/a/b/c;

    invoke-virtual {v0, p1, p2, p3, p4}, Lc/d/a/b/a/b/c;->a(IIJ)V

    goto :goto_0

    .line 17
    :cond_1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->b:Lc/d/a/b/a/b/c;

    invoke-virtual {v0, p1, p2, p3, p4}, Lc/d/a/b/a/b/c;->a(IIJ)V

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

    .line 41
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->a:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/impls/k;->c(I)Lc/d/a/b/a/f/c;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/impls/d;->a(Lc/d/a/b/a/f/c;)Z

    if-nez p2, :cond_0

    .line 42
    iget-object p2, p0, Lcom/ss/android/socialbase/downloader/impls/d;->a:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-virtual {p2, p1}, Lcom/ss/android/socialbase/downloader/impls/k;->d(I)Ljava/util/List;

    move-result-object p2

    .line 43
    :cond_0
    invoke-static {}, Lc/d/a/b/a/j/d;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 44
    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/impls/l;->a(Z)Lcom/ss/android/socialbase/downloader/downloader/n;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 45
    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/n;->a(ILjava/util/List;)V

    goto :goto_0

    .line 46
    :cond_1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->b:Lc/d/a/b/a/b/c;

    invoke-virtual {v0, p1, p2}, Lc/d/a/b/a/b/c;->a(ILjava/util/List;)V

    goto :goto_0

    .line 47
    :cond_2
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->b:Lc/d/a/b/a/b/c;

    invoke-virtual {v0, p1, p2}, Lc/d/a/b/a/b/c;->a(ILjava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 48
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public a(Lc/d/a/b/a/f/b;)V
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->a:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/impls/k;->a(Lc/d/a/b/a/f/b;)V

    .line 7
    invoke-static {}, Lc/d/a/b/a/j/d;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 8
    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/impls/l;->a(Z)Lcom/ss/android/socialbase/downloader/downloader/n;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 9
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/n;->a(Lc/d/a/b/a/f/b;)V

    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->b:Lc/d/a/b/a/b/c;

    invoke-virtual {v0, p1}, Lc/d/a/b/a/b/c;->a(Lc/d/a/b/a/f/b;)V

    goto :goto_0

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->b:Lc/d/a/b/a/b/c;

    invoke-virtual {v0, p1}, Lc/d/a/b/a/b/c;->a(Lc/d/a/b/a/f/b;)V

    :goto_0
    return-void
.end method

.method public a(Lc/d/a/b/a/f/c;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->a:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/impls/k;->a(Lc/d/a/b/a/f/c;)Z

    move-result v0

    .line 31
    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/d;->c(Lc/d/a/b/a/f/c;)V

    return v0
.end method

.method public b(IJ)Lc/d/a/b/a/f/c;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->a:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ss/android/socialbase/downloader/impls/k;->b(IJ)Lc/d/a/b/a/f/c;

    move-result-object p2

    const/4 p3, 0x0

    .line 21
    invoke-virtual {p0, p1, p3}, Lcom/ss/android/socialbase/downloader/impls/d;->a(ILjava/util/List;)V

    return-object p2
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

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->a:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/impls/k;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public b()V
    .locals 1

    .line 13
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->a:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/impls/k;->b()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 14
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    .line 15
    :goto_0
    invoke-static {}, Lc/d/a/b/a/j/d;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 16
    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/impls/l;->a(Z)Lcom/ss/android/socialbase/downloader/downloader/n;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 17
    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/downloader/n;->e()V

    goto :goto_1

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->b:Lc/d/a/b/a/b/c;

    invoke-virtual {v0}, Lc/d/a/b/a/b/c;->b()V

    goto :goto_1

    .line 19
    :cond_1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->b:Lc/d/a/b/a/b/c;

    invoke-virtual {v0}, Lc/d/a/b/a/b/c;->b()V

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

    if-eqz p2, :cond_1

    .line 23
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->a:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-virtual {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/impls/k;->b(ILjava/util/List;)V

    .line 25
    invoke-static {}, Lc/d/a/b/a/j/d;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 26
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->b:Lc/d/a/b/a/b/c;

    invoke-virtual {v0, p1, p2}, Lc/d/a/b/a/b/c;->a(ILjava/util/List;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public b(Lc/d/a/b/a/f/b;)V
    .locals 1

    .line 2
    invoke-static {}, Lc/d/a/b/a/j/d;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 3
    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/impls/l;->a(Z)Lcom/ss/android/socialbase/downloader/downloader/n;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/n;->a(Lc/d/a/b/a/f/b;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->b:Lc/d/a/b/a/b/c;

    invoke-virtual {v0, p1}, Lc/d/a/b/a/b/c;->a(Lc/d/a/b/a/f/b;)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->b:Lc/d/a/b/a/b/c;

    invoke-virtual {v0, p1}, Lc/d/a/b/a/b/c;->a(Lc/d/a/b/a/f/b;)V

    :goto_0
    return-void
.end method

.method public b(Lc/d/a/b/a/f/c;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->a:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/impls/k;->a(Lc/d/a/b/a/f/c;)Z

    return-void
.end method

.method public b(I)Z
    .locals 1

    .line 7
    invoke-static {}, Lc/d/a/b/a/j/d;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 8
    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/impls/l;->a(Z)Lcom/ss/android/socialbase/downloader/downloader/n;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 9
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/n;->t(I)Z

    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->b:Lc/d/a/b/a/b/c;

    invoke-virtual {v0, p1}, Lc/d/a/b/a/b/c;->b(I)Z

    goto :goto_0

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->b:Lc/d/a/b/a/b/c;

    invoke-virtual {v0, p1}, Lc/d/a/b/a/b/c;->b(I)Z

    .line 12
    :goto_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->a:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/impls/k;->b(I)Z

    move-result p1

    return p1
.end method

.method public c(I)Lc/d/a/b/a/f/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->a:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/impls/k;->c(I)Lc/d/a/b/a/f/c;

    move-result-object p1

    return-object p1
.end method

.method public c(IJ)Lc/d/a/b/a/f/c;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->a:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ss/android/socialbase/downloader/impls/k;->c(IJ)Lc/d/a/b/a/f/c;

    move-result-object p2

    const/4 p3, 0x0

    .line 5
    invoke-virtual {p0, p1, p3}, Lcom/ss/android/socialbase/downloader/impls/d;->a(ILjava/util/List;)V

    return-object p2
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

    .line 2
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->a:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/impls/k;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public c()Z
    .locals 1

    .line 6
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->c:Z

    return v0
.end method

.method public d()Lc/d/a/b/a/b/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->b:Lc/d/a/b/a/b/c;

    return-object v0
.end method

.method public d(IJ)Lc/d/a/b/a/f/c;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->a:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ss/android/socialbase/downloader/impls/k;->d(IJ)Lc/d/a/b/a/f/c;

    move-result-object p2

    const/4 p3, 0x0

    .line 4
    invoke-virtual {p0, p1, p3}, Lcom/ss/android/socialbase/downloader/impls/d;->a(ILjava/util/List;)V

    return-object p2
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
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->a:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/impls/k;->d(I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public e(I)Lc/d/a/b/a/f/c;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->a:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/impls/k;->e(I)Lc/d/a/b/a/f/c;

    move-result-object p1

    .line 4
    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/d;->c(Lc/d/a/b/a/f/c;)V

    return-object p1
.end method

.method public e()V
    .locals 4

    .line 1
    sget-object v0, Lc/d/a/b/a/a/d;->b:Lc/d/a/b/a/a/d;

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/downloader/b;->a(Lc/d/a/b/a/a/d;)V

    .line 2
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->b:Lc/d/a/b/a/b/c;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/impls/d;->a:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/impls/k;->a()Landroid/util/SparseArray;

    move-result-object v1

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/impls/d;->a:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/impls/k;->d()Landroid/util/SparseArray;

    move-result-object v2

    new-instance v3, Lcom/ss/android/socialbase/downloader/impls/d$b;

    invoke-direct {v3, p0}, Lcom/ss/android/socialbase/downloader/impls/d$b;-><init>(Lcom/ss/android/socialbase/downloader/impls/d;)V

    invoke-virtual {v0, v1, v2, v3}, Lc/d/a/b/a/b/c;->a(Landroid/util/SparseArray;Landroid/util/SparseArray;Lc/d/a/b/a/b/b;)V

    return-void
.end method

.method public f()V
    .locals 4

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x17

    if-lt v0, v2, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->e:Lc/d/a/b/a/i/f;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/impls/d;->e:Lc/d/a/b/a/i/f;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->e:Lc/d/a/b/a/i/f;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/impls/d;->e:Lc/d/a/b/a/i/f;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_0
    return-void
.end method

.method public f(I)Z
    .locals 1

    .line 6
    :try_start_0
    invoke-static {}, Lc/d/a/b/a/j/d;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 7
    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/impls/l;->a(Z)Lcom/ss/android/socialbase/downloader/downloader/n;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/n;->o(I)Z

    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->b:Lc/d/a/b/a/b/c;

    invoke-virtual {v0, p1}, Lc/d/a/b/a/b/c;->f(I)Z

    goto :goto_0

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->b:Lc/d/a/b/a/b/c;

    invoke-virtual {v0, p1}, Lc/d/a/b/a/b/c;->f(I)Z
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 11
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    .line 12
    :goto_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->a:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/impls/k;->f(I)Z

    move-result p1

    return p1
.end method

.method public g(I)Lc/d/a/b/a/f/c;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->a:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/impls/k;->g(I)Lc/d/a/b/a/f/c;

    move-result-object p1

    .line 18
    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/d;->c(Lc/d/a/b/a/f/c;)V

    return-object p1
.end method

.method public g()V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->c:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->o()Lcom/ss/android/socialbase/downloader/downloader/m;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/downloader/m;->a()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 4
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    .line 5
    :cond_2
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/impls/d;->a:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/impls/k;->a()Landroid/util/SparseArray;

    move-result-object v2

    if-nez v2, :cond_3

    return-void

    .line 6
    :cond_3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 7
    monitor-enter v2

    const/4 v4, 0x0

    .line 8
    :goto_0
    :try_start_0
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-ge v4, v5, :cond_7

    .line 9
    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    if-nez v5, :cond_4

    goto :goto_1

    .line 10
    :cond_4
    invoke-virtual {v2, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lc/d/a/b/a/f/c;

    if-eqz v5, :cond_6

    .line 11
    invoke-virtual {v5}, Lc/d/a/b/a/f/c;->z()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {v5}, Lc/d/a/b/a/f/c;->G0()I

    move-result v6

    const/4 v7, -0x2

    if-ne v6, v7, :cond_5

    goto :goto_1

    .line 12
    :cond_5
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 13
    :cond_7
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    .line 15
    invoke-interface {v0, v3}, Lcom/ss/android/socialbase/downloader/downloader/m;->a(Ljava/util/List;)V

    :cond_8
    return-void

    :catchall_0
    move-exception v0

    .line 16
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_9
    :goto_2
    return-void
.end method

.method public h(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->a:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/impls/k;->h(I)V

    .line 2
    invoke-static {}, Lc/d/a/b/a/j/d;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 3
    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/impls/l;->a(Z)Lcom/ss/android/socialbase/downloader/downloader/n;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/n;->r(I)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->b:Lc/d/a/b/a/b/c;

    invoke-virtual {v0, p1}, Lc/d/a/b/a/b/c;->h(I)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->b:Lc/d/a/b/a/b/c;

    invoke-virtual {v0, p1}, Lc/d/a/b/a/b/c;->h(I)V

    :goto_0
    return-void
.end method

.method public i(I)Lc/d/a/b/a/f/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/d;->a:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/impls/k;->i(I)Lc/d/a/b/a/f/c;

    move-result-object p1

    .line 2
    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/d;->c(Lc/d/a/b/a/f/c;)V

    return-object p1
.end method
