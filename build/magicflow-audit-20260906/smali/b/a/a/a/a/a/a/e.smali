.class public Lb/a/a/a/a/a/a/e;
.super Ljava/lang/Object;
.source "CombineUtil.java"


# static fields
.field private static final a:Ljava/lang/String; = "b.a.a.a.a.a.a.e"

.field public static b:Z = false


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;)I
    .locals 0

    .line 88
    invoke-static {p0}, Lb/a/a/a/a/a/a/b;->a(Landroid/content/Context;)Lb/a/a/a/a/a/a/b;

    move-result-object p0

    invoke-virtual {p0, p1}, Lb/a/a/a/a/a/a/b;->a(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static a(Landroid/content/Context;Ljava/util/List;Ljava/util/Map;)Ljava/util/List;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lb/a/a/a/a/a/a/d;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "flight_data_arr"

    const/4 v3, 0x0

    if-eqz p2, :cond_10

    if-eqz v1, :cond_10

    .line 1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_10

    .line 2
    :try_start_0
    invoke-static/range {p2 .. p2}, Lb/a/a/a/a/a/a/e;->a(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v4

    if-nez v4, :cond_0

    return-object v3

    .line 3
    :cond_0
    new-instance v5, Lb/a/a/a/a/a/a/c;

    invoke-direct {v5}, Lb/a/a/a/a/a/a/c;-><init>()V

    .line 4
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 5
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 6
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7, v6}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    move-object v7, v3

    :goto_0
    const-string v6, "train_data_arr"

    if-eqz v7, :cond_2

    .line 7
    :try_start_1
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-nez v8, :cond_3

    .line 8
    :cond_2
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 9
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 10
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7, v8}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 11
    :cond_3
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v9, "appeartime"

    const-string v10, "timeline"

    const-string v11, "deadline"

    const-string v12, "card_type"

    const-string v14, "title_num"

    const-string v15, "kwb_combine"

    if-eqz v7, :cond_a

    .line 12
    :try_start_2
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v16

    if-lez v16, :cond_a

    .line 13
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    const/4 v2, 0x0

    .line 15
    :goto_1
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v2, v6, :cond_f

    .line 16
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iput-object v6, v5, Lb/a/a/a/a/a/a/c;->b:Ljava/lang/String;

    .line 17
    new-instance v6, Lorg/json/JSONObject;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v7, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v6, v3}, Lb/a/a/a/a/a/a/e;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    const-string v3, "111111111"

    .line 19
    invoke-static {v15, v3}, Lb/a/a/a/a/a/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "t_depart"

    .line 20
    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v13, "num_flight"

    .line 21
    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v17, v7

    const-string v7, "num_train"

    .line 22
    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 23
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "d_depart"

    .line 24
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    :goto_2
    move-object v3, v9

    move-object v7, v10

    goto/16 :goto_6

    .line 25
    :cond_4
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 26
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_2

    :cond_5
    const-string v3, "222222222"

    .line 27
    invoke-static {v15, v3}, Lb/a/a/a/a/a/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    invoke-virtual {v6, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 29
    invoke-static {v3}, Lb/a/a/a/a/a/a/b;->d(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_6

    const/4 v7, 0x5

    const/4 v13, 0x0

    .line 30
    invoke-virtual {v3, v13, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v5, Lb/a/a/a/a/a/a/c;->g:Ljava/lang/String;

    .line 31
    :cond_6
    invoke-virtual {v6, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 32
    invoke-virtual {v6, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 33
    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 34
    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 35
    iput-object v3, v5, Lb/a/a/a/a/a/a/c;->c:Ljava/lang/String;

    .line 36
    invoke-static {v7}, Lb/a/a/a/a/a/a/b;->d(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    move-object v3, v9

    move-object v7, v10

    const-wide/16 v9, 0x0

    goto :goto_3

    .line 37
    :cond_7
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v19

    move-object v3, v9

    move-object v7, v10

    move-wide/from16 v9, v19

    :goto_3
    iput-wide v9, v5, Lb/a/a/a/a/a/a/c;->i:J

    .line 38
    invoke-static {v13}, Lb/a/a/a/a/a/a/b;->d(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    const-wide/16 v9, 0x0

    goto :goto_4

    .line 39
    :cond_8
    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    :goto_4
    iput-wide v9, v5, Lb/a/a/a/a/a/a/c;->j:J

    .line 40
    invoke-static/range {v18 .. v18}, Lb/a/a/a/a/a/a/b;->d(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9

    iget-wide v9, v5, Lb/a/a/a/a/a/a/c;->e:J

    goto :goto_5

    .line 41
    :cond_9
    invoke-static/range {v18 .. v18}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v9

    :goto_5
    iput-wide v9, v5, Lb/a/a/a/a/a/a/c;->k:J

    .line 42
    iput-object v6, v5, Lb/a/a/a/a/a/a/c;->h:Lorg/json/JSONObject;

    const-string v9, "combineCard111111111"

    .line 43
    invoke-static {v15, v9}, Lb/a/a/a/a/a/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-static {v0, v8, v5, v6}, Lb/a/a/a/a/a/a/e;->a(Landroid/content/Context;Ljava/util/List;Lb/a/a/a/a/a/a/c;Lorg/json/JSONObject;)V

    :goto_6
    add-int/lit8 v2, v2, 0x1

    move-object v9, v3

    move-object v10, v7

    move-object/from16 v7, v17

    goto/16 :goto_1

    :cond_a
    move-object v3, v9

    move-object v7, v10

    .line 45
    invoke-virtual {v4, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 46
    invoke-static {v2}, Lb/a/a/a/a/a/a/b;->d(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_b

    const/4 v6, 0x5

    const/4 v9, 0x0

    .line 47
    invoke-virtual {v2, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v5, Lb/a/a/a/a/a/a/c;->g:Ljava/lang/String;

    goto :goto_7

    :cond_b
    const/4 v9, 0x0

    .line 48
    :goto_7
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v5, Lb/a/a/a/a/a/a/c;->b:Ljava/lang/String;

    .line 49
    invoke-virtual {v4, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 50
    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 51
    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 52
    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 53
    iput-object v1, v5, Lb/a/a/a/a/a/a/c;->c:Ljava/lang/String;

    .line 54
    invoke-static {v2}, Lb/a/a/a/a/a/a/b;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    const-wide/16 v1, 0x0

    goto :goto_8

    .line 55
    :cond_c
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    :goto_8
    iput-wide v1, v5, Lb/a/a/a/a/a/a/c;->i:J

    .line 56
    invoke-static {v6}, Lb/a/a/a/a/a/a/b;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    const-wide/16 v1, 0x0

    goto :goto_9

    .line 57
    :cond_d
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    :goto_9
    iput-wide v1, v5, Lb/a/a/a/a/a/a/c;->j:J

    .line 58
    invoke-static {v3}, Lb/a/a/a/a/a/a/b;->d(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    iget-wide v1, v5, Lb/a/a/a/a/a/a/c;->e:J

    goto :goto_a

    .line 59
    :cond_e
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    :goto_a
    iput-wide v1, v5, Lb/a/a/a/a/a/a/c;->k:J

    .line 60
    iput-object v4, v5, Lb/a/a/a/a/a/a/c;->h:Lorg/json/JSONObject;

    const-string v1, "combineCard222"

    .line 61
    invoke-static {v15, v1}, Lb/a/a/a/a/a/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-static {v0, v8, v5, v4}, Lb/a/a/a/a/a/a/e;->a(Landroid/content/Context;Ljava/util/List;Lb/a/a/a/a/a/a/c;Lorg/json/JSONObject;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_f
    return-object v8

    :catch_0
    move-exception v0

    .line 63
    sget-object v1, Lb/a/a/a/a/a/a/e;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "combine error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lb/a/a/a/a/a/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_b

    :cond_10
    move-object v1, v3

    :goto_b
    return-object v1
.end method

.method public static a(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p0, :cond_0

    .line 82
    :try_start_0
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 83
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 84
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 85
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 86
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 87
    sget-object v1, Lb/a/a/a/a/a/a/e;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parseJSON2Map: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lb/a/a/a/a/a/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method private static a(Ljava/util/Map;)Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .line 76
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 77
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    .line 78
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 79
    :try_start_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 80
    sget-object v0, Lb/a/a/a/a/a/a/e;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeMapToJson: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lb/a/a/a/a/a/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    return-object v0
.end method

.method private static a(Landroid/content/Context;Ljava/util/List;Lb/a/a/a/a/a/a/c;Lorg/json/JSONObject;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lb/a/a/a/a/a/a/d;",
            ">;",
            "Lb/a/a/a/a/a/a/c;",
            "Lorg/json/JSONObject;",
            ")V"
        }
    .end annotation

    .line 64
    invoke-static {p0}, Lb/a/a/a/a/a/a/b;->a(Landroid/content/Context;)Lb/a/a/a/a/a/a/b;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Lb/a/a/a/a/a/a/b;->a(Lb/a/a/a/a/a/a/c;Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 65
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p3

    if-nez p3, :cond_1

    .line 66
    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 67
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_2
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lb/a/a/a/a/a/a/d;

    .line 68
    invoke-virtual {v0}, Lb/a/a/a/a/a/a/d;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lb/a/a/a/a/a/a/d;->b()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    invoke-virtual {v0}, Lb/a/a/a/a/a/a/d;->b()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 69
    :cond_3
    iget-object v1, p2, Lb/a/a/a/a/a/a/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lb/a/a/a/a/a/a/d;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 70
    :cond_4
    invoke-interface {p1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private static a(Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .locals 3

    if-eqz p0, :cond_0

    .line 71
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 72
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 73
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 74
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 75
    sget-object p1, Lb/a/a/a/a/a/a/e;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JSONCombine: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lb/a/a/a/a/a/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
