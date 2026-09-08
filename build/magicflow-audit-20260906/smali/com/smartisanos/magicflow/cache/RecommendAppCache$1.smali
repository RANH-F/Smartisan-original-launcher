.class final Lcom/smartisanos/magicflow/cache/RecommendAppCache$1;
.super Lcom/smartisanos/magicflow/o/d;
.source "RecommendAppCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/cache/RecommendAppCache;->syncWithServer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/magicflow/o/d;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    invoke-static {}, Lcom/smartisanos/magicflow/MagicFlowApplication;->a()Lcom/smartisanos/magicflow/MagicFlowApplication;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcom/smartisanos/magicflow/o/n;->p(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/smartisanos/magicflow/cache/RecommendAppCache;->access$002(J)J

    .line 4
    new-instance v1, Lcom/smartisanos/magicflow/i/f;

    invoke-direct {v1}, Lcom/smartisanos/magicflow/i/f;-><init>()V

    const-string v2, "https://api-app.smartisan.com/news/?r=launcher/ListForLauncher"

    .line 5
    invoke-virtual {v1, v2}, Lcom/smartisanos/magicflow/i/f;->a(Ljava/lang/String;)Lcom/smartisanos/magicflow/i/f;

    .line 6
    invoke-virtual {v1}, Lcom/smartisanos/magicflow/i/f;->a()Ljava/lang/String;

    move-result-object v1

    .line 7
    sget-boolean v2, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-eqz v2, :cond_1

    .line 8
    invoke-static {}, Lcom/smartisanos/magicflow/cache/RecommendAppCache;->access$100()Lcom/smartisanos/magicflow/LOG;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "syncWithServer url = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    :cond_1
    const/4 v2, 0x0

    .line 9
    invoke-static {v1, v2}, Lcom/smartisanos/magicflow/i/c;->b(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 10
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 11
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 12
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "code"

    const/4 v6, -0x1

    .line 13
    invoke-virtual {v5, v1, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "data"

    .line 14
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v5, "apps"

    .line 15
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 16
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 17
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v2, v6, :cond_4

    .line 18
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-static {v6}, Lcom/smartisanos/magicflow/h/a;->a(Lorg/json/JSONObject;)Lcom/smartisanos/magicflow/h/a;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 19
    invoke-virtual {v6}, Lcom/smartisanos/magicflow/h/a;->a()Z

    move-result v7

    if-nez v7, :cond_3

    .line 20
    iget-object v7, v6, Lcom/smartisanos/magicflow/h/a;->f:Ljava/lang/String;

    invoke-static {v0, v7}, Lcom/smartisanos/magicflow/o/n;->f(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, v6, Lcom/smartisanos/magicflow/h/a;->i:Z

    .line 21
    iget-boolean v7, v6, Lcom/smartisanos/magicflow/h/a;->i:Z

    if-eqz v7, :cond_2

    .line 22
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 23
    :cond_2
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    move v2, v5

    goto :goto_2

    :catch_0
    move-exception v0

    move v2, v5

    goto :goto_3

    .line 24
    :cond_5
    :goto_2
    :try_start_2
    invoke-static {v3, v4}, Lcom/smartisanos/magicflow/cache/RecommendAppCache;->access$200(Ljava/util/List;Ljava/util/List;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    .line 25
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_4
    if-nez v2, :cond_6

    const-wide/16 v0, 0x0

    .line 26
    invoke-static {v0, v1}, Lcom/smartisanos/magicflow/cache/RecommendAppCache;->access$002(J)J

    :cond_6
    return-void
.end method
