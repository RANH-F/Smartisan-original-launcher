.class public Lcom/ss/android/socialbase/downloader/downloader/g;
.super Ljava/lang/Object;
.source "DownloaderBuilder.java"


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Lcom/ss/android/socialbase/downloader/downloader/k;

.field private c:Lcom/ss/android/socialbase/downloader/downloader/l;

.field private d:I

.field private e:Lcom/ss/android/socialbase/downloader/downloader/i;

.field private f:Lc/d/a/b/a/h/f;

.field private g:Lc/d/a/b/a/h/d;

.field private h:Lcom/ss/android/socialbase/downloader/downloader/m;

.field private i:Ljava/util/concurrent/ExecutorService;

.field private j:Ljava/util/concurrent/ExecutorService;

.field private k:Ljava/util/concurrent/ExecutorService;

.field private l:I

.field private m:Lcom/ss/android/socialbase/downloader/downloader/h;

.field private n:Z

.field private o:Lcom/ss/android/socialbase/downloader/downloader/q;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/downloader/g;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a()Landroid/content/Context;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/g;->a:Landroid/content/Context;

    return-object v0
.end method

.method public a(Lc/d/a/b/a/h/f;)Lcom/ss/android/socialbase/downloader/downloader/g;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/downloader/g;->f:Lc/d/a/b/a/h/f;

    return-object p0
.end method

.method public b()Lcom/ss/android/socialbase/downloader/downloader/k;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/g;->b:Lcom/ss/android/socialbase/downloader/downloader/k;

    return-object v0
.end method

.method public c()Lcom/ss/android/socialbase/downloader/downloader/l;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/g;->c:Lcom/ss/android/socialbase/downloader/downloader/l;

    return-object v0
.end method

.method public d()Lc/d/a/b/a/h/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/g;->f:Lc/d/a/b/a/h/f;

    return-object v0
.end method

.method public e()Lc/d/a/b/a/h/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/g;->g:Lc/d/a/b/a/h/d;

    return-object v0
.end method

.method public f()Lcom/ss/android/socialbase/downloader/downloader/m;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/g;->h:Lcom/ss/android/socialbase/downloader/downloader/m;

    return-object v0
.end method

.method public g()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/g;->i:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public h()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/g;->j:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public i()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/g;->k:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public j()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/android/socialbase/downloader/downloader/g;->d:I

    return v0
.end method

.method public k()Lcom/ss/android/socialbase/downloader/downloader/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/g;->e:Lcom/ss/android/socialbase/downloader/downloader/i;

    return-object v0
.end method

.method public l()Lcom/ss/android/socialbase/downloader/downloader/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/g;->m:Lcom/ss/android/socialbase/downloader/downloader/h;

    return-object v0
.end method

.method public m()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/android/socialbase/downloader/downloader/g;->l:I

    return v0
.end method

.method public n()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/downloader/g;->n:Z

    return v0
.end method

.method public o()Lcom/ss/android/socialbase/downloader/downloader/q;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/g;->o:Lcom/ss/android/socialbase/downloader/downloader/q;

    return-object v0
.end method

.method public p()Lcom/ss/android/socialbase/downloader/downloader/f;
    .locals 1

    .line 1
    new-instance v0, Lcom/ss/android/socialbase/downloader/downloader/f;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/downloader/f;-><init>(Lcom/ss/android/socialbase/downloader/downloader/g;)V

    return-object v0
.end method
