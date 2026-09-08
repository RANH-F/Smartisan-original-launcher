.class public Lcom/smartisanos/magicflow/j/f;
.super Lcom/smartisanos/magicflow/j/e;
.source "SmartisanAdParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/smartisanos/magicflow/j/e<",
        "Lcom/smartisanos/magicflow/h/l;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/magicflow/j/e;-><init>()V

    .line 2
    const-class v0, Lcom/smartisanos/magicflow/j/f;

    invoke-static {v0}, Lcom/smartisanos/magicflow/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/magicflow/LOG;

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lcom/smartisanos/magicflow/h/l;
    .locals 11

    .line 2
    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 3
    :cond_0
    :try_start_0
    new-instance v0, Lcom/smartisanos/magicflow/h/l;

    invoke-direct {v0}, Lcom/smartisanos/magicflow/h/l;-><init>()V

    const-string v2, "ad"

    .line 4
    iput-object v2, v0, Lcom/smartisanos/magicflow/h/l;->x:Ljava/lang/String;

    const-string v2, "tid"

    .line 5
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "feed_smallimg"

    .line 6
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 7
    sget-object v2, Lcom/smartisanos/magicflow/h/d$a;->a:Lcom/smartisanos/magicflow/h/d$a;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    iput v2, v0, Lcom/smartisanos/magicflow/h/l;->k:I

    goto :goto_0

    :cond_1
    const-string v3, "feed_bigimg"

    .line 8
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 9
    sget-object v2, Lcom/smartisanos/magicflow/h/d$a;->c:Lcom/smartisanos/magicflow/h/d$a;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    iput v2, v0, Lcom/smartisanos/magicflow/h/l;->k:I

    goto :goto_0

    :cond_2
    const-string v3, "feed_groupimg"

    .line 10
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 11
    sget-object v2, Lcom/smartisanos/magicflow/h/d$a;->d:Lcom/smartisanos/magicflow/h/d$a;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    iput v2, v0, Lcom/smartisanos/magicflow/h/l;->k:I

    :cond_3
    :goto_0
    const-string v2, "creative"

    .line 12
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 13
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_9

    const/4 v2, 0x0

    .line 14
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;

    const-string v3, "media"

    .line 15
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "title"

    .line 16
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 17
    iput-object v4, v0, Lcom/smartisanos/magicflow/h/l;->m:Ljava/lang/String;

    const-string v4, "img_url"

    .line 18
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "img1_url"

    .line 19
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "img2_url"

    .line 20
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "img3_url"

    .line 21
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 22
    iget v8, v0, Lcom/smartisanos/magicflow/h/l;->k:I

    sget-object v9, Lcom/smartisanos/magicflow/h/d$a;->d:Lcom/smartisanos/magicflow/h/d$a;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    const/4 v10, 0x1

    if-ne v8, v9, :cond_4

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    aput-object v5, v4, v2

    aput-object v6, v4, v10

    const/4 v8, 0x2

    aput-object v7, v4, v8

    .line 23
    iput-object v4, v0, Lcom/smartisanos/magicflow/h/l;->q:[Ljava/lang/String;

    .line 24
    iget-object v4, v0, Lcom/smartisanos/magicflow/h/l;->q:[Ljava/lang/String;

    aput-object v5, v4, v2

    .line 25
    iget-object v4, v0, Lcom/smartisanos/magicflow/h/l;->q:[Ljava/lang/String;

    aput-object v6, v4, v10

    .line 26
    iget-object v4, v0, Lcom/smartisanos/magicflow/h/l;->q:[Ljava/lang/String;

    aput-object v7, v4, v8

    goto :goto_1

    :cond_4
    new-array v5, v10, [Ljava/lang/String;

    aput-object v4, v5, v2

    .line 27
    iput-object v5, v0, Lcom/smartisanos/magicflow/h/l;->q:[Ljava/lang/String;

    :goto_1
    const-string v4, "creative_type"

    .line 28
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    .line 29
    iput v4, v0, Lcom/smartisanos/magicflow/h/l;->b:I

    const-string v4, "click_url"

    .line 30
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 31
    iput-object v4, v0, Lcom/smartisanos/magicflow/h/l;->c:Ljava/lang/String;

    const-string v4, "download_url"

    .line 32
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 33
    iput-object v4, v0, Lcom/smartisanos/magicflow/h/l;->e:Ljava/lang/String;

    const-string v4, "package_name"

    .line 34
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 35
    iput-object v4, v0, Lcom/smartisanos/magicflow/h/l;->f:Ljava/lang/String;

    const-string v4, "app_name"

    .line 36
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 37
    iput-object v4, v0, Lcom/smartisanos/magicflow/h/l;->g:Ljava/lang/String;

    const-string v5, "description"

    .line 38
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "ext"

    .line 39
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 40
    iput-object v3, v0, Lcom/smartisanos/magicflow/h/l;->j:Ljava/lang/String;

    const-string v3, "impression"

    .line 41
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 42
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lez v6, :cond_5

    .line 43
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 44
    iput-object v3, v0, Lcom/smartisanos/magicflow/h/l;->i:Ljava/lang/String;

    :cond_5
    const-string v3, "click"

    .line 45
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 46
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lez v6, :cond_6

    .line 47
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 48
    iput-object v3, v0, Lcom/smartisanos/magicflow/h/l;->d:Ljava/lang/String;

    :cond_6
    const-string v3, "download"

    .line 49
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 50
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_7

    .line 51
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 52
    iput-object p1, v0, Lcom/smartisanos/magicflow/h/l;->h:Ljava/lang/String;

    .line 53
    :cond_7
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 54
    iput-object v5, v0, Lcom/smartisanos/magicflow/h/l;->o:Ljava/lang/String;

    goto :goto_2

    .line 55
    :cond_8
    iput-object v4, v0, Lcom/smartisanos/magicflow/h/l;->o:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_9
    :goto_2
    return-object v0

    :catch_0
    move-exception p1

    .line 56
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    return-object v1
.end method

.method public bridge synthetic a(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/smartisanos/magicflow/j/f;->a(Lorg/json/JSONObject;)Lcom/smartisanos/magicflow/h/l;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
