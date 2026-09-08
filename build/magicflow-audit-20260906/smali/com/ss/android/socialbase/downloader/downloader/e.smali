.class public Lcom/ss/android/socialbase/downloader/downloader/e;
.super Ljava/lang/Object;
.source "DownloadStatusHandler.java"


# static fields
.field private static final p:Ljava/lang/String; = "e"


# instance fields
.field private a:Lc/d/a/b/a/f/c;

.field private final b:Lcom/ss/android/socialbase/downloader/downloader/k;

.field private final c:Landroid/os/Handler;

.field private d:Lc/d/a/b/a/f/d;

.field private e:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lc/d/a/b/a/c/d0;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lc/d/a/b/a/c/d0;",
            ">;"
        }
    .end annotation
.end field

.field private g:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lc/d/a/b/a/c/d0;",
            ">;"
        }
    .end annotation
.end field

.field private h:Z

.field private volatile i:J

.field private final j:Ljava/util/concurrent/atomic/AtomicLong;

.field private k:Z

.field private l:I

.field private m:J

.field private n:Lc/d/a/b/a/c/s;

.field private o:Lc/d/a/b/a/c/e0;


# direct methods
.method public constructor <init>(Lc/d/a/b/a/f/d;Landroid/os/Handler;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->h:Z

    const-wide/16 v1, 0x0

    .line 3
    iput-wide v1, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->i:J

    .line 4
    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->j:Ljava/util/concurrent/atomic/AtomicLong;

    .line 5
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->k:Z

    .line 6
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->d:Lc/d/a/b/a/f/d;

    .line 7
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/downloader/e;->j()V

    .line 8
    iput-object p2, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->c:Landroid/os/Handler;

    .line 9
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->p()Lcom/ss/android/socialbase/downloader/downloader/k;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->b:Lcom/ss/android/socialbase/downloader/downloader/k;

    return-void
.end method

.method static synthetic a(Lcom/ss/android/socialbase/downloader/downloader/e;)Lc/d/a/b/a/f/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->a:Lc/d/a/b/a/f/c;

    return-object p0
.end method

.method private a(ILc/d/a/b/a/d/a;)V
    .locals 1

    const/4 v0, 0x1

    .line 37
    invoke-direct {p0, p1, p2, v0}, Lcom/ss/android/socialbase/downloader/downloader/e;->a(ILc/d/a/b/a/d/a;Z)V

    return-void
.end method

.method private a(ILc/d/a/b/a/d/a;Z)V
    .locals 6

    .line 38
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->a:Lc/d/a/b/a/f/c;

    invoke-virtual {v0}, Lc/d/a/b/a/f/c;->A0()I

    move-result v0

    const/4 v1, -0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    return-void

    .line 39
    :cond_0
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/downloader/e;->j()V

    .line 40
    invoke-static {p1}, Lc/d/a/b/a/a/f;->d(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 41
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->a:Lc/d/a/b/a/f/c;

    invoke-virtual {v0}, Lc/d/a/b/a/f/c;->i()V

    .line 42
    :cond_1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->o:Lc/d/a/b/a/c/e0;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    instance-of v4, v0, Lc/d/a/b/a/c/j;

    if-eqz v4, :cond_3

    .line 43
    check-cast v0, Lc/d/a/b/a/c/j;

    invoke-virtual {v0}, Lc/d/a/b/a/c/j;->a()[I

    move-result-object v0

    if-eqz v0, :cond_3

    .line 44
    array-length v4, v0

    if-lez v4, :cond_3

    move v4, v3

    .line 45
    :goto_0
    array-length v5, v0

    if-ge v4, v5, :cond_3

    .line 46
    aget v5, v0, v4

    if-ne p1, v5, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    move v0, v3

    .line 47
    :goto_1
    invoke-static {p1}, Lc/d/a/b/a/a/f;->c(I)Z

    move-result v4

    if-nez v4, :cond_4

    if-eqz v0, :cond_6

    .line 48
    :cond_4
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->n:Lc/d/a/b/a/c/s;

    if-eqz v0, :cond_5

    .line 49
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->n:Lc/d/a/b/a/c/s;

    iget-object v4, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->a:Lc/d/a/b/a/f/c;

    invoke-interface {v0, v4, p2, p1}, Lc/d/a/b/a/c/s;->a(Lc/d/a/b/a/f/c;Lc/d/a/b/a/d/a;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    :catchall_0
    :cond_5
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->o:Lc/d/a/b/a/c/e0;

    iget-object v4, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->a:Lc/d/a/b/a/f/c;

    invoke-static {v0, v4, p2, p1}, Lc/d/a/b/a/g/a;->a(Lc/d/a/b/a/c/e0;Lc/d/a/b/a/f/c;Lc/d/a/b/a/d/a;I)V

    :cond_6
    const/4 v0, 0x6

    if-ne p1, v0, :cond_7

    .line 51
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->a:Lc/d/a/b/a/f/c;

    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Lc/d/a/b/a/f/c;->a(I)V

    goto :goto_2

    :cond_7
    const/4 v0, -0x6

    if-ne p1, v0, :cond_8

    .line 52
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->a:Lc/d/a/b/a/f/c;

    invoke-virtual {v0, v1}, Lc/d/a/b/a/f/c;->a(I)V

    goto :goto_2

    .line 53
    :cond_8
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->a:Lc/d/a/b/a/f/c;

    invoke-virtual {v0, p1}, Lc/d/a/b/a/f/c;->a(I)V

    .line 54
    :goto_2
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->a:Lc/d/a/b/a/f/c;

    invoke-virtual {v0}, Lc/d/a/b/a/f/c;->A0()I

    move-result v0

    if-eq v0, v1, :cond_9

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->a:Lc/d/a/b/a/f/c;

    invoke-virtual {v0}, Lc/d/a/b/a/f/c;->A0()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_c

    .line 55
    :cond_9
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->a:Lc/d/a/b/a/f/c;

    invoke-virtual {v0}, Lc/d/a/b/a/f/c;->Q()Lc/d/a/b/a/a/j;

    move-result-object v0

    sget-object v1, Lc/d/a/b/a/a/j;->c:Lc/d/a/b/a/a/j;

    if-ne v0, v1, :cond_a

    .line 56
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->a:Lc/d/a/b/a/f/c;

    sget-object v1, Lc/d/a/b/a/a/j;->d:Lc/d/a/b/a/a/j;

    invoke-virtual {v0, v1}, Lc/d/a/b/a/f/c;->a(Lc/d/a/b/a/a/j;)V

    .line 57
    :cond_a
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->a:Lc/d/a/b/a/f/c;

    invoke-virtual {v0}, Lc/d/a/b/a/f/c;->R()Lc/d/a/b/a/a/a;

    move-result-object v0

    sget-object v1, Lc/d/a/b/a/a/a;->d:Lc/d/a/b/a/a/a;

    if-ne v0, v1, :cond_b

    .line 58
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->a:Lc/d/a/b/a/f/c;

    sget-object v1, Lc/d/a/b/a/a/a;->e:Lc/d/a/b/a/a/a;

    invoke-virtual {v0, v1}, Lc/d/a/b/a/f/c;->a(Lc/d/a/b/a/a/a;)V

    .line 59
    :cond_b
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->a:Lc/d/a/b/a/f/c;

    invoke-virtual {v0}, Lc/d/a/b/a/f/c;->r()Lc/d/a/b/a/a/b;

    move-result-object v0

    sget-object v1, Lc/d/a/b/a/a/b;->c:Lc/d/a/b/a/a/b;

    if-ne v0, v1, :cond_c

    .line 60
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->a:Lc/d/a/b/a/f/c;

    sget-object v1, Lc/d/a/b/a/a/b;->d:Lc/d/a/b/a/a/b;

    invoke-virtual {v0, v1}, Lc/d/a/b/a/f/c;->a(Lc/d/a/b/a/a/b;)V

    .line 61
    :cond_c
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->f:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->a:Lc/d/a/b/a/f/c;

    invoke-static {p1, v0, v2, v1, p2}, Lc/d/a/b/a/j/c;->a(ILandroid/util/SparseArray;ZLc/d/a/b/a/f/c;Lc/d/a/b/a/d/a;)V

    const/4 v0, -0x4

    if-ne p1, v0, :cond_d

    return-void

    :cond_d
    if-eqz p3, :cond_10

    .line 62
    iget-object p3, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->e:Landroid/util/SparseArray;

    if-eqz p3, :cond_e

    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result p3

    if-gtz p3, :cond_f

    :cond_e
    iget-object p3, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->g:Landroid/util/SparseArray;

    if-eqz p3, :cond_10

    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result p3

    if-lez p3, :cond_10

    iget-object p3, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->a:Lc/d/a/b/a/f/c;

    invoke-virtual {p3}, Lc/d/a/b/a/f/c;->x()Z

    move-result p3

    if-eqz p3, :cond_10

    :cond_f
    iget-object p3, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->c:Landroid/os/Handler;

    if-eqz p3, :cond_10

    .line 63
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->a:Lc/d/a/b/a/f/c;

    invoke-virtual {v0}, Lc/d/a/b/a/f/c;->q0()I

    move-result v0

    invoke-virtual {p3, p1, v0, v3, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_3

    .line 64
    :cond_10
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->t()Lcom/ss/android/socialbase/downloader/impls/a;

    move-result-object p2

    if-eqz p2, :cond_11

    .line 65
    iget-object p3, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->a:Lc/d/a/b/a/f/c;

    invoke-virtual {p3}, Lc/d/a/b/a/f/c;->q0()I

    move-result p3

    invoke-virtual {p2, p3, p1}, Lcom/ss/android/socialbase/downloader/impls/a;->a(II)V

    :cond_11
    :goto_3
    return-void
.end method

.method static synthetic a(Lcom/ss/android/socialbase/downloader/downloader/e;ILc/d/a/b/a/d/a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/e;->a(ILc/d/a/b/a/d/a;)V

    return-void
.end method

.method private a(JZ)Z
    .locals 2

    .line 30
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->a:Lc/d/a/b/a/f/c;

    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->q()J

    move-result-wide p1

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->a:Lc/d/a/b/a/f/c;

    invoke-virtual {v0}, Lc/d/a/b/a/f/c;->s()J

    move-result-wide v0

    cmp-long p1, p1, v0

    const/4 p2, 0x0

    if-nez p1, :cond_0

    .line 31
    :try_start_0
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->b:Lcom/ss/android/socialbase/downloader/downloader/k;

    iget-object p3, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->a:Lc/d/a/b/a/f/c;

    invoke-virtual {p3}, Lc/d/a/b/a/f/c;->q0()I

    move-result p3

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->a:Lc/d/a/b/a/f/c;

    invoke-virtual {v0}, Lc/d/a/b/a/f/c;->q()J

    move-result-wide v0

    invoke-interface {p1, p3, v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/k;->a(IJ)Lc/d/a/b/a/f/c;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 32
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return p2

    .line 33
    :cond_0
    iget-boolean p1, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->h:Z

    const/4 v0, 0x4

    if-eqz p1, :cond_1

    .line 34
    iput-boolean p2, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->h:Z

    .line 35
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->a:Lc/d/a/b/a/f/c;

    invoke-virtual {p1, v0}, Lc/d/a/b/a/f/c;->a(I)V

    :cond_1
    const/4 p1, 0x0

    .line 36
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->a:Lc/d/a/b/a/f/c;

    invoke-virtual {v1}, Lc/d/a/b/a/f/c;->d0()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p3, :cond_2

    const/4 p2, 0x1

    :cond_2
    invoke-direct {p0, v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/e;->a(ILc/d/a/b/a/d/a;Z)V

    return p3
.end method

.method static synthetic b(Lcom/ss/android/socialbase/downloader/downloader/e;)Lcom/ss/android/socialbase/downloader/downloader/k;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->b:Lcom/ss/android/socialbase/downloader/downloader/k;

    return-object p0
.end method

.method private b(Lc/d/a/b/a/d/a;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 8
    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Landroid/database/sqlite/SQLiteFullException;

    if-eqz v0, :cond_0

    .line 9
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->b:Lcom/ss/android/socialbase/downloader/downloader/k;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->a:Lc/d/a/b/a/f/c;

    invoke-virtual {v1}, Lc/d/a/b/a/f/c;->q0()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/k;->b(I)Z
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 10
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    goto :goto_0

    .line 11
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->b:Lcom/ss/android/socialbase/downloader/downloader/k;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->a:Lc/d/a/b/a/f/c;

    invoke-virtual {v1}, Lc/d/a/b/a/f/c;->q0()I

    move-result v1

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->a:Lc/d/a/b/a/f/c;

    invoke-virtual {v2}, Lc/d/a/b/a/f/c;->q()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lcom/ss/android/socialbase/downloader/downloader/k;->d(IJ)Lc/d/a/b/a/f/c;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 12
    :catch_1
    :try_start_2
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->b:Lcom/ss/android/socialbase/downloader/downloader/k;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->a:Lc/d/a/b/a/f/c;

    invoke-virtual {v1}, Lc/d/a/b/a/f/c;->q0()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/k;->b(I)Z
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    .line 13
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    :goto_0
    const/4 v0, -0x1

    .line 14
    invoke-direct {p0, v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/e;->a(ILc/d/a/b/a/d/a;)V

    return-void
.end method

.method private b(Lc/d/a/b/a/d/a;Z)V
    .locals 2

    .line 21
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->b:Lcom/ss/android/socialbase/downloader/downloader/k;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->a:Lc/d/a/b/a/f/c;

    invoke-virtual {v1}, Lc/d/a/b/a/f/c;->q0()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/k;->e(I)Lc/d/a/b/a/f/c;

    if-eqz p2, :cond_0

    const/4 p2, 0x7

    goto :goto_0

    :cond_0
    const/4 p2, 0x5

    .line 22
    :goto_0
    invoke-direct {p0, p2, p1}, Lcom/ss/android/socialbase/downloader/downloader/e;->a(ILc/d/a/b/a/d/a;)V

    return-void
.end method

.method private b(J)Z
    .locals 8

    .line 15
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->k:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 16
    iput-boolean v1, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->k:Z

    return v1

    .line 17
    :cond_0
    iget-wide v2, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->i:J

    sub-long v2, p1, v2

    .line 18
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->j:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->m:J

    cmp-long v0, v4, v6

    if-gez v0, :cond_2

    iget v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->l:I

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-ltz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    .line 19
    iput-wide p1, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->i:J

    .line 20
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->j:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    :cond_3
    return v1
.end method

.method static synthetic c(Lcom/ss/android/socialbase/downloader/downloader/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/downloader/e;->l()V

    return-void
.end method

.method static synthetic i()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/e;->p:Ljava/lang/String;

    return-object v0
.end method

.method private j()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->d:Lc/d/a/b/a/f/d;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lc/d/a/b/a/f/d;->a()Lc/d/a/b/a/f/c;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->a:Lc/d/a/b/a/f/c;

    .line 3
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->d:Lc/d/a/b/a/f/d;

    sget-object v1, Lc/d/a/b/a/a/h;->a:Lc/d/a/b/a/a/h;

    invoke-virtual {v0, v1}, Lc/d/a/b/a/f/d;->a(Lc/d/a/b/a/a/h;)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->e:Landroid/util/SparseArray;

    .line 4
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->d:Lc/d/a/b/a/f/d;

    sget-object v1, Lc/d/a/b/a/a/h;->c:Lc/d/a/b/a/a/h;

    invoke-virtual {v0, v1}, Lc/d/a/b/a/f/d;->a(Lc/d/a/b/a/a/h;)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->g:Landroid/util/SparseArray;

    .line 5
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->d:Lc/d/a/b/a/f/d;

    sget-object v1, Lc/d/a/b/a/a/h;->b:Lc/d/a/b/a/a/h;

    invoke-virtual {v0, v1}, Lc/d/a/b/a/f/d;->a(Lc/d/a/b/a/a/h;)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->f:Landroid/util/SparseArray;

    .line 6
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->d:Lc/d/a/b/a/f/d;

    invoke-virtual {v0}, Lc/d/a/b/a/f/d;->d()Lc/d/a/b/a/c/s;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->n:Lc/d/a/b/a/c/s;

    .line 7
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->d:Lc/d/a/b/a/f/d;

    invoke-virtual {v0}, Lc/d/a/b/a/f/d;->e()Lc/d/a/b/a/c/e0;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->o:Lc/d/a/b/a/c/e0;

    :cond_0
    return-void
.end method

.method private k()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->l()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lcom/ss/android/socialbase/downloader/downloader/e$a;

    invoke-direct {v1, p0}, Lcom/ss/android/socialbase/downloader/downloader/e$a;-><init>(Lcom/ss/android/socialbase/downloader/downloader/e;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private l()V
    .locals 4

    .line 1
    :try_start_0
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/e;->p:Ljava/lang/String;

    const-string v1, "saveFileAsTargetName onSuccess"

    invoke-static {v0, v1}, Lc/d/a/b/a/e/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->a:Lc/d/a/b/a/f/c;

    invoke-virtual {v0}, Lc/d/a/b/a/f/c;->H()Lc/d/a/b/a/a/i;

    move-result-object v0

    .line 3
    sget-object v1, Lc/d/a/b/a/a/i;->a:Lc/d/a/b/a/a/i;

    if-eq v0, v1, :cond_3

    const-string v1, ""

    .line 4
    sget-object v2, Lc/d/a/b/a/a/i;->b:Lc/d/a/b/a/a/i;

    if-ne v0, v2, :cond_0

    const-string v1, "md5 invalid because of file not exist"

    goto :goto_0

    .line 5
    :cond_0
    sget-object v2, Lc/d/a/b/a/a/i;->c:Lc/d/a/b/a/a/i;

    if-ne v0, v2, :cond_1

    const-string v1, "md5 invalid because of file md5 is empty"

    goto :goto_0

    .line 6
    :cond_1
    sget-object v2, Lc/d/a/b/a/a/i;->d:Lc/d/a/b/a/a/i;

    if-ne v0, v2, :cond_2

    const-string v1, "md5 invalid because of file md5 is not equals to task md5"

    .line 7
    :cond_2
    :goto_0
    new-instance v0, Lc/d/a/b/a/d/a;

    const/16 v2, 0x40a

    invoke-direct {v0, v2, v1}, Lc/d/a/b/a/d/a;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/downloader/e;->a(Lc/d/a/b/a/d/a;)V

    .line 8
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->a:Lc/d/a/b/a/f/c;

    invoke-static {v0}, Lc/d/a/b/a/j/d;->a(Lc/d/a/b/a/f/c;)V

    return-void

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->a:Lc/d/a/b/a/f/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lc/d/a/b/a/f/c;->d(Z)V

    const/4 v0, -0x3

    const/4 v1, 0x0

    .line 10
    invoke-direct {p0, v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/e;->a(ILc/d/a/b/a/d/a;)V

    .line 11
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->b:Lcom/ss/android/socialbase/downloader/downloader/k;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->a:Lc/d/a/b/a/f/c;

    invoke-virtual {v1}, Lc/d/a/b/a/f/c;->q0()I

    move-result v1

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->a:Lc/d/a/b/a/f/c;

    invoke-virtual {v2}, Lc/d/a/b/a/f/c;->s()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lcom/ss/android/socialbase/downloader/downloader/k;->b(IJ)Lc/d/a/b/a/f/c;

    .line 12
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->b:Lcom/ss/android/socialbase/downloader/downloader/k;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->a:Lc/d/a/b/a/f/c;

    invoke-virtual {v1}, Lc/d/a/b/a/f/c;->q0()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/k;->h(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 13
    new-instance v1, Lc/d/a/b/a/d/a;

    const/16 v2, 0x3f0

    const-string v3, "onCompleted"

    invoke-static {v0, v3}, Lc/d/a/b/a/j/d;->b(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lc/d/a/b/a/d/a;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/ss/android/socialbase/downloader/downloader/e;->a(Lc/d/a/b/a/d/a;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->a:Lc/d/a/b/a/f/c;

    invoke-virtual {v0}, Lc/d/a/b/a/f/c;->S()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->a:Lc/d/a/b/a/f/c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lc/d/a/b/a/f/c;->a(I)V

    .line 5
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/downloader/e;->k()V

    return-void
.end method

.method public a(JLjava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 6
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->a:Lc/d/a/b/a/f/c;

    invoke-virtual {v0, p1, p2}, Lc/d/a/b/a/f/c;->c(J)V

    .line 7
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->a:Lc/d/a/b/a/f/c;

    invoke-virtual {v0, p3}, Lc/d/a/b/a/f/c;->b(Ljava/lang/String;)V

    .line 8
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->a:Lc/d/a/b/a/f/c;

    invoke-virtual {v0}, Lc/d/a/b/a/f/c;->r0()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->a:Lc/d/a/b/a/f/c;

    invoke-virtual {v0, p4}, Lc/d/a/b/a/f/c;->c(Ljava/lang/String;)V

    .line 10
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->b:Lcom/ss/android/socialbase/downloader/downloader/k;

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->a:Lc/d/a/b/a/f/c;

    invoke-virtual {v0}, Lc/d/a/b/a/f/c;->q0()I

    move-result v2

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    invoke-interface/range {v1 .. v6}, Lcom/ss/android/socialbase/downloader/downloader/k;->a(IJLjava/lang/String;Ljava/lang/String;)Lc/d/a/b/a/f/c;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p3

    .line 11
    invoke-virtual {p3}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const/4 p3, 0x3

    const/4 p4, 0x0

    .line 12
    invoke-direct {p0, p3, p4}, Lcom/ss/android/socialbase/downloader/downloader/e;->a(ILc/d/a/b/a/d/a;)V

    .line 13
    iget-object p3, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->a:Lc/d/a/b/a/f/c;

    invoke-virtual {p3, p1, p2}, Lc/d/a/b/a/f/c;->d(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->m:J

    .line 14
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->a:Lc/d/a/b/a/f/c;

    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->f0()I

    move-result p1

    iput p1, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->l:I

    const/4 p1, 0x1

    .line 15
    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->h:Z

    return-void
.end method

.method public a(Lc/d/a/b/a/d/a;)V
    .locals 2

    .line 24
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->a:Lc/d/a/b/a/f/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lc/d/a/b/a/f/c;->c(Z)V

    .line 25
    invoke-direct {p0, p1}, Lcom/ss/android/socialbase/downloader/downloader/e;->b(Lc/d/a/b/a/d/a;)V

    return-void
.end method

.method public a(Lc/d/a/b/a/d/a;Z)V
    .locals 3

    .line 21
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->a:Lc/d/a/b/a/f/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lc/d/a/b/a/f/c;->c(Z)V

    .line 22
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->j:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/e;->b(Lc/d/a/b/a/d/a;Z)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .line 26
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/e;->p:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCompleteForFileExist existTargetFileName is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " but curName is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->a:Lc/d/a/b/a/f/c;

    invoke-virtual {v2}, Lc/d/a/b/a/f/c;->r0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc/d/a/b/a/e/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->b:Lcom/ss/android/socialbase/downloader/downloader/k;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->a:Lc/d/a/b/a/f/c;

    invoke-interface {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/k;->a(Lc/d/a/b/a/f/c;)Z

    .line 28
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->a:Lc/d/a/b/a/f/c;

    invoke-static {v0, p1}, Lc/d/a/b/a/j/d;->a(Lc/d/a/b/a/f/c;Ljava/lang/String;)V

    const/4 p1, -0x3

    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, p1, v0}, Lcom/ss/android/socialbase/downloader/downloader/e;->a(ILc/d/a/b/a/d/a;)V

    return-void
.end method

.method public declared-synchronized a(J)Z
    .locals 1

    monitor-enter p0

    .line 16
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->j:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 17
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->a:Lc/d/a/b/a/f/c;

    invoke-virtual {v0, p1, p2}, Lc/d/a/b/a/f/c;->b(J)V

    .line 18
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p1

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/e;->b(J)Z

    move-result v0

    .line 20
    invoke-direct {p0, p1, p2, v0}, Lcom/ss/android/socialbase/downloader/downloader/e;->a(JZ)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public b()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->a:Lc/d/a/b/a/f/c;

    invoke-virtual {v0}, Lc/d/a/b/a/f/c;->S()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->a:Lc/d/a/b/a/f/c;

    invoke-virtual {v0}, Lc/d/a/b/a/f/c;->T()V

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->b:Lcom/ss/android/socialbase/downloader/downloader/k;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->a:Lc/d/a/b/a/f/c;

    invoke-virtual {v1}, Lc/d/a/b/a/f/c;->q0()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/k;->a(I)Lc/d/a/b/a/f/c;

    .line 5
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->a:Lc/d/a/b/a/f/c;

    invoke-virtual {v0}, Lc/d/a/b/a/f/c;->G()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x6

    .line 6
    invoke-direct {p0, v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/e;->a(ILc/d/a/b/a/d/a;)V

    :cond_1
    const/4 v0, 0x2

    .line 7
    invoke-direct {p0, v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/e;->a(ILc/d/a/b/a/d/a;)V

    return-void
.end method

.method public c()V
    .locals 2

    const/4 v0, -0x4

    const/4 v1, 0x0

    .line 2
    invoke-direct {p0, v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/e;->a(ILc/d/a/b/a/d/a;)V

    return-void
.end method

.method public d()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->a:Lc/d/a/b/a/f/c;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Lc/d/a/b/a/f/c;->a(I)V

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->b:Lcom/ss/android/socialbase/downloader/downloader/k;

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->a:Lc/d/a/b/a/f/c;

    invoke-virtual {v2}, Lc/d/a/b/a/f/c;->q0()I

    move-result v2

    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->a:Lc/d/a/b/a/f/c;

    invoke-virtual {v3}, Lc/d/a/b/a/f/c;->q()J

    move-result-wide v3

    invoke-interface {v0, v2, v3, v4}, Lcom/ss/android/socialbase/downloader/downloader/k;->c(IJ)Lc/d/a/b/a/f/c;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    :goto_0
    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, v1, v0}, Lcom/ss/android/socialbase/downloader/downloader/e;->a(ILc/d/a/b/a/d/a;)V

    return-void
.end method

.method public e()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->a:Lc/d/a/b/a/f/c;

    const/4 v1, -0x7

    invoke-virtual {v0, v1}, Lc/d/a/b/a/f/c;->a(I)V

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->b:Lcom/ss/android/socialbase/downloader/downloader/k;

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->a:Lc/d/a/b/a/f/c;

    invoke-virtual {v2}, Lc/d/a/b/a/f/c;->q0()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/ss/android/socialbase/downloader/downloader/k;->i(I)Lc/d/a/b/a/f/c;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteException;->printStackTrace()V

    :goto_0
    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, v1, v0}, Lcom/ss/android/socialbase/downloader/downloader/e;->a(ILc/d/a/b/a/d/a;)V

    return-void
.end method

.method public f()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->a:Lc/d/a/b/a/f/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lc/d/a/b/a/f/c;->c(Z)V

    .line 2
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->a:Lc/d/a/b/a/f/c;

    invoke-virtual {v0}, Lc/d/a/b/a/f/c;->m()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->a:Lc/d/a/b/a/f/c;

    invoke-virtual {v0}, Lc/d/a/b/a/f/c;->q()J

    move-result-wide v0

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->a:Lc/d/a/b/a/f/c;

    invoke-virtual {v2}, Lc/d/a/b/a/f/c;->s()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/e;->p:Ljava/lang/String;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->a:Lc/d/a/b/a/f/c;

    invoke-virtual {v1}, Lc/d/a/b/a/f/c;->n0()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc/d/a/b/a/e/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    new-instance v0, Lc/d/a/b/a/d/g;

    const/16 v1, 0x403

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "current bytes is not equals to total bytes, bytes changed with process : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->a:Lc/d/a/b/a/f/c;

    invoke-virtual {v3}, Lc/d/a/b/a/f/c;->r()Lc/d/a/b/a/a/b;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lc/d/a/b/a/d/g;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/downloader/e;->a(Lc/d/a/b/a/d/a;)V

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->a:Lc/d/a/b/a/f/c;

    invoke-virtual {v0}, Lc/d/a/b/a/f/c;->q()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1

    .line 6
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/e;->p:Ljava/lang/String;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->a:Lc/d/a/b/a/f/c;

    invoke-virtual {v1}, Lc/d/a/b/a/f/c;->n0()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc/d/a/b/a/e/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    new-instance v0, Lc/d/a/b/a/d/g;

    const/16 v1, 0x402

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "curBytes is 0, bytes changed with process : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->a:Lc/d/a/b/a/f/c;

    invoke-virtual {v3}, Lc/d/a/b/a/f/c;->r()Lc/d/a/b/a/a/b;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lc/d/a/b/a/d/g;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/downloader/e;->a(Lc/d/a/b/a/d/a;)V

    return-void

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->a:Lc/d/a/b/a/f/c;

    invoke-virtual {v0}, Lc/d/a/b/a/f/c;->m()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->a:Lc/d/a/b/a/f/c;

    invoke-virtual {v0}, Lc/d/a/b/a/f/c;->s()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_2

    .line 9
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/e;->p:Ljava/lang/String;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->a:Lc/d/a/b/a/f/c;

    invoke-virtual {v1}, Lc/d/a/b/a/f/c;->n0()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc/d/a/b/a/e/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    new-instance v0, Lc/d/a/b/a/d/g;

    const/16 v1, 0x414

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TotalBytes is 0, bytes changed with process : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->a:Lc/d/a/b/a/f/c;

    invoke-virtual {v3}, Lc/d/a/b/a/f/c;->r()Lc/d/a/b/a/a/b;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lc/d/a/b/a/d/g;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/downloader/e;->a(Lc/d/a/b/a/d/a;)V

    return-void

    .line 11
    :cond_2
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/e;->p:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->a:Lc/d/a/b/a/f/c;

    invoke-virtual {v2}, Lc/d/a/b/a/f/c;->r0()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " onCompleted start save file as target name"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lc/d/a/b/a/e/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->o:Lc/d/a/b/a/c/e0;

    .line 13
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->d:Lc/d/a/b/a/f/d;

    if-eqz v1, :cond_3

    .line 14
    invoke-virtual {v1}, Lc/d/a/b/a/f/d;->e()Lc/d/a/b/a/c/e0;

    move-result-object v0

    .line 15
    :cond_3
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->a:Lc/d/a/b/a/f/c;

    invoke-virtual {v1}, Lc/d/a/b/a/f/c;->n()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 16
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->a:Lc/d/a/b/a/f/c;

    new-instance v2, Lcom/ss/android/socialbase/downloader/downloader/e$b;

    invoke-direct {v2, p0}, Lcom/ss/android/socialbase/downloader/downloader/e$b;-><init>(Lcom/ss/android/socialbase/downloader/downloader/e;)V

    invoke-static {v1, v0, v2}, Lc/d/a/b/a/j/d;->a(Lc/d/a/b/a/f/c;Lc/d/a/b/a/c/e0;Lc/d/a/b/a/c/f;)V

    goto :goto_0

    .line 17
    :cond_4
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->a:Lc/d/a/b/a/f/c;

    new-instance v1, Lcom/ss/android/socialbase/downloader/downloader/e$c;

    invoke-direct {v1, p0}, Lcom/ss/android/socialbase/downloader/downloader/e$c;-><init>(Lcom/ss/android/socialbase/downloader/downloader/e;)V

    invoke-static {v0, v1}, Lc/d/a/b/a/j/d;->a(Lc/d/a/b/a/f/c;Lc/d/a/b/a/c/f;)V

    :goto_0
    return-void
.end method

.method public g()V
    .locals 4

    .line 1
    sget-object v0, Lcom/ss/android/socialbase/downloader/downloader/e;->p:Ljava/lang/String;

    const-string v1, "onCompleteForFileExist"

    invoke-static {v0, v1}, Lc/d/a/b/a/e/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x3

    const/4 v1, 0x0

    .line 2
    invoke-direct {p0, v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/e;->a(ILc/d/a/b/a/d/a;)V

    .line 3
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->b:Lcom/ss/android/socialbase/downloader/downloader/k;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->a:Lc/d/a/b/a/f/c;

    invoke-virtual {v1}, Lc/d/a/b/a/f/c;->q0()I

    move-result v1

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->a:Lc/d/a/b/a/f/c;

    invoke-virtual {v2}, Lc/d/a/b/a/f/c;->s()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lcom/ss/android/socialbase/downloader/downloader/k;->b(IJ)Lc/d/a/b/a/f/c;

    .line 4
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->b:Lcom/ss/android/socialbase/downloader/downloader/k;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->a:Lc/d/a/b/a/f/c;

    invoke-virtual {v1}, Lc/d/a/b/a/f/c;->q0()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/ss/android/socialbase/downloader/downloader/k;->h(I)V

    return-void
.end method

.method public h()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->a:Lc/d/a/b/a/f/c;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lc/d/a/b/a/f/c;->a(I)V

    .line 2
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->a:Lc/d/a/b/a/f/c;

    sget-object v2, Lc/d/a/b/a/a/a;->b:Lc/d/a/b/a/a/a;

    invoke-virtual {v0, v2}, Lc/d/a/b/a/f/c;->a(Lc/d/a/b/a/a/a;)V

    .line 3
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->t()Lcom/ss/android/socialbase/downloader/impls/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/downloader/e;->a:Lc/d/a/b/a/f/c;

    invoke-virtual {v2}, Lc/d/a/b/a/f/c;->q0()I

    move-result v2

    invoke-virtual {v0, v2, v1}, Lcom/ss/android/socialbase/downloader/impls/a;->a(II)V

    :cond_0
    return-void
.end method
