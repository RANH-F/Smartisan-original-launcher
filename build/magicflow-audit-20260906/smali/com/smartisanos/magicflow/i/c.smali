.class public Lcom/smartisanos/magicflow/i/c;
.super Ljava/lang/Object;
.source "HttpUtils.java"


# static fields
.field private static a:Lcom/smartisanos/magicflow/LOG;

.field private static b:Ld/v;

.field private static final c:Ld/u;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/smartisanos/magicflow/i/c;

    invoke-static {v0}, Lcom/smartisanos/magicflow/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/magicflow/LOG;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/magicflow/i/c;->a:Lcom/smartisanos/magicflow/LOG;

    const-string v0, "application/json; charset=utf-8"

    .line 2
    invoke-static {v0}, Ld/u;->a(Ljava/lang/String;)Ld/u;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/magicflow/i/c;->c:Ld/u;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ld/v;
    .locals 4

    .line 22
    sget-object v0, Lcom/smartisanos/magicflow/i/c;->b:Ld/v;

    if-nez v0, :cond_0

    .line 23
    new-instance v0, Ld/v$b;

    invoke-direct {v0}, Ld/v$b;-><init>()V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1388

    .line 24
    invoke-virtual {v0, v2, v3, v1}, Ld/v$b;->a(JLjava/util/concurrent/TimeUnit;)Ld/v$b;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 25
    invoke-virtual {v0, v2, v3, v1}, Ld/v$b;->b(JLjava/util/concurrent/TimeUnit;)Ld/v$b;

    .line 26
    invoke-virtual {v0}, Ld/v$b;->a()Ld/v;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/magicflow/i/c;->b:Ld/v;

    .line 27
    :cond_0
    sget-object v0, Lcom/smartisanos/magicflow/i/c;->b:Ld/v;

    return-object v0
.end method

.method protected static a(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Ld/y;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ld/y;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 8
    sget-object v0, Lcom/smartisanos/magicflow/i/c;->c:Ld/u;

    invoke-static {v0, p1}, Ld/z;->a(Ld/u;Ljava/lang/String;)Ld/z;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 9
    :goto_0
    new-instance v0, Ld/y$a;

    invoke-direct {v0}, Ld/y$a;-><init>()V

    invoke-virtual {v0, p0}, Ld/y$a;->b(Ljava/lang/String;)Ld/y$a;

    if-eqz p1, :cond_1

    .line 10
    invoke-virtual {v0, p1}, Ld/y$a;->c(Ld/z;)Ld/y$a;

    :cond_1
    if-eqz p2, :cond_2

    .line 11
    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 12
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Ld/y$a;->a(Ljava/lang/String;Ljava/lang/String;)Ld/y$a;

    goto :goto_1

    .line 13
    :cond_2
    invoke-virtual {v0}, Ld/y$a;->a()Ld/y;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/util/HashMap;)Ld/y;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ld/y;"
        }
    .end annotation

    .line 2
    new-instance v0, Ld/y$a;

    invoke-direct {v0}, Ld/y$a;-><init>()V

    .line 3
    invoke-virtual {v0, p0}, Ld/y$a;->b(Ljava/lang/String;)Ld/y$a;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p0

    if-lez p0, :cond_0

    .line 5
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 6
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ld/y$a;->a(Ljava/lang/String;Ljava/lang/String;)Ld/y$a;

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0}, Ld/y$a;->c()Ld/y$a;

    invoke-virtual {v0}, Ld/y$a;->a()Ld/y;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object p1, v0

    .line 1
    :cond_0
    invoke-static {p0, p1, v0}, Lcom/smartisanos/magicflow/i/c;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/util/Map;)Lorg/json/JSONObject;
    .locals 5
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

    .line 14
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 15
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 16
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v2, 0x0

    .line 17
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 18
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 19
    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 20
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    :catch_0
    move-exception p0

    .line 21
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "doPostConnect url="

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1
    :try_start_0
    invoke-static {v1}, Lcom/smartisanos/magicflow/o/k;->a(Z)V

    .line 2
    invoke-static {}, Lcom/smartisanos/magicflow/i/c;->a()Ld/v;

    move-result-object v1

    .line 3
    invoke-static {p0, p1, p2}, Lcom/smartisanos/magicflow/i/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)Ld/y;

    move-result-object p2

    .line 4
    invoke-virtual {v1, p2}, Ld/v;->a(Ld/y;)Ld/e;

    move-result-object p2

    invoke-interface {p2}, Ld/e;->j()Ld/a0;

    move-result-object p2

    if-nez p2, :cond_0

    return-object v2

    .line 5
    :cond_0
    invoke-virtual {p2}, Ld/a0;->o()Z

    move-result v1

    if-nez v1, :cond_1

    .line 6
    sget-object v1, Lcom/smartisanos/magicflow/i/c;->a:Lcom/smartisanos/magicflow/LOG;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " bodyData="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " err="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ld/a0;->j()Ld/b0;

    move-result-object p1

    invoke-virtual {p1}, Ld/b0;->n()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    .line 7
    :cond_1
    invoke-virtual {p2}, Ld/a0;->j()Ld/b0;

    move-result-object p1

    invoke-virtual {p1}, Ld/b0;->n()Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-virtual {p2}, Ld/a0;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 10
    sget-object p2, Lcom/smartisanos/magicflow/i/c;->a:Lcom/smartisanos/magicflow/LOG;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ",err="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    return-object v2
.end method

.method public static b(Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "getStringFromUrl url="

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 11
    :try_start_0
    invoke-static {v1}, Lcom/smartisanos/magicflow/o/k;->a(Z)V

    .line 12
    invoke-static {}, Lcom/smartisanos/magicflow/i/c;->a()Ld/v;

    move-result-object v1

    .line 13
    invoke-static {p0, p1}, Lcom/smartisanos/magicflow/i/c;->a(Ljava/lang/String;Ljava/util/HashMap;)Ld/y;

    move-result-object p1

    .line 14
    invoke-virtual {v1, p1}, Ld/v;->a(Ld/y;)Ld/e;

    move-result-object p1

    invoke-interface {p1}, Ld/e;->j()Ld/a0;

    move-result-object p1

    if-nez p1, :cond_0

    return-object v2

    .line 15
    :cond_0
    invoke-virtual {p1}, Ld/a0;->o()Z

    move-result v1

    if-nez v1, :cond_1

    .line 16
    sget-object v1, Lcom/smartisanos/magicflow/i/c;->a:Lcom/smartisanos/magicflow/LOG;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " err="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ld/a0;->j()Ld/b0;

    move-result-object v4

    invoke-virtual {v4}, Ld/b0;->n()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    .line 17
    :cond_1
    invoke-virtual {p1}, Ld/a0;->j()Ld/b0;

    move-result-object v1

    invoke-virtual {v1}, Ld/b0;->n()Ljava/lang/String;

    move-result-object v1

    .line 18
    invoke-virtual {p1}, Ld/a0;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    .line 19
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 20
    sget-object v1, Lcom/smartisanos/magicflow/i/c;->a:Lcom/smartisanos/magicflow/LOG;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ",err="

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    return-object v2
.end method
