.class Lcom/ss/android/socialbase/downloader/impls/g$a;
.super Ljava/lang/Object;
.source "DefaultDownloadHttpService.java"

# interfaces
.implements Lc/d/a/b/a/h/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/impls/g;->a(ILjava/lang/String;Ljava/util/List;)Lc/d/a/b/a/h/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/io/InputStream;

.field final synthetic b:Ld/a0;

.field final synthetic c:Ld/e;

.field final synthetic d:Ld/b0;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/downloader/impls/g;Ljava/io/InputStream;Ld/a0;Ld/e;Ld/b0;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/ss/android/socialbase/downloader/impls/g$a;->a:Ljava/io/InputStream;

    iput-object p3, p0, Lcom/ss/android/socialbase/downloader/impls/g$a;->b:Ld/a0;

    iput-object p4, p0, Lcom/ss/android/socialbase/downloader/impls/g$a;->c:Ld/e;

    iput-object p5, p0, Lcom/ss/android/socialbase/downloader/impls/g$a;->d:Ld/b0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/io/InputStream;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/g$a;->a:Ljava/io/InputStream;

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/g$a;->b:Ld/a0;

    invoke-virtual {v0, p1}, Ld/a0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/g$a;->b:Ld/a0;

    invoke-virtual {v0}, Ld/a0;->l()I

    move-result v0

    return v0
.end method

.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/g$a;->c:Ld/e;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ld/e;->k()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/g$a;->c:Ld/e;

    invoke-interface {v0}, Ld/e;->cancel()V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/g$a;->d:Ld/b0;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/g$a;->d:Ld/b0;

    invoke-virtual {v0}, Ld/b0;->close()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/g$a;->c:Ld/e;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/g$a;->c:Ld/e;

    invoke-interface {v0}, Ld/e;->k()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/g$a;->c:Ld/e;

    invoke-interface {v0}, Ld/e;->cancel()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    return-void
.end method
