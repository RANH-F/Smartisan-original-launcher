.class public Lcom/ss/android/socialbase/downloader/impls/g;
.super Ljava/lang/Object;
.source "DefaultDownloadHttpService.java"

# interfaces
.implements Lc/d/a/b/a/h/f;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Ljava/util/List;)Lc/d/a/b/a/h/e;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lc/d/a/b/a/f/e;",
            ">;)",
            "Lc/d/a/b/a/h/e;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->n()Ld/v;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 2
    new-instance v0, Ld/y$a;

    invoke-direct {v0}, Ld/y$a;-><init>()V

    invoke-virtual {v0, p2}, Ld/y$a;->b(Ljava/lang/String;)Ld/y$a;

    if-eqz p3, :cond_0

    .line 3
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_0

    .line 4
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lc/d/a/b/a/f/e;

    .line 5
    invoke-virtual {p3}, Lc/d/a/b/a/f/e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lc/d/a/b/a/f/e;->b()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lc/d/a/b/a/j/d;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v1, p3}, Ld/y$a;->a(Ljava/lang/String;Ljava/lang/String;)Ld/y$a;

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0}, Ld/y$a;->a()Ld/y;

    move-result-object p2

    .line 7
    invoke-virtual {p1, p2}, Ld/v;->a(Ld/y;)Ld/e;

    move-result-object v4

    .line 8
    invoke-interface {v4}, Ld/e;->j()Ld/a0;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 9
    invoke-virtual {v3}, Ld/a0;->j()Ld/b0;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 10
    invoke-virtual {v5}, Ld/b0;->j()Ljava/io/InputStream;

    move-result-object p1

    const-string p2, "Content-Encoding"

    .line 11
    invoke-virtual {v3, p2}, Ld/a0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    const-string p3, "gzip"

    .line 12
    invoke-virtual {p3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    instance-of p2, p1, Ljava/util/zip/GZIPInputStream;

    if-nez p2, :cond_1

    .line 13
    new-instance p2, Ljava/util/zip/GZIPInputStream;

    invoke-direct {p2, p1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v2, p2

    goto :goto_1

    :cond_1
    move-object v2, p1

    .line 14
    :goto_1
    new-instance p1, Lcom/ss/android/socialbase/downloader/impls/g$a;

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/ss/android/socialbase/downloader/impls/g$a;-><init>(Lcom/ss/android/socialbase/downloader/impls/g;Ljava/io/InputStream;Ld/a0;Ld/e;Ld/b0;)V

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1

    .line 15
    :cond_3
    new-instance p1, Ljava/io/IOException;

    const-string p2, "can\'t get response"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 16
    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string p2, "can\'t get httpClient"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
