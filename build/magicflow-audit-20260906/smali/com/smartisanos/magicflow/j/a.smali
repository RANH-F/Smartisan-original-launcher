.class public Lcom/smartisanos/magicflow/j/a;
.super Lcom/smartisanos/magicflow/j/e;
.source "AllNewsListResponseParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/smartisanos/magicflow/j/e<",
        "Lcom/smartisanos/magicflow/m/a;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcom/smartisanos/magicflow/j/b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/magicflow/j/e;-><init>()V

    .line 2
    new-instance v0, Lcom/smartisanos/magicflow/j/b;

    invoke-direct {v0}, Lcom/smartisanos/magicflow/j/b;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/magicflow/j/a;->a:Lcom/smartisanos/magicflow/j/b;

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lcom/smartisanos/magicflow/m/a;
    .locals 6

    .line 2
    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    new-instance v0, Lcom/smartisanos/magicflow/m/a;

    invoke-direct {v0}, Lcom/smartisanos/magicflow/m/a;-><init>()V

    const-string v1, "code"

    .line 4
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/smartisanos/magicflow/m/a;->a:I

    const-string v1, "errInfo"

    .line 5
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/smartisanos/magicflow/m/a;->c:Ljava/lang/String;

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "data"

    .line 7
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-nez p1, :cond_1

    move v4, v2

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v4

    :goto_1
    if-ge v3, v4, :cond_3

    .line 9
    iget-object v4, p0, Lcom/smartisanos/magicflow/j/a;->a:Lcom/smartisanos/magicflow/j/b;

    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/smartisanos/magicflow/j/b;->a(Lorg/json/JSONObject;)Lcom/smartisanos/magicflow/h/l;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 10
    invoke-virtual {v4}, Lcom/smartisanos/magicflow/h/l;->b()Z

    move-result v5

    if-nez v5, :cond_2

    .line 11
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 12
    :cond_3
    iput-object v1, v0, Lcom/smartisanos/magicflow/m/a;->b:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic a(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/smartisanos/magicflow/j/a;->a(Lorg/json/JSONObject;)Lcom/smartisanos/magicflow/m/a;

    move-result-object p1

    return-object p1
.end method
