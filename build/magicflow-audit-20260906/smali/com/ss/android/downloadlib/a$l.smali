.class public Lcom/ss/android/downloadlib/a$l;
.super Ljava/lang/Object;
.source "AdQuickAppManager.java"

# interfaces
.implements Lcom/ss/android/downloadlib/e/i$a;


# static fields
.field private static d:Ljava/lang/String; = "a$l"

.field private static volatile e:Lcom/ss/android/downloadlib/a$l;


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Landroid/util/Pair<",
            "Lc/d/a/a/a/c/d;",
            "Lc/d/a/a/a/c/c;",
            ">;>;"
        }
    .end annotation
.end field

.field private b:Lcom/ss/android/downloadlib/e/i;

.field private c:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/ss/android/downloadlib/a$l;->a:Ljava/util/Map;

    .line 3
    iput-object v0, p0, Lcom/ss/android/downloadlib/a$l;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 4
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/ss/android/downloadlib/a$l;->a:Ljava/util/Map;

    .line 5
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/ss/android/downloadlib/a$l;->c:Ljava/util/concurrent/ConcurrentHashMap;

    .line 6
    new-instance v0, Lcom/ss/android/downloadlib/e/i;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/ss/android/downloadlib/e/i;-><init>(Landroid/os/Looper;Lcom/ss/android/downloadlib/e/i$a;)V

    iput-object v0, p0, Lcom/ss/android/downloadlib/a$l;->b:Lcom/ss/android/downloadlib/e/i;

    return-void
.end method

.method public static a()Lcom/ss/android/downloadlib/a$l;
    .locals 2

    .line 1
    sget-object v0, Lcom/ss/android/downloadlib/a$l;->e:Lcom/ss/android/downloadlib/a$l;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/ss/android/downloadlib/a$l;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/ss/android/downloadlib/a$l;->e:Lcom/ss/android/downloadlib/a$l;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/ss/android/downloadlib/a$l;

    invoke-direct {v1}, Lcom/ss/android/downloadlib/a$l;-><init>()V

    sput-object v1, Lcom/ss/android/downloadlib/a$l;->e:Lcom/ss/android/downloadlib/a$l;

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
    sget-object v0, Lcom/ss/android/downloadlib/a$l;->e:Lcom/ss/android/downloadlib/a$l;

    return-object v0
.end method

.method private a(Lc/d/a/a/a/c/d;Lc/d/a/a/a/c/c;J)V
    .locals 2

    if-eqz p2, :cond_1

    .line 39
    invoke-interface {p2}, Lc/d/a/a/a/c/c;->w()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 40
    invoke-interface {p2}, Lc/d/a/a/a/c/c;->l()Ljava/lang/String;

    move-result-object v0

    .line 41
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "click"

    :goto_0
    invoke-static {v0, p3, p4, p1, p2}, Lcom/ss/android/downloadlib/a$p;->a(Ljava/lang/String;JLc/d/a/a/a/c/d;Lc/d/a/a/a/c/c;)V

    :cond_1
    return-void
.end method

.method public static a(Lc/d/a/a/a/c/d;)Z
    .locals 1

    if-eqz p0, :cond_1

    .line 42
    invoke-interface {p0}, Lc/d/a/a/a/c/d;->u()Lc/d/a/a/a/d/f;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 43
    :cond_0
    invoke-interface {p0}, Lc/d/a/a/a/c/d;->u()Lc/d/a/a/a/d/f;

    move-result-object p0

    invoke-virtual {p0}, Lc/d/a/a/a/d/f;->a()Ljava/lang/String;

    const/4 p0, 0x0

    throw p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Lc/d/a/b/a/f/c;)Z
    .locals 1

    if-eqz p0, :cond_1

    .line 44
    invoke-virtual {p0}, Lc/d/a/b/a/f/c;->A0()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lc/d/a/b/a/f/c;->A0()I

    move-result p0

    const/4 v0, -0x4

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public a(Landroid/os/Message;)V
    .locals 12

    .line 7
    invoke-static {}, Lcom/ss/android/downloadlib/a$q;->j()Lc/d/a/a/a/a/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8
    invoke-static {}, Lcom/ss/android/downloadlib/a$q;->j()Lc/d/a/a/a/a/a;

    move-result-object v0

    invoke-interface {v0}, Lc/d/a/a/a/a/a;->a()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    sget-object v1, Lcom/ss/android/downloadlib/a$l;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMsg isAppInBackground:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/ss/android/downloadlib/e/g;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    if-eqz p1, :cond_d

    .line 10
    iget-object v1, p0, Lcom/ss/android/downloadlib/a$l;->a:Ljava/util/Map;

    if-eqz v1, :cond_d

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_2

    .line 11
    :cond_1
    sget-object v1, Lcom/ss/android/downloadlib/a$l;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMsg msg.what:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v3}, Lcom/ss/android/downloadlib/e/g;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    const-wide/16 v1, 0x0

    .line 12
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v4, :cond_2

    instance-of v5, v4, Ljava/lang/Long;

    if-eqz v5, :cond_2

    .line 13
    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 14
    :cond_2
    iget-object v4, p0, Lcom/ss/android/downloadlib/a$l;->a:Ljava/util/Map;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    if-nez v4, :cond_3

    return-void

    .line 15
    :cond_3
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Lc/d/a/a/a/c/d;

    .line 16
    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Lc/d/a/a/a/c/c;

    if-nez v4, :cond_4

    const-string v6, ""

    goto :goto_1

    .line 17
    :cond_4
    invoke-interface {v4}, Lc/d/a/a/a/c/c;->y()Ljava/lang/String;

    move-result-object v6

    :goto_1
    move-object v9, v6

    if-nez v5, :cond_5

    return-void

    .line 18
    :cond_5
    iget-object v6, p0, Lcom/ss/android/downloadlib/a$l;->a:Ljava/util/Map;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v6, 0x4

    if-eq p1, v6, :cond_b

    const/4 v6, 0x5

    if-eq p1, v6, :cond_9

    const/4 v6, 0x7

    if-eq p1, v6, :cond_6

    goto :goto_2

    .line 20
    :cond_6
    iget-object p1, p0, Lcom/ss/android/downloadlib/a$l;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Runnable;

    .line 21
    iget-object v6, p0, Lcom/ss/android/downloadlib/a$l;->c:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_7

    const/4 v7, 0x1

    const-wide/16 v10, 0x1

    move-object v6, p0

    move-object v8, v5

    .line 22
    invoke-virtual/range {v6 .. v11}, Lcom/ss/android/downloadlib/a$l;->a(ZLc/d/a/a/a/c/d;Ljava/lang/String;J)V

    const-wide/16 v0, 0x1

    .line 23
    invoke-direct {p0, v5, v4, v0, v1}, Lcom/ss/android/downloadlib/a$l;->a(Lc/d/a/a/a/c/d;Lc/d/a/a/a/c/c;J)V

    goto :goto_2

    :cond_7
    if-eqz p1, :cond_8

    .line 24
    sget-object v0, Lcom/ss/android/downloadlib/a$l;->d:Ljava/lang/String;

    const-string v1, "handleMsg post currentRunnable"

    invoke-static {v0, v1, v3}, Lcom/ss/android/downloadlib/e/g;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 25
    iget-object v0, p0, Lcom/ss/android/downloadlib/a$l;->b:Lcom/ss/android/downloadlib/e/i;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_8
    const/4 v7, 0x0

    const-wide/16 v10, 0x1

    move-object v6, p0

    move-object v8, v5

    .line 26
    invoke-virtual/range {v6 .. v11}, Lcom/ss/android/downloadlib/a$l;->a(ZLc/d/a/a/a/c/d;Ljava/lang/String;J)V

    goto :goto_2

    :cond_9
    if-nez v0, :cond_a

    return-void

    :cond_a
    const/4 v7, 0x1

    const-wide/16 v10, 0x1

    move-object v6, p0

    move-object v8, v5

    .line 27
    invoke-virtual/range {v6 .. v11}, Lcom/ss/android/downloadlib/a$l;->a(ZLc/d/a/a/a/c/d;Ljava/lang/String;J)V

    goto :goto_2

    :cond_b
    if-nez v0, :cond_c

    return-void

    :cond_c
    const/4 v7, 0x1

    const-wide/16 v10, 0x2

    move-object v6, p0

    move-object v8, v5

    .line 28
    invoke-virtual/range {v6 .. v11}, Lcom/ss/android/downloadlib/a$l;->a(ZLc/d/a/a/a/c/d;Ljava/lang/String;J)V

    :cond_d
    :goto_2
    return-void
.end method

.method public a(ZLc/d/a/a/a/c/d;Ljava/lang/String;J)V
    .locals 11

    if-eqz p2, :cond_4

    .line 29
    invoke-interface {p2}, Lc/d/a/a/a/c/d;->u()Lc/d/a/a/a/d/f;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_5

    :cond_0
    const/4 v1, 0x0

    .line 30
    :try_start_0
    invoke-interface {p2}, Lc/d/a/a/a/c/d;->s()Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_1

    .line 31
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :goto_0
    move-object v1, v0

    goto :goto_1

    .line 32
    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-interface {p2}, Lc/d/a/a/a/c/d;->s()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :goto_1
    const-string v0, "click_type"

    .line 33
    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 34
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_2
    move-object v8, v1

    if-eqz p1, :cond_2

    const-string v0, "quickapp_success"

    goto :goto_3

    :cond_2
    const-string v0, "quickapp_fail"

    :goto_3
    move-object v1, v0

    .line 35
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "embeded_ad"

    goto :goto_4

    :cond_3
    move-object v0, p3

    .line 36
    :goto_4
    invoke-interface {p2}, Lc/d/a/a/a/c/d;->n()Z

    move-result v2

    invoke-interface {p2}, Lc/d/a/a/a/c/d;->b()J

    move-result-wide v3

    .line 37
    invoke-interface {p2}, Lc/d/a/a/a/c/d;->o()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2}, Lc/d/a/a/a/c/d;->c()J

    move-result-wide v6

    const/4 v9, 0x2

    const/4 v10, 0x0

    .line 38
    invoke-static/range {v0 .. v10}, Lcom/ss/android/downloadlib/a$p;->a(Ljava/lang/String;Ljava/lang/String;ZJLjava/lang/String;JLorg/json/JSONObject;IZ)V

    :cond_4
    :goto_5
    return-void
.end method
