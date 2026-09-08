.class public Lcom/smartisanos/magicflow/h/z/l;
.super Ljava/lang/Object;
.source "RecommendAppDB.java"


# direct methods
.method private static a()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .line 1
    invoke-static {}, Lcom/smartisanos/magicflow/h/z/j;->j()Lcom/smartisanos/magicflow/h/z/j;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 9
    :cond_0
    invoke-static {}, Lcom/smartisanos/magicflow/h/z/l;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 10
    new-instance v1, Lcom/smartisanos/magicflow/h/z/l$c;

    invoke-direct {v1, v0, p0, p1}, Lcom/smartisanos/magicflow/h/z/l$c;-><init>(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 11
    invoke-virtual {v1}, Lcom/smartisanos/magicflow/h/z/e;->a()Lcom/smartisanos/magicflow/h/z/e$a;

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    .line 6
    invoke-static {}, Lcom/smartisanos/magicflow/h/z/l;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 7
    new-instance v1, Lcom/smartisanos/magicflow/h/z/l$b;

    invoke-direct {v1, v0, p0}, Lcom/smartisanos/magicflow/h/z/l$b;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 8
    invoke-virtual {v1}, Lcom/smartisanos/magicflow/h/z/e;->a()Lcom/smartisanos/magicflow/h/z/e$a;

    return-void
.end method

.method public static a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/ContentValues;",
            ">;)V"
        }
    .end annotation

    .line 3
    invoke-static {}, Lcom/smartisanos/magicflow/h/z/l;->b()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 4
    new-instance v1, Lcom/smartisanos/magicflow/h/z/l$a;

    invoke-direct {v1, v0, p0}, Lcom/smartisanos/magicflow/h/z/l$a;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)V

    .line 5
    invoke-virtual {v1}, Lcom/smartisanos/magicflow/h/z/e;->a()Lcom/smartisanos/magicflow/h/z/e$a;

    return-void
.end method

.method private static b()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .line 1
    invoke-static {}, Lcom/smartisanos/magicflow/h/z/j;->j()Lcom/smartisanos/magicflow/h/z/j;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/smartisanos/magicflow/h/a;",
            ">;"
        }
    .end annotation

    .line 3
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    .line 4
    :try_start_0
    invoke-static {}, Lcom/smartisanos/magicflow/h/z/l;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "recommend_apps"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 5
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 6
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_2

    .line 7
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 8
    :cond_0
    invoke-static {v0}, Lcom/smartisanos/magicflow/h/a;->a(Landroid/database/Cursor;)Lcom/smartisanos/magicflow/h/a;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 9
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :cond_2
    if-eqz v0, :cond_3

    .line 11
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 12
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_3

    .line 13
    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 14
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_0
    return-object p0

    :goto_1
    if-eqz v0, :cond_4

    .line 15
    :try_start_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    .line 16
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 17
    :cond_4
    :goto_2
    throw p0
.end method
