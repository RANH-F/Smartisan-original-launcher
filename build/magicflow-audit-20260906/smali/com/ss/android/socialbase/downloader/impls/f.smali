.class public Lcom/ss/android/socialbase/downloader/impls/f;
.super Ljava/lang/Object;
.source "DefaultDownloadHeadHttpService.java"

# interfaces
.implements Lc/d/a/b/a/h/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/util/List;)Lc/d/a/b/a/h/c;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lc/d/a/b/a/f/e;",
            ">;)",
            "Lc/d/a/b/a/h/c;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->n()Ld/v;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2
    new-instance v1, Ld/y$a;

    invoke-direct {v1}, Ld/y$a;-><init>()V

    invoke-virtual {v1, p1}, Ld/y$a;->b(Ljava/lang/String;)Ld/y$a;

    invoke-virtual {v1}, Ld/y$a;->d()Ld/y$a;

    if-eqz p2, :cond_0

    .line 3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 4
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lc/d/a/b/a/f/e;

    .line 5
    invoke-virtual {p2}, Lc/d/a/b/a/f/e;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lc/d/a/b/a/f/e;->b()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lc/d/a/b/a/j/d;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, v2, p2}, Ld/y$a;->a(Ljava/lang/String;Ljava/lang/String;)Ld/y$a;

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v1}, Ld/y$a;->a()Ld/y;

    move-result-object p1

    .line 7
    invoke-virtual {v0, p1}, Ld/v;->a(Ld/y;)Ld/e;

    move-result-object p1

    .line 8
    invoke-interface {p1}, Ld/e;->j()Ld/a0;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 9
    new-instance v0, Lcom/ss/android/socialbase/downloader/impls/f$a;

    invoke-direct {v0, p0, p2, p1}, Lcom/ss/android/socialbase/downloader/impls/f$a;-><init>(Lcom/ss/android/socialbase/downloader/impls/f;Ld/a0;Ld/e;)V

    return-object v0

    .line 10
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "can\'t get response"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string p2, "can\'t get httpClient"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
