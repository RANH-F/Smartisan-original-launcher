.class public Lcom/ss/android/downloadlib/a$g;
.super Ljava/lang/Object;
.source "AdDelayTaskManager.java"

# interfaces
.implements Lcom/ss/android/downloadlib/e/i$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/downloadlib/a$g$b;,
        Lcom/ss/android/downloadlib/a$g$a;
    }
.end annotation


# static fields
.field private static final f:Ljava/lang/String; = "a$g"

.field private static g:Lcom/ss/android/downloadlib/a$g;


# instance fields
.field private a:Lcom/ss/android/downloadlib/a$i;

.field private b:Lcom/ss/android/downloadlib/e/i;

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:J

.field private e:Lcom/ss/android/downloadlib/a$g$b;


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/ss/android/downloadlib/e/i;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/ss/android/downloadlib/e/i;-><init>(Landroid/os/Looper;Lcom/ss/android/downloadlib/e/i$a;)V

    iput-object v0, p0, Lcom/ss/android/downloadlib/a$g;->b:Lcom/ss/android/downloadlib/e/i;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    new-instance v0, Lcom/ss/android/downloadlib/a$i;

    invoke-direct {v0}, Lcom/ss/android/downloadlib/a$i;-><init>()V

    iput-object v0, p0, Lcom/ss/android/downloadlib/a$g;->a:Lcom/ss/android/downloadlib/a$i;

    .line 5
    iget-object v0, p0, Lcom/ss/android/downloadlib/a$g;->a:Lcom/ss/android/downloadlib/a$i;

    const-string v1, "sp_delay_operation_info"

    const-string v2, "key_waiting_wifi_download_list"

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/downloadlib/a$i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    .line 6
    new-instance v0, Lcom/ss/android/downloadlib/a$o;

    invoke-direct {v0}, Lcom/ss/android/downloadlib/a$o;-><init>()V

    return-void
.end method

.method private a(Lcom/ss/android/downloadlib/a$h/a;)V
    .locals 4

    .line 20
    sget-object v0, Lcom/ss/android/downloadlib/a$g;->f:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleStartInstallMsg start appName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_0

    const-string v2, ""

    goto :goto_0

    :cond_0
    iget-object v2, p1, Lcom/ss/android/downloadlib/a$h/a;->e:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/ss/android/downloadlib/e/g;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 21
    invoke-static {}, Lcom/ss/android/downloadlib/a$q;->j()Lc/d/a/a/a/a/a;

    move-result-object v0

    if-nez v0, :cond_1

    .line 22
    sget-object p1, Lcom/ss/android/downloadlib/a$g;->f:Ljava/lang/String;

    const-string v0, "handleStartInstallMsg getAppStatusChangeListener null return"

    invoke-static {p1, v0, v2}, Lcom/ss/android/downloadlib/e/g;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    .line 23
    :cond_1
    invoke-static {}, Lcom/ss/android/downloadlib/a$q;->j()Lc/d/a/a/a/a/a;

    move-result-object v0

    invoke-interface {v0}, Lc/d/a/a/a/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/ss/android/downloadlib/a$q;->o()Z

    move-result v0

    if-nez v0, :cond_2

    .line 24
    sget-object p1, Lcom/ss/android/downloadlib/a$g;->f:Ljava/lang/String;

    const-string v0, "handleStartInstallMsg isAppInBackground !isHandleDelayInstallWhenBg return"

    invoke-static {p1, v0, v2}, Lcom/ss/android/downloadlib/e/g;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    :cond_2
    if-nez p1, :cond_3

    .line 25
    sget-object p1, Lcom/ss/android/downloadlib/a$g;->f:Ljava/lang/String;

    const-string v0, "handleStartInstallMsg appInfo == null return"

    invoke-static {p1, v0, v2}, Lcom/ss/android/downloadlib/e/g;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    .line 26
    :cond_3
    invoke-static {}, Lcom/ss/android/downloadlib/a$q;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p1, Lcom/ss/android/downloadlib/a$h/a;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/ss/android/downloadlib/e/h;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 27
    iget-wide v0, p1, Lcom/ss/android/downloadlib/a$h/a;->c:J

    const-string v3, "installed"

    invoke-direct {p0, p1, v3, v0, v1}, Lcom/ss/android/downloadlib/a$g;->a(Lcom/ss/android/downloadlib/a$h/a;Ljava/lang/String;J)V

    .line 28
    sget-object v0, Lcom/ss/android/downloadlib/a$g;->f:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleStartInstallMsg isInstalledApp mPackageName:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/ss/android/downloadlib/a$h/a;->d:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v2}, Lcom/ss/android/downloadlib/e/g;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    .line 29
    :cond_4
    iget-object v0, p1, Lcom/ss/android/downloadlib/a$h/a;->g:Ljava/lang/String;

    invoke-static {v0}, Lcom/ss/android/downloadlib/e/h;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 30
    iget-wide v0, p1, Lcom/ss/android/downloadlib/a$h/a;->c:J

    const-string v3, "file_lost"

    invoke-direct {p0, p1, v3, v0, v1}, Lcom/ss/android/downloadlib/a$g;->a(Lcom/ss/android/downloadlib/a$h/a;Ljava/lang/String;J)V

    .line 31
    sget-object v0, Lcom/ss/android/downloadlib/a$g;->f:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleStartInstallMsg file_lost mPackageName:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/ss/android/downloadlib/a$h/a;->d:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v2}, Lcom/ss/android/downloadlib/e/g;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    .line 32
    :cond_5
    invoke-static {}, Lcom/ss/android/downloadlib/a$e/a;->a()Lcom/ss/android/downloadlib/a$e/a;

    move-result-object v0

    iget-object v1, p1, Lcom/ss/android/downloadlib/a$h/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadlib/a$e/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 33
    iget-wide v0, p1, Lcom/ss/android/downloadlib/a$h/a;->c:J

    const-string v3, "conflict_with_back_dialog"

    invoke-direct {p0, p1, v3, v0, v1}, Lcom/ss/android/downloadlib/a$g;->a(Lcom/ss/android/downloadlib/a$h/a;Ljava/lang/String;J)V

    .line 34
    sget-object v0, Lcom/ss/android/downloadlib/a$g;->f:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleStartInstallMsg conflict_with_back_dialog mPackageName:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/ss/android/downloadlib/a$h/a;->d:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v2}, Lcom/ss/android/downloadlib/e/g;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    .line 35
    :cond_6
    sget-object v0, Lcom/ss/android/downloadlib/a$g;->f:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleStartInstallMsg start_install  mPackageName:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/ss/android/downloadlib/a$h/a;->d:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/ss/android/downloadlib/e/g;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 36
    invoke-static {}, Lcom/ss/android/downloadlib/a$q;->p()J

    move-result-wide v0

    const-string v2, "start_install"

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/ss/android/downloadlib/a$g;->a(Lcom/ss/android/downloadlib/a$h/a;Ljava/lang/String;J)V

    .line 37
    invoke-static {}, Lcom/ss/android/downloadlib/a$q;->a()Landroid/content/Context;

    move-result-object v0

    iget-wide v1, p1, Lcom/ss/android/downloadlib/a$h/a;->a:J

    long-to-int p1, v1

    invoke-static {v0, p1}, Lcom/ss/android/socialbase/appdownloader/c;->a(Landroid/content/Context;I)Z

    return-void
.end method

.method private a(Lcom/ss/android/downloadlib/a$h/a;Ljava/lang/String;J)V
    .locals 13

    move-object v0, p1

    .line 38
    iget-wide v1, v0, Lcom/ss/android/downloadlib/a$h/a;->b:J

    invoke-static {v1, v2}, Lcom/ss/android/downloadlib/e/d;->a(J)Lcom/ss/android/downloadad/a/c/a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 39
    invoke-virtual {v1}, Lcom/ss/android/downloadad/a/c/a;->h()Lorg/json/JSONObject;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move-object v10, v1

    const/4 v4, 0x1

    .line 40
    iget-wide v5, v0, Lcom/ss/android/downloadlib/a$h/a;->b:J

    iget-object v7, v0, Lcom/ss/android/downloadlib/a$h/a;->f:Ljava/lang/String;

    const/4 v11, 0x2

    const/4 v12, 0x0

    const-string v2, "delay_install"

    move-object v3, p2

    move-wide/from16 v8, p3

    invoke-static/range {v2 .. v12}, Lcom/ss/android/downloadlib/a$p;->a(Ljava/lang/String;Ljava/lang/String;ZJLjava/lang/String;JLorg/json/JSONObject;IZ)V

    return-void
.end method

.method public static b()Lcom/ss/android/downloadlib/a$g;
    .locals 2

    .line 1
    sget-object v0, Lcom/ss/android/downloadlib/a$g;->g:Lcom/ss/android/downloadlib/a$g;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/ss/android/downloadlib/a$g;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/ss/android/downloadlib/a$g;->g:Lcom/ss/android/downloadlib/a$g;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/ss/android/downloadlib/a$g;

    invoke-direct {v1}, Lcom/ss/android/downloadlib/a$g;-><init>()V

    sput-object v1, Lcom/ss/android/downloadlib/a$g;->g:Lcom/ss/android/downloadlib/a$g;

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
    sget-object v0, Lcom/ss/android/downloadlib/a$g;->g:Lcom/ss/android/downloadlib/a$g;

    return-object v0
.end method

.method private c()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/android/downloadlib/a$g;->c:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/ss/android/downloadlib/a$g;->c:Ljava/util/Map;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/ss/android/downloadlib/a$g;->c:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/ss/android/downloadlib/a$g$b;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/ss/android/downloadlib/a$g;->e:Lcom/ss/android/downloadlib/a$g$b;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lcom/ss/android/downloadlib/a$g$b;

    invoke-direct {v0}, Lcom/ss/android/downloadlib/a$g$b;-><init>()V

    iput-object v0, p0, Lcom/ss/android/downloadlib/a$g;->e:Lcom/ss/android/downloadlib/a$g$b;

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/ss/android/downloadlib/a$g;->e:Lcom/ss/android/downloadlib/a$g$b;

    return-object v0
.end method

.method public a(JJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 13

    move-object v0, p0

    move-wide/from16 v4, p3

    move-object/from16 v8, p7

    .line 9
    sget-object v1, Lcom/ss/android/downloadlib/a$g;->f:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "trySendDelayInstallMsg start packageName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",adId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x0

    invoke-static {v1, v2, v6}, Lcom/ss/android/downloadlib/e/g;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 10
    invoke-static {}, Lcom/ss/android/downloadlib/a$q;->n()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 11
    :cond_0
    sget-object v1, Lcom/ss/android/downloadlib/a$g;->f:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "trySendDelayInstallMsg next packageName:"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v6}, Lcom/ss/android/downloadlib/e/g;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 12
    new-instance v12, Lcom/ss/android/downloadlib/a$h/a;

    move-object v1, v12

    move-wide v2, p1

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-direct/range {v1 .. v11}, Lcom/ss/android/downloadlib/a$h/a;-><init>(JJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, v0, Lcom/ss/android/downloadlib/a$g;->d:J

    sub-long/2addr v1, v3

    .line 14
    invoke-static {}, Lcom/ss/android/downloadlib/a$q;->p()J

    move-result-wide v3

    .line 15
    invoke-static {}, Lcom/ss/android/downloadlib/a$q;->q()J

    move-result-wide v5

    cmp-long v5, v1, v5

    if-gez v5, :cond_1

    .line 16
    invoke-static {}, Lcom/ss/android/downloadlib/a$q;->q()J

    move-result-wide v5

    sub-long/2addr v5, v1

    add-long/2addr v3, v5

    .line 17
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    add-long/2addr v1, v5

    iput-wide v1, v0, Lcom/ss/android/downloadlib/a$g;->d:J

    goto :goto_0

    .line 18
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/ss/android/downloadlib/a$g;->d:J

    .line 19
    :goto_0
    iget-object v1, v0, Lcom/ss/android/downloadlib/a$g;->b:Lcom/ss/android/downloadlib/e/i;

    const/16 v2, 0xc8

    invoke-virtual {v1, v2, v12}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public a(Landroid/os/Message;)V
    .locals 2

    .line 44
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_1

    const/16 v1, 0xc9

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 45
    :cond_0
    invoke-static {}, Lcom/ss/android/downloadlib/h;->a()Lcom/ss/android/downloadlib/h;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/ss/android/downloadlib/h;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 46
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/ss/android/downloadlib/a$h/a;

    .line 47
    invoke-direct {p0, p1}, Lcom/ss/android/downloadlib/a$g;->a(Lcom/ss/android/downloadlib/a$h/a;)V

    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .line 5
    sget-object v0, Lcom/ss/android/downloadlib/a$g;->f:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "trySendRecommendAdEvent packageName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/ss/android/downloadlib/e/g;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 6
    invoke-direct {p0}, Lcom/ss/android/downloadlib/a$g;->c()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7
    invoke-direct {p0}, Lcom/ss/android/downloadlib/a$g;->c()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 8
    invoke-static {}, Lcom/ss/android/downloadlib/a;->a()Lcom/ss/android/downloadlib/a;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/ss/android/downloadlib/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;J)V
    .locals 3

    .line 1
    sget-object v0, Lcom/ss/android/downloadlib/a$g;->f:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addPackageName packageName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",adId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/ss/android/downloadlib/e/g;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/ss/android/downloadlib/a$g;->c()Ljava/util/Map;

    move-result-object v0

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/ss/android/downloadlib/a$g;->c()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method
