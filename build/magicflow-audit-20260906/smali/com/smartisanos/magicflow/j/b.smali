.class public Lcom/smartisanos/magicflow/j/b;
.super Lcom/smartisanos/magicflow/j/e;
.source "AllNewsParser.java"


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
    const-class v0, Lcom/smartisanos/magicflow/j/b;

    invoke-static {v0}, Lcom/smartisanos/magicflow/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/magicflow/LOG;

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lcom/smartisanos/magicflow/h/l;
    .locals 6

    const-string v0, "url"

    const/4 v1, 0x0

    .line 2
    :try_start_0
    sget-object v2, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    .line 3
    :cond_0
    new-instance v2, Lcom/smartisanos/magicflow/h/l;

    invoke-direct {v2}, Lcom/smartisanos/magicflow/h/l;-><init>()V

    const-string v3, "original_time"

    .line 4
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/smartisanos/magicflow/h/l;->w:J

    const-string v3, "source_en"

    .line 5
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/smartisanos/magicflow/h/l;->x:Ljava/lang/String;

    const-string v3, "source_id"

    .line 6
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/smartisanos/magicflow/h/l;->l:Ljava/lang/String;

    const-string v3, "title"

    .line 7
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/smartisanos/magicflow/h/l;->m:Ljava/lang/String;

    const-string v3, "abstract"

    .line 8
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/smartisanos/magicflow/h/l;->n:Ljava/lang/String;

    const-string v3, "publish_time"

    .line 9
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/smartisanos/magicflow/h/l;->y:J

    const-string v3, "source"

    .line 10
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/smartisanos/magicflow/h/l;->o:Ljava/lang/String;

    const-string v3, "source_name"

    .line 11
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/smartisanos/magicflow/h/l;->p:Ljava/lang/String;

    .line 12
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/smartisanos/magicflow/h/l;->r:Ljava/lang/String;

    const-string v3, "score"

    .line 13
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/smartisanos/magicflow/h/l;->s:J

    const-string v3, "has_video"

    .line 14
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v2, Lcom/smartisanos/magicflow/h/l;->z:Z

    const-string v3, "video_duration"

    .line 15
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/smartisanos/magicflow/h/l;->t:J

    .line 16
    sget-object v3, Lcom/smartisanos/magicflow/h/d$a;->a:Lcom/smartisanos/magicflow/h/d$a;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    iput v3, v2, Lcom/smartisanos/magicflow/h/l;->k:I

    const-string v3, "cover_image_list"

    .line 17
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 18
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-eqz v3, :cond_1

    .line 19
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 20
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 21
    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 22
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 23
    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const-string p1, ""

    .line 24
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object v3

    .line 25
    :cond_2
    iput-object v3, v2, Lcom/smartisanos/magicflow/h/l;->q:[Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception p1

    .line 26
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    return-object v1
.end method

.method public bridge synthetic a(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/smartisanos/magicflow/j/b;->a(Lorg/json/JSONObject;)Lcom/smartisanos/magicflow/h/l;

    move-result-object p1

    return-object p1
.end method
