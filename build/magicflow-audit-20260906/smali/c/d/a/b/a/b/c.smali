.class public Lc/d/a/b/a/b/c;
.super Ljava/lang/Object;
.source "SqlDownloadCache.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/downloader/k;


# static fields
.field private static volatile d:Landroid/database/sqlite/SQLiteDatabase;


# instance fields
.field private a:Lc/d/a/b/a/b/d;

.field private b:Lc/d/a/b/a/b/d;

.field private volatile c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lc/d/a/b/a/b/c;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lc/d/a/b/a/b/c;->c:Z

    .line 4
    invoke-virtual {p0}, Lc/d/a/b/a/b/c;->a()V

    return-void
.end method

.method private a(IIIILandroid/database/sqlite/SQLiteStatement;)V
    .locals 5

    .line 97
    :try_start_0
    monitor-enter p5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 98
    :try_start_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "chunkIndex"

    .line 99
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 100
    sget-object p4, Lc/d/a/b/a/b/c;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "downloadChunk"

    const-string v2, "_id = ? AND chunkIndex = ? AND hostChunkIndex = ?"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 101
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v4

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v3, p1

    const/4 p1, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v3, p1

    .line 102
    invoke-virtual {p4, v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 103
    monitor-exit p5

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    .line 104
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private a(IIIJLandroid/database/sqlite/SQLiteStatement;)V
    .locals 4

    .line 113
    :try_start_0
    monitor-enter p6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 114
    :try_start_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "curOffset"

    .line 115
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 116
    sget-object p4, Lc/d/a/b/a/b/c;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string p5, "downloadChunk"

    const-string v1, "_id = ? AND chunkIndex = ? AND hostChunkIndex = ?"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    .line 117
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, p1

    const/4 p1, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, p1

    .line 118
    invoke-virtual {p4, p5, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 119
    monitor-exit p6

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    .line 120
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private a(IIJLandroid/database/sqlite/SQLiteStatement;)V
    .locals 4

    .line 105
    :try_start_0
    monitor-enter p5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 106
    :try_start_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "curOffset"

    .line 107
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 108
    sget-object p3, Lc/d/a/b/a/b/c;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string p4, "downloadChunk"

    const-string v1, "_id = ? AND chunkIndex = ?"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    .line 109
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    const/4 p1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, p1

    .line 110
    invoke-virtual {p3, p4, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 111
    monitor-exit p5

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    .line 112
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private a(ILandroid/content/ContentValues;)V
    .locals 2

    .line 156
    invoke-direct {p0}, Lc/d/a/b/a/b/c;->e()V

    .line 157
    sget-object v0, Lc/d/a/b/a/b/c;->d:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    return-void

    .line 158
    :cond_0
    invoke-static {}, Lc/d/a/b/a/j/d;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 159
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->m()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 160
    :cond_1
    new-instance v1, Lc/d/a/b/a/b/c$e;

    invoke-direct {v1, p0, p1, p2}, Lc/d/a/b/a/b/c$e;-><init>(Lc/d/a/b/a/b/c;ILandroid/content/ContentValues;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 161
    :cond_2
    invoke-direct {p0, p1, p2}, Lc/d/a/b/a/b/c;->b(ILandroid/content/ContentValues;)V

    :goto_0
    return-void
.end method

.method private a(ILandroid/database/sqlite/SQLiteStatement;)V
    .locals 3

    if-nez p2, :cond_0

    return-void

    .line 50
    :cond_0
    :try_start_0
    monitor-enter p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x1

    int-to-long v1, p1

    .line 51
    :try_start_1
    invoke-virtual {p2, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 52
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 53
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    .line 54
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static synthetic a(Lc/d/a/b/a/b/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lc/d/a/b/a/b/c;->e()V

    return-void
.end method

.method static synthetic a(Lc/d/a/b/a/b/c;IIIILandroid/database/sqlite/SQLiteStatement;)V
    .locals 0

    .line 2
    invoke-direct/range {p0 .. p5}, Lc/d/a/b/a/b/c;->a(IIIILandroid/database/sqlite/SQLiteStatement;)V

    return-void
.end method

.method static synthetic a(Lc/d/a/b/a/b/c;IIIJLandroid/database/sqlite/SQLiteStatement;)V
    .locals 0

    .line 3
    invoke-direct/range {p0 .. p6}, Lc/d/a/b/a/b/c;->a(IIIJLandroid/database/sqlite/SQLiteStatement;)V

    return-void
.end method

.method static synthetic a(Lc/d/a/b/a/b/c;IIJLandroid/database/sqlite/SQLiteStatement;)V
    .locals 0

    .line 4
    invoke-direct/range {p0 .. p5}, Lc/d/a/b/a/b/c;->a(IIJLandroid/database/sqlite/SQLiteStatement;)V

    return-void
.end method

.method static synthetic a(Lc/d/a/b/a/b/c;ILandroid/content/ContentValues;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Lc/d/a/b/a/b/c;->b(ILandroid/content/ContentValues;)V

    return-void
.end method

.method static synthetic a(Lc/d/a/b/a/b/c;ILandroid/database/sqlite/SQLiteStatement;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2}, Lc/d/a/b/a/b/c;->a(ILandroid/database/sqlite/SQLiteStatement;)V

    return-void
.end method

.method static synthetic a(Lc/d/a/b/a/b/c;Lc/d/a/b/a/f/b;Landroid/database/sqlite/SQLiteStatement;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2}, Lc/d/a/b/a/b/c;->a(Lc/d/a/b/a/f/b;Landroid/database/sqlite/SQLiteStatement;)V

    return-void
.end method

.method static synthetic a(Lc/d/a/b/a/b/c;Lc/d/a/b/a/f/c;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lc/d/a/b/a/b/c;->d(Lc/d/a/b/a/f/c;)V

    return-void
.end method

.method static synthetic a(Lc/d/a/b/a/b/c;Lc/d/a/b/a/f/c;Landroid/database/sqlite/SQLiteStatement;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2}, Lc/d/a/b/a/b/c;->a(Lc/d/a/b/a/f/c;Landroid/database/sqlite/SQLiteStatement;)V

    return-void
.end method

.method static synthetic a(Lc/d/a/b/a/b/c;Ljava/util/List;Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1, p2, p3, p4}, Lc/d/a/b/a/b/c;->a(Ljava/util/List;Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    return-void
.end method

.method private a(Lc/d/a/b/a/f/b;Landroid/database/sqlite/SQLiteStatement;)V
    .locals 0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 68
    :cond_0
    :try_start_0
    monitor-enter p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 69
    :try_start_1
    invoke-virtual {p1, p2}, Lc/d/a/b/a/f/b;->a(Landroid/database/sqlite/SQLiteStatement;)V

    .line 70
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    .line 71
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    .line 72
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method private a(Lc/d/a/b/a/f/c;Landroid/database/sqlite/SQLiteStatement;)V
    .locals 0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 63
    :cond_0
    :try_start_0
    monitor-enter p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 64
    :try_start_1
    invoke-virtual {p1, p2}, Lc/d/a/b/a/f/c;->a(Landroid/database/sqlite/SQLiteStatement;)V

    .line 65
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    .line 66
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    .line 67
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method private a(Ljava/util/List;Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/SparseArray<",
            "Lc/d/a/b/a/f/c;",
            ">;",
            "Landroid/util/SparseArray<",
            "Lc/d/a/b/a/f/c;",
            ">;",
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Lc/d/a/b/a/f/b;",
            ">;>;)V"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    .line 17
    invoke-virtual/range {p2 .. p2}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ltz v4, :cond_8

    .line 18
    sget-object v5, Lc/d/a/b/a/b/c;->d:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v5, :cond_0

    goto/16 :goto_8

    .line 19
    :cond_0
    sget-object v5, Lc/d/a/b/a/b/c;->d:Landroid/database/sqlite/SQLiteDatabase;

    monitor-enter v5

    .line 20
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lc/d/a/b/a/b/c;->f()V

    .line 21
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-nez v6, :cond_1

    const-string v6, ", "

    move-object/from16 v9, p1

    .line 22
    invoke-static {v6, v9}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v6

    .line 23
    sget-object v9, Lc/d/a/b/a/b/c;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v10, "downloader"

    const-string v11, "_id IN (?)"

    new-array v12, v8, [Ljava/lang/String;

    aput-object v6, v12, v7

    invoke-virtual {v9, v10, v11, v12}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 24
    sget-object v9, Lc/d/a/b/a/b/c;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v10, "downloadChunk"

    const-string v11, "_id IN (?)"

    new-array v12, v8, [Ljava/lang/String;

    aput-object v6, v12, v7

    invoke-virtual {v9, v10, v11, v12}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_1
    move v6, v7

    :goto_0
    if-ge v6, v4, :cond_4

    .line 25
    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    .line 26
    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lc/d/a/b/a/f/c;

    .line 27
    sget-object v11, Lc/d/a/b/a/b/c;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v12, "downloader"

    const-string v13, "_id = ?"

    new-array v14, v8, [Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v14, v7

    invoke-virtual {v11, v12, v13, v14}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 28
    sget-object v11, Lc/d/a/b/a/b/c;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v12, "downloader"

    invoke-virtual {v10}, Lc/d/a/b/a/f/c;->o0()Landroid/content/ContentValues;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v11, v12, v14, v13}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 29
    invoke-virtual {v10}, Lc/d/a/b/a/f/c;->K()I

    move-result v11

    if-le v11, v8, :cond_3

    .line 30
    invoke-virtual {v1, v9}, Lc/d/a/b/a/b/c;->d(I)Ljava/util/List;

    move-result-object v11

    .line 31
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    if-gtz v12, :cond_2

    goto :goto_2

    .line 32
    :cond_2
    sget-object v12, Lc/d/a/b/a/b/c;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v13, "downloadChunk"

    const-string v15, "_id = ?"

    new-array v14, v8, [Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v14, v7

    invoke-virtual {v12, v13, v15, v14}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 33
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lc/d/a/b/a/f/b;

    .line 34
    invoke-virtual {v10}, Lc/d/a/b/a/f/c;->q0()I

    move-result v12

    invoke-virtual {v11, v12}, Lc/d/a/b/a/f/b;->b(I)V

    .line 35
    sget-object v12, Lc/d/a/b/a/b/c;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v13, "downloadChunk"

    invoke-virtual {v11}, Lc/d/a/b/a/f/b;->a()Landroid/content/ContentValues;

    move-result-object v11

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v14, v11}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_1

    :cond_3
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_4
    if-eqz v2, :cond_7

    if-eqz v3, :cond_7

    .line 36
    monitor-enter p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 37
    :try_start_1
    invoke-virtual/range {p3 .. p3}, Landroid/util/SparseArray;->size()I

    move-result v0

    :goto_3
    if-ge v7, v0, :cond_6

    .line 38
    invoke-virtual {v2, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lc/d/a/b/a/f/c;

    invoke-virtual {v4}, Lc/d/a/b/a/f/c;->q0()I

    move-result v4

    .line 39
    invoke-virtual {v1, v4}, Lc/d/a/b/a/b/c;->d(I)Ljava/util/List;

    move-result-object v6

    .line 40
    invoke-static {v6}, Lc/d/a/b/a/j/d;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 41
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_5

    .line 42
    invoke-virtual {v3, v4, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 43
    :cond_6
    monitor-exit p3

    goto :goto_4

    :catchall_0
    move-exception v0

    monitor-exit p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0

    .line 44
    :cond_7
    :goto_4
    sget-object v0, Lc/d/a/b/a/b/c;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 45
    :goto_5
    :try_start_3
    invoke-direct/range {p0 .. p0}, Lc/d/a/b/a/b/c;->g()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_6

    :catchall_1
    move-exception v0

    .line 46
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_5

    .line 47
    :goto_6
    :try_start_5
    monitor-exit v5

    return-void

    :catchall_2
    move-exception v0

    goto :goto_7

    :catchall_3
    move-exception v0

    move-object v2, v0

    .line 48
    invoke-direct/range {p0 .. p0}, Lc/d/a/b/a/b/c;->g()V

    throw v2

    .line 49
    :goto_7
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    :cond_8
    :goto_8
    return-void
.end method

.method static synthetic a(Lc/d/a/b/a/b/c;Z)Z
    .locals 0

    .line 11
    iput-boolean p1, p0, Lc/d/a/b/a/b/c;->c:Z

    return p1
.end method

.method static synthetic b(Lc/d/a/b/a/b/c;)Lc/d/a/b/a/b/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/d/a/b/a/b/c;->b:Lc/d/a/b/a/b/d;

    return-object p0
.end method

.method private b(ILandroid/content/ContentValues;)V
    .locals 5

    const/16 v0, 0xa

    .line 27
    :goto_0
    :try_start_0
    sget-object v1, Lc/d/a/b/a/b/c;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isDbLockedByCurrentThread()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    const-wide/16 v1, 0x5

    .line 28
    :try_start_1
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 29
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 30
    :cond_0
    :try_start_3
    sget-object v0, Lc/d/a/b/a/b/c;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "downloader"

    const-string v2, "_id = ? "

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, p2, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    .line 31
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p1

    .line 32
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private b(Lc/d/a/b/a/f/c;Landroid/database/sqlite/SQLiteStatement;)V
    .locals 3

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    :try_start_0
    monitor-enter p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    :try_start_1
    invoke-virtual {p1, p2}, Lc/d/a/b/a/f/c;->a(Landroid/database/sqlite/SQLiteStatement;)V

    .line 5
    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->p0()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 6
    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->q0()I

    move-result p1

    int-to-long v1, p1

    invoke-virtual {p2, v0, v1, v2}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 7
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 8
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic c(Lc/d/a/b/a/b/c;)Lc/d/a/b/a/b/d;
    .locals 0

    .line 1
    iget-object p0, p0, Lc/d/a/b/a/b/c;->a:Lc/d/a/b/a/b/d;

    return-object p0
.end method

.method private c(Lc/d/a/b/a/f/c;)V
    .locals 2

    .line 18
    invoke-direct {p0}, Lc/d/a/b/a/b/c;->e()V

    .line 19
    sget-object v0, Lc/d/a/b/a/b/c;->d:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lc/d/a/b/a/b/c;->a:Lc/d/a/b/a/b/d;

    if-nez v0, :cond_0

    goto :goto_0

    .line 20
    :cond_0
    invoke-static {}, Lc/d/a/b/a/j/d;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 21
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->m()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 22
    :cond_1
    new-instance v1, Lc/d/a/b/a/b/c$k;

    invoke-direct {v1, p0, p1}, Lc/d/a/b/a/b/c$k;-><init>(Lc/d/a/b/a/b/c;Lc/d/a/b/a/f/c;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 23
    :cond_2
    :try_start_0
    iget-object v0, p0, Lc/d/a/b/a/b/c;->a:Lc/d/a/b/a/b/d;

    invoke-virtual {v0}, Lc/d/a/b/a/b/d;->a()Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lc/d/a/b/a/b/c;->a(Lc/d/a/b/a/f/c;Landroid/database/sqlite/SQLiteStatement;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 24
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_0
    return-void
.end method

.method static synthetic d()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .line 1
    sget-object v0, Lc/d/a/b/a/b/c;->d:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method static synthetic d(Lc/d/a/b/a/b/c;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lc/d/a/b/a/b/c;->h()V

    return-void
.end method

.method private declared-synchronized d(Lc/d/a/b/a/f/c;)V
    .locals 1

    monitor-enter p0

    if-nez p1, :cond_0

    .line 19
    monitor-exit p0

    return-void

    .line 20
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lc/d/a/b/a/f/c;->q0()I

    move-result v0

    invoke-virtual {p0, v0}, Lc/d/a/b/a/b/c;->j(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 21
    invoke-direct {p0, p1}, Lc/d/a/b/a/b/c;->c(Lc/d/a/b/a/f/c;)V

    goto :goto_0

    .line 22
    :cond_1
    iget-object v0, p0, Lc/d/a/b/a/b/c;->a:Lc/d/a/b/a/b/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_2

    .line 23
    monitor-exit p0

    return-void

    .line 24
    :cond_2
    :try_start_1
    iget-object v0, p0, Lc/d/a/b/a/b/c;->a:Lc/d/a/b/a/b/d;

    invoke-virtual {v0}, Lc/d/a/b/a/b/d;->c()Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lc/d/a/b/a/b/c;->b(Lc/d/a/b/a/f/c;Landroid/database/sqlite/SQLiteStatement;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 25
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    .line 26
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 27
    :goto_0
    monitor-exit p0

    return-void

    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private e()V
    .locals 6

    .line 1
    sget-object v0, Lc/d/a/b/a/b/c;->d:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lc/d/a/b/a/b/c;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lc/d/a/b/a/b/c;->d:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_0

    .line 4
    :try_start_1
    invoke-static {}, Lc/d/a/b/a/b/a;->j()Lc/d/a/b/a/b/a;

    move-result-object v1

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    sput-object v1, Lc/d/a/b/a/b/c;->d:Landroid/database/sqlite/SQLiteDatabase;

    .line 5
    new-instance v1, Lc/d/a/b/a/b/d;

    sget-object v2, Lc/d/a/b/a/b/c;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "downloader"

    sget-object v4, Lc/d/a/b/a/a/c;->a:[Ljava/lang/String;

    sget-object v5, Lc/d/a/b/a/a/c;->b:[Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, v5}, Lc/d/a/b/a/b/d;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    iput-object v1, p0, Lc/d/a/b/a/b/c;->a:Lc/d/a/b/a/b/d;

    .line 6
    new-instance v1, Lc/d/a/b/a/b/d;

    sget-object v2, Lc/d/a/b/a/b/c;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "downloadChunk"

    sget-object v4, Lc/d/a/b/a/a/c;->c:[Ljava/lang/String;

    sget-object v5, Lc/d/a/b/a/a/c;->d:[Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4, v5}, Lc/d/a/b/a/b/d;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    iput-object v1, p0, Lc/d/a/b/a/b/c;->b:Lc/d/a/b/a/b/d;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 7
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 8
    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_1

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    :cond_1
    :goto_1
    return-void
.end method

.method private f()V
    .locals 1

    .line 1
    sget-object v0, Lc/d/a/b/a/b/c;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    return-void
.end method

.method private g()V
    .locals 1

    .line 1
    :try_start_0
    sget-object v0, Lc/d/a/b/a/b/c;->d:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    sget-object v0, Lc/d/a/b/a/b/c;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lc/d/a/b/a/b/c;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private declared-synchronized h()V
    .locals 3

    monitor-enter p0

    .line 9
    :try_start_0
    invoke-direct {p0}, Lc/d/a/b/a/b/c;->f()V

    .line 10
    sget-object v0, Lc/d/a/b/a/b/c;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "downloader"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 11
    sget-object v0, Lc/d/a/b/a/b/c;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "downloadChunk"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 12
    sget-object v0, Lc/d/a/b/a/b/c;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    :goto_0
    :try_start_1
    invoke-direct {p0}, Lc/d/a/b/a/b/c;->g()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 14
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 15
    :goto_1
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    goto :goto_2

    :catchall_2
    move-exception v0

    .line 16
    :try_start_3
    invoke-direct {p0}, Lc/d/a/b/a/b/c;->g()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_2
    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a(I)Lc/d/a/b/a/f/c;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public a(II)Lc/d/a/b/a/f/c;
    .locals 6

    .line 121
    invoke-direct {p0}, Lc/d/a/b/a/b/c;->e()V

    .line 122
    sget-object v0, Lc/d/a/b/a/b/c;->d:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/16 v0, 0xa

    .line 123
    :goto_0
    :try_start_0
    sget-object v2, Lc/d/a/b/a/b/c;->d:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isDbLockedByCurrentThread()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v2, :cond_1

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    const-wide/16 v2, 0x5

    .line 124
    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 125
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 126
    :cond_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "chunkCount"

    .line 127
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 128
    sget-object p2, Lc/d/a/b/a/b/c;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "downloader"

    const-string v3, "_id = ? "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 129
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v5

    .line 130
    invoke-virtual {p2, v2, v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    .line 131
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-object v1
.end method

.method public a(IJ)Lc/d/a/b/a/f/c;
    .locals 3

    .line 145
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/4 v1, 0x4

    .line 146
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "status"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 147
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "curBytes"

    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 148
    invoke-direct {p0, p1, v0}, Lc/d/a/b/a/b/c;->a(ILandroid/content/ContentValues;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public a(IJLjava/lang/String;Ljava/lang/String;)Lc/d/a/b/a/f/c;
    .locals 3

    .line 138
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/4 v1, 0x3

    .line 139
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "status"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 140
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "totalBytes"

    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p2, "eTag"

    .line 141
    invoke-virtual {v0, p2, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "name"

    .line 143
    invoke-virtual {v0, p2, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    :cond_0
    invoke-direct {p0, p1, v0}, Lc/d/a/b/a/b/c;->a(ILandroid/content/ContentValues;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lc/d/a/b/a/f/c;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 12
    invoke-virtual {p0, v0, v0, v0}, Lc/d/a/b/a/b/c;->a(Landroid/util/SparseArray;Landroid/util/SparseArray;Lc/d/a/b/a/b/b;)V

    return-void
.end method

.method public a(IIII)V
    .locals 8

    .line 89
    invoke-direct {p0}, Lc/d/a/b/a/b/c;->e()V

    if-eqz p1, :cond_3

    if-ltz p3, :cond_3

    if-eq p4, p2, :cond_3

    if-ltz p4, :cond_3

    .line 90
    sget-object v0, Lc/d/a/b/a/b/c;->d:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lc/d/a/b/a/b/c;->b:Lc/d/a/b/a/b/d;

    if-nez v0, :cond_0

    goto :goto_0

    .line 91
    :cond_0
    invoke-static {}, Lc/d/a/b/a/j/d;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 92
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->m()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 93
    :cond_1
    new-instance v7, Lc/d/a/b/a/b/c$j;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lc/d/a/b/a/b/c$j;-><init>(Lc/d/a/b/a/b/c;IIII)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 94
    :cond_2
    :try_start_0
    iget-object v0, p0, Lc/d/a/b/a/b/c;->b:Lc/d/a/b/a/b/d;

    invoke-virtual {v0}, Lc/d/a/b/a/b/d;->c()Landroid/database/sqlite/SQLiteStatement;

    move-result-object v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 95
    invoke-direct/range {v1 .. v6}, Lc/d/a/b/a/b/c;->a(IIIILandroid/database/sqlite/SQLiteStatement;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 96
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_0
    return-void
.end method

.method public a(IIIJ)V
    .locals 9

    .line 81
    invoke-direct {p0}, Lc/d/a/b/a/b/c;->e()V

    if-eqz p1, :cond_3

    if-ltz p2, :cond_3

    if-ltz p3, :cond_3

    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-ltz v0, :cond_3

    .line 82
    sget-object v0, Lc/d/a/b/a/b/c;->d:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lc/d/a/b/a/b/c;->b:Lc/d/a/b/a/b/d;

    if-nez v0, :cond_0

    goto :goto_0

    .line 83
    :cond_0
    invoke-static {}, Lc/d/a/b/a/j/d;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 84
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->m()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 85
    :cond_1
    new-instance v8, Lc/d/a/b/a/b/c$i;

    move-object v1, v8

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lc/d/a/b/a/b/c$i;-><init>(Lc/d/a/b/a/b/c;IIIJ)V

    invoke-interface {v0, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 86
    :cond_2
    :try_start_0
    iget-object v0, p0, Lc/d/a/b/a/b/c;->b:Lc/d/a/b/a/b/d;

    invoke-virtual {v0}, Lc/d/a/b/a/b/d;->c()Landroid/database/sqlite/SQLiteStatement;

    move-result-object v7

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-wide v5, p4

    .line 87
    invoke-direct/range {v1 .. v7}, Lc/d/a/b/a/b/c;->a(IIIJLandroid/database/sqlite/SQLiteStatement;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 88
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_0
    return-void
.end method

.method public a(IIJ)V
    .locals 8

    .line 73
    invoke-direct {p0}, Lc/d/a/b/a/b/c;->e()V

    if-eqz p1, :cond_3

    if-ltz p2, :cond_3

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-ltz v0, :cond_3

    .line 74
    sget-object v0, Lc/d/a/b/a/b/c;->d:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lc/d/a/b/a/b/c;->b:Lc/d/a/b/a/b/d;

    if-nez v0, :cond_0

    goto :goto_0

    .line 75
    :cond_0
    invoke-static {}, Lc/d/a/b/a/j/d;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 76
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->m()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 77
    :cond_1
    new-instance v7, Lc/d/a/b/a/b/c$h;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lc/d/a/b/a/b/c$h;-><init>(Lc/d/a/b/a/b/c;IIJ)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 78
    :cond_2
    :try_start_0
    iget-object v0, p0, Lc/d/a/b/a/b/c;->b:Lc/d/a/b/a/b/d;

    invoke-virtual {v0}, Lc/d/a/b/a/b/d;->c()Landroid/database/sqlite/SQLiteStatement;

    move-result-object v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    .line 79
    invoke-direct/range {v1 .. v6}, Lc/d/a/b/a/b/c;->a(IIJLandroid/database/sqlite/SQLiteStatement;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 80
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_0
    return-void
.end method

.method public a(ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lc/d/a/b/a/f/b;",
            ">;)V"
        }
    .end annotation

    .line 149
    :try_start_0
    invoke-virtual {p0, p1}, Lc/d/a/b/a/b/c;->h(I)V

    if-eqz p2, :cond_2

    .line 150
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lc/d/a/b/a/f/b;

    if-nez p2, :cond_1

    goto :goto_0

    .line 151
    :cond_1
    invoke-virtual {p0, p2}, Lc/d/a/b/a/b/c;->a(Lc/d/a/b/a/f/b;)V

    .line 152
    invoke-virtual {p2}, Lc/d/a/b/a/f/b;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    invoke-virtual {p2}, Lc/d/a/b/a/f/b;->h()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/d/a/b/a/f/b;

    .line 154
    invoke-virtual {p0, v0}, Lc/d/a/b/a/b/c;->a(Lc/d/a/b/a/f/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 155
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    return-void
.end method

.method public a(Landroid/util/SparseArray;Landroid/util/SparseArray;Lc/d/a/b/a/b/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lc/d/a/b/a/f/c;",
            ">;",
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Lc/d/a/b/a/f/b;",
            ">;>;",
            "Lc/d/a/b/a/b/b;",
            ")V"
        }
    .end annotation

    .line 13
    :try_start_0
    new-instance v0, Lc/d/a/b/a/b/c$c;

    invoke-direct {v0, p0, p1, p2, p3}, Lc/d/a/b/a/b/c$c;-><init>(Lc/d/a/b/a/b/c;Landroid/util/SparseArray;Landroid/util/SparseArray;Lc/d/a/b/a/b/b;)V

    .line 14
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->m()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 15
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 16
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public a(Lc/d/a/b/a/f/b;)V
    .locals 2

    .line 55
    invoke-direct {p0}, Lc/d/a/b/a/b/c;->e()V

    .line 56
    sget-object v0, Lc/d/a/b/a/b/c;->d:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lc/d/a/b/a/b/c;->b:Lc/d/a/b/a/b/d;

    if-nez v0, :cond_0

    goto :goto_0

    .line 57
    :cond_0
    invoke-static {}, Lc/d/a/b/a/j/d;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 58
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->m()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 59
    :cond_1
    new-instance v1, Lc/d/a/b/a/b/c$g;

    invoke-direct {v1, p0, p1}, Lc/d/a/b/a/b/c$g;-><init>(Lc/d/a/b/a/b/c;Lc/d/a/b/a/f/b;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 60
    :cond_2
    :try_start_0
    iget-object v0, p0, Lc/d/a/b/a/b/c;->b:Lc/d/a/b/a/b/d;

    invoke-virtual {v0}, Lc/d/a/b/a/b/d;->a()Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 61
    invoke-direct {p0, p1, v0}, Lc/d/a/b/a/b/c;->a(Lc/d/a/b/a/f/b;Landroid/database/sqlite/SQLiteStatement;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 62
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_0
    return-void
.end method

.method public a(Lc/d/a/b/a/f/c;)Z
    .locals 2

    .line 132
    invoke-direct {p0}, Lc/d/a/b/a/b/c;->e()V

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 133
    sget-object v1, Lc/d/a/b/a/b/c;->d:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_0

    goto :goto_1

    .line 134
    :cond_0
    invoke-static {}, Lc/d/a/b/a/j/d;->e()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 135
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->m()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    if-nez v1, :cond_1

    return v0

    .line 136
    :cond_1
    new-instance v0, Lc/d/a/b/a/b/c$a;

    invoke-direct {v0, p0, p1}, Lc/d/a/b/a/b/c$a;-><init>(Lc/d/a/b/a/b/c;Lc/d/a/b/a/f/c;)V

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 137
    :cond_2
    invoke-direct {p0, p1}, Lc/d/a/b/a/b/c;->d(Lc/d/a/b/a/f/c;)V

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_1
    return v0
.end method

.method public b(IJ)Lc/d/a/b/a/f/c;
    .locals 3

    .line 21
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/4 v1, -0x3

    .line 22
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "status"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 23
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "curBytes"

    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 p2, 0x0

    .line 24
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "isFirstDownload"

    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p3, "isFirstSuccess"

    .line 25
    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 26
    invoke-direct {p0, p1, v0}, Lc/d/a/b/a/b/c;->a(ILandroid/content/ContentValues;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public b(Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lc/d/a/b/a/f/c;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public b()V
    .locals 2

    .line 15
    invoke-direct {p0}, Lc/d/a/b/a/b/c;->e()V

    .line 16
    sget-object v0, Lc/d/a/b/a/b/c;->d:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    return-void

    .line 17
    :cond_0
    invoke-static {}, Lc/d/a/b/a/j/d;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 18
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->m()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 19
    :cond_1
    new-instance v1, Lc/d/a/b/a/b/c$d;

    invoke-direct {v1, p0}, Lc/d/a/b/a/b/c$d;-><init>(Lc/d/a/b/a/b/c;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 20
    :cond_2
    invoke-direct {p0}, Lc/d/a/b/a/b/c;->h()V

    :goto_0
    return-void
.end method

.method public b(ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lc/d/a/b/a/f/b;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public b(Lc/d/a/b/a/f/b;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lc/d/a/b/a/b/c;->a(Lc/d/a/b/a/f/b;)V

    return-void
.end method

.method public b(Lc/d/a/b/a/f/c;)V
    .locals 0

    return-void
.end method

.method public b(I)Z
    .locals 2

    .line 10
    invoke-static {}, Lc/d/a/b/a/j/d;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->m()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 12
    :cond_0
    new-instance v1, Lc/d/a/b/a/b/c$b;

    invoke-direct {v1, p0, p1}, Lc/d/a/b/a/b/c$b;-><init>(Lc/d/a/b/a/b/c;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 13
    :cond_1
    invoke-virtual {p0, p1}, Lc/d/a/b/a/b/c;->f(I)Z

    .line 14
    invoke-virtual {p0, p1}, Lc/d/a/b/a/b/c;->h(I)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public c(I)Lc/d/a/b/a/f/c;
    .locals 7

    .line 2
    invoke-direct {p0}, Lc/d/a/b/a/b/c;->e()V

    .line 3
    sget-object v0, Lc/d/a/b/a/b/c;->d:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 4
    :try_start_0
    sget-object v0, Lc/d/a/b/a/b/c;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "SELECT * FROM %s WHERE %s = ?"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "downloader"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "_id"

    const/4 v6, 0x1

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/String;

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v5

    .line 6
    invoke-virtual {v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 7
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    new-instance v0, Lc/d/a/b/a/f/c;

    invoke-direct {v0, p1}, Lc/d/a/b/a/f/c;-><init>(Landroid/database/Cursor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p1, :cond_0

    .line 9
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    if-eqz p1, :cond_3

    .line 11
    :try_start_3
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object p1, v1

    .line 12
    :goto_1
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    if-eqz p1, :cond_3

    .line 13
    :try_start_5
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception p1

    .line 14
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    :catchall_4
    move-exception v0

    if-eqz p1, :cond_2

    .line 15
    :try_start_6
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    goto :goto_2

    :catchall_5
    move-exception p1

    .line 16
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 17
    :cond_2
    :goto_2
    throw v0

    :cond_3
    :goto_3
    return-object v1
.end method

.method public c(IJ)Lc/d/a/b/a/f/c;
    .locals 3

    .line 25
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/4 v1, -0x2

    .line 26
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "status"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 27
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "curBytes"

    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 28
    invoke-direct {p0, p1, v0}, Lc/d/a/b/a/b/c;->a(ILandroid/content/ContentValues;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public c(Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lc/d/a/b/a/f/c;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public c()Z
    .locals 1

    .line 29
    iget-boolean v0, p0, Lc/d/a/b/a/b/c;->c:Z

    return v0
.end method

.method public d(IJ)Lc/d/a/b/a/f/c;
    .locals 3

    .line 28
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/4 v1, -0x1

    .line 29
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "status"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 30
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "curBytes"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-wide/16 v1, 0x0

    cmp-long p2, p2, v1

    if-lez p2, :cond_0

    const/4 p2, 0x0

    .line 31
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "isFirstDownload"

    invoke-virtual {v0, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 32
    :cond_0
    invoke-direct {p0, p1, v0}, Lc/d/a/b/a/b/c;->a(ILandroid/content/ContentValues;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public d(I)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lc/d/a/b/a/f/b;",
            ">;"
        }
    .end annotation

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-direct {p0}, Lc/d/a/b/a/b/c;->e()V

    .line 5
    sget-object v1, Lc/d/a/b/a/b/c;->d:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    .line 6
    :try_start_0
    sget-object v2, Lc/d/a/b/a/b/c;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "SELECT * FROM %s WHERE %s = ?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "downloadChunk"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-string v5, "_id"

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v7, [Ljava/lang/String;

    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v6

    .line 8
    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 9
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 10
    new-instance p1, Lc/d/a/b/a/f/b;

    invoke-direct {p1, v1}, Lc/d/a/b/a/f/b;-><init>(Landroid/database/Cursor;)V

    .line 11
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_2

    .line 12
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 13
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v1, :cond_2

    .line 14
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    .line 15
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    :catchall_2
    move-exception p1

    if-eqz v1, :cond_1

    .line 16
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 18
    :cond_1
    :goto_1
    throw p1

    :cond_2
    :goto_2
    return-object v0
.end method

.method public e(I)Lc/d/a/b/a/f/c;
    .locals 3

    .line 9
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/4 v1, 0x5

    .line 10
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "status"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v1, 0x0

    .line 11
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "isFirstDownload"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 12
    invoke-direct {p0, p1, v0}, Lc/d/a/b/a/b/c;->a(ILandroid/content/ContentValues;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public f(I)Z
    .locals 2

    .line 2
    invoke-direct {p0}, Lc/d/a/b/a/b/c;->e()V

    .line 3
    sget-object v0, Lc/d/a/b/a/b/c;->d:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lc/d/a/b/a/b/c;->a:Lc/d/a/b/a/b/d;

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lc/d/a/b/a/b/d;->b()Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lc/d/a/b/a/b/c;->a(ILandroid/database/sqlite/SQLiteStatement;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return v1
.end method

.method public g(I)Lc/d/a/b/a/f/c;
    .locals 3

    .line 4
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/4 v1, 0x1

    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "status"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 6
    invoke-direct {p0, p1, v0}, Lc/d/a/b/a/b/c;->a(ILandroid/content/ContentValues;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public h(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lc/d/a/b/a/b/c;->e()V

    .line 2
    sget-object v0, Lc/d/a/b/a/b/c;->d:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lc/d/a/b/a/b/c;->b:Lc/d/a/b/a/b/d;

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lc/d/a/b/a/j/d;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->m()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 5
    :cond_1
    new-instance v1, Lc/d/a/b/a/b/c$f;

    invoke-direct {v1, p0, p1}, Lc/d/a/b/a/b/c$f;-><init>(Lc/d/a/b/a/b/c;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 6
    :cond_2
    :try_start_0
    iget-object v0, p0, Lc/d/a/b/a/b/c;->b:Lc/d/a/b/a/b/d;

    invoke-virtual {v0}, Lc/d/a/b/a/b/d;->b()Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    .line 7
    invoke-direct {p0, p1, v0}, Lc/d/a/b/a/b/c;->a(ILandroid/database/sqlite/SQLiteStatement;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_0
    return-void
.end method

.method public i(I)Lc/d/a/b/a/f/c;
    .locals 3

    .line 1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/4 v1, -0x7

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "status"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3
    invoke-direct {p0, p1, v0}, Lc/d/a/b/a/b/c;->a(ILandroid/content/ContentValues;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public j(I)Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lc/d/a/b/a/b/c;->c(I)Lc/d/a/b/a/f/c;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catchall_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method
