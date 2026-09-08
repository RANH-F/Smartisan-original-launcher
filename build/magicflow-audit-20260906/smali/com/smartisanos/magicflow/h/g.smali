.class public Lcom/smartisanos/magicflow/h/g;
.super Lcom/smartisanos/magicflow/h/m;
.source "ExpressListItemInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisanos/magicflow/h/g$a;
    }
.end annotation


# instance fields
.field private i:Lcom/smartisanos/magicflow/LOG;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public o:Ljava/lang/String;

.field public p:Ljava/lang/String;

.field public q:Ljava/lang/String;

.field public r:Ljava/lang/String;

.field public s:J

.field public t:I

.field public u:Ljava/lang/String;

.field public v:Ljava/lang/String;

.field public w:I

.field public x:Ljava/lang/String;

.field public y:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/magicflow/h/m;-><init>()V

    .line 2
    const-class v0, Lcom/smartisanos/magicflow/h/g;

    invoke-static {v0}, Lcom/smartisanos/magicflow/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/magicflow/LOG;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/magicflow/h/g;->i:Lcom/smartisanos/magicflow/LOG;

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lcom/smartisanos/magicflow/h/g;->t:I

    const-wide/32 v0, 0xf731400

    .line 4
    iput-wide v0, p0, Lcom/smartisanos/magicflow/h/g;->y:J

    const-string v0, "LifeInfo"

    .line 5
    iput-object v0, p0, Lcom/smartisanos/magicflow/h/m;->b:Ljava/lang/String;

    const-string v0, "Express"

    .line 6
    iput-object v0, p0, Lcom/smartisanos/magicflow/h/m;->c:Ljava/lang/String;

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/smartisanos/magicflow/h/g;
    .locals 19

    const-string v0, ""

    .line 8
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    move-object/from16 v2, p0

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "logisticsStatus"

    .line 9
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "logisticsStatusDesc"

    .line 10
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "lastLogisticDetail"

    .line 11
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "logisticsGmtModified"

    .line 12
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "subPhone"

    .line 13
    invoke-virtual {v1, v6, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "mailNo"

    .line 14
    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "cpCode"

    .line 15
    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "cpName"

    .line 16
    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "cpLogo"

    .line 17
    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "channel"

    const/4 v12, 0x1

    .line 18
    invoke-virtual {v1, v11, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v11

    const-string v12, "channelCN"

    .line 19
    invoke-virtual {v1, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "orderNo"

    .line 20
    invoke-virtual {v1, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "sequenceNum"

    const/4 v15, 0x0

    .line 21
    invoke-virtual {v1, v14, v15}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v14

    const-string v15, "pushId"

    .line 22
    invoke-virtual {v1, v15, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v15, "lifeTime"

    move-object/from16 p0, v13

    move/from16 v16, v14

    const-wide/32 v13, 0xf731400

    .line 23
    invoke-virtual {v1, v15, v13, v14}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v13

    .line 24
    new-instance v1, Lcom/smartisanos/magicflow/h/g;

    invoke-direct {v1}, Lcom/smartisanos/magicflow/h/g;-><init>()V

    move-wide/from16 v17, v13

    .line 25
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    iput-wide v13, v1, Lcom/smartisanos/magicflow/h/m;->d:J

    .line 26
    iput-object v2, v1, Lcom/smartisanos/magicflow/h/g;->j:Ljava/lang/String;

    .line 27
    iput-object v3, v1, Lcom/smartisanos/magicflow/h/g;->k:Ljava/lang/String;

    .line 28
    iput-object v4, v1, Lcom/smartisanos/magicflow/h/g;->l:Ljava/lang/String;

    .line 29
    iput-object v5, v1, Lcom/smartisanos/magicflow/h/g;->m:Ljava/lang/String;

    .line 30
    iput-object v6, v1, Lcom/smartisanos/magicflow/h/g;->n:Ljava/lang/String;

    .line 31
    iput-object v7, v1, Lcom/smartisanos/magicflow/h/g;->o:Ljava/lang/String;

    .line 32
    iput-object v8, v1, Lcom/smartisanos/magicflow/h/g;->p:Ljava/lang/String;

    .line 33
    iput-object v9, v1, Lcom/smartisanos/magicflow/h/g;->q:Ljava/lang/String;

    .line 34
    iput-object v10, v1, Lcom/smartisanos/magicflow/h/g;->r:Ljava/lang/String;

    .line 35
    iput v11, v1, Lcom/smartisanos/magicflow/h/g;->t:I

    .line 36
    iput-object v12, v1, Lcom/smartisanos/magicflow/h/g;->u:Ljava/lang/String;

    move-object/from16 v2, p0

    .line 37
    iput-object v2, v1, Lcom/smartisanos/magicflow/h/g;->v:Ljava/lang/String;

    move/from16 v2, v16

    .line 38
    iput v2, v1, Lcom/smartisanos/magicflow/h/g;->w:I

    .line 39
    invoke-static {v5}, Lcom/smartisanos/magicflow/o/n;->a(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/smartisanos/magicflow/h/g;->s:J

    .line 40
    iput-object v0, v1, Lcom/smartisanos/magicflow/h/g;->x:Ljava/lang/String;

    move-wide/from16 v2, v17

    .line 41
    iput-wide v2, v1, Lcom/smartisanos/magicflow/h/g;->y:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    .line 42
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public static a(Landroid/database/Cursor;)Lcom/smartisanos/magicflow/h/m;
    .locals 5

    if-eqz p0, :cond_0

    :try_start_0
    const-string v0, "_id"

    .line 43
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const-string v1, "create_time"

    .line 44
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const-string v2, "data"

    .line 45
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 46
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 47
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 48
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 49
    new-instance v1, Lcom/smartisanos/magicflow/h/g;

    invoke-direct {v1}, Lcom/smartisanos/magicflow/h/g;-><init>()V

    .line 50
    iput v0, v1, Lcom/smartisanos/magicflow/h/m;->a:I

    .line 51
    iput-wide v3, v1, Lcom/smartisanos/magicflow/h/m;->d:J

    .line 52
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v1, v0}, Lcom/smartisanos/magicflow/h/g;->a(Lcom/smartisanos/magicflow/h/g;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    .line 53
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private a(Lcom/smartisanos/magicflow/h/g;Lorg/json/JSONObject;)V
    .locals 21

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    :try_start_0
    const-string v2, "logisticsStatus"

    .line 54
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "logisticsStatusDesc"

    .line 55
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "lastLogisticDetail"

    .line 56
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "logisticsGmtModified"

    .line 57
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "subPhone"

    .line 58
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "mailNo"

    .line 59
    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "cpCode"

    .line 60
    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "cpName"

    .line 61
    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "cpLogo"

    .line 62
    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "lastTime"

    .line 63
    invoke-virtual {v1, v11}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v11

    const-string v13, "orderNo"

    .line 64
    invoke-virtual {v1, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "channel"

    const/4 v15, 0x1

    .line 65
    invoke-virtual {v1, v14, v15}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v14

    const-string v15, "channelCN"

    .line 66
    invoke-virtual {v1, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v16, v13

    const-string v13, "sequenceNum"

    move-object/from16 v17, v15

    const/4 v15, 0x0

    .line 67
    invoke-virtual {v1, v13, v15}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v13

    const-string v15, "pushId"

    move/from16 v18, v13

    const-string v13, ""

    .line 68
    invoke-virtual {v1, v15, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v15, "lifeTime"

    move-object/from16 v20, v13

    move/from16 v19, v14

    const-wide/32 v13, 0xf731400

    .line 69
    invoke-virtual {v1, v15, v13, v14}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v13

    .line 70
    iput-object v2, v0, Lcom/smartisanos/magicflow/h/g;->j:Ljava/lang/String;

    .line 71
    iput-object v3, v0, Lcom/smartisanos/magicflow/h/g;->k:Ljava/lang/String;

    .line 72
    iput-object v4, v0, Lcom/smartisanos/magicflow/h/g;->l:Ljava/lang/String;

    .line 73
    iput-object v5, v0, Lcom/smartisanos/magicflow/h/g;->m:Ljava/lang/String;

    .line 74
    iput-object v6, v0, Lcom/smartisanos/magicflow/h/g;->n:Ljava/lang/String;

    .line 75
    iput-object v7, v0, Lcom/smartisanos/magicflow/h/g;->o:Ljava/lang/String;

    .line 76
    iput-object v8, v0, Lcom/smartisanos/magicflow/h/g;->p:Ljava/lang/String;

    .line 77
    iput-object v9, v0, Lcom/smartisanos/magicflow/h/g;->q:Ljava/lang/String;

    .line 78
    iput-object v10, v0, Lcom/smartisanos/magicflow/h/g;->r:Ljava/lang/String;

    .line 79
    iput-wide v11, v0, Lcom/smartisanos/magicflow/h/g;->s:J

    move/from16 v1, v19

    .line 80
    iput v1, v0, Lcom/smartisanos/magicflow/h/g;->t:I

    move-object/from16 v1, v17

    .line 81
    iput-object v1, v0, Lcom/smartisanos/magicflow/h/g;->u:Ljava/lang/String;

    move-object/from16 v1, v16

    .line 82
    iput-object v1, v0, Lcom/smartisanos/magicflow/h/g;->v:Ljava/lang/String;

    move/from16 v1, v18

    .line 83
    iput v1, v0, Lcom/smartisanos/magicflow/h/g;->w:I

    move-object/from16 v1, v20

    .line 84
    iput-object v1, v0, Lcom/smartisanos/magicflow/h/g;->x:Ljava/lang/String;

    .line 85
    iput-wide v13, v0, Lcom/smartisanos/magicflow/h/g;->y:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 86
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

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

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lcom/smartisanos/magicflow/h/g$a;

    invoke-direct {v0}, Lcom/smartisanos/magicflow/h/g$a;-><init>()V

    .line 3
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/smartisanos/magicflow/h/g;

    .line 4
    invoke-interface {p0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 5
    invoke-static {v1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 6
    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 7
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/smartisanos/magicflow/h/g;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/smartisanos/magicflow/h/g;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/ContentValues;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string v0, "data"

    .line 87
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 88
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p0, v1}, Lcom/smartisanos/magicflow/h/g;->a(Lcom/smartisanos/magicflow/h/g;Lorg/json/JSONObject;)V

    const-string v0, "_id"

    .line 89
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/smartisanos/magicflow/h/m;->a:I

    const-string v0, "create_time"

    .line 90
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/smartisanos/magicflow/h/m;->d:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 91
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public b()I
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/smartisanos/magicflow/h/g;->s:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/smartisanos/magicflow/h/g;->y:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
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
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/h/g;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_info"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/h/g;->e()Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_1

    .line 8
    sget-boolean v0, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smartisanos/magicflow/h/g;->i:Lcom/smartisanos/magicflow/LOG;

    const-string v1, "toContentValues return null by data is null"

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 9
    :cond_1
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "data"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/h/g;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/h/g;->m:Ljava/lang/String;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    array-length v2, v0

    const/4 v3, 0x2

    if-le v2, v3, :cond_1

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    aget-object v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/magicflow/h/g;->m:Ljava/lang/String;

    return-object v0
.end method

.method public e()Lorg/json/JSONObject;
    .locals 4

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "id"

    .line 2
    iget v2, p0, Lcom/smartisanos/magicflow/h/m;->a:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "logisticsStatus"

    .line 3
    iget-object v2, p0, Lcom/smartisanos/magicflow/h/g;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "logisticsStatusDesc"

    .line 4
    iget-object v2, p0, Lcom/smartisanos/magicflow/h/g;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "lastLogisticDetail"

    .line 5
    iget-object v2, p0, Lcom/smartisanos/magicflow/h/g;->l:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "logisticsGmtModified"

    .line 6
    iget-object v2, p0, Lcom/smartisanos/magicflow/h/g;->m:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "subPhone"

    .line 7
    iget-object v2, p0, Lcom/smartisanos/magicflow/h/g;->n:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "mailNo"

    .line 8
    iget-object v2, p0, Lcom/smartisanos/magicflow/h/g;->o:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "cpCode"

    .line 9
    iget-object v2, p0, Lcom/smartisanos/magicflow/h/g;->p:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "cpName"

    .line 10
    iget-object v2, p0, Lcom/smartisanos/magicflow/h/g;->q:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "cpLogo"

    .line 11
    iget-object v2, p0, Lcom/smartisanos/magicflow/h/g;->r:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "lastTime"

    .line 12
    iget-wide v2, p0, Lcom/smartisanos/magicflow/h/g;->s:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "channel"

    .line 13
    iget v2, p0, Lcom/smartisanos/magicflow/h/g;->t:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "orderNo"

    .line 14
    iget-object v2, p0, Lcom/smartisanos/magicflow/h/g;->v:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "sequenceNum"

    .line 15
    iget v2, p0, Lcom/smartisanos/magicflow/h/g;->w:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "channelCN"

    .line 16
    iget-object v2, p0, Lcom/smartisanos/magicflow/h/g;->u:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "pushId"

    .line 17
    iget-object v2, p0, Lcom/smartisanos/magicflow/h/g;->x:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "lifeTime"

    .line 18
    iget-wide v2, p0, Lcom/smartisanos/magicflow/h/g;->y:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 19
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/h/g;->e()Lorg/json/JSONObject;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
