.class public Lc/d/a/b/a/i/b;
.super Ljava/lang/Object;
.source "DownloadChunkRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Lc/d/a/b/a/f/b;

.field private b:Lc/d/a/b/a/f/b;

.field private c:Lcom/ss/android/socialbase/downloader/downloader/d;

.field private d:Lc/d/a/b/a/f/c;

.field private final e:Lc/d/a/b/a/i/e;

.field private f:Lc/d/a/b/a/h/e;

.field private g:Lcom/ss/android/socialbase/downloader/downloader/k;

.field private volatile h:Z

.field private volatile i:Z

.field private j:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lc/d/a/b/a/i/b;

    return-void
.end method

.method public constructor <init>(Lc/d/a/b/a/f/b;Lc/d/a/b/a/f/d;Lc/d/a/b/a/h/e;Lc/d/a/b/a/i/e;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2, p4}, Lc/d/a/b/a/i/b;-><init>(Lc/d/a/b/a/f/b;Lc/d/a/b/a/f/d;Lc/d/a/b/a/i/e;)V

    .line 9
    iput-object p3, p0, Lc/d/a/b/a/i/b;->f:Lc/d/a/b/a/h/e;

    return-void
.end method

.method public constructor <init>(Lc/d/a/b/a/f/b;Lc/d/a/b/a/f/d;Lc/d/a/b/a/i/e;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lc/d/a/b/a/i/b;->j:Z

    .line 3
    iput-object p1, p0, Lc/d/a/b/a/i/b;->b:Lc/d/a/b/a/f/b;

    if-eqz p2, :cond_0

    .line 4
    invoke-virtual {p2}, Lc/d/a/b/a/f/d;->a()Lc/d/a/b/a/f/c;

    move-result-object p1

    iput-object p1, p0, Lc/d/a/b/a/i/b;->d:Lc/d/a/b/a/f/c;

    .line 5
    :cond_0
    iput-object p3, p0, Lc/d/a/b/a/i/b;->e:Lc/d/a/b/a/i/e;

    .line 6
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->p()Lcom/ss/android/socialbase/downloader/downloader/k;

    move-result-object p1

    iput-object p1, p0, Lc/d/a/b/a/i/b;->g:Lcom/ss/android/socialbase/downloader/downloader/k;

    .line 7
    iget-object p1, p0, Lc/d/a/b/a/i/b;->b:Lc/d/a/b/a/f/b;

    invoke-virtual {p1, p0}, Lc/d/a/b/a/f/b;->a(Lc/d/a/b/a/i/b;)V

    return-void
.end method

.method private a(Lc/d/a/b/a/f/b;J)V
    .locals 9

    .line 74
    invoke-virtual {p1}, Lc/d/a/b/a/f/b;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {p1}, Lc/d/a/b/a/f/b;->f()Lc/d/a/b/a/f/b;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    if-eqz v0, :cond_2

    .line 76
    invoke-virtual {v0}, Lc/d/a/b/a/f/b;->i()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 77
    iget-object p1, p0, Lc/d/a/b/a/i/b;->g:Lcom/ss/android/socialbase/downloader/downloader/k;

    invoke-virtual {v0}, Lc/d/a/b/a/f/b;->l()I

    move-result v1

    invoke-virtual {v0}, Lc/d/a/b/a/f/b;->b()I

    move-result v2

    invoke-interface {p1, v1, v2, p2, p3}, Lcom/ss/android/socialbase/downloader/downloader/k;->a(IIJ)V

    .line 78
    :cond_1
    invoke-virtual {v0, p2, p3}, Lc/d/a/b/a/f/b;->b(J)V

    .line 79
    iget-object v3, p0, Lc/d/a/b/a/i/b;->g:Lcom/ss/android/socialbase/downloader/downloader/k;

    invoke-virtual {v0}, Lc/d/a/b/a/f/b;->l()I

    move-result v4

    invoke-virtual {v0}, Lc/d/a/b/a/f/b;->t()I

    move-result v5

    invoke-virtual {v0}, Lc/d/a/b/a/f/b;->b()I

    move-result v6

    move-wide v7, p2

    invoke-interface/range {v3 .. v8}, Lcom/ss/android/socialbase/downloader/downloader/k;->a(IIIJ)V

    goto :goto_1

    .line 80
    :cond_2
    invoke-virtual {p1}, Lc/d/a/b/a/f/b;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 81
    iget-object v0, p0, Lc/d/a/b/a/i/b;->g:Lcom/ss/android/socialbase/downloader/downloader/k;

    invoke-virtual {p1}, Lc/d/a/b/a/f/b;->l()I

    move-result v1

    invoke-virtual {p1}, Lc/d/a/b/a/f/b;->t()I

    move-result p1

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/ss/android/socialbase/downloader/downloader/k;->a(IIJ)V

    :cond_3
    :goto_1
    return-void
.end method

.method private a(Lc/d/a/b/a/f/b;)Z
    .locals 27

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 3
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lc/d/a/b/a/f/b;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual/range {p1 .. p1}, Lc/d/a/b/a/f/b;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual/range {p1 .. p1}, Lc/d/a/b/a/f/b;->f()Lc/d/a/b/a/f/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Lc/d/a/b/a/f/b;->t()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Lc/d/a/b/a/f/b;->t()I

    move-result v5

    if-ne v4, v5, :cond_0

    move-object v4, v0

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    const/4 v5, 0x1

    if-eqz v4, :cond_1

    .line 6
    invoke-virtual {v4}, Lc/d/a/b/a/f/b;->j()Z

    move-result v0

    if-eqz v0, :cond_1

    return v5

    .line 7
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lc/d/a/b/a/f/b;->o()J

    move-result-wide v6

    .line 8
    invoke-virtual/range {p1 .. p1}, Lc/d/a/b/a/f/b;->q()J

    move-result-wide v8

    .line 9
    invoke-virtual/range {p1 .. p1}, Lc/d/a/b/a/f/b;->o()J

    move-result-wide v10

    if-eqz v4, :cond_2

    .line 10
    invoke-virtual {v4}, Lc/d/a/b/a/f/b;->o()J

    move-result-wide v10

    .line 11
    invoke-virtual {v4}, Lc/d/a/b/a/f/b;->o()J

    move-result-wide v6

    .line 12
    invoke-virtual {v4}, Lc/d/a/b/a/f/b;->q()J

    move-result-wide v8

    :cond_2
    const-wide/16 v18, 0x0

    const/4 v14, 0x0

    .line 13
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lc/d/a/b/a/i/b;->e()Z

    move-result v0
    :try_end_0
    .catch Lc/d/a/b/a/d/a; {:try_start_0 .. :try_end_0} :catch_9
    .catchall {:try_start_0 .. :try_end_0} :catchall_9

    if-eqz v0, :cond_3

    .line 14
    invoke-direct/range {p0 .. p0}, Lc/d/a/b/a/i/b;->d()V

    return v14

    .line 15
    :cond_3
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lc/d/a/b/a/i/b;->c()Ljava/lang/String;

    move-result-object v0

    .line 16
    iget-object v12, v1, Lc/d/a/b/a/i/b;->f:Lc/d/a/b/a/h/e;

    if-eqz v12, :cond_4

    move v12, v5

    goto :goto_2

    :cond_4
    move v12, v14

    :goto_2
    iput-boolean v12, v1, Lc/d/a/b/a/i/b;->j:Z

    .line 17
    iget-boolean v12, v1, Lc/d/a/b/a/i/b;->j:Z

    invoke-virtual {v2, v12}, Lc/d/a/b/a/f/b;->b(Z)V
    :try_end_1
    .catch Lc/d/a/b/a/d/a; {:try_start_1 .. :try_end_1} :catch_9
    .catchall {:try_start_1 .. :try_end_1} :catchall_9

    const/16 v15, 0x12c

    .line 18
    :try_start_2
    iget-boolean v12, v1, Lc/d/a/b/a/i/b;->j:Z
    :try_end_2
    .catch Lc/d/a/b/a/d/a; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    if-nez v12, :cond_5

    .line 19
    :try_start_3
    iget-object v12, v1, Lc/d/a/b/a/i/b;->d:Lc/d/a/b/a/f/c;

    invoke-virtual {v12}, Lc/d/a/b/a/f/c;->b()Ljava/util/List;

    move-result-object v12

    .line 20
    iget-object v13, v1, Lc/d/a/b/a/i/b;->d:Lc/d/a/b/a/f/c;

    invoke-virtual {v13}, Lc/d/a/b/a/f/c;->t()Ljava/lang/String;

    move-result-object v13
    :try_end_3
    .catch Lc/d/a/b/a/d/a; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/16 v3, 0xc8

    move v5, v15

    move-wide v14, v6

    move-wide/from16 v16, v8

    :try_start_4
    invoke-static/range {v12 .. v17}, Lc/d/a/b/a/j/d;->a(Ljava/util/List;Ljava/lang/String;JJ)Ljava/util/List;

    move-result-object v12

    .line 21
    iget-object v13, v1, Lc/d/a/b/a/i/b;->d:Lc/d/a/b/a/f/c;

    invoke-virtual {v13}, Lc/d/a/b/a/f/c;->y0()Z

    move-result v13

    iget-object v14, v1, Lc/d/a/b/a/i/b;->d:Lc/d/a/b/a/f/c;

    invoke-virtual {v14}, Lc/d/a/b/a/f/c;->c()I

    move-result v14

    invoke-static {v13, v14, v0, v12}, Lcom/ss/android/socialbase/downloader/downloader/b;->a(ZILjava/lang/String;Ljava/util/List;)Lc/d/a/b/a/h/e;

    move-result-object v0

    iput-object v0, v1, Lc/d/a/b/a/i/b;->f:Lc/d/a/b/a/h/e;
    :try_end_4
    .catch Lc/d/a/b/a/d/a; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    const/4 v12, 0x0

    goto/16 :goto_6

    :catch_0
    move-exception v0

    const/4 v12, 0x0

    goto/16 :goto_7

    :catchall_1
    move-exception v0

    move v5, v15

    const/16 v3, 0xc8

    move v12, v14

    goto/16 :goto_6

    :catch_1
    move-exception v0

    move v5, v15

    const/16 v3, 0xc8

    move v12, v14

    goto/16 :goto_7

    :cond_5
    move v5, v15

    const/16 v3, 0xc8

    .line 22
    :goto_3
    :try_start_5
    iget-object v0, v1, Lc/d/a/b/a/i/b;->f:Lc/d/a/b/a/h/e;
    :try_end_5
    .catch Lc/d/a/b/a/d/a; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    if-eqz v0, :cond_7

    :try_start_6
    iget-object v0, v1, Lc/d/a/b/a/i/b;->e:Lc/d/a/b/a/i/e;
    :try_end_6
    .catch Lc/d/a/b/a/d/a; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    if-eqz v0, :cond_7

    .line 23
    :try_start_7
    iget-object v0, v1, Lc/d/a/b/a/i/b;->f:Lc/d/a/b/a/h/e;

    invoke-interface {v0}, Lc/d/a/b/a/h/c;->b()I

    move-result v0

    if-lt v0, v3, :cond_6

    if-lt v0, v5, :cond_7

    .line 24
    :cond_6
    iget-object v0, v1, Lc/d/a/b/a/i/b;->e:Lc/d/a/b/a/i/e;

    iget-object v3, v1, Lc/d/a/b/a/i/b;->f:Lc/d/a/b/a/h/e;

    invoke-interface {v0, v3}, Lc/d/a/b/a/i/e;->a(Lc/d/a/b/a/h/c;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception v0

    .line 25
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_8
    .catch Lc/d/a/b/a/d/a; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    goto :goto_4

    :catch_2
    move-exception v0

    const/4 v12, 0x0

    const/16 v20, 0x0

    goto/16 :goto_c

    .line 26
    :cond_7
    :goto_4
    :try_start_9
    invoke-direct/range {p0 .. p0}, Lc/d/a/b/a/i/b;->e()Z

    move-result v0
    :try_end_9
    .catch Lc/d/a/b/a/d/a; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    if-eqz v0, :cond_8

    .line 27
    invoke-direct/range {p0 .. p0}, Lc/d/a/b/a/i/b;->d()V

    const/4 v12, 0x0

    return v12

    :cond_8
    const/4 v12, 0x0

    .line 28
    :try_start_a
    iget-object v0, v1, Lc/d/a/b/a/i/b;->f:Lc/d/a/b/a/h/e;

    if-eqz v0, :cond_d

    .line 29
    iget-boolean v0, v1, Lc/d/a/b/a/i/b;->j:Z
    :try_end_a
    .catch Lc/d/a/b/a/d/a; {:try_start_a .. :try_end_a} :catch_7
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    if-nez v0, :cond_a

    .line 30
    :try_start_b
    iget-object v0, v1, Lc/d/a/b/a/i/b;->f:Lc/d/a/b/a/h/e;

    invoke-interface {v0}, Lc/d/a/b/a/h/c;->b()I

    move-result v0

    .line 31
    invoke-static {v0}, Lc/d/a/b/a/j/d;->c(I)Z

    move-result v3

    if-eqz v3, :cond_9

    goto :goto_5

    .line 32
    :cond_9
    new-instance v3, Lc/d/a/b/a/d/a;

    const/16 v4, 0x3ea

    const-string v5, "Http response error , code is : %s "

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v12

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Lc/d/a/b/a/d/a;-><init>(ILjava/lang/String;)V

    throw v3
    :try_end_b
    .catch Lc/d/a/b/a/d/a; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :catchall_3
    move-exception v0

    :try_start_c
    const-string v3, "ChunkRunnableGetResponseCode"

    .line 33
    invoke-static {v0, v3}, Lc/d/a/b/a/j/d;->a(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_c
    .catch Lc/d/a/b/a/d/a; {:try_start_c .. :try_end_c} :catch_7
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    const/4 v2, 0x0

    throw v2

    :catch_3
    move-exception v0

    .line 34
    :try_start_d
    throw v0

    .line 35
    :cond_a
    :goto_5
    new-instance v0, Lcom/ss/android/socialbase/downloader/downloader/d;

    iget-object v3, v1, Lc/d/a/b/a/i/b;->d:Lc/d/a/b/a/f/c;

    iget-object v5, v1, Lc/d/a/b/a/i/b;->f:Lc/d/a/b/a/h/e;

    iget-object v13, v1, Lc/d/a/b/a/i/b;->e:Lc/d/a/b/a/i/e;

    invoke-direct {v0, v3, v5, v2, v13}, Lcom/ss/android/socialbase/downloader/downloader/d;-><init>(Lc/d/a/b/a/f/c;Lc/d/a/b/a/h/e;Lc/d/a/b/a/f/b;Lc/d/a/b/a/i/e;)V

    iput-object v0, v1, Lc/d/a/b/a/i/b;->c:Lcom/ss/android/socialbase/downloader/downloader/d;

    if-eqz v4, :cond_c

    .line 36
    invoke-virtual {v4, v12}, Lc/d/a/b/a/f/b;->c(Z)J

    move-result-wide v13

    cmp-long v0, v8, v18

    if-eqz v0, :cond_b

    cmp-long v0, v8, v6

    if-ltz v0, :cond_b

    sub-long/2addr v8, v6

    const-wide/16 v5, 0x1

    add-long v13, v8, v5

    :cond_b
    move-wide/from16 v25, v13

    .line 37
    iget-object v0, v1, Lc/d/a/b/a/i/b;->c:Lcom/ss/android/socialbase/downloader/downloader/d;

    invoke-virtual {v4}, Lc/d/a/b/a/f/b;->o()J

    move-result-wide v21

    invoke-virtual {v4}, Lc/d/a/b/a/f/b;->q()J

    move-result-wide v23

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v26}, Lcom/ss/android/socialbase/downloader/downloader/d;->a(JJJ)V
    :try_end_d
    .catch Lc/d/a/b/a/d/a; {:try_start_d .. :try_end_d} :catch_7
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    .line 38
    :cond_c
    :try_start_e
    iget-object v0, v1, Lc/d/a/b/a/i/b;->c:Lcom/ss/android/socialbase/downloader/downloader/d;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/downloader/d;->d()V
    :try_end_e
    .catch Lc/d/a/b/a/d/a; {:try_start_e .. :try_end_e} :catch_4
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    .line 39
    invoke-direct/range {p0 .. p0}, Lc/d/a/b/a/i/b;->d()V

    const/4 v2, 0x1

    return v2

    :catch_4
    move-exception v0

    const/16 v20, 0x1

    goto/16 :goto_c

    .line 40
    :cond_d
    :try_start_f
    new-instance v0, Lc/d/a/b/a/d/a;

    const/16 v3, 0x3fe

    new-instance v4, Ljava/io/IOException;

    const-string v5, "download can\'t continue, chunk connection is null"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v3, v4}, Lc/d/a/b/a/d/a;-><init>(ILjava/lang/Throwable;)V

    throw v0
    :try_end_f
    .catch Lc/d/a/b/a/d/a; {:try_start_f .. :try_end_f} :catch_7
    .catchall {:try_start_f .. :try_end_f} :catchall_8

    :catchall_4
    move-exception v0

    const/4 v12, 0x0

    goto :goto_9

    :catch_5
    move-exception v0

    const/4 v12, 0x0

    goto :goto_b

    :catchall_5
    move-exception v0

    move v12, v14

    move v5, v15

    const/16 v3, 0xc8

    :goto_6
    :try_start_10
    const-string v4, "ChunkRunnableConnection"

    .line 41
    invoke-static {v0, v4}, Lc/d/a/b/a/j/d;->a(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    const/4 v2, 0x0

    throw v2

    :catch_6
    move-exception v0

    move v12, v14

    move v5, v15

    const/16 v3, 0xc8

    .line 42
    :goto_7
    :try_start_11
    throw v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    :catchall_6
    move-exception v0

    move-object v4, v0

    .line 43
    :try_start_12
    iget-object v0, v1, Lc/d/a/b/a/i/b;->f:Lc/d/a/b/a/h/e;

    if-eqz v0, :cond_f

    iget-object v0, v1, Lc/d/a/b/a/i/b;->e:Lc/d/a/b/a/i/e;
    :try_end_12
    .catch Lc/d/a/b/a/d/a; {:try_start_12 .. :try_end_12} :catch_7
    .catchall {:try_start_12 .. :try_end_12} :catchall_8

    if-eqz v0, :cond_f

    .line 44
    :try_start_13
    iget-object v0, v1, Lc/d/a/b/a/i/b;->f:Lc/d/a/b/a/h/e;

    invoke-interface {v0}, Lc/d/a/b/a/h/c;->b()I

    move-result v0

    if-lt v0, v3, :cond_e

    if-lt v0, v5, :cond_f

    .line 45
    :cond_e
    iget-object v0, v1, Lc/d/a/b/a/i/b;->e:Lc/d/a/b/a/i/e;

    iget-object v3, v1, Lc/d/a/b/a/i/b;->f:Lc/d/a/b/a/h/e;

    invoke-interface {v0, v3}, Lc/d/a/b/a/i/e;->a(Lc/d/a/b/a/h/c;)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    goto :goto_8

    :catchall_7
    move-exception v0

    .line 46
    :try_start_14
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 47
    :cond_f
    :goto_8
    throw v4
    :try_end_14
    .catch Lc/d/a/b/a/d/a; {:try_start_14 .. :try_end_14} :catch_7
    .catchall {:try_start_14 .. :try_end_14} :catchall_8

    :catchall_8
    move-exception v0

    goto :goto_9

    :catch_7
    move-exception v0

    goto :goto_b

    :catchall_9
    move-exception v0

    move v12, v14

    .line 48
    :goto_9
    :try_start_15
    invoke-direct/range {p0 .. p0}, Lc/d/a/b/a/i/b;->e()Z

    move-result v2
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_a

    if-eqz v2, :cond_10

    .line 49
    :goto_a
    invoke-direct/range {p0 .. p0}, Lc/d/a/b/a/i/b;->d()V

    const/4 v2, 0x1

    return v2

    :cond_10
    :try_start_16
    const-string v2, "downloadChunkInner"

    .line 50
    invoke-static {v0, v2}, Lc/d/a/b/a/j/d;->a(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_16
    .catch Lc/d/a/b/a/d/a; {:try_start_16 .. :try_end_16} :catch_8
    .catchall {:try_start_16 .. :try_end_16} :catchall_a

    const/4 v2, 0x0

    throw v2

    :catch_8
    move-exception v0

    .line 51
    :try_start_17
    iget-object v2, v1, Lc/d/a/b/a/i/b;->e:Lc/d/a/b/a/i/e;

    invoke-interface {v2, v0}, Lc/d/a/b/a/i/e;->b(Lc/d/a/b/a/d/a;)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_a

    .line 52
    invoke-direct/range {p0 .. p0}, Lc/d/a/b/a/i/b;->d()V

    return v12

    :catch_9
    move-exception v0

    move v12, v14

    :goto_b
    move/from16 v20, v12

    .line 53
    :goto_c
    :try_start_18
    invoke-direct/range {p0 .. p0}, Lc/d/a/b/a/i/b;->e()Z

    move-result v3

    if-eqz v3, :cond_11

    goto :goto_a

    .line 54
    :cond_11
    invoke-static {v0}, Lc/d/a/b/a/j/d;->b(Lc/d/a/b/a/d/a;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 55
    iget-object v2, v1, Lc/d/a/b/a/i/b;->e:Lc/d/a/b/a/i/e;

    invoke-interface {v2, v0, v12}, Lc/d/a/b/a/i/e;->a(Lc/d/a/b/a/d/a;Z)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_a

    .line 56
    invoke-direct/range {p0 .. p0}, Lc/d/a/b/a/i/b;->d()V

    return v12

    .line 57
    :cond_12
    :try_start_19
    iget-object v3, v1, Lc/d/a/b/a/i/b;->e:Lc/d/a/b/a/i/e;

    invoke-interface {v3, v0}, Lc/d/a/b/a/i/e;->a(Lc/d/a/b/a/d/a;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 58
    invoke-static {v0}, Lc/d/a/b/a/j/d;->a(Lc/d/a/b/a/d/a;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 59
    iget-object v2, v1, Lc/d/a/b/a/i/b;->e:Lc/d/a/b/a/i/e;

    const/4 v3, 0x1

    invoke-interface {v2, v0, v3}, Lc/d/a/b/a/i/e;->a(Lc/d/a/b/a/d/a;Z)V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_a

    .line 60
    invoke-direct/range {p0 .. p0}, Lc/d/a/b/a/i/b;->d()V

    return v12

    :cond_13
    if-eqz v20, :cond_15

    .line 61
    :try_start_1a
    iget-object v3, v1, Lc/d/a/b/a/i/b;->c:Lcom/ss/android/socialbase/downloader/downloader/d;

    if-eqz v3, :cond_14

    .line 62
    iget-object v3, v1, Lc/d/a/b/a/i/b;->c:Lcom/ss/android/socialbase/downloader/downloader/d;

    invoke-virtual {v3}, Lcom/ss/android/socialbase/downloader/downloader/d;->a()J

    move-result-wide v3

    sub-long v18, v3, v10

    .line 63
    invoke-direct {v1, v2, v10, v11}, Lc/d/a/b/a/i/b;->a(Lc/d/a/b/a/f/b;J)V

    goto :goto_d

    .line 64
    :cond_14
    iget-object v2, v1, Lc/d/a/b/a/i/b;->e:Lc/d/a/b/a/i/e;

    invoke-interface {v2, v0}, Lc/d/a/b/a/i/e;->b(Lc/d/a/b/a/d/a;)V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_a

    .line 65
    invoke-direct/range {p0 .. p0}, Lc/d/a/b/a/i/b;->d()V

    return v12

    :cond_15
    :goto_d
    move-wide/from16 v3, v18

    .line 66
    :try_start_1b
    iget-object v5, v1, Lc/d/a/b/a/i/b;->e:Lc/d/a/b/a/i/e;

    invoke-interface {v5, v0, v3, v4}, Lc/d/a/b/a/i/e;->a(Lc/d/a/b/a/d/a;J)Lc/d/a/b/a/d/h;

    move-result-object v0

    .line 67
    sget-object v3, Lc/d/a/b/a/d/h;->a:Lc/d/a/b/a/d/h;
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_a

    if-ne v0, v3, :cond_16

    .line 68
    invoke-direct/range {p0 .. p0}, Lc/d/a/b/a/i/b;->d()V

    return v12

    .line 69
    :cond_16
    :try_start_1c
    invoke-virtual {v2, v12}, Lc/d/a/b/a/f/b;->b(Z)V

    .line 70
    invoke-direct/range {p0 .. p0}, Lc/d/a/b/a/i/b;->d()V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_a

    .line 71
    invoke-direct/range {p0 .. p0}, Lc/d/a/b/a/i/b;->d()V

    goto/16 :goto_0

    .line 72
    :cond_17
    :try_start_1d
    iget-object v2, v1, Lc/d/a/b/a/i/b;->e:Lc/d/a/b/a/i/e;

    invoke-interface {v2, v0}, Lc/d/a/b/a/i/e;->b(Lc/d/a/b/a/d/a;)V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_a

    .line 73
    invoke-direct/range {p0 .. p0}, Lc/d/a/b/a/i/b;->d()V

    return v12

    :catchall_a
    move-exception v0

    invoke-direct/range {p0 .. p0}, Lc/d/a/b/a/i/b;->d()V

    throw v0
.end method

.method private c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/d/a/b/a/i/b;->d:Lc/d/a/b/a/f/c;

    invoke-virtual {v0}, Lc/d/a/b/a/f/c;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/d/a/b/a/i/b;->f:Lc/d/a/b/a/h/e;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lc/d/a/b/a/h/e;->d()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lc/d/a/b/a/i/b;->f:Lc/d/a/b/a/h/e;

    :cond_0
    return-void
.end method

.method private e()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc/d/a/b/a/i/b;->h:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lc/d/a/b/a/i/b;->i:Z

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


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    .line 82
    iput-boolean v0, p0, Lc/d/a/b/a/i/b;->h:Z

    .line 83
    iget-object v0, p0, Lc/d/a/b/a/i/b;->c:Lcom/ss/android/socialbase/downloader/downloader/d;

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/downloader/d;->b()V

    :cond_0
    return-void
.end method

.method public a(JJ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lc/d/a/b/a/i/b;->c:Lcom/ss/android/socialbase/downloader/downloader/d;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/ss/android/socialbase/downloader/downloader/d;->a(JJ)V

    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lc/d/a/b/a/i/b;->i:Z

    .line 2
    iget-object v0, p0, Lc/d/a/b/a/i/b;->c:Lcom/ss/android/socialbase/downloader/downloader/d;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/downloader/d;->c()V

    :cond_0
    return-void
.end method

.method public run()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    const/16 v0, 0xa

    .line 1
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 2
    iget-object v0, p0, Lc/d/a/b/a/i/b;->b:Lc/d/a/b/a/f/b;

    iput-object v0, p0, Lc/d/a/b/a/i/b;->a:Lc/d/a/b/a/f/b;

    :goto_0
    const/4 v0, 0x0

    .line 3
    :try_start_0
    iget-object v1, p0, Lc/d/a/b/a/i/b;->a:Lc/d/a/b/a/f/b;

    invoke-virtual {v1, p0}, Lc/d/a/b/a/f/b;->a(Lc/d/a/b/a/i/b;)V

    .line 4
    iget-object v1, p0, Lc/d/a/b/a/i/b;->a:Lc/d/a/b/a/f/b;

    invoke-direct {p0, v1}, Lc/d/a/b/a/i/b;->a(Lc/d/a/b/a/f/b;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5
    iget-object v1, p0, Lc/d/a/b/a/i/b;->a:Lc/d/a/b/a/f/b;

    invoke-virtual {v1, v0}, Lc/d/a/b/a/f/b;->a(Z)V

    goto :goto_1

    .line 6
    :cond_0
    iget-object v1, p0, Lc/d/a/b/a/i/b;->a:Lc/d/a/b/a/f/b;

    invoke-virtual {v1, v0}, Lc/d/a/b/a/f/b;->a(Z)V

    .line 7
    invoke-direct {p0}, Lc/d/a/b/a/i/b;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 8
    :cond_1
    iget-object v1, p0, Lc/d/a/b/a/i/b;->e:Lc/d/a/b/a/i/e;

    iget-object v2, p0, Lc/d/a/b/a/i/b;->a:Lc/d/a/b/a/f/b;

    invoke-virtual {v2}, Lc/d/a/b/a/f/b;->t()I

    move-result v2

    invoke-interface {v1, v2}, Lc/d/a/b/a/i/e;->a(I)Lc/d/a/b/a/f/b;

    move-result-object v1

    iput-object v1, p0, Lc/d/a/b/a/i/b;->a:Lc/d/a/b/a/f/b;

    .line 9
    invoke-direct {p0}, Lc/d/a/b/a/i/b;->e()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lc/d/a/b/a/i/b;->a:Lc/d/a/b/a/f/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    const-wide/16 v1, 0x32

    .line 10
    :try_start_1
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 11
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 12
    :cond_3
    :goto_1
    iget-object v1, p0, Lc/d/a/b/a/i/b;->a:Lc/d/a/b/a/f/b;

    if-eqz v1, :cond_4

    .line 13
    invoke-virtual {v1, v0}, Lc/d/a/b/a/f/b;->a(Z)V

    .line 14
    :cond_4
    invoke-direct {p0}, Lc/d/a/b/a/i/b;->d()V

    .line 15
    iget-object v0, p0, Lc/d/a/b/a/i/b;->e:Lc/d/a/b/a/i/e;

    invoke-interface {v0, p0}, Lc/d/a/b/a/i/e;->a(Lc/d/a/b/a/i/b;)V

    return-void

    :catchall_1
    move-exception v1

    .line 16
    iget-object v2, p0, Lc/d/a/b/a/i/b;->a:Lc/d/a/b/a/f/b;

    if-eqz v2, :cond_5

    .line 17
    invoke-virtual {v2, v0}, Lc/d/a/b/a/f/b;->a(Z)V

    .line 18
    :cond_5
    invoke-direct {p0}, Lc/d/a/b/a/i/b;->d()V

    .line 19
    iget-object v0, p0, Lc/d/a/b/a/i/b;->e:Lc/d/a/b/a/i/e;

    invoke-interface {v0, p0}, Lc/d/a/b/a/i/e;->a(Lc/d/a/b/a/i/b;)V

    throw v1
.end method
