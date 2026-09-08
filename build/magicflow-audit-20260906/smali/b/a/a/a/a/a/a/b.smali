.class public Lb/a/a/a/a/a/a/b;
.super Ljava/lang/Object;
.source "CardDBManager.java"


# static fields
.field private static e:Lb/a/a/a/a/a/a/b;


# instance fields
.field private a:Lb/a/a/a/a/a/a/a;

.field private b:Landroid/database/sqlite/SQLiteDatabase;

.field private c:Landroid/content/Context;

.field private final d:Ljava/lang/Object;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lb/a/a/a/a/a/a/b;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 3
    iput-object v0, p0, Lb/a/a/a/a/a/a/b;->c:Landroid/content/Context;

    .line 4
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lb/a/a/a/a/a/a/b;->d:Ljava/lang/Object;

    .line 5
    new-instance v0, Lb/a/a/a/a/a/a/a;

    invoke-direct {v0, p1}, Lb/a/a/a/a/a/a/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lb/a/a/a/a/a/a/b;->a:Lb/a/a/a/a/a/a/a;

    .line 6
    iget-object v0, p0, Lb/a/a/a/a/a/a/b;->a:Lb/a/a/a/a/a/a/a;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lb/a/a/a/a/a/a/b;->b:Landroid/database/sqlite/SQLiteDatabase;

    .line 7
    iput-object p1, p0, Lb/a/a/a/a/a/a/b;->c:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lb/a/a/a/a/a/a/b;
    .locals 2

    .line 1
    const-class v0, Lb/a/a/a/a/a/a/b;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lb/a/a/a/a/a/a/b;->e:Lb/a/a/a/a/a/a/b;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lb/a/a/a/a/a/a/b;

    invoke-direct {v1, p0}, Lb/a/a/a/a/a/a/b;-><init>(Landroid/content/Context;)V

    sput-object v1, Lb/a/a/a/a/a/a/b;->e:Lb/a/a/a/a/a/a/b;

    .line 4
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    sget-object p0, Lb/a/a/a/a/a/a/b;->e:Lb/a/a/a/a/a/a/b;

    return-object p0

    :catchall_0
    move-exception p0

    .line 6
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private a(Lb/a/a/a/a/a/a/c;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_1

    .line 487
    iget-object p1, p1, Lb/a/a/a/a/a/a/c;->h:Lorg/json/JSONObject;

    if-nez p1, :cond_0

    goto :goto_0

    .line 488
    :cond_0
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const-string p1, ""

    return-object p1
.end method

.method private varargs a(Z[Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const-string v0, ""

    if-eqz p2, :cond_6

    .line 402
    array-length v1, p2

    if-nez v1, :cond_0

    goto :goto_1

    .line 403
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "|"

    if-eqz p1, :cond_1

    .line 404
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    :cond_1
    array-length v3, p2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    .line 406
    aget-object v5, p2, v4

    .line 407
    invoke-static {v5}, Lb/a/a/a/a/a/a/b;->d(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 408
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v3, -0x1

    if-eq v4, v5, :cond_2

    const-string v5, ","

    .line 409
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_4

    .line 410
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "||"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_6
    :goto_1
    return-object v0
.end method

.method private a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lb/a/a/a/a/a/a/c;",
            ">;"
        }
    .end annotation

    .line 445
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 446
    invoke-static {p1}, Lb/a/a/a/a/a/a/b;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 447
    :cond_0
    iget-object v2, p0, Lb/a/a/a/a/a/a/b;->b:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v3, "tb_card_item"

    move-object v5, p1

    move-object v6, p2

    move-object v9, p3

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 448
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 449
    new-instance p2, Lb/a/a/a/a/a/a/c;

    invoke-direct {p2}, Lb/a/a/a/a/a/a/c;-><init>()V

    const-string p3, "id"

    .line 450
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p3

    invoke-interface {p1, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result p3

    iput p3, p2, Lb/a/a/a/a/a/a/c;->a:I

    const-string p3, "msg_id"

    .line 451
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p3

    invoke-interface {p1, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p2, Lb/a/a/a/a/a/a/c;->b:Ljava/lang/String;

    const-string p3, "card_type"

    .line 452
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p3

    invoke-interface {p1, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p2, Lb/a/a/a/a/a/a/c;->c:Ljava/lang/String;

    const-string p3, "content"

    .line 453
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p3

    invoke-interface {p1, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p2, Lb/a/a/a/a/a/a/c;->d:Ljava/lang/String;

    const-string p3, "sms_recive_time"

    .line 454
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p3

    invoke-interface {p1, p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, p2, Lb/a/a/a/a/a/a/c;->e:J

    const-string p3, "phone_num"

    .line 455
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p3

    invoke-interface {p1, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p2, Lb/a/a/a/a/a/a/c;->f:Ljava/lang/String;

    const-string p3, "title_no"

    .line 456
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p3

    invoke-interface {p1, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p2, Lb/a/a/a/a/a/a/c;->g:Ljava/lang/String;

    const-string p3, "parse_result"

    .line 457
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p3

    invoke-interface {p1, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 458
    invoke-static {p3}, Lb/a/a/a/a/a/a/b;->d(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 459
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, p2, Lb/a/a/a/a/a/a/c;->h:Lorg/json/JSONObject;

    .line 460
    iget-object p3, p2, Lb/a/a/a/a/a/a/c;->h:Lorg/json/JSONObject;

    const-string v1, "bubble_id"

    iget v2, p2, Lb/a/a/a/a/a/a/c;->a:I

    invoke-virtual {p3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    const-string p3, "deadline"

    .line 461
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p3

    invoke-interface {p1, p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, p2, Lb/a/a/a/a/a/a/c;->i:J

    const-string p3, "order_time"

    .line 462
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p3

    invoke-interface {p1, p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, p2, Lb/a/a/a/a/a/a/c;->j:J

    const-string p3, "appear_time"

    .line 463
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p3

    invoke-interface {p1, p3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    iput-wide v1, p2, Lb/a/a/a/a/a/a/c;->k:J

    const-string p3, "dup_value"

    .line 464
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p3

    invoke-interface {p1, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p2, Lb/a/a/a/a/a/a/c;->l:Ljava/lang/String;

    const-string p3, "special_key"

    .line 465
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p3

    invoke-interface {p1, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p2, Lb/a/a/a/a/a/a/c;->m:Ljava/lang/String;

    const-string p3, "delete_flag"

    .line 466
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p3

    invoke-interface {p1, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result p3

    iput p3, p2, Lb/a/a/a/a/a/a/c;->n:I

    .line 467
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 468
    :cond_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object v0
.end method

.method private a(Ljava/util/List;ILjava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lb/a/a/a/a/a/a/d;",
            ">;I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lb/a/a/a/a/a/a/d;",
            ">;"
        }
    .end annotation

    .line 469
    new-instance v0, Lb/a/a/a/a/a/a/d;

    invoke-direct {v0}, Lb/a/a/a/a/a/a/d;-><init>()V

    .line 470
    invoke-virtual {v0, p2}, Lb/a/a/a/a/a/a/d;->b(I)V

    .line 471
    invoke-virtual {v0, p3}, Lb/a/a/a/a/a/a/d;->b(Ljava/lang/String;)V

    .line 472
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method private a(Ljava/util/List;Lb/a/a/a/a/a/a/c;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lb/a/a/a/a/a/a/d;",
            ">;",
            "Lb/a/a/a/a/a/a/c;",
            ")",
            "Ljava/util/List<",
            "Lb/a/a/a/a/a/a/d;",
            ">;"
        }
    .end annotation

    if-eqz p2, :cond_1

    .line 415
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "msg_id"

    .line 416
    iget-object v2, p2, Lb/a/a/a/a/a/a/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "card_type"

    .line 417
    iget-object v2, p2, Lb/a/a/a/a/a/a/c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "content"

    .line 418
    iget-object v2, p2, Lb/a/a/a/a/a/a/c;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "sms_recive_time"

    .line 419
    iget-wide v2, p2, Lb/a/a/a/a/a/a/c;->e:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "phone_num"

    .line 420
    iget-object v2, p2, Lb/a/a/a/a/a/a/c;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "title_no"

    .line 421
    iget-object v2, p2, Lb/a/a/a/a/a/a/c;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    iget-object v1, p2, Lb/a/a/a/a/a/a/c;->h:Lorg/json/JSONObject;

    if-eqz v1, :cond_0

    const-string v1, "parse_result"

    .line 423
    iget-object v2, p2, Lb/a/a/a/a/a/a/c;->h:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v1, "deadline"

    .line 424
    iget-wide v2, p2, Lb/a/a/a/a/a/a/c;->i:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "order_time"

    .line 425
    iget-wide v2, p2, Lb/a/a/a/a/a/a/c;->j:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "appear_time"

    .line 426
    iget-wide v2, p2, Lb/a/a/a/a/a/a/c;->k:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "dup_value"

    .line 427
    iget-object v2, p2, Lb/a/a/a/a/a/a/c;->l:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "special_key"

    .line 428
    iget-object v2, p2, Lb/a/a/a/a/a/a/c;->m:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "delete_flag"

    .line 429
    iget v2, p2, Lb/a/a/a/a/a/a/c;->n:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 430
    iget-object v1, p0, Lb/a/a/a/a/a/a/b;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "tb_card_item"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    const/4 v0, 0x1

    .line 431
    invoke-direct {p0, p1, p2, v0}, Lb/a/a/a/a/a/a/b;->a(Ljava/util/List;Lb/a/a/a/a/a/a/c;I)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p2

    .line 432
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CardDBManager saveCardData error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "CardDBManager"

    invoke-static {v0, p2}, Lb/a/a/a/a/a/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 p2, -0x1

    const-string v0, "saveCardData error "

    .line 433
    invoke-direct {p0, p1, p2, v0}, Lb/a/a/a/a/a/a/b;->a(Ljava/util/List;ILjava/lang/String;)Ljava/util/List;

    return-object p1
.end method

.method private a(Ljava/util/List;Lb/a/a/a/a/a/a/c;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lb/a/a/a/a/a/a/d;",
            ">;",
            "Lb/a/a/a/a/a/a/c;",
            "I)",
            "Ljava/util/List<",
            "Lb/a/a/a/a/a/a/d;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 486
    invoke-direct {p0, p1, p2, p3, v0}, Lb/a/a/a/a/a/a/b;->a(Ljava/util/List;Lb/a/a/a/a/a/a/c;ILjava/lang/String;)Ljava/util/List;

    return-object p1
.end method

.method private a(Ljava/util/List;Lb/a/a/a/a/a/a/c;ILjava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lb/a/a/a/a/a/a/d;",
            ">;",
            "Lb/a/a/a/a/a/a/c;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lb/a/a/a/a/a/a/d;",
            ">;"
        }
    .end annotation

    .line 473
    new-instance v0, Lb/a/a/a/a/a/a/d;

    invoke-direct {v0}, Lb/a/a/a/a/a/a/d;-><init>()V

    const/4 v1, 0x0

    .line 474
    invoke-virtual {v0, v1}, Lb/a/a/a/a/a/a/d;->b(I)V

    const/4 v1, 0x1

    if-ne p3, v1, :cond_0

    const-string v1, "add"

    .line 475
    invoke-virtual {v0, v1}, Lb/a/a/a/a/a/a/d;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    if-ne p3, v1, :cond_1

    const-string v1, "update"

    .line 476
    invoke-virtual {v0, v1}, Lb/a/a/a/a/a/a/d;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne p3, v1, :cond_2

    const-string v1, "delete"

    .line 477
    invoke-virtual {v0, v1}, Lb/a/a/a/a/a/a/d;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x4

    if-ne p3, v1, :cond_3

    const-string v1, "abandon"

    .line 478
    invoke-virtual {v0, v1}, Lb/a/a/a/a/a/a/d;->b(Ljava/lang/String;)V

    .line 479
    :cond_3
    :goto_0
    invoke-virtual {v0, p3}, Lb/a/a/a/a/a/a/d;->a(I)V

    .line 480
    iget-object p3, p2, Lb/a/a/a/a/a/a/c;->b:Ljava/lang/String;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Lb/a/a/a/a/a/a/d;->c(Ljava/lang/String;)V

    .line 481
    invoke-static {p4}, Lb/a/a/a/a/a/a/b;->d(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_4

    .line 482
    invoke-virtual {v0, p4}, Lb/a/a/a/a/a/a/d;->a(Ljava/lang/String;)V

    .line 483
    :cond_4
    invoke-virtual {v0, p2}, Lb/a/a/a/a/a/a/d;->a(Lb/a/a/a/a/a/a/c;)V

    .line 484
    iget-object p2, p2, Lb/a/a/a/a/a/a/c;->h:Lorg/json/JSONObject;

    invoke-static {p2}, Lb/a/a/a/a/a/a/e;->a(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object p2

    invoke-virtual {v0, p2}, Lb/a/a/a/a/a/a/d;->a(Ljava/util/Map;)V

    .line 485
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method private varargs a(Lorg/json/JSONObject;Lorg/json/JSONObject;Z[Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 5

    if-eqz p1, :cond_5

    .line 393
    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-eqz v0, :cond_5

    if-eqz p2, :cond_5

    if-eqz p4, :cond_5

    array-length v0, p4

    if-nez v0, :cond_0

    goto :goto_2

    .line 394
    :cond_0
    :try_start_0
    array-length v0, p4

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    aget-object v2, p4, v1

    .line 395
    invoke-static {v2}, Lb/a/a/a/a/a/a/b;->d(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 396
    :cond_1
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 397
    invoke-static {v3}, Lb/a/a/a/a/a/a/b;->d(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    if-eqz p3, :cond_2

    .line 398
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lb/a/a/a/a/a/a/b;->d(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 399
    invoke-virtual {p2, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 400
    :cond_2
    invoke-virtual {p2, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 401
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "replaceJsonValues error :"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "CardDBManager"

    invoke-static {p3, p1}, Lb/a/a/a/a/a/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-object p2

    :cond_5
    :goto_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private a()V
    .locals 3

    .line 498
    iget-object v0, p0, Lb/a/a/a/a/a/a/b;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 499
    :try_start_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 500
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "closeDb error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CardDBManager"

    invoke-static {v1, v0}, Lb/a/a/a/a/a/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lb/a/a/a/a/a/a/d;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 441
    invoke-static {p3}, Lb/a/a/a/a/a/a/b;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p2}, Lb/a/a/a/a/a/a/b;->b(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 442
    new-instance p2, Lb/a/a/a/a/a/a/c;

    invoke-direct {p2}, Lb/a/a/a/a/a/a/c;-><init>()V

    .line 443
    iput-object p3, p2, Lb/a/a/a/a/a/a/c;->b:Ljava/lang/String;

    const/4 p3, 0x2

    .line 444
    invoke-direct {p0, p1, p2, p3}, Lb/a/a/a/a/a/a/b;->a(Ljava/util/List;Lb/a/a/a/a/a/a/c;I)Ljava/util/List;

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;Landroid/content/ContentValues;)Z
    .locals 11

    .line 434
    invoke-static {p1}, Lb/a/a/a/a/a/a/b;->d(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    if-eqz p2, :cond_3

    const/4 v0, 0x0

    .line 435
    :try_start_0
    iget-object v2, p0, Lb/a/a/a/a/a/a/b;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "tb_card_item"

    const/4 v4, 0x0

    const-string v5, " id = ? "

    const/4 v10, 0x1

    new-array v6, v10, [Ljava/lang/String;

    aput-object p1, v6, v1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 436
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 437
    iget-object v2, p0, Lb/a/a/a/a/a/a/b;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "tb_card_item"

    const-string v4, " id = ? "

    new-array v5, v10, [Ljava/lang/String;

    aput-object p1, v5, v1

    invoke-virtual {v2, v3, p2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez p1, :cond_1

    if-eqz v0, :cond_0

    .line 438
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    return v10

    :cond_1
    if-eqz v0, :cond_3

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception p1

    :try_start_1
    const-string p2, "CardDBManager"

    .line 439
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CardDBManager updateCardDataById error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lb/a/a/a/a/a/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_3

    goto :goto_0

    :catchall_1
    move-exception p1

    if-eqz v0, :cond_2

    .line 440
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    throw p1

    :cond_3
    :goto_1
    return v1
.end method

.method private a(Ljava/util/List;Lb/a/a/a/a/a/a/c;Lb/a/a/a/a/a/a/c;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lb/a/a/a/a/a/a/d;",
            ">;",
            "Lb/a/a/a/a/a/a/c;",
            "Lb/a/a/a/a/a/a/c;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const/4 p2, 0x0

    if-eqz p3, :cond_a

    .line 361
    iget-object v0, p3, Lb/a/a/a/a/a/a/c;->m:Ljava/lang/String;

    invoke-static {v0}, Lb/a/a/a/a/a/a/b;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-static {p4}, Lb/a/a/a/a/a/a/b;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_5

    .line 362
    :cond_0
    iget-object v0, p3, Lb/a/a/a/a/a/a/c;->m:Ljava/lang/String;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v1

    goto :goto_0

    :cond_1
    const-string v0, "\uff0c"

    .line 363
    :goto_0
    iget-object v2, p3, Lb/a/a/a/a/a/a/c;->m:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 364
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 365
    array-length v4, v2

    if-lez v4, :cond_a

    .line 366
    array-length v4, v2

    move v5, p2

    :goto_1
    if-ge v5, v4, :cond_5

    .line 367
    aget-object v6, v2, v5

    .line 368
    invoke-static {v6}, Lb/a/a/a/a/a/a/b;->d(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {p4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v6, p5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 369
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    invoke-static {p5}, Lb/a/a/a/a/a/a/b;->d(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 371
    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 372
    :cond_2
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    :goto_2
    add-int/lit8 v6, v4, -0x1

    if-eq v5, v6, :cond_4

    .line 373
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 374
    :cond_5
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 375
    invoke-static {p4}, Lb/a/a/a/a/a/a/b;->d(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a

    invoke-virtual {p4, p5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 376
    invoke-virtual {p4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    move v2, v1

    move v1, p2

    .line 377
    :goto_3
    array-length v3, v0

    if-ge v1, v3, :cond_7

    .line 378
    aget-object v3, v0, v1

    invoke-virtual {v3, p5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    move v2, p2

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_7
    if-eqz v2, :cond_8

    .line 379
    iget p4, p3, Lb/a/a/a/a/a/a/c;->a:I

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p4

    iget-object p3, p3, Lb/a/a/a/a/a/a/c;->b:Ljava/lang/String;

    invoke-direct {p0, p1, p4, p3}, Lb/a/a/a/a/a/a/b;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 380
    :cond_8
    new-instance p5, Landroid/content/ContentValues;

    invoke-direct {p5}, Landroid/content/ContentValues;-><init>()V

    const/4 v0, 0x0

    .line 381
    :try_start_0
    iget-object v1, p3, Lb/a/a/a/a/a/a/c;->h:Lorg/json/JSONObject;

    if-eqz v1, :cond_9

    iget-object v1, p3, Lb/a/a/a/a/a/a/c;->h:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_9

    .line 382
    iget-object v0, p3, Lb/a/a/a/a/a/a/c;->h:Lorg/json/JSONObject;

    const-string v1, "na_arr"

    .line 383
    invoke-virtual {v0, v1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "parse_result"

    .line 384
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p5, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v1

    .line 385
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CardDBManager"

    invoke-static {v2, v1}, Lb/a/a/a/a/a/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    :goto_4
    const-string v1, "special_key"

    .line 386
    invoke-virtual {p5, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    iget v1, p3, Lb/a/a/a/a/a/a/c;->a:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p5}, Lb/a/a/a/a/a/a/b;->a(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result p5

    if-eqz p5, :cond_a

    if-eqz v0, :cond_a

    .line 388
    new-instance p5, Lb/a/a/a/a/a/a/c;

    invoke-direct {p5}, Lb/a/a/a/a/a/a/c;-><init>()V

    .line 389
    iget-object v0, p3, Lb/a/a/a/a/a/a/c;->b:Ljava/lang/String;

    iput-object v0, p5, Lb/a/a/a/a/a/a/c;->b:Ljava/lang/String;

    .line 390
    iput-object p4, p5, Lb/a/a/a/a/a/a/c;->m:Ljava/lang/String;

    .line 391
    iget-object p4, p3, Lb/a/a/a/a/a/a/c;->h:Lorg/json/JSONObject;

    iput-object p4, p5, Lb/a/a/a/a/a/a/c;->h:Lorg/json/JSONObject;

    const/4 p4, 0x3

    .line 392
    iget-object p3, p3, Lb/a/a/a/a/a/a/c;->b:Ljava/lang/String;

    invoke-direct {p0, p1, p5, p4, p3}, Lb/a/a/a/a/a/a/b;->a(Ljava/util/List;Lb/a/a/a/a/a/a/c;ILjava/lang/String;)Ljava/util/List;

    :cond_a
    :goto_5
    return p2
.end method

.method private varargs a(Ljava/util/List;Lb/a/a/a/a/a/a/c;Lb/a/a/a/a/a/a/c;Lorg/json/JSONObject;[Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lb/a/a/a/a/a/a/d;",
            ">;",
            "Lb/a/a/a/a/a/a/c;",
            "Lb/a/a/a/a/a/a/c;",
            "Lorg/json/JSONObject;",
            "[",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 316
    iget-object v0, p2, Lb/a/a/a/a/a/a/c;->h:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 317
    iget-object v0, p2, Lb/a/a/a/a/a/a/c;->h:Lorg/json/JSONObject;

    const/4 v1, 0x1

    invoke-direct {p0, v0, p4, v1, p5}, Lb/a/a/a/a/a/a/b;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;Z[Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p4

    iput-object p4, p3, Lb/a/a/a/a/a/a/c;->h:Lorg/json/JSONObject;

    .line 318
    iget-object p4, p3, Lb/a/a/a/a/a/a/c;->m:Ljava/lang/String;

    invoke-static {p4}, Lb/a/a/a/a/a/a/b;->d(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_0

    iget-object p4, p2, Lb/a/a/a/a/a/a/c;->m:Ljava/lang/String;

    invoke-static {p4}, Lb/a/a/a/a/a/a/b;->d(Ljava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_0

    .line 319
    iget-object p4, p2, Lb/a/a/a/a/a/a/c;->m:Ljava/lang/String;

    iput-object p4, p3, Lb/a/a/a/a/a/a/c;->m:Ljava/lang/String;

    .line 320
    :cond_0
    iget p4, p2, Lb/a/a/a/a/a/a/c;->a:I

    iget-object p2, p2, Lb/a/a/a/a/a/a/c;->b:Ljava/lang/String;

    invoke-direct {p0, p1, p3, p4, p2}, Lb/a/a/a/a/a/a/b;->b(Ljava/util/List;Lb/a/a/a/a/a/a/c;ILjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method private a(Ljava/util/List;Lb/a/a/a/a/a/a/c;Ljava/lang/String;Ljava/lang/String;ZLorg/json/JSONObject;)Z
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lb/a/a/a/a/a/a/d;",
            ">;",
            "Lb/a/a/a/a/a/a/c;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lorg/json/JSONObject;",
            ")Z"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p6

    const-string v6, "view_title_name"

    const-string v7, "title_num"

    const-string v9, "CardDBManager"

    if-eqz v2, :cond_c

    .line 321
    iget-object v10, v2, Lb/a/a/a/a/a/a/c;->m:Ljava/lang/String;

    invoke-static {v10}, Lb/a/a/a/a/a/a/b;->d(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_c

    invoke-static/range {p3 .. p3}, Lb/a/a/a/a/a/a/b;->d(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    goto/16 :goto_4

    .line 322
    :cond_0
    iget-object v10, v2, Lb/a/a/a/a/a/a/c;->m:Ljava/lang/String;

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    goto :goto_0

    :cond_1
    const-string v11, "\uff0c"

    .line 323
    :goto_0
    new-instance v10, Ljava/lang/StringBuilder;

    iget-object v12, v2, Lb/a/a/a/a/a/a/c;->m:Ljava/lang/String;

    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 324
    invoke-virtual {v3, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 325
    array-length v12, v3

    if-lez v12, :cond_3

    const/4 v12, 0x0

    .line 326
    :goto_1
    array-length v13, v3

    if-ge v12, v13, :cond_3

    .line 327
    aget-object v13, v3, v12

    .line 328
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "updateMark, nameString ="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v9, v14}, Lb/a/a/a/a/a/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 330
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v15

    add-int/2addr v14, v15

    .line 331
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v15, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 332
    invoke-virtual {v10, v14, v4}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "updateMark, position ="

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Lb/a/a/a/a/a/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "updateMark, stringBuffer ="

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Lb/a/a/a/a/a/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 335
    :cond_3
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 336
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateMark, value ="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Lb/a/a/a/a/a/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    invoke-static {v3}, Lb/a/a/a/a/a/a/b;->d(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_b

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 338
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 339
    :try_start_0
    iget-object v10, v2, Lb/a/a/a/a/a/a/c;->h:Lorg/json/JSONObject;

    if-eqz v10, :cond_b

    iget-object v10, v2, Lb/a/a/a/a/a/a/c;->h:Lorg/json/JSONObject;

    invoke-virtual {v10}, Lorg/json/JSONObject;->length()I

    move-result v10

    if-lez v10, :cond_b

    .line 340
    iget-object v10, v2, Lb/a/a/a/a/a/a/c;->h:Lorg/json/JSONObject;

    const-string v12, "seat_train"

    if-nez p5, :cond_4

    const-string v12, "na_arr"

    .line 341
    :cond_4
    invoke-virtual {v10, v12, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 342
    invoke-virtual {v3, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    .line 343
    :goto_2
    array-length v13, v11

    const/4 v14, 0x1

    if-ge v12, v13, :cond_6

    .line 344
    aget-object v13, v11, v12

    .line 345
    invoke-virtual {v13, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_5

    const/4 v4, 0x0

    goto :goto_3

    :cond_5
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_6
    move v4, v14

    .line 346
    :goto_3
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "updateMark, isAllMarked ="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Lb/a/a/a/a/a/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v4, :cond_7

    .line 348
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 349
    invoke-virtual {v10, v7, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_7
    const-string v5, "parse_result"

    .line 350
    invoke-virtual {v10}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "special_key"

    .line 351
    invoke-virtual {v8, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "05010"

    .line 352
    invoke-virtual {v11, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string v3, "05043"

    invoke-virtual {v11, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    :cond_8
    if-eqz v4, :cond_9

    .line 353
    iget v3, v2, Lb/a/a/a/a/a/a/c;->a:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iget-object v2, v2, Lb/a/a/a/a/a/a/c;->b:Ljava/lang/String;

    invoke-direct {v1, v0, v3, v2}, Lb/a/a/a/a/a/a/b;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    return v14

    .line 354
    :cond_9
    iget v3, v2, Lb/a/a/a/a/a/a/c;->a:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v8}, Lb/a/a/a/a/a/a/b;->a(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 355
    new-instance v4, Lb/a/a/a/a/a/a/c;

    invoke-direct {v4}, Lb/a/a/a/a/a/a/c;-><init>()V

    .line 356
    iget-object v5, v2, Lb/a/a/a/a/a/a/c;->b:Ljava/lang/String;

    iput-object v5, v4, Lb/a/a/a/a/a/a/c;->b:Ljava/lang/String;

    .line 357
    iget-object v5, v2, Lb/a/a/a/a/a/a/c;->h:Lorg/json/JSONObject;

    iput-object v5, v4, Lb/a/a/a/a/a/a/c;->h:Lorg/json/JSONObject;

    const/4 v5, 0x3

    .line 358
    iget-object v2, v2, Lb/a/a/a/a/a/a/c;->b:Ljava/lang/String;

    invoke-direct {v1, v0, v4, v5, v2}, Lb/a/a/a/a/a/a/b;->a(Ljava/util/List;Lb/a/a/a/a/a/a/c;ILjava/lang/String;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_a
    return v3

    :catchall_0
    move-exception v0

    .line 359
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateMark error :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lb/a/a/a/a/a/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    const/4 v2, 0x0

    return v2

    .line 360
    :cond_c
    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateMark : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " ,"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "resouseName = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lb/a/a/a/a/a/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    return v2
.end method

.method private varargs a([Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 412
    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_2

    .line 413
    :cond_0
    array-length v1, p1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, p1, v2

    .line 414
    invoke-static {v3}, Lb/a/a/a/a/a/a/b;->d(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "null"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0

    :cond_3
    const/4 p1, 0x1

    return p1

    :cond_4
    :goto_2
    return v0
.end method

.method private b()V
    .locals 1

    .line 27
    iget-object v0, p0, Lb/a/a/a/a/a/a/b;->b:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_1

    .line 28
    :cond_0
    iget-object v0, p0, Lb/a/a/a/a/a/a/b;->a:Lb/a/a/a/a/a/a/a;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lb/a/a/a/a/a/a/b;->b:Landroid/database/sqlite/SQLiteDatabase;

    :cond_1
    return-void
.end method

.method private b(Ljava/lang/String;)Z
    .locals 7

    .line 22
    invoke-static {p1}, Lb/a/a/a/a/a/a/b;->d(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 23
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "delete_flag"

    const/4 v3, 0x1

    .line 24
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 25
    iget-object v2, p0, Lb/a/a/a/a/a/a/b;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "tb_card_item"

    const-string v5, " id = ? "

    new-array v6, v3, [Ljava/lang/String;

    aput-object p1, v6, v1

    invoke-virtual {v2, v4, v0, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez p1, :cond_0

    return v3

    :catchall_0
    move-exception p1

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CardDBManager deleteCardDataById error: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CardDBManager"

    invoke-static {v0, p1}, Lb/a/a/a/a/a/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return v1
.end method

.method private b(Ljava/util/List;Lb/a/a/a/a/a/a/c;ILjava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lb/a/a/a/a/a/a/d;",
            ">;",
            "Lb/a/a/a/a/a/a/c;",
            "I",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    if-eqz p2, :cond_1

    const/4 v0, -0x1

    if-eq p3, v0, :cond_1

    .line 1
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "msg_id"

    .line 2
    iget-object v2, p2, Lb/a/a/a/a/a/a/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "card_type"

    .line 3
    iget-object v2, p2, Lb/a/a/a/a/a/a/c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "content"

    .line 4
    iget-object v2, p2, Lb/a/a/a/a/a/a/c;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "sms_recive_time"

    .line 5
    iget-wide v2, p2, Lb/a/a/a/a/a/a/c;->e:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "phone_num"

    .line 6
    iget-object v2, p2, Lb/a/a/a/a/a/a/c;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "title_no"

    .line 7
    iget-object v2, p2, Lb/a/a/a/a/a/a/c;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v1, p2, Lb/a/a/a/a/a/a/c;->h:Lorg/json/JSONObject;

    if-eqz v1, :cond_0

    const-string v1, "parse_result"

    .line 9
    iget-object v2, p2, Lb/a/a/a/a/a/a/c;->h:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v1, "deadline"

    .line 10
    iget-wide v2, p2, Lb/a/a/a/a/a/a/c;->i:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "order_time"

    .line 11
    iget-wide v2, p2, Lb/a/a/a/a/a/a/c;->j:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "appear_time"

    .line 12
    iget-wide v2, p2, Lb/a/a/a/a/a/a/c;->k:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "dup_value"

    .line 13
    iget-object v2, p2, Lb/a/a/a/a/a/a/c;->l:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "special_key"

    .line 14
    iget-object v2, p2, Lb/a/a/a/a/a/a/c;->m:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "delete_flag"

    .line 15
    iget v2, p2, Lb/a/a/a/a/a/a/c;->n:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 16
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3, v0}, Lb/a/a/a/a/a/a/b;->a(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 17
    new-instance p3, Lb/a/a/a/a/a/a/c;

    invoke-direct {p3}, Lb/a/a/a/a/a/a/c;-><init>()V

    .line 18
    iput-object p4, p3, Lb/a/a/a/a/a/a/c;->b:Ljava/lang/String;

    .line 19
    iget-object p4, p2, Lb/a/a/a/a/a/a/c;->h:Lorg/json/JSONObject;

    iput-object p4, p3, Lb/a/a/a/a/a/a/c;->h:Lorg/json/JSONObject;

    const/4 p4, 0x3

    .line 20
    iget-object p2, p2, Lb/a/a/a/a/a/a/c;->b:Ljava/lang/String;

    invoke-direct {p0, p1, p3, p4, p2}, Lb/a/a/a/a/a/a/b;->a(Ljava/util/List;Lb/a/a/a/a/a/a/c;ILjava/lang/String;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    .line 21
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "CardDBManager saveCardData error: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CardDBManager"

    invoke-static {p2, p1}, Lb/a/a/a/a/a/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-static {p1}, Lb/a/a/a/a/a/a/b;->d(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "%"

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static d(Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "null"

    .line 2
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public a(Ljava/lang/String;)I
    .locals 6

    .line 489
    iget-object v0, p0, Lb/a/a/a/a/a/a/b;->d:Ljava/lang/Object;

    monitor-enter v0

    .line 490
    :try_start_0
    invoke-direct {p0}, Lb/a/a/a/a/a/a/b;->b()V

    .line 491
    iget-object v1, p0, Lb/a/a/a/a/a/a/b;->b:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "tb_card_item"

    const-string v3, "msg_id = ? "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 492
    :try_start_1
    invoke-direct {p0}, Lb/a/a/a/a/a/a/b;->a()V

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    return p1

    :catchall_0
    move-exception p1

    :try_start_2
    const-string v1, "CardDBManager"

    .line 493
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CardDBManager deleteByDataId error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lb/a/a/a/a/a/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 494
    :try_start_3
    invoke-direct {p0}, Lb/a/a/a/a/a/a/b;->a()V

    .line 495
    monitor-exit v0

    const/4 p1, -0x1

    return p1

    :catchall_1
    move-exception p1

    .line 496
    invoke-direct {p0}, Lb/a/a/a/a/a/a/b;->a()V

    throw p1

    :catchall_2
    move-exception p1

    .line 497
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p1
.end method

.method public a(Lb/a/a/a/a/a/a/c;Lorg/json/JSONObject;)Ljava/util/List;
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/a/a/a/a/a/a/c;",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List<",
            "Lb/a/a/a/a/a/a/d;",
            ">;"
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    .line 7
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, -0x1

    if-eqz v9, :cond_55

    if-eqz v10, :cond_55

    .line 8
    invoke-virtual/range {p2 .. p2}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_1a

    .line 9
    :cond_0
    iget-object v12, v8, Lb/a/a/a/a/a/a/b;->d:Ljava/lang/Object;

    monitor-enter v12

    .line 10
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lb/a/a/a/a/a/a/b;->b()V

    .line 11
    iget-object v7, v9, Lb/a/a/a/a/a/a/c;->g:Ljava/lang/String;

    .line 12
    invoke-static {v7}, Lb/a/a/a/a/a/a/b;->d(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "combineCard titleNo is null"

    .line 13
    invoke-direct {v8, v11, v1, v2}, Lb/a/a/a/a/a/a/b;->a(Ljava/util/List;ILjava/lang/String;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lb/a/a/a/a/a/a/b;->a()V

    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    return-object v11

    .line 15
    :cond_1
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "05007"

    .line 16
    invoke-virtual {v7, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v13, 0x4

    const/4 v14, 0x0

    if-eqz v2, :cond_9

    const-string v2, "old_num_flight"

    .line 17
    invoke-virtual {v10, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "old_d_depart"

    .line 18
    invoke-virtual {v10, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "num_flight"

    .line 19
    invoke-virtual {v10, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "city_depart"

    .line 20
    invoke-virtual {v10, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v3, "city_arrive"

    .line 21
    invoke-virtual {v10, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "new_d_depart"

    .line 22
    invoke-virtual {v10, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v15, "na_arr"

    .line 23
    invoke-virtual {v10, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 24
    iput-object v15, v9, Lb/a/a/a/a/a/a/c;->m:Ljava/lang/String;

    .line 25
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    new-array v10, v13, [Ljava/lang/String;

    aput-object v6, v10, v14

    const/16 v18, 0x1

    aput-object v4, v10, v18

    const/16 v17, 0x2

    aput-object v7, v10, v17

    const/16 v16, 0x3

    aput-object v3, v10, v16

    .line 26
    invoke-direct {v8, v10}, Lb/a/a/a/a/a/a/b;->a([Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    new-array v10, v13, [Ljava/lang/String;

    aput-object v6, v10, v14

    const/4 v14, 0x1

    aput-object v4, v10, v14

    const/4 v4, 0x2

    aput-object v7, v10, v4

    const/4 v4, 0x3

    aput-object v3, v10, v4

    .line 27
    invoke-direct {v8, v14, v10}, Lb/a/a/a/a/a/a/b;->a(Z[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v9, Lb/a/a/a/a/a/a/c;->l:Ljava/lang/String;

    :cond_2
    new-array v4, v13, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v2, v4, v10

    const/4 v10, 0x1

    aput-object v5, v4, v10

    const/4 v10, 0x2

    aput-object v7, v4, v10

    const/4 v10, 0x3

    aput-object v3, v4, v10

    .line 29
    invoke-direct {v8, v4}, Lb/a/a/a/a/a/a/b;->a([Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    new-array v4, v13, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v2, v4, v6

    const/4 v2, 0x1

    aput-object v5, v4, v2

    const/4 v5, 0x2

    aput-object v7, v4, v5

    const/4 v5, 0x3

    aput-object v3, v4, v5

    .line 30
    invoke-direct {v8, v2, v4}, Lb/a/a/a/a/a/a/b;->a(Z[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 31
    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v9, Lb/a/a/a/a/a/a/c;->l:Ljava/lang/String;

    const-string v2, " dup_value like ? and deadline > ? and delete_flag = 0"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    .line 33
    invoke-direct {v8, v3}, Lb/a/a/a/a/a/a/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const/4 v3, 0x1

    aput-object v1, v4, v3

    const-string v1, " sms_recive_time desc "

    .line 34
    invoke-direct {v8, v2, v4, v1}, Lb/a/a/a/a/a/a/b;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 35
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 36
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_54

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lb/a/a/a/a/a/a/c;

    .line 37
    iget-object v1, v3, Lb/a/a/a/a/a/a/c;->h:Lorg/json/JSONObject;

    if-eqz v1, :cond_3

    iget-object v1, v3, Lb/a/a/a/a/a/a/c;->h:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_3

    const-string v1, "terminal_arrive"

    const-string v2, "terminal_arrive"

    const-string v4, "na_arr"

    .line 38
    filled-new-array {v1, v2, v4}, [Ljava/lang/String;

    move-result-object v6

    move-object/from16 v1, p0

    move-object v2, v11

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    invoke-direct/range {v1 .. v6}, Lb/a/a/a/a/a/a/b;->a(Ljava/util/List;Lb/a/a/a/a/a/a/c;Lb/a/a/a/a/a/a/c;Lorg/json/JSONObject;[Ljava/lang/String;)Z

    goto :goto_0

    .line 39
    :cond_4
    invoke-direct {v8, v11, v9}, Lb/a/a/a/a/a/a/b;->a(Ljava/util/List;Lb/a/a/a/a/a/a/c;)Ljava/util/List;

    goto/16 :goto_18

    :cond_5
    new-array v1, v13, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v6, v1, v2

    const/4 v2, 0x1

    aput-object v5, v1, v2

    const/4 v2, 0x2

    aput-object v7, v1, v2

    const/4 v2, 0x3

    aput-object v3, v1, v2

    .line 40
    invoke-direct {v8, v1}, Lb/a/a/a/a/a/a/b;->a([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 41
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide v20, 0x757b12c00L

    sub-long v1, v1, v20

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    new-array v2, v13, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v6, v2, v4

    const/4 v4, 0x1

    aput-object v5, v2, v4

    const/4 v5, 0x2

    aput-object v7, v2, v5

    const/4 v5, 0x3

    aput-object v3, v2, v5

    .line 42
    invoke-direct {v8, v4, v2}, Lb/a/a/a/a/a/a/b;->a(Z[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 43
    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v9, Lb/a/a/a/a/a/a/c;->l:Ljava/lang/String;

    const-string v3, " dup_value like ? and deadline > ? and delete_flag = 0"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    .line 45
    invoke-direct {v8, v2}, Lb/a/a/a/a/a/a/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v2, 0x1

    aput-object v1, v4, v2

    const-string v1, " sms_recive_time desc "

    .line 46
    invoke-direct {v8, v3, v4, v1}, Lb/a/a/a/a/a/a/b;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 47
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_7

    .line 48
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_6
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_54

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lb/a/a/a/a/a/a/c;

    .line 49
    iget-object v1, v3, Lb/a/a/a/a/a/a/c;->h:Lorg/json/JSONObject;

    if-eqz v1, :cond_6

    iget-object v1, v3, Lb/a/a/a/a/a/a/c;->h:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_6

    const-string v1, "airport_depart"

    const-string v2, "terminal_arrive"

    const-string v4, "na_arr"

    .line 50
    filled-new-array {v1, v2, v4}, [Ljava/lang/String;

    move-result-object v6

    move-object/from16 v1, p0

    move-object v2, v11

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    invoke-direct/range {v1 .. v6}, Lb/a/a/a/a/a/a/b;->a(Ljava/util/List;Lb/a/a/a/a/a/a/c;Lb/a/a/a/a/a/a/c;Lorg/json/JSONObject;[Ljava/lang/String;)Z

    goto :goto_1

    .line 51
    :cond_7
    invoke-direct {v8, v11, v9}, Lb/a/a/a/a/a/a/b;->a(Ljava/util/List;Lb/a/a/a/a/a/a/c;)Ljava/util/List;

    goto/16 :goto_18

    .line 52
    :cond_8
    invoke-direct {v8, v11, v9}, Lb/a/a/a/a/a/a/b;->a(Ljava/util/List;Lb/a/a/a/a/a/a/c;)Ljava/util/List;

    goto/16 :goto_18

    :cond_9
    const-string v2, "05042"

    .line 53
    invoke-virtual {v7, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    const-string v2, "old_num_flight"

    move-object/from16 v10, p2

    .line 54
    invoke-virtual {v10, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "old_d_depart"

    .line 55
    invoke-virtual {v10, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "city_depart"

    .line 56
    invoke-virtual {v10, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "city_arrive"

    .line 57
    invoke-virtual {v10, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "na_arr"

    .line 58
    invoke-virtual {v10, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v14, "num_flight"

    .line 59
    invoke-virtual {v10, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "new_d_depart"

    .line 60
    invoke-virtual {v10, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 61
    iput-object v7, v9, Lb/a/a/a/a/a/a/c;->m:Ljava/lang/String;

    .line 62
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    new-array v3, v13, [Ljava/lang/String;

    const/16 v19, 0x0

    aput-object v14, v3, v19

    const/16 v18, 0x1

    aput-object v10, v3, v18

    const/16 v17, 0x2

    aput-object v5, v3, v17

    const/16 v16, 0x3

    aput-object v6, v3, v16

    .line 63
    invoke-direct {v8, v3}, Lb/a/a/a/a/a/a/b;->a([Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    new-array v3, v13, [Ljava/lang/String;

    const/16 v19, 0x0

    aput-object v14, v3, v19

    const/4 v14, 0x1

    aput-object v10, v3, v14

    const/4 v10, 0x2

    aput-object v5, v3, v10

    const/4 v10, 0x3

    aput-object v6, v3, v10

    .line 64
    invoke-direct {v8, v14, v3}, Lb/a/a/a/a/a/a/b;->a(Z[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v9, Lb/a/a/a/a/a/a/c;->l:Ljava/lang/String;

    :cond_a
    new-array v3, v13, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v2, v3, v10

    const/4 v10, 0x1

    aput-object v4, v3, v10

    const/4 v10, 0x2

    aput-object v5, v3, v10

    const/4 v10, 0x3

    aput-object v6, v3, v10

    .line 66
    invoke-direct {v8, v3}, Lb/a/a/a/a/a/a/b;->a([Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    new-array v3, v13, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v2, v3, v10

    const/4 v2, 0x1

    aput-object v4, v3, v2

    const/4 v4, 0x2

    aput-object v5, v3, v4

    const/4 v4, 0x3

    aput-object v6, v3, v4

    .line 67
    invoke-direct {v8, v2, v3}, Lb/a/a/a/a/a/a/b;->a(Z[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 68
    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v9, Lb/a/a/a/a/a/a/c;->l:Ljava/lang/String;

    const-string v2, " dup_value like ? and deadline > ? and delete_flag = 0"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    .line 70
    invoke-direct {v8, v3}, Lb/a/a/a/a/a/a/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const/4 v3, 0x1

    aput-object v1, v4, v3

    const/4 v1, 0x0

    .line 71
    invoke-direct {v8, v2, v4, v1}, Lb/a/a/a/a/a/a/b;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 72
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_11

    .line 73
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    const/4 v14, 0x1

    :cond_b
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lb/a/a/a/a/a/a/c;

    .line 74
    iget-object v1, v4, Lb/a/a/a/a/a/a/c;->h:Lorg/json/JSONObject;

    if-eqz v1, :cond_f

    iget-object v1, v4, Lb/a/a/a/a/a/a/c;->h:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_f

    .line 75
    invoke-static {v7}, Lb/a/a/a/a/a/a/b;->d(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_e

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    .line 76
    iget-object v1, v4, Lb/a/a/a/a/a/a/c;->m:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    invoke-direct {v8, v2}, Lb/a/a/a/a/a/a/b;->a([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, v4, Lb/a/a/a/a/a/a/c;->m:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    goto :goto_3

    .line 77
    :cond_c
    iget-object v1, v8, Lb/a/a/a/a/a/a/b;->c:Landroid/content/Context;

    const-string v2, "duoqu_change_passenger_mark"

    invoke-static {v1, v2}, Lb/a/a/a/a/a/b/b;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 78
    iget-object v2, v8, Lb/a/a/a/a/a/a/b;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v1, p0

    move-object v2, v11

    move-object/from16 v3, p1

    move-object v5, v7

    invoke-direct/range {v1 .. v6}, Lb/a/a/a/a/a/a/b;->a(Ljava/util/List;Lb/a/a/a/a/a/a/c;Lb/a/a/a/a/a/a/c;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    goto :goto_4

    .line 79
    :cond_d
    :goto_3
    iget v1, v4, Lb/a/a/a/a/a/a/c;->a:I

    iget-object v2, v4, Lb/a/a/a/a/a/a/c;->b:Ljava/lang/String;

    invoke-direct {v8, v11, v9, v1, v2}, Lb/a/a/a/a/a/a/b;->b(Ljava/util/List;Lb/a/a/a/a/a/a/c;ILjava/lang/String;)Z

    move-result v1

    goto :goto_4

    .line 80
    :cond_e
    iget v1, v4, Lb/a/a/a/a/a/a/c;->a:I

    iget-object v2, v4, Lb/a/a/a/a/a/a/c;->b:Ljava/lang/String;

    invoke-direct {v8, v11, v9, v1, v2}, Lb/a/a/a/a/a/a/b;->b(Ljava/util/List;Lb/a/a/a/a/a/a/c;ILjava/lang/String;)Z

    move-result v1

    goto :goto_4

    :cond_f
    const/4 v1, 0x0

    :goto_4
    if-eqz v1, :cond_b

    const/4 v14, 0x0

    goto :goto_2

    :cond_10
    if-eqz v14, :cond_54

    .line 81
    invoke-direct {v8, v11, v9}, Lb/a/a/a/a/a/a/b;->a(Ljava/util/List;Lb/a/a/a/a/a/a/c;)Ljava/util/List;

    goto/16 :goto_18

    .line 82
    :cond_11
    invoke-direct {v8, v11, v9}, Lb/a/a/a/a/a/a/b;->a(Ljava/util/List;Lb/a/a/a/a/a/a/c;)Ljava/util/List;

    goto/16 :goto_18

    .line 83
    :cond_12
    invoke-direct {v8, v11, v9}, Lb/a/a/a/a/a/a/b;->a(Ljava/util/List;Lb/a/a/a/a/a/a/c;)Ljava/util/List;

    goto/16 :goto_18

    :cond_13
    move-object/from16 v10, p2

    const-string v2, "05043"

    .line 84
    invoke-virtual {v7, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1b

    const-string v2, "num_flight"

    .line 85
    invoke-virtual {v10, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "d_depart"

    .line 86
    invoke-virtual {v10, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "city_depart"

    .line 87
    invoke-virtual {v10, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "city_arrive"

    .line 88
    invoke-virtual {v10, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "na_arr"

    .line 89
    invoke-virtual {v10, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 90
    iput-object v14, v9, Lb/a/a/a/a/a/a/c;->m:Ljava/lang/String;

    new-array v6, v13, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    const/4 v7, 0x1

    aput-object v3, v6, v7

    const/4 v7, 0x2

    aput-object v4, v6, v7

    const/4 v7, 0x3

    aput-object v5, v6, v7

    .line 91
    invoke-direct {v8, v6}, Lb/a/a/a/a/a/a/b;->a([Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1a

    new-array v6, v13, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    const/4 v2, 0x1

    aput-object v3, v6, v2

    const/4 v3, 0x2

    aput-object v4, v6, v3

    const/4 v4, 0x3

    aput-object v5, v6, v4

    .line 92
    invoke-direct {v8, v2, v6}, Lb/a/a/a/a/a/a/b;->a(Z[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 93
    iput-object v4, v9, Lb/a/a/a/a/a/a/c;->l:Ljava/lang/String;

    const-string v2, " dup_value like ? and deadline > ? and delete_flag = 0"

    new-array v3, v3, [Ljava/lang/String;

    .line 94
    invoke-direct {v8, v4}, Lb/a/a/a/a/a/a/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object v1, v3, v4

    const/4 v1, 0x0

    .line 95
    invoke-direct {v8, v2, v3, v1}, Lb/a/a/a/a/a/a/b;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_19

    .line 96
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_19

    .line 97
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    const/16 v16, 0x1

    :cond_14
    :goto_5
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lb/a/a/a/a/a/a/c;

    .line 98
    iget-object v1, v3, Lb/a/a/a/a/a/a/c;->h:Lorg/json/JSONObject;

    if-eqz v1, :cond_14

    iget-object v1, v3, Lb/a/a/a/a/a/a/c;->h:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_14

    .line 99
    invoke-static {v14}, Lb/a/a/a/a/a/a/b;->d(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_17

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    .line 100
    iget-object v1, v3, Lb/a/a/a/a/a/a/c;->m:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v1, v2, v4

    invoke-direct {v8, v2}, Lb/a/a/a/a/a/a/b;->a([Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    iget-object v1, v3, Lb/a/a/a/a/a/a/c;->m:Ljava/lang/String;

    invoke-virtual {v14, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    goto :goto_7

    .line 101
    :cond_15
    iget-object v1, v8, Lb/a/a/a/a/a/a/b;->c:Landroid/content/Context;

    const-string v2, "duoqu_refund_passenger_mark"

    invoke-static {v1, v2}, Lb/a/a/a/a/a/b/b;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 102
    iget-object v2, v8, Lb/a/a/a/a/a/a/b;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object v2, v11

    move-object v4, v14

    move-object/from16 v7, p2

    invoke-direct/range {v1 .. v7}, Lb/a/a/a/a/a/a/b;->a(Ljava/util/List;Lb/a/a/a/a/a/a/c;Ljava/lang/String;Ljava/lang/String;ZLorg/json/JSONObject;)Z

    move-result v1

    if-eqz v1, :cond_14

    :goto_6
    const/16 v16, 0x0

    goto :goto_5

    .line 103
    :cond_16
    :goto_7
    iget v1, v3, Lb/a/a/a/a/a/a/c;->a:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v3, Lb/a/a/a/a/a/a/c;->b:Ljava/lang/String;

    invoke-direct {v8, v11, v1, v2}, Lb/a/a/a/a/a/a/b;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 104
    :cond_17
    iget v1, v3, Lb/a/a/a/a/a/a/c;->a:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v3, Lb/a/a/a/a/a/a/c;->b:Ljava/lang/String;

    invoke-direct {v8, v11, v1, v2}, Lb/a/a/a/a/a/a/b;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_18
    if-eqz v16, :cond_54

    .line 105
    invoke-direct {v8, v11, v9, v13}, Lb/a/a/a/a/a/a/b;->a(Ljava/util/List;Lb/a/a/a/a/a/a/c;I)Ljava/util/List;

    goto/16 :goto_18

    .line 106
    :cond_19
    invoke-direct {v8, v11, v9, v13}, Lb/a/a/a/a/a/a/b;->a(Ljava/util/List;Lb/a/a/a/a/a/a/c;I)Ljava/util/List;

    goto/16 :goto_18

    .line 107
    :cond_1a
    invoke-direct {v8, v11, v9, v13}, Lb/a/a/a/a/a/a/b;->a(Ljava/util/List;Lb/a/a/a/a/a/a/c;I)Ljava/util/List;

    goto/16 :goto_18

    :cond_1b
    const-string v2, "05031"

    .line 108
    invoke-virtual {v7, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4f

    const-string v2, "05048"

    invoke-virtual {v7, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1c

    goto/16 :goto_16

    :cond_1c
    const-string v2, "05001"

    .line 109
    invoke-virtual {v7, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_21

    const-string v14, "05001"

    const-string v2, "num_flight"

    .line 110
    invoke-virtual {v10, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "d_depart"

    .line 111
    invoke-virtual {v10, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "city_depart"

    .line 112
    invoke-virtual {v10, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "city_arrive"

    .line 113
    invoke-virtual {v10, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "na_arr"

    .line 114
    invoke-virtual {v10, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 115
    iput-object v6, v9, Lb/a/a/a/a/a/a/c;->m:Ljava/lang/String;

    new-array v6, v13, [Ljava/lang/String;

    const/4 v15, 0x0

    aput-object v2, v6, v15

    const/4 v15, 0x1

    aput-object v3, v6, v15

    const/4 v15, 0x2

    aput-object v4, v6, v15

    const/4 v15, 0x3

    aput-object v5, v6, v15

    .line 116
    invoke-direct {v8, v6}, Lb/a/a/a/a/a/a/b;->a([Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_20

    new-array v6, v13, [Ljava/lang/String;

    const/4 v15, 0x0

    aput-object v2, v6, v15

    const/4 v2, 0x1

    aput-object v3, v6, v2

    const/4 v3, 0x2

    aput-object v4, v6, v3

    const/4 v4, 0x3

    aput-object v5, v6, v4

    .line 117
    invoke-direct {v8, v2, v6}, Lb/a/a/a/a/a/a/b;->a(Z[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 118
    iput-object v4, v9, Lb/a/a/a/a/a/a/c;->l:Ljava/lang/String;

    const-string v2, " dup_value like ? and deadline > ? and delete_flag = 0"

    new-array v3, v3, [Ljava/lang/String;

    .line 119
    invoke-direct {v8, v4}, Lb/a/a/a/a/a/a/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object v1, v3, v4

    const/4 v1, 0x0

    .line 120
    invoke-direct {v8, v2, v3, v1}, Lb/a/a/a/a/a/a/b;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1f

    .line 121
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1f

    .line 122
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    const/16 v18, 0x1

    :cond_1d
    :goto_8
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lb/a/a/a/a/a/a/c;

    .line 123
    iget-object v1, v3, Lb/a/a/a/a/a/a/c;->h:Lorg/json/JSONObject;

    if-eqz v1, :cond_1d

    iget-object v1, v3, Lb/a/a/a/a/a/a/c;->h:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_1d

    .line 124
    invoke-virtual {v14, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    iget-object v2, v3, Lb/a/a/a/a/a/a/c;->g:Ljava/lang/String;

    invoke-virtual {v14, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lt v1, v2, :cond_1d

    const-string v20, "view_title_name"

    const-string v21, "deadline"

    const-string v22, "num_order"

    const-string v23, "t_depart"

    const-string v24, "t_depart"

    const-string v25, "airport_depart"

    const-string v26, "airport_arrive"

    const-string v27, "terminal_depart"

    const-string v28, "terminal_arrive"

    .line 125
    filled-new-array/range {v20 .. v28}, [Ljava/lang/String;

    move-result-object v6

    move-object/from16 v1, p0

    move-object v2, v11

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    invoke-direct/range {v1 .. v6}, Lb/a/a/a/a/a/a/b;->a(Ljava/util/List;Lb/a/a/a/a/a/a/c;Lb/a/a/a/a/a/a/c;Lorg/json/JSONObject;[Ljava/lang/String;)Z

    const/16 v18, 0x0

    goto :goto_8

    :cond_1e
    if-eqz v18, :cond_54

    .line 126
    invoke-direct {v8, v11, v9, v13}, Lb/a/a/a/a/a/a/b;->a(Ljava/util/List;Lb/a/a/a/a/a/a/c;I)Ljava/util/List;

    goto/16 :goto_18

    .line 127
    :cond_1f
    invoke-direct {v8, v11, v9}, Lb/a/a/a/a/a/a/b;->a(Ljava/util/List;Lb/a/a/a/a/a/a/c;)Ljava/util/List;

    goto/16 :goto_18

    .line 128
    :cond_20
    invoke-direct {v8, v11, v9}, Lb/a/a/a/a/a/a/b;->a(Ljava/util/List;Lb/a/a/a/a/a/a/c;)Ljava/util/List;

    goto/16 :goto_18

    :cond_21
    const-string v2, "05037"

    .line 129
    invoke-virtual {v7, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_46

    const-string v2, "05052"

    invoke-virtual {v7, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_22

    goto/16 :goto_13

    :cond_22
    const-string v2, "05010"

    .line 130
    invoke-virtual {v7, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2c

    const-string v2, "num_train"

    .line 131
    invoke-virtual {v10, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "d_depart"

    .line 132
    invoke-virtual {v10, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "city_depart"

    .line 133
    invoke-virtual {v10, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "seat_train"

    .line 134
    invoke-virtual {v10, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "seat_type"

    .line 135
    invoke-virtual {v10, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "num_order"

    .line 136
    invoke-virtual {v10, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 137
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 138
    iput-object v14, v9, Lb/a/a/a/a/a/a/c;->m:Ljava/lang/String;

    .line 139
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    new-array v6, v13, [Ljava/lang/String;

    const/4 v15, 0x0

    aput-object v2, v6, v15

    const/4 v15, 0x1

    aput-object v3, v6, v15

    const/4 v15, 0x2

    aput-object v4, v6, v15

    const/4 v15, 0x3

    aput-object v14, v6, v15

    .line 140
    invoke-direct {v8, v6}, Lb/a/a/a/a/a/a/b;->a([Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_23

    new-array v6, v13, [Ljava/lang/String;

    const/4 v15, 0x0

    aput-object v2, v6, v15

    const/4 v15, 0x1

    aput-object v3, v6, v15

    const/16 v17, 0x2

    aput-object v4, v6, v17

    const/4 v4, 0x3

    aput-object v14, v6, v4

    .line 141
    invoke-direct {v8, v15, v6}, Lb/a/a/a/a/a/a/b;->a(Z[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v9, Lb/a/a/a/a/a/a/c;->l:Ljava/lang/String;

    :cond_23
    const/4 v4, 0x1

    new-array v6, v4, [Ljava/lang/String;

    const/4 v15, 0x0

    aput-object v7, v6, v15

    .line 143
    invoke-direct {v8, v6}, Lb/a/a/a/a/a/a/b;->a([Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_24

    new-array v6, v4, [Ljava/lang/String;

    aput-object v7, v6, v15

    .line 144
    invoke-direct {v8, v4, v6}, Lb/a/a/a/a/a/a/b;->a(Z[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v9, Lb/a/a/a/a/a/a/c;->l:Ljava/lang/String;

    :cond_24
    const-string v4, "CardDBManager"

    .line 146
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "05010 : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lb/a/a/a/a/a/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v6, 0x1

    aput-object v3, v4, v6

    const/4 v7, 0x2

    aput-object v14, v4, v7

    .line 147
    invoke-direct {v8, v4}, Lb/a/a/a/a/a/a/b;->a([Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2b

    new-array v4, v7, [Ljava/lang/String;

    aput-object v2, v4, v5

    aput-object v3, v4, v6

    .line 148
    invoke-direct {v8, v6, v4}, Lb/a/a/a/a/a/a/b;->a(Z[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, " dup_value like ? and deadline > ? and delete_flag = 0"

    new-array v4, v7, [Ljava/lang/String;

    .line 149
    invoke-direct {v8, v2}, Lb/a/a/a/a/a/a/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    aput-object v2, v4, v5

    aput-object v1, v4, v6

    const/4 v1, 0x0

    .line 150
    invoke-direct {v8, v3, v4, v1}, Lb/a/a/a/a/a/a/b;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2a

    .line 151
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2a

    .line 152
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    const/4 v7, 0x1

    :goto_9
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_29

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lb/a/a/a/a/a/a/c;

    .line 153
    iget-object v1, v3, Lb/a/a/a/a/a/a/c;->h:Lorg/json/JSONObject;

    if-eqz v1, :cond_27

    iget-object v1, v3, Lb/a/a/a/a/a/a/c;->h:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_27

    .line 154
    iget-object v1, v3, Lb/a/a/a/a/a/a/c;->m:Ljava/lang/String;

    invoke-static {v1}, Lb/a/a/a/a/a/a/b;->d(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_26

    .line 155
    iget-object v1, v3, Lb/a/a/a/a/a/a/c;->m:Ljava/lang/String;

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 156
    iget v1, v3, Lb/a/a/a/a/a/a/c;->a:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v3, Lb/a/a/a/a/a/a/c;->b:Ljava/lang/String;

    invoke-direct {v8, v11, v1, v2}, Lb/a/a/a/a/a/a/b;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    :goto_a
    const/4 v7, 0x0

    goto :goto_c

    .line 157
    :cond_25
    iget-object v1, v8, Lb/a/a/a/a/a/a/b;->c:Landroid/content/Context;

    const-string v2, "duoqu_refund_passenger_mark"

    invoke-static {v1, v2}, Lb/a/a/a/a/a/b/b;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const-string v2, "CardDBManager"

    .line 158
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "update method 1 : id:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Lb/a/a/a/a/a/a/c;->a:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " ,resourceId"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lb/a/a/a/a/a/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    iget-object v4, v9, Lb/a/a/a/a/a/a/c;->m:Ljava/lang/String;

    iget-object v2, v8, Lb/a/a/a/a/a/a/b;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    move-object/from16 v1, p0

    move-object v2, v11

    move v13, v7

    move-object/from16 v7, p2

    invoke-direct/range {v1 .. v7}, Lb/a/a/a/a/a/a/b;->a(Ljava/util/List;Lb/a/a/a/a/a/a/c;Ljava/lang/String;Ljava/lang/String;ZLorg/json/JSONObject;)Z

    move-result v1

    if-eqz v1, :cond_28

    const/4 v13, 0x0

    goto :goto_b

    :cond_26
    move v13, v7

    const-string v1, "CardDBManager"

    .line 160
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "update method 2 : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v3, Lb/a/a/a/a/a/a/c;->a:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lb/a/a/a/a/a/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    iget v1, v3, Lb/a/a/a/a/a/a/c;->a:I

    iget-object v2, v3, Lb/a/a/a/a/a/a/c;->b:Ljava/lang/String;

    invoke-direct {v8, v11, v9, v1, v2}, Lb/a/a/a/a/a/a/b;->b(Ljava/util/List;Lb/a/a/a/a/a/a/c;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_28

    goto :goto_a

    :cond_27
    move v13, v7

    :cond_28
    :goto_b
    move v7, v13

    :goto_c
    const/4 v13, 0x4

    goto/16 :goto_9

    :cond_29
    move v13, v7

    const-string v1, "CardDBManager"

    .line 162
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "end: isToSave "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lb/a/a/a/a/a/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v13, :cond_54

    const/4 v1, 0x4

    .line 163
    invoke-direct {v8, v11, v9, v1}, Lb/a/a/a/a/a/a/b;->a(Ljava/util/List;Lb/a/a/a/a/a/a/c;I)Ljava/util/List;

    goto/16 :goto_18

    :cond_2a
    move v1, v13

    .line 164
    invoke-direct {v8, v11, v9, v1}, Lb/a/a/a/a/a/a/b;->a(Ljava/util/List;Lb/a/a/a/a/a/a/c;I)Ljava/util/List;

    goto/16 :goto_18

    :cond_2b
    move v1, v13

    .line 165
    invoke-direct {v8, v11, v9, v1}, Lb/a/a/a/a/a/a/b;->a(Ljava/util/List;Lb/a/a/a/a/a/a/c;I)Ljava/util/List;

    goto/16 :goto_18

    :cond_2c
    const-string v2, "05008"

    .line 166
    invoke-virtual {v7, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3f

    const-string v2, "05014"

    invoke-virtual {v7, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2d

    goto/16 :goto_11

    :cond_2d
    const-string v2, "05015"

    .line 167
    invoke-virtual {v7, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_33

    const-string v2, "05015"

    const-string v3, "na_hotel"

    .line 168
    invoke-virtual {v10, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "d_in"

    .line 169
    invoke-virtual {v10, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "ty_room_arr"

    .line 170
    invoke-virtual {v10, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "num_room"

    .line 171
    invoke-virtual {v10, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 172
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v13, 0x4

    new-array v14, v13, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v3, v14, v13

    const/4 v13, 0x1

    aput-object v4, v14, v13

    const/4 v13, 0x2

    aput-object v5, v14, v13

    const/4 v13, 0x3

    aput-object v6, v14, v13

    .line 173
    invoke-direct {v8, v14}, Lb/a/a/a/a/a/a/b;->a([Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2e

    const/4 v13, 0x4

    new-array v14, v13, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v3, v14, v13

    const/4 v13, 0x1

    aput-object v4, v14, v13

    const/4 v15, 0x2

    aput-object v5, v14, v15

    const/4 v15, 0x3

    aput-object v6, v14, v15

    .line 174
    invoke-direct {v8, v13, v14}, Lb/a/a/a/a/a/a/b;->a(Z[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v9, Lb/a/a/a/a/a/a/c;->l:Ljava/lang/String;

    :cond_2e
    const/4 v6, 0x3

    new-array v13, v6, [Ljava/lang/String;

    const/4 v14, 0x0

    aput-object v3, v13, v14

    const/4 v15, 0x1

    aput-object v4, v13, v15

    const/16 v16, 0x2

    aput-object v5, v13, v16

    .line 176
    invoke-direct {v8, v13}, Lb/a/a/a/a/a/a/b;->a([Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_32

    new-array v6, v6, [Ljava/lang/String;

    aput-object v3, v6, v14

    aput-object v4, v6, v15

    aput-object v5, v6, v16

    .line 177
    invoke-direct {v8, v15, v6}, Lb/a/a/a/a/a/a/b;->a(Z[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 178
    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v9, Lb/a/a/a/a/a/a/c;->l:Ljava/lang/String;

    const-string v4, " dup_value like ? and deadline > ? and delete_flag = 0"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    .line 180
    invoke-direct {v8, v3}, Lb/a/a/a/a/a/a/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v3, 0x1

    aput-object v1, v5, v3

    const/4 v1, 0x0

    .line 181
    invoke-direct {v8, v4, v5, v1}, Lb/a/a/a/a/a/a/b;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 182
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_31

    .line 183
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v14, 0x1

    :cond_2f
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lb/a/a/a/a/a/a/c;

    .line 184
    iget-object v4, v3, Lb/a/a/a/a/a/a/c;->h:Lorg/json/JSONObject;

    if-eqz v4, :cond_2f

    iget-object v4, v3, Lb/a/a/a/a/a/a/c;->h:Lorg/json/JSONObject;

    invoke-virtual {v4}, Lorg/json/JSONObject;->length()I

    move-result v4

    if-lez v4, :cond_2f

    .line 185
    invoke-virtual {v2, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    iget-object v5, v3, Lb/a/a/a/a/a/a/c;->g:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-lt v4, v5, :cond_2f

    .line 186
    iget v4, v3, Lb/a/a/a/a/a/a/c;->a:I

    iget-object v3, v3, Lb/a/a/a/a/a/a/c;->b:Ljava/lang/String;

    invoke-direct {v8, v11, v9, v4, v3}, Lb/a/a/a/a/a/a/b;->b(Ljava/util/List;Lb/a/a/a/a/a/a/c;ILjava/lang/String;)Z

    const/4 v14, 0x0

    goto :goto_d

    :cond_30
    if-eqz v14, :cond_54

    const/4 v1, 0x4

    .line 187
    invoke-direct {v8, v11, v9, v1}, Lb/a/a/a/a/a/a/b;->a(Ljava/util/List;Lb/a/a/a/a/a/a/c;I)Ljava/util/List;

    goto/16 :goto_18

    .line 188
    :cond_31
    invoke-direct {v8, v11, v9}, Lb/a/a/a/a/a/a/b;->a(Ljava/util/List;Lb/a/a/a/a/a/a/c;)Ljava/util/List;

    goto/16 :goto_18

    .line 189
    :cond_32
    invoke-direct {v8, v11, v9}, Lb/a/a/a/a/a/a/b;->a(Ljava/util/List;Lb/a/a/a/a/a/a/c;)Ljava/util/List;

    goto/16 :goto_18

    :cond_33
    const-string v2, "05021"

    .line 190
    invoke-virtual {v7, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_37

    const-string v2, "na_hotel"

    .line 191
    invoke-virtual {v10, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "d_in"

    .line 192
    invoke-virtual {v10, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "ty_room_arr"

    .line 193
    invoke-virtual {v10, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "num_room"

    .line 194
    invoke-virtual {v10, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x4

    new-array v7, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v2, v7, v6

    const/4 v6, 0x1

    aput-object v3, v7, v6

    const/4 v6, 0x2

    aput-object v4, v7, v6

    const/4 v6, 0x3

    aput-object v5, v7, v6

    .line 195
    invoke-direct {v8, v7}, Lb/a/a/a/a/a/a/b;->a([Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_36

    const/4 v6, 0x4

    new-array v7, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v2, v7, v6

    const/4 v2, 0x1

    aput-object v3, v7, v2

    const/4 v3, 0x2

    aput-object v4, v7, v3

    const/4 v4, 0x3

    aput-object v5, v7, v4

    .line 196
    invoke-direct {v8, v2, v7}, Lb/a/a/a/a/a/a/b;->a(Z[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 197
    iput-object v4, v9, Lb/a/a/a/a/a/a/c;->l:Ljava/lang/String;

    const-string v2, " dup_value like ? and deadline > ? and delete_flag = 0"

    new-array v3, v3, [Ljava/lang/String;

    .line 198
    invoke-direct {v8, v4}, Lb/a/a/a/a/a/a/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object v1, v3, v4

    const/4 v1, 0x0

    .line 199
    invoke-direct {v8, v2, v3, v1}, Lb/a/a/a/a/a/a/b;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 200
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_35

    .line 201
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_34
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_54

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/a/a/a/a/a/a/c;

    .line 202
    iget-object v3, v2, Lb/a/a/a/a/a/a/c;->h:Lorg/json/JSONObject;

    if-eqz v3, :cond_34

    iget-object v3, v2, Lb/a/a/a/a/a/a/c;->h:Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->length()I

    move-result v3

    if-lez v3, :cond_34

    .line 203
    iget v3, v2, Lb/a/a/a/a/a/a/c;->a:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iget-object v2, v2, Lb/a/a/a/a/a/a/c;->b:Ljava/lang/String;

    invoke-direct {v8, v11, v3, v2}, Lb/a/a/a/a/a/a/b;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    :cond_35
    const/4 v1, 0x4

    .line 204
    invoke-direct {v8, v11, v9, v1}, Lb/a/a/a/a/a/a/b;->a(Ljava/util/List;Lb/a/a/a/a/a/a/c;I)Ljava/util/List;

    goto/16 :goto_18

    :cond_36
    const/4 v1, 0x4

    .line 205
    invoke-direct {v8, v11, v9, v1}, Lb/a/a/a/a/a/a/b;->a(Ljava/util/List;Lb/a/a/a/a/a/a/c;I)Ljava/util/List;

    goto/16 :goto_18

    :cond_37
    const-string v2, "14010"

    .line 206
    invoke-virtual {v7, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_39

    const-string v2, "15002"

    invoke-virtual {v7, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_38

    goto :goto_f

    .line 207
    :cond_38
    invoke-direct {v8, v11, v9}, Lb/a/a/a/a/a/a/b;->a(Ljava/util/List;Lb/a/a/a/a/a/a/c;)Ljava/util/List;

    goto/16 :goto_18

    :cond_39
    :goto_f
    const-string v2, "na_movie"

    .line 208
    invoke-virtual {v10, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "d_watch"

    .line 209
    invoke-virtual {v10, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "t_watch"

    .line 210
    invoke-virtual {v10, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "num_tk"

    .line 211
    invoke-virtual {v10, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "14010,15002"

    const/4 v13, 0x1

    new-array v14, v13, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v5, v14, v13

    .line 212
    invoke-direct {v8, v14}, Lb/a/a/a/a/a/a/b;->a([Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_3a

    const-string v5, "cd_tk"

    .line 213
    invoke-virtual {v10, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_3a
    const/4 v10, 0x4

    new-array v13, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v2, v13, v10

    const/4 v10, 0x1

    aput-object v3, v13, v10

    const/4 v10, 0x2

    aput-object v4, v13, v10

    const/4 v10, 0x3

    aput-object v5, v13, v10

    .line 214
    invoke-direct {v8, v13}, Lb/a/a/a/a/a/a/b;->a([Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3e

    const/4 v10, 0x4

    new-array v13, v10, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object v2, v13, v10

    const/4 v2, 0x1

    aput-object v3, v13, v2

    const/4 v2, 0x2

    aput-object v4, v13, v2

    const/4 v3, 0x3

    aput-object v5, v13, v3

    .line 215
    invoke-direct {v8, v10, v13}, Lb/a/a/a/a/a/a/b;->a(Z[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 216
    iput-object v3, v9, Lb/a/a/a/a/a/a/c;->l:Ljava/lang/String;

    const-string v4, " dup_value like ? and deadline > ? and delete_flag = 0"

    new-array v2, v2, [Ljava/lang/String;

    aput-object v3, v2, v10

    const/4 v3, 0x1

    aput-object v1, v2, v3

    const/4 v1, 0x0

    .line 217
    invoke-direct {v8, v4, v2, v1}, Lb/a/a/a/a/a/a/b;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 218
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3d

    .line 219
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v14, 0x1

    :cond_3b
    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/a/a/a/a/a/a/c;

    .line 220
    iget-object v3, v2, Lb/a/a/a/a/a/a/c;->h:Lorg/json/JSONObject;

    if-eqz v3, :cond_3b

    iget-object v3, v2, Lb/a/a/a/a/a/a/c;->h:Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->length()I

    move-result v3

    if-lez v3, :cond_3b

    .line 221
    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    iget-object v4, v2, Lb/a/a/a/a/a/a/c;->g:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-lt v3, v4, :cond_3b

    .line 222
    iget v3, v2, Lb/a/a/a/a/a/a/c;->a:I

    iget-object v2, v2, Lb/a/a/a/a/a/a/c;->b:Ljava/lang/String;

    invoke-direct {v8, v11, v9, v3, v2}, Lb/a/a/a/a/a/a/b;->b(Ljava/util/List;Lb/a/a/a/a/a/a/c;ILjava/lang/String;)Z

    const/4 v14, 0x0

    goto :goto_10

    :cond_3c
    if-eqz v14, :cond_54

    const/4 v1, 0x4

    .line 223
    invoke-direct {v8, v11, v9, v1}, Lb/a/a/a/a/a/a/b;->a(Ljava/util/List;Lb/a/a/a/a/a/a/c;I)Ljava/util/List;

    goto/16 :goto_18

    .line 224
    :cond_3d
    invoke-direct {v8, v11, v9}, Lb/a/a/a/a/a/a/b;->a(Ljava/util/List;Lb/a/a/a/a/a/a/c;)Ljava/util/List;

    goto/16 :goto_18

    .line 225
    :cond_3e
    invoke-direct {v8, v11, v9}, Lb/a/a/a/a/a/a/b;->a(Ljava/util/List;Lb/a/a/a/a/a/a/c;)Ljava/util/List;

    goto/16 :goto_18

    :cond_3f
    :goto_11
    const-string v2, "num_train"

    .line 226
    invoke-virtual {v10, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "d_depart"

    .line 227
    invoke-virtual {v10, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "city_depart"

    .line 228
    invoke-virtual {v10, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "seat_train"

    .line 229
    invoke-virtual {v10, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "seat_type"

    .line 230
    invoke-virtual {v10, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "num_order"

    .line 231
    invoke-virtual {v10, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 232
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 233
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 234
    iput-object v5, v9, Lb/a/a/a/a/a/a/c;->m:Ljava/lang/String;

    const/4 v6, 0x1

    new-array v14, v6, [Ljava/lang/String;

    const/4 v15, 0x0

    aput-object v7, v14, v15

    .line 235
    invoke-direct {v8, v14}, Lb/a/a/a/a/a/a/b;->a([Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_40

    new-array v14, v6, [Ljava/lang/String;

    aput-object v7, v14, v15

    .line 236
    invoke-direct {v8, v6, v14}, Lb/a/a/a/a/a/a/b;->a(Z[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 237
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v9, Lb/a/a/a/a/a/a/c;->l:Ljava/lang/String;

    :cond_40
    const/4 v6, 0x2

    new-array v7, v6, [Ljava/lang/String;

    const/4 v14, 0x0

    aput-object v2, v7, v14

    const/4 v15, 0x1

    aput-object v3, v7, v15

    .line 238
    invoke-direct {v8, v7}, Lb/a/a/a/a/a/a/b;->a([Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_41

    new-array v7, v6, [Ljava/lang/String;

    aput-object v2, v7, v14

    aput-object v3, v7, v15

    .line 239
    invoke-direct {v8, v15, v7}, Lb/a/a/a/a/a/a/b;->a(Z[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v9, Lb/a/a/a/a/a/a/c;->l:Ljava/lang/String;

    :cond_41
    const/4 v6, 0x3

    new-array v7, v6, [Ljava/lang/String;

    const/4 v14, 0x0

    aput-object v2, v7, v14

    const/4 v15, 0x1

    aput-object v3, v7, v15

    const/16 v17, 0x2

    aput-object v5, v7, v17

    .line 241
    invoke-direct {v8, v7}, Lb/a/a/a/a/a/a/b;->a([Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_42

    new-array v7, v6, [Ljava/lang/String;

    aput-object v2, v7, v14

    aput-object v3, v7, v15

    aput-object v5, v7, v17

    .line 242
    invoke-direct {v8, v15, v7}, Lb/a/a/a/a/a/a/b;->a(Z[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v9, Lb/a/a/a/a/a/a/c;->l:Ljava/lang/String;

    :cond_42
    const/4 v6, 0x4

    new-array v7, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v2, v7, v6

    const/4 v6, 0x1

    aput-object v3, v7, v6

    const/4 v6, 0x2

    aput-object v4, v7, v6

    const/4 v6, 0x3

    aput-object v5, v7, v6

    .line 244
    invoke-direct {v8, v7}, Lb/a/a/a/a/a/a/b;->a([Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_45

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    const/4 v2, 0x1

    aput-object v3, v6, v2

    const/4 v3, 0x2

    aput-object v4, v6, v3

    const/4 v3, 0x3

    aput-object v5, v6, v3

    .line 245
    invoke-direct {v8, v2, v6}, Lb/a/a/a/a/a/a/b;->a(Z[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 246
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v9, Lb/a/a/a/a/a/a/c;->l:Ljava/lang/String;

    const-string v2, " dup_value like ? and deadline > ? and delete_flag = 0"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    .line 248
    invoke-direct {v8, v3}, Lb/a/a/a/a/a/a/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const/4 v3, 0x1

    aput-object v1, v4, v3

    const/4 v1, 0x0

    .line 249
    invoke-direct {v8, v2, v4, v1}, Lb/a/a/a/a/a/a/b;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 250
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_44

    .line 251
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_43
    :goto_12
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_54

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lb/a/a/a/a/a/a/c;

    .line 252
    iget-object v1, v3, Lb/a/a/a/a/a/a/c;->h:Lorg/json/JSONObject;

    if-eqz v1, :cond_43

    iget-object v1, v3, Lb/a/a/a/a/a/a/c;->h:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_43

    const-string v13, "view_title_name"

    const-string v14, "deadline"

    const-string v15, "num_order"

    const-string v16, "t_depart"

    const-string v17, "city_arrive"

    const-string v18, "t_depart"

    const-string v19, "seat_train"

    const-string v20, "seat_type"

    .line 253
    filled-new-array/range {v13 .. v20}, [Ljava/lang/String;

    move-result-object v6

    move-object/from16 v1, p0

    move-object v2, v11

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    invoke-direct/range {v1 .. v6}, Lb/a/a/a/a/a/a/b;->a(Ljava/util/List;Lb/a/a/a/a/a/a/c;Lb/a/a/a/a/a/a/c;Lorg/json/JSONObject;[Ljava/lang/String;)Z

    goto :goto_12

    .line 254
    :cond_44
    invoke-direct {v8, v11, v9}, Lb/a/a/a/a/a/a/b;->a(Ljava/util/List;Lb/a/a/a/a/a/a/c;)Ljava/util/List;

    goto/16 :goto_18

    .line 255
    :cond_45
    invoke-direct {v8, v11, v9}, Lb/a/a/a/a/a/a/b;->a(Ljava/util/List;Lb/a/a/a/a/a/a/c;)Ljava/util/List;

    goto/16 :goto_18

    :cond_46
    :goto_13
    const-string v2, "num_order"

    .line 256
    invoke-virtual {v10, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "na_arr"

    .line 257
    invoke-virtual {v10, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v3, "num_train"

    .line 258
    invoke-virtual {v10, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "d_depart"

    .line 259
    invoke-virtual {v10, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "city_depart"

    .line 260
    invoke-virtual {v10, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "seat_train"

    .line 261
    invoke-virtual {v10, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v13, "seat_type"

    .line 262
    invoke-virtual {v10, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 263
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 264
    iput-object v6, v9, Lb/a/a/a/a/a/a/c;->m:Ljava/lang/String;

    .line 265
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v14, 0x2

    new-array v15, v14, [Ljava/lang/String;

    const/16 v19, 0x0

    aput-object v3, v15, v19

    const/4 v14, 0x1

    aput-object v4, v15, v14

    .line 266
    invoke-direct {v8, v15}, Lb/a/a/a/a/a/a/b;->a([Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_47

    const/4 v15, 0x2

    new-array v14, v15, [Ljava/lang/String;

    aput-object v3, v14, v19

    const/4 v15, 0x1

    aput-object v4, v14, v15

    .line 267
    invoke-direct {v8, v15, v14}, Lb/a/a/a/a/a/a/b;->a(Z[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v9, Lb/a/a/a/a/a/a/c;->l:Ljava/lang/String;

    :cond_47
    const/4 v14, 0x4

    new-array v15, v14, [Ljava/lang/String;

    const/4 v14, 0x0

    aput-object v3, v15, v14

    const/4 v14, 0x1

    aput-object v4, v15, v14

    const/4 v14, 0x2

    aput-object v5, v15, v14

    const/4 v14, 0x3

    aput-object v6, v15, v14

    .line 269
    invoke-direct {v8, v15}, Lb/a/a/a/a/a/a/b;->a([Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_48

    const/4 v14, 0x4

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    aput-object v3, v14, v15

    const/4 v3, 0x1

    aput-object v4, v14, v3

    const/4 v4, 0x2

    aput-object v5, v14, v4

    const/4 v4, 0x3

    aput-object v6, v14, v4

    .line 270
    invoke-direct {v8, v3, v14}, Lb/a/a/a/a/a/a/b;->a(Z[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v9, Lb/a/a/a/a/a/a/c;->l:Ljava/lang/String;

    :cond_48
    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v4, v3

    const/4 v5, 0x1

    aput-object v7, v4, v5

    .line 272
    invoke-direct {v8, v4}, Lb/a/a/a/a/a/a/b;->a([Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4e

    new-array v4, v5, [Ljava/lang/String;

    aput-object v2, v4, v3

    .line 273
    invoke-direct {v8, v5, v4}, Lb/a/a/a/a/a/a/b;->a(Z[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 274
    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v9, Lb/a/a/a/a/a/a/c;->l:Ljava/lang/String;

    const-string v3, " dup_value like ? and deadline > ? and delete_flag = 0"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v2, v6, v13

    .line 276
    invoke-direct {v8, v5, v6}, Lb/a/a/a/a/a/a/b;->a(Z[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v8, v2}, Lb/a/a/a/a/a/a/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v13

    aput-object v1, v4, v5

    const/4 v1, 0x0

    .line 277
    invoke-direct {v8, v3, v4, v1}, Lb/a/a/a/a/a/a/b;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4d

    .line 278
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_4d

    .line 279
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    const/4 v14, 0x1

    :cond_49
    :goto_14
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4c

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lb/a/a/a/a/a/a/c;

    .line 280
    iget-object v1, v4, Lb/a/a/a/a/a/a/c;->h:Lorg/json/JSONObject;

    if-eqz v1, :cond_4b

    iget-object v1, v4, Lb/a/a/a/a/a/a/c;->h:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_4b

    const-string v1, "na_arr"

    .line 281
    invoke-direct {v8, v4, v1}, Lb/a/a/a/a/a/a/b;->a(Lb/a/a/a/a/a/a/c;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 282
    iput-object v1, v4, Lb/a/a/a/a/a/a/c;->m:Ljava/lang/String;

    .line 283
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4a

    const-string v20, "view_title_name"

    const-string v21, "deadline"

    const-string v22, "num_order"

    const-string v23, "city_depart"

    const-string v24, "city_arrive"

    const-string v25, "new_d_depart"

    const-string v26, "t_depart"

    const-string v27, "seat_train"

    const-string v28, "seat_type"

    .line 284
    filled-new-array/range {v20 .. v28}, [Ljava/lang/String;

    move-result-object v6

    move-object/from16 v1, p0

    move-object v2, v11

    move-object v3, v4

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    invoke-direct/range {v1 .. v6}, Lb/a/a/a/a/a/a/b;->a(Ljava/util/List;Lb/a/a/a/a/a/a/c;Lb/a/a/a/a/a/a/c;Lorg/json/JSONObject;[Ljava/lang/String;)Z

    move-result v1

    goto :goto_15

    .line 285
    :cond_4a
    iget-object v1, v8, Lb/a/a/a/a/a/a/b;->c:Landroid/content/Context;

    const-string v2, "duoqu_change_passenger_mark"

    invoke-static {v1, v2}, Lb/a/a/a/a/a/b/b;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 286
    iget-object v2, v8, Lb/a/a/a/a/a/a/b;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v1, p0

    move-object v2, v11

    move-object/from16 v3, p1

    move-object v5, v7

    invoke-direct/range {v1 .. v6}, Lb/a/a/a/a/a/a/b;->a(Ljava/util/List;Lb/a/a/a/a/a/a/c;Lb/a/a/a/a/a/a/c;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    goto :goto_15

    :cond_4b
    const/4 v1, 0x0

    :goto_15
    if-eqz v1, :cond_49

    const/4 v14, 0x0

    goto :goto_14

    :cond_4c
    if-eqz v14, :cond_54

    .line 287
    invoke-direct {v8, v11, v9}, Lb/a/a/a/a/a/a/b;->a(Ljava/util/List;Lb/a/a/a/a/a/a/c;)Ljava/util/List;

    goto/16 :goto_18

    .line 288
    :cond_4d
    invoke-direct {v8, v11, v9}, Lb/a/a/a/a/a/a/b;->a(Ljava/util/List;Lb/a/a/a/a/a/a/c;)Ljava/util/List;

    goto/16 :goto_18

    .line 289
    :cond_4e
    invoke-direct {v8, v11, v9}, Lb/a/a/a/a/a/a/b;->a(Ljava/util/List;Lb/a/a/a/a/a/a/c;)Ljava/util/List;

    goto/16 :goto_18

    :cond_4f
    :goto_16
    const-string v2, "num_flight"

    .line 290
    invoke-virtual {v10, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "d_depart"

    .line 291
    invoke-virtual {v10, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "city_depart"

    .line 292
    invoke-virtual {v10, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "city_arrive"

    .line 293
    invoke-virtual {v10, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "na_arr"

    .line 294
    invoke-virtual {v10, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 295
    iput-object v6, v9, Lb/a/a/a/a/a/a/c;->m:Ljava/lang/String;

    const/4 v6, 0x4

    new-array v10, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v2, v10, v6

    const/4 v6, 0x1

    aput-object v3, v10, v6

    const/4 v6, 0x2

    aput-object v4, v10, v6

    const/4 v6, 0x3

    aput-object v5, v10, v6

    .line 296
    invoke-direct {v8, v10}, Lb/a/a/a/a/a/a/b;->a([Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_52

    const/4 v6, 0x4

    new-array v10, v6, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v2, v10, v6

    const/4 v2, 0x1

    aput-object v3, v10, v2

    const/4 v3, 0x2

    aput-object v4, v10, v3

    const/4 v4, 0x3

    aput-object v5, v10, v4

    .line 297
    invoke-direct {v8, v2, v10}, Lb/a/a/a/a/a/a/b;->a(Z[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 298
    iput-object v4, v9, Lb/a/a/a/a/a/a/c;->l:Ljava/lang/String;

    const-string v2, " dup_value like ? and deadline > ? and delete_flag = 0"

    new-array v3, v3, [Ljava/lang/String;

    .line 299
    invoke-direct {v8, v4}, Lb/a/a/a/a/a/a/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object v1, v3, v4

    const/4 v1, 0x0

    .line 300
    invoke-direct {v8, v2, v3, v1}, Lb/a/a/a/a/a/a/b;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_50

    .line 301
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_50

    .line 302
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_54

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/a/a/a/a/a/a/c;

    .line 303
    iget v3, v2, Lb/a/a/a/a/a/a/c;->a:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    iget-object v2, v2, Lb/a/a/a/a/a/a/c;->b:Ljava/lang/String;

    invoke-direct {v8, v11, v3, v2}, Lb/a/a/a/a/a/a/b;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17

    :cond_50
    const-string v1, "05031"

    .line 304
    invoke-virtual {v7, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_51

    .line 305
    invoke-direct {v8, v11, v9}, Lb/a/a/a/a/a/a/b;->a(Ljava/util/List;Lb/a/a/a/a/a/a/c;)Ljava/util/List;

    goto :goto_18

    :cond_51
    const/4 v1, 0x4

    .line 306
    invoke-direct {v8, v11, v9, v1}, Lb/a/a/a/a/a/a/b;->a(Ljava/util/List;Lb/a/a/a/a/a/a/c;I)Ljava/util/List;

    goto :goto_18

    :cond_52
    const-string v1, "05031"

    .line 307
    invoke-virtual {v7, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_53

    .line 308
    invoke-direct {v8, v11, v9}, Lb/a/a/a/a/a/a/b;->a(Ljava/util/List;Lb/a/a/a/a/a/a/c;)Ljava/util/List;

    goto :goto_18

    :cond_53
    const/4 v1, 0x4

    .line 309
    invoke-direct {v8, v11, v9, v1}, Lb/a/a/a/a/a/a/b;->a(Ljava/util/List;Lb/a/a/a/a/a/a/c;I)Ljava/util/List;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 310
    :cond_54
    :goto_18
    :try_start_3
    invoke-direct/range {p0 .. p0}, Lb/a/a/a/a/a/a/b;->a()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_19

    :catchall_0
    move-exception v0

    move-object v1, v0

    :try_start_4
    const-string v2, "CardDBManager"

    .line 311
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lb/a/a/a/a/a/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_18

    .line 312
    :goto_19
    :try_start_5
    monitor-exit v12

    return-object v11

    :catchall_1
    move-exception v0

    move-object v1, v0

    .line 313
    invoke-direct/range {p0 .. p0}, Lb/a/a/a/a/a/a/b;->a()V

    throw v1

    :catchall_2
    move-exception v0

    move-object v1, v0

    .line 314
    monitor-exit v12
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v1

    :cond_55
    :goto_1a
    const-string v2, "combineCard data or result error"

    .line 315
    invoke-direct {v8, v11, v1, v2}, Lb/a/a/a/a/a/a/b;->a(Ljava/util/List;ILjava/lang/String;)Ljava/util/List;

    return-object v11
.end method
