.class public Lcom/ss/android/socialbase/downloader/impls/p;
.super Ljava/lang/Object;
.source "ProcessDownloadHandler.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/downloader/n;


# instance fields
.field private final a:Lcom/ss/android/socialbase/downloader/impls/a;

.field private final b:Lcom/ss/android/socialbase/downloader/downloader/k;

.field private final c:Lcom/ss/android/socialbase/downloader/downloader/p;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/ss/android/socialbase/downloader/impls/p;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->t()Lcom/ss/android/socialbase/downloader/impls/a;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->a:Lcom/ss/android/socialbase/downloader/impls/a;

    .line 4
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->p()Lcom/ss/android/socialbase/downloader/downloader/k;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->b:Lcom/ss/android/socialbase/downloader/downloader/k;

    if-nez p1, :cond_0

    .line 5
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->q()Lcom/ss/android/socialbase/downloader/downloader/p;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/impls/p;->c:Lcom/ss/android/socialbase/downloader/downloader/p;

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->r()Lcom/ss/android/socialbase/downloader/downloader/p;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/impls/p;->c:Lcom/ss/android/socialbase/downloader/downloader/p;

    :goto_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 9
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

    .line 5
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->b:Lcom/ss/android/socialbase/downloader/downloader/k;

    if-eqz v0, :cond_0

    .line 6
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/k;->a(Ljava/lang/String;)Ljava/util/List;

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public a()V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->a:Lcom/ss/android/socialbase/downloader/impls/a;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/impls/a;->b()V

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->a:Lcom/ss/android/socialbase/downloader/impls/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/impls/a;->f(I)Z

    :cond_0
    return-void
.end method

.method public a(II)V
    .locals 2

    .line 27
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->e()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 28
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 29
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 30
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/d/a/b/a/c/h;

    if-eqz v1, :cond_0

    .line 31
    invoke-interface {v1, p2, p1}, Lc/d/a/b/a/c/h;->a(II)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public a(IIII)V
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->b:Lcom/ss/android/socialbase/downloader/downloader/k;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/ss/android/socialbase/downloader/downloader/k;->a(IIII)V

    return-void
.end method

.method public a(IIIJ)V
    .locals 6

    .line 23
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->b:Lcom/ss/android/socialbase/downloader/downloader/k;

    move v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/ss/android/socialbase/downloader/downloader/k;->a(IIIJ)V

    return-void
.end method

.method public a(IIJ)V
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->b:Lcom/ss/android/socialbase/downloader/downloader/k;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/ss/android/socialbase/downloader/downloader/k;->a(IIJ)V

    return-void
.end method

.method public a(IILc/d/a/b/a/c/d0;Lc/d/a/b/a/a/h;Z)V
    .locals 6

    .line 10
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->a:Lcom/ss/android/socialbase/downloader/impls/a;

    if-eqz v0, :cond_0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 11
    invoke-virtual/range {v0 .. v5}, Lcom/ss/android/socialbase/downloader/impls/a;->a(IILc/d/a/b/a/c/d0;Lc/d/a/b/a/a/h;Z)V

    :cond_0
    return-void
.end method

.method public a(ILandroid/app/Notification;)V
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->c:Lcom/ss/android/socialbase/downloader/downloader/p;

    if-eqz v0, :cond_0

    .line 15
    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/p;->a(ILandroid/app/Notification;)V

    :cond_0
    return-void
.end method

.method public a(ILc/d/a/b/a/c/g0;)V
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->a:Lcom/ss/android/socialbase/downloader/impls/a;

    if-eqz v0, :cond_0

    .line 33
    invoke-virtual {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/impls/a;->a(ILc/d/a/b/a/c/g0;)V

    :cond_0
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

    .line 25
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->b:Lcom/ss/android/socialbase/downloader/downloader/k;

    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/k;->a(ILjava/util/List;)V

    return-void
.end method

.method public a(IZ)V
    .locals 1

    .line 20
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->c()Lcom/ss/android/socialbase/downloader/downloader/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/c;->a(IZ)V

    return-void
.end method

.method public a(Lc/d/a/b/a/c/h;)V
    .locals 0

    .line 26
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/downloader/b;->a(Lc/d/a/b/a/c/h;)V

    return-void
.end method

.method public a(Lc/d/a/b/a/f/b;)V
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->b:Lcom/ss/android/socialbase/downloader/downloader/k;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/k;->a(Lc/d/a/b/a/f/b;)V

    return-void
.end method

.method public a(Lc/d/a/b/a/f/d;)V
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->c:Lcom/ss/android/socialbase/downloader/downloader/p;

    if-eqz v0, :cond_0

    .line 19
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/p;->b(Lc/d/a/b/a/f/d;)V

    :cond_0
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

    .line 7
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->a:Lcom/ss/android/socialbase/downloader/impls/a;

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/impls/a;->a(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public a(ZZ)V
    .locals 0

    .line 16
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/impls/p;->c:Lcom/ss/android/socialbase/downloader/downloader/p;

    if-eqz p1, :cond_0

    .line 17
    invoke-interface {p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/p;->a(Z)V

    :cond_0
    return-void
.end method

.method public a(Lc/d/a/b/a/f/c;)Z
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 12
    :cond_0
    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->A0()I

    move-result v0

    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->u0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->r0()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lc/d/a/b/a/j/d;->a(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 13
    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->q0()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/p;->m(I)V

    :cond_1
    return v0
.end method

.method public b(I)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->a:Lcom/ss/android/socialbase/downloader/impls/a;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/impls/a;->e(I)Lc/d/a/b/a/f/c;

    move-result-object p1

    if-nez p1, :cond_1

    return v1

    .line 3
    :cond_1
    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->A0()I

    move-result p1

    return p1
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Lc/d/a/b/a/f/c;
    .locals 0

    .line 4
    invoke-static {p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 5
    invoke-virtual {p0, p1}, Lcom/ss/android/socialbase/downloader/impls/p;->g(I)Lc/d/a/b/a/f/c;

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
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->b:Lcom/ss/android/socialbase/downloader/downloader/k;

    if-eqz v0, :cond_0

    .line 7
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/k;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public b(IILc/d/a/b/a/c/d0;Lc/d/a/b/a/a/h;Z)V
    .locals 6

    .line 8
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->a:Lcom/ss/android/socialbase/downloader/impls/a;

    if-eqz v0, :cond_0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 9
    invoke-virtual/range {v0 .. v5}, Lcom/ss/android/socialbase/downloader/impls/a;->b(IILc/d/a/b/a/c/d0;Lc/d/a/b/a/a/h;Z)V

    :cond_0
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

    .line 15
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->b:Lcom/ss/android/socialbase/downloader/downloader/k;

    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/k;->b(ILjava/util/List;)V

    return-void
.end method

.method public b(Lc/d/a/b/a/f/c;)V
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->b:Lcom/ss/android/socialbase/downloader/downloader/k;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/k;->b(Lc/d/a/b/a/f/c;)V

    return-void
.end method

.method public b(Lc/d/a/b/a/f/d;)V
    .locals 5

    .line 11
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->c:Lcom/ss/android/socialbase/downloader/downloader/p;

    if-eqz v0, :cond_0

    .line 12
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/p;->a(Lc/d/a/b/a/f/d;)V

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_2

    .line 13
    invoke-virtual {p1}, Lc/d/a/b/a/f/d;->e()Lc/d/a/b/a/c/e0;

    move-result-object v0

    invoke-virtual {p1}, Lc/d/a/b/a/f/d;->a()Lc/d/a/b/a/f/c;

    move-result-object v1

    new-instance v2, Lc/d/a/b/a/d/a;

    const/16 v3, 0x3eb

    const-string v4, "downloadServiceHandler is null"

    invoke-direct {v2, v3, v4}, Lc/d/a/b/a/d/a;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1}, Lc/d/a/b/a/f/d;->a()Lc/d/a/b/a/f/c;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Lc/d/a/b/a/f/d;->a()Lc/d/a/b/a/f/c;

    move-result-object p1

    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->A0()I

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-static {v0, v1, v2, p1}, Lc/d/a/b/a/g/a;->a(Lc/d/a/b/a/c/e0;Lc/d/a/b/a/f/c;Lc/d/a/b/a/d/a;I)V

    :cond_2
    :goto_1
    return-void
.end method

.method public b()Z
    .locals 1

    .line 10
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

    .line 3
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->b:Lcom/ss/android/socialbase/downloader/downloader/k;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/k;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public c(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->a:Lcom/ss/android/socialbase/downloader/impls/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/impls/a;->q(I)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public c(Lc/d/a/b/a/f/c;)Z
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->b:Lcom/ss/android/socialbase/downloader/downloader/k;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/k;->a(Lc/d/a/b/a/f/c;)Z

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
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->a:Lcom/ss/android/socialbase/downloader/impls/a;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/impls/a;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public d(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->a:Lcom/ss/android/socialbase/downloader/impls/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/impls/a;->h(I)Z

    :cond_0
    return-void
.end method

.method public d()Z
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->b:Lcom/ss/android/socialbase/downloader/downloader/k;

    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/downloader/k;->c()Z

    move-result v0

    return v0
.end method

.method public e()V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->b:Lcom/ss/android/socialbase/downloader/downloader/k;

    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/downloader/k;->b()V

    return-void
.end method

.method public e(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->a:Lcom/ss/android/socialbase/downloader/impls/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/impls/a;->a(I)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public f(I)J
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->b:Lcom/ss/android/socialbase/downloader/downloader/k;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    .line 2
    :cond_0
    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/k;->c(I)Lc/d/a/b/a/f/c;

    move-result-object v0

    if-nez v0, :cond_1

    return-wide v1

    .line 3
    :cond_1
    invoke-virtual {v0}, Lc/d/a/b/a/f/c;->K()I

    move-result v3

    const/4 v4, 0x1

    if-gt v3, v4, :cond_2

    .line 4
    invoke-virtual {v0}, Lc/d/a/b/a/f/c;->q()J

    move-result-wide v0

    return-wide v0

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->b:Lcom/ss/android/socialbase/downloader/downloader/k;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/k;->d(I)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eq v0, v3, :cond_3

    goto :goto_0

    .line 7
    :cond_3
    invoke-static {p1}, Lc/d/a/b/a/j/d;->b(Ljava/util/List;)J

    move-result-wide v0

    return-wide v0

    :cond_4
    :goto_0
    return-wide v1
.end method

.method public f()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public g(I)Lc/d/a/b/a/f/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->a:Lcom/ss/android/socialbase/downloader/impls/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/impls/a;->e(I)Lc/d/a/b/a/f/c;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public h(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->a:Lcom/ss/android/socialbase/downloader/impls/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/impls/a;->i(I)Z

    :cond_0
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
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->b:Lcom/ss/android/socialbase/downloader/downloader/k;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/k;->d(I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public j(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->a:Lcom/ss/android/socialbase/downloader/impls/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/impls/a;->g(I)Z

    :cond_0
    return-void
.end method

.method public k(I)Lc/d/a/b/a/c/g0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->a:Lcom/ss/android/socialbase/downloader/impls/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/impls/a;->k(I)Lc/d/a/b/a/c/g0;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public l(I)I
    .locals 1

    .line 1
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->c()Lcom/ss/android/socialbase/downloader/downloader/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/c;->a(I)I

    move-result p1

    return p1
.end method

.method public m(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->a:Lcom/ss/android/socialbase/downloader/impls/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/impls/a;->o(I)V

    :cond_0
    return-void
.end method

.method public n(I)Lc/d/a/b/a/c/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->a:Lcom/ss/android/socialbase/downloader/impls/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/impls/a;->j(I)Lc/d/a/b/a/c/d;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public o(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->b:Lcom/ss/android/socialbase/downloader/downloader/k;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/k;->f(I)Z

    move-result p1

    return p1
.end method

.method public p(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->a:Lcom/ss/android/socialbase/downloader/impls/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/impls/a;->p(I)V

    :cond_0
    return-void
.end method

.method public q(I)Lc/d/a/b/a/c/x;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->a:Lcom/ss/android/socialbase/downloader/impls/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/impls/a;->l(I)Lc/d/a/b/a/c/x;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public r(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->b:Lcom/ss/android/socialbase/downloader/downloader/k;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/k;->h(I)V

    return-void
.end method

.method public s(I)V
    .locals 0

    .line 1
    invoke-static {p1}, Lc/d/a/b/a/e/a;->a(I)V

    return-void
.end method

.method public t(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->b:Lcom/ss/android/socialbase/downloader/downloader/k;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/k;->b(I)Z

    move-result p1

    return p1
.end method

.method public u(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->a:Lcom/ss/android/socialbase/downloader/impls/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/impls/a;->m(I)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
