.class public Lc/d/a/b/a/i/c;
.super Ljava/lang/Object;
.source "DownloadRunnable.java"

# interfaces
.implements Lc/d/a/b/a/i/e;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc/d/a/b/a/i/c$c;
    }
.end annotation


# static fields
.field private static final D:Ljava/lang/String;


# instance fields
.field private A:Z

.field private B:Z

.field private C:Ljava/lang/String;

.field private final a:Lc/d/a/b/a/f/d;

.field private volatile b:Z

.field private c:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lc/d/a/b/a/i/b;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/ss/android/socialbase/downloader/downloader/d;

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private final k:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile l:Lc/d/a/b/a/a/k;

.field private final m:Lcom/ss/android/socialbase/downloader/downloader/k;

.field private n:Lc/d/a/b/a/f/c;

.field private final o:Lcom/ss/android/socialbase/downloader/downloader/i;

.field private final p:Lcom/ss/android/socialbase/downloader/downloader/h;

.field private q:Lcom/ss/android/socialbase/downloader/downloader/r;

.field private final r:Lcom/ss/android/socialbase/downloader/downloader/e;

.field private s:Landroid/app/AlarmManager;

.field private volatile t:Lc/d/a/b/a/d/a;

.field private u:Lcom/ss/android/socialbase/downloader/downloader/i;

.field private v:Lc/d/a/b/a/h/e;

.field private w:Lc/d/a/b/a/h/c;

.field private x:Lc/d/a/b/a/c/b0;

.field private y:Lc/d/a/b/a/c/w;

.field private volatile z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lc/d/a/b/a/i/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lc/d/a/b/a/i/c;->D:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lc/d/a/b/a/f/d;Landroid/os/Handler;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lc/d/a/b/a/i/c;->b:Z

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lc/d/a/b/a/i/c;->d:Ljava/util/ArrayList;

    .line 4
    sget-object v1, Lc/d/a/b/a/a/k;->a:Lc/d/a/b/a/a/k;

    iput-object v1, p0, Lc/d/a/b/a/i/c;->l:Lc/d/a/b/a/a/k;

    const/4 v1, 0x5

    .line 5
    iput v1, p0, Lc/d/a/b/a/i/c;->z:I

    .line 6
    iput-boolean v0, p0, Lc/d/a/b/a/i/c;->A:Z

    .line 7
    iput-boolean v0, p0, Lc/d/a/b/a/i/c;->B:Z

    .line 8
    iput-object p1, p0, Lc/d/a/b/a/i/c;->a:Lc/d/a/b/a/f/d;

    if-eqz p1, :cond_1

    .line 9
    invoke-virtual {p1}, Lc/d/a/b/a/f/d;->a()Lc/d/a/b/a/f/c;

    move-result-object v0

    iput-object v0, p0, Lc/d/a/b/a/i/c;->n:Lc/d/a/b/a/f/c;

    .line 10
    invoke-virtual {p1}, Lc/d/a/b/a/f/d;->f()Lcom/ss/android/socialbase/downloader/downloader/i;

    move-result-object v0

    iput-object v0, p0, Lc/d/a/b/a/i/c;->u:Lcom/ss/android/socialbase/downloader/downloader/i;

    .line 11
    invoke-virtual {p1}, Lc/d/a/b/a/f/d;->h()Lc/d/a/b/a/c/b0;

    move-result-object v0

    iput-object v0, p0, Lc/d/a/b/a/i/c;->x:Lc/d/a/b/a/c/b0;

    .line 12
    invoke-virtual {p1}, Lc/d/a/b/a/f/d;->i()Lc/d/a/b/a/c/w;

    move-result-object v0

    iput-object v0, p0, Lc/d/a/b/a/i/c;->y:Lc/d/a/b/a/c/w;

    .line 13
    invoke-virtual {p1}, Lc/d/a/b/a/f/d;->g()Lcom/ss/android/socialbase/downloader/downloader/r;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 14
    invoke-virtual {p1}, Lc/d/a/b/a/f/d;->g()Lcom/ss/android/socialbase/downloader/downloader/r;

    move-result-object v0

    iput-object v0, p0, Lc/d/a/b/a/i/c;->q:Lcom/ss/android/socialbase/downloader/downloader/r;

    goto :goto_0

    .line 15
    :cond_0
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->x()Lcom/ss/android/socialbase/downloader/downloader/r;

    move-result-object v0

    iput-object v0, p0, Lc/d/a/b/a/i/c;->q:Lcom/ss/android/socialbase/downloader/downloader/r;

    .line 16
    :cond_1
    :goto_0
    invoke-direct {p0}, Lc/d/a/b/a/i/c;->i()V

    .line 17
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->p()Lcom/ss/android/socialbase/downloader/downloader/k;

    move-result-object v0

    iput-object v0, p0, Lc/d/a/b/a/i/c;->m:Lcom/ss/android/socialbase/downloader/downloader/k;

    .line 18
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->v()Lcom/ss/android/socialbase/downloader/downloader/i;

    move-result-object v0

    iput-object v0, p0, Lc/d/a/b/a/i/c;->o:Lcom/ss/android/socialbase/downloader/downloader/i;

    .line 19
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->w()Lcom/ss/android/socialbase/downloader/downloader/h;

    move-result-object v0

    iput-object v0, p0, Lc/d/a/b/a/i/c;->p:Lcom/ss/android/socialbase/downloader/downloader/h;

    .line 20
    new-instance v0, Lcom/ss/android/socialbase/downloader/downloader/e;

    invoke-direct {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/e;-><init>(Lc/d/a/b/a/f/d;Landroid/os/Handler;)V

    iput-object v0, p0, Lc/d/a/b/a/i/c;->r:Lcom/ss/android/socialbase/downloader/downloader/e;

    .line 21
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->i()Landroid/app/AlarmManager;

    move-result-object p1

    iput-object p1, p0, Lc/d/a/b/a/i/c;->s:Landroid/app/AlarmManager;

    .line 22
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lc/d/a/b/a/i/c;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method private A()V
    .locals 3

    .line 1
    iget-object v0, p0, Lc/d/a/b/a/i/c;->n:Lc/d/a/b/a/f/c;

    invoke-virtual {v0}, Lc/d/a/b/a/f/c;->u0()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 2
    iget-object v0, p0, Lc/d/a/b/a/i/c;->n:Lc/d/a/b/a/f/c;

    invoke-virtual {v0}, Lc/d/a/b/a/f/c;->r0()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 3
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lc/d/a/b/a/i/c;->n:Lc/d/a/b/a/f/c;

    invoke-virtual {v1}, Lc/d/a/b/a/f/c;->u0()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 5
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Lc/d/a/b/a/d/a;

    const/16 v1, 0x406

    const-string v2, "download savePath directory can not created"

    invoke-direct {v0, v1, v2}, Lc/d/a/b/a/d/a;-><init>(ILjava/lang/String;)V

    throw v0

    .line 7
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_0
    return-void

    .line 8
    :cond_2
    new-instance v0, Lc/d/a/b/a/d/a;

    const/16 v1, 0x407

    const-string v2, "download savePath is not a directory"

    invoke-direct {v0, v1, v2}, Lc/d/a/b/a/d/a;-><init>(ILjava/lang/String;)V

    throw v0

    .line 9
    :cond_3
    new-instance v0, Lc/d/a/b/a/d/a;

    const/16 v1, 0x405

    const-string v2, "download name can not be empty"

    invoke-direct {v0, v1, v2}, Lc/d/a/b/a/d/a;-><init>(ILjava/lang/String;)V

    throw v0

    .line 10
    :cond_4
    new-instance v0, Lc/d/a/b/a/d/a;

    const/16 v1, 0x404

    const-string v2, "download savePath can not be empty"

    invoke-direct {v0, v1, v2}, Lc/d/a/b/a/d/a;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method private B()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lc/d/a/b/a/i/c;->m:Lcom/ss/android/socialbase/downloader/downloader/k;

    iget-object v1, p0, Lc/d/a/b/a/i/c;->n:Lc/d/a/b/a/f/c;

    invoke-virtual {v1}, Lc/d/a/b/a/f/c;->q0()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/k;->h(I)V

    .line 2
    iget-object v0, p0, Lc/d/a/b/a/i/c;->n:Lc/d/a/b/a/f/c;

    invoke-static {v0}, Lc/d/a/b/a/j/d;->a(Lc/d/a/b/a/f/c;)V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lc/d/a/b/a/i/c;->g:Z

    .line 4
    iget-object v0, p0, Lc/d/a/b/a/i/c;->n:Lc/d/a/b/a/f/c;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lc/d/a/b/a/f/c;->f(Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lc/d/a/b/a/i/c;->m:Lcom/ss/android/socialbase/downloader/downloader/k;

    iget-object v1, p0, Lc/d/a/b/a/i/c;->n:Lc/d/a/b/a/f/c;

    invoke-interface {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/k;->a(Lc/d/a/b/a/f/c;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private a(JLjava/util/List;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Lc/d/a/b/a/f/b;",
            ">;)I"
        }
    .end annotation

    .line 13
    invoke-direct {p0}, Lc/d/a/b/a/i/c;->y()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 14
    iget-boolean v0, p0, Lc/d/a/b/a/i/c;->g:Z

    if-eqz v0, :cond_1

    if-eqz p3, :cond_0

    .line 15
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    goto :goto_1

    .line 16
    :cond_0
    iget-object p3, p0, Lc/d/a/b/a/i/c;->n:Lc/d/a/b/a/f/c;

    invoke-virtual {p3}, Lc/d/a/b/a/f/c;->K()I

    move-result p3

    goto :goto_1

    .line 17
    :cond_1
    iget-object p3, p0, Lc/d/a/b/a/i/c;->u:Lcom/ss/android/socialbase/downloader/downloader/i;

    if-eqz p3, :cond_2

    .line 18
    invoke-interface {p3, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/i;->a(J)I

    move-result p3

    goto :goto_0

    .line 19
    :cond_2
    iget-object p3, p0, Lc/d/a/b/a/i/c;->o:Lcom/ss/android/socialbase/downloader/downloader/i;

    invoke-interface {p3, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/i;->a(J)I

    move-result p3

    .line 20
    :goto_0
    invoke-static {}, Lc/d/a/b/a/h/g;->b()Lc/d/a/b/a/h/g;

    move-result-object v0

    invoke-virtual {v0}, Lc/d/a/b/a/h/g;->a()Lc/d/a/b/a/h/h;

    move-result-object v0

    .line 21
    sget-object v3, Lc/d/a/b/a/i/c;->D:Ljava/lang/String;

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    const-string v5, "NetworkQuality is : %s"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc/d/a/b/a/e/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    iget-object v3, p0, Lc/d/a/b/a/i/c;->n:Lc/d/a/b/a/f/c;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lc/d/a/b/a/f/c;->d(Ljava/lang/String;)V

    .line 23
    iget-object v3, p0, Lc/d/a/b/a/i/c;->p:Lcom/ss/android/socialbase/downloader/downloader/h;

    if-eqz v3, :cond_3

    .line 24
    invoke-interface {v3, p3, v0}, Lcom/ss/android/socialbase/downloader/downloader/h;->a(ILc/d/a/b/a/h/h;)I

    move-result p3

    :cond_3
    :goto_1
    if-gtz p3, :cond_5

    :cond_4
    move p3, v2

    .line 25
    :cond_5
    invoke-static {}, Lc/d/a/b/a/e/a;->a()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 26
    sget-object v0, Lc/d/a/b/a/i/c;->D:Ljava/lang/String;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    iget-object v1, p0, Lc/d/a/b/a/i/c;->n:Lc/d/a/b/a/f/c;

    invoke-virtual {v1}, Lc/d/a/b/a/f/c;->r0()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v2

    const/4 v1, 0x2

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v1

    const-string p1, "chunk count : %s for %s contentLen:%s"

    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lc/d/a/b/a/e/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    return p3
.end method

.method private a(Ljava/util/List;)J
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lc/d/a/b/a/f/b;",
            ">;)J"
        }
    .end annotation

    .line 41
    iget-boolean v0, p0, Lc/d/a/b/a/i/c;->g:Z

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 42
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-wide v3, v1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/d/a/b/a/f/b;

    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {v0}, Lc/d/a/b/a/f/b;->o()J

    move-result-wide v5

    invoke-virtual {v0}, Lc/d/a/b/a/f/b;->q()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-lez v5, :cond_1

    invoke-virtual {v0}, Lc/d/a/b/a/f/b;->q()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_0

    :cond_1
    cmp-long v5, v3, v1

    if-eqz v5, :cond_2

    .line 44
    invoke-virtual {v0}, Lc/d/a/b/a/f/b;->o()J

    move-result-wide v5

    cmp-long v5, v3, v5

    if-lez v5, :cond_0

    .line 45
    :cond_2
    invoke-virtual {v0}, Lc/d/a/b/a/f/b;->o()J

    move-result-wide v3

    goto :goto_0

    :cond_3
    move-wide v1, v3

    :cond_4
    return-wide v1
.end method

.method private a(Lc/d/a/b/a/f/b;I)Lc/d/a/b/a/f/b;
    .locals 8

    .line 224
    invoke-virtual {p1}, Lc/d/a/b/a/f/b;->e()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x1

    .line 225
    invoke-virtual {p1, v0}, Lc/d/a/b/a/f/b;->c(Z)J

    move-result-wide v2

    .line 226
    sget-object v4, Lc/d/a/b/a/i/c;->D:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "reuseChunk retainLen:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " chunkIndex:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lc/d/a/b/a/e/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 227
    invoke-virtual {p1}, Lc/d/a/b/a/f/b;->g()Z

    move-result v5

    if-nez v5, :cond_1

    sget-wide v5, Lc/d/a/b/a/a/e;->a:J

    cmp-long v2, v2, v5

    if-lez v2, :cond_1

    iget-object v2, p0, Lc/d/a/b/a/i/c;->n:Lc/d/a/b/a/f/c;

    invoke-virtual {v2}, Lc/d/a/b/a/f/c;->z0()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 228
    iget-object v2, p0, Lc/d/a/b/a/i/c;->n:Lc/d/a/b/a/f/c;

    invoke-virtual {v2}, Lc/d/a/b/a/f/c;->K()I

    move-result v2

    iget-object v3, p0, Lc/d/a/b/a/i/c;->n:Lc/d/a/b/a/f/c;

    invoke-virtual {v3}, Lc/d/a/b/a/f/c;->s()J

    move-result-wide v3

    invoke-virtual {p1, v2, v3, v4}, Lc/d/a/b/a/f/b;->a(IJ)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 229
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc/d/a/b/a/f/b;

    .line 230
    iget-object v4, p0, Lc/d/a/b/a/i/c;->m:Lcom/ss/android/socialbase/downloader/downloader/k;

    invoke-interface {v4, v3}, Lcom/ss/android/socialbase/downloader/downloader/k;->b(Lc/d/a/b/a/f/b;)V

    goto :goto_0

    .line 231
    :cond_1
    invoke-virtual {p1}, Lc/d/a/b/a/f/b;->g()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move v4, v0

    :cond_3
    if-eqz v4, :cond_7

    .line 232
    invoke-virtual {p1}, Lc/d/a/b/a/f/b;->g()Z

    move-result v2

    if-eqz v2, :cond_7

    move v2, v0

    .line 233
    :goto_1
    invoke-virtual {p1}, Lc/d/a/b/a/f/b;->h()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_6

    .line 234
    invoke-virtual {p1}, Lc/d/a/b/a/f/b;->h()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc/d/a/b/a/f/b;

    if-eqz v3, :cond_5

    .line 235
    sget-object v4, Lc/d/a/b/a/i/c;->D:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "check can checkUnCompletedChunk -- chunkIndex:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lc/d/a/b/a/f/b;->t()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " currentOffset:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lc/d/a/b/a/f/b;->o()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "  startOffset:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lc/d/a/b/a/f/b;->m()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " contentLen:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lc/d/a/b/a/f/b;->r()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lc/d/a/b/a/e/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    invoke-virtual {v3}, Lc/d/a/b/a/f/b;->t()I

    move-result v4

    if-ltz v4, :cond_4

    invoke-virtual {v3}, Lc/d/a/b/a/f/b;->j()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v3}, Lc/d/a/b/a/f/b;->c()Z

    move-result v4

    if-nez v4, :cond_5

    :cond_4
    move-object v1, v3

    goto :goto_2

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    :goto_2
    if-eqz v1, :cond_7

    .line 237
    invoke-virtual {p1}, Lc/d/a/b/a/f/b;->o()J

    move-result-wide v2

    .line 238
    sget-object v4, Lc/d/a/b/a/i/c;->D:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unComplete chunk "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lc/d/a/b/a/f/b;->t()I

    move-result p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " curOffset:"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " reuseChunk chunkIndex:"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " for subChunk:"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lc/d/a/b/a/f/b;->t()I

    move-result p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lc/d/a/b/a/e/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    iget-object p1, p0, Lc/d/a/b/a/i/c;->m:Lcom/ss/android/socialbase/downloader/downloader/k;

    invoke-virtual {v1}, Lc/d/a/b/a/f/b;->l()I

    move-result v2

    invoke-virtual {v1}, Lc/d/a/b/a/f/b;->t()I

    move-result v3

    invoke-virtual {v1}, Lc/d/a/b/a/f/b;->b()I

    move-result v4

    invoke-interface {p1, v2, v3, v4, p2}, Lcom/ss/android/socialbase/downloader/downloader/k;->a(IIII)V

    .line 240
    invoke-virtual {v1, p2}, Lc/d/a/b/a/f/b;->c(I)V

    .line 241
    invoke-virtual {v1, v0}, Lc/d/a/b/a/f/b;->a(Z)V

    :cond_7
    return-object v1
.end method

.method private a(Lc/d/a/b/a/f/b;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/d/a/b/a/f/b;",
            ")",
            "Ljava/util/List<",
            "Lc/d/a/b/a/f/e;",
            ">;"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lc/d/a/b/a/i/c;->n:Lc/d/a/b/a/f/c;

    invoke-virtual {v0}, Lc/d/a/b/a/f/c;->b()Ljava/util/List;

    move-result-object v0

    .line 40
    iget-object v1, p0, Lc/d/a/b/a/i/c;->n:Lc/d/a/b/a/f/c;

    invoke-virtual {v1}, Lc/d/a/b/a/f/c;->t()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lc/d/a/b/a/j/d;->a(Ljava/util/List;Ljava/lang/String;Lc/d/a/b/a/f/b;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private a(ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lc/d/a/b/a/f/b;",
            ">;)V"
        }
    .end annotation

    .line 46
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 47
    iget-object p1, p0, Lc/d/a/b/a/i/c;->n:Lc/d/a/b/a/f/c;

    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->s()J

    move-result-wide v0

    invoke-direct {p0, p2, v0, v1}, Lc/d/a/b/a/i/c;->a(Ljava/util/List;J)V

    return-void

    .line 48
    :cond_0
    new-instance p1, Lc/d/a/b/a/d/a;

    const/16 p2, 0x409

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    invoke-direct {p1, p2, v0}, Lc/d/a/b/a/d/a;-><init>(ILjava/lang/Throwable;)V

    throw p1
.end method

.method private a(JI)V
    .locals 17

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move/from16 v3, p3

    int-to-long v4, v3

    .line 49
    div-long v4, v1, v4

    .line 50
    iget-object v6, v0, Lc/d/a/b/a/i/c;->n:Lc/d/a/b/a/f/c;

    invoke-virtual {v6}, Lc/d/a/b/a/f/c;->q0()I

    move-result v6

    .line 51
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    move-wide v11, v8

    :goto_0
    if-ge v10, v3, :cond_1

    add-int/lit8 v13, v3, -0x1

    if-ne v10, v13, :cond_0

    move-wide v13, v8

    goto :goto_1

    :cond_0
    add-long v13, v11, v4

    const-wide/16 v15, 0x1

    sub-long/2addr v13, v15

    .line 52
    :goto_1
    new-instance v15, Lc/d/a/b/a/f/b$b;

    invoke-direct {v15, v6}, Lc/d/a/b/a/f/b$b;-><init>(I)V

    .line 53
    invoke-virtual {v15, v10}, Lc/d/a/b/a/f/b$b;->a(I)Lc/d/a/b/a/f/b$b;

    .line 54
    invoke-virtual {v15, v11, v12}, Lc/d/a/b/a/f/b$b;->a(J)Lc/d/a/b/a/f/b$b;

    .line 55
    invoke-virtual {v15, v11, v12}, Lc/d/a/b/a/f/b$b;->e(J)Lc/d/a/b/a/f/b$b;

    .line 56
    invoke-virtual {v15, v11, v12}, Lc/d/a/b/a/f/b$b;->b(J)Lc/d/a/b/a/f/b$b;

    .line 57
    invoke-virtual {v15, v13, v14}, Lc/d/a/b/a/f/b$b;->c(J)Lc/d/a/b/a/f/b$b;

    .line 58
    invoke-virtual {v15}, Lc/d/a/b/a/f/b$b;->a()Lc/d/a/b/a/f/b;

    move-result-object v13

    .line 59
    invoke-interface {v7, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    iget-object v14, v0, Lc/d/a/b/a/i/c;->m:Lcom/ss/android/socialbase/downloader/downloader/k;

    invoke-interface {v14, v13}, Lcom/ss/android/socialbase/downloader/downloader/k;->a(Lc/d/a/b/a/f/b;)V

    add-long/2addr v11, v4

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 61
    :cond_1
    iget-object v4, v0, Lc/d/a/b/a/i/c;->n:Lc/d/a/b/a/f/c;

    invoke-virtual {v4, v3}, Lc/d/a/b/a/f/c;->b(I)V

    .line 62
    iget-object v4, v0, Lc/d/a/b/a/i/c;->m:Lcom/ss/android/socialbase/downloader/downloader/k;

    invoke-interface {v4, v6, v3}, Lcom/ss/android/socialbase/downloader/downloader/k;->a(II)Lc/d/a/b/a/f/c;

    .line 63
    invoke-direct {v0, v7, v1, v2}, Lc/d/a/b/a/i/c;->a(Ljava/util/List;J)V

    return-void
.end method

.method private a(JLjava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 93
    invoke-static {p1, p2}, Lc/d/a/b/a/j/d;->a(J)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 94
    :cond_0
    invoke-static {p3, p4}, Lc/d/a/b/a/j/d;->a(Ljava/lang/String;Ljava/lang/String;)Lc/d/a/b/a/f/f;

    move-result-object v0

    .line 95
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p3, p4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    sub-long v1, p1, v1

    .line 96
    invoke-static {p3}, Lc/d/a/b/a/j/d;->b(Ljava/lang/String;)J

    move-result-wide p3

    cmp-long v3, p3, v1

    if-ltz v3, :cond_4

    .line 97
    iget-object p3, p0, Lc/d/a/b/a/i/c;->n:Lc/d/a/b/a/f/c;

    invoke-virtual {p3}, Lc/d/a/b/a/f/c;->w()Z

    move-result p3

    if-nez p3, :cond_2

    invoke-static {}, Lc/d/a/b/a/j/d;->a()J

    move-result-wide p3

    cmp-long p3, v1, p3

    if-gtz p3, :cond_1

    goto :goto_0

    .line 98
    :cond_1
    new-instance p1, Lc/d/a/b/a/d/f;

    invoke-static {}, Lc/d/a/b/a/j/d;->a()J

    move-result-wide p2

    invoke-direct {p1, p2, p3, v1, v2}, Lc/d/a/b/a/d/f;-><init>(JJ)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    :cond_2
    :goto_0
    :try_start_1
    invoke-virtual {v0, p1, p2}, Lc/d/a/b/a/f/f;->b(J)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_3

    .line 100
    :try_start_2
    invoke-virtual {v0}, Lc/d/a/b/a/f/f;->b()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 101
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_1
    return-void

    :catch_1
    move-exception p1

    .line 102
    :try_start_3
    new-instance p2, Lc/d/a/b/a/d/a;

    const/16 p3, 0x410

    invoke-direct {p2, p3, p1}, Lc/d/a/b/a/d/a;-><init>(ILjava/lang/Throwable;)V

    throw p2

    .line 103
    :cond_4
    new-instance p1, Lc/d/a/b/a/d/e;

    invoke-direct {p1, p3, p4, v1, v2}, Lc/d/a/b/a/d/e;-><init>(JJ)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_5

    .line 104
    :try_start_4
    invoke-virtual {v0}, Lc/d/a/b/a/f/f;->b()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_2
    move-exception p2

    .line 105
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 106
    :cond_5
    :goto_2
    throw p1
.end method

.method private a(Lc/d/a/b/a/f/b;Lc/d/a/b/a/h/e;)V
    .locals 4

    .line 88
    iget-object v0, p0, Lc/d/a/b/a/i/c;->n:Lc/d/a/b/a/f/c;

    invoke-virtual {v0}, Lc/d/a/b/a/f/c;->s()J

    move-result-wide v0

    invoke-virtual {p1}, Lc/d/a/b/a/f/b;->o()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lc/d/a/b/a/f/b;->a(J)V

    .line 89
    iget-object v0, p0, Lc/d/a/b/a/i/c;->n:Lc/d/a/b/a/f/c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lc/d/a/b/a/f/c;->b(I)V

    .line 90
    iget-object v0, p0, Lc/d/a/b/a/i/c;->m:Lcom/ss/android/socialbase/downloader/downloader/k;

    iget-object v2, p0, Lc/d/a/b/a/i/c;->n:Lc/d/a/b/a/f/c;

    invoke-virtual {v2}, Lc/d/a/b/a/f/c;->q0()I

    move-result v2

    invoke-interface {v0, v2, v1}, Lcom/ss/android/socialbase/downloader/downloader/k;->a(II)Lc/d/a/b/a/f/c;

    .line 91
    new-instance v0, Lcom/ss/android/socialbase/downloader/downloader/d;

    iget-object v1, p0, Lc/d/a/b/a/i/c;->n:Lc/d/a/b/a/f/c;

    invoke-direct {v0, v1, p2, p1, p0}, Lcom/ss/android/socialbase/downloader/downloader/d;-><init>(Lc/d/a/b/a/f/c;Lc/d/a/b/a/h/e;Lc/d/a/b/a/f/b;Lc/d/a/b/a/i/e;)V

    iput-object v0, p0, Lc/d/a/b/a/i/c;->e:Lcom/ss/android/socialbase/downloader/downloader/d;

    .line 92
    invoke-direct {p0}, Lc/d/a/b/a/i/c;->q()V

    return-void
.end method

.method private a(Lc/d/a/b/a/h/c;J)V
    .locals 10

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 115
    :try_start_0
    invoke-interface {p1}, Lc/d/a/b/a/h/c;->b()I

    move-result v1

    .line 116
    invoke-static {v1}, Lc/d/a/b/a/j/d;->a(I)Z

    move-result v2

    iput-boolean v2, p0, Lc/d/a/b/a/i/c;->h:Z

    .line 117
    invoke-static {v1}, Lc/d/a/b/a/j/d;->b(I)Z

    move-result v2

    iput-boolean v2, p0, Lc/d/a/b/a/i/c;->i:Z

    .line 118
    iget-object v2, p0, Lc/d/a/b/a/i/c;->n:Lc/d/a/b/a/f/c;

    invoke-virtual {v2}, Lc/d/a/b/a/f/c;->t()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Etag"

    .line 119
    invoke-interface {p1, v3}, Lc/d/a/b/a/h/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 120
    invoke-direct {p0, v1, v2, v3}, Lc/d/a/b/a/i/c;->a(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v4
    :try_end_0
    .catch Lc/d/a/b/a/d/a; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lc/d/a/b/a/i/c$c; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v5, ""

    if-eqz v4, :cond_3

    .line 121
    :try_start_1
    instance-of p1, p1, Lc/d/a/b/a/h/e;

    if-eqz p1, :cond_2

    .line 122
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move-object v3, v5

    :cond_1
    const-string p1, "eTag of server file changed"

    .line 123
    invoke-direct {p0, v3, p1}, Lc/d/a/b/a/i/c;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lc/d/a/b/a/d/a; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lc/d/a/b/a/i/c$c; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 124
    :cond_2
    :try_start_2
    new-instance p1, Lc/d/a/b/a/d/c;

    const/16 p2, 0x3ea

    invoke-direct {p1, p2, v1, v5}, Lc/d/a/b/a/d/c;-><init>(IILjava/lang/String;)V

    throw p1

    .line 125
    :cond_3
    iget-boolean v2, p0, Lc/d/a/b/a/i/c;->h:Z

    const/16 v4, 0x3ec

    if-nez v2, :cond_6

    iget-boolean v2, p0, Lc/d/a/b/a/i/c;->i:Z

    if-eqz v2, :cond_4

    goto :goto_0

    :cond_4
    const/16 p1, 0x193

    if-ne v1, p1, :cond_5

    .line 126
    new-instance p1, Lc/d/a/b/a/d/a;

    const/16 p2, 0x417

    const-string p3, "response code error : 403"

    invoke-direct {p1, p2, p3}, Lc/d/a/b/a/d/a;-><init>(ILjava/lang/String;)V

    throw p1

    .line 127
    :cond_5
    new-instance p1, Lc/d/a/b/a/d/c;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "response code error : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v4, v1, p2}, Lc/d/a/b/a/d/c;-><init>(IILjava/lang/String;)V

    throw p1

    .line 128
    :cond_6
    :goto_0
    iget-boolean v1, p0, Lc/d/a/b/a/i/c;->i:Z

    const-wide/16 v6, 0x0

    if-eqz v1, :cond_8

    cmp-long v1, p2, v6

    if-lez v1, :cond_8

    .line 129
    instance-of p1, p1, Lc/d/a/b/a/h/e;

    if-eqz p1, :cond_7

    const-string p1, "http head request not support"

    .line 130
    invoke-direct {p0, v5, p1}, Lc/d/a/b/a/i/c;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lc/d/a/b/a/d/a; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lc/d/a/b/a/i/c$c; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 131
    :cond_7
    :try_start_3
    new-instance p1, Lc/d/a/b/a/d/a;

    const-string p2, "isResponseFromBegin but firstOffset > 0"

    invoke-direct {p1, v4, p2}, Lc/d/a/b/a/d/a;-><init>(ILjava/lang/String;)V

    throw p1

    .line 132
    :cond_8
    invoke-static {p1}, Lc/d/a/b/a/j/d;->a(Lc/d/a/b/a/h/c;)J

    move-result-wide v1

    .line 133
    iget-object v8, p0, Lc/d/a/b/a/i/c;->n:Lc/d/a/b/a/f/c;

    invoke-virtual {v8}, Lc/d/a/b/a/f/c;->r0()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 134
    iget-object v8, p0, Lc/d/a/b/a/i/c;->n:Lc/d/a/b/a/f/c;

    invoke-virtual {v8}, Lc/d/a/b/a/f/c;->t0()Ljava/lang/String;

    move-result-object v8

    invoke-static {p1, v8}, Lc/d/a/b/a/j/d;->a(Lc/d/a/b/a/h/c;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    :cond_9
    move-object v8, v5

    .line 135
    :goto_1
    invoke-static {v1, v2}, Lc/d/a/b/a/j/d;->a(J)Z

    move-result v9

    iput-boolean v9, p0, Lc/d/a/b/a/i/c;->j:Z

    .line 136
    iget-boolean v9, p0, Lc/d/a/b/a/i/c;->j:Z

    if-nez v9, :cond_b

    cmp-long v6, v1, v6

    if-nez v6, :cond_b

    instance-of p1, p1, Lc/d/a/b/a/h/e;

    if-eqz p1, :cond_a

    goto :goto_2

    .line 137
    :cond_a
    new-instance p1, Lc/d/a/b/a/d/a;

    invoke-direct {p1, v4, v5}, Lc/d/a/b/a/d/a;-><init>(ILjava/lang/String;)V

    throw p1

    .line 138
    :cond_b
    :goto_2
    iget-boolean p1, p0, Lc/d/a/b/a/i/c;->j:Z

    if-nez p1, :cond_c

    add-long/2addr v1, p2

    .line 139
    :cond_c
    invoke-direct {p0}, Lc/d/a/b/a/i/c;->s()Z

    move-result p1

    if-eqz p1, :cond_d

    return-void

    .line 140
    :cond_d
    iget-object p1, p0, Lc/d/a/b/a/i/c;->r:Lcom/ss/android/socialbase/downloader/downloader/e;

    invoke-virtual {p1, v1, v2, v3, v8}, Lcom/ss/android/socialbase/downloader/downloader/e;->a(JLjava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Lc/d/a/b/a/d/a; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lc/d/a/b/a/i/c$c; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    const-string p2, "HandleFirstConnection"

    .line 141
    invoke-static {p1, p2}, Lc/d/a/b/a/j/d;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception p1

    .line 142
    throw p1

    :catch_1
    move-exception p1

    .line 143
    throw p1
.end method

.method static synthetic a(Lc/d/a/b/a/i/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lc/d/a/b/a/i/c;->g()V

    return-void
.end method

.method static synthetic a(Lc/d/a/b/a/i/c;Ljava/util/List;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lc/d/a/b/a/i/c;->c(Ljava/util/List;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 109
    iget-object v0, p0, Lc/d/a/b/a/i/c;->m:Lcom/ss/android/socialbase/downloader/downloader/k;

    iget-object v1, p0, Lc/d/a/b/a/i/c;->n:Lc/d/a/b/a/f/c;

    invoke-virtual {v1}, Lc/d/a/b/a/f/c;->q0()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/k;->h(I)V

    .line 110
    iget-object v0, p0, Lc/d/a/b/a/i/c;->n:Lc/d/a/b/a/f/c;

    invoke-static {v0}, Lc/d/a/b/a/j/d;->a(Lc/d/a/b/a/f/c;)V

    const/4 v0, 0x0

    .line 111
    iput-boolean v0, p0, Lc/d/a/b/a/i/c;->g:Z

    .line 112
    iget-object v0, p0, Lc/d/a/b/a/i/c;->n:Lc/d/a/b/a/f/c;

    invoke-virtual {v0, p1}, Lc/d/a/b/a/f/c;->f(Ljava/lang/String;)V

    .line 113
    iget-object p1, p0, Lc/d/a/b/a/i/c;->m:Lcom/ss/android/socialbase/downloader/downloader/k;

    iget-object v0, p0, Lc/d/a/b/a/i/c;->n:Lc/d/a/b/a/f/c;

    invoke-interface {p1, v0}, Lcom/ss/android/socialbase/downloader/downloader/k;->a(Lc/d/a/b/a/f/c;)Z

    .line 114
    new-instance p1, Lc/d/a/b/a/i/c$c;

    invoke-direct {p1, p0, p2}, Lc/d/a/b/a/i/c$c;-><init>(Lc/d/a/b/a/i/c;Ljava/lang/String;)V

    throw p1
.end method

.method private a(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lc/d/a/b/a/f/e;",
            ">;)V"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lc/d/a/b/a/i/c;->v:Lc/d/a/b/a/h/e;

    if-eqz v0, :cond_0

    return-void

    .line 28
    :cond_0
    :try_start_0
    iget-object v0, p0, Lc/d/a/b/a/i/c;->n:Lc/d/a/b/a/f/c;

    invoke-virtual {v0}, Lc/d/a/b/a/f/c;->y0()Z

    move-result v0

    iget-object v1, p0, Lc/d/a/b/a/i/c;->n:Lc/d/a/b/a/f/c;

    invoke-virtual {v1}, Lc/d/a/b/a/f/c;->c()I

    move-result v1

    invoke-static {v0, v1, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/b;->a(ZILjava/lang/String;Ljava/util/List;)Lc/d/a/b/a/h/e;

    move-result-object p1

    iput-object p1, p0, Lc/d/a/b/a/i/c;->v:Lc/d/a/b/a/h/e;
    :try_end_0
    .catch Lc/d/a/b/a/d/a; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    iget-object p1, p0, Lc/d/a/b/a/i/c;->v:Lc/d/a/b/a/h/e;

    invoke-virtual {p0, p1}, Lc/d/a/b/a/i/c;->a(Lc/d/a/b/a/h/c;)V

    .line 30
    iget-object p1, p0, Lc/d/a/b/a/i/c;->v:Lc/d/a/b/a/h/e;

    if-eqz p1, :cond_1

    return-void

    .line 31
    :cond_1
    new-instance p1, Lc/d/a/b/a/d/a;

    const/16 p2, 0x3fe

    new-instance v0, Ljava/io/IOException;

    const-string v1, "download can\'t continue, firstConnection is null"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, p2, v0}, Lc/d/a/b/a/d/a;-><init>(ILjava/lang/Throwable;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 32
    :try_start_1
    invoke-static {p1}, Lc/d/a/b/a/j/d;->f(Ljava/lang/Throwable;)Z

    move-result p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const-string v0, ""

    const/4 v1, 0x0

    if-nez p2, :cond_3

    .line 33
    :try_start_2
    invoke-static {p1}, Lc/d/a/b/a/j/d;->e(Ljava/lang/Throwable;)Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p1, "http code 412"

    .line 34
    invoke-direct {p0, v0, p1}, Lc/d/a/b/a/i/c;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    :cond_2
    :try_start_3
    const-string p2, "CreateFirstConnection"

    .line 35
    invoke-static {p1, p2}, Lc/d/a/b/a/j/d;->a(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    :cond_3
    :try_start_4
    const-string p1, "http code 416"

    .line 36
    invoke-direct {p0, v0, p1}, Lc/d/a/b/a/i/c;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1

    :catch_0
    move-exception p1

    .line 37
    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p1

    .line 38
    iget-object p2, p0, Lc/d/a/b/a/i/c;->v:Lc/d/a/b/a/h/e;

    invoke-virtual {p0, p2}, Lc/d/a/b/a/i/c;->a(Lc/d/a/b/a/h/c;)V

    throw p1
.end method

.method private a(Ljava/util/List;J)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lc/d/a/b/a/f/b;",
            ">;J)V"
        }
    .end annotation

    .line 64
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/d/a/b/a/f/b;

    if-nez v0, :cond_1

    goto :goto_0

    .line 65
    :cond_1
    invoke-virtual {v0}, Lc/d/a/b/a/f/b;->q()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_2

    .line 66
    invoke-virtual {v0}, Lc/d/a/b/a/f/b;->o()J

    move-result-wide v1

    sub-long v1, p2, v1

    goto :goto_1

    .line 67
    :cond_2
    invoke-virtual {v0}, Lc/d/a/b/a/f/b;->q()J

    move-result-wide v1

    invoke-virtual {v0}, Lc/d/a/b/a/f/b;->o()J

    move-result-wide v5

    sub-long/2addr v1, v5

    const-wide/16 v5, 0x1

    add-long/2addr v1, v5

    :goto_1
    cmp-long v3, v1, v3

    if-gtz v3, :cond_3

    goto :goto_0

    .line 68
    :cond_3
    invoke-virtual {v0, v1, v2}, Lc/d/a/b/a/f/b;->a(J)V

    .line 69
    iget-object v1, p0, Lc/d/a/b/a/i/c;->n:Lc/d/a/b/a/f/c;

    invoke-virtual {v1}, Lc/d/a/b/a/f/c;->j()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lc/d/a/b/a/i/c;->v:Lc/d/a/b/a/h/e;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lc/d/a/b/a/i/c;->n:Lc/d/a/b/a/f/c;

    invoke-virtual {v1}, Lc/d/a/b/a/f/c;->l()Z

    move-result v1

    if-nez v1, :cond_5

    .line 70
    invoke-virtual {v0}, Lc/d/a/b/a/f/b;->t()I

    move-result v1

    if-nez v1, :cond_4

    .line 71
    new-instance v1, Lc/d/a/b/a/i/b;

    iget-object v2, p0, Lc/d/a/b/a/i/c;->a:Lc/d/a/b/a/f/d;

    iget-object v3, p0, Lc/d/a/b/a/i/c;->v:Lc/d/a/b/a/h/e;

    invoke-direct {v1, v0, v2, v3, p0}, Lc/d/a/b/a/i/b;-><init>(Lc/d/a/b/a/f/b;Lc/d/a/b/a/f/d;Lc/d/a/b/a/h/e;Lc/d/a/b/a/i/e;)V

    .line 72
    iget-object v0, p0, Lc/d/a/b/a/i/c;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 73
    :cond_4
    invoke-virtual {v0}, Lc/d/a/b/a/f/b;->t()I

    move-result v1

    if-lez v1, :cond_0

    .line 74
    new-instance v1, Lc/d/a/b/a/i/b;

    iget-object v2, p0, Lc/d/a/b/a/i/c;->a:Lc/d/a/b/a/f/d;

    invoke-direct {v1, v0, v2, p0}, Lc/d/a/b/a/i/b;-><init>(Lc/d/a/b/a/f/b;Lc/d/a/b/a/f/d;Lc/d/a/b/a/i/e;)V

    .line 75
    iget-object v0, p0, Lc/d/a/b/a/i/c;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 76
    :cond_5
    new-instance v1, Lc/d/a/b/a/i/b;

    iget-object v2, p0, Lc/d/a/b/a/i/c;->a:Lc/d/a/b/a/f/d;

    invoke-direct {v1, v0, v2, p0}, Lc/d/a/b/a/i/b;-><init>(Lc/d/a/b/a/f/b;Lc/d/a/b/a/f/d;Lc/d/a/b/a/i/e;)V

    .line 77
    iget-object v0, p0, Lc/d/a/b/a/i/c;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 78
    :cond_6
    new-instance p1, Ljava/util/ArrayList;

    iget-object p2, p0, Lc/d/a/b/a/i/c;->d:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 79
    iget-object p2, p0, Lc/d/a/b/a/i/c;->d:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_9

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lc/d/a/b/a/i/b;

    .line 80
    iget-object v0, p0, Lc/d/a/b/a/i/c;->l:Lc/d/a/b/a/a/k;

    sget-object v1, Lc/d/a/b/a/a/k;->c:Lc/d/a/b/a/a/k;

    if-ne v0, v1, :cond_7

    .line 81
    invoke-virtual {p3}, Lc/d/a/b/a/i/b;->b()V

    goto :goto_2

    .line 82
    :cond_7
    iget-object v0, p0, Lc/d/a/b/a/i/c;->l:Lc/d/a/b/a/a/k;

    sget-object v1, Lc/d/a/b/a/a/k;->b:Lc/d/a/b/a/a/k;

    if-ne v0, v1, :cond_8

    .line 83
    invoke-virtual {p3}, Lc/d/a/b/a/i/b;->a()V

    goto :goto_2

    .line 84
    :cond_8
    invoke-static {p3}, Ljava/util/concurrent/Executors;->callable(Ljava/lang/Runnable;)Ljava/util/concurrent/Callable;

    move-result-object p3

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 85
    :cond_9
    invoke-direct {p0}, Lc/d/a/b/a/i/c;->s()Z

    move-result p2

    if-eqz p2, :cond_a

    return-void

    .line 86
    :cond_a
    :try_start_0
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/impls/e;->b(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 87
    new-instance p2, Lc/d/a/b/a/d/a;

    const/16 p3, 0x3fc

    invoke-direct {p2, p3, p1}, Lc/d/a/b/a/d/a;-><init>(ILjava/lang/Throwable;)V

    throw p2
.end method

.method private a(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x1

    const/16 v1, 0x19c

    if-ne p1, v1, :cond_0

    return v0

    .line 107
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    iget-boolean p2, p0, Lc/d/a/b/a/i/c;->i:Z

    if-nez p2, :cond_1

    iget-boolean p2, p0, Lc/d/a/b/a/i/c;->h:Z

    if-eqz p2, :cond_2

    :cond_1
    return v0

    :cond_2
    const/16 p2, 0xc9

    if-eq p1, p2, :cond_3

    const/16 p2, 0x1a0

    if-ne p1, p2, :cond_4

    .line 108
    :cond_3
    iget-object p1, p0, Lc/d/a/b/a/i/c;->n:Lc/d/a/b/a/f/c;

    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->q()J

    move-result-wide p1

    const-wide/16 v1, 0x0

    cmp-long p1, p1, v1

    if-lez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private b(J)Lc/d/a/b/a/f/b;
    .locals 3

    .line 11
    new-instance v0, Lc/d/a/b/a/f/b$b;

    iget-object v1, p0, Lc/d/a/b/a/i/c;->n:Lc/d/a/b/a/f/c;

    invoke-virtual {v1}, Lc/d/a/b/a/f/c;->q0()I

    move-result v1

    invoke-direct {v0, v1}, Lc/d/a/b/a/f/b$b;-><init>(I)V

    const/4 v1, -0x1

    .line 12
    invoke-virtual {v0, v1}, Lc/d/a/b/a/f/b$b;->a(I)Lc/d/a/b/a/f/b$b;

    const-wide/16 v1, 0x0

    .line 13
    invoke-virtual {v0, v1, v2}, Lc/d/a/b/a/f/b$b;->a(J)Lc/d/a/b/a/f/b$b;

    .line 14
    invoke-virtual {v0, p1, p2}, Lc/d/a/b/a/f/b$b;->e(J)Lc/d/a/b/a/f/b$b;

    .line 15
    invoke-virtual {v0, p1, p2}, Lc/d/a/b/a/f/b$b;->b(J)Lc/d/a/b/a/f/b$b;

    .line 16
    invoke-virtual {v0, v1, v2}, Lc/d/a/b/a/f/b$b;->c(J)Lc/d/a/b/a/f/b$b;

    iget-object v1, p0, Lc/d/a/b/a/i/c;->n:Lc/d/a/b/a/f/c;

    .line 17
    invoke-virtual {v1}, Lc/d/a/b/a/f/c;->s()J

    move-result-wide v1

    sub-long/2addr v1, p1

    invoke-virtual {v0, v1, v2}, Lc/d/a/b/a/f/b$b;->d(J)Lc/d/a/b/a/f/b$b;

    .line 18
    invoke-virtual {v0}, Lc/d/a/b/a/f/b$b;->a()Lc/d/a/b/a/f/b;

    move-result-object p1

    return-object p1
.end method

.method private b(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lc/d/a/b/a/f/b;",
            ">;)V"
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lc/d/a/b/a/i/c;->n:Lc/d/a/b/a/f/c;

    if-nez v0, :cond_0

    return-void

    .line 20
    :cond_0
    invoke-virtual {v0}, Lc/d/a/b/a/f/c;->K()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le v0, v2, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v1

    .line 21
    :goto_0
    iget-object v4, p0, Lc/d/a/b/a/i/c;->n:Lc/d/a/b/a/f/c;

    invoke-virtual {v4}, Lc/d/a/b/a/f/c;->F()Z

    move-result v4

    const-wide/16 v5, 0x0

    if-eqz v4, :cond_3

    if-eqz v3, :cond_2

    if-eqz p1, :cond_3

    .line 22
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ne v0, v3, :cond_3

    .line 23
    invoke-static {p1}, Lc/d/a/b/a/j/d;->b(Ljava/util/List;)J

    move-result-wide v3

    goto :goto_1

    .line 24
    :cond_2
    iget-object p1, p0, Lc/d/a/b/a/i/c;->n:Lc/d/a/b/a/f/c;

    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->q()J

    move-result-wide v3

    goto :goto_1

    :cond_3
    move-wide v3, v5

    .line 25
    :goto_1
    iget-object p1, p0, Lc/d/a/b/a/i/c;->n:Lc/d/a/b/a/f/c;

    invoke-virtual {p1, v3, v4}, Lc/d/a/b/a/f/c;->a(J)V

    cmp-long p1, v3, v5

    if-lez p1, :cond_4

    move v1, v2

    .line 26
    :cond_4
    iput-boolean v1, p0, Lc/d/a/b/a/i/c;->g:Z

    .line 27
    iget-boolean p1, p0, Lc/d/a/b/a/i/c;->g:Z

    if-nez p1, :cond_5

    .line 28
    iget-object p1, p0, Lc/d/a/b/a/i/c;->m:Lcom/ss/android/socialbase/downloader/downloader/k;

    iget-object v0, p0, Lc/d/a/b/a/i/c;->n:Lc/d/a/b/a/f/c;

    invoke-virtual {v0}, Lc/d/a/b/a/f/c;->q0()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/ss/android/socialbase/downloader/downloader/k;->h(I)V

    .line 29
    iget-object p1, p0, Lc/d/a/b/a/i/c;->n:Lc/d/a/b/a/f/c;

    invoke-static {p1}, Lc/d/a/b/a/j/d;->a(Lc/d/a/b/a/f/c;)V

    :cond_5
    return-void
.end method

.method private c(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 2
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lc/d/a/b/a/i/c;->n:Lc/d/a/b/a/f/c;

    invoke-virtual {v0, p1}, Lc/d/a/b/a/f/c;->a(Ljava/util/List;)V

    .line 4
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->t()Lcom/ss/android/socialbase/downloader/impls/a;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 5
    iget-object v0, p0, Lc/d/a/b/a/i/c;->n:Lc/d/a/b/a/f/c;

    invoke-virtual {v0}, Lc/d/a/b/a/f/c;->q0()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/ss/android/socialbase/downloader/impls/a;->n(I)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private c(Lc/d/a/b/a/d/a;)Z
    .locals 6

    .line 6
    iget-object v0, p0, Lc/d/a/b/a/i/c;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    .line 7
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v2, 0x0

    if-lez v0, :cond_0

    goto :goto_1

    .line 8
    :cond_0
    iget-object v0, p0, Lc/d/a/b/a/i/c;->n:Lc/d/a/b/a/f/c;

    invoke-virtual {v0}, Lc/d/a/b/a/f/c;->i0()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    iget-object p1, p0, Lc/d/a/b/a/i/c;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v0, p0, Lc/d/a/b/a/i/c;->n:Lc/d/a/b/a/f/c;

    invoke-virtual {v0}, Lc/d/a/b/a/f/c;->d()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_3

    .line 10
    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lc/d/a/b/a/i/c;->n:Lc/d/a/b/a/f/c;

    invoke-virtual {v0}, Lc/d/a/b/a/f/c;->k0()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 11
    iget-object p1, p0, Lc/d/a/b/a/i/c;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v0, p0, Lc/d/a/b/a/i/c;->n:Lc/d/a/b/a/f/c;

    invoke-virtual {v0}, Lc/d/a/b/a/f/c;->d()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 12
    iget-object p1, p0, Lc/d/a/b/a/i/c;->n:Lc/d/a/b/a/f/c;

    invoke-virtual {p1, v1}, Lc/d/a/b/a/f/c;->f(Z)V

    :goto_0
    move v1, v2

    .line 13
    :goto_1
    iget-object p1, p0, Lc/d/a/b/a/i/c;->l:Lc/d/a/b/a/a/k;

    sget-object v0, Lc/d/a/b/a/a/k;->f:Lc/d/a/b/a/a/k;

    if-eq p1, v0, :cond_2

    if-eqz v1, :cond_2

    .line 14
    iget-object p1, p0, Lc/d/a/b/a/i/c;->n:Lc/d/a/b/a/f/c;

    iget-object v0, p0, Lc/d/a/b/a/i/c;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    invoke-virtual {p1, v0}, Lc/d/a/b/a/f/c;->e(I)V

    :cond_2
    return v2

    .line 15
    :cond_3
    new-instance v0, Lc/d/a/b/a/d/a;

    invoke-virtual {p1}, Lc/d/a/b/a/d/a;->a()I

    move-result v3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lc/d/a/b/a/i/c;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    iget-object v2, p0, Lc/d/a/b/a/i/c;->n:Lc/d/a/b/a/f/c;

    invoke-virtual {v2}, Lc/d/a/b/a/f/c;->d()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    const/4 v2, 0x2

    invoke-virtual {p1}, Lc/d/a/b/a/d/a;->b()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v2

    const-string p1, "retry for exception, but current retry time : %s , retry Time %s all used, last error is %s"

    invoke-static {p1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v3, p1}, Lc/d/a/b/a/d/a;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lc/d/a/b/a/i/c;->b(Lc/d/a/b/a/d/a;)V

    return v1

    .line 16
    :cond_4
    new-instance v0, Lc/d/a/b/a/d/a;

    const/16 v2, 0x413

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "retry for exception, but retain retry time is null, last error is :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lc/d/a/b/a/d/a;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v2, p1}, Lc/d/a/b/a/d/a;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lc/d/a/b/a/i/c;->b(Lc/d/a/b/a/d/a;)V

    return v1
.end method

.method private g()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lc/d/a/b/a/i/c;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->t()Lcom/ss/android/socialbase/downloader/impls/a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v1, p0, Lc/d/a/b/a/i/c;->n:Lc/d/a/b/a/f/c;

    invoke-virtual {v1}, Lc/d/a/b/a/f/c;->q0()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/impls/a;->n(I)Z

    :cond_1
    return-void
.end method

.method private h()V
    .locals 4

    .line 1
    iget-object v0, p0, Lc/d/a/b/a/i/c;->l:Lc/d/a/b/a/a/k;

    sget-object v1, Lc/d/a/b/a/a/k;->f:Lc/d/a/b/a/a/k;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lc/d/a/b/a/i/c;->s:Landroid/app/AlarmManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/d/a/b/a/i/c;->n:Lc/d/a/b/a/f/c;

    invoke-virtual {v0}, Lc/d/a/b/a/f/c;->M()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lc/d/a/b/a/i/c;->q:Lcom/ss/android/socialbase/downloader/downloader/r;

    iget-object v1, p0, Lc/d/a/b/a/i/c;->n:Lc/d/a/b/a/f/c;

    invoke-virtual {v1}, Lc/d/a/b/a/f/c;->N()I

    move-result v1

    iget-object v2, p0, Lc/d/a/b/a/i/c;->n:Lc/d/a/b/a/f/c;

    invoke-virtual {v2}, Lc/d/a/b/a/f/c;->d()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/downloader/r;->a(II)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 3
    sget-object v0, Lc/d/a/b/a/a/k;->f:Lc/d/a/b/a/a/k;

    iput-object v0, p0, Lc/d/a/b/a/i/c;->l:Lc/d/a/b/a/a/k;

    :cond_0
    return-void
.end method

.method private i()V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/d/a/b/a/i/c;->n:Lc/d/a/b/a/f/c;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Lc/d/a/b/a/f/c;->d()I

    move-result v0

    iget-object v1, p0, Lc/d/a/b/a/i/c;->n:Lc/d/a/b/a/f/c;

    invoke-virtual {v1}, Lc/d/a/b/a/f/c;->N()I

    move-result v1

    sub-int/2addr v0, v1

    if-gez v0, :cond_1

    const/4 v0, 0x0

    .line 3
    :cond_1
    iget-object v1, p0, Lc/d/a/b/a/i/c;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    if-nez v1, :cond_2

    .line 4
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lc/d/a/b/a/i/c;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    goto :goto_0

    .line 5
    :cond_2
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    :goto_0
    return-void
.end method

.method private j()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lc/d/a/b/a/i/c;->n:Lc/d/a/b/a/f/c;

    invoke-virtual {v0}, Lc/d/a/b/a/f/c;->A0()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 2
    iget-object v2, p0, Lc/d/a/b/a/i/c;->n:Lc/d/a/b/a/f/c;

    invoke-virtual {v2}, Lc/d/a/b/a/f/c;->S()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    const/4 v1, -0x4

    if-eq v0, v1, :cond_0

    .line 3
    new-instance v1, Lc/d/a/b/a/d/a;

    const/16 v2, 0x3e8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The download Task can\'t start, because its status is not prepare:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lc/d/a/b/a/d/a;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v1}, Lc/d/a/b/a/i/c;->b(Lc/d/a/b/a/d/a;)V

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    return v1
.end method

.method private k()V
    .locals 7

    .line 1
    :try_start_0
    iget-object v0, p0, Lc/d/a/b/a/i/c;->n:Lc/d/a/b/a/f/c;

    invoke-virtual {v0}, Lc/d/a/b/a/f/c;->q0()I

    move-result v0

    .line 2
    iget-object v1, p0, Lc/d/a/b/a/i/c;->m:Lcom/ss/android/socialbase/downloader/downloader/k;

    if-eqz v1, :cond_6

    .line 3
    iget-object v1, p0, Lc/d/a/b/a/i/c;->m:Lcom/ss/android/socialbase/downloader/downloader/k;

    invoke-interface {v1, v0}, Lcom/ss/android/socialbase/downloader/downloader/k;->c(I)Lc/d/a/b/a/f/c;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1}, Lc/d/a/b/a/f/c;->J()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    if-nez v1, :cond_2

    .line 5
    :cond_1
    iget-object v0, p0, Lc/d/a/b/a/i/c;->n:Lc/d/a/b/a/f/c;

    invoke-virtual {v0}, Lc/d/a/b/a/f/c;->B()V

    goto :goto_1

    .line 6
    :cond_2
    iget-object v4, p0, Lc/d/a/b/a/i/c;->n:Lc/d/a/b/a/f/c;

    invoke-virtual {v4}, Lc/d/a/b/a/f/c;->u0()Ljava/lang/String;

    move-result-object v4

    .line 7
    iget-object v5, p0, Lc/d/a/b/a/i/c;->n:Lc/d/a/b/a/f/c;

    invoke-virtual {v5}, Lc/d/a/b/a/f/c;->a()Ljava/lang/String;

    move-result-object v5

    .line 8
    iget-object v6, p0, Lc/d/a/b/a/i/c;->n:Lc/d/a/b/a/f/c;

    invoke-virtual {v6, v1, v3}, Lc/d/a/b/a/f/c;->a(Lc/d/a/b/a/f/c;Z)V

    .line 9
    invoke-virtual {v1}, Lc/d/a/b/a/f/c;->u0()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {v1, v2, v5}, Lc/d/a/b/a/j/d;->a(Lc/d/a/b/a/f/c;ZLjava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_0

    .line 10
    :cond_3
    new-instance v0, Lc/d/a/b/a/d/b;

    invoke-virtual {v1}, Lc/d/a/b/a/f/c;->r0()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lc/d/a/b/a/d/b;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11
    :cond_4
    :goto_0
    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/downloader/b;->a(Lc/d/a/b/a/f/c;)I

    move-result v1
    :try_end_0
    .catch Lc/d/a/b/a/d/b; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v1, v0, :cond_5

    .line 12
    :try_start_1
    iget-object v1, p0, Lc/d/a/b/a/i/c;->m:Lcom/ss/android/socialbase/downloader/downloader/k;

    invoke-interface {v1, v0}, Lcom/ss/android/socialbase/downloader/downloader/k;->b(I)Z
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lc/d/a/b/a/d/b; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 13
    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V
    :try_end_2
    .catch Lc/d/a/b/a/d/b; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_5
    move v3, v2

    :goto_1
    if-eqz v3, :cond_6

    .line 14
    :try_start_3
    iget-object v0, p0, Lc/d/a/b/a/i/c;->m:Lcom/ss/android/socialbase/downloader/downloader/k;

    iget-object v1, p0, Lc/d/a/b/a/i/c;->n:Lc/d/a/b/a/f/c;

    invoke-interface {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/k;->a(Lc/d/a/b/a/f/c;)Z
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lc/d/a/b/a/d/b; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catch_1
    move-exception v0

    .line 15
    :try_start_4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    .line 16
    :cond_6
    :goto_2
    invoke-direct {p0}, Lc/d/a/b/a/i/c;->i()V
    :try_end_4
    .catch Lc/d/a/b/a/d/b; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    .line 17
    iget-object v1, p0, Lc/d/a/b/a/i/c;->a:Lc/d/a/b/a/f/d;

    if-eqz v1, :cond_7

    iget-object v2, p0, Lc/d/a/b/a/i/c;->n:Lc/d/a/b/a/f/c;

    if-eqz v2, :cond_7

    .line 18
    invoke-virtual {v1}, Lc/d/a/b/a/f/d;->e()Lc/d/a/b/a/c/e0;

    move-result-object v1

    iget-object v2, p0, Lc/d/a/b/a/i/c;->n:Lc/d/a/b/a/f/c;

    new-instance v3, Lc/d/a/b/a/d/a;

    const/16 v4, 0x3eb

    const-string v5, "checkTaskCache"

    invoke-static {v0, v5}, Lc/d/a/b/a/j/d;->b(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Lc/d/a/b/a/d/a;-><init>(ILjava/lang/String;)V

    iget-object v0, p0, Lc/d/a/b/a/i/c;->n:Lc/d/a/b/a/f/c;

    invoke-virtual {v0}, Lc/d/a/b/a/f/c;->A0()I

    move-result v0

    invoke-static {v1, v2, v3, v0}, Lc/d/a/b/a/g/a;->a(Lc/d/a/b/a/c/e0;Lc/d/a/b/a/f/c;Lc/d/a/b/a/d/a;I)V

    :cond_7
    :goto_3
    return-void

    :catch_2
    move-exception v0

    .line 19
    throw v0
.end method

.method private l()V
    .locals 12

    .line 1
    :try_start_0
    sget-object v0, Lc/d/a/b/a/a/k;->a:Lc/d/a/b/a/a/k;

    iput-object v0, p0, Lc/d/a/b/a/i/c;->l:Lc/d/a/b/a/a/k;

    .line 2
    iget-object v0, p0, Lc/d/a/b/a/i/c;->n:Lc/d/a/b/a/f/c;

    invoke-virtual {v0}, Lc/d/a/b/a/f/c;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 3
    :try_start_1
    invoke-direct {p0}, Lc/d/a/b/a/i/c;->k()V
    :try_end_1
    .catch Lc/d/a/b/a/d/b; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    move v2, v0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 4
    :try_start_2
    sget-object v3, Lc/d/a/b/a/i/c;->D:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file exist "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lc/d/a/b/a/d/b;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc/d/a/b/a/e/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v2}, Lc/d/a/b/a/d/b;->c()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lc/d/a/b/a/i/c;->C:Ljava/lang/String;

    move v2, v1

    .line 6
    :goto_0
    iget-boolean v3, p0, Lc/d/a/b/a/i/c;->A:Z

    if-nez v3, :cond_0

    .line 7
    iget-object v3, p0, Lc/d/a/b/a/i/c;->r:Lcom/ss/android/socialbase/downloader/downloader/e;

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/downloader/e;->b()V

    .line 8
    :cond_0
    iput-boolean v0, p0, Lc/d/a/b/a/i/c;->A:Z

    .line 9
    invoke-direct {p0}, Lc/d/a/b/a/i/c;->s()Z

    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    if-eqz v3, :cond_1

    .line 10
    invoke-direct {p0}, Lc/d/a/b/a/i/c;->m()V

    return-void

    .line 11
    :cond_1
    :try_start_3
    iget-object v3, p0, Lc/d/a/b/a/i/c;->C:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    if-eqz v2, :cond_3

    .line 12
    iget-object v0, p0, Lc/d/a/b/a/i/c;->C:Ljava/lang/String;

    iget-object v1, p0, Lc/d/a/b/a/i/c;->n:Lc/d/a/b/a/f/c;

    invoke-virtual {v1}, Lc/d/a/b/a/f/c;->x0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 13
    sget-object v0, Lc/d/a/b/a/a/k;->e:Lc/d/a/b/a/a/k;

    iput-object v0, p0, Lc/d/a/b/a/i/c;->l:Lc/d/a/b/a/a/k;

    goto :goto_1

    .line 14
    :cond_2
    sget-object v0, Lc/d/a/b/a/a/k;->h:Lc/d/a/b/a/a/k;

    iput-object v0, p0, Lc/d/a/b/a/i/c;->l:Lc/d/a/b/a/a/k;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 15
    :goto_1
    invoke-direct {p0}, Lc/d/a/b/a/i/c;->m()V

    return-void

    .line 16
    :cond_3
    :try_start_4
    invoke-static {}, Lc/d/a/b/a/h/a;->e()Lc/d/a/b/a/h/a;

    move-result-object v2

    invoke-virtual {v2}, Lc/d/a/b/a/h/a;->a()V

    .line 17
    :goto_2
    invoke-direct {p0}, Lc/d/a/b/a/i/c;->s()Z

    move-result v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    if-eqz v2, :cond_4

    .line 18
    invoke-direct {p0}, Lc/d/a/b/a/i/c;->m()V

    return-void

    :cond_4
    const-wide/16 v2, 0x0

    .line 19
    :try_start_5
    invoke-direct {p0}, Lc/d/a/b/a/i/c;->A()V

    .line 20
    invoke-direct {p0}, Lc/d/a/b/a/i/c;->x()V

    .line 21
    invoke-direct {p0}, Lc/d/a/b/a/i/c;->z()V

    .line 22
    iget-object v4, p0, Lc/d/a/b/a/i/c;->m:Lcom/ss/android/socialbase/downloader/downloader/k;

    iget-object v5, p0, Lc/d/a/b/a/i/c;->n:Lc/d/a/b/a/f/c;

    invoke-virtual {v5}, Lc/d/a/b/a/f/c;->q0()I

    move-result v5

    invoke-interface {v4, v5}, Lcom/ss/android/socialbase/downloader/downloader/k;->d(I)Ljava/util/List;

    move-result-object v4

    .line 23
    invoke-direct {p0, v4}, Lc/d/a/b/a/i/c;->b(Ljava/util/List;)V

    .line 24
    iget-object v5, p0, Lc/d/a/b/a/i/c;->n:Lc/d/a/b/a/f/c;

    invoke-virtual {v5}, Lc/d/a/b/a/f/c;->f()Ljava/lang/String;

    move-result-object v5

    .line 25
    invoke-direct {p0}, Lc/d/a/b/a/i/c;->s()Z

    move-result v6
    :try_end_5
    .catch Lc/d/a/b/a/d/a; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lc/d/a/b/a/i/c$c; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v6, :cond_5

    .line 26
    :try_start_6
    invoke-direct {p0}, Lc/d/a/b/a/i/c;->p()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 27
    invoke-direct {p0}, Lc/d/a/b/a/i/c;->m()V

    return-void

    .line 28
    :cond_5
    :try_start_7
    iget-boolean v6, p0, Lc/d/a/b/a/i/c;->g:Z

    if-eqz v6, :cond_7

    .line 29
    iget-object v6, p0, Lc/d/a/b/a/i/c;->n:Lc/d/a/b/a/f/c;

    invoke-virtual {v6}, Lc/d/a/b/a/f/c;->K()I

    move-result v6

    if-ne v6, v1, :cond_6

    .line 30
    iget-object v6, p0, Lc/d/a/b/a/i/c;->n:Lc/d/a/b/a/f/c;

    invoke-virtual {v6}, Lc/d/a/b/a/f/c;->q()J

    move-result-wide v6

    goto :goto_3

    :cond_6
    if-eqz v4, :cond_7

    .line 31
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v1, :cond_7

    .line 32
    invoke-direct {p0, v4}, Lc/d/a/b/a/i/c;->a(Ljava/util/List;)J

    move-result-wide v6

    cmp-long v8, v6, v2

    if-ltz v8, :cond_7

    goto :goto_3

    :cond_7
    move-wide v6, v2

    .line 33
    :goto_3
    invoke-direct {p0, v6, v7}, Lc/d/a/b/a/i/c;->b(J)Lc/d/a/b/a/f/b;

    move-result-object v8

    .line 34
    invoke-direct {p0, v8}, Lc/d/a/b/a/i/c;->a(Lc/d/a/b/a/f/b;)Ljava/util/List;

    move-result-object v9

    .line 35
    iget-boolean v10, p0, Lc/d/a/b/a/i/c;->B:Z

    if-nez v10, :cond_8

    iget-object v10, p0, Lc/d/a/b/a/i/c;->n:Lc/d/a/b/a/f/c;

    invoke-virtual {v10}, Lc/d/a/b/a/f/c;->l()Z

    move-result v10
    :try_end_7
    .catch Lc/d/a/b/a/d/a; {:try_start_7 .. :try_end_7} :catch_2
    .catch Lc/d/a/b/a/i/c$c; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-eqz v10, :cond_8

    .line 36
    :try_start_8
    invoke-static {v5, v9}, Lcom/ss/android/socialbase/downloader/downloader/b;->a(Ljava/lang/String;Ljava/util/List;)Lc/d/a/b/a/h/c;

    move-result-object v10

    iput-object v10, p0, Lc/d/a/b/a/i/c;->w:Lc/d/a/b/a/h/c;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v10

    .line 37
    :try_start_9
    iget-object v11, p0, Lc/d/a/b/a/i/c;->n:Lc/d/a/b/a/f/c;

    invoke-static {v10}, Lc/d/a/b/a/j/d;->g(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Lc/d/a/b/a/f/c;->a(Ljava/lang/String;)V

    .line 38
    :cond_8
    :goto_4
    iget-object v10, p0, Lc/d/a/b/a/i/c;->w:Lc/d/a/b/a/h/c;

    if-nez v10, :cond_9

    .line 39
    invoke-direct {p0, v5, v9}, Lc/d/a/b/a/i/c;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 40
    iget-object v10, p0, Lc/d/a/b/a/i/c;->v:Lc/d/a/b/a/h/e;

    invoke-direct {p0, v10, v6, v7}, Lc/d/a/b/a/i/c;->a(Lc/d/a/b/a/h/c;J)V
    :try_end_9
    .catch Lc/d/a/b/a/d/a; {:try_start_9 .. :try_end_9} :catch_2
    .catch Lc/d/a/b/a/i/c$c; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_5

    .line 41
    :cond_9
    :try_start_a
    iget-object v10, p0, Lc/d/a/b/a/i/c;->w:Lc/d/a/b/a/h/c;

    invoke-direct {p0, v10, v6, v7}, Lc/d/a/b/a/i/c;->a(Lc/d/a/b/a/h/c;J)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_5

    .line 42
    :catchall_1
    :try_start_b
    iput-boolean v1, p0, Lc/d/a/b/a/i/c;->B:Z

    .line 43
    invoke-direct {p0, v5, v9}, Lc/d/a/b/a/i/c;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 44
    iget-object v10, p0, Lc/d/a/b/a/i/c;->v:Lc/d/a/b/a/h/e;

    invoke-direct {p0, v10, v6, v7}, Lc/d/a/b/a/i/c;->a(Lc/d/a/b/a/h/c;J)V

    .line 45
    :goto_5
    invoke-direct {p0}, Lc/d/a/b/a/i/c;->s()Z

    move-result v6
    :try_end_b
    .catch Lc/d/a/b/a/d/a; {:try_start_b .. :try_end_b} :catch_2
    .catch Lc/d/a/b/a/i/c$c; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    if-eqz v6, :cond_a

    .line 46
    :try_start_c
    invoke-direct {p0}, Lc/d/a/b/a/i/c;->p()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 47
    invoke-direct {p0}, Lc/d/a/b/a/i/c;->m()V

    return-void

    .line 48
    :cond_a
    :try_start_d
    iget-object v6, p0, Lc/d/a/b/a/i/c;->n:Lc/d/a/b/a/f/c;

    invoke-virtual {v6}, Lc/d/a/b/a/f/c;->s()J

    move-result-wide v6

    .line 49
    iget-object v10, p0, Lc/d/a/b/a/i/c;->n:Lc/d/a/b/a/f/c;

    invoke-virtual {v10}, Lc/d/a/b/a/f/c;->v0()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lc/d/a/b/a/i/c;->n:Lc/d/a/b/a/f/c;

    invoke-virtual {v11}, Lc/d/a/b/a/f/c;->w0()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v6, v7, v10, v11}, Lc/d/a/b/a/i/c;->a(JLjava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-direct {p0, v6, v7, v4}, Lc/d/a/b/a/i/c;->a(JLjava/util/List;)I

    move-result v10

    .line 51
    invoke-direct {p0}, Lc/d/a/b/a/i/c;->s()Z

    move-result v11
    :try_end_d
    .catch Lc/d/a/b/a/d/a; {:try_start_d .. :try_end_d} :catch_2
    .catch Lc/d/a/b/a/i/c$c; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    if-eqz v11, :cond_b

    .line 52
    :try_start_e
    invoke-direct {p0}, Lc/d/a/b/a/i/c;->p()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    .line 53
    invoke-direct {p0}, Lc/d/a/b/a/i/c;->m()V

    return-void

    :cond_b
    if-lez v10, :cond_12

    if-ne v10, v1, :cond_c

    move v11, v1

    goto :goto_6

    :cond_c
    move v11, v0

    .line 54
    :goto_6
    :try_start_f
    iput-boolean v11, p0, Lc/d/a/b/a/i/c;->f:Z

    .line 55
    iget-boolean v11, p0, Lc/d/a/b/a/i/c;->f:Z

    if-eqz v11, :cond_e

    .line 56
    invoke-direct {p0, v5, v9}, Lc/d/a/b/a/i/c;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 57
    invoke-direct {p0}, Lc/d/a/b/a/i/c;->s()Z

    move-result v4
    :try_end_f
    .catch Lc/d/a/b/a/d/a; {:try_start_f .. :try_end_f} :catch_2
    .catch Lc/d/a/b/a/i/c$c; {:try_start_f .. :try_end_f} :catch_1
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    if-eqz v4, :cond_d

    .line 58
    :try_start_10
    invoke-direct {p0}, Lc/d/a/b/a/i/c;->p()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    .line 59
    invoke-direct {p0}, Lc/d/a/b/a/i/c;->m()V

    return-void

    .line 60
    :cond_d
    :try_start_11
    iget-object v4, p0, Lc/d/a/b/a/i/c;->v:Lc/d/a/b/a/h/e;

    invoke-direct {p0, v8, v4}, Lc/d/a/b/a/i/c;->a(Lc/d/a/b/a/f/b;Lc/d/a/b/a/h/e;)V

    goto :goto_7

    .line 61
    :cond_e
    invoke-direct {p0}, Lc/d/a/b/a/i/c;->o()V

    .line 62
    invoke-direct {p0}, Lc/d/a/b/a/i/c;->s()Z

    move-result v5
    :try_end_11
    .catch Lc/d/a/b/a/d/a; {:try_start_11 .. :try_end_11} :catch_2
    .catch Lc/d/a/b/a/i/c$c; {:try_start_11 .. :try_end_11} :catch_1
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    if-eqz v5, :cond_f

    .line 63
    :try_start_12
    invoke-direct {p0}, Lc/d/a/b/a/i/c;->p()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    .line 64
    invoke-direct {p0}, Lc/d/a/b/a/i/c;->m()V

    return-void

    .line 65
    :cond_f
    :try_start_13
    iget-boolean v5, p0, Lc/d/a/b/a/i/c;->g:Z

    if-eqz v5, :cond_10

    .line 66
    invoke-direct {p0, v10, v4}, Lc/d/a/b/a/i/c;->a(ILjava/util/List;)V

    goto :goto_7

    .line 67
    :cond_10
    invoke-direct {p0, v6, v7, v10}, Lc/d/a/b/a/i/c;->a(JI)V
    :try_end_13
    .catch Lc/d/a/b/a/d/a; {:try_start_13 .. :try_end_13} :catch_2
    .catch Lc/d/a/b/a/i/c$c; {:try_start_13 .. :try_end_13} :catch_1
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    .line 68
    :cond_11
    :goto_7
    :try_start_14
    invoke-direct {p0}, Lc/d/a/b/a/i/c;->p()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    goto/16 :goto_a

    .line 69
    :cond_12
    :try_start_15
    new-instance v4, Lc/d/a/b/a/d/a;

    const/16 v5, 0x408

    const-string v6, "chunkCount is 0"

    invoke-direct {v4, v5, v6}, Lc/d/a/b/a/d/a;-><init>(ILjava/lang/String;)V

    throw v4
    :try_end_15
    .catch Lc/d/a/b/a/d/a; {:try_start_15 .. :try_end_15} :catch_2
    .catch Lc/d/a/b/a/i/c$c; {:try_start_15 .. :try_end_15} :catch_1
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    :catchall_2
    move-exception v0

    .line 70
    :try_start_16
    iget-object v1, p0, Lc/d/a/b/a/i/c;->l:Lc/d/a/b/a/a/k;

    sget-object v2, Lc/d/a/b/a/a/k;->b:Lc/d/a/b/a/a/k;

    if-eq v1, v2, :cond_11

    .line 71
    new-instance v1, Lc/d/a/b/a/d/a;

    const/16 v2, 0x415

    invoke-direct {v1, v2, v0}, Lc/d/a/b/a/d/a;-><init>(ILjava/lang/Throwable;)V

    invoke-virtual {p0, v1}, Lc/d/a/b/a/i/c;->b(Lc/d/a/b/a/d/a;)V

    goto :goto_7

    :catch_1
    move-exception v2

    .line 72
    sget-object v3, Lc/d/a/b/a/i/c;->D:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "retry throwable for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lc/d/a/b/a/i/c$c;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lc/d/a/b/a/e/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object v3, p0, Lc/d/a/b/a/i/c;->l:Lc/d/a/b/a/a/k;

    sget-object v4, Lc/d/a/b/a/a/k;->b:Lc/d/a/b/a/a/k;

    if-eq v3, v4, :cond_11

    .line 74
    iget-object v3, p0, Lc/d/a/b/a/i/c;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v4, 0x5

    if-eqz v3, :cond_14

    iget-object v3, p0, Lc/d/a/b/a/i/c;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    if-lez v3, :cond_14

    .line 75
    iget-object v2, p0, Lc/d/a/b/a/i/c;->n:Lc/d/a/b/a/f/c;

    iget-object v3, p0, Lc/d/a/b/a/i/c;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v3

    invoke-virtual {v2, v3}, Lc/d/a/b/a/f/c;->e(I)V

    .line 76
    iget-object v2, p0, Lc/d/a/b/a/i/c;->n:Lc/d/a/b/a/f/c;

    invoke-virtual {v2, v4}, Lc/d/a/b/a/f/c;->a(I)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_3

    .line 77
    :cond_13
    :goto_8
    :try_start_17
    invoke-direct {p0}, Lc/d/a/b/a/i/c;->p()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_4

    goto/16 :goto_2

    .line 78
    :cond_14
    :try_start_18
    iget-object v3, p0, Lc/d/a/b/a/i/c;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz v3, :cond_16

    .line 79
    iget-object v3, p0, Lc/d/a/b/a/i/c;->n:Lc/d/a/b/a/f/c;

    invoke-virtual {v3}, Lc/d/a/b/a/f/c;->i0()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 80
    iget-object v2, p0, Lc/d/a/b/a/i/c;->n:Lc/d/a/b/a/f/c;

    invoke-virtual {v2, v4}, Lc/d/a/b/a/f/c;->a(I)V

    .line 81
    iget-object v2, p0, Lc/d/a/b/a/i/c;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v3, p0, Lc/d/a/b/a/i/c;->n:Lc/d/a/b/a/f/c;

    invoke-virtual {v3}, Lc/d/a/b/a/f/c;->d()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_8

    .line 82
    :cond_15
    new-instance v3, Lc/d/a/b/a/d/a;

    const/16 v4, 0x3fa

    const-string v5, "retry for Throwable, but retry Time %s all used, last error is %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lc/d/a/b/a/i/c;->n:Lc/d/a/b/a/f/c;

    invoke-virtual {v7}, Lc/d/a/b/a/f/c;->d()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v0

    invoke-virtual {v2}, Lc/d/a/b/a/i/c$c;->a()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v1

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Lc/d/a/b/a/d/a;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v3}, Lc/d/a/b/a/i/c;->b(Lc/d/a/b/a/d/a;)V

    goto/16 :goto_7

    .line 83
    :cond_16
    new-instance v0, Lc/d/a/b/a/d/a;

    const/16 v1, 0x413

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "retry for Throwable, but retain retry time is NULL, last error is"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lc/d/a/b/a/i/c$c;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lc/d/a/b/a/d/a;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lc/d/a/b/a/i/c;->b(Lc/d/a/b/a/d/a;)V

    goto/16 :goto_7

    :catch_2
    move-exception v4

    .line 84
    iget-object v5, p0, Lc/d/a/b/a/i/c;->l:Lc/d/a/b/a/a/k;

    sget-object v6, Lc/d/a/b/a/a/k;->b:Lc/d/a/b/a/a/k;

    if-eq v5, v6, :cond_11

    .line 85
    invoke-virtual {v4}, Lc/d/a/b/a/d/a;->a()I

    move-result v5

    const/16 v6, 0x401

    if-eq v5, v6, :cond_1a

    .line 86
    invoke-virtual {v4}, Lc/d/a/b/a/d/a;->a()I

    move-result v5

    const/16 v6, 0x3f1

    if-ne v5, v6, :cond_17

    goto :goto_9

    .line 87
    :cond_17
    invoke-virtual {p0, v4}, Lc/d/a/b/a/i/c;->a(Lc/d/a/b/a/d/a;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 88
    invoke-static {v4}, Lc/d/a/b/a/j/d;->a(Lc/d/a/b/a/d/a;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 89
    invoke-direct {p0}, Lc/d/a/b/a/i/c;->B()V

    .line 90
    :cond_18
    invoke-virtual {p0, v4, v2, v3}, Lc/d/a/b/a/i/c;->a(Lc/d/a/b/a/d/a;J)Lc/d/a/b/a/d/h;

    move-result-object v2

    .line 91
    sget-object v3, Lc/d/a/b/a/d/h;->a:Lc/d/a/b/a/d/h;
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_3

    if-ne v2, v3, :cond_13

    .line 92
    :try_start_19
    invoke-direct {p0}, Lc/d/a/b/a/i/c;->p()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_4

    .line 93
    invoke-direct {p0}, Lc/d/a/b/a/i/c;->m()V

    return-void

    .line 94
    :cond_19
    :try_start_1a
    invoke-virtual {p0, v4}, Lc/d/a/b/a/i/c;->b(Lc/d/a/b/a/d/a;)V

    goto/16 :goto_7

    .line 95
    :cond_1a
    :goto_9
    sget-object v0, Lc/d/a/b/a/a/k;->e:Lc/d/a/b/a/a/k;

    iput-object v0, p0, Lc/d/a/b/a/i/c;->l:Lc/d/a/b/a/a/k;
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_3

    .line 96
    :try_start_1b
    invoke-direct {p0}, Lc/d/a/b/a/i/c;->p()V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_4

    .line 97
    invoke-direct {p0}, Lc/d/a/b/a/i/c;->m()V

    return-void

    :goto_a
    invoke-direct {p0}, Lc/d/a/b/a/i/c;->m()V

    return-void

    :catchall_3
    move-exception v0

    .line 98
    :try_start_1c
    invoke-direct {p0}, Lc/d/a/b/a/i/c;->p()V

    throw v0
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_4

    :catchall_4
    move-exception v0

    .line 99
    invoke-direct {p0}, Lc/d/a/b/a/i/c;->m()V

    throw v0
.end method

.method private m()V
    .locals 7

    .line 1
    iget-object v0, p0, Lc/d/a/b/a/i/c;->l:Lc/d/a/b/a/a/k;

    sget-object v1, Lc/d/a/b/a/a/k;->b:Lc/d/a/b/a/a/k;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lc/d/a/b/a/i/c;->l:Lc/d/a/b/a/a/k;

    sget-object v1, Lc/d/a/b/a/a/k;->c:Lc/d/a/b/a/a/k;

    if-eq v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    .line 2
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lc/d/a/b/a/i/c;->t()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v2

    goto :goto_2

    :catch_0
    move-exception v1

    .line 3
    instance-of v4, v1, Lc/d/a/b/a/d/a;

    if-eqz v4, :cond_1

    .line 4
    iget-object v4, p0, Lc/d/a/b/a/i/c;->r:Lcom/ss/android/socialbase/downloader/downloader/e;

    check-cast v1, Lc/d/a/b/a/d/a;

    invoke-virtual {v4, v1}, Lcom/ss/android/socialbase/downloader/downloader/e;->a(Lc/d/a/b/a/d/a;)V

    goto :goto_1

    .line 5
    :cond_1
    iget-object v4, p0, Lc/d/a/b/a/i/c;->r:Lcom/ss/android/socialbase/downloader/downloader/e;

    new-instance v5, Lc/d/a/b/a/d/a;

    const/16 v6, 0x416

    invoke-direct {v5, v6, v1}, Lc/d/a/b/a/d/a;-><init>(ILjava/lang/Throwable;)V

    invoke-virtual {v4, v5}, Lcom/ss/android/socialbase/downloader/downloader/e;->a(Lc/d/a/b/a/d/a;)V

    :goto_1
    move v1, v3

    move v4, v1

    :goto_2
    if-nez v1, :cond_3

    if-eqz v4, :cond_2

    goto :goto_3

    .line 6
    :cond_2
    iput-boolean v3, p0, Lc/d/a/b/a/i/c;->A:Z

    .line 7
    sget-object v0, Lc/d/a/b/a/i/c;->D:Ljava/lang/String;

    const-string v1, "jump to restart"

    invoke-static {v0, v1}, Lc/d/a/b/a/e/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 8
    :cond_3
    :goto_3
    iget-object v1, p0, Lc/d/a/b/a/i/c;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    if-eqz v0, :cond_5

    .line 9
    :try_start_1
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->t()Lcom/ss/android/socialbase/downloader/impls/a;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 10
    iget-object v1, p0, Lc/d/a/b/a/i/c;->n:Lc/d/a/b/a/f/c;

    invoke-virtual {v1}, Lc/d/a/b/a/f/c;->q0()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/impls/a;->d(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 12
    iget-object v1, p0, Lc/d/a/b/a/i/c;->a:Lc/d/a/b/a/f/d;

    invoke-virtual {v1}, Lc/d/a/b/a/f/d;->e()Lc/d/a/b/a/c/e0;

    move-result-object v1

    iget-object v3, p0, Lc/d/a/b/a/i/c;->n:Lc/d/a/b/a/f/c;

    new-instance v4, Lc/d/a/b/a/d/a;

    const/16 v5, 0x3f6

    const-string v6, "removeDownloadRunnable"

    invoke-static {v0, v6}, Lc/d/a/b/a/j/d;->b(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v5, v0}, Lc/d/a/b/a/d/a;-><init>(ILjava/lang/String;)V

    iget-object v0, p0, Lc/d/a/b/a/i/c;->n:Lc/d/a/b/a/f/c;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lc/d/a/b/a/f/c;->A0()I

    move-result v2

    :cond_4
    invoke-static {v1, v3, v4, v2}, Lc/d/a/b/a/g/a;->a(Lc/d/a/b/a/c/e0;Lc/d/a/b/a/f/c;Lc/d/a/b/a/d/a;I)V

    :cond_5
    :goto_4
    return-void
.end method

.method private n()V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/d/a/b/a/i/c;->w:Lc/d/a/b/a/h/c;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lc/d/a/b/a/h/c;->c()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lc/d/a/b/a/i/c;->w:Lc/d/a/b/a/h/c;

    :cond_0
    return-void
.end method

.method private o()V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/d/a/b/a/i/c;->v:Lc/d/a/b/a/h/e;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lc/d/a/b/a/h/e;->d()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lc/d/a/b/a/i/c;->v:Lc/d/a/b/a/h/e;

    :cond_0
    return-void
.end method

.method private p()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lc/d/a/b/a/i/c;->n()V

    .line 2
    invoke-direct {p0}, Lc/d/a/b/a/i/c;->o()V

    return-void
.end method

.method private q()V
    .locals 2

    .line 1
    iget-object v0, p0, Lc/d/a/b/a/i/c;->e:Lcom/ss/android/socialbase/downloader/downloader/d;

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lc/d/a/b/a/i/c;->l:Lc/d/a/b/a/a/k;

    sget-object v1, Lc/d/a/b/a/a/k;->c:Lc/d/a/b/a/a/k;

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lc/d/a/b/a/i/c;->n:Lc/d/a/b/a/f/c;

    const/4 v1, -0x4

    invoke-virtual {v0, v1}, Lc/d/a/b/a/f/c;->a(I)V

    .line 4
    iget-object v0, p0, Lc/d/a/b/a/i/c;->e:Lcom/ss/android/socialbase/downloader/downloader/d;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/downloader/d;->c()V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lc/d/a/b/a/i/c;->l:Lc/d/a/b/a/a/k;

    sget-object v1, Lc/d/a/b/a/a/k;->b:Lc/d/a/b/a/a/k;

    if-ne v0, v1, :cond_1

    .line 6
    iget-object v0, p0, Lc/d/a/b/a/i/c;->n:Lc/d/a/b/a/f/c;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Lc/d/a/b/a/f/c;->a(I)V

    .line 7
    iget-object v0, p0, Lc/d/a/b/a/i/c;->e:Lcom/ss/android/socialbase/downloader/downloader/d;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/downloader/d;->b()V

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, Lc/d/a/b/a/i/c;->e:Lcom/ss/android/socialbase/downloader/downloader/d;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/downloader/d;->d()V

    :cond_2
    :goto_0
    return-void
.end method

.method private r()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lc/d/a/b/a/i/c;->l:Lc/d/a/b/a/a/k;

    sget-object v1, Lc/d/a/b/a/a/k;->c:Lc/d/a/b/a/a/k;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lc/d/a/b/a/i/c;->l:Lc/d/a/b/a/a/k;

    sget-object v1, Lc/d/a/b/a/a/k;->b:Lc/d/a/b/a/a/k;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private s()Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lc/d/a/b/a/i/c;->r()Z

    move-result v0

    const/4 v1, -0x2

    if-nez v0, :cond_1

    iget-object v0, p0, Lc/d/a/b/a/i/c;->n:Lc/d/a/b/a/f/c;

    invoke-virtual {v0}, Lc/d/a/b/a/f/c;->A0()I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    .line 2
    :cond_1
    :goto_0
    invoke-direct {p0}, Lc/d/a/b/a/i/c;->r()Z

    move-result v0

    if-nez v0, :cond_3

    .line 3
    iget-object v0, p0, Lc/d/a/b/a/i/c;->n:Lc/d/a/b/a/f/c;

    invoke-virtual {v0}, Lc/d/a/b/a/f/c;->A0()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 4
    sget-object v0, Lc/d/a/b/a/a/k;->b:Lc/d/a/b/a/a/k;

    iput-object v0, p0, Lc/d/a/b/a/i/c;->l:Lc/d/a/b/a/a/k;

    goto :goto_1

    .line 5
    :cond_2
    iget-object v0, p0, Lc/d/a/b/a/i/c;->n:Lc/d/a/b/a/f/c;

    invoke-virtual {v0}, Lc/d/a/b/a/f/c;->A0()I

    move-result v0

    const/4 v1, -0x4

    if-ne v0, v1, :cond_3

    .line 6
    sget-object v0, Lc/d/a/b/a/a/k;->c:Lc/d/a/b/a/a/k;

    iput-object v0, p0, Lc/d/a/b/a/i/c;->l:Lc/d/a/b/a/a/k;

    :cond_3
    :goto_1
    const/4 v0, 0x1

    return v0
.end method

.method private t()Z
    .locals 5

    .line 1
    invoke-static {}, Lc/d/a/b/a/h/a;->e()Lc/d/a/b/a/h/a;

    move-result-object v0

    invoke-virtual {v0}, Lc/d/a/b/a/h/a;->b()V

    .line 2
    iget-object v0, p0, Lc/d/a/b/a/i/c;->l:Lc/d/a/b/a/a/k;

    sget-object v1, Lc/d/a/b/a/a/k;->d:Lc/d/a/b/a/a/k;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lc/d/a/b/a/i/c;->r:Lcom/ss/android/socialbase/downloader/downloader/e;

    iget-object v1, p0, Lc/d/a/b/a/i/c;->t:Lc/d/a/b/a/d/a;

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/e;->a(Lc/d/a/b/a/d/a;)V

    goto/16 :goto_1

    .line 4
    :cond_0
    iget-object v0, p0, Lc/d/a/b/a/i/c;->l:Lc/d/a/b/a/a/k;

    sget-object v1, Lc/d/a/b/a/a/k;->c:Lc/d/a/b/a/a/k;

    if-ne v0, v1, :cond_1

    .line 5
    iget-object v0, p0, Lc/d/a/b/a/i/c;->r:Lcom/ss/android/socialbase/downloader/downloader/e;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/downloader/e;->c()V

    goto/16 :goto_1

    .line 6
    :cond_1
    iget-object v0, p0, Lc/d/a/b/a/i/c;->l:Lc/d/a/b/a/a/k;

    sget-object v1, Lc/d/a/b/a/a/k;->b:Lc/d/a/b/a/a/k;

    if-ne v0, v1, :cond_2

    .line 7
    iget-object v0, p0, Lc/d/a/b/a/i/c;->r:Lcom/ss/android/socialbase/downloader/downloader/e;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/downloader/e;->d()V

    goto/16 :goto_1

    .line 8
    :cond_2
    iget-object v0, p0, Lc/d/a/b/a/i/c;->l:Lc/d/a/b/a/a/k;

    sget-object v1, Lc/d/a/b/a/a/k;->e:Lc/d/a/b/a/a/k;

    if-ne v0, v1, :cond_3

    .line 9
    iget-object v0, p0, Lc/d/a/b/a/i/c;->r:Lcom/ss/android/socialbase/downloader/downloader/e;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/downloader/e;->g()V

    goto :goto_1

    .line 10
    :cond_3
    iget-object v0, p0, Lc/d/a/b/a/i/c;->l:Lc/d/a/b/a/a/k;

    sget-object v1, Lc/d/a/b/a/a/k;->h:Lc/d/a/b/a/a/k;

    if-ne v0, v1, :cond_4

    .line 11
    :try_start_0
    iget-object v0, p0, Lc/d/a/b/a/i/c;->r:Lcom/ss/android/socialbase/downloader/downloader/e;

    iget-object v1, p0, Lc/d/a/b/a/i/c;->C:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/e;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Lc/d/a/b/a/d/a; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 12
    iget-object v1, p0, Lc/d/a/b/a/i/c;->r:Lcom/ss/android/socialbase/downloader/downloader/e;

    invoke-virtual {v1, v0}, Lcom/ss/android/socialbase/downloader/downloader/e;->a(Lc/d/a/b/a/d/a;)V

    goto :goto_1

    .line 13
    :cond_4
    iget-object v0, p0, Lc/d/a/b/a/i/c;->l:Lc/d/a/b/a/a/k;

    sget-object v1, Lc/d/a/b/a/a/k;->i:Lc/d/a/b/a/a/k;

    const/4 v3, 0x0

    if-ne v0, v1, :cond_5

    .line 14
    iget-object v0, p0, Lc/d/a/b/a/i/c;->r:Lcom/ss/android/socialbase/downloader/downloader/e;

    iget-object v1, p0, Lc/d/a/b/a/i/c;->t:Lc/d/a/b/a/d/a;

    invoke-virtual {v0, v1, v3}, Lcom/ss/android/socialbase/downloader/downloader/e;->a(Lc/d/a/b/a/d/a;Z)V

    return v3

    .line 15
    :cond_5
    iget-object v0, p0, Lc/d/a/b/a/i/c;->l:Lc/d/a/b/a/a/k;

    sget-object v1, Lc/d/a/b/a/a/k;->g:Lc/d/a/b/a/a/k;

    if-ne v0, v1, :cond_6

    return v2

    .line 16
    :cond_6
    iget-object v0, p0, Lc/d/a/b/a/i/c;->l:Lc/d/a/b/a/a/k;

    sget-object v1, Lc/d/a/b/a/a/k;->f:Lc/d/a/b/a/a/k;

    if-ne v0, v1, :cond_8

    invoke-direct {p0}, Lc/d/a/b/a/i/c;->u()Z

    move-result v0

    if-nez v0, :cond_8

    .line 17
    sget-object v0, Lc/d/a/b/a/i/c;->D:Ljava/lang/String;

    const-string v1, "doTaskStatusHandle retryDelay"

    invoke-static {v0, v1}, Lc/d/a/b/a/e/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-direct {p0}, Lc/d/a/b/a/i/c;->w()V

    .line 19
    iget-object v0, p0, Lc/d/a/b/a/i/c;->l:Lc/d/a/b/a/a/k;

    sget-object v1, Lc/d/a/b/a/a/k;->f:Lc/d/a/b/a/a/k;

    if-ne v0, v1, :cond_7

    goto :goto_0

    :cond_7
    move v2, v3

    :goto_0
    return v2

    .line 20
    :cond_8
    :try_start_1
    invoke-direct {p0}, Lc/d/a/b/a/i/c;->v()Z

    move-result v0

    if-nez v0, :cond_9

    return v3

    .line 21
    :cond_9
    iget-object v0, p0, Lc/d/a/b/a/i/c;->r:Lcom/ss/android/socialbase/downloader/downloader/e;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/downloader/e;->f()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 22
    new-instance v1, Lc/d/a/b/a/d/a;

    const/16 v3, 0x3f0

    const-string v4, "doTaskStatusHandle onComplete"

    invoke-static {v0, v4}, Lc/d/a/b/a/j/d;->b(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v3, v0}, Lc/d/a/b/a/d/a;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v1}, Lc/d/a/b/a/i/c;->b(Lc/d/a/b/a/d/a;)V

    :goto_1
    return v2
.end method

.method private u()Z
    .locals 7

    .line 1
    iget-object v0, p0, Lc/d/a/b/a/i/c;->n:Lc/d/a/b/a/f/c;

    invoke-virtual {v0}, Lc/d/a/b/a/f/c;->K()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gt v0, v2, :cond_1

    .line 2
    iget-object v0, p0, Lc/d/a/b/a/i/c;->n:Lc/d/a/b/a/f/c;

    invoke-virtual {v0}, Lc/d/a/b/a/f/c;->q()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-lez v0, :cond_0

    iget-object v0, p0, Lc/d/a/b/a/i/c;->n:Lc/d/a/b/a/f/c;

    invoke-virtual {v0}, Lc/d/a/b/a/f/c;->q()J

    move-result-wide v3

    iget-object v0, p0, Lc/d/a/b/a/i/c;->n:Lc/d/a/b/a/f/c;

    invoke-virtual {v0}, Lc/d/a/b/a/f/c;->s()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-nez v0, :cond_0

    return v2

    :cond_0
    return v1

    .line 3
    :cond_1
    iget-object v0, p0, Lc/d/a/b/a/i/c;->m:Lcom/ss/android/socialbase/downloader/downloader/k;

    iget-object v3, p0, Lc/d/a/b/a/i/c;->n:Lc/d/a/b/a/f/c;

    invoke-virtual {v3}, Lc/d/a/b/a/f/c;->q0()I

    move-result v3

    invoke-interface {v0, v3}, Lcom/ss/android/socialbase/downloader/downloader/k;->d(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-gt v3, v2, :cond_2

    goto :goto_0

    .line 5
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc/d/a/b/a/f/b;

    if-eqz v3, :cond_4

    .line 6
    invoke-virtual {v3}, Lc/d/a/b/a/f/b;->j()Z

    move-result v3

    if-nez v3, :cond_3

    :cond_4
    return v1

    :cond_5
    return v2

    :cond_6
    :goto_0
    return v1
.end method

.method private v()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lc/d/a/b/a/i/c;->n:Lc/d/a/b/a/f/c;

    invoke-virtual {v0}, Lc/d/a/b/a/f/c;->c0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lc/d/a/b/a/i/c;->n:Lc/d/a/b/a/f/c;

    invoke-virtual {v0}, Lc/d/a/b/a/f/c;->q()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lc/d/a/b/a/f/c;->c(J)V

    .line 3
    :cond_0
    iget-object v0, p0, Lc/d/a/b/a/i/c;->n:Lc/d/a/b/a/f/c;

    invoke-virtual {v0}, Lc/d/a/b/a/f/c;->q()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    iget-object v0, p0, Lc/d/a/b/a/i/c;->n:Lc/d/a/b/a/f/c;

    invoke-virtual {v0}, Lc/d/a/b/a/f/c;->m()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lc/d/a/b/a/i/c;->n:Lc/d/a/b/a/f/c;

    invoke-virtual {v0}, Lc/d/a/b/a/f/c;->s()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    iget-object v0, p0, Lc/d/a/b/a/i/c;->n:Lc/d/a/b/a/f/c;

    invoke-virtual {v0}, Lc/d/a/b/a/f/c;->q()J

    move-result-wide v0

    iget-object v2, p0, Lc/d/a/b/a/i/c;->n:Lc/d/a/b/a/f/c;

    invoke-virtual {v2}, Lc/d/a/b/a/f/c;->s()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0

    .line 4
    :cond_2
    :goto_0
    iget-object v0, p0, Lc/d/a/b/a/i/c;->n:Lc/d/a/b/a/f/c;

    sget-object v1, Lc/d/a/b/a/a/b;->b:Lc/d/a/b/a/a/b;

    invoke-virtual {v0, v1}, Lc/d/a/b/a/f/c;->a(Lc/d/a/b/a/a/b;)V

    .line 5
    iget-object v0, p0, Lc/d/a/b/a/i/c;->n:Lc/d/a/b/a/f/c;

    invoke-virtual {v0}, Lc/d/a/b/a/f/c;->B()V

    .line 6
    iget-object v0, p0, Lc/d/a/b/a/i/c;->m:Lcom/ss/android/socialbase/downloader/downloader/k;

    iget-object v1, p0, Lc/d/a/b/a/i/c;->n:Lc/d/a/b/a/f/c;

    invoke-interface {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/k;->a(Lc/d/a/b/a/f/c;)Z

    .line 7
    iget-object v0, p0, Lc/d/a/b/a/i/c;->m:Lcom/ss/android/socialbase/downloader/downloader/k;

    iget-object v1, p0, Lc/d/a/b/a/i/c;->n:Lc/d/a/b/a/f/c;

    invoke-virtual {v1}, Lc/d/a/b/a/f/c;->q0()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/k;->h(I)V

    .line 8
    iget-object v0, p0, Lc/d/a/b/a/i/c;->n:Lc/d/a/b/a/f/c;

    invoke-static {v0}, Lc/d/a/b/a/j/d;->a(Lc/d/a/b/a/f/c;)V

    const/4 v0, 0x0

    return v0
.end method

.method private w()V
    .locals 12

    const-string v0, "extra_download_id"

    const-string v1, "com.ss.android.downloader.action.DOWNLOAD_WAKEUP"

    .line 1
    iget-object v2, p0, Lc/d/a/b/a/i/c;->q:Lcom/ss/android/socialbase/downloader/downloader/r;

    iget-object v3, p0, Lc/d/a/b/a/i/c;->n:Lc/d/a/b/a/f/c;

    invoke-virtual {v3}, Lc/d/a/b/a/f/c;->N()I

    move-result v3

    iget-object v4, p0, Lc/d/a/b/a/i/c;->n:Lc/d/a/b/a/f/c;

    invoke-virtual {v4}, Lc/d/a/b/a/f/c;->d()I

    move-result v4

    invoke-interface {v2, v3, v4}, Lcom/ss/android/socialbase/downloader/downloader/r;->a(II)J

    move-result-wide v2

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v5, 0x2

    .line 2
    :try_start_0
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3
    iget-object v7, p0, Lc/d/a/b/a/i/c;->n:Lc/d/a/b/a/f/c;

    invoke-virtual {v7}, Lc/d/a/b/a/f/c;->q0()I

    move-result v7

    invoke-virtual {v6, v0, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->y()Landroid/content/Context;

    move-result-object v7

    const-class v8, Lcom/ss/android/socialbase/downloader/impls/DownloadHandleService;

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 5
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x13

    if-lt v7, v8, :cond_0

    .line 6
    iget-object v7, p0, Lc/d/a/b/a/i/c;->s:Landroid/app/AlarmManager;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    add-long/2addr v8, v2

    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->y()Landroid/content/Context;

    move-result-object v10

    iget-object v11, p0, Lc/d/a/b/a/i/c;->n:Lc/d/a/b/a/f/c;

    invoke-virtual {v11}, Lc/d/a/b/a/f/c;->q0()I

    move-result v11

    invoke-static {v10, v11, v6, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v7, v5, v8, v9, v6}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v7, p0, Lc/d/a/b/a/i/c;->s:Landroid/app/AlarmManager;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    add-long/2addr v8, v2

    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->y()Landroid/content/Context;

    move-result-object v10

    iget-object v11, p0, Lc/d/a/b/a/i/c;->n:Lc/d/a/b/a/f/c;

    invoke-virtual {v11}, Lc/d/a/b/a/f/c;->q0()I

    move-result v11

    invoke-static {v10, v11, v6, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v7, v5, v8, v9, v6}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v6

    .line 8
    :try_start_1
    instance-of v6, v6, Ljava/lang/NoSuchMethodError;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/4 v7, 0x0

    if-eqz v6, :cond_1

    .line 9
    :try_start_2
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->y()Landroid/content/Context;

    move-result-object v1

    const-class v8, Lcom/ss/android/socialbase/downloader/impls/DownloadHandleService;

    invoke-virtual {v6, v1, v8}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 11
    iget-object v1, p0, Lc/d/a/b/a/i/c;->n:Lc/d/a/b/a/f/c;

    invoke-virtual {v1}, Lc/d/a/b/a/f/c;->q0()I

    move-result v1

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 12
    iget-object v0, p0, Lc/d/a/b/a/i/c;->s:Landroid/app/AlarmManager;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    add-long/2addr v8, v2

    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->y()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lc/d/a/b/a/i/c;->n:Lc/d/a/b/a/f/c;

    invoke-virtual {v2}, Lc/d/a/b/a/f/c;->q0()I

    move-result v2

    invoke-static {v1, v2, v6, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v5, v8, v9, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v7, 0x1

    :catchall_1
    :cond_1
    if-eqz v7, :cond_2

    .line 13
    :goto_0
    sget-object v0, Lc/d/a/b/a/a/k;->f:Lc/d/a/b/a/a/k;

    iput-object v0, p0, Lc/d/a/b/a/i/c;->l:Lc/d/a/b/a/a/k;

    .line 14
    iget-object v0, p0, Lc/d/a/b/a/i/c;->n:Lc/d/a/b/a/f/c;

    sget-object v1, Lc/d/a/b/a/a/j;->b:Lc/d/a/b/a/a/j;

    invoke-virtual {v0, v1}, Lc/d/a/b/a/f/c;->a(Lc/d/a/b/a/a/j;)V

    .line 15
    iget-object v0, p0, Lc/d/a/b/a/i/c;->m:Lcom/ss/android/socialbase/downloader/downloader/k;

    iget-object v1, p0, Lc/d/a/b/a/i/c;->n:Lc/d/a/b/a/f/c;

    invoke-interface {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/k;->a(Lc/d/a/b/a/f/c;)Z

    goto :goto_1

    .line 16
    :cond_2
    sget-object v0, Lc/d/a/b/a/a/k;->a:Lc/d/a/b/a/a/k;

    iput-object v0, p0, Lc/d/a/b/a/i/c;->l:Lc/d/a/b/a/a/k;

    :goto_1
    return-void

    :catchall_2
    move-exception v0

    .line 17
    sget-object v1, Lc/d/a/b/a/a/k;->f:Lc/d/a/b/a/a/k;

    iput-object v1, p0, Lc/d/a/b/a/i/c;->l:Lc/d/a/b/a/a/k;

    .line 18
    iget-object v1, p0, Lc/d/a/b/a/i/c;->n:Lc/d/a/b/a/f/c;

    sget-object v2, Lc/d/a/b/a/a/j;->b:Lc/d/a/b/a/a/j;

    invoke-virtual {v1, v2}, Lc/d/a/b/a/f/c;->a(Lc/d/a/b/a/a/j;)V

    .line 19
    iget-object v1, p0, Lc/d/a/b/a/i/c;->m:Lcom/ss/android/socialbase/downloader/downloader/k;

    iget-object v2, p0, Lc/d/a/b/a/i/c;->n:Lc/d/a/b/a/f/c;

    invoke-interface {v1, v2}, Lcom/ss/android/socialbase/downloader/downloader/k;->a(Lc/d/a/b/a/f/c;)Z

    .line 20
    throw v0
.end method

.method private x()V
    .locals 5

    .line 1
    iget-object v0, p0, Lc/d/a/b/a/i/c;->n:Lc/d/a/b/a/f/c;

    invoke-virtual {v0}, Lc/d/a/b/a/f/c;->q0()I

    move-result v0

    .line 2
    iget-object v1, p0, Lc/d/a/b/a/i/c;->n:Lc/d/a/b/a/f/c;

    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/downloader/b;->a(Lc/d/a/b/a/f/c;)I

    move-result v1

    .line 3
    iget-object v2, p0, Lc/d/a/b/a/i/c;->n:Lc/d/a/b/a/f/c;

    invoke-virtual {v2}, Lc/d/a/b/a/f/c;->h0()Z

    move-result v2

    if-nez v2, :cond_3

    .line 4
    iget-object v2, p0, Lc/d/a/b/a/i/c;->m:Lcom/ss/android/socialbase/downloader/downloader/k;

    invoke-interface {v2, v1}, Lcom/ss/android/socialbase/downloader/downloader/k;->c(I)Lc/d/a/b/a/f/c;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 5
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->t()Lcom/ss/android/socialbase/downloader/impls/a;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 6
    invoke-virtual {v2}, Lc/d/a/b/a/f/c;->q0()I

    move-result v4

    if-eq v4, v0, :cond_2

    iget-object v4, p0, Lc/d/a/b/a/i/c;->n:Lc/d/a/b/a/f/c;

    invoke-virtual {v2, v4}, Lc/d/a/b/a/f/c;->a(Lc/d/a/b/a/f/c;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 7
    invoke-virtual {v2}, Lc/d/a/b/a/f/c;->q0()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/ss/android/socialbase/downloader/impls/a;->a(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 8
    iget-object v3, p0, Lc/d/a/b/a/i/c;->m:Lcom/ss/android/socialbase/downloader/downloader/k;

    invoke-interface {v3, v1}, Lcom/ss/android/socialbase/downloader/downloader/k;->d(I)Ljava/util/List;

    move-result-object v3

    .line 9
    iget-object v4, p0, Lc/d/a/b/a/i/c;->n:Lc/d/a/b/a/f/c;

    invoke-static {v4}, Lc/d/a/b/a/j/d;->a(Lc/d/a/b/a/f/c;)V

    .line 10
    iget-object v4, p0, Lc/d/a/b/a/i/c;->m:Lcom/ss/android/socialbase/downloader/downloader/k;

    invoke-interface {v4, v1}, Lcom/ss/android/socialbase/downloader/downloader/k;->b(I)Z

    if-eqz v2, :cond_2

    .line 11
    invoke-virtual {v2}, Lc/d/a/b/a/f/c;->F()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 12
    iget-object v1, p0, Lc/d/a/b/a/i/c;->n:Lc/d/a/b/a/f/c;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Lc/d/a/b/a/f/c;->a(Lc/d/a/b/a/f/c;Z)V

    .line 13
    iget-object v1, p0, Lc/d/a/b/a/i/c;->m:Lcom/ss/android/socialbase/downloader/downloader/k;

    iget-object v2, p0, Lc/d/a/b/a/i/c;->n:Lc/d/a/b/a/f/c;

    invoke-interface {v1, v2}, Lcom/ss/android/socialbase/downloader/downloader/k;->a(Lc/d/a/b/a/f/c;)Z

    if-eqz v3, :cond_0

    .line 14
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/d/a/b/a/f/b;

    .line 15
    invoke-virtual {v2, v0}, Lc/d/a/b/a/f/b;->b(I)V

    .line 16
    iget-object v3, p0, Lc/d/a/b/a/i/c;->m:Lcom/ss/android/socialbase/downloader/downloader/k;

    invoke-interface {v3, v2}, Lcom/ss/android/socialbase/downloader/downloader/k;->a(Lc/d/a/b/a/f/b;)V

    goto :goto_0

    .line 17
    :cond_0
    new-instance v0, Lc/d/a/b/a/i/c$c;

    const-string v1, "retry task because id generator changed"

    invoke-direct {v0, p0, v1}, Lc/d/a/b/a/i/c$c;-><init>(Lc/d/a/b/a/i/c;Ljava/lang/String;)V

    throw v0

    .line 18
    :cond_1
    iget-object v1, p0, Lc/d/a/b/a/i/c;->m:Lcom/ss/android/socialbase/downloader/downloader/k;

    invoke-interface {v1, v0}, Lcom/ss/android/socialbase/downloader/downloader/k;->b(I)Z

    .line 19
    new-instance v0, Lc/d/a/b/a/d/a;

    const/16 v1, 0x401

    const-string v2, "another same task is downloading"

    invoke-direct {v0, v1, v2}, Lc/d/a/b/a/d/a;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_2
    return-void

    .line 20
    :cond_3
    new-instance v0, Lc/d/a/b/a/d/a;

    const/16 v1, 0x3f1

    const-string v2, "file has downloaded"

    invoke-direct {v0, v1, v2}, Lc/d/a/b/a/d/a;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method private y()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lc/d/a/b/a/i/c;->n:Lc/d/a/b/a/f/c;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v2, p0, Lc/d/a/b/a/i/c;->g:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lc/d/a/b/a/f/c;->K()I

    move-result v0

    if-gt v0, v3, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-boolean v0, p0, Lc/d/a/b/a/i/c;->h:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lc/d/a/b/a/i/c;->j:Z

    if-nez v0, :cond_1

    move v1, v3

    :cond_1
    :goto_0
    return v1
.end method

.method private z()V
    .locals 5

    .line 1
    iget-object v0, p0, Lc/d/a/b/a/i/c;->n:Lc/d/a/b/a/f/c;

    invoke-virtual {v0}, Lc/d/a/b/a/f/c;->H0()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->y()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    invoke-static {v0, v1}, Lc/d/a/b/a/j/d;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lc/d/a/b/a/d/g;

    const/16 v2, 0x3fb

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const-string v1, "download task need permission:%s"

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lc/d/a/b/a/d/g;-><init>(ILjava/lang/String;)V

    throw v0

    .line 3
    :cond_1
    :goto_0
    iget-object v0, p0, Lc/d/a/b/a/i/c;->n:Lc/d/a/b/a/f/c;

    invoke-virtual {v0}, Lc/d/a/b/a/f/c;->Z()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 4
    :cond_2
    new-instance v0, Lc/d/a/b/a/d/d;

    invoke-direct {v0}, Lc/d/a/b/a/d/d;-><init>()V

    throw v0
.end method


# virtual methods
.method public a(Lc/d/a/b/a/d/a;J)Lc/d/a/b/a/d/h;
    .locals 7

    .line 164
    iput-object p1, p0, Lc/d/a/b/a/i/c;->t:Lc/d/a/b/a/d/a;

    .line 165
    iget-object v0, p0, Lc/d/a/b/a/i/c;->n:Lc/d/a/b/a/f/c;

    neg-long p2, p2

    invoke-virtual {v0, p2, p3}, Lc/d/a/b/a/f/c;->b(J)V

    .line 166
    iget-object p2, p0, Lc/d/a/b/a/i/c;->m:Lcom/ss/android/socialbase/downloader/downloader/k;

    iget-object p3, p0, Lc/d/a/b/a/i/c;->n:Lc/d/a/b/a/f/c;

    invoke-interface {p2, p3}, Lcom/ss/android/socialbase/downloader/downloader/k;->a(Lc/d/a/b/a/f/c;)Z

    .line 167
    invoke-direct {p0}, Lc/d/a/b/a/i/c;->r()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 168
    sget-object p1, Lc/d/a/b/a/d/h;->a:Lc/d/a/b/a/d/h;

    return-object p1

    :cond_0
    const/4 p2, 0x1

    const/4 p3, 0x0

    if-eqz p1, :cond_4

    .line 169
    invoke-virtual {p1}, Lc/d/a/b/a/d/a;->a()I

    move-result v0

    const/16 v1, 0x417

    if-ne v0, v1, :cond_4

    .line 170
    iget-object v0, p0, Lc/d/a/b/a/i/c;->x:Lc/d/a/b/a/c/b0;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lc/d/a/b/a/i/c;->n:Lc/d/a/b/a/f/c;

    invoke-virtual {v0}, Lc/d/a/b/a/f/c;->O()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 171
    :cond_1
    new-instance v0, Lc/d/a/b/a/i/c$a;

    invoke-direct {v0, p0}, Lc/d/a/b/a/i/c$a;-><init>(Lc/d/a/b/a/i/c;)V

    .line 172
    iget-object v1, p0, Lc/d/a/b/a/i/c;->x:Lc/d/a/b/a/c/b0;

    invoke-interface {v1, v0}, Lc/d/a/b/a/c/b0;->a(Lc/d/a/b/a/c/a0;)Z

    move-result v1

    .line 173
    iget-object v2, p0, Lc/d/a/b/a/i/c;->n:Lc/d/a/b/a/f/c;

    invoke-virtual {v2}, Lc/d/a/b/a/f/c;->P()V

    if-eqz v1, :cond_6

    .line 174
    invoke-virtual {v0}, Lc/d/a/b/a/c/a;->a()Z

    move-result v0

    if-nez v0, :cond_2

    .line 175
    iget-object p1, p0, Lc/d/a/b/a/i/c;->r:Lcom/ss/android/socialbase/downloader/downloader/e;

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/downloader/e;->h()V

    .line 176
    sget-object p1, Lc/d/a/b/a/a/k;->g:Lc/d/a/b/a/a/k;

    iput-object p1, p0, Lc/d/a/b/a/i/c;->l:Lc/d/a/b/a/a/k;

    .line 177
    sget-object p1, Lc/d/a/b/a/d/h;->a:Lc/d/a/b/a/d/h;

    return-object p1

    :cond_2
    move v0, p2

    goto/16 :goto_4

    .line 178
    :cond_3
    :goto_0
    invoke-direct {p0, p1}, Lc/d/a/b/a/i/c;->c(Lc/d/a/b/a/d/a;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 179
    sget-object p1, Lc/d/a/b/a/d/h;->a:Lc/d/a/b/a/d/h;

    return-object p1

    .line 180
    :cond_4
    invoke-virtual {p1}, Lc/d/a/b/a/d/a;->a()I

    move-result v0

    const/16 v1, 0x3ee

    if-eq v0, v1, :cond_7

    .line 181
    invoke-virtual {p1}, Lc/d/a/b/a/d/a;->a()I

    move-result v0

    const/16 v1, 0x3ff

    if-ne v0, v1, :cond_5

    invoke-virtual {p1}, Lc/d/a/b/a/d/a;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 182
    invoke-virtual {p1}, Lc/d/a/b/a/d/a;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ENOSPC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_1

    .line 183
    :cond_5
    invoke-direct {p0, p1}, Lc/d/a/b/a/i/c;->c(Lc/d/a/b/a/d/a;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 184
    sget-object p1, Lc/d/a/b/a/d/h;->a:Lc/d/a/b/a/d/h;

    return-object p1

    :cond_6
    move v0, p3

    goto :goto_4

    .line 185
    :cond_7
    :goto_1
    iget-object v0, p0, Lc/d/a/b/a/i/c;->y:Lc/d/a/b/a/c/w;

    if-nez v0, :cond_8

    .line 186
    invoke-virtual {p0, p1}, Lc/d/a/b/a/i/c;->b(Lc/d/a/b/a/d/a;)V

    .line 187
    sget-object p1, Lc/d/a/b/a/d/h;->a:Lc/d/a/b/a/d/h;

    return-object p1

    .line 188
    :cond_8
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 189
    new-instance v6, Lc/d/a/b/a/i/c$b;

    invoke-direct {v6, p0, v0}, Lc/d/a/b/a/i/c$b;-><init>(Lc/d/a/b/a/i/c;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 190
    instance-of v1, p1, Lc/d/a/b/a/d/e;

    const-wide/16 v2, -0x1

    if-eqz v1, :cond_9

    .line 191
    move-object v1, p1

    check-cast v1, Lc/d/a/b/a/d/e;

    invoke-virtual {v1}, Lc/d/a/b/a/d/e;->c()J

    move-result-wide v2

    .line 192
    invoke-virtual {v1}, Lc/d/a/b/a/d/e;->d()J

    move-result-wide v4

    goto :goto_2

    :cond_9
    move-wide v4, v2

    .line 193
    :goto_2
    monitor-enter p0

    .line 194
    :try_start_0
    iget-object v1, p0, Lc/d/a/b/a/i/c;->y:Lc/d/a/b/a/c/w;

    invoke-interface/range {v1 .. v6}, Lc/d/a/b/a/c/w;->a(JJLc/d/a/b/a/c/v;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 195
    invoke-direct {p0}, Lc/d/a/b/a/i/c;->v()Z

    .line 196
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_b

    .line 197
    iget-object p1, p0, Lc/d/a/b/a/i/c;->l:Lc/d/a/b/a/a/k;

    sget-object p2, Lc/d/a/b/a/a/k;->g:Lc/d/a/b/a/a/k;

    if-eq p1, p2, :cond_a

    .line 198
    sget-object p1, Lc/d/a/b/a/a/k;->g:Lc/d/a/b/a/a/k;

    iput-object p1, p0, Lc/d/a/b/a/i/c;->l:Lc/d/a/b/a/a/k;

    .line 199
    iget-object p1, p0, Lc/d/a/b/a/i/c;->r:Lcom/ss/android/socialbase/downloader/downloader/e;

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/downloader/e;->h()V

    .line 200
    :cond_a
    sget-object p1, Lc/d/a/b/a/d/h;->a:Lc/d/a/b/a/d/h;

    monitor-exit p0

    return-object p1

    :cond_b
    move v0, p2

    goto :goto_3

    .line 201
    :cond_c
    iget-object v0, p0, Lc/d/a/b/a/i/c;->l:Lc/d/a/b/a/a/k;

    sget-object v1, Lc/d/a/b/a/a/k;->g:Lc/d/a/b/a/a/k;

    if-ne v0, v1, :cond_d

    .line 202
    sget-object p1, Lc/d/a/b/a/d/h;->a:Lc/d/a/b/a/d/h;

    monitor-exit p0

    return-object p1

    :cond_d
    move v0, p3

    .line 203
    :goto_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    invoke-direct {p0, p1}, Lc/d/a/b/a/i/c;->c(Lc/d/a/b/a/d/a;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 205
    sget-object p1, Lc/d/a/b/a/d/h;->a:Lc/d/a/b/a/d/h;

    return-object p1

    :cond_e
    :goto_4
    if-nez v0, :cond_f

    .line 206
    invoke-direct {p0}, Lc/d/a/b/a/i/c;->h()V

    .line 207
    :cond_f
    iget-object v0, p0, Lc/d/a/b/a/i/c;->r:Lcom/ss/android/socialbase/downloader/downloader/e;

    iget-object v1, p0, Lc/d/a/b/a/i/c;->l:Lc/d/a/b/a/a/k;

    sget-object v2, Lc/d/a/b/a/a/k;->f:Lc/d/a/b/a/a/k;

    if-ne v1, v2, :cond_10

    goto :goto_5

    :cond_10
    move p2, p3

    :goto_5
    invoke-virtual {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/e;->a(Lc/d/a/b/a/d/a;Z)V

    .line 208
    iget-object p1, p0, Lc/d/a/b/a/i/c;->l:Lc/d/a/b/a/a/k;

    sget-object p2, Lc/d/a/b/a/a/k;->f:Lc/d/a/b/a/a/k;

    if-ne p1, p2, :cond_11

    sget-object p1, Lc/d/a/b/a/d/h;->a:Lc/d/a/b/a/d/h;

    goto :goto_6

    :cond_11
    sget-object p1, Lc/d/a/b/a/d/h;->b:Lc/d/a/b/a/d/h;

    :goto_6
    return-object p1

    :catchall_0
    move-exception p1

    .line 209
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public declared-synchronized a(I)Lc/d/a/b/a/f/b;
    .locals 4

    monitor-enter p0

    .line 210
    :try_start_0
    iget-object v0, p0, Lc/d/a/b/a/i/c;->n:Lc/d/a/b/a/f/c;

    invoke-virtual {v0}, Lc/d/a/b/a/f/c;->K()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    .line 211
    monitor-exit p0

    return-object v2

    .line 212
    :cond_0
    :try_start_1
    iget-object v0, p0, Lc/d/a/b/a/i/c;->m:Lcom/ss/android/socialbase/downloader/downloader/k;

    iget-object v1, p0, Lc/d/a/b/a/i/c;->n:Lc/d/a/b/a/f/c;

    invoke-virtual {v1}, Lc/d/a/b/a/f/c;->q0()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/k;->d(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 213
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_2

    :cond_1
    const/4 v1, 0x0

    .line 214
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 215
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc/d/a/b/a/f/b;

    if-nez v3, :cond_2

    goto :goto_1

    .line 216
    :cond_2
    invoke-direct {p0, v3, p1}, Lc/d/a/b/a/i/c;->a(Lc/d/a/b/a/f/b;I)Lc/d/a/b/a/f/b;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_3

    .line 217
    monitor-exit p0

    return-object v3

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 218
    :cond_4
    monitor-exit p0

    return-object v2

    .line 219
    :cond_5
    :goto_2
    monitor-exit p0

    return-object v2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a()V
    .locals 2

    .line 3
    sget-object v0, Lc/d/a/b/a/a/k;->b:Lc/d/a/b/a/a/k;

    iput-object v0, p0, Lc/d/a/b/a/i/c;->l:Lc/d/a/b/a/a/k;

    .line 4
    iget-object v0, p0, Lc/d/a/b/a/i/c;->e:Lcom/ss/android/socialbase/downloader/downloader/d;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/downloader/d;->b()V

    goto :goto_0

    .line 6
    :cond_0
    invoke-direct {p0}, Lc/d/a/b/a/i/c;->p()V

    .line 7
    sget-object v0, Lc/d/a/b/a/a/k;->b:Lc/d/a/b/a/a/k;

    iput-object v0, p0, Lc/d/a/b/a/i/c;->l:Lc/d/a/b/a/a/k;

    .line 8
    invoke-direct {p0}, Lc/d/a/b/a/i/c;->m()V

    .line 9
    :goto_0
    :try_start_0
    iget-object v0, p0, Lc/d/a/b/a/i/c;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/d/a/b/a/i/b;

    if-eqz v1, :cond_1

    .line 11
    invoke-virtual {v1}, Lc/d/a/b/a/i/b;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    return-void
.end method

.method public a(Lc/d/a/b/a/d/a;Z)V
    .locals 2

    .line 155
    sget-object v0, Lc/d/a/b/a/i/c;->D:Ljava/lang/String;

    const-string v1, "onAllChunkRetryWithReset"

    invoke-static {v0, v1}, Lc/d/a/b/a/e/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    sget-object v0, Lc/d/a/b/a/a/k;->i:Lc/d/a/b/a/a/k;

    iput-object v0, p0, Lc/d/a/b/a/i/c;->l:Lc/d/a/b/a/a/k;

    .line 157
    iput-object p1, p0, Lc/d/a/b/a/i/c;->t:Lc/d/a/b/a/d/a;

    .line 158
    :try_start_0
    iget-object v0, p0, Lc/d/a/b/a/i/c;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 159
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/d/a/b/a/i/b;

    if-eqz v1, :cond_0

    .line 160
    invoke-virtual {v1}, Lc/d/a/b/a/i/b;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 161
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    const/4 v0, 0x0

    if-eqz p2, :cond_2

    .line 162
    invoke-direct {p0, p1}, Lc/d/a/b/a/i/c;->c(Lc/d/a/b/a/d/a;)Z

    move-result v0

    :cond_2
    if-nez v0, :cond_3

    .line 163
    invoke-direct {p0}, Lc/d/a/b/a/i/c;->B()V

    :cond_3
    return-void
.end method

.method public a(Lc/d/a/b/a/h/c;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 220
    :try_start_0
    invoke-interface {p1}, Lc/d/a/b/a/h/c;->b()I

    move-result p1

    .line 221
    iget-object v0, p0, Lc/d/a/b/a/i/c;->n:Lc/d/a/b/a/f/c;

    invoke-virtual {v0, p1}, Lc/d/a/b/a/f/c;->d(I)V

    .line 222
    iget-object v0, p0, Lc/d/a/b/a/i/c;->n:Lc/d/a/b/a/f/c;

    invoke-static {p1}, Lc/d/a/b/a/j/b;->a(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lc/d/a/b/a/f/c;->e(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 223
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public a(Lc/d/a/b/a/i/b;)V
    .locals 1

    .line 145
    iget-boolean v0, p0, Lc/d/a/b/a/i/c;->f:Z

    if-nez v0, :cond_0

    .line 146
    monitor-enter p0

    .line 147
    :try_start_0
    iget-object v0, p0, Lc/d/a/b/a/i/c;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 148
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method public a(J)Z
    .locals 1

    .line 144
    iget-object v0, p0, Lc/d/a/b/a/i/c;->r:Lcom/ss/android/socialbase/downloader/downloader/e;

    invoke-virtual {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/e;->a(J)Z

    move-result p1

    return p1
.end method

.method public a(Lc/d/a/b/a/d/a;)Z
    .locals 2

    .line 149
    invoke-static {p1}, Lc/d/a/b/a/j/d;->b(Lc/d/a/b/a/d/a;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 150
    iget-boolean p1, p0, Lc/d/a/b/a/i/c;->f:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lc/d/a/b/a/i/c;->b:Z

    if-nez p1, :cond_0

    .line 151
    iget-object p1, p0, Lc/d/a/b/a/i/c;->n:Lc/d/a/b/a/f/c;

    invoke-static {p1}, Lc/d/a/b/a/j/d;->a(Lc/d/a/b/a/f/c;)V

    .line 152
    iput-boolean v1, p0, Lc/d/a/b/a/i/c;->b:Z

    :cond_0
    return v1

    .line 153
    :cond_1
    iget-object v0, p0, Lc/d/a/b/a/i/c;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-gtz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lc/d/a/b/a/i/c;->n:Lc/d/a/b/a/f/c;

    invoke-virtual {v0}, Lc/d/a/b/a/f/c;->j0()Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p1, :cond_4

    .line 154
    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lc/d/a/b/a/i/c;->n:Lc/d/a/b/a/f/c;

    invoke-virtual {v0}, Lc/d/a/b/a/f/c;->k0()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    if-eqz p1, :cond_5

    instance-of p1, p1, Lc/d/a/b/a/d/g;

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    :cond_5
    :goto_0
    return v1
.end method

.method public b()V
    .locals 2

    .line 1
    sget-object v0, Lc/d/a/b/a/a/k;->c:Lc/d/a/b/a/a/k;

    iput-object v0, p0, Lc/d/a/b/a/i/c;->l:Lc/d/a/b/a/a/k;

    .line 2
    iget-object v0, p0, Lc/d/a/b/a/i/c;->e:Lcom/ss/android/socialbase/downloader/downloader/d;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/downloader/d;->c()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0}, Lc/d/a/b/a/i/c;->p()V

    .line 5
    sget-object v0, Lc/d/a/b/a/a/k;->c:Lc/d/a/b/a/a/k;

    iput-object v0, p0, Lc/d/a/b/a/i/c;->l:Lc/d/a/b/a/a/k;

    .line 6
    invoke-direct {p0}, Lc/d/a/b/a/i/c;->m()V

    .line 7
    :goto_0
    :try_start_0
    iget-object v0, p0, Lc/d/a/b/a/i/c;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/d/a/b/a/i/b;

    if-eqz v1, :cond_1

    .line 9
    invoke-virtual {v1}, Lc/d/a/b/a/i/b;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    return-void
.end method

.method public b(Lc/d/a/b/a/d/a;)V
    .locals 3

    .line 30
    sget-object v0, Lc/d/a/b/a/i/c;->D:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc/d/a/b/a/e/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    sget-object v0, Lc/d/a/b/a/a/k;->d:Lc/d/a/b/a/a/k;

    iput-object v0, p0, Lc/d/a/b/a/i/c;->l:Lc/d/a/b/a/a/k;

    .line 32
    iput-object p1, p0, Lc/d/a/b/a/i/c;->t:Lc/d/a/b/a/d/a;

    .line 33
    :try_start_0
    iget-object p1, p0, Lc/d/a/b/a/i/c;->d:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 34
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/d/a/b/a/i/b;

    if-eqz v0, :cond_0

    .line 35
    invoke-virtual {v0}, Lc/d/a/b/a/i/b;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 36
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    return-void
.end method

.method public c()Lc/d/a/b/a/f/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/d/a/b/a/i/c;->a:Lc/d/a/b/a/f/d;

    return-object v0
.end method

.method public d()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lc/d/a/b/a/i/c;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public e()I
    .locals 1

    .line 1
    iget-object v0, p0, Lc/d/a/b/a/i/c;->n:Lc/d/a/b/a/f/c;

    invoke-virtual {v0}, Lc/d/a/b/a/f/c;->q0()I

    move-result v0

    return v0
.end method

.method public f()V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/d/a/b/a/i/c;->r:Lcom/ss/android/socialbase/downloader/downloader/e;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/downloader/e;->a()V

    return-void
.end method

.method public run()V
    .locals 5

    const/16 v0, 0xa

    .line 1
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 2
    :try_start_0
    iget-object v0, p0, Lc/d/a/b/a/i/c;->a:Lc/d/a/b/a/f/d;

    invoke-virtual {v0}, Lc/d/a/b/a/f/d;->c()Lc/d/a/b/a/c/c0;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lc/d/a/b/a/c/c0;->a()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lc/d/a/b/a/i/c;->r:Lcom/ss/android/socialbase/downloader/downloader/e;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/downloader/e;->e()V

    return-void

    :catchall_0
    move-exception v0

    .line 5
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 6
    :cond_0
    invoke-direct {p0}, Lc/d/a/b/a/i/c;->j()Z

    move-result v0

    if-nez v0, :cond_2

    .line 7
    iget-object v0, p0, Lc/d/a/b/a/i/c;->a:Lc/d/a/b/a/f/d;

    invoke-virtual {v0}, Lc/d/a/b/a/f/d;->e()Lc/d/a/b/a/c/e0;

    move-result-object v0

    iget-object v1, p0, Lc/d/a/b/a/i/c;->n:Lc/d/a/b/a/f/c;

    new-instance v2, Lc/d/a/b/a/d/a;

    const/16 v3, 0x3eb

    const-string v4, "task status is invalid"

    invoke-direct {v2, v3, v4}, Lc/d/a/b/a/d/a;-><init>(ILjava/lang/String;)V

    iget-object v3, p0, Lc/d/a/b/a/i/c;->n:Lc/d/a/b/a/f/c;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lc/d/a/b/a/f/c;->A0()I

    move-result v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    invoke-static {v0, v1, v2, v3}, Lc/d/a/b/a/g/a;->a(Lc/d/a/b/a/c/e0;Lc/d/a/b/a/f/c;Lc/d/a/b/a/d/a;I)V

    return-void

    .line 8
    :cond_2
    :goto_1
    invoke-direct {p0}, Lc/d/a/b/a/i/c;->l()V

    .line 9
    iget-boolean v0, p0, Lc/d/a/b/a/i/c;->A:Z

    if-nez v0, :cond_3

    goto/16 :goto_2

    .line 10
    :cond_3
    iget v0, p0, Lc/d/a/b/a/i/c;->z:I

    if-lez v0, :cond_4

    .line 11
    iget v0, p0, Lc/d/a/b/a/i/c;->z:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lc/d/a/b/a/i/c;->z:I

    goto :goto_1

    .line 12
    :cond_4
    iget-object v0, p0, Lc/d/a/b/a/i/c;->n:Lc/d/a/b/a/f/c;

    invoke-virtual {v0}, Lc/d/a/b/a/f/c;->q()J

    move-result-wide v0

    iget-object v2, p0, Lc/d/a/b/a/i/c;->n:Lc/d/a/b/a/f/c;

    invoke-virtual {v2}, Lc/d/a/b/a/f/c;->s()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5

    .line 13
    sget-object v0, Lc/d/a/b/a/i/c;->D:Ljava/lang/String;

    iget-object v1, p0, Lc/d/a/b/a/i/c;->n:Lc/d/a/b/a/f/c;

    invoke-virtual {v1}, Lc/d/a/b/a/f/c;->n0()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc/d/a/b/a/e/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iget-object v0, p0, Lc/d/a/b/a/i/c;->r:Lcom/ss/android/socialbase/downloader/downloader/e;

    new-instance v1, Lc/d/a/b/a/d/g;

    const/16 v2, 0x403

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "current bytes is not equals to total bytes, bytes invalid retry status is : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lc/d/a/b/a/i/c;->n:Lc/d/a/b/a/f/c;

    invoke-virtual {v4}, Lc/d/a/b/a/f/c;->r()Lc/d/a/b/a/a/b;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lc/d/a/b/a/d/g;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/e;->a(Lc/d/a/b/a/d/a;)V

    goto :goto_2

    .line 15
    :cond_5
    iget-object v0, p0, Lc/d/a/b/a/i/c;->n:Lc/d/a/b/a/f/c;

    invoke-virtual {v0}, Lc/d/a/b/a/f/c;->q()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_6

    .line 16
    sget-object v0, Lc/d/a/b/a/i/c;->D:Ljava/lang/String;

    iget-object v1, p0, Lc/d/a/b/a/i/c;->n:Lc/d/a/b/a/f/c;

    invoke-virtual {v1}, Lc/d/a/b/a/f/c;->n0()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc/d/a/b/a/e/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    iget-object v0, p0, Lc/d/a/b/a/i/c;->r:Lcom/ss/android/socialbase/downloader/downloader/e;

    new-instance v1, Lc/d/a/b/a/d/g;

    const/16 v2, 0x402

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "curBytes is 0, bytes invalid retry status is : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lc/d/a/b/a/i/c;->n:Lc/d/a/b/a/f/c;

    invoke-virtual {v4}, Lc/d/a/b/a/f/c;->r()Lc/d/a/b/a/a/b;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lc/d/a/b/a/d/g;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/e;->a(Lc/d/a/b/a/d/a;)V

    goto :goto_2

    .line 18
    :cond_6
    iget-object v0, p0, Lc/d/a/b/a/i/c;->n:Lc/d/a/b/a/f/c;

    invoke-virtual {v0}, Lc/d/a/b/a/f/c;->s()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2

    .line 19
    sget-object v0, Lc/d/a/b/a/i/c;->D:Ljava/lang/String;

    iget-object v1, p0, Lc/d/a/b/a/i/c;->n:Lc/d/a/b/a/f/c;

    invoke-virtual {v1}, Lc/d/a/b/a/f/c;->n0()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc/d/a/b/a/e/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    iget-object v0, p0, Lc/d/a/b/a/i/c;->r:Lcom/ss/android/socialbase/downloader/downloader/e;

    new-instance v1, Lc/d/a/b/a/d/g;

    const/16 v2, 0x414

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TotalBytes is 0, bytes invalid retry status is : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lc/d/a/b/a/i/c;->n:Lc/d/a/b/a/f/c;

    invoke-virtual {v4}, Lc/d/a/b/a/f/c;->r()Lc/d/a/b/a/a/b;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lc/d/a/b/a/d/g;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/e;->a(Lc/d/a/b/a/d/a;)V

    :goto_2
    return-void

    :catchall_1
    move-exception v0

    .line 21
    throw v0
.end method
