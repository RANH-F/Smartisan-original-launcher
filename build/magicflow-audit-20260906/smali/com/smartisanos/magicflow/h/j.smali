.class public Lcom/smartisanos/magicflow/h/j;
.super Lcom/smartisanos/magicflow/h/m;
.source "FlightListItemInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisanos/magicflow/h/j$a;
    }
.end annotation


# static fields
.field private static final x:Lcom/smartisanos/magicflow/LOG;


# instance fields
.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:J

.field public o:J

.field public p:Ljava/lang/String;

.field public q:Ljava/lang/String;

.field public r:Ljava/lang/String;

.field public s:Ljava/lang/String;

.field public t:Ljava/lang/String;

.field public u:J

.field public v:Ljava/lang/String;

.field public w:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/smartisanos/magicflow/h/j;

    invoke-static {v0}, Lcom/smartisanos/magicflow/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/magicflow/LOG;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/magicflow/h/j;->x:Lcom/smartisanos/magicflow/LOG;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/magicflow/h/m;-><init>()V

    const-string v0, "LifeInfo"

    .line 2
    iput-object v0, p0, Lcom/smartisanos/magicflow/h/m;->b:Ljava/lang/String;

    const-string v0, "Flight"

    .line 3
    iput-object v0, p0, Lcom/smartisanos/magicflow/h/m;->c:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/database/Cursor;)Lcom/smartisanos/magicflow/h/j;
    .locals 7

    if-eqz p0, :cond_0

    :try_start_0
    const-string v0, "_id"

    .line 126
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const-string v1, "create_time"

    .line 127
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const-string v2, "key_info"

    .line 128
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v3, "data"

    .line 129
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string v4, "extra_data"

    .line 130
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 131
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 132
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 133
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 134
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 135
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 136
    new-instance v3, Lcom/smartisanos/magicflow/h/j;

    invoke-direct {v3}, Lcom/smartisanos/magicflow/h/j;-><init>()V

    .line 137
    iput v0, v3, Lcom/smartisanos/magicflow/h/m;->a:I

    .line 138
    iput-wide v5, v3, Lcom/smartisanos/magicflow/h/m;->d:J

    .line 139
    iput-object v1, v3, Lcom/smartisanos/magicflow/h/m;->h:Ljava/lang/String;

    .line 140
    iput-object p0, v3, Lcom/smartisanos/magicflow/h/m;->e:Ljava/lang/String;

    .line 141
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v3, p0}, Lcom/smartisanos/magicflow/h/j;->a(Lcom/smartisanos/magicflow/h/j;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception p0

    .line 142
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static a(Ljava/lang/String;Ljava/util/HashMap;)Lcom/smartisanos/magicflow/h/j;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/smartisanos/magicflow/h/j;"
        }
    .end annotation

    move-object/from16 v0, p1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v1, "air_company"

    .line 29
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "num_flight"

    .line 30
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "city_depart"

    .line 31
    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "airport_depart"

    .line 32
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "terminal_depart"

    .line 33
    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "d_t_depart"

    .line 34
    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "d_depart"

    .line 35
    invoke-virtual {v0, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v8, "t_depart"

    .line 36
    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v9, "new_d_t_depart"

    .line 37
    invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-string v10, "new_d_depart"

    .line 38
    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const-string v11, "new_t_depart"

    .line 39
    invoke-virtual {v0, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    const-string v12, "city_arrive"

    .line 40
    invoke-virtual {v0, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    const-string v13, "airport_arrive"

    .line 41
    invoke-virtual {v0, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    const-string v14, "terminal_arrive"

    .line 42
    invoke-virtual {v0, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    const-string v15, "d_t_arrive"

    .line 43
    invoke-virtual {v0, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    move-object/from16 v16, v15

    const-string v15, "d_arrive"

    .line 44
    invoke-virtual {v0, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    move-object/from16 v17, v15

    const-string v15, "t_arrive"

    .line 45
    invoke-virtual {v0, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 46
    new-instance v15, Lcom/smartisanos/magicflow/h/j;

    invoke-direct {v15}, Lcom/smartisanos/magicflow/h/j;-><init>()V

    move-object/from16 v18, v13

    move-object/from16 v19, v14

    .line 47
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    iput-wide v13, v15, Lcom/smartisanos/magicflow/h/m;->d:J

    .line 48
    iput-object v1, v15, Lcom/smartisanos/magicflow/h/j;->i:Ljava/lang/String;

    .line 49
    iput-object v2, v15, Lcom/smartisanos/magicflow/h/j;->j:Ljava/lang/String;

    .line 50
    iput-object v3, v15, Lcom/smartisanos/magicflow/h/j;->k:Ljava/lang/String;

    .line 51
    iput-object v4, v15, Lcom/smartisanos/magicflow/h/j;->l:Ljava/lang/String;

    .line 52
    iput-object v5, v15, Lcom/smartisanos/magicflow/h/j;->m:Ljava/lang/String;

    .line 53
    iput-object v7, v15, Lcom/smartisanos/magicflow/h/j;->p:Ljava/lang/String;

    .line 54
    iput-object v8, v15, Lcom/smartisanos/magicflow/h/j;->q:Ljava/lang/String;

    .line 55
    :try_start_0
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 56
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v15, Lcom/smartisanos/magicflow/h/j;->n:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 57
    :catch_0
    sget-boolean v1, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/smartisanos/magicflow/h/j;->x:Lcom/smartisanos/magicflow/LOG;

    const-string v2, "departExactTime parseLong err"

    invoke-virtual {v1, v2}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    .line 58
    :cond_1
    :goto_0
    :try_start_1
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 59
    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v15, Lcom/smartisanos/magicflow/h/j;->o:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 60
    :catch_1
    sget-boolean v1, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/smartisanos/magicflow/h/j;->x:Lcom/smartisanos/magicflow/LOG;

    const-string v2, "newDepartExactTime parseLong err"

    invoke-virtual {v1, v2}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    .line 61
    :cond_2
    :goto_1
    iget-wide v1, v15, Lcom/smartisanos/magicflow/h/j;->n:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_3

    .line 62
    invoke-static {v7, v8}, Lcom/smartisanos/magicflow/o/n;->a(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v15, Lcom/smartisanos/magicflow/h/j;->n:J

    .line 63
    :cond_3
    iget-wide v1, v15, Lcom/smartisanos/magicflow/h/j;->o:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_4

    .line 64
    invoke-static {v10, v11}, Lcom/smartisanos/magicflow/o/n;->a(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, v15, Lcom/smartisanos/magicflow/h/j;->o:J

    .line 65
    :cond_4
    iput-object v12, v15, Lcom/smartisanos/magicflow/h/j;->r:Ljava/lang/String;

    move-object/from16 v13, v18

    .line 66
    iput-object v13, v15, Lcom/smartisanos/magicflow/h/j;->s:Ljava/lang/String;

    move-object/from16 v14, v19

    .line 67
    iput-object v14, v15, Lcom/smartisanos/magicflow/h/j;->t:Ljava/lang/String;

    move-object/from16 v1, v17

    .line 68
    iput-object v1, v15, Lcom/smartisanos/magicflow/h/j;->v:Ljava/lang/String;

    .line 69
    iput-object v0, v15, Lcom/smartisanos/magicflow/h/j;->w:Ljava/lang/String;

    .line 70
    :try_start_2
    invoke-static/range {v16 .. v16}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, v15, Lcom/smartisanos/magicflow/h/j;->u:J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 71
    :catch_2
    iget-wide v5, v15, Lcom/smartisanos/magicflow/h/j;->u:J

    cmp-long v2, v5, v3

    if-nez v2, :cond_6

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 72
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 73
    iget-object v1, v15, Lcom/smartisanos/magicflow/h/j;->p:Ljava/lang/String;

    .line 74
    :cond_5
    invoke-static {v1, v0}, Lcom/smartisanos/magicflow/o/n;->a(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, v15, Lcom/smartisanos/magicflow/h/j;->u:J

    :cond_6
    move-object/from16 v0, p0

    .line 75
    iput-object v0, v15, Lcom/smartisanos/magicflow/h/m;->e:Ljava/lang/String;

    return-object v15
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/smartisanos/magicflow/h/j;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 76
    :cond_0
    :try_start_0
    new-instance v1, Lcom/smartisanos/magicflow/h/j;

    invoke-direct {v1}, Lcom/smartisanos/magicflow/h/j;-><init>()V

    const-string v2, "data"

    .line 77
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 78
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v3}, Lcom/smartisanos/magicflow/h/j;->a(Lcom/smartisanos/magicflow/h/j;Lorg/json/JSONObject;)V

    const-string v2, "key_info"

    .line 79
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/smartisanos/magicflow/h/m;->h:Ljava/lang/String;

    const-string v2, "create_time"

    .line 80
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/smartisanos/magicflow/h/m;->d:J

    const-string v2, "extra_data"

    .line 81
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lcom/smartisanos/magicflow/h/m;->e:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    .line 82
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    return-object v0
.end method

.method public static a(Ljava/util/HashMap;)Ljava/util/List;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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

    const-string v1, "t_arrive"

    const-string v2, "d_arrive"

    const-string v3, "d_t_arrive"

    const-string v4, "terminal_arrive"

    const-string v5, "airport_arrive"

    const-string v6, "city_arrive"

    const-string v7, "t_depart"

    const-string v8, "d_depart"

    const-string v9, "d_t_depart"

    const-string v10, "terminal_depart"

    const-string v11, "airport_depart"

    const-string v12, "city_depart"

    const-string v13, "num_flight"

    const-string v14, "air_company"

    const/4 v15, 0x0

    if-nez v0, :cond_0

    return-object v15

    .line 1
    :cond_0
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v16, v1

    const-string v1, "NEW_ADACTION"

    .line 2
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object/from16 v17, v2

    const-string v2, "flight_data_arr"

    .line 3
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_1

    .line 4
    invoke-static {v1, v0}, Lcom/smartisanos/magicflow/h/j;->a(Ljava/lang/String;Ljava/util/HashMap;)Lcom/smartisanos/magicflow/h/j;

    move-result-object v0

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v15

    .line 5
    :cond_1
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x0

    return-object v2

    :cond_2
    const/4 v2, 0x0

    move-object/from16 v18, v15

    .line 7
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v15

    if-ge v2, v15, :cond_3

    .line 8
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v19, v1

    .line 9
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    move-object/from16 p0, v0

    .line 10
    invoke-virtual {v1, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v14, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-virtual {v1, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v13, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-virtual {v1, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v12, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-virtual {v1, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v8, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v0, v17

    move-object/from16 v17, v3

    .line 22
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v3, v16

    move-object/from16 v16, v0

    .line 23
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "new_d_depart"

    move-object/from16 v20, v3

    const-string v3, "new_d_depart"

    .line 24
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "new_t_depart"

    const-string v3, "new_t_depart"

    .line 25
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "new_d_t_depart"

    const-string v3, "new_d_t_depart"

    .line 26
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v1, v19

    .line 27
    invoke-static {v1, v15}, Lcom/smartisanos/magicflow/h/j;->a(Ljava/lang/String;Ljava/util/HashMap;)Lcom/smartisanos/magicflow/h/j;

    move-result-object v0

    move-object/from16 v3, v18

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    move-object/from16 v18, v3

    move-object/from16 v3, v17

    move-object/from16 v17, v16

    move-object/from16 v16, v20

    goto/16 :goto_0

    :cond_3
    move-object/from16 v3, v18

    return-object v3

    :catch_0
    move-exception v0

    .line 28
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const/4 v1, 0x0

    return-object v1
.end method

.method private static a(Lcom/smartisanos/magicflow/h/j;Lorg/json/JSONObject;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-eqz v0, :cond_1

    if-nez v1, :cond_0

    goto/16 :goto_0

    :cond_0
    :try_start_0
    const-string v2, "type"

    .line 91
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "combineKeyInfo"

    .line 92
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "parentKeyInfo"

    .line 93
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 94
    iput v2, v0, Lcom/smartisanos/magicflow/h/m;->f:I

    .line 95
    iput-object v3, v0, Lcom/smartisanos/magicflow/h/m;->h:Ljava/lang/String;

    .line 96
    iput-object v4, v0, Lcom/smartisanos/magicflow/h/m;->g:Ljava/lang/String;

    const-string v2, "airline"

    .line 97
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "flightNum"

    .line 98
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "departCity"

    .line 99
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "departAirport"

    .line 100
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "departTerminal"

    .line 101
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "departExactTime"

    .line 102
    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    const-string v9, "departDate"

    .line 103
    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "departTime"

    .line 104
    invoke-virtual {v1, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "arriveCity"

    .line 105
    invoke-virtual {v1, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "arriveAirport"

    .line 106
    invoke-virtual {v1, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "arriveTerminal"

    .line 107
    invoke-virtual {v1, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "arriveExactTime"

    .line 108
    invoke-virtual {v1, v14}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v14

    move-wide/from16 v16, v14

    const-string v14, "arriveDate"

    .line 109
    invoke-virtual {v1, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "arriveTime"

    .line 110
    invoke-virtual {v1, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 111
    iput-object v2, v0, Lcom/smartisanos/magicflow/h/j;->i:Ljava/lang/String;

    .line 112
    iput-object v3, v0, Lcom/smartisanos/magicflow/h/j;->j:Ljava/lang/String;

    .line 113
    iput-object v4, v0, Lcom/smartisanos/magicflow/h/j;->k:Ljava/lang/String;

    .line 114
    iput-object v5, v0, Lcom/smartisanos/magicflow/h/j;->l:Ljava/lang/String;

    .line 115
    iput-object v6, v0, Lcom/smartisanos/magicflow/h/j;->m:Ljava/lang/String;

    .line 116
    iput-wide v7, v0, Lcom/smartisanos/magicflow/h/j;->n:J

    .line 117
    iput-object v9, v0, Lcom/smartisanos/magicflow/h/j;->p:Ljava/lang/String;

    .line 118
    iput-object v10, v0, Lcom/smartisanos/magicflow/h/j;->q:Ljava/lang/String;

    .line 119
    iput-object v11, v0, Lcom/smartisanos/magicflow/h/j;->r:Ljava/lang/String;

    .line 120
    iput-object v12, v0, Lcom/smartisanos/magicflow/h/j;->s:Ljava/lang/String;

    .line 121
    iput-object v13, v0, Lcom/smartisanos/magicflow/h/j;->t:Ljava/lang/String;

    move-wide/from16 v2, v16

    .line 122
    iput-wide v2, v0, Lcom/smartisanos/magicflow/h/j;->u:J

    .line 123
    iput-object v14, v0, Lcom/smartisanos/magicflow/h/j;->v:Ljava/lang/String;

    .line 124
    iput-object v1, v0, Lcom/smartisanos/magicflow/h/j;->w:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 125
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

    .line 148
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 149
    :cond_0
    new-instance v0, Lcom/smartisanos/magicflow/h/j$a;

    invoke-direct {v0}, Lcom/smartisanos/magicflow/h/j$a;-><init>()V

    .line 150
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/smartisanos/magicflow/h/j;

    .line 151
    invoke-interface {p0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 152
    invoke-static {v1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 153
    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 154
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 7

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    .line 83
    iget-object v1, p0, Lcom/smartisanos/magicflow/h/j;->i:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/smartisanos/magicflow/h/j;->k:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/smartisanos/magicflow/h/j;->l:Ljava/lang/String;

    const/4 v3, 0x2

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/smartisanos/magicflow/h/j;->m:Ljava/lang/String;

    const/4 v3, 0x3

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/smartisanos/magicflow/h/j;->r:Ljava/lang/String;

    const/4 v3, 0x4

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/smartisanos/magicflow/h/j;->s:Ljava/lang/String;

    const/4 v3, 0x5

    aput-object v1, v0, v3

    iget-object v1, p0, Lcom/smartisanos/magicflow/h/j;->t:Ljava/lang/String;

    const/4 v3, 0x6

    aput-object v1, v0, v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v3, p0, Lcom/smartisanos/magicflow/h/j;->n:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x7

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/smartisanos/magicflow/h/j;->p:Ljava/lang/String;

    const/16 v4, 0x8

    aput-object v1, v0, v4

    iget-object v1, p0, Lcom/smartisanos/magicflow/h/j;->q:Ljava/lang/String;

    const/16 v4, 0x9

    aput-object v1, v0, v4

    .line 84
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 85
    array-length v4, v0

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v5, v0, v2

    .line 86
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 87
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 88
    :cond_0
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    const-string v5, ";"

    .line 89
    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 90
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 14

    .line 143
    iget-wide v0, p0, Lcom/smartisanos/magicflow/h/j;->u:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 144
    invoke-static {v0, v1}, Lcom/smartisanos/magicflow/o/n;->a(J)[I

    move-result-object v0

    .line 145
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x0

    .line 146
    aget v3, v0, v2

    const/4 v4, 0x1

    aget v5, v0, v4

    sub-int/2addr v5, v4

    const/4 v6, 0x2

    aget v7, v0, v6

    invoke-virtual {v1, v3, v5, v7}, Ljava/util/Calendar;->set(III)V

    .line 147
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v9

    aget v11, v0, v2

    aget v12, v0, v4

    aget v13, v0, v6

    move-object v8, p1

    invoke-static/range {v8 .. v13}, Lcom/smartisanos/magicflow/o/n;->a(Landroid/content/res/Resources;JIII)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "--"

    :goto_0
    return-object p1
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 155
    iget-object v0, p0, Lcom/smartisanos/magicflow/h/m;->e:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 156
    :cond_0
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 157
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 158
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 159
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 160
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return-object v1
.end method

.method public b()I
    .locals 11

    .line 1
    iget-wide v0, p0, Lcom/smartisanos/magicflow/h/j;->n:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, -0x1

    if-nez v0, :cond_0

    iget-wide v4, p0, Lcom/smartisanos/magicflow/h/j;->o:J

    cmp-long v0, v4, v2

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 3
    iget-wide v6, p0, Lcom/smartisanos/magicflow/h/j;->n:J

    cmp-long v0, v6, v2

    const/4 v8, 0x1

    const-wide/32 v9, 0x5265c00

    if-nez v0, :cond_1

    .line 4
    iget-wide v6, p0, Lcom/smartisanos/magicflow/h/j;->o:J

    sub-long/2addr v6, v4

    cmp-long v0, v6, v9

    if-lez v0, :cond_2

    return v8

    :cond_1
    sub-long/2addr v6, v4

    cmp-long v0, v6, v9

    if-lez v0, :cond_2

    return v8

    .line 5
    :cond_2
    iget-wide v6, p0, Lcom/smartisanos/magicflow/h/j;->u:J

    cmp-long v0, v6, v2

    if-nez v0, :cond_4

    const-wide/32 v6, 0xc042c0

    .line 6
    iget-wide v8, p0, Lcom/smartisanos/magicflow/h/j;->n:J

    cmp-long v0, v8, v2

    if-nez v0, :cond_3

    .line 7
    iget-wide v2, p0, Lcom/smartisanos/magicflow/h/j;->o:J

    add-long/2addr v6, v2

    goto :goto_0

    :cond_3
    add-long/2addr v6, v8

    :cond_4
    :goto_0
    const-wide/32 v2, 0x1b7740

    add-long/2addr v6, v2

    cmp-long v0, v6, v4

    if-gez v0, :cond_5

    return v1

    :cond_5
    const/4 v0, 0x0

    return v0
.end method

.method public b(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 8

    .line 8
    iget-wide v0, p0, Lcom/smartisanos/magicflow/h/j;->n:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const-string v1, ""

    if-nez v0, :cond_0

    iget-wide v4, p0, Lcom/smartisanos/magicflow/h/j;->o:J

    cmp-long v0, v4, v2

    if-nez v0, :cond_0

    return-object v1

    .line 9
    :cond_0
    iget-wide v4, p0, Lcom/smartisanos/magicflow/h/j;->n:J

    cmp-long v0, v4, v2

    if-eqz v0, :cond_1

    goto :goto_0

    .line 10
    :cond_1
    iget-wide v4, p0, Lcom/smartisanos/magicflow/h/j;->o:J

    :goto_0
    cmp-long v0, v4, v2

    if-lez v0, :cond_5

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 12
    invoke-static {p1, v4, v5}, Lcom/smartisanos/magicflow/o/n;->a(Landroid/content/res/Resources;J)[I

    move-result-object v0

    cmp-long v2, v2, v4

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-gez v2, :cond_3

    .line 13
    aget v2, v0, v5

    if-lez v2, :cond_2

    const v2, 0x7f0d00b3

    .line 14
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array v2, v3, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget v6, v0, v5

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget v0, v0, v4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v4

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    const v2, 0x7f0d00b4

    .line 15
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array v2, v3, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    aget v7, v0, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget v0, v0, v3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v4

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 16
    :cond_3
    aget v2, v0, v5

    if-lez v2, :cond_4

    const v2, 0x7f0d00b5

    .line 17
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array v2, v3, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget v6, v0, v5

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget v0, v0, v4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v4

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_4
    const v2, 0x7f0d00b6

    .line 18
    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array v2, v3, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    aget v7, v0, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget v0, v0, v3

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v4

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_5
    return-object v1
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
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/h/j;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "key_info"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object v1, p0, Lcom/smartisanos/magicflow/h/m;->e:Ljava/lang/String;

    const-string v2, "extra_data"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/h/j;->h()Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_1

    .line 9
    sget-boolean v0, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/smartisanos/magicflow/h/j;->x:Lcom/smartisanos/magicflow/LOG;

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

.method public c(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 14

    .line 11
    iget-wide v0, p0, Lcom/smartisanos/magicflow/h/j;->n:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-lez v4, :cond_0

    .line 12
    invoke-static {v0, v1}, Lcom/smartisanos/magicflow/o/n;->a(J)[I

    move-result-object v0

    .line 13
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 14
    aget v2, v0, v6

    aget v3, v0, v7

    sub-int/2addr v3, v7

    aget v4, v0, v5

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/Calendar;->set(III)V

    .line 15
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v9

    aget v11, v0, v6

    aget v12, v0, v7

    aget v13, v0, v5

    move-object v8, p1

    invoke-static/range {v8 .. v13}, Lcom/smartisanos/magicflow/o/n;->a(Landroid/content/res/Resources;JIII)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 16
    :cond_0
    iget-wide v0, p0, Lcom/smartisanos/magicflow/h/j;->o:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 17
    invoke-static {v0, v1}, Lcom/smartisanos/magicflow/o/n;->a(J)[I

    move-result-object v0

    .line 18
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 19
    aget v2, v0, v6

    aget v3, v0, v7

    sub-int/2addr v3, v7

    aget v4, v0, v5

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/Calendar;->set(III)V

    .line 20
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v9

    aget v11, v0, v6

    aget v12, v0, v7

    aget v13, v0, v5

    move-object v8, p1

    invoke-static/range {v8 .. v13}, Lcom/smartisanos/magicflow/o/n;->a(Landroid/content/res/Resources;JIII)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, "--"

    :goto_0
    return-object p1
.end method

.method public d(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 4

    const v0, 0x7f0701d3

    const/4 v1, 0x0

    if-eqz p1, :cond_8

    .line 11
    iget-object v2, p0, Lcom/smartisanos/magicflow/h/j;->i:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_0

    .line 12
    :cond_0
    iget-object v2, p0, Lcom/smartisanos/magicflow/h/j;->i:Ljava/lang/String;

    const v3, 0x7f0d016b

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const v0, 0x7f0701d2

    .line 13
    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    .line 14
    :cond_1
    iget-object v2, p0, Lcom/smartisanos/magicflow/h/j;->i:Ljava/lang/String;

    const v3, 0x7f0d016c

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const v0, 0x7f0701d4

    .line 15
    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    .line 16
    :cond_2
    iget-object v2, p0, Lcom/smartisanos/magicflow/h/j;->i:Ljava/lang/String;

    const v3, 0x7f0d0173

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    const v0, 0x7f0701d5

    .line 17
    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    .line 18
    :cond_3
    iget-object v2, p0, Lcom/smartisanos/magicflow/h/j;->i:Ljava/lang/String;

    const v3, 0x7f0d016d

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    const v0, 0x7f0701d6

    .line 19
    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    .line 20
    :cond_4
    iget-object v2, p0, Lcom/smartisanos/magicflow/h/j;->i:Ljava/lang/String;

    const v3, 0x7f0d0174

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    const v0, 0x7f0701d7

    .line 21
    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    .line 22
    :cond_5
    iget-object v2, p0, Lcom/smartisanos/magicflow/h/j;->i:Ljava/lang/String;

    const v3, 0x7f0d0170

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    const v0, 0x7f0701d8

    .line 23
    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    .line 24
    :cond_6
    iget-object v2, p0, Lcom/smartisanos/magicflow/h/j;->i:Ljava/lang/String;

    const v3, 0x7f0d0172

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    const v0, 0x7f0701d9

    .line 25
    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    .line 26
    :cond_7
    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    .line 27
    :cond_8
    :goto_0
    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public d()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/smartisanos/magicflow/h/j;->r:Ljava/lang/String;

    const-string v2, " "

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/smartisanos/magicflow/h/j;->s:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 7
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 8
    :cond_1
    iget-object v1, p0, Lcom/smartisanos/magicflow/h/j;->t:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 10
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/smartisanos/magicflow/h/j;->u:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 2
    invoke-static {v0, v1}, Lcom/smartisanos/magicflow/o/n;->a(J)[I

    move-result-object v0

    const/4 v1, 0x3

    .line 3
    aget v1, v0, v1

    const/4 v2, 0x4

    .line 4
    aget v0, v0, v2

    const-string v2, ":"

    .line 5
    invoke-static {v1, v0, v2}, Lcom/smartisanos/magicflow/o/n;->a(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "--:--"

    :goto_0
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    if-eqz p1, :cond_0

    .line 1
    instance-of v0, p1, Lcom/smartisanos/magicflow/h/j;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcom/smartisanos/magicflow/h/j;

    .line 3
    iget-object v0, p0, Lcom/smartisanos/magicflow/h/j;->i:Ljava/lang/String;

    iget-object v1, p1, Lcom/smartisanos/magicflow/h/j;->i:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/smartisanos/magicflow/o/n;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smartisanos/magicflow/h/j;->j:Ljava/lang/String;

    iget-object v1, p1, Lcom/smartisanos/magicflow/h/j;->j:Ljava/lang/String;

    .line 4
    invoke-static {v0, v1}, Lcom/smartisanos/magicflow/o/n;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smartisanos/magicflow/h/j;->k:Ljava/lang/String;

    iget-object v1, p1, Lcom/smartisanos/magicflow/h/j;->k:Ljava/lang/String;

    .line 5
    invoke-static {v0, v1}, Lcom/smartisanos/magicflow/o/n;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smartisanos/magicflow/h/j;->p:Ljava/lang/String;

    iget-object v1, p1, Lcom/smartisanos/magicflow/h/j;->p:Ljava/lang/String;

    .line 6
    invoke-static {v0, v1}, Lcom/smartisanos/magicflow/o/n;->c(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/smartisanos/magicflow/h/j;->n:J

    iget-wide v2, p1, Lcom/smartisanos/magicflow/h/j;->n:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public f()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/smartisanos/magicflow/h/j;->k:Ljava/lang/String;

    const-string v2, " "

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/smartisanos/magicflow/h/j;->l:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 7
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 8
    :cond_1
    iget-object v1, p0, Lcom/smartisanos/magicflow/h/j;->m:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 10
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 8

    .line 1
    iget-wide v0, p0, Lcom/smartisanos/magicflow/h/j;->n:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    const-string v5, ":"

    const/4 v6, 0x4

    const/4 v7, 0x3

    if-lez v4, :cond_0

    .line 2
    invoke-static {v0, v1}, Lcom/smartisanos/magicflow/o/n;->a(J)[I

    move-result-object v0

    .line 3
    aget v1, v0, v7

    .line 4
    aget v0, v0, v6

    .line 5
    invoke-static {v1, v0, v5}, Lcom/smartisanos/magicflow/o/n;->a(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 6
    :cond_0
    iget-wide v0, p0, Lcom/smartisanos/magicflow/h/j;->o:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 7
    invoke-static {v0, v1}, Lcom/smartisanos/magicflow/o/n;->a(J)[I

    move-result-object v0

    .line 8
    aget v1, v0, v7

    .line 9
    aget v0, v0, v6

    .line 10
    invoke-static {v1, v0, v5}, Lcom/smartisanos/magicflow/o/n;->a(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, "--:--"

    :goto_0
    return-object v0
.end method

.method public h()Lorg/json/JSONObject;
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

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

    const-string v1, "airline"

    .line 6
    iget-object v2, p0, Lcom/smartisanos/magicflow/h/j;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "flightNum"

    .line 7
    iget-object v2, p0, Lcom/smartisanos/magicflow/h/j;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "departCity"

    .line 8
    iget-object v2, p0, Lcom/smartisanos/magicflow/h/j;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "departAirport"

    .line 9
    iget-object v2, p0, Lcom/smartisanos/magicflow/h/j;->l:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "departTerminal"

    .line 10
    iget-object v2, p0, Lcom/smartisanos/magicflow/h/j;->m:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "departExactTime"

    .line 11
    iget-wide v2, p0, Lcom/smartisanos/magicflow/h/j;->n:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "departDate"

    .line 12
    iget-object v2, p0, Lcom/smartisanos/magicflow/h/j;->p:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "departTime"

    .line 13
    iget-object v2, p0, Lcom/smartisanos/magicflow/h/j;->q:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "arriveCity"

    .line 14
    iget-object v2, p0, Lcom/smartisanos/magicflow/h/j;->r:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "arriveAirport"

    .line 15
    iget-object v2, p0, Lcom/smartisanos/magicflow/h/j;->s:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "arriveTerminal"

    .line 16
    iget-object v2, p0, Lcom/smartisanos/magicflow/h/j;->t:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "arriveExactTime"

    .line 17
    iget-wide v2, p0, Lcom/smartisanos/magicflow/h/j;->u:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "arriveDate"

    .line 18
    iget-object v2, p0, Lcom/smartisanos/magicflow/h/j;->v:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "arriveTime"

    .line 19
    iget-object v2, p0, Lcom/smartisanos/magicflow/h/j;->w:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "extraData"

    .line 20
    iget-object v2, p0, Lcom/smartisanos/magicflow/h/m;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 21
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

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
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 2
    iget v1, p0, Lcom/smartisanos/magicflow/h/m;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ","

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 4
    iget-object v1, p0, Lcom/smartisanos/magicflow/h/j;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ", "

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 6
    iget-object v2, p0, Lcom/smartisanos/magicflow/h/j;->j:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, " from ["

    .line 7
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 8
    iget-object v2, p0, Lcom/smartisanos/magicflow/h/j;->k:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 10
    iget-object v2, p0, Lcom/smartisanos/magicflow/h/j;->l:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 12
    iget-object v2, p0, Lcom/smartisanos/magicflow/h/j;->m:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, " at ("

    .line 13
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 14
    iget-wide v3, p0, Lcom/smartisanos/magicflow/h/j;->n:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 16
    iget-object v3, p0, Lcom/smartisanos/magicflow/h/j;->p:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 18
    iget-object v3, p0, Lcom/smartisanos/magicflow/h/j;->q:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, ")] to ["

    .line 19
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 20
    iget-object v3, p0, Lcom/smartisanos/magicflow/h/j;->r:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 22
    iget-object v3, p0, Lcom/smartisanos/magicflow/h/j;->s:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 24
    iget-object v3, p0, Lcom/smartisanos/magicflow/h/j;->t:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 25
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 26
    iget-wide v2, p0, Lcom/smartisanos/magicflow/h/j;->u:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 28
    iget-object v2, p0, Lcom/smartisanos/magicflow/h/j;->v:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 30
    iget-object v1, p0, Lcom/smartisanos/magicflow/h/j;->w:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ")] type ["

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 32
    iget v1, p0, Lcom/smartisanos/magicflow/h/m;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "] parentKeyInfo ["

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 34
    iget-object v1, p0, Lcom/smartisanos/magicflow/h/m;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 35
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
