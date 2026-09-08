.class public abstract Lcom/bytedance/tea/crash/i/a/c;
.super Ljava/lang/Object;
.source "BaseAssembly.java"


# instance fields
.field protected a:Lcom/bytedance/tea/crash/f;

.field protected b:Landroid/content/Context;

.field protected c:Lcom/bytedance/tea/crash/h;

.field protected d:Lcom/bytedance/tea/crash/i/a/b;

.field protected e:Lcom/bytedance/tea/crash/i/a/d;


# direct methods
.method constructor <init>(Lcom/bytedance/tea/crash/f;Landroid/content/Context;Lcom/bytedance/tea/crash/i/a/b;Lcom/bytedance/tea/crash/i/a/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/bytedance/tea/crash/i/a/c;->a:Lcom/bytedance/tea/crash/f;

    .line 3
    iput-object p2, p0, Lcom/bytedance/tea/crash/i/a/c;->b:Landroid/content/Context;

    .line 4
    iput-object p3, p0, Lcom/bytedance/tea/crash/i/a/c;->d:Lcom/bytedance/tea/crash/i/a/b;

    .line 5
    iput-object p4, p0, Lcom/bytedance/tea/crash/i/a/c;->e:Lcom/bytedance/tea/crash/i/a/d;

    .line 6
    invoke-static {}, Lcom/bytedance/tea/crash/o;->a()Lcom/bytedance/tea/crash/i/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/tea/crash/i/b;->c()Lcom/bytedance/tea/crash/h;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/tea/crash/i/a/c;->c:Lcom/bytedance/tea/crash/h;

    return-void
.end method

.method private e(Lcom/bytedance/tea/crash/e/a;)V
    .locals 6

    .line 1
    invoke-static {}, Lcom/bytedance/tea/crash/o;->b()Lcom/bytedance/tea/crash/d;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/tea/crash/i/a/c;->a:Lcom/bytedance/tea/crash/f;

    invoke-virtual {v0, v1}, Lcom/bytedance/tea/crash/d;->a(Lcom/bytedance/tea/crash/f;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catchall_0
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/tea/crash/b;

    .line 4
    iget-object v3, p0, Lcom/bytedance/tea/crash/i/a/c;->a:Lcom/bytedance/tea/crash/f;

    invoke-interface {v2, v3}, Lcom/bytedance/tea/crash/b;->a(Lcom/bytedance/tea/crash/f;)Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5
    :try_start_0
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 6
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    const-string v0, "custom"

    .line 7
    invoke-virtual {p1, v0, v1}, Lcom/bytedance/tea/crash/e/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/tea/crash/e/a;)Lcom/bytedance/tea/crash/e/a;
    .locals 0

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Lcom/bytedance/tea/crash/e/a;

    invoke-direct {p1}, Lcom/bytedance/tea/crash/e/a;-><init>()V

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lcom/bytedance/tea/crash/i/a/c;->b(Lcom/bytedance/tea/crash/e/a;)V

    .line 3
    invoke-direct {p0, p1}, Lcom/bytedance/tea/crash/i/a/c;->e(Lcom/bytedance/tea/crash/e/a;)V

    return-object p1
.end method

.method protected a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method b(Lcom/bytedance/tea/crash/e/a;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/bytedance/tea/crash/i/a/c;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/tea/crash/i/a/c;->d:Lcom/bytedance/tea/crash/i/a/b;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1, v0}, Lcom/bytedance/tea/crash/e/a;->a(Lcom/bytedance/tea/crash/i/a/b;)Lcom/bytedance/tea/crash/e/a;

    .line 3
    :cond_0
    invoke-static {}, Lcom/bytedance/tea/crash/o;->f()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/tea/crash/e/a;->a(J)Lcom/bytedance/tea/crash/e/a;

    .line 4
    iget-object v0, p0, Lcom/bytedance/tea/crash/i/a/c;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/tea/crash/m/a;->a(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v2, "is_background"

    invoke-virtual {p1, v2, v0}, Lcom/bytedance/tea/crash/e/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "pid"

    invoke-virtual {p1, v2, v0}, Lcom/bytedance/tea/crash/e/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 6
    iget-object v0, p0, Lcom/bytedance/tea/crash/i/a/c;->e:Lcom/bytedance/tea/crash/i/a/d;

    invoke-virtual {v0}, Lcom/bytedance/tea/crash/i/a/d;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "battery"

    invoke-virtual {p1, v2, v0}, Lcom/bytedance/tea/crash/e/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 7
    iget-object v0, p0, Lcom/bytedance/tea/crash/i/a/c;->c:Lcom/bytedance/tea/crash/h;

    invoke-interface {v0}, Lcom/bytedance/tea/crash/h;->e()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/tea/crash/e/a;->a(Ljava/util/Map;)Lcom/bytedance/tea/crash/e/a;

    .line 8
    invoke-static {}, Lcom/bytedance/tea/crash/o;->i()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/tea/crash/e/a;->b(Ljava/util/Map;)Lcom/bytedance/tea/crash/e/a;

    .line 9
    invoke-static {}, Lcom/bytedance/tea/crash/o;->j()I

    move-result v0

    invoke-static {}, Lcom/bytedance/tea/crash/o;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/bytedance/tea/crash/e/a;->a(ILjava/lang/String;)Lcom/bytedance/tea/crash/e/a;

    .line 10
    iget-object v0, p0, Lcom/bytedance/tea/crash/i/a/c;->c:Lcom/bytedance/tea/crash/h;

    invoke-interface {v0}, Lcom/bytedance/tea/crash/h;->f()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/tea/crash/e/a;->a(Ljava/util/List;)Lcom/bytedance/tea/crash/e/a;

    .line 11
    iget-object v0, p0, Lcom/bytedance/tea/crash/i/a/c;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/tea/crash/m/n;->a(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/tea/crash/e/a;->a(Lorg/json/JSONObject;)Lcom/bytedance/tea/crash/e/a;

    .line 12
    invoke-virtual {p0}, Lcom/bytedance/tea/crash/i/a/c;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 13
    invoke-virtual {p0, p1}, Lcom/bytedance/tea/crash/i/a/c;->d(Lcom/bytedance/tea/crash/e/a;)V

    .line 14
    :cond_1
    iget-object v0, p0, Lcom/bytedance/tea/crash/i/a/c;->c:Lcom/bytedance/tea/crash/h;

    invoke-interface {v0}, Lcom/bytedance/tea/crash/h;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/tea/crash/e/a;->a(Ljava/lang/String;)Lcom/bytedance/tea/crash/e/a;

    .line 15
    invoke-static {}, Lcom/bytedance/tea/crash/o;->g()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v2, "business"

    .line 16
    invoke-virtual {p1, v2, v0}, Lcom/bytedance/tea/crash/e/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 17
    :cond_2
    invoke-static {}, Lcom/bytedance/tea/crash/o;->h()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 18
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "is_mp"

    invoke-virtual {p1, v1, v0}, Lcom/bytedance/tea/crash/e/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 19
    :cond_3
    invoke-static {}, Lcom/bytedance/tea/crash/o;->b()Lcom/bytedance/tea/crash/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/tea/crash/d;->a()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/tea/crash/e/a;->c(Ljava/util/Map;)Lcom/bytedance/tea/crash/e/a;

    .line 20
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "crash_uuid"

    invoke-virtual {p1, v1, v0}, Lcom/bytedance/tea/crash/e/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method protected b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method c(Lcom/bytedance/tea/crash/e/a;)V
    .locals 6

    const-string v0, "crash_update_version_code"

    const-string v1, "crash_version_code"

    .line 1
    invoke-static {}, Lcom/bytedance/tea/crash/o;->a()Lcom/bytedance/tea/crash/i/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/tea/crash/i/b;->a()Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    const-string v3, "app_version"

    .line 2
    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "crash_version"

    invoke-virtual {p1, v5, v4}, Lcom/bytedance/tea/crash/e/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    const-string v4, "version_name"

    .line 4
    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 5
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lcom/bytedance/tea/crash/e/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    const-string v3, "version_code"

    .line 6
    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 7
    :try_start_0
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v1, v4}, Lcom/bytedance/tea/crash/e/a;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 8
    :catch_0
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v1, v3}, Lcom/bytedance/tea/crash/e/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    :goto_0
    const-string v1, "update_version_code"

    .line 9
    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 10
    :try_start_1
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Lcom/bytedance/tea/crash/e/a;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 11
    :catch_1
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/tea/crash/e/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_4
    :goto_1
    return-void
.end method

.method protected d(Lcom/bytedance/tea/crash/e/a;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/bytedance/tea/crash/o;->e()Lcom/bytedance/tea/crash/i/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/tea/crash/i/c;->b()I

    move-result v0

    .line 2
    invoke-static {}, Lcom/bytedance/tea/crash/o;->e()Lcom/bytedance/tea/crash/i/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/tea/crash/i/c;->c()I

    move-result v1

    .line 3
    invoke-static {v0, v1}, Lcom/bytedance/tea/crash/i/f;->a(II)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/tea/crash/e/a;->b(Ljava/util/List;)Lcom/bytedance/tea/crash/e/a;

    return-void
.end method
