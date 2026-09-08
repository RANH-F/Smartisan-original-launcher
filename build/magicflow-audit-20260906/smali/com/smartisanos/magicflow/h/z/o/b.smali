.class public Lcom/smartisanos/magicflow/h/z/o/b;
.super Ljava/lang/Object;
.source "XiaoYuanDB.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/smartisanos/magicflow/h/z/o/b;

    invoke-static {v0}, Lcom/smartisanos/magicflow/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/magicflow/LOG;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/ContentValues;)I
    .locals 3

    const-string v0, "_id"

    const/4 v1, -0x1

    if-nez p0, :cond_0

    return v1

    .line 3
    :cond_0
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 5
    :cond_1
    invoke-static {}, Lcom/smartisanos/magicflow/h/z/o/b;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 6
    new-instance v2, Lcom/smartisanos/magicflow/h/z/o/b$a;

    invoke-direct {v2, v0, p0}, Lcom/smartisanos/magicflow/h/z/o/b$a;-><init>(Landroid/database/sqlite/SQLiteDatabase;Landroid/content/ContentValues;)V

    .line 7
    invoke-virtual {v2}, Lcom/smartisanos/magicflow/h/z/e;->a()Lcom/smartisanos/magicflow/h/z/e$a;

    move-result-object p0

    iget-wide v0, p0, Lcom/smartisanos/magicflow/h/z/e$a;->b:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    long-to-int p0, v0

    return p0

    :catch_0
    move-exception p0

    .line 8
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v1
.end method

.method private static a()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .line 1
    invoke-static {}, Lcom/smartisanos/magicflow/h/z/o/c;->j()Lcom/smartisanos/magicflow/h/z/o/c;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 3

    .line 9
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 10
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/smartisanos/magicflow/h/z/o/b;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 11
    new-instance v2, Lcom/smartisanos/magicflow/h/z/o/b$b;

    invoke-direct {v2, v0, p0}, Lcom/smartisanos/magicflow/h/z/o/b$b;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 12
    invoke-virtual {v2}, Lcom/smartisanos/magicflow/h/z/e;->a()Lcom/smartisanos/magicflow/h/z/e$a;

    move-result-object p0

    iget-boolean p0, p0, Lcom/smartisanos/magicflow/h/z/e$a;->c:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 13
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v1
.end method
