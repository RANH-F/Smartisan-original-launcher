.class Lc/d/a/b/a/b/c$c;
.super Ljava/lang/Object;
.source "SqlDownloadCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/d/a/b/a/b/c;->a(Landroid/util/SparseArray;Landroid/util/SparseArray;Lc/d/a/b/a/b/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/util/SparseArray;

.field final synthetic b:Landroid/util/SparseArray;

.field final synthetic c:Lc/d/a/b/a/b/b;

.field final synthetic d:Lc/d/a/b/a/b/c;


# direct methods
.method constructor <init>(Lc/d/a/b/a/b/c;Landroid/util/SparseArray;Landroid/util/SparseArray;Lc/d/a/b/a/b/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/d/a/b/a/b/c$c;->d:Lc/d/a/b/a/b/c;

    iput-object p2, p0, Lc/d/a/b/a/b/c$c;->a:Landroid/util/SparseArray;

    iput-object p3, p0, Lc/d/a/b/a/b/c$c;->b:Landroid/util/SparseArray;

    iput-object p4, p0, Lc/d/a/b/a/b/c$c;->c:Lc/d/a/b/a/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 1
    iget-object v0, p0, Lc/d/a/b/a/b/c$c;->d:Lc/d/a/b/a/b/c;

    invoke-static {v0}, Lc/d/a/b/a/b/c;->a(Lc/d/a/b/a/b/c;)V

    .line 2
    invoke-static {}, Lc/d/a/b/a/b/c;->d()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->s()Lcom/ss/android/socialbase/downloader/downloader/l;

    move-result-object v0

    .line 4
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 5
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 6
    :try_start_0
    invoke-static {}, Lc/d/a/b/a/b/c;->d()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v6

    const-string v7, "SELECT * FROM downloader"

    invoke-virtual {v6, v7, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 7
    :cond_1
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 8
    new-instance v6, Lc/d/a/b/a/f/c;

    invoke-direct {v6, v3}, Lc/d/a/b/a/f/c;-><init>(Landroid/database/Cursor;)V

    .line 9
    invoke-virtual {v6}, Lc/d/a/b/a/f/c;->I()Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v7, -0x5

    .line 10
    invoke-virtual {v6, v7}, Lc/d/a/b/a/f/c;->a(I)V

    .line 11
    :cond_2
    invoke-virtual {v6}, Lc/d/a/b/a/f/c;->u0()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_7

    invoke-virtual {v6}, Lc/d/a/b/a/f/c;->r0()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_1

    .line 12
    :cond_3
    new-instance v7, Ljava/io/File;

    invoke-virtual {v6}, Lc/d/a/b/a/f/c;->u0()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6}, Lc/d/a/b/a/f/c;->r0()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-virtual {v6}, Lc/d/a/b/a/f/c;->A0()I

    move-result v8

    const/4 v9, -0x3

    if-ne v8, v9, :cond_4

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 14
    :cond_4
    invoke-virtual {v6}, Lc/d/a/b/a/f/c;->A0()I

    move-result v7

    if-ne v7, v5, :cond_5

    invoke-virtual {v6}, Lc/d/a/b/a/f/c;->q()J

    move-result-wide v7

    const-wide/16 v10, 0x0

    cmp-long v7, v7, v10

    if-lez v7, :cond_7

    .line 15
    :cond_5
    invoke-virtual {v6}, Lc/d/a/b/a/f/c;->A0()I

    move-result v7

    if-eq v7, v9, :cond_6

    invoke-virtual {v6}, Lc/d/a/b/a/f/c;->C()Z

    move-result v7

    if-nez v7, :cond_6

    goto :goto_1

    :cond_6
    move v7, v4

    goto :goto_2

    :cond_7
    :goto_1
    move v7, v5

    :goto_2
    if-eqz v7, :cond_8

    .line 16
    invoke-virtual {v6}, Lc/d/a/b/a/f/c;->q0()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 17
    :cond_8
    invoke-virtual {v6}, Lc/d/a/b/a/f/c;->q0()I

    move-result v7

    if-eqz v0, :cond_9

    .line 18
    invoke-virtual {v6}, Lc/d/a/b/a/f/c;->t0()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6}, Lc/d/a/b/a/f/c;->u0()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0, v8, v9}, Lcom/ss/android/socialbase/downloader/downloader/l;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    goto :goto_3

    :cond_9
    move v8, v4

    :goto_3
    if-eq v8, v7, :cond_a

    .line 19
    invoke-virtual {v6, v8}, Lc/d/a/b/a/f/c;->f(I)V

    .line 20
    invoke-virtual {v1, v7, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 21
    :cond_a
    iget-object v7, p0, Lc/d/a/b/a/b/c$c;->a:Landroid/util/SparseArray;

    if-eqz v7, :cond_1

    .line 22
    iget-object v7, p0, Lc/d/a/b/a/b/c$c;->a:Landroid/util/SparseArray;

    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 23
    :try_start_1
    iget-object v8, p0, Lc/d/a/b/a/b/c$c;->a:Landroid/util/SparseArray;

    invoke-virtual {v6}, Lc/d/a/b/a/f/c;->q0()I

    move-result v9

    invoke-virtual {v8, v9, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 24
    monitor-exit v7

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :cond_b
    if-eqz v3, :cond_c

    .line 25
    :try_start_3
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v0

    .line 26
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 27
    :cond_c
    :goto_4
    iget-object v0, p0, Lc/d/a/b/a/b/c$c;->d:Lc/d/a/b/a/b/c;

    iget-object v3, p0, Lc/d/a/b/a/b/c$c;->a:Landroid/util/SparseArray;

    iget-object v6, p0, Lc/d/a/b/a/b/c$c;->b:Landroid/util/SparseArray;

    invoke-static {v0, v2, v1, v3, v6}, Lc/d/a/b/a/b/c;->a(Lc/d/a/b/a/b/c;Ljava/util/List;Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 28
    :try_start_4
    iget-object v0, p0, Lc/d/a/b/a/b/c$c;->a:Landroid/util/SparseArray;

    if-eqz v0, :cond_10

    .line 29
    iget-object v0, p0, Lc/d/a/b/a/b/c$c;->a:Landroid/util/SparseArray;

    monitor-enter v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    .line 30
    :try_start_5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 31
    :goto_5
    iget-object v2, p0, Lc/d/a/b/a/b/c$c;->a:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v4, v2, :cond_e

    .line 32
    iget-object v2, p0, Lc/d/a/b/a/b/c$c;->a:Landroid/util/SparseArray;

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    if-eqz v2, :cond_d

    .line 33
    iget-object v3, p0, Lc/d/a/b/a/b/c$c;->a:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/d/a/b/a/f/c;

    if-eqz v2, :cond_d

    .line 34
    invoke-virtual {v2}, Lc/d/a/b/a/f/c;->D()Z

    move-result v3

    if-nez v3, :cond_d

    .line 35
    invoke-virtual {v2}, Lc/d/a/b/a/f/c;->q0()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    iget-object v3, p0, Lc/d/a/b/a/b/c$c;->b:Landroid/util/SparseArray;

    invoke-virtual {v2}, Lc/d/a/b/a/f/c;->q0()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->remove(I)V

    :cond_d
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 37
    :cond_e
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 38
    iget-object v3, p0, Lc/d/a/b/a/b/c$c;->a:Landroid/util/SparseArray;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_6

    .line 39
    :cond_f
    monitor-exit v0

    goto :goto_7

    :catchall_2
    move-exception v1

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    throw v1

    .line 40
    :cond_10
    :goto_7
    iget-object v0, p0, Lc/d/a/b/a/b/c$c;->c:Lc/d/a/b/a/b/b;

    if-eqz v0, :cond_16

    .line 41
    iget-object v0, p0, Lc/d/a/b/a/b/c$c;->c:Lc/d/a/b/a/b/b;

    invoke-interface {v0}, Lc/d/a/b/a/b/b;->a()V

    .line 42
    iget-object v0, p0, Lc/d/a/b/a/b/c$c;->d:Lc/d/a/b/a/b/c;

    invoke-static {v0, v5}, Lc/d/a/b/a/b/c;->a(Lc/d/a/b/a/b/c;Z)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    goto/16 :goto_c

    :catchall_3
    move-exception v0

    .line 43
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    if-eqz v3, :cond_11

    .line 44
    :try_start_8
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    goto :goto_8

    :catchall_4
    move-exception v0

    .line 45
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 46
    :cond_11
    :goto_8
    iget-object v0, p0, Lc/d/a/b/a/b/c$c;->d:Lc/d/a/b/a/b/c;

    iget-object v3, p0, Lc/d/a/b/a/b/c$c;->a:Landroid/util/SparseArray;

    iget-object v6, p0, Lc/d/a/b/a/b/c$c;->b:Landroid/util/SparseArray;

    invoke-static {v0, v2, v1, v3, v6}, Lc/d/a/b/a/b/c;->a(Lc/d/a/b/a/b/c;Ljava/util/List;Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 47
    :try_start_9
    iget-object v0, p0, Lc/d/a/b/a/b/c$c;->a:Landroid/util/SparseArray;

    if-eqz v0, :cond_15

    .line 48
    iget-object v0, p0, Lc/d/a/b/a/b/c$c;->a:Landroid/util/SparseArray;

    monitor-enter v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    .line 49
    :try_start_a
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 50
    :goto_9
    iget-object v2, p0, Lc/d/a/b/a/b/c$c;->a:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v4, v2, :cond_13

    .line 51
    iget-object v2, p0, Lc/d/a/b/a/b/c$c;->a:Landroid/util/SparseArray;

    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    if-eqz v2, :cond_12

    .line 52
    iget-object v3, p0, Lc/d/a/b/a/b/c$c;->a:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lc/d/a/b/a/f/c;

    if-eqz v2, :cond_12

    .line 53
    invoke-virtual {v2}, Lc/d/a/b/a/f/c;->D()Z

    move-result v3

    if-nez v3, :cond_12

    .line 54
    invoke-virtual {v2}, Lc/d/a/b/a/f/c;->q0()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    iget-object v3, p0, Lc/d/a/b/a/b/c$c;->b:Landroid/util/SparseArray;

    invoke-virtual {v2}, Lc/d/a/b/a/f/c;->q0()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->remove(I)V

    :cond_12
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 56
    :cond_13
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 57
    iget-object v3, p0, Lc/d/a/b/a/b/c$c;->a:Landroid/util/SparseArray;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_a

    .line 58
    :cond_14
    monitor-exit v0

    goto :goto_b

    :catchall_5
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    :try_start_b
    throw v1

    .line 59
    :cond_15
    :goto_b
    iget-object v0, p0, Lc/d/a/b/a/b/c$c;->c:Lc/d/a/b/a/b/b;

    if-eqz v0, :cond_16

    .line 60
    iget-object v0, p0, Lc/d/a/b/a/b/c$c;->c:Lc/d/a/b/a/b/b;

    invoke-interface {v0}, Lc/d/a/b/a/b/b;->a()V

    .line 61
    iget-object v0, p0, Lc/d/a/b/a/b/c$c;->d:Lc/d/a/b/a/b/c;

    invoke-static {v0, v5}, Lc/d/a/b/a/b/c;->a(Lc/d/a/b/a/b/c;Z)Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    goto :goto_c

    :catchall_6
    move-exception v0

    .line 62
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_16
    :goto_c
    return-void

    :catchall_7
    move-exception v0

    if-eqz v3, :cond_17

    .line 63
    :try_start_c
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    goto :goto_d

    :catchall_8
    move-exception v3

    .line 64
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 65
    :cond_17
    :goto_d
    iget-object v3, p0, Lc/d/a/b/a/b/c$c;->d:Lc/d/a/b/a/b/c;

    iget-object v6, p0, Lc/d/a/b/a/b/c$c;->a:Landroid/util/SparseArray;

    iget-object v7, p0, Lc/d/a/b/a/b/c$c;->b:Landroid/util/SparseArray;

    invoke-static {v3, v2, v1, v6, v7}, Lc/d/a/b/a/b/c;->a(Lc/d/a/b/a/b/c;Ljava/util/List;Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 66
    :try_start_d
    iget-object v1, p0, Lc/d/a/b/a/b/c$c;->a:Landroid/util/SparseArray;

    if-eqz v1, :cond_1b

    .line 67
    iget-object v1, p0, Lc/d/a/b/a/b/c$c;->a:Landroid/util/SparseArray;

    monitor-enter v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_a

    .line 68
    :try_start_e
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 69
    :goto_e
    iget-object v3, p0, Lc/d/a/b/a/b/c$c;->a:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v4, v3, :cond_19

    .line 70
    iget-object v3, p0, Lc/d/a/b/a/b/c$c;->a:Landroid/util/SparseArray;

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    if-eqz v3, :cond_18

    .line 71
    iget-object v6, p0, Lc/d/a/b/a/b/c$c;->a:Landroid/util/SparseArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lc/d/a/b/a/f/c;

    if-eqz v3, :cond_18

    .line 72
    invoke-virtual {v3}, Lc/d/a/b/a/f/c;->D()Z

    move-result v6

    if-nez v6, :cond_18

    .line 73
    invoke-virtual {v3}, Lc/d/a/b/a/f/c;->q0()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object v6, p0, Lc/d/a/b/a/b/c$c;->b:Landroid/util/SparseArray;

    invoke-virtual {v3}, Lc/d/a/b/a/f/c;->q0()I

    move-result v3

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->remove(I)V

    :cond_18
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 75
    :cond_19
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 76
    iget-object v4, p0, Lc/d/a/b/a/b/c$c;->a:Landroid/util/SparseArray;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_f

    .line 77
    :cond_1a
    monitor-exit v1

    goto :goto_10

    :catchall_9
    move-exception v2

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_9

    :try_start_f
    throw v2

    .line 78
    :cond_1b
    :goto_10
    iget-object v1, p0, Lc/d/a/b/a/b/c$c;->c:Lc/d/a/b/a/b/b;

    if-eqz v1, :cond_1c

    .line 79
    iget-object v1, p0, Lc/d/a/b/a/b/c$c;->c:Lc/d/a/b/a/b/b;

    invoke-interface {v1}, Lc/d/a/b/a/b/b;->a()V

    .line 80
    iget-object v1, p0, Lc/d/a/b/a/b/c$c;->d:Lc/d/a/b/a/b/c;

    invoke-static {v1, v5}, Lc/d/a/b/a/b/c;->a(Lc/d/a/b/a/b/c;Z)Z
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_a

    goto :goto_11

    :catchall_a
    move-exception v1

    .line 81
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 82
    :cond_1c
    :goto_11
    throw v0
.end method
