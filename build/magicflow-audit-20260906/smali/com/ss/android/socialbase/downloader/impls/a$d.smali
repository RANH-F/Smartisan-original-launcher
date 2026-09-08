.class Lcom/ss/android/socialbase/downloader/impls/a$d;
.super Ljava/lang/Object;
.source "AbsDownloadEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/downloader/impls/a;->b(IILc/d/a/b/a/c/d0;Lc/d/a/b/a/a/h;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lc/d/a/b/a/f/c;

.field final synthetic b:Lc/d/a/b/a/c/d0;


# direct methods
.method constructor <init>(Lcom/ss/android/socialbase/downloader/impls/a;Lc/d/a/b/a/f/c;Lc/d/a/b/a/c/d0;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/ss/android/socialbase/downloader/impls/a$d;->a:Lc/d/a/b/a/f/c;

    iput-object p3, p0, Lcom/ss/android/socialbase/downloader/impls/a$d;->b:Lc/d/a/b/a/c/d0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a$d;->a:Lc/d/a/b/a/f/c;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/impls/a$d;->b:Lc/d/a/b/a/c/d0;

    if-eqz v1, :cond_1

    .line 2
    invoke-virtual {v0}, Lc/d/a/b/a/f/c;->A0()I

    move-result v0

    const/4 v1, -0x3

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a$d;->b:Lc/d/a/b/a/c/d0;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/impls/a$d;->a:Lc/d/a/b/a/f/c;

    invoke-interface {v0, v1}, Lc/d/a/b/a/c/d0;->h(Lc/d/a/b/a/f/c;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a$d;->a:Lc/d/a/b/a/f/c;

    invoke-virtual {v0}, Lc/d/a/b/a/f/c;->A0()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 5
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/a$d;->b:Lc/d/a/b/a/c/d0;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/impls/a$d;->a:Lc/d/a/b/a/f/c;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lc/d/a/b/a/c/d0;->a(Lc/d/a/b/a/f/c;Lc/d/a/b/a/d/a;)V

    :cond_1
    :goto_0
    return-void
.end method
