.class public Lcom/ss/android/socialbase/downloader/downloader/d;
.super Ljava/lang/Object;
.source "DownloadResponseHandler.java"


# static fields
.field private static r:Ljava/lang/String; = "d"


# instance fields
.field private final a:Lc/d/a/b/a/f/c;

.field private final b:Lc/d/a/b/a/f/b;

.field private final c:Lc/d/a/b/a/h/e;

.field private d:Lcom/ss/android/socialbase/downloader/downloader/k;

.field private e:Lcom/ss/android/socialbase/downloader/impls/k;

.field private f:Lc/d/a/b/a/b/c;

.field private g:Lc/d/a/b/a/f/f;

.field private volatile h:Z

.field private volatile i:Z

.field private final j:Lc/d/a/b/a/i/e;

.field private k:J

.field private l:I

.field private m:J

.field private volatile n:J

.field private volatile o:J

.field private volatile p:J

.field private volatile q:J


# direct methods
.method public constructor <init>(Lc/d/a/b/a/f/c;Lc/d/a/b/a/h/e;Lc/d/a/b/a/f/b;Lc/d/a/b/a/i/e;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->p:J

    .line 3
    iput-wide v0, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->q:J

    .line 4
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->a:Lc/d/a/b/a/f/c;

    .line 5
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->p()Lcom/ss/android/socialbase/downloader/downloader/k;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->d:Lcom/ss/android/socialbase/downloader/downloader/k;

    .line 6
    iget-object p1, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->d:Lcom/ss/android/socialbase/downloader/downloader/k;

    instance-of v0, p1, Lcom/ss/android/socialbase/downloader/impls/d;

    if-eqz v0, :cond_0

    .line 7
    check-cast p1, Lcom/ss/android/socialbase/downloader/impls/d;

    .line 8
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/impls/d;->a()Lcom/ss/android/socialbase/downloader/impls/k;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->e:Lcom/ss/android/socialbase/downloader/impls/k;

    .line 9
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/impls/d;->d()Lc/d/a/b/a/b/c;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->f:Lc/d/a/b/a/b/c;

    .line 10
    :cond_0
    iput-object p2, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->c:Lc/d/a/b/a/h/e;

    .line 11
    iput-object p3, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->b:Lc/d/a/b/a/f/b;

    .line 12
    iput-object p4, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->j:Lc/d/a/b/a/i/e;

    .line 13
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->u()I

    move-result p1

    iput p1, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->l:I

    .line 14
    invoke-virtual {p3}, Lc/d/a/b/a/f/b;->o()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->k:J

    .line 15
    iget-wide p1, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->k:J

    iput-wide p1, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->m:J

    .line 16
    sget-object p1, Lcom/ss/android/socialbase/downloader/downloader/d;->r:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "DownloadResponseHandler isHostChunk():"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lc/d/a/b/a/f/b;->e()Z

    move-result p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p4, " downloadChunk!=null:"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lc/d/a/b/a/f/b;->d()Lc/d/a/b/a/f/b;

    move-result-object p4

    const/4 v0, 0x0

    if-eqz p4, :cond_1

    const/4 p4, 0x1

    goto :goto_0

    :cond_1
    move p4, v0

    :goto_0
    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lc/d/a/b/a/e/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-virtual {p3}, Lc/d/a/b/a/f/b;->e()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 18
    invoke-virtual {p3}, Lc/d/a/b/a/f/b;->r()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->o:J

    goto :goto_1

    .line 19
    :cond_2
    invoke-virtual {p3, v0}, Lc/d/a/b/a/f/b;->c(Z)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->o:J

    .line 20
    :goto_1
    invoke-virtual {p3}, Lc/d/a/b/a/f/b;->q()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->n:J

    return-void
.end method

.method static synthetic a(Lcom/ss/android/socialbase/downloader/downloader/d;)Lc/d/a/b/a/h/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->c:Lc/d/a/b/a/h/e;

    return-object p0
.end method

.method private a(Lcom/ss/android/socialbase/downloader/downloader/k;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    if-nez v7, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 17
    instance-of v8, v7, Lc/d/a/b/a/b/c;

    if-eqz v8, :cond_1

    .line 18
    invoke-static {}, Lc/d/a/b/a/j/d;->c()Z

    move-result v1

    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/impls/l;->a(Z)Lcom/ss/android/socialbase/downloader/downloader/n;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    move-object v15, v1

    .line 19
    iget-object v1, v0, Lcom/ss/android/socialbase/downloader/downloader/d;->b:Lc/d/a/b/a/f/b;

    invoke-virtual {v1}, Lc/d/a/b/a/f/b;->e()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 20
    iget-object v1, v0, Lcom/ss/android/socialbase/downloader/downloader/d;->b:Lc/d/a/b/a/f/b;

    invoke-virtual {v1}, Lc/d/a/b/a/f/b;->f()Lc/d/a/b/a/f/b;

    move-result-object v1

    goto :goto_0

    .line 21
    :cond_2
    iget-object v1, v0, Lcom/ss/android/socialbase/downloader/downloader/d;->b:Lc/d/a/b/a/f/b;

    :goto_0
    move-object v5, v1

    if-eqz v5, :cond_7

    .line 22
    iget-wide v1, v0, Lcom/ss/android/socialbase/downloader/downloader/d;->k:J

    invoke-virtual {v5, v1, v2}, Lc/d/a/b/a/f/b;->b(J)V

    if-eqz v8, :cond_3

    if-eqz v15, :cond_3

    .line 23
    invoke-virtual {v5}, Lc/d/a/b/a/f/b;->l()I

    move-result v10

    invoke-virtual {v5}, Lc/d/a/b/a/f/b;->t()I

    move-result v11

    invoke-virtual {v5}, Lc/d/a/b/a/f/b;->b()I

    move-result v12

    iget-wide v13, v0, Lcom/ss/android/socialbase/downloader/downloader/d;->k:J

    move-object v9, v15

    invoke-interface/range {v9 .. v14}, Lcom/ss/android/socialbase/downloader/downloader/n;->a(IIIJ)V

    move-object v11, v5

    goto :goto_1

    .line 24
    :cond_3
    invoke-virtual {v5}, Lc/d/a/b/a/f/b;->l()I

    move-result v2

    invoke-virtual {v5}, Lc/d/a/b/a/f/b;->t()I

    move-result v3

    invoke-virtual {v5}, Lc/d/a/b/a/f/b;->b()I

    move-result v4

    iget-wide v9, v0, Lcom/ss/android/socialbase/downloader/downloader/d;->k:J

    move-object/from16 v1, p1

    move-object v11, v5

    move-wide v5, v9

    invoke-interface/range {v1 .. v6}, Lcom/ss/android/socialbase/downloader/downloader/k;->a(IIIJ)V

    .line 25
    :goto_1
    invoke-virtual {v11}, Lc/d/a/b/a/f/b;->i()Z

    move-result v1

    if-eqz v1, :cond_9

    const/4 v1, 0x0

    .line 26
    invoke-virtual {v11}, Lc/d/a/b/a/f/b;->j()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 27
    invoke-virtual {v11}, Lc/d/a/b/a/f/b;->k()J

    move-result-wide v2

    .line 28
    iget-wide v4, v0, Lcom/ss/android/socialbase/downloader/downloader/d;->k:J

    cmp-long v4, v2, v4

    if-lez v4, :cond_5

    if-eqz v8, :cond_4

    if-eqz v15, :cond_4

    .line 29
    invoke-virtual {v11}, Lc/d/a/b/a/f/b;->l()I

    move-result v1

    invoke-virtual {v11}, Lc/d/a/b/a/f/b;->b()I

    move-result v4

    invoke-interface {v15, v1, v4, v2, v3}, Lcom/ss/android/socialbase/downloader/downloader/n;->a(IIJ)V

    goto :goto_2

    .line 30
    :cond_4
    invoke-virtual {v11}, Lc/d/a/b/a/f/b;->l()I

    move-result v1

    invoke-virtual {v11}, Lc/d/a/b/a/f/b;->b()I

    move-result v4

    invoke-interface {v7, v1, v4, v2, v3}, Lcom/ss/android/socialbase/downloader/downloader/k;->a(IIJ)V

    :goto_2
    const/4 v1, 0x1

    :cond_5
    if-nez v1, :cond_9

    if-eqz v8, :cond_6

    if-eqz v15, :cond_6

    .line 31
    invoke-virtual {v11}, Lc/d/a/b/a/f/b;->l()I

    move-result v1

    invoke-virtual {v11}, Lc/d/a/b/a/f/b;->b()I

    move-result v2

    iget-wide v3, v0, Lcom/ss/android/socialbase/downloader/downloader/d;->k:J

    invoke-interface {v15, v1, v2, v3, v4}, Lcom/ss/android/socialbase/downloader/downloader/n;->a(IIJ)V

    goto :goto_3

    .line 32
    :cond_6
    invoke-virtual {v11}, Lc/d/a/b/a/f/b;->l()I

    move-result v1

    invoke-virtual {v11}, Lc/d/a/b/a/f/b;->b()I

    move-result v2

    iget-wide v3, v0, Lcom/ss/android/socialbase/downloader/downloader/d;->k:J

    invoke-interface {v7, v1, v2, v3, v4}, Lcom/ss/android/socialbase/downloader/downloader/k;->a(IIJ)V

    goto :goto_3

    .line 33
    :cond_7
    iget-object v1, v0, Lcom/ss/android/socialbase/downloader/downloader/d;->b:Lc/d/a/b/a/f/b;

    invoke-virtual {v1}, Lc/d/a/b/a/f/b;->e()Z

    move-result v1

    if-eqz v1, :cond_9

    if-eqz v8, :cond_8

    if-eqz v15, :cond_8

    .line 34
    iget-object v1, v0, Lcom/ss/android/socialbase/downloader/downloader/d;->b:Lc/d/a/b/a/f/b;

    invoke-virtual {v1}, Lc/d/a/b/a/f/b;->l()I

    move-result v1

    iget-object v2, v0, Lcom/ss/android/socialbase/downloader/downloader/d;->b:Lc/d/a/b/a/f/b;

    invoke-virtual {v2}, Lc/d/a/b/a/f/b;->t()I

    move-result v2

    iget-wide v3, v0, Lcom/ss/android/socialbase/downloader/downloader/d;->k:J

    invoke-interface {v15, v1, v2, v3, v4}, Lcom/ss/android/socialbase/downloader/downloader/n;->a(IIJ)V

    goto :goto_3

    .line 35
    :cond_8
    iget-object v1, v0, Lcom/ss/android/socialbase/downloader/downloader/d;->b:Lc/d/a/b/a/f/b;

    invoke-virtual {v1}, Lc/d/a/b/a/f/b;->l()I

    move-result v1

    iget-object v2, v0, Lcom/ss/android/socialbase/downloader/downloader/d;->b:Lc/d/a/b/a/f/b;

    invoke-virtual {v2}, Lc/d/a/b/a/f/b;->t()I

    move-result v2

    iget-wide v3, v0, Lcom/ss/android/socialbase/downloader/downloader/d;->k:J

    invoke-interface {v7, v1, v2, v3, v4}, Lcom/ss/android/socialbase/downloader/downloader/k;->a(IIJ)V

    :cond_9
    :goto_3
    return-void
.end method

.method private a(Z)V
    .locals 6

    .line 10
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 11
    iget-wide v2, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->k:J

    iget-wide v4, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->p:J

    sub-long/2addr v2, v4

    .line 12
    iget-wide v4, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->q:J

    sub-long v4, v0, v4

    if-nez p1, :cond_0

    .line 13
    invoke-static {v2, v3, v4, v5}, Lc/d/a/b/a/j/d;->a(JJ)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 14
    :cond_0
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/downloader/d;->g()V

    .line 15
    iget-wide v2, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->k:J

    iput-wide v2, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->p:J

    .line 16
    iput-wide v0, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->q:J

    :cond_1
    return-void
.end method

.method private e()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->h:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->i:Z

    if-eqz v0, :cond_0

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

.method private f()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->c:Lc/d/a/b/a/h/e;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->l()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    new-instance v1, Lcom/ss/android/socialbase/downloader/downloader/d$a;

    invoke-direct {v1, p0}, Lcom/ss/android/socialbase/downloader/downloader/d$a;-><init>(Lcom/ss/android/socialbase/downloader/downloader/d;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method private declared-synchronized g()V
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    :try_start_0
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->g:Lc/d/a/b/a/f/f;

    invoke-virtual {v2}, Lc/d/a/b/a/f/f;->a()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move v2, v0

    :goto_0
    if-eqz v2, :cond_4

    .line 2
    :try_start_1
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->a:Lc/d/a/b/a/f/c;

    invoke-virtual {v2}, Lc/d/a/b/a/f/c;->K()I

    move-result v2

    if-le v2, v1, :cond_0

    move v0, v1

    .line 3
    :cond_0
    invoke-static {}, Lc/d/a/b/a/j/d;->c()Z

    move-result v1

    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/impls/l;->a(Z)Lcom/ss/android/socialbase/downloader/downloader/n;

    move-result-object v1

    if-eqz v0, :cond_2

    .line 4
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->f:Lc/d/a/b/a/b/c;

    invoke-direct {p0, v0}, Lcom/ss/android/socialbase/downloader/downloader/d;->a(Lcom/ss/android/socialbase/downloader/downloader/k;)V

    if-eqz v1, :cond_1

    .line 5
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->a:Lc/d/a/b/a/f/c;

    invoke-interface {v1, v0}, Lcom/ss/android/socialbase/downloader/downloader/n;->c(Lc/d/a/b/a/f/c;)Z

    goto :goto_2

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->f:Lc/d/a/b/a/b/c;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->a:Lc/d/a/b/a/f/c;

    invoke-virtual {v1}, Lc/d/a/b/a/f/c;->q0()I

    move-result v1

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->a:Lc/d/a/b/a/f/c;

    invoke-virtual {v2}, Lc/d/a/b/a/f/c;->q()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lc/d/a/b/a/b/c;->a(IJ)Lc/d/a/b/a/f/c;

    goto :goto_2

    :cond_2
    if-eqz v1, :cond_3

    .line 7
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->a:Lc/d/a/b/a/f/c;

    invoke-interface {v1, v0}, Lcom/ss/android/socialbase/downloader/downloader/n;->c(Lc/d/a/b/a/f/c;)Z

    goto :goto_2

    .line 8
    :cond_3
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->f:Lc/d/a/b/a/b/c;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->b:Lc/d/a/b/a/f/b;

    invoke-virtual {v1}, Lc/d/a/b/a/f/b;->l()I

    move-result v1

    iget-wide v2, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->k:J

    invoke-virtual {v0, v1, v2, v3}, Lc/d/a/b/a/b/c;->a(IJ)Lc/d/a/b/a/f/c;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    monitor-exit p0

    throw v0

    .line 9
    :cond_4
    :goto_2
    monitor-exit p0

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .line 2
    iget-wide v0, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->k:J

    return-wide v0
.end method

.method public declared-synchronized a(JJ)V
    .locals 0

    monitor-enter p0

    .line 7
    :try_start_0
    iput-wide p1, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->n:J

    .line 8
    iput-wide p3, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->o:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(JJJ)V
    .locals 0

    .line 3
    iput-wide p1, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->k:J

    .line 4
    iput-wide p1, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->m:J

    .line 5
    iput-wide p3, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->n:J

    .line 6
    iput-wide p5, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->o:J

    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->h:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->h:Z

    .line 3
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/downloader/d;->f()V

    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->i:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/downloader/d;->i:Z

    .line 3
    invoke-direct {p0}, Lcom/ss/android/socialbase/downloader/downloader/d;->f()V

    return-void
.end method

.method public d()V
    .locals 16

    move-object/from16 v1, p0

    .line 1
    invoke-direct/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/downloader/d;->e()Z

    move-result v0

    if-nez v0, :cond_27

    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->b:Lc/d/a/b/a/f/b;

    if-nez v0, :cond_0

    goto/16 :goto_18

    .line 2
    :cond_0
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->c:Lc/d/a/b/a/h/e;

    invoke-static {v0}, Lc/d/a/b/a/j/d;->a(Lc/d/a/b/a/h/c;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_26

    .line 3
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->b:Lc/d/a/b/a/f/b;

    invoke-virtual {v0}, Lc/d/a/b/a/f/b;->m()J

    move-result-wide v6

    .line 4
    :try_start_0
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->a:Lc/d/a/b/a/f/c;

    invoke-virtual {v0}, Lc/d/a/b/a/f/c;->v0()Ljava/lang/String;

    move-result-object v0

    iget-object v9, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->a:Lc/d/a/b/a/f/c;

    invoke-virtual {v9}, Lc/d/a/b/a/f/c;->w0()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lc/d/a/b/a/j/d;->a(Ljava/lang/String;Ljava/lang/String;)Lc/d/a/b/a/f/f;

    move-result-object v0

    iput-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->g:Lc/d/a/b/a/f/f;

    .line 5
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->g:Lc/d/a/b/a/f/f;

    iget-wide v9, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->k:J

    invoke-virtual {v0, v9, v10}, Lc/d/a/b/a/f/f;->a(J)V

    .line 6
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->c:Lc/d/a/b/a/h/e;

    invoke-interface {v0}, Lc/d/a/b/a/h/e;->a()Ljava/io/InputStream;

    move-result-object v9
    :try_end_0
    .catch Lc/d/a/b/a/d/a; {:try_start_0 .. :try_end_0} :catch_11
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    if-eqz v9, :cond_1c

    .line 7
    :try_start_1
    iget v0, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->l:I

    new-array v0, v0, [B

    .line 8
    invoke-direct/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/downloader/d;->e()Z

    move-result v10
    :try_end_1
    .catch Lc/d/a/b/a/d/a; {:try_start_1 .. :try_end_1} :catch_c
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    if-eqz v10, :cond_5

    if-eqz v9, :cond_1

    .line 9
    :try_start_2
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 10
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 11
    :cond_1
    :goto_0
    :try_start_3
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->e:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-direct {v1, v0}, Lcom/ss/android/socialbase/downloader/downloader/d;->a(Lcom/ss/android/socialbase/downloader/downloader/k;)V

    .line 12
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->g:Lc/d/a/b/a/f/f;

    if-eqz v0, :cond_2

    .line 13
    invoke-direct/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/downloader/d;->g()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 14
    :cond_2
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->g:Lc/d/a/b/a/f/f;

    if-eqz v0, :cond_3

    .line 15
    :try_start_4
    invoke-virtual {v0}, Lc/d/a/b/a/f/f;->b()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v2, v0

    .line 16
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :cond_3
    :goto_1
    return-void

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 17
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->g:Lc/d/a/b/a/f/f;

    if-eqz v0, :cond_4

    .line 18
    :try_start_5
    invoke-virtual {v0}, Lc/d/a/b/a/f/f;->b()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v3, v0

    .line 19
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 20
    :cond_4
    :goto_2
    throw v2

    .line 21
    :cond_5
    :goto_3
    :try_start_6
    invoke-direct/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/downloader/d;->e()Z

    move-result v10
    :try_end_6
    .catch Lc/d/a/b/a/d/a; {:try_start_6 .. :try_end_6} :catch_c
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    if-eqz v10, :cond_a

    if-eqz v9, :cond_6

    .line 22
    :try_start_7
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_4

    :catch_3
    move-exception v0

    move-object v2, v0

    .line 23
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 24
    :cond_6
    :goto_4
    :try_start_8
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->e:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-direct {v1, v0}, Lcom/ss/android/socialbase/downloader/downloader/d;->a(Lcom/ss/android/socialbase/downloader/downloader/k;)V

    .line 25
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->g:Lc/d/a/b/a/f/f;

    if-eqz v0, :cond_7

    .line 26
    invoke-direct/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/downloader/d;->g()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 27
    :cond_7
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->g:Lc/d/a/b/a/f/f;

    if-eqz v0, :cond_8

    .line 28
    :try_start_9
    invoke-virtual {v0}, Lc/d/a/b/a/f/f;->b()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_5

    :catch_4
    move-exception v0

    move-object v2, v0

    .line 29
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :cond_8
    :goto_5
    return-void

    :catchall_1
    move-exception v0

    move-object v2, v0

    .line 30
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->g:Lc/d/a/b/a/f/f;

    if-eqz v0, :cond_9

    .line 31
    :try_start_a
    invoke-virtual {v0}, Lc/d/a/b/a/f/f;->b()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    goto :goto_6

    :catch_5
    move-exception v0

    move-object v3, v0

    .line 32
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 33
    :cond_9
    :goto_6
    throw v2

    .line 34
    :cond_a
    :try_start_b
    invoke-virtual {v9, v0}, Ljava/io/InputStream;->read([B)I

    move-result v10

    const/4 v11, -0x1

    const/4 v12, 0x0

    if-ne v10, v11, :cond_b

    move-object v15, v9

    goto/16 :goto_b

    .line 35
    :cond_b
    iget-object v11, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->a:Lc/d/a/b/a/f/c;

    invoke-virtual {v11}, Lc/d/a/b/a/f/c;->m()Z

    move-result v11

    if-nez v11, :cond_c

    iget-wide v13, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->o:J

    iget-wide v4, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->k:J
    :try_end_b
    .catch Lc/d/a/b/a/d/a; {:try_start_b .. :try_end_b} :catch_c
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    move-object v15, v9

    :try_start_c
    iget-wide v8, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->m:J

    sub-long/2addr v4, v8

    cmp-long v4, v13, v4

    if-lez v4, :cond_d

    iget-wide v4, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->o:J

    iget-wide v8, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->k:J

    iget-wide v13, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->m:J

    sub-long/2addr v8, v13

    int-to-long v13, v10

    add-long/2addr v8, v13

    cmp-long v4, v4, v8

    if-gez v4, :cond_d

    .line 36
    iget-wide v4, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->o:J

    iget-wide v8, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->k:J

    iget-wide v13, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->m:J

    sub-long/2addr v8, v13

    sub-long/2addr v4, v8

    long-to-int v10, v4

    goto :goto_7

    :cond_c
    move-object v15, v9

    .line 37
    :cond_d
    :goto_7
    iget-object v4, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->g:Lc/d/a/b/a/f/f;

    invoke-virtual {v4, v0, v12, v10}, Lc/d/a/b/a/f/f;->a([BII)V

    .line 38
    iget-wide v4, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->k:J

    int-to-long v8, v10

    add-long/2addr v4, v8

    iput-wide v4, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->k:J

    .line 39
    iget-object v4, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->j:Lc/d/a/b/a/i/e;

    invoke-interface {v4, v8, v9}, Lc/d/a/b/a/i/e;->a(J)Z

    move-result v4

    .line 40
    iget-object v5, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->e:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-direct {v1, v5}, Lcom/ss/android/socialbase/downloader/downloader/d;->a(Lcom/ss/android/socialbase/downloader/downloader/k;)V

    .line 41
    invoke-direct {v1, v4}, Lcom/ss/android/socialbase/downloader/downloader/d;->a(Z)V

    .line 42
    invoke-direct/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/downloader/d;->e()Z

    move-result v4
    :try_end_c
    .catch Lc/d/a/b/a/d/a; {:try_start_c .. :try_end_c} :catch_d
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    if-eqz v4, :cond_12

    if-eqz v15, :cond_e

    .line 43
    :try_start_d
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_6

    goto :goto_8

    :catch_6
    move-exception v0

    move-object v2, v0

    .line 44
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 45
    :cond_e
    :goto_8
    :try_start_e
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->e:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-direct {v1, v0}, Lcom/ss/android/socialbase/downloader/downloader/d;->a(Lcom/ss/android/socialbase/downloader/downloader/k;)V

    .line 46
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->g:Lc/d/a/b/a/f/f;

    if-eqz v0, :cond_f

    .line 47
    invoke-direct/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/downloader/d;->g()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 48
    :cond_f
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->g:Lc/d/a/b/a/f/f;

    if-eqz v0, :cond_10

    .line 49
    :try_start_f
    invoke-virtual {v0}, Lc/d/a/b/a/f/f;->b()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_7

    goto :goto_9

    :catch_7
    move-exception v0

    move-object v2, v0

    .line 50
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :cond_10
    :goto_9
    return-void

    :catchall_2
    move-exception v0

    move-object v2, v0

    .line 51
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->g:Lc/d/a/b/a/f/f;

    if-eqz v0, :cond_11

    .line 52
    :try_start_10
    invoke-virtual {v0}, Lc/d/a/b/a/f/f;->b()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_8

    goto :goto_a

    :catch_8
    move-exception v0

    move-object v3, v0

    .line 53
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 54
    :cond_11
    :goto_a
    throw v2

    .line 55
    :cond_12
    :try_start_11
    iget-object v4, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->a:Lc/d/a/b/a/f/c;

    invoke-virtual {v4}, Lc/d/a/b/a/f/c;->Z()Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 56
    iget-object v4, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->a:Lc/d/a/b/a/f/c;

    invoke-virtual {v4}, Lc/d/a/b/a/f/c;->m()Z

    move-result v4

    if-nez v4, :cond_1a

    iget-wide v4, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->o:J

    const-wide/16 v8, 0x0

    cmp-long v4, v4, v8

    if-ltz v4, :cond_1a

    iget-wide v4, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->o:J

    iget-wide v8, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->k:J

    iget-wide v13, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->m:J
    :try_end_11
    .catch Lc/d/a/b/a/d/a; {:try_start_11 .. :try_end_11} :catch_d
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    sub-long/2addr v8, v13

    cmp-long v4, v4, v8

    if-gtz v4, :cond_1a

    :goto_b
    if-eqz v15, :cond_13

    .line 57
    :try_start_12
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_9

    goto :goto_c

    :catch_9
    move-exception v0

    move-object v4, v0

    .line 58
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 59
    :cond_13
    :goto_c
    :try_start_13
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->e:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-direct {v1, v0}, Lcom/ss/android/socialbase/downloader/downloader/d;->a(Lcom/ss/android/socialbase/downloader/downloader/k;)V

    .line 60
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->g:Lc/d/a/b/a/f/f;

    if-eqz v0, :cond_14

    .line 61
    invoke-direct/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/downloader/d;->g()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    .line 62
    :cond_14
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->g:Lc/d/a/b/a/f/f;

    if-eqz v0, :cond_15

    .line 63
    :try_start_14
    invoke-virtual {v0}, Lc/d/a/b/a/f/f;->b()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_a

    goto :goto_d

    :catch_a
    move-exception v0

    move-object v4, v0

    .line 64
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    .line 65
    :cond_15
    :goto_d
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->a:Lc/d/a/b/a/f/c;

    invoke-virtual {v0}, Lc/d/a/b/a/f/c;->m()Z

    move-result v0

    if-eqz v0, :cond_16

    return-void

    .line 66
    :cond_16
    iget-wide v4, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->k:J

    iget-wide v8, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->m:J

    sub-long/2addr v4, v8

    const-wide/16 v8, 0x0

    cmp-long v0, v4, v8

    if-ltz v0, :cond_18

    .line 67
    iget-wide v10, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->o:J

    cmp-long v0, v10, v8

    if-ltz v0, :cond_18

    iget-wide v8, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->o:J

    cmp-long v0, v8, v4

    if-nez v0, :cond_17

    goto :goto_e

    .line 68
    :cond_17
    new-instance v0, Lc/d/a/b/a/d/a;

    const/16 v8, 0x41b

    const/4 v9, 0x7

    new-array v9, v9, [Ljava/lang/Object;

    .line 69
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v9, v12

    const/4 v4, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v9, v4

    const/4 v2, 0x2

    iget-wide v3, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->o:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v9, v2

    const/4 v2, 0x3

    .line 70
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v9, v2

    const/4 v2, 0x4

    iget-wide v3, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->n:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v9, v2

    const/4 v2, 0x5

    iget-wide v3, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->k:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v9, v2

    const/4 v2, 0x6

    iget-wide v3, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->m:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v9, v2

    const-string v2, "handle data length[%d] != content length[%d] downloadChunkContentLen[%d], range[%d, %d) , current offset[%d] , handle start from %d"

    .line 71
    invoke-static {v2, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v8, v2}, Lc/d/a/b/a/d/a;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_18
    :goto_e
    return-void

    :catchall_3
    move-exception v0

    move-object v2, v0

    .line 72
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->g:Lc/d/a/b/a/f/f;

    if-eqz v0, :cond_19

    .line 73
    :try_start_15
    invoke-virtual {v0}, Lc/d/a/b/a/f/f;->b()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_b

    goto :goto_f

    :catch_b
    move-exception v0

    move-object v3, v0

    .line 74
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 75
    :cond_19
    :goto_f
    throw v2

    :cond_1a
    const-wide/16 v8, 0x0

    move-wide v4, v8

    move-object v9, v15

    goto/16 :goto_3

    .line 76
    :cond_1b
    :try_start_16
    new-instance v0, Lc/d/a/b/a/d/d;

    invoke-direct {v0}, Lc/d/a/b/a/d/d;-><init>()V

    throw v0

    :catchall_4
    move-exception v0

    move-object v15, v9

    goto :goto_10

    :catch_c
    move-exception v0

    move-object v15, v9

    goto :goto_14

    :cond_1c
    move-object v15, v9

    .line 77
    new-instance v0, Lc/d/a/b/a/d/a;

    const/16 v2, 0x412

    new-instance v3, Ljava/io/IOException;

    const-string v4, "inputStream is null"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2, v3}, Lc/d/a/b/a/d/a;-><init>(ILjava/lang/Throwable;)V

    throw v0
    :try_end_16
    .catch Lc/d/a/b/a/d/a; {:try_start_16 .. :try_end_16} :catch_d
    .catchall {:try_start_16 .. :try_end_16} :catchall_5

    :catchall_5
    move-exception v0

    goto :goto_10

    :catch_d
    move-exception v0

    goto :goto_14

    :catchall_6
    move-exception v0

    const/4 v15, 0x0

    .line 78
    :goto_10
    :try_start_17
    invoke-direct/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/downloader/d;->e()Z

    move-result v2
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_8

    if-eqz v2, :cond_21

    if-eqz v15, :cond_1d

    .line 79
    :try_start_18
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_e

    goto :goto_11

    :catch_e
    move-exception v0

    move-object v2, v0

    .line 80
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 81
    :cond_1d
    :goto_11
    :try_start_19
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->e:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-direct {v1, v0}, Lcom/ss/android/socialbase/downloader/downloader/d;->a(Lcom/ss/android/socialbase/downloader/downloader/k;)V

    .line 82
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->g:Lc/d/a/b/a/f/f;

    if-eqz v0, :cond_1e

    .line 83
    invoke-direct/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/downloader/d;->g()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_7

    .line 84
    :cond_1e
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->g:Lc/d/a/b/a/f/f;

    if-eqz v0, :cond_1f

    .line 85
    :try_start_1a
    invoke-virtual {v0}, Lc/d/a/b/a/f/f;->b()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_f

    goto :goto_12

    :catch_f
    move-exception v0

    move-object v2, v0

    .line 86
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :cond_1f
    :goto_12
    return-void

    :catchall_7
    move-exception v0

    move-object v2, v0

    .line 87
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->g:Lc/d/a/b/a/f/f;

    if-eqz v0, :cond_20

    .line 88
    :try_start_1b
    invoke-virtual {v0}, Lc/d/a/b/a/f/f;->b()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_10

    goto :goto_13

    :catch_10
    move-exception v0

    move-object v3, v0

    .line 89
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 90
    :cond_20
    :goto_13
    throw v2

    :cond_21
    :try_start_1c
    const-string v2, "DownloadResponseHandler"

    .line 91
    invoke-static {v0, v2}, Lc/d/a/b/a/j/d;->a(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_8

    const/4 v15, 0x0

    throw v15

    :catch_11
    move-exception v0

    const/4 v15, 0x0

    .line 92
    :goto_14
    :try_start_1d
    throw v0
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_8

    :catchall_8
    move-exception v0

    move-object v2, v0

    if-eqz v15, :cond_22

    .line 93
    :try_start_1e
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_12

    goto :goto_15

    :catch_12
    move-exception v0

    move-object v3, v0

    .line 94
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 95
    :cond_22
    :goto_15
    :try_start_1f
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->e:Lcom/ss/android/socialbase/downloader/impls/k;

    invoke-direct {v1, v0}, Lcom/ss/android/socialbase/downloader/downloader/d;->a(Lcom/ss/android/socialbase/downloader/downloader/k;)V

    .line 96
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->g:Lc/d/a/b/a/f/f;

    if-eqz v0, :cond_23

    .line 97
    invoke-direct/range {p0 .. p0}, Lcom/ss/android/socialbase/downloader/downloader/d;->g()V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_9

    .line 98
    :cond_23
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->g:Lc/d/a/b/a/f/f;

    if-eqz v0, :cond_24

    .line 99
    :try_start_20
    invoke-virtual {v0}, Lc/d/a/b/a/f/f;->b()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_13

    goto :goto_16

    :catch_13
    move-exception v0

    move-object v3, v0

    .line 100
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 101
    :cond_24
    :goto_16
    throw v2

    :catchall_9
    move-exception v0

    move-object v2, v0

    .line 102
    iget-object v0, v1, Lcom/ss/android/socialbase/downloader/downloader/d;->g:Lc/d/a/b/a/f/f;

    if-eqz v0, :cond_25

    .line 103
    :try_start_21
    invoke-virtual {v0}, Lc/d/a/b/a/f/f;->b()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_21} :catch_14

    goto :goto_17

    :catch_14
    move-exception v0

    move-object v3, v0

    .line 104
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 105
    :cond_25
    :goto_17
    throw v2

    .line 106
    :cond_26
    new-instance v0, Lc/d/a/b/a/d/g;

    const/16 v2, 0x3ec

    const-string v3, "the content-length is 0"

    invoke-direct {v0, v2, v3}, Lc/d/a/b/a/d/g;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_27
    :goto_18
    return-void
.end method
