.class public Lcom/smartisanos/magicflow/j/d;
.super Lcom/smartisanos/magicflow/j/e;
.source "AllReaderParser.java"


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
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/magicflow/j/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lcom/smartisanos/magicflow/h/l;
    .locals 3

    .line 2
    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    new-instance v0, Lcom/smartisanos/magicflow/h/l;

    invoke-direct {v0}, Lcom/smartisanos/magicflow/h/l;-><init>()V

    const-string v1, "id"

    .line 4
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/smartisanos/magicflow/h/l;->l:Ljava/lang/String;

    const-string v1, "title"

    .line 5
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/smartisanos/magicflow/h/l;->m:Ljava/lang/String;

    const-string v1, "brief"

    .line 6
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/smartisanos/magicflow/h/l;->n:Ljava/lang/String;

    const-string v1, "origin_url"

    .line 7
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/smartisanos/magicflow/h/l;->r:Ljava/lang/String;

    const-string v1, "site_info"

    .line 8
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "name"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/smartisanos/magicflow/h/l;->o:Ljava/lang/String;

    const-string v1, "headpic"

    .line 9
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/smartisanos/magicflow/h/l;->C:Ljava/lang/String;

    .line 10
    iget-object p1, v0, Lcom/smartisanos/magicflow/h/l;->C:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/smartisanos/magicflow/j/d;->b(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/smartisanos/magicflow/h/l;->q:[Ljava/lang/String;

    .line 11
    iget-object p1, v0, Lcom/smartisanos/magicflow/h/l;->C:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 12
    sget-object p1, Lcom/smartisanos/magicflow/h/d$a;->b:Lcom/smartisanos/magicflow/h/d$a;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    iput p1, v0, Lcom/smartisanos/magicflow/h/l;->k:I

    goto :goto_0

    .line 13
    :cond_1
    sget-object p1, Lcom/smartisanos/magicflow/h/d$a;->a:Lcom/smartisanos/magicflow/h/d$a;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    iput p1, v0, Lcom/smartisanos/magicflow/h/l;->k:I

    :goto_0
    return-object v0
.end method

.method public bridge synthetic a(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/smartisanos/magicflow/j/d;->a(Lorg/json/JSONObject;)Lcom/smartisanos/magicflow/h/l;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
