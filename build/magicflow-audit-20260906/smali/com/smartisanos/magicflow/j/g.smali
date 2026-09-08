.class public Lcom/smartisanos/magicflow/j/g;
.super Lcom/smartisanos/magicflow/j/e;
.source "SmartisanAdResponseParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/smartisanos/magicflow/j/e<",
        "Lcom/smartisanos/magicflow/m/c;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcom/smartisanos/magicflow/j/f;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/magicflow/j/e;-><init>()V

    .line 2
    new-instance v0, Lcom/smartisanos/magicflow/j/f;

    invoke-direct {v0}, Lcom/smartisanos/magicflow/j/f;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/magicflow/j/g;->a:Lcom/smartisanos/magicflow/j/f;

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lcom/smartisanos/magicflow/m/c;
    .locals 4

    .line 2
    new-instance v0, Lcom/smartisanos/magicflow/m/c;

    invoke-direct {v0}, Lcom/smartisanos/magicflow/m/c;-><init>()V

    const-string v1, "code"

    .line 3
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/smartisanos/magicflow/m/c;->a:I

    const-string v1, "errInfo"

    .line 4
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/smartisanos/magicflow/m/c;->c:Ljava/lang/String;

    const-string v1, "ad"

    .line 5
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6
    iget-object v2, p0, Lcom/smartisanos/magicflow/j/g;->a:Lcom/smartisanos/magicflow/j/f;

    iget-object v3, p0, Lcom/smartisanos/magicflow/j/g;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/smartisanos/magicflow/j/f;->b(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 8
    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    .line 9
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    .line 10
    iget-object v1, p0, Lcom/smartisanos/magicflow/j/g;->a:Lcom/smartisanos/magicflow/j/f;

    invoke-virtual {v1, p1}, Lcom/smartisanos/magicflow/j/f;->a(Lorg/json/JSONObject;)Lcom/smartisanos/magicflow/h/l;

    move-result-object p1

    .line 11
    iget-object v1, v0, Lcom/smartisanos/magicflow/m/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    :cond_0
    iget-object p1, v0, Lcom/smartisanos/magicflow/m/c;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic a(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/smartisanos/magicflow/j/g;->a(Lorg/json/JSONObject;)Lcom/smartisanos/magicflow/m/c;

    move-result-object p1

    return-object p1
.end method
