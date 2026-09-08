.class public Lcom/smartisanos/magicflow/h/z/f;
.super Lcom/smartisanos/magicflow/h/w;
.source "EXPRESS_ACCOUNT.java"


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/smartisanos/magicflow/h/z/f;->a:Ljava/util/Map;

    .line 2
    sget-object v0, Lcom/smartisanos/magicflow/h/z/f;->a:Ljava/util/Map;

    const-string v1, "_id"

    const-string v2, "INTEGER PRIMARY KEY AUTOINCREMENT"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v0, Lcom/smartisanos/magicflow/h/z/f;->a:Ljava/util/Map;

    const-string v1, "TEXT"

    const-string v2, "account_num"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v0, Lcom/smartisanos/magicflow/h/z/f;->a:Ljava/util/Map;

    const-string v2, "sub_id"

    const-string v3, "LONG"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object v0, Lcom/smartisanos/magicflow/h/z/f;->a:Ljava/util/Map;

    const-string v2, "sim_type"

    const-string v3, "INTEGER"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object v0, Lcom/smartisanos/magicflow/h/z/f;->a:Ljava/util/Map;

    const-string v2, "data"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    sget-object v0, Lcom/smartisanos/magicflow/h/z/f;->a:Ljava/util/Map;

    const-string v2, "data1"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-object v0, Lcom/smartisanos/magicflow/h/z/f;->a:Ljava/util/Map;

    const-string v2, "data2"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    sget-object v0, Lcom/smartisanos/magicflow/h/z/f;->a:Ljava/util/Map;

    const-string v2, "data3"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/magicflow/h/w;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/h/z/f;->c()[Ljava/lang/String;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/smartisanos/magicflow/h/z/f;->a:Ljava/util/Map;

    const-string v2, "express_account"

    invoke-static {v2, v0, v1}, Lcom/smartisanos/magicflow/h/w;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    return-void
.end method

.method public a(ILandroid/database/sqlite/SQLiteDatabase;)Z
    .locals 1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    :try_start_0
    const-string p1, "express_account"

    .line 3
    invoke-static {p1}, Lcom/smartisanos/magicflow/h/z/j;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/h/z/f;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0, p2}, Lcom/smartisanos/magicflow/h/z/f;->a(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, "express_account"

    return-object v0
.end method

.method public c()[Ljava/lang/String;
    .locals 8

    const-string v0, "_id"

    const-string v1, "account_num"

    const-string v2, "sub_id"

    const-string v3, "sim_type"

    const-string v4, "data"

    const-string v5, "data1"

    const-string v6, "data2"

    const-string v7, "data3"

    .line 1
    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
