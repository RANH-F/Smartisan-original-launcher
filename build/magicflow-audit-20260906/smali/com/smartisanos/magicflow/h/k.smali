.class public Lcom/smartisanos/magicflow/h/k;
.super Lcom/smartisanos/magicflow/h/m;
.source "HotelListItemInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisanos/magicflow/h/k$a;
    }
.end annotation


# static fields
.field private static final v:Lcom/smartisanos/magicflow/LOG;


# instance fields
.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:I

.field public m:Ljava/lang/String;

.field public n:I

.field public o:Ljava/lang/String;

.field public p:J

.field public q:Ljava/lang/String;

.field public r:J

.field public s:Ljava/lang/String;

.field public t:J

.field public u:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/smartisanos/magicflow/h/k;

    invoke-static {v0}, Lcom/smartisanos/magicflow/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/magicflow/LOG;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/magicflow/h/k;->v:Lcom/smartisanos/magicflow/LOG;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/magicflow/h/m;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/smartisanos/magicflow/h/k;->l:I

    .line 3
    iput v0, p0, Lcom/smartisanos/magicflow/h/k;->n:I

    const-string v0, "LifeInfo"

    .line 4
    iput-object v0, p0, Lcom/smartisanos/magicflow/h/m;->b:Ljava/lang/String;

    const-string v0, "Hotel"

    .line 5
    iput-object v0, p0, Lcom/smartisanos/magicflow/h/m;->c:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/database/Cursor;)Lcom/smartisanos/magicflow/h/k;
    .locals 7

    if-eqz p0, :cond_0

    :try_start_0
    const-string v0, "_id"

    .line 108
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const-string v1, "create_time"

    .line 109
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const-string v2, "key_info"

    .line 110
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v3, "data"

    .line 111
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string v4, "extra_data"

    .line 112
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 113
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 114
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 115
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 116
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 117
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 118
    new-instance v3, Lcom/smartisanos/magicflow/h/k;

    invoke-direct {v3}, Lcom/smartisanos/magicflow/h/k;-><init>()V

    .line 119
    iput v0, v3, Lcom/smartisanos/magicflow/h/m;->a:I

    .line 120
    iput-wide v5, v3, Lcom/smartisanos/magicflow/h/m;->d:J

    .line 121
    iput-object v1, v3, Lcom/smartisanos/magicflow/h/m;->h:Ljava/lang/String;

    .line 122
    iput-object p0, v3, Lcom/smartisanos/magicflow/h/m;->e:Ljava/lang/String;

    .line 123
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v3, p0}, Lcom/smartisanos/magicflow/h/k;->a(Lcom/smartisanos/magicflow/h/k;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception p0

    .line 124
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/smartisanos/magicflow/h/k;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 56
    :cond_0
    :try_start_0
    new-instance v1, Lcom/smartisanos/magicflow/h/k;

    invoke-direct {v1}, Lcom/smartisanos/magicflow/h/k;-><init>()V

    const-string v2, "data"

    .line 57
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 58
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v3}, Lcom/smartisanos/magicflow/h/k;->a(Lcom/smartisanos/magicflow/h/k;Lorg/json/JSONObject;)V

    const-string v2, "key_info"

    .line 59
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/smartisanos/magicflow/h/m;->h:Ljava/lang/String;

    const-string v2, "create_time"

    .line 60
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/smartisanos/magicflow/h/m;->d:J

    const-string v2, "extraData"

    .line 61
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lcom/smartisanos/magicflow/h/m;->e:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    .line 62
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    return-object v0
.end method

.method public static a(Landroid/content/res/Resources;J)Ljava/lang/String;
    .locals 4

    .line 150
    invoke-static {p1, p2}, Lcom/smartisanos/magicflow/o/n;->a(J)[I

    move-result-object p1

    const/4 p2, 0x1

    .line 151
    aget v0, p1, p2

    const/4 v1, 0x2

    .line 152
    aget p1, p1, v1

    const v2, 0x7f0d010b

    .line 153
    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, p2

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/util/HashMap;)Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/smartisanos/magicflow/h/m;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 1
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "NEW_ADACTION"

    .line 2
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "na_hotel"

    .line 3
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "add_hotel"

    .line 4
    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "num_room"

    .line 5
    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "ty_room_arr"

    .line 6
    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v8, "num_in"

    .line 7
    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v9, "d_in"

    .line 8
    invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-string v10, "t_in"

    .line 9
    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const-string v10, "d_t_in"

    .line 10
    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    if-nez v9, :cond_1

    const-string v9, "d_reserve"

    .line 11
    invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    :cond_1
    if-nez v10, :cond_2

    const-string v10, "d_t_reserve"

    .line 12
    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    :cond_2
    const-string v11, "d_out"

    .line 13
    invoke-virtual {v0, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    const-string v12, "t_out"

    .line 14
    invoke-virtual {v0, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    const-string v12, "d_t_out"

    .line 15
    invoke-virtual {v0, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    const-string v13, "ph_arr"

    .line 16
    invoke-virtual {v0, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz p0, :cond_3

    .line 17
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    goto :goto_0

    :cond_3
    move-object v13, v1

    .line 18
    :goto_0
    new-instance v14, Lcom/smartisanos/magicflow/h/k;

    invoke-direct {v14}, Lcom/smartisanos/magicflow/h/k;-><init>()V

    move-object v15, v2

    .line 19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v14, Lcom/smartisanos/magicflow/h/m;->d:J

    .line 20
    iput-object v4, v14, Lcom/smartisanos/magicflow/h/k;->i:Ljava/lang/String;

    .line 21
    iput-object v5, v14, Lcom/smartisanos/magicflow/h/k;->k:Ljava/lang/String;

    .line 22
    iput-object v0, v14, Lcom/smartisanos/magicflow/h/k;->u:Ljava/lang/String;

    .line 23
    invoke-static {v6}, Lcom/smartisanos/magicflow/o/n;->d(Ljava/lang/String;)[I

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 24
    array-length v4, v0

    if-ne v4, v2, :cond_4

    .line 25
    aget v0, v0, v1

    iput v0, v14, Lcom/smartisanos/magicflow/h/k;->l:I

    .line 26
    :cond_4
    iput-object v7, v14, Lcom/smartisanos/magicflow/h/k;->m:Ljava/lang/String;

    .line 27
    :try_start_0
    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v14, Lcom/smartisanos/magicflow/h/k;->p:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    :catch_0
    iget-wide v4, v14, Lcom/smartisanos/magicflow/h/k;->p:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_5

    if-eqz v9, :cond_5

    const/4 v4, 0x0

    .line 29
    invoke-static {v9, v4}, Lcom/smartisanos/magicflow/o/n;->a(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v9

    iput-wide v9, v14, Lcom/smartisanos/magicflow/h/k;->p:J

    .line 30
    :cond_5
    iget-wide v4, v14, Lcom/smartisanos/magicflow/h/k;->p:J

    cmp-long v0, v4, v6

    if-eqz v0, :cond_6

    if-eqz v13, :cond_6

    .line 31
    invoke-static {v13, v4, v5}, Lcom/smartisanos/magicflow/h/k;->a(Landroid/content/res/Resources;J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v14, Lcom/smartisanos/magicflow/h/k;->o:Ljava/lang/String;

    :cond_6
    if-eqz v8, :cond_7

    :try_start_1
    const-string v0, "[^0-9]"

    .line 32
    invoke-virtual {v8, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 33
    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v14, Lcom/smartisanos/magicflow/h/k;->n:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 34
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 35
    :cond_7
    :goto_1
    :try_start_2
    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v14, Lcom/smartisanos/magicflow/h/k;->t:J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 36
    :catch_2
    iget-wide v4, v14, Lcom/smartisanos/magicflow/h/k;->t:J

    cmp-long v0, v4, v6

    if-nez v0, :cond_8

    if-eqz v11, :cond_8

    const/4 v4, 0x0

    .line 37
    invoke-static {v11, v4}, Lcom/smartisanos/magicflow/o/n;->a(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v14, Lcom/smartisanos/magicflow/h/k;->t:J

    .line 38
    :cond_8
    iget-wide v4, v14, Lcom/smartisanos/magicflow/h/k;->p:J

    cmp-long v0, v4, v6

    const-wide/32 v8, 0x5265c00

    if-eqz v0, :cond_b

    iget-wide v10, v14, Lcom/smartisanos/magicflow/h/k;->t:J

    cmp-long v0, v10, v6

    if-eqz v0, :cond_b

    cmp-long v0, v10, v4

    if-gez v0, :cond_b

    .line 39
    iget v0, v14, Lcom/smartisanos/magicflow/h/k;->n:I

    if-lez v0, :cond_9

    int-to-long v0, v0

    mul-long/2addr v0, v8

    add-long/2addr v4, v0

    .line 40
    iput-wide v4, v14, Lcom/smartisanos/magicflow/h/k;->t:J

    goto :goto_2

    .line 41
    :cond_9
    :try_start_3
    invoke-static {v4, v5}, Lcom/smartisanos/magicflow/o/n;->a(J)[I

    move-result-object v0

    aget v0, v0, v1

    .line 42
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 43
    iget-wide v4, v14, Lcom/smartisanos/magicflow/h/k;->t:J

    invoke-virtual {v1, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 44
    invoke-virtual {v1, v2, v0}, Ljava/util/Calendar;->set(II)V

    .line 45
    iget-wide v4, v14, Lcom/smartisanos/magicflow/h/k;->p:J

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    cmp-long v4, v4, v10

    if-lez v4, :cond_a

    add-int/2addr v0, v2

    .line 46
    invoke-virtual {v1, v2, v0}, Ljava/util/Calendar;->set(II)V

    .line 47
    :cond_a
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iput-wide v0, v14, Lcom/smartisanos/magicflow/h/k;->t:J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 48
    :catch_3
    :cond_b
    :goto_2
    iget-wide v0, v14, Lcom/smartisanos/magicflow/h/k;->t:J

    cmp-long v4, v0, v6

    if-eqz v4, :cond_c

    if-eqz v13, :cond_c

    .line 49
    invoke-static {v13, v0, v1}, Lcom/smartisanos/magicflow/h/k;->a(Landroid/content/res/Resources;J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v14, Lcom/smartisanos/magicflow/h/k;->s:Ljava/lang/String;

    .line 50
    :cond_c
    iget v0, v14, Lcom/smartisanos/magicflow/h/k;->n:I

    if-nez v0, :cond_d

    iget-wide v0, v14, Lcom/smartisanos/magicflow/h/k;->t:J

    iget-wide v4, v14, Lcom/smartisanos/magicflow/h/k;->p:J

    cmp-long v6, v0, v4

    if-lez v6, :cond_d

    sub-long/2addr v0, v4

    .line 51
    div-long/2addr v0, v8

    long-to-int v0, v0

    iput v0, v14, Lcom/smartisanos/magicflow/h/k;->n:I

    .line 52
    iget v0, v14, Lcom/smartisanos/magicflow/h/k;->n:I

    if-nez v0, :cond_d

    .line 53
    iput v2, v14, Lcom/smartisanos/magicflow/h/k;->n:I

    .line 54
    :cond_d
    iput-object v3, v14, Lcom/smartisanos/magicflow/h/m;->e:Ljava/lang/String;

    move-object v1, v15

    .line 55
    invoke-interface {v1, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method private static a(Lcom/smartisanos/magicflow/h/k;Lorg/json/JSONObject;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    :try_start_0
    const-string v2, "type"

    .line 77
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "combineKeyInfo"

    .line 78
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "parentKeyInfo"

    .line 79
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "hotelName"

    .line 80
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "address"

    .line 81
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "roomCount"

    .line 82
    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    const-string v8, "roomTypes"

    .line 83
    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "dayCount"

    .line 84
    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    const-string v10, "checkInDate"

    .line 85
    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "checkInExactTime"

    .line 86
    invoke-virtual {v1, v11}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v11

    const-string v13, "reservationTime"

    .line 87
    invoke-virtual {v1, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "reservationExactTime"

    .line 88
    invoke-virtual {v1, v14}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v14

    move-wide/from16 v16, v14

    const-string v14, "checkoutDate"

    .line 89
    invoke-virtual {v1, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "checkoutExactTime"

    move-object/from16 v18, v14

    .line 90
    invoke-virtual {v1, v15}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v14

    move-wide/from16 v19, v14

    const-string v14, "contact"

    .line 91
    invoke-virtual {v1, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 92
    iput v2, v0, Lcom/smartisanos/magicflow/h/m;->f:I

    .line 93
    iput-object v3, v0, Lcom/smartisanos/magicflow/h/m;->h:Ljava/lang/String;

    .line 94
    iput-object v4, v0, Lcom/smartisanos/magicflow/h/m;->g:Ljava/lang/String;

    .line 95
    iput-object v5, v0, Lcom/smartisanos/magicflow/h/k;->i:Ljava/lang/String;

    .line 96
    iput-object v6, v0, Lcom/smartisanos/magicflow/h/k;->k:Ljava/lang/String;

    .line 97
    iput v7, v0, Lcom/smartisanos/magicflow/h/k;->l:I

    .line 98
    iput-object v8, v0, Lcom/smartisanos/magicflow/h/k;->m:Ljava/lang/String;

    .line 99
    iput-object v10, v0, Lcom/smartisanos/magicflow/h/k;->o:Ljava/lang/String;

    .line 100
    iput v9, v0, Lcom/smartisanos/magicflow/h/k;->n:I

    .line 101
    iput-wide v11, v0, Lcom/smartisanos/magicflow/h/k;->p:J

    .line 102
    iput-object v13, v0, Lcom/smartisanos/magicflow/h/k;->q:Ljava/lang/String;

    move-wide/from16 v2, v16

    .line 103
    iput-wide v2, v0, Lcom/smartisanos/magicflow/h/k;->r:J

    move-object/from16 v2, v18

    .line 104
    iput-object v2, v0, Lcom/smartisanos/magicflow/h/k;->s:Ljava/lang/String;

    move-wide/from16 v2, v19

    .line 105
    iput-wide v2, v0, Lcom/smartisanos/magicflow/h/k;->t:J

    .line 106
    iput-object v1, v0, Lcom/smartisanos/magicflow/h/k;->u:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 107
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

    .line 143
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 144
    :cond_0
    new-instance v0, Lcom/smartisanos/magicflow/h/k$a;

    invoke-direct {v0}, Lcom/smartisanos/magicflow/h/k$a;-><init>()V

    .line 145
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/smartisanos/magicflow/h/k;

    .line 146
    invoke-interface {p0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 147
    invoke-static {v1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 148
    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 149
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public a(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 5

    const v0, 0x7f0701bf

    const/4 v1, 0x0

    if-eqz p1, :cond_6

    .line 125
    iget-object v2, p0, Lcom/smartisanos/magicflow/h/k;->i:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_0

    .line 126
    :cond_0
    iget-object v2, p0, Lcom/smartisanos/magicflow/h/k;->i:Ljava/lang/String;

    const v3, 0x7f0d0187

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 127
    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/magicflow/h/k;->j:Ljava/lang/String;

    const v0, 0x7f0701c2

    .line 128
    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    .line 129
    :cond_1
    iget-object v2, p0, Lcom/smartisanos/magicflow/h/k;->i:Ljava/lang/String;

    const v3, 0x7f0d0185

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 130
    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/magicflow/h/k;->j:Ljava/lang/String;

    const v0, 0x7f0701be

    .line 131
    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    .line 132
    :cond_2
    iget-object v2, p0, Lcom/smartisanos/magicflow/h/k;->i:Ljava/lang/String;

    const v3, 0x7f0d0183

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 133
    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/magicflow/h/k;->j:Ljava/lang/String;

    const v0, 0x7f0701c0

    .line 134
    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    .line 135
    :cond_3
    iget-object v2, p0, Lcom/smartisanos/magicflow/h/k;->i:Ljava/lang/String;

    const v3, 0x7f0d0184

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 136
    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/magicflow/h/k;->j:Ljava/lang/String;

    const v0, 0x7f0701c1

    .line 137
    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    .line 138
    :cond_4
    iget-object v2, p0, Lcom/smartisanos/magicflow/h/k;->i:Ljava/lang/String;

    const v3, 0x7f0d0189

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 139
    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/magicflow/h/k;->j:Ljava/lang/String;

    const v0, 0x7f0701c3

    .line 140
    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    .line 141
    :cond_5
    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    .line 142
    :cond_6
    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public a()Ljava/lang/String;
    .locals 7

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    .line 69
    iget-object v1, p0, Lcom/smartisanos/magicflow/h/k;->i:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/smartisanos/magicflow/h/k;->l:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x1

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/smartisanos/magicflow/h/k;->m:Ljava/lang/String;

    const/4 v4, 0x2

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/smartisanos/magicflow/h/k;->o:Ljava/lang/String;

    const/4 v4, 0x3

    aput-object v1, v0, v4

    .line 70
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 71
    array-length v4, v0

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v5, v0, v2

    .line 72
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 73
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 74
    :cond_0
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    const-string v5, ";"

    .line 75
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 76
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

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

    .line 63
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 64
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1}, Lcom/smartisanos/magicflow/h/k;->a(Lcom/smartisanos/magicflow/h/k;Lorg/json/JSONObject;)V

    const-string v0, "_id"

    .line 65
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/smartisanos/magicflow/h/m;->a:I

    const-string v0, "create_time"

    .line 66
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/smartisanos/magicflow/h/m;->d:J

    const-string v0, "extra_data"

    .line 67
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/smartisanos/magicflow/h/m;->e:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 68
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public b()I
    .locals 13

    .line 1
    iget-wide v0, p0, Lcom/smartisanos/magicflow/h/k;->p:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-wide v4, p0, Lcom/smartisanos/magicflow/h/k;->t:J

    cmp-long v0, v4, v2

    if-nez v0, :cond_1

    return v1

    .line 3
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 4
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 5
    iget-wide v6, p0, Lcom/smartisanos/magicflow/h/k;->p:J

    invoke-virtual {v0, v6, v7}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 v6, 0xa

    .line 6
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->clear(I)V

    const/16 v6, 0xc

    .line 7
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->clear(I)V

    const/16 v7, 0xd

    .line 8
    invoke-virtual {v0, v7}, Ljava/util/Calendar;->clear(I)V

    const/16 v8, 0xe

    .line 9
    invoke-virtual {v0, v8}, Ljava/util/Calendar;->clear(I)V

    .line 10
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v9

    sub-long/2addr v9, v4

    const-wide/32 v11, 0x5265c00

    cmp-long v9, v9, v11

    if-lez v9, :cond_2

    const/4 v0, 0x1

    return v0

    .line 11
    :cond_2
    iget-wide v9, p0, Lcom/smartisanos/magicflow/h/k;->t:J

    cmp-long v2, v9, v2

    if-eqz v2, :cond_3

    .line 12
    invoke-virtual {v0, v9, v10}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 13
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->clear(I)V

    .line 14
    invoke-virtual {v0, v7}, Ljava/util/Calendar;->clear(I)V

    .line 15
    invoke-virtual {v0, v8}, Ljava/util/Calendar;->clear(I)V

    const/16 v2, 0xb

    .line 16
    invoke-virtual {v0, v2, v7}, Ljava/util/Calendar;->set(II)V

    .line 17
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    cmp-long v0, v4, v2

    if-lez v0, :cond_3

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
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/h/k;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_info"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object v1, p0, Lcom/smartisanos/magicflow/h/m;->e:Ljava/lang/String;

    const-string v2, "extra_data"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/h/k;->f()Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_1

    .line 9
    sget-boolean v0, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/smartisanos/magicflow/h/k;->v:Lcom/smartisanos/magicflow/LOG;

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

.method public d()Ljava/lang/String;
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/smartisanos/magicflow/h/k;->p:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 2
    invoke-static {v0, v1}, Lcom/smartisanos/magicflow/o/n;->b(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "--"

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/smartisanos/magicflow/h/k;->t:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 2
    invoke-static {v0, v1}, Lcom/smartisanos/magicflow/o/n;->b(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "--"

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    instance-of v0, p1, Lcom/smartisanos/magicflow/h/k;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/smartisanos/magicflow/h/k;

    .line 3
    iget v0, p0, Lcom/smartisanos/magicflow/h/k;->l:I

    iget v1, p1, Lcom/smartisanos/magicflow/h/k;->l:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/smartisanos/magicflow/h/k;->n:I

    iget v1, p1, Lcom/smartisanos/magicflow/h/k;->n:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/smartisanos/magicflow/h/k;->i:Ljava/lang/String;

    iget-object v1, p1, Lcom/smartisanos/magicflow/h/k;->i:Ljava/lang/String;

    .line 4
    invoke-static {v0, v1}, Lcom/smartisanos/magicflow/o/n;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smartisanos/magicflow/h/k;->k:Ljava/lang/String;

    iget-object v1, p1, Lcom/smartisanos/magicflow/h/k;->k:Ljava/lang/String;

    .line 5
    invoke-static {v0, v1}, Lcom/smartisanos/magicflow/o/n;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smartisanos/magicflow/h/k;->m:Ljava/lang/String;

    iget-object v1, p1, Lcom/smartisanos/magicflow/h/k;->m:Ljava/lang/String;

    .line 6
    invoke-static {v0, v1}, Lcom/smartisanos/magicflow/o/n;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smartisanos/magicflow/h/k;->o:Ljava/lang/String;

    iget-object v1, p1, Lcom/smartisanos/magicflow/h/k;->o:Ljava/lang/String;

    .line 7
    invoke-static {v0, v1}, Lcom/smartisanos/magicflow/o/n;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smartisanos/magicflow/h/k;->s:Ljava/lang/String;

    iget-object p1, p1, Lcom/smartisanos/magicflow/h/k;->s:Ljava/lang/String;

    .line 8
    invoke-static {v0, p1}, Lcom/smartisanos/magicflow/o/n;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public f()Lorg/json/JSONObject;
    .locals 4

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "hotelName"

    .line 2
    iget-object v2, p0, Lcom/smartisanos/magicflow/h/k;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "address"

    .line 3
    iget-object v2, p0, Lcom/smartisanos/magicflow/h/k;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "roomCount"

    .line 4
    iget v2, p0, Lcom/smartisanos/magicflow/h/k;->l:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "roomTypes"

    .line 5
    iget-object v2, p0, Lcom/smartisanos/magicflow/h/k;->m:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "dayCount"

    .line 6
    iget v2, p0, Lcom/smartisanos/magicflow/h/k;->n:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "checkInDate"

    .line 7
    iget-object v2, p0, Lcom/smartisanos/magicflow/h/k;->o:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "checkInExactTime"

    .line 8
    iget-wide v2, p0, Lcom/smartisanos/magicflow/h/k;->p:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "reservationTime"

    .line 9
    iget-object v2, p0, Lcom/smartisanos/magicflow/h/k;->q:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "reservationExactTime"

    .line 10
    iget-wide v2, p0, Lcom/smartisanos/magicflow/h/k;->r:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "checkoutDate"

    .line 11
    iget-object v2, p0, Lcom/smartisanos/magicflow/h/k;->s:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "checkoutExactTime"

    .line 12
    iget-wide v2, p0, Lcom/smartisanos/magicflow/h/k;->t:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "contact"

    .line 13
    iget-object v2, p0, Lcom/smartisanos/magicflow/h/k;->u:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "id"

    .line 14
    iget v2, p0, Lcom/smartisanos/magicflow/h/m;->a:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "combineKeyInfo"

    .line 15
    iget-object v2, p0, Lcom/smartisanos/magicflow/h/m;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "parentKeyInfo"

    .line 16
    iget-object v2, p0, Lcom/smartisanos/magicflow/h/m;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "type"

    .line 17
    iget v2, p0, Lcom/smartisanos/magicflow/h/m;->f:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    .line 18
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "name ["

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3
    iget-object v1, p0, Lcom/smartisanos/magicflow/h/k;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "] room info ["

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5
    iget v1, p0, Lcom/smartisanos/magicflow/h/k;->l:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ", "

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 7
    iget-object v2, p0, Lcom/smartisanos/magicflow/h/k;->m:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "] address ["

    .line 8
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 9
    iget-object v2, p0, Lcom/smartisanos/magicflow/h/k;->k:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "] check in ["

    .line 10
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 11
    iget-object v2, p0, Lcom/smartisanos/magicflow/h/k;->o:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 13
    iget-wide v2, p0, Lcom/smartisanos/magicflow/h/k;->p:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string v2, "] check out ["

    .line 14
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 15
    iget-object v2, p0, Lcom/smartisanos/magicflow/h/k;->s:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 17
    iget-wide v1, p0, Lcom/smartisanos/magicflow/h/k;->t:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    const-string v1, "] type ["

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 19
    iget v1, p0, Lcom/smartisanos/magicflow/h/m;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "] parentKeyInfo ["

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 21
    iget-object v1, p0, Lcom/smartisanos/magicflow/h/m;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
