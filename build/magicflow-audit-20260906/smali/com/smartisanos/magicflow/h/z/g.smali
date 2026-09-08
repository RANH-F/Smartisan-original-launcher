.class public Lcom/smartisanos/magicflow/h/z/g;
.super Ljava/lang/Object;
.source "ExpressAccountDB.java"


# static fields
.field private static final a:Lcom/smartisanos/magicflow/LOG;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/smartisanos/magicflow/h/z/g;

    invoke-static {v0}, Lcom/smartisanos/magicflow/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/magicflow/LOG;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/magicflow/h/z/g;->a:Lcom/smartisanos/magicflow/LOG;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/util/List;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/ContentValues;",
            ">;)I"
        }
    .end annotation

    const/4 v0, -0x1

    if-eqz p0, :cond_1

    .line 2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/smartisanos/magicflow/h/z/g;->e()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 4
    new-instance v2, Lcom/smartisanos/magicflow/h/z/g$a;

    invoke-direct {v2, v1, p0}, Lcom/smartisanos/magicflow/h/z/g$a;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)V

    .line 5
    invoke-virtual {v2}, Lcom/smartisanos/magicflow/h/z/e;->a()Lcom/smartisanos/magicflow/h/z/e$a;

    move-result-object p0

    iget-wide v0, p0, Lcom/smartisanos/magicflow/h/z/e$a;->b:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    long-to-int p0, v0

    return p0

    :catch_0
    move-exception p0

    .line 6
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return v0
.end method

.method static synthetic a()Lcom/smartisanos/magicflow/LOG;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/h/z/g;->a:Lcom/smartisanos/magicflow/LOG;

    return-object v0
.end method

.method public static a(J)Z
    .locals 2

    .line 11
    :try_start_0
    invoke-static {}, Lcom/smartisanos/magicflow/h/z/g;->e()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 12
    new-instance v1, Lcom/smartisanos/magicflow/h/z/g$c;

    invoke-direct {v1, v0, p0, p1}, Lcom/smartisanos/magicflow/h/z/g$c;-><init>(Landroid/database/sqlite/SQLiteDatabase;J)V

    .line 13
    invoke-virtual {v1}, Lcom/smartisanos/magicflow/h/z/e;->a()Lcom/smartisanos/magicflow/h/z/e$a;

    move-result-object p0

    iget-boolean p0, p0, Lcom/smartisanos/magicflow/h/z/e$a;->c:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 14
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 2

    .line 7
    :try_start_0
    invoke-static {}, Lcom/smartisanos/magicflow/h/z/g;->e()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 8
    new-instance v1, Lcom/smartisanos/magicflow/h/z/g$b;

    invoke-direct {v1, v0, p0}, Lcom/smartisanos/magicflow/h/z/g$b;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 9
    invoke-virtual {v1}, Lcom/smartisanos/magicflow/h/z/e;->a()Lcom/smartisanos/magicflow/h/z/e$a;

    move-result-object p0

    iget-boolean p0, p0, Lcom/smartisanos/magicflow/h/z/e$a;->c:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 10
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method public static b()I
    .locals 4

    .line 1
    :try_start_0
    invoke-static {}, Lcom/smartisanos/magicflow/h/z/g;->e()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/smartisanos/magicflow/h/z/g$d;

    invoke-direct {v1, v0}, Lcom/smartisanos/magicflow/h/z/g$d;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 3
    invoke-virtual {v1}, Lcom/smartisanos/magicflow/h/z/e;->a()Lcom/smartisanos/magicflow/h/z/e$a;

    move-result-object v0

    iget v0, v0, Lcom/smartisanos/magicflow/h/z/e$a;->a:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 5
    sget-object v1, Lcom/smartisanos/magicflow/h/z/g;->a:Lcom/smartisanos/magicflow/LOG;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteAll e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    const/4 v0, -0x1

    return v0
.end method

.method public static c()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/smartisanos/magicflow/h/e;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 2
    :try_start_0
    invoke-static {}, Lcom/smartisanos/magicflow/h/z/g;->d()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "express_account"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 3
    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 4
    sget-object v2, Lcom/smartisanos/magicflow/h/z/g;->a:Lcom/smartisanos/magicflow/LOG;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cursor.count = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    if-eqz v1, :cond_1

    .line 5
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 6
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "_id"

    .line 7
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v3, "sub_id"

    .line 8
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string v4, "account_num"

    .line 9
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 10
    :cond_0
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    .line 11
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 12
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 13
    new-instance v8, Lcom/smartisanos/magicflow/h/e;

    invoke-direct {v8, v7, v5, v6}, Lcom/smartisanos/magicflow/h/e;-><init>(Ljava/lang/String;J)V

    .line 14
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_0

    :cond_1
    if-eqz v1, :cond_2

    .line 16
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 17
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_2

    .line 18
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    .line 19
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-object v0

    :goto_1
    if-eqz v1, :cond_3

    .line 20
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_2
    move-exception v1

    .line 21
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 22
    :cond_3
    :goto_2
    throw v0
.end method

.method private static d()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .line 1
    invoke-static {}, Lcom/smartisanos/magicflow/h/z/j;->j()Lcom/smartisanos/magicflow/h/z/j;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method private static e()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .line 1
    invoke-static {}, Lcom/smartisanos/magicflow/h/z/j;->j()Lcom/smartisanos/magicflow/h/z/j;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method
