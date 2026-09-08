.class public Lcom/smartisanos/magicflow/i/b;
.super Ljava/lang/Object;
.source "AdOkStack3.java"

# interfaces
.implements Lc/b/a/a/g/a;


# instance fields
.field private final a:Ld/v;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-static {}, Lcom/smartisanos/magicflow/i/c;->a()Ld/v;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/smartisanos/magicflow/i/b;-><init>(Ld/v;)V

    return-void
.end method

.method public constructor <init>(Ld/v;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/smartisanos/magicflow/i/b;->a:Ld/v;

    return-void
.end method

.method private a(Ld/a0;)Lc/b/a/a/d/b;
    .locals 9

    .line 14
    invoke-virtual {p1}, Ld/a0;->l()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 15
    invoke-virtual {p1}, Ld/a0;->j()Ld/b0;

    move-result-object v1

    invoke-virtual {v1}, Ld/b0;->k()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    .line 16
    invoke-virtual {p1}, Ld/a0;->n()Ld/r;

    move-result-object v2

    .line 17
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz v2, :cond_1

    const/4 v4, 0x0

    .line 18
    invoke-virtual {v2}, Ld/r;->b()I

    move-result v5

    :goto_0
    if-ge v4, v5, :cond_1

    .line 19
    invoke-virtual {v2, v4}, Ld/r;->a(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v4}, Ld/r;->b(I)Ljava/lang/String;

    move-result-object v7

    if-eqz v6, :cond_0

    .line 20
    new-instance v8, Lc/b/a/a/d/a;

    invoke-direct {v8, v6, v7}, Lc/b/a/a/d/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 21
    :cond_1
    new-instance v2, Lc/b/a/a/d/b;

    invoke-virtual {p1}, Ld/a0;->j()Ld/b0;

    move-result-object p1

    invoke-virtual {p1}, Ld/b0;->j()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {v2, v0, v3, v1, p1}, Lc/b/a/a/d/b;-><init>(ILjava/util/List;ILjava/io/InputStream;)V

    return-object v2

    .line 22
    :cond_2
    new-instance p1, Ljava/io/IOException;

    const-string v0, "response code error from okhttp."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static a(Lc/b/a/a/d/c;)Ld/z;
    .locals 2

    const/4 v0, 0x0

    .line 11
    :try_start_0
    invoke-virtual {p0}, Lc/b/a/a/d/c;->getBody()[B

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 12
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v0

    :goto_0
    if-nez v1, :cond_0

    return-object v0

    .line 13
    :cond_0
    invoke-virtual {p0}, Lc/b/a/a/d/c;->getBodyContentType()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ld/u;->a(Ljava/lang/String;)Ld/u;

    move-result-object p0

    invoke-static {p0, v1}, Ld/z;->a(Ld/u;[B)Ld/z;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ld/y$a;Lc/b/a/a/d/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ld/y$a;",
            "Lc/b/a/a/d/c<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lc/b/a/a/d/c;->getMethod()I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Unknown method type."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :pswitch_0
    invoke-static {p1}, Lcom/smartisanos/magicflow/i/b;->a(Lc/b/a/a/d/c;)Ld/z;

    move-result-object p1

    invoke-virtual {p0, p1}, Ld/y$a;->b(Ld/z;)Ld/y$a;

    goto :goto_0

    :pswitch_1
    const-string p1, "TRACE"

    .line 4
    invoke-virtual {p0, p1, v1}, Ld/y$a;->a(Ljava/lang/String;Ld/z;)Ld/y$a;

    goto :goto_0

    :pswitch_2
    const-string p1, "OPTIONS"

    .line 5
    invoke-virtual {p0, p1, v1}, Ld/y$a;->a(Ljava/lang/String;Ld/z;)Ld/y$a;

    goto :goto_0

    .line 6
    :pswitch_3
    invoke-virtual {p0}, Ld/y$a;->d()Ld/y$a;

    goto :goto_0

    .line 7
    :pswitch_4
    invoke-virtual {p0}, Ld/y$a;->b()Ld/y$a;

    goto :goto_0

    .line 8
    :pswitch_5
    invoke-static {p1}, Lcom/smartisanos/magicflow/i/b;->a(Lc/b/a/a/d/c;)Ld/z;

    move-result-object p1

    invoke-virtual {p0, p1}, Ld/y$a;->d(Ld/z;)Ld/y$a;

    goto :goto_0

    .line 9
    :pswitch_6
    invoke-static {p1}, Lcom/smartisanos/magicflow/i/b;->a(Lc/b/a/a/d/c;)Ld/z;

    move-result-object p1

    invoke-virtual {p0, p1}, Ld/y$a;->c(Ld/z;)Ld/y$a;

    goto :goto_0

    .line 10
    :pswitch_7
    invoke-virtual {p0}, Ld/y$a;->c()Ld/y$a;

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public performRequest(Lc/b/a/a/d/c;Ljava/util/Map;)Lc/b/a/a/d/b;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/a/d/c<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lc/b/a/a/d/b;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lc/b/a/a/d/c;->getTimeoutMs()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/smartisanos/magicflow/i/b;->a:Ld/v;

    invoke-virtual {v1}, Ld/v;->r()Ld/v$b;

    move-result-object v1

    int-to-long v2, v0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 3
    invoke-virtual {v1, v2, v3, v0}, Ld/v$b;->b(JLjava/util/concurrent/TimeUnit;)Ld/v$b;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 4
    invoke-virtual {v1, v2, v3, v0}, Ld/v$b;->a(JLjava/util/concurrent/TimeUnit;)Ld/v$b;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 5
    invoke-virtual {v1, v2, v3, v0}, Ld/v$b;->c(JLjava/util/concurrent/TimeUnit;)Ld/v$b;

    .line 6
    invoke-virtual {v1}, Ld/v$b;->a()Ld/v;

    move-result-object v0

    .line 7
    new-instance v1, Ld/y$a;

    invoke-direct {v1}, Ld/y$a;-><init>()V

    .line 8
    invoke-virtual {p1}, Lc/b/a/a/d/c;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ld/y$a;->b(Ljava/lang/String;)Ld/y$a;

    .line 9
    invoke-virtual {p1}, Lc/b/a/a/d/c;->getHeaders()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 10
    invoke-virtual {p1}, Lc/b/a/a/d/c;->getHeaders()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 11
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 12
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 13
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 14
    invoke-virtual {v1, v4, v3}, Ld/y$a;->a(Ljava/lang/String;Ljava/lang/String;)Ld/y$a;

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_3

    .line 15
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 16
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 17
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 18
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 19
    invoke-virtual {v1, v3, v2}, Ld/y$a;->a(Ljava/lang/String;Ljava/lang/String;)Ld/y$a;

    goto :goto_1

    .line 20
    :cond_3
    invoke-static {v1, p1}, Lcom/smartisanos/magicflow/i/b;->a(Ld/y$a;Lc/b/a/a/d/c;)V

    .line 21
    invoke-virtual {v1}, Ld/y$a;->a()Ld/y;

    move-result-object p1

    .line 22
    invoke-virtual {v0, p1}, Ld/v;->a(Ld/y;)Ld/e;

    move-result-object p1

    .line 23
    invoke-interface {p1}, Ld/e;->j()Ld/a0;

    move-result-object p1

    .line 24
    invoke-direct {p0, p1}, Lcom/smartisanos/magicflow/i/b;->a(Ld/a0;)Lc/b/a/a/d/b;

    move-result-object p1

    return-object p1
.end method
