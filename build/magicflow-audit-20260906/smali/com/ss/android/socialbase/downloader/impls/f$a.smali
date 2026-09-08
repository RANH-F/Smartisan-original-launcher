.class Lcom/ss/android/socialbase/downloader/impls/f$a;
.super Ljava/lang/Object;
.source "DefaultDownloadHeadHttpService.java"

# interfaces
.implements Lc/d/a/b/a/h/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/impls/f;->a(Ljava/lang/String;Ljava/util/List;)Lc/d/a/b/a/h/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ld/a0;

.field final synthetic b:Ld/e;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/downloader/impls/f;Ld/a0;Ld/e;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/ss/android/socialbase/downloader/impls/f$a;->a:Ld/a0;

    iput-object p3, p0, Lcom/ss/android/socialbase/downloader/impls/f$a;->b:Ld/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/f$a;->a:Ld/a0;

    invoke-virtual {v0, p1}, Ld/a0;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/f$a;->a:Ld/a0;

    invoke-virtual {v0}, Ld/a0;->l()I

    move-result v0

    return v0
.end method

.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/f$a;->b:Ld/e;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ld/e;->k()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/f$a;->b:Ld/e;

    invoke-interface {v0}, Ld/e;->cancel()V

    :cond_0
    return-void
.end method
