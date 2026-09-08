.class public Lcom/ss/android/socialbase/downloader/impls/m;
.super Lcom/ss/android/socialbase/downloader/downloader/j$a;
.source "IndependentDownloadBinder.java"


# instance fields
.field private final a:Lcom/ss/android/socialbase/downloader/downloader/n;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/ss/android/socialbase/downloader/impls/m;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/downloader/j$a;-><init>()V

    .line 2
    new-instance v0, Lcom/ss/android/socialbase/downloader/impls/p;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/ss/android/socialbase/downloader/impls/p;-><init>(Z)V

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->a:Lcom/ss/android/socialbase/downloader/downloader/n;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->a:Lcom/ss/android/socialbase/downloader/downloader/n;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 8
    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/n;->a(Ljava/lang/String;Ljava/lang/String;)I

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

    .line 9
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->a:Lcom/ss/android/socialbase/downloader/downloader/n;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 10
    :cond_0
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/n;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public a()V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->a:Lcom/ss/android/socialbase/downloader/downloader/n;

    if-nez v0, :cond_0

    return-void

    .line 6
    :cond_0
    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/downloader/n;->a()V

    return-void
.end method

.method public a(I)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->a:Lcom/ss/android/socialbase/downloader/downloader/n;

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/n;->a(I)V

    return-void
.end method

.method public a(II)V
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->a:Lcom/ss/android/socialbase/downloader/downloader/n;

    if-nez v0, :cond_0

    return-void

    .line 35
    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/n;->a(II)V

    return-void
.end method

.method public a(IIII)V
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->a:Lcom/ss/android/socialbase/downloader/downloader/n;

    if-nez v0, :cond_0

    return-void

    .line 29
    :cond_0
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/ss/android/socialbase/downloader/downloader/n;->a(IIII)V

    return-void
.end method

.method public a(IIIJ)V
    .locals 6

    .line 26
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->a:Lcom/ss/android/socialbase/downloader/downloader/n;

    if-nez v0, :cond_0

    return-void

    :cond_0
    move v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    .line 27
    invoke-interface/range {v0 .. v5}, Lcom/ss/android/socialbase/downloader/downloader/n;->a(IIIJ)V

    return-void
.end method

.method public a(IIJ)V
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->a:Lcom/ss/android/socialbase/downloader/downloader/n;

    if-nez v0, :cond_0

    return-void

    .line 25
    :cond_0
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/ss/android/socialbase/downloader/downloader/n;->a(IIJ)V

    return-void
.end method

.method public a(IILc/d/a/b/a/c/p;IZ)V
    .locals 6

    .line 13
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->a:Lcom/ss/android/socialbase/downloader/downloader/n;

    if-nez v0, :cond_0

    return-void

    .line 14
    :cond_0
    invoke-static {p3}, Lc/d/a/b/a/j/e;->a(Lc/d/a/b/a/c/p;)Lc/d/a/b/a/c/d0;

    move-result-object v3

    invoke-static {p4}, Lc/d/a/b/a/j/d;->d(I)Lc/d/a/b/a/a/h;

    move-result-object v4

    move v1, p1

    move v2, p2

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/ss/android/socialbase/downloader/downloader/n;->b(IILc/d/a/b/a/c/d0;Lc/d/a/b/a/a/h;Z)V

    return-void
.end method

.method public a(ILandroid/app/Notification;)V
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->a:Lcom/ss/android/socialbase/downloader/downloader/n;

    if-nez v0, :cond_0

    return-void

    .line 18
    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/n;->a(ILandroid/app/Notification;)V

    return-void
.end method

.method public a(ILc/d/a/b/a/c/f0;)V
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->a:Lcom/ss/android/socialbase/downloader/downloader/n;

    if-nez v0, :cond_0

    return-void

    .line 37
    :cond_0
    invoke-static {p2}, Lc/d/a/b/a/j/e;->a(Lc/d/a/b/a/c/f0;)Lc/d/a/b/a/c/g0;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/n;->a(ILc/d/a/b/a/c/g0;)V

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

    .line 30
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->a:Lcom/ss/android/socialbase/downloader/downloader/n;

    if-nez v0, :cond_0

    return-void

    .line 31
    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/n;->b(ILjava/util/List;)V

    return-void
.end method

.method public a(IZ)V
    .locals 1

    .line 21
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->c()Lcom/ss/android/socialbase/downloader/downloader/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/c;->b(IZ)V

    return-void
.end method

.method public a(Lc/d/a/b/a/c/g;)V
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->a:Lcom/ss/android/socialbase/downloader/downloader/n;

    if-nez v0, :cond_0

    return-void

    .line 33
    :cond_0
    invoke-static {p1}, Lc/d/a/b/a/j/e;->a(Lc/d/a/b/a/c/g;)Lc/d/a/b/a/c/h;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/n;->a(Lc/d/a/b/a/c/h;)V

    return-void
.end method

.method public a(Lc/d/a/b/a/f/a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->a:Lcom/ss/android/socialbase/downloader/downloader/n;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {p1}, Lc/d/a/b/a/j/e;->a(Lc/d/a/b/a/f/a;)Lc/d/a/b/a/f/d;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/n;->a(Lc/d/a/b/a/f/d;)V

    return-void
.end method

.method public a(Lc/d/a/b/a/f/b;)V
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->a:Lcom/ss/android/socialbase/downloader/downloader/n;

    if-nez v0, :cond_0

    return-void

    .line 23
    :cond_0
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/n;->a(Lc/d/a/b/a/f/b;)V

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

    .line 11
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->a:Lcom/ss/android/socialbase/downloader/downloader/n;

    if-nez v0, :cond_0

    return-void

    .line 12
    :cond_0
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/n;->a(Ljava/util/List;)V

    return-void
.end method

.method public a(Z)V
    .locals 2

    .line 19
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->a:Lcom/ss/android/socialbase/downloader/downloader/n;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 20
    invoke-interface {v0, v1, p1}, Lcom/ss/android/socialbase/downloader/downloader/n;->a(ZZ)V

    return-void
.end method

.method public a(Lc/d/a/b/a/f/c;)Z
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->a:Lcom/ss/android/socialbase/downloader/downloader/n;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 16
    :cond_0
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/n;->a(Lc/d/a/b/a/f/c;)Z

    move-result p1

    return p1
.end method

.method public b(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->a:Lcom/ss/android/socialbase/downloader/downloader/n;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/n;->b(I)I

    move-result p1

    return p1
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Lc/d/a/b/a/f/c;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->a:Lcom/ss/android/socialbase/downloader/downloader/n;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 4
    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/n;->b(Ljava/lang/String;Ljava/lang/String;)Lc/d/a/b/a/f/c;

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

    .line 5
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->a:Lcom/ss/android/socialbase/downloader/downloader/n;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 6
    :cond_0
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/n;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public b(IILc/d/a/b/a/c/p;IZ)V
    .locals 6

    .line 7
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->a:Lcom/ss/android/socialbase/downloader/downloader/n;

    if-nez v0, :cond_0

    return-void

    .line 8
    :cond_0
    invoke-static {p3}, Lc/d/a/b/a/j/e;->a(Lc/d/a/b/a/c/p;)Lc/d/a/b/a/c/d0;

    move-result-object v3

    invoke-static {p4}, Lc/d/a/b/a/j/d;->d(I)Lc/d/a/b/a/a/h;

    move-result-object v4

    move v1, p1

    move v2, p2

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/ss/android/socialbase/downloader/downloader/n;->a(IILc/d/a/b/a/c/d0;Lc/d/a/b/a/a/h;Z)V

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

    .line 13
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->a:Lcom/ss/android/socialbase/downloader/downloader/n;

    if-nez v0, :cond_0

    return-void

    .line 14
    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/n;->a(ILjava/util/List;)V

    return-void
.end method

.method public b()Z
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->a:Lcom/ss/android/socialbase/downloader/downloader/n;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 10
    :cond_0
    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/downloader/n;->b()Z

    move-result v0

    return v0
.end method

.method public b(Lc/d/a/b/a/f/c;)Z
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->a:Lcom/ss/android/socialbase/downloader/downloader/n;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 12
    :cond_0
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/n;->c(Lc/d/a/b/a/f/c;)Z

    move-result p1

    return p1
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

    .line 3
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->a:Lcom/ss/android/socialbase/downloader/downloader/n;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 4
    :cond_0
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/n;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public c()Z
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->a:Lcom/ss/android/socialbase/downloader/downloader/n;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 6
    :cond_0
    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/downloader/n;->d()Z

    move-result v0

    return v0
.end method

.method public c(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->a:Lcom/ss/android/socialbase/downloader/downloader/n;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/n;->c(I)Z

    move-result p1

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

    .line 3
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->a:Lcom/ss/android/socialbase/downloader/downloader/n;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 4
    :cond_0
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/n;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public d()V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->a:Lcom/ss/android/socialbase/downloader/downloader/n;

    if-nez v0, :cond_0

    return-void

    .line 6
    :cond_0
    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/downloader/n;->e()V

    return-void
.end method

.method public d(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->a:Lcom/ss/android/socialbase/downloader/downloader/n;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/n;->d(I)V

    return-void
.end method

.method public e(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->a:Lcom/ss/android/socialbase/downloader/downloader/n;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/n;->e(I)Z

    move-result p1

    return p1
.end method

.method public f(I)J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->a:Lcom/ss/android/socialbase/downloader/downloader/n;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 2
    :cond_0
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/n;->f(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public g(I)Lc/d/a/b/a/f/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->a:Lcom/ss/android/socialbase/downloader/downloader/n;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/n;->g(I)Lc/d/a/b/a/f/c;

    move-result-object p1

    return-object p1
.end method

.method public h(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->a:Lcom/ss/android/socialbase/downloader/downloader/n;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/n;->h(I)V

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
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->a:Lcom/ss/android/socialbase/downloader/downloader/n;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/n;->i(I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public j(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->a:Lcom/ss/android/socialbase/downloader/downloader/n;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/n;->j(I)V

    return-void
.end method

.method public k(I)Lc/d/a/b/a/c/f0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->a:Lcom/ss/android/socialbase/downloader/downloader/n;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/n;->k(I)Lc/d/a/b/a/c/g0;

    move-result-object p1

    invoke-static {p1}, Lc/d/a/b/a/j/e;->a(Lc/d/a/b/a/c/g0;)Lc/d/a/b/a/c/f0;

    move-result-object p1

    return-object p1
.end method

.method public l(I)I
    .locals 1

    .line 1
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->c()Lcom/ss/android/socialbase/downloader/downloader/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/c;->b(I)I

    move-result p1

    return p1
.end method

.method public m(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->a:Lcom/ss/android/socialbase/downloader/downloader/n;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/n;->m(I)V

    return-void
.end method

.method public n(I)Lc/d/a/b/a/c/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->a:Lcom/ss/android/socialbase/downloader/downloader/n;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/n;->n(I)Lc/d/a/b/a/c/d;

    move-result-object p1

    invoke-static {p1}, Lc/d/a/b/a/j/e;->a(Lc/d/a/b/a/c/d;)Lc/d/a/b/a/c/c;

    move-result-object p1

    return-object p1
.end method

.method public o(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->a:Lcom/ss/android/socialbase/downloader/downloader/n;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/n;->o(I)Z

    move-result p1

    return p1
.end method

.method public p(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->a:Lcom/ss/android/socialbase/downloader/downloader/n;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/n;->p(I)V

    return-void
.end method

.method public q(I)Lc/d/a/b/a/c/n;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->a:Lcom/ss/android/socialbase/downloader/downloader/n;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/n;->q(I)Lc/d/a/b/a/c/x;

    move-result-object p1

    invoke-static {p1}, Lc/d/a/b/a/j/e;->a(Lc/d/a/b/a/c/x;)Lc/d/a/b/a/c/n;

    move-result-object p1

    return-object p1
.end method

.method public r(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->a:Lcom/ss/android/socialbase/downloader/downloader/n;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/n;->r(I)V

    return-void
.end method

.method public s(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->a:Lcom/ss/android/socialbase/downloader/downloader/n;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/n;->u(I)Z

    move-result p1

    return p1
.end method

.method public t(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->a:Lcom/ss/android/socialbase/downloader/downloader/n;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/n;->t(I)Z

    move-result p1

    return p1
.end method

.method public u(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/m;->a:Lcom/ss/android/socialbase/downloader/downloader/n;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/n;->s(I)V

    return-void
.end method
