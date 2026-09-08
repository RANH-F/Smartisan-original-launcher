.class public Lcom/ss/android/downloadlib/a$f;
.super Ljava/lang/Object;
.source "AdDeepLinkManager.java"


# static fields
.field private static c:Lcom/ss/android/downloadlib/a$f;


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lc/d/a/a/a/d/b;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ss/android/downloadlib/a$h/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ss/android/downloadlib/a$f;->a:Ljava/util/Map;

    return-void
.end method

.method public static a()Lcom/ss/android/downloadlib/a$f;
    .locals 2

    .line 1
    sget-object v0, Lcom/ss/android/downloadlib/a$f;->c:Lcom/ss/android/downloadlib/a$f;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/ss/android/downloadlib/a$f;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/ss/android/downloadlib/a$f;->c:Lcom/ss/android/downloadlib/a$f;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/ss/android/downloadlib/a$f;

    invoke-direct {v1}, Lcom/ss/android/downloadlib/a$f;-><init>()V

    sput-object v1, Lcom/ss/android/downloadlib/a$f;->c:Lcom/ss/android/downloadlib/a$f;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 6
    :cond_1
    :goto_0
    sget-object v0, Lcom/ss/android/downloadlib/a$f;->c:Lcom/ss/android/downloadlib/a$f;

    return-object v0
.end method

.method private a(Lc/d/a/a/a/d/b;)V
    .locals 1

    const-string v0, "deeplink_url_app"

    .line 25
    invoke-direct {p0, p1, v0}, Lcom/ss/android/downloadlib/a$f;->a(Lc/d/a/a/a/d/b;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lc/d/a/a/a/d/b;Ljava/lang/String;)V
    .locals 12

    if-nez p1, :cond_0

    return-void

    .line 38
    :cond_0
    invoke-virtual {p1}, Lc/d/a/a/a/d/b;->d()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/ss/android/downloadlib/e/d;->a(J)Lcom/ss/android/downloadad/a/c/a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 39
    invoke-virtual {v0}, Lcom/ss/android/downloadad/a/c/a;->h()Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    move-object v9, v0

    const/4 v3, 0x1

    .line 40
    invoke-virtual {p1}, Lc/d/a/a/a/d/b;->d()J

    move-result-wide v4

    invoke-virtual {p1}, Lc/d/a/a/a/d/b;->f()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lc/d/a/a/a/d/b;->e()J

    move-result-wide v7

    const/4 v10, 0x2

    const/4 v11, 0x0

    const-string v1, "embeded_ad"

    move-object v2, p2

    .line 41
    invoke-static/range {v1 .. v11}, Lcom/ss/android/downloadlib/a$p;->a(Ljava/lang/String;Ljava/lang/String;ZJLjava/lang/String;JLorg/json/JSONObject;IZ)V

    return-void
.end method

.method private a(Lc/d/a/a/a/d/b;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 11

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x1

    .line 42
    invoke-virtual {p1}, Lc/d/a/a/a/d/b;->d()J

    move-result-wide v3

    invoke-virtual {p1}, Lc/d/a/a/a/d/b;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lc/d/a/a/a/d/b;->e()J

    move-result-wide v6

    const/4 v9, 0x2

    const/4 v10, 0x0

    const-string v0, "embeded_ad"

    move-object v1, p2

    move-object v8, p3

    .line 43
    invoke-static/range {v0 .. v10}, Lcom/ss/android/downloadlib/a$p;->a(Ljava/lang/String;Ljava/lang/String;ZJLjava/lang/String;JLorg/json/JSONObject;IZ)V

    return-void
.end method

.method private a(Lcom/ss/android/downloadlib/a$h/a;)V
    .locals 12

    .line 55
    iget-wide v0, p1, Lcom/ss/android/downloadlib/a$h/a;->b:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 56
    invoke-static {v0, v1}, Lcom/ss/android/downloadlib/e/d;->a(J)Lcom/ss/android/downloadad/a/c/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {v0}, Lcom/ss/android/downloadad/a/c/a;->h()Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :goto_0
    move-object v9, v0

    :try_start_0
    const-string v0, "scene"

    const/4 v1, 0x4

    .line 58
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 59
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 60
    :goto_1
    invoke-static {}, Lcom/ss/android/downloadlib/a$q;->m()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    iget-wide v4, p1, Lcom/ss/android/downloadlib/a$h/a;->b:J

    iget-object v6, p1, Lcom/ss/android/downloadlib/a$h/a;->f:Ljava/lang/String;

    iget-wide v7, p1, Lcom/ss/android/downloadlib/a$h/a;->c:J

    const/4 v10, 0x2

    const/4 v11, 0x0

    const-string v2, "install_finish"

    invoke-static/range {v1 .. v11}, Lcom/ss/android/downloadlib/a$p;->a(Ljava/lang/String;Ljava/lang/String;ZJLjava/lang/String;JLorg/json/JSONObject;IZ)V

    :cond_1
    return-void
.end method

.method private b(Lc/d/a/a/a/d/b;)V
    .locals 1

    const-string v0, "deeplink_open_success"

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/ss/android/downloadlib/a$f;->a(Lc/d/a/a/a/d/b;Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/android/downloadlib/a$f;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private c(Ljava/lang/String;)Lc/d/a/a/a/d/b;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/android/downloadlib/a$f;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/d/a/a/a/d/b;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/ss/android/downloadlib/a$f;->a:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method private c(Lc/d/a/a/a/d/b;)V
    .locals 1

    const-string v0, "deeplink_open_fail"

    .line 3
    invoke-direct {p0, p1, v0}, Lcom/ss/android/downloadlib/a$f;->a(Lc/d/a/a/a/d/b;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 14

    move-object v0, p0

    .line 44
    invoke-static/range {p7 .. p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 45
    :cond_0
    iget-object v1, v0, Lcom/ss/android/downloadlib/a$f;->b:Ljava/util/Map;

    if-nez v1, :cond_1

    .line 46
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/ss/android/downloadlib/a$f;->b:Ljava/util/Map;

    .line 47
    :cond_1
    iget-object v1, v0, Lcom/ss/android/downloadlib/a$f;->b:Ljava/util/Map;

    new-instance v13, Lcom/ss/android/downloadlib/a$h/a;

    const-wide/16 v3, 0x0

    const-string v12, ""

    move-object v2, v13

    move-wide v5, p1

    move-wide/from16 v7, p3

    move-object/from16 v9, p7

    move-object/from16 v10, p6

    move-object/from16 v11, p5

    invoke-direct/range {v2 .. v12}, Lcom/ss/android/downloadlib/a$h/a;-><init>(JJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v2, p7

    invoke-interface {v1, v2, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 9

    .line 10
    invoke-direct {p0, p2}, Lcom/ss/android/downloadlib/a$f;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11
    invoke-direct {p0, p2}, Lcom/ss/android/downloadlib/a$f;->c(Ljava/lang/String;)Lc/d/a/a/a/d/b;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 12
    :cond_0
    :try_start_0
    invoke-direct {p0, v0}, Lcom/ss/android/downloadlib/a$f;->a(Lc/d/a/a/a/d/b;)V

    .line 13
    invoke-virtual {v0}, Lc/d/a/a/a/d/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, p2}, Lcom/ss/android/downloadlib/e/h;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/ss/android/downloadlib/a$g$c; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x0

    throw p1

    :catch_0
    move-exception p2

    .line 14
    invoke-virtual {p2}, Lcom/ss/android/downloadlib/a$g$c;->a()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    .line 15
    invoke-direct {p0, v0}, Lcom/ss/android/downloadlib/a$f;->c(Lc/d/a/a/a/d/b;)V

    goto :goto_0

    .line 16
    :cond_1
    invoke-direct {p0, v0}, Lcom/ss/android/downloadlib/a$f;->b(Lc/d/a/a/a/d/b;)V

    .line 17
    invoke-static {}, Lcom/ss/android/downloadlib/a$q;->c()Lc/d/a/a/a/a/b;

    move-result-object v3

    new-instance v1, Lcom/ss/android/downloadad/a/a/c$b;

    invoke-direct {v1}, Lcom/ss/android/downloadad/a/a/c$b;-><init>()V

    .line 18
    invoke-virtual {v0}, Lc/d/a/a/a/d/b;->d()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/ss/android/downloadad/a/a/c$b;->a(J)Lcom/ss/android/downloadad/a/a/c$b;

    .line 19
    invoke-virtual {v0}, Lc/d/a/a/a/d/b;->e()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/ss/android/downloadad/a/a/c$b;->b(J)Lcom/ss/android/downloadad/a/a/c$b;

    new-instance v2, Lc/d/a/a/a/d/b;

    .line 20
    invoke-virtual {v0}, Lc/d/a/a/a/d/b;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lc/d/a/a/a/d/b;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lc/d/a/a/a/d/b;->c()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v4, v5, v6}, Lc/d/a/a/a/d/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/ss/android/downloadad/a/a/c$b;->a(Lc/d/a/a/a/d/b;)Lcom/ss/android/downloadad/a/a/c$b;

    .line 21
    invoke-virtual {v0}, Lc/d/a/a/a/d/b;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ss/android/downloadad/a/a/c$b;->a(Ljava/lang/String;)Lcom/ss/android/downloadad/a/a/c$b;

    .line 22
    invoke-virtual {v1}, Lcom/ss/android/downloadad/a/a/c$b;->a()Lcom/ss/android/downloadad/a/a/c;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 23
    invoke-virtual {p2}, Lcom/ss/android/downloadlib/a$g$c;->c()Ljava/lang/String;

    move-result-object v8

    move-object v4, p1

    .line 24
    invoke-interface/range {v3 .. v8}, Lc/d/a/a/a/a/b;->a(Landroid/content/Context;Lc/d/a/a/a/c/d;Lc/d/a/a/a/c/b;Lc/d/a/a/a/c/c;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/ss/android/downloadlib/a$f;->b:Ljava/util/Map;

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/ss/android/downloadlib/a$f;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    iget-object v0, p0, Lcom/ss/android/downloadlib/a$f;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/downloadlib/a$h/a;

    .line 51
    invoke-virtual {v0}, Lcom/ss/android/downloadlib/a$h/a;->a()V

    .line 52
    invoke-static {}, Lcom/ss/android/downloadlib/a$e/a;->a()Lcom/ss/android/downloadlib/a$e/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ss/android/downloadlib/a$e/a;->a(Lcom/ss/android/downloadlib/a$h/a;)V

    .line 53
    invoke-direct {p0, v0}, Lcom/ss/android/downloadlib/a$f;->a(Lcom/ss/android/downloadlib/a$h/a;)V

    .line 54
    iget-object v0, p0, Lcom/ss/android/downloadlib/a$f;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;J)V
    .locals 5

    .line 26
    :try_start_0
    iget-object v0, p0, Lcom/ss/android/downloadlib/a$f;->a:Ljava/util/Map;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ss/android/downloadlib/a$f;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_2

    invoke-direct {p0, p1}, Lcom/ss/android/downloadlib/a$f;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/ss/android/downloadlib/a$f;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 28
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 29
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 30
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 31
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lc/d/a/a/a/d/b;

    if-eqz v1, :cond_1

    .line 32
    invoke-virtual {v1}, Lc/d/a/a/a/d/b;->d()J

    move-result-wide v3

    cmp-long v3, p2, v3

    if-nez v3, :cond_1

    .line 33
    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 34
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    .line 35
    invoke-virtual {p2, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "deeplink_open_fail_for_packagename_no_match"

    .line 36
    invoke-direct {p0, v1, p1, p2}, Lcom/ss/android/downloadlib/a$f;->a(Lc/d/a/a/a/d/b;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception p1

    .line 37
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_1
    return-void
.end method

.method public a(Ljava/lang/String;Lc/d/a/a/a/d/b;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 7
    invoke-virtual {p2}, Lc/d/a/a/a/d/b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/ss/android/downloadlib/a$f;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 9
    :cond_0
    iget-object p2, p0, Lcom/ss/android/downloadlib/a$f;->a:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method
