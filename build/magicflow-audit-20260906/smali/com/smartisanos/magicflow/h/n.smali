.class public Lcom/smartisanos/magicflow/h/n;
.super Lcom/smartisanos/magicflow/h/m;
.source "MovieListItemInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisanos/magicflow/h/n$a;
    }
.end annotation


# static fields
.field private static final y:Lcom/smartisanos/magicflow/LOG;


# instance fields
.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public o:Ljava/lang/String;

.field public p:J

.field public q:Ljava/lang/String;

.field public r:Ljava/lang/String;

.field public s:Ljava/lang/String;

.field public t:Ljava/lang/String;

.field public u:Ljava/lang/String;

.field public v:Ljava/lang/String;

.field public w:J

.field public x:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/smartisanos/magicflow/h/n;

    invoke-static {v0}, Lcom/smartisanos/magicflow/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/magicflow/LOG;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/magicflow/h/n;->y:Lcom/smartisanos/magicflow/LOG;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/magicflow/h/m;-><init>()V

    const-string v0, "LifeInfo"

    .line 2
    iput-object v0, p0, Lcom/smartisanos/magicflow/h/m;->b:Ljava/lang/String;

    const-string v0, "Movie"

    .line 3
    iput-object v0, p0, Lcom/smartisanos/magicflow/h/m;->c:Ljava/lang/String;

    return-void
.end method

.method private static a(Ljava/lang/String;)J
    .locals 4

    if-eqz p0, :cond_1

    .line 138
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v0, 0xa

    if-ge p0, v0, :cond_0

    int-to-long v0, p0

    const-wide/32 v2, 0x36ee80

    :goto_0
    mul-long/2addr v0, v2

    return-wide v0

    :cond_0
    const/16 v0, 0x3c

    if-le p0, v0, :cond_1

    int-to-long v0, p0

    const-wide/32 v2, 0xea60

    goto :goto_0

    :catch_0
    :cond_1
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static a(Landroid/database/Cursor;)Lcom/smartisanos/magicflow/h/n;
    .locals 7

    if-eqz p0, :cond_0

    :try_start_0
    const-string v0, "_id"

    .line 105
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const-string v1, "create_time"

    .line 106
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const-string v2, "key_info"

    .line 107
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v3, "data"

    .line 108
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string v4, "extra_data"

    .line 109
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 110
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 111
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 112
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 113
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 114
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 115
    new-instance v3, Lcom/smartisanos/magicflow/h/n;

    invoke-direct {v3}, Lcom/smartisanos/magicflow/h/n;-><init>()V

    .line 116
    iput v0, v3, Lcom/smartisanos/magicflow/h/m;->a:I

    .line 117
    iput-wide v5, v3, Lcom/smartisanos/magicflow/h/m;->d:J

    .line 118
    iput-object v1, v3, Lcom/smartisanos/magicflow/h/m;->h:Ljava/lang/String;

    .line 119
    iput-object p0, v3, Lcom/smartisanos/magicflow/h/m;->e:Ljava/lang/String;

    .line 120
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v3, p0}, Lcom/smartisanos/magicflow/h/n;->a(Lcom/smartisanos/magicflow/h/n;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception p0

    .line 121
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/smartisanos/magicflow/h/n;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 45
    :cond_0
    :try_start_0
    new-instance v1, Lcom/smartisanos/magicflow/h/n;

    invoke-direct {v1}, Lcom/smartisanos/magicflow/h/n;-><init>()V

    const-string v2, "data"

    .line 46
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 47
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v3}, Lcom/smartisanos/magicflow/h/n;->a(Lcom/smartisanos/magicflow/h/n;Lorg/json/JSONObject;)V

    const-string v2, "_id"

    .line 48
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/smartisanos/magicflow/h/m;->a:I

    const-string v2, "key_info"

    .line 49
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/smartisanos/magicflow/h/m;->h:Ljava/lang/String;

    const-string v2, "create_time"

    .line 50
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/smartisanos/magicflow/h/m;->d:J

    const-string v2, "extraData"

    .line 51
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lcom/smartisanos/magicflow/h/m;->e:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    .line 52
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    return-object v0
.end method

.method public static a(Ljava/util/HashMap;Ljava/util/HashMap;)Ljava/util/List;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/smartisanos/magicflow/h/m;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v0, :cond_5

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 1
    :cond_0
    sget-boolean v2, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/smartisanos/magicflow/h/n;->y:Lcom/smartisanos/magicflow/LOG;

    const-string v3, "dump movieMap !"

    invoke-virtual {v2, v3}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    .line 2
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 4
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 5
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 6
    sget-boolean v6, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-eqz v6, :cond_2

    sget-object v6, Lcom/smartisanos/magicflow/h/n;->y:Lcom/smartisanos/magicflow/LOG;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "movie key ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "], value ["

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v3, "NEW_ADACTION"

    .line 7
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "na_movie"

    .line 8
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "num_tk"

    .line 9
    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "num_serial"

    .line 10
    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "num_order"

    .line 11
    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v8, "cd_tk"

    .line 12
    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v9, "add_watch"

    .line 13
    invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-string v10, "room"

    .line 14
    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const-string v11, "seat_arr"

    .line 15
    invoke-virtual {v0, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    const-string v12, "d_watch"

    .line 16
    invoke-virtual {v0, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    const-string v13, "t_watch"

    .line 17
    invoke-virtual {v0, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    const-string v14, "d_t_watch"

    .line 18
    invoke-virtual {v0, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v14, "type"

    .line 19
    invoke-virtual {v1, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    const-string v15, "length"

    .line 20
    invoke-virtual {v1, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    move-object/from16 v16, v2

    const-string v2, "posterpath"

    .line 21
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v17, v3

    const-string v3, "ph_arr"

    .line 22
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 23
    new-instance v3, Lcom/smartisanos/magicflow/h/n;

    invoke-direct {v3}, Lcom/smartisanos/magicflow/h/n;-><init>()V

    move-object/from16 p0, v14

    move-object/from16 v18, v15

    .line 24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    iput-wide v14, v3, Lcom/smartisanos/magicflow/h/m;->d:J

    .line 25
    iput-object v4, v3, Lcom/smartisanos/magicflow/h/n;->i:Ljava/lang/String;

    .line 26
    iput-object v5, v3, Lcom/smartisanos/magicflow/h/n;->j:Ljava/lang/String;

    .line 27
    iput-object v6, v3, Lcom/smartisanos/magicflow/h/n;->m:Ljava/lang/String;

    .line 28
    iput-object v7, v3, Lcom/smartisanos/magicflow/h/n;->l:Ljava/lang/String;

    .line 29
    iput-object v8, v3, Lcom/smartisanos/magicflow/h/n;->k:Ljava/lang/String;

    .line 30
    iput-object v9, v3, Lcom/smartisanos/magicflow/h/n;->q:Ljava/lang/String;

    .line 31
    iput-object v10, v3, Lcom/smartisanos/magicflow/h/n;->r:Ljava/lang/String;

    .line 32
    iput-object v11, v3, Lcom/smartisanos/magicflow/h/n;->s:Ljava/lang/String;

    .line 33
    iput-object v12, v3, Lcom/smartisanos/magicflow/h/n;->n:Ljava/lang/String;

    .line 34
    iput-object v13, v3, Lcom/smartisanos/magicflow/h/n;->o:Ljava/lang/String;

    .line 35
    iput-object v1, v3, Lcom/smartisanos/magicflow/h/n;->t:Ljava/lang/String;

    .line 36
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, v3, Lcom/smartisanos/magicflow/h/n;->p:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    :catch_0
    iget-wide v0, v3, Lcom/smartisanos/magicflow/h/n;->p:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-nez v0, :cond_4

    .line 38
    invoke-static {v12, v13}, Lcom/smartisanos/magicflow/o/n;->a(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, v3, Lcom/smartisanos/magicflow/h/n;->p:J

    :cond_4
    move-object/from16 v14, p0

    .line 39
    iput-object v14, v3, Lcom/smartisanos/magicflow/h/n;->u:Ljava/lang/String;

    move-object/from16 v15, v18

    .line 40
    iput-object v15, v3, Lcom/smartisanos/magicflow/h/n;->v:Ljava/lang/String;

    .line 41
    iget-object v0, v3, Lcom/smartisanos/magicflow/h/n;->v:Ljava/lang/String;

    invoke-static {v0}, Lcom/smartisanos/magicflow/h/n;->a(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, v3, Lcom/smartisanos/magicflow/h/n;->w:J

    .line 42
    iput-object v2, v3, Lcom/smartisanos/magicflow/h/n;->x:Ljava/lang/String;

    move-object/from16 v0, v17

    .line 43
    iput-object v0, v3, Lcom/smartisanos/magicflow/h/m;->e:Ljava/lang/String;

    move-object/from16 v0, v16

    .line 44
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_5
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private static a(Lcom/smartisanos/magicflow/h/n;Lorg/json/JSONObject;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v0, :cond_1

    if-nez v1, :cond_0

    goto/16 :goto_0

    :cond_0
    :try_start_0
    const-string v2, "type"

    .line 67
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "combineKeyInfo"

    .line 68
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "parentKeyInfo"

    .line 69
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "movieName"

    .line 70
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "ticketNum"

    .line 71
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "ticketVerifyNum"

    .line 72
    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "orderNum"

    .line 73
    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "serialNum"

    .line 74
    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "date"

    .line 75
    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "time"

    .line 76
    invoke-virtual {v1, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "exactTime"

    .line 77
    invoke-virtual {v1, v12}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v12

    const-string v14, "address"

    .line 78
    invoke-virtual {v1, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "room"

    .line 79
    invoke-virtual {v1, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v16, v15

    const-string v15, "seatArr"

    .line 80
    invoke-virtual {v1, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v17, v15

    const-string v15, "movieType"

    .line 81
    invoke-virtual {v1, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v18, v15

    const-string v15, "movieLength"

    .line 82
    invoke-virtual {v1, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v19, v15

    const-string v15, "posterDownloadPath"

    .line 83
    invoke-virtual {v1, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v20, v15

    const-string v15, "callNum"

    .line 84
    invoke-virtual {v1, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 85
    iput v2, v0, Lcom/smartisanos/magicflow/h/m;->f:I

    .line 86
    iput-object v3, v0, Lcom/smartisanos/magicflow/h/m;->h:Ljava/lang/String;

    .line 87
    iput-object v4, v0, Lcom/smartisanos/magicflow/h/m;->g:Ljava/lang/String;

    .line 88
    iput-object v5, v0, Lcom/smartisanos/magicflow/h/n;->i:Ljava/lang/String;

    .line 89
    iput-object v6, v0, Lcom/smartisanos/magicflow/h/n;->j:Ljava/lang/String;

    .line 90
    iput-object v7, v0, Lcom/smartisanos/magicflow/h/n;->k:Ljava/lang/String;

    .line 91
    iput-object v8, v0, Lcom/smartisanos/magicflow/h/n;->l:Ljava/lang/String;

    .line 92
    iput-object v9, v0, Lcom/smartisanos/magicflow/h/n;->m:Ljava/lang/String;

    .line 93
    iput-object v10, v0, Lcom/smartisanos/magicflow/h/n;->n:Ljava/lang/String;

    .line 94
    iput-object v11, v0, Lcom/smartisanos/magicflow/h/n;->o:Ljava/lang/String;

    .line 95
    iput-wide v12, v0, Lcom/smartisanos/magicflow/h/n;->p:J

    .line 96
    iput-object v14, v0, Lcom/smartisanos/magicflow/h/n;->q:Ljava/lang/String;

    move-object/from16 v2, v16

    .line 97
    iput-object v2, v0, Lcom/smartisanos/magicflow/h/n;->r:Ljava/lang/String;

    move-object/from16 v2, v17

    .line 98
    iput-object v2, v0, Lcom/smartisanos/magicflow/h/n;->s:Ljava/lang/String;

    move-object/from16 v2, v18

    .line 99
    iput-object v2, v0, Lcom/smartisanos/magicflow/h/n;->u:Ljava/lang/String;

    move-object/from16 v2, v19

    .line 100
    iput-object v2, v0, Lcom/smartisanos/magicflow/h/n;->v:Ljava/lang/String;

    .line 101
    iget-object v2, v0, Lcom/smartisanos/magicflow/h/n;->v:Ljava/lang/String;

    invoke-static {v2}, Lcom/smartisanos/magicflow/h/n;->a(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/smartisanos/magicflow/h/n;->w:J

    move-object/from16 v2, v20

    .line 102
    iput-object v2, v0, Lcom/smartisanos/magicflow/h/n;->x:Ljava/lang/String;

    .line 103
    iput-object v1, v0, Lcom/smartisanos/magicflow/h/n;->t:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 104
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/smartisanos/magicflow/h/m;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 131
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 132
    :cond_0
    new-instance v0, Lcom/smartisanos/magicflow/h/n$a;

    invoke-direct {v0}, Lcom/smartisanos/magicflow/h/n$a;-><init>()V

    .line 133
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/smartisanos/magicflow/h/n;

    .line 134
    invoke-interface {p0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 135
    invoke-static {v1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 136
    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 137
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 6

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    .line 59
    iget-object v1, p0, Lcom/smartisanos/magicflow/h/n;->i:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/smartisanos/magicflow/h/n;->r:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/smartisanos/magicflow/h/n;->s:Ljava/lang/String;

    const/4 v3, 0x2

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/smartisanos/magicflow/h/n;->n:Ljava/lang/String;

    const/4 v3, 0x3

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/smartisanos/magicflow/h/n;->o:Ljava/lang/String;

    const/4 v3, 0x4

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/smartisanos/magicflow/h/n;->q:Ljava/lang/String;

    const/4 v3, 0x5

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/smartisanos/magicflow/h/n;->j:Ljava/lang/String;

    const/4 v3, 0x6

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/smartisanos/magicflow/h/n;->k:Ljava/lang/String;

    const/4 v3, 0x7

    aput-object v1, v0, v3

    .line 60
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 61
    array-length v3, v0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    .line 62
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v4, ""

    .line 63
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 64
    :cond_0
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    const-string v4, ";"

    .line 65
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 66
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;)Ljava/lang/String;
    .locals 14

    .line 122
    iget-wide v0, p0, Lcom/smartisanos/magicflow/h/n;->p:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 123
    invoke-static {v0, v1}, Lcom/smartisanos/magicflow/o/n;->a(J)[I

    move-result-object v0

    .line 124
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x0

    .line 125
    aget v3, v0, v2

    const/4 v4, 0x1

    aget v5, v0, v4

    sub-int/2addr v5, v4

    const/4 v6, 0x2

    aget v7, v0, v6

    invoke-virtual {v1, v3, v5, v7}, Ljava/util/Calendar;->set(III)V

    .line 126
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v9

    aget v11, v0, v2

    aget v12, v0, v4

    aget v13, v0, v6

    invoke-static/range {v8 .. v13}, Lcom/smartisanos/magicflow/o/n;->a(Landroid/content/res/Resources;JIII)Ljava/lang/String;

    move-result-object p1

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    .line 127
    aget v1, v0, v1

    const/4 v2, 0x4

    aget v0, v0, v2

    const-string v2, ":"

    invoke-static {v1, v0, v2}, Lcom/smartisanos/magicflow/o/n;->a(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 128
    :cond_1
    iget-object p1, p0, Lcom/smartisanos/magicflow/h/n;->n:Ljava/lang/String;

    .line 129
    iget-object v0, p0, Lcom/smartisanos/magicflow/h/n;->o:Ljava/lang/String;

    :goto_0
    const-string v1, ""

    if-nez p1, :cond_2

    move-object p1, v1

    :cond_2
    if-nez v0, :cond_3

    move-object v0, v1

    .line 130
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/content/ContentValues;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string v0, "data"

    .line 53
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 54
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1}, Lcom/smartisanos/magicflow/h/n;->a(Lcom/smartisanos/magicflow/h/n;Lorg/json/JSONObject;)V

    const-string v0, "_id"

    .line 55
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/smartisanos/magicflow/h/m;->a:I

    const-string v0, "create_time"

    .line 56
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/smartisanos/magicflow/h/m;->d:J

    const-string v0, "extra_data"

    .line 57
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/smartisanos/magicflow/h/m;->e:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 58
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public b()I
    .locals 10

    .line 1
    iget-wide v0, p0, Lcom/smartisanos/magicflow/h/n;->p:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 3
    iget-wide v6, p0, Lcom/smartisanos/magicflow/h/n;->p:J

    sub-long/2addr v6, v4

    const-wide/32 v8, 0x5265c00

    cmp-long v0, v6, v8

    if-lez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const-wide/32 v6, 0x6ddd00

    .line 4
    iget-wide v8, p0, Lcom/smartisanos/magicflow/h/n;->w:J

    cmp-long v0, v8, v2

    if-lez v0, :cond_2

    move-wide v6, v8

    .line 5
    :cond_2
    iget-wide v2, p0, Lcom/smartisanos/magicflow/h/n;->p:J

    add-long/2addr v2, v6

    cmp-long v0, v2, v4

    if-gez v0, :cond_3

    return v1

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public c()Landroid/content/ContentValues;
    .locals 3

    .line 1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2
    iget v1, p0, Lcom/smartisanos/magicflow/h/m;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3
    iget-object v1, p0, Lcom/smartisanos/magicflow/h/m;->b:Ljava/lang/String;

    const-string v2, "category"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/smartisanos/magicflow/h/m;->c:Ljava/lang/String;

    const-string v2, "sub_category"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-wide v1, p0, Lcom/smartisanos/magicflow/h/m;->d:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "create_time"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 6
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/h/n;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_info"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object v1, p0, Lcom/smartisanos/magicflow/h/m;->e:Ljava/lang/String;

    const-string v2, "extra_data"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/h/n;->d()Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_1

    .line 9
    sget-boolean v0, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/smartisanos/magicflow/h/n;->y:Lcom/smartisanos/magicflow/LOG;

    const-string v1, "toContentValues return null by data is null"

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 10
    :cond_1
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "data"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public d()Lorg/json/JSONObject;
    .locals 4

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "id"

    .line 2
    iget v2, p0, Lcom/smartisanos/magicflow/h/m;->a:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "type"

    .line 3
    iget v2, p0, Lcom/smartisanos/magicflow/h/m;->f:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "combineKeyInfo"

    .line 4
    iget-object v2, p0, Lcom/smartisanos/magicflow/h/m;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "parentKeyInfo"

    .line 5
    iget-object v2, p0, Lcom/smartisanos/magicflow/h/m;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "movieName"

    .line 6
    iget-object v2, p0, Lcom/smartisanos/magicflow/h/n;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "ticketNum"

    .line 7
    iget-object v2, p0, Lcom/smartisanos/magicflow/h/n;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "ticketVerifyNum"

    .line 8
    iget-object v2, p0, Lcom/smartisanos/magicflow/h/n;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "orderNum"

    .line 9
    iget-object v2, p0, Lcom/smartisanos/magicflow/h/n;->l:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "serialNum"

    .line 10
    iget-object v2, p0, Lcom/smartisanos/magicflow/h/n;->m:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "date"

    .line 11
    iget-object v2, p0, Lcom/smartisanos/magicflow/h/n;->n:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "time"

    .line 12
    iget-object v2, p0, Lcom/smartisanos/magicflow/h/n;->o:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "exactTime"

    .line 13
    iget-wide v2, p0, Lcom/smartisanos/magicflow/h/n;->p:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "address"

    .line 14
    iget-object v2, p0, Lcom/smartisanos/magicflow/h/n;->q:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "room"

    .line 15
    iget-object v2, p0, Lcom/smartisanos/magicflow/h/n;->r:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "seatArr"

    .line 16
    iget-object v2, p0, Lcom/smartisanos/magicflow/h/n;->s:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "movieType"

    .line 17
    iget-object v2, p0, Lcom/smartisanos/magicflow/h/n;->u:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "movieLength"

    .line 18
    iget-object v2, p0, Lcom/smartisanos/magicflow/h/n;->v:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "posterDownloadPath"

    .line 19
    iget-object v2, p0, Lcom/smartisanos/magicflow/h/n;->x:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "callNum"

    .line 20
    iget-object v2, p0, Lcom/smartisanos/magicflow/h/n;->t:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    .line 21
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    instance-of v0, p1, Lcom/smartisanos/magicflow/h/n;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/smartisanos/magicflow/h/n;

    .line 3
    iget-object v0, p0, Lcom/smartisanos/magicflow/h/n;->i:Ljava/lang/String;

    iget-object v1, p1, Lcom/smartisanos/magicflow/h/n;->i:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/smartisanos/magicflow/o/n;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smartisanos/magicflow/h/n;->j:Ljava/lang/String;

    iget-object v1, p1, Lcom/smartisanos/magicflow/h/n;->j:Ljava/lang/String;

    .line 4
    invoke-static {v0, v1}, Lcom/smartisanos/magicflow/o/n;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smartisanos/magicflow/h/n;->k:Ljava/lang/String;

    iget-object v1, p1, Lcom/smartisanos/magicflow/h/n;->k:Ljava/lang/String;

    .line 5
    invoke-static {v0, v1}, Lcom/smartisanos/magicflow/o/n;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smartisanos/magicflow/h/n;->r:Ljava/lang/String;

    iget-object v1, p1, Lcom/smartisanos/magicflow/h/n;->r:Ljava/lang/String;

    .line 6
    invoke-static {v0, v1}, Lcom/smartisanos/magicflow/o/n;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smartisanos/magicflow/h/n;->s:Ljava/lang/String;

    iget-object p1, p1, Lcom/smartisanos/magicflow/h/n;->s:Ljava/lang/String;

    .line 7
    invoke-static {v0, p1}, Lcom/smartisanos/magicflow/o/n;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    .line 1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/smartisanos/magicflow/h/m;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/smartisanos/magicflow/h/n;->i:Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/smartisanos/magicflow/h/n;->j:Ljava/lang/String;

    const/4 v4, 0x2

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/smartisanos/magicflow/h/n;->k:Ljava/lang/String;

    const/4 v4, 0x3

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/smartisanos/magicflow/h/n;->q:Ljava/lang/String;

    const/4 v4, 0x4

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/smartisanos/magicflow/h/n;->r:Ljava/lang/String;

    const/4 v4, 0x5

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/smartisanos/magicflow/h/n;->s:Ljava/lang/String;

    const/4 v4, 0x6

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/smartisanos/magicflow/h/n;->n:Ljava/lang/String;

    const/4 v4, 0x7

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/smartisanos/magicflow/h/n;->o:Ljava/lang/String;

    const/16 v4, 0x8

    aput-object v1, v0, v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v4, p0, Lcom/smartisanos/magicflow/h/n;->p:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v4, 0x9

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/smartisanos/magicflow/h/n;->u:Ljava/lang/String;

    const/16 v4, 0xa

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/smartisanos/magicflow/h/n;->v:Ljava/lang/String;

    const/16 v4, 0xb

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/smartisanos/magicflow/h/n;->x:Ljava/lang/String;

    const/16 v4, 0xc

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/smartisanos/magicflow/h/m;->g:Ljava/lang/String;

    const/16 v4, 0xd

    aput-object v1, v0, v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/smartisanos/magicflow/h/m;->f:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 2
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 3
    array-length v2, v0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    .line 4
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, ", "

    .line 5
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
