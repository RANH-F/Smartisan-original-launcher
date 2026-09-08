.class public Lcom/bytedance/embedapplog/a/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Handler$Callback;",
        "Ljava/util/Comparator<",
        "Lcom/bytedance/embedapplog/d/a;",
        ">;"
    }
.end annotation


# static fields
.field private static k:Lcom/bytedance/embedapplog/a/e;


# instance fields
.field private a:Lcom/bytedance/embedapplog/a/a;

.field private b:Z

.field public c:Landroid/app/Application;

.field private d:Lcom/bytedance/embedapplog/b/h;

.field private final e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/bytedance/embedapplog/d/a;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/bytedance/embedapplog/d/b;

.field private g:Lcom/bytedance/embedapplog/b/i;

.field private h:Landroid/os/Handler;

.field private i:Lcom/bytedance/embedapplog/a/k;

.field private j:Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/bytedance/embedapplog/a/e;->e:Ljava/util/ArrayList;

    return-void
.end method

.method public static a(Lcom/bytedance/embedapplog/d/a;)V
    .locals 6

    .line 16
    sget-object v0, Lcom/bytedance/embedapplog/a/e;->k:Lcom/bytedance/embedapplog/a/e;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "Init comes First!"

    .line 17
    invoke-static {v0, v1}, Lcom/bytedance/embedapplog/util/h;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 18
    invoke-static {p0}, Lcom/bytedance/embedapplog/b/b;->a(Lcom/bytedance/embedapplog/d/a;)V

    return-void

    .line 19
    :cond_0
    iget-wide v2, p0, Lcom/bytedance/embedapplog/d/a;->a:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 20
    invoke-static {v1}, Lcom/bytedance/embedapplog/util/h;->a(Ljava/lang/Throwable;)V

    .line 21
    :cond_1
    instance-of v1, p0, Lcom/bytedance/embedapplog/d/i;

    if-eqz v1, :cond_2

    .line 22
    move-object v1, p0

    check-cast v1, Lcom/bytedance/embedapplog/d/i;

    iget-object v2, v0, Lcom/bytedance/embedapplog/a/e;->d:Lcom/bytedance/embedapplog/b/h;

    invoke-virtual {v2}, Lcom/bytedance/embedapplog/b/h;->F()I

    move-result v2

    iput v2, v1, Lcom/bytedance/embedapplog/d/i;->k:I

    .line 23
    :cond_2
    iget-object v1, v0, Lcom/bytedance/embedapplog/a/e;->e:Ljava/util/ArrayList;

    monitor-enter v1

    .line 24
    :try_start_0
    iget-object v2, v0, Lcom/bytedance/embedapplog/a/e;->e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 25
    iget-object v3, v0, Lcom/bytedance/embedapplog/a/e;->e:Ljava/util/ArrayList;

    invoke-virtual {v3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    rem-int/lit8 p0, v2, 0xa

    if-nez p0, :cond_4

    iget-object p0, v0, Lcom/bytedance/embedapplog/a/e;->j:Landroid/os/Handler;

    if-eqz p0, :cond_4

    const/4 v1, 0x4

    .line 28
    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 29
    iget-object p0, v0, Lcom/bytedance/embedapplog/a/e;->j:Landroid/os/Handler;

    if-nez v2, :cond_3

    const-wide/16 v2, 0x1f4

    goto :goto_0

    :cond_3
    const-wide/16 v2, 0xfa

    :goto_0
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_4
    return-void

    :catchall_0
    move-exception p0

    .line 30
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static a([Ljava/lang/String;)V
    .locals 3

    .line 31
    sget-object v0, Lcom/bytedance/embedapplog/a/e;->k:Lcom/bytedance/embedapplog/a/e;

    if-nez v0, :cond_0

    .line 32
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "Init comes First!"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/bytedance/embedapplog/util/h;->a(Ljava/lang/Throwable;)V

    return-void

    .line 33
    :cond_0
    iget-object v1, v0, Lcom/bytedance/embedapplog/a/e;->j:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 34
    iget-object v0, v0, Lcom/bytedance/embedapplog/a/e;->j:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public static b()V
    .locals 2

    .line 1
    sget-object v0, Lcom/bytedance/embedapplog/a/e;->k:Lcom/bytedance/embedapplog/a/e;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-direct {v0, v1}, Lcom/bytedance/embedapplog/a/e;->b([Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private b([Ljava/lang/String;)V
    .locals 7

    .line 3
    iget-object v0, p0, Lcom/bytedance/embedapplog/a/e;->e:Ljava/util/ArrayList;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/bytedance/embedapplog/a/e;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 5
    iget-object v2, p0, Lcom/bytedance/embedapplog/a/e;->e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 7
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    array-length v3, p1

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 8
    array-length v2, p1

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, p1, v3

    .line 9
    invoke-static {v4}, Lcom/bytedance/embedapplog/d/a;->a(Ljava/lang/String;)Lcom/bytedance/embedapplog/d/a;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/bytedance/embedapplog/a/e;->d:Lcom/bytedance/embedapplog/b/h;

    invoke-virtual {p1, v1}, Lcom/bytedance/embedapplog/b/h;->a(Ljava/util/ArrayList;)Z

    move-result p1

    .line 11
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_b

    .line 12
    iget-object v2, p0, Lcom/bytedance/embedapplog/a/e;->d:Lcom/bytedance/embedapplog/b/h;

    invoke-virtual {v2}, Lcom/bytedance/embedapplog/b/h;->O()Z

    move-result v2

    if-eqz v2, :cond_8

    if-nez p1, :cond_2

    .line 13
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/16 v2, 0x64

    if-le p1, v2, :cond_1

    goto :goto_1

    .line 14
    :cond_1
    iget-object p1, p0, Lcom/bytedance/embedapplog/a/e;->e:Ljava/util/ArrayList;

    monitor-enter p1

    .line 15
    :try_start_1
    iget-object v0, p0, Lcom/bytedance/embedapplog/a/e;->e:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 16
    monitor-exit p1

    goto/16 :goto_5

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 17
    :cond_2
    :goto_1
    invoke-static {v1, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 18
    new-instance p1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {p1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 19
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v2, v0

    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/embedapplog/d/a;

    .line 20
    iget-object v4, p0, Lcom/bytedance/embedapplog/a/e;->i:Lcom/bytedance/embedapplog/a/k;

    invoke-virtual {v4, v3, p1}, Lcom/bytedance/embedapplog/a/k;->a(Lcom/bytedance/embedapplog/d/a;Ljava/util/ArrayList;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 21
    invoke-direct {p0}, Lcom/bytedance/embedapplog/a/e;->g()V

    .line 22
    :cond_4
    instance-of v4, v3, Lcom/bytedance/embedapplog/d/h;

    if-eqz v4, :cond_3

    .line 23
    invoke-static {v3}, Lcom/bytedance/embedapplog/a/k;->b(Lcom/bytedance/embedapplog/d/a;)Z

    move-result v0

    const/4 v2, 0x1

    move v6, v2

    move v2, v0

    move v0, v6

    goto :goto_2

    :cond_5
    if-eqz v0, :cond_7

    const/4 v0, 0x7

    if-eqz v2, :cond_6

    .line 24
    iget-object v1, p0, Lcom/bytedance/embedapplog/a/e;->j:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_3

    .line 25
    :cond_6
    iget-object v1, p0, Lcom/bytedance/embedapplog/a/e;->j:Landroid/os/Handler;

    iget-object v2, p0, Lcom/bytedance/embedapplog/a/e;->d:Lcom/bytedance/embedapplog/b/h;

    invoke-virtual {v2}, Lcom/bytedance/embedapplog/b/h;->a()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 26
    :cond_7
    :goto_3
    iget-object v0, p0, Lcom/bytedance/embedapplog/a/e;->f:Lcom/bytedance/embedapplog/d/b;

    invoke-virtual {v0, p1}, Lcom/bytedance/embedapplog/d/b;->a(Ljava/util/ArrayList;)V

    .line 27
    iget-boolean p1, p0, Lcom/bytedance/embedapplog/a/e;->b:Z

    if-nez p1, :cond_b

    iget-object p1, p0, Lcom/bytedance/embedapplog/a/e;->i:Lcom/bytedance/embedapplog/a/k;

    invoke-virtual {p1}, Lcom/bytedance/embedapplog/a/k;->b()Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/bytedance/embedapplog/a/e;->h:Landroid/os/Handler;

    if-eqz p1, :cond_b

    invoke-static {}, Lcom/bytedance/embedapplog/AppLog;->getAutoActiveState()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 28
    invoke-virtual {p0}, Lcom/bytedance/embedapplog/a/e;->a()Z

    goto :goto_5

    .line 29
    :cond_8
    new-instance p1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/bytedance/embedapplog/a/e;->c:Landroid/app/Application;

    const-class v3, Lcom/bytedance/embedapplog/collector/Collector;

    invoke-direct {p1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 30
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 31
    new-array v3, v2, [Ljava/lang/String;

    move v4, v0

    :goto_4
    if-ge v0, v2, :cond_9

    .line 32
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/bytedance/embedapplog/d/a;

    invoke-virtual {v5}, Lcom/bytedance/embedapplog/d/a;->e()Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v0

    .line 33
    aget-object v5, v3, v0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_9
    const v0, 0x4b000

    if-lt v4, v0, :cond_a

    const/4 v0, 0x0

    .line 34
    invoke-static {v0}, Lcom/bytedance/embedapplog/util/h;->a(Ljava/lang/Throwable;)V

    :cond_a
    const-string v0, "EMBED_K_DATA"

    .line 35
    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 36
    :try_start_2
    iget-object v0, p0, Lcom/bytedance/embedapplog/a/e;->c:Landroid/app/Application;

    invoke-virtual {v0, p1}, Landroid/app/Application;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5

    :catch_0
    move-exception p1

    .line 37
    invoke-static {p1}, Lcom/bytedance/embedapplog/util/h;->a(Ljava/lang/Throwable;)V

    :cond_b
    :goto_5
    return-void

    :catchall_1
    move-exception p1

    .line 38
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public static c()Lcom/bytedance/embedapplog/a/e;
    .locals 2

    .line 1
    sget-object v0, Lcom/bytedance/embedapplog/a/e;->k:Lcom/bytedance/embedapplog/a/e;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/bytedance/embedapplog/a/e;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/bytedance/embedapplog/a/e;->k:Lcom/bytedance/embedapplog/a/e;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/bytedance/embedapplog/a/e;

    invoke-direct {v1}, Lcom/bytedance/embedapplog/a/e;-><init>()V

    .line 5
    sput-object v1, Lcom/bytedance/embedapplog/a/e;->k:Lcom/bytedance/embedapplog/a/e;

    .line 6
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 7
    :cond_1
    :goto_0
    sget-object v0, Lcom/bytedance/embedapplog/a/e;->k:Lcom/bytedance/embedapplog/a/e;

    return-object v0
.end method

.method public static d()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/bytedance/embedapplog/a/e;->e()Lcom/bytedance/embedapplog/a/k;

    move-result-object v0

    iget-object v0, v0, Lcom/bytedance/embedapplog/a/k;->e:Ljava/lang/String;

    return-object v0
.end method

.method public static e()Lcom/bytedance/embedapplog/a/k;
    .locals 1

    .line 1
    sget-object v0, Lcom/bytedance/embedapplog/a/e;->k:Lcom/bytedance/embedapplog/a/e;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Lcom/bytedance/embedapplog/a/e;->i:Lcom/bytedance/embedapplog/a/k;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 3
    invoke-static {v0}, Lcom/bytedance/embedapplog/util/h;->a(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private f()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bytedance/embedapplog/a/e;->d:Lcom/bytedance/embedapplog/b/h;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/b/h;->S()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/bytedance/embedapplog/a/e;->a:Lcom/bytedance/embedapplog/a/a;

    if-nez v0, :cond_1

    .line 3
    new-instance v0, Lcom/bytedance/embedapplog/a/a;

    iget-object v1, p0, Lcom/bytedance/embedapplog/a/e;->c:Landroid/app/Application;

    iget-object v2, p0, Lcom/bytedance/embedapplog/a/e;->g:Lcom/bytedance/embedapplog/b/i;

    iget-object v3, p0, Lcom/bytedance/embedapplog/a/e;->d:Lcom/bytedance/embedapplog/b/h;

    invoke-direct {v0, v1, v2, v3}, Lcom/bytedance/embedapplog/a/a;-><init>(Landroid/app/Application;Lcom/bytedance/embedapplog/b/i;Lcom/bytedance/embedapplog/b/h;)V

    iput-object v0, p0, Lcom/bytedance/embedapplog/a/e;->a:Lcom/bytedance/embedapplog/a/a;

    .line 4
    iget-object v0, p0, Lcom/bytedance/embedapplog/a/e;->h:Landroid/os/Handler;

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/bytedance/embedapplog/a/e;->a:Lcom/bytedance/embedapplog/a/a;

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/bytedance/embedapplog/a/e;->a:Lcom/bytedance/embedapplog/a/a;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Lcom/bytedance/embedapplog/a/c;->f()V

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/bytedance/embedapplog/a/e;->a:Lcom/bytedance/embedapplog/a/a;

    :cond_1
    :goto_0
    return-void
.end method

.method private g()V
    .locals 8

    .line 1
    sget-boolean v0, Lcom/bytedance/embedapplog/util/h;->a:Z

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "packAndSend once, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/embedapplog/a/e;->i:Lcom/bytedance/embedapplog/a/k;

    iget-object v1, v1, Lcom/bytedance/embedapplog/a/k;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", hadUI:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/embedapplog/a/e;->i:Lcom/bytedance/embedapplog/a/k;

    invoke-virtual {v1}, Lcom/bytedance/embedapplog/a/k;->b()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bytedance/embedapplog/util/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/bytedance/embedapplog/a/e;->h:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 4
    iget-object v1, p0, Lcom/bytedance/embedapplog/a/e;->j:Landroid/os/Handler;

    new-instance v2, Lcom/bytedance/embedapplog/a/f;

    iget-object v3, p0, Lcom/bytedance/embedapplog/a/e;->c:Landroid/app/Application;

    iget-object v4, p0, Lcom/bytedance/embedapplog/a/e;->g:Lcom/bytedance/embedapplog/b/i;

    iget-object v5, p0, Lcom/bytedance/embedapplog/a/e;->f:Lcom/bytedance/embedapplog/d/b;

    invoke-direct {v2, v3, v4, v5}, Lcom/bytedance/embedapplog/a/f;-><init>(Landroid/content/Context;Lcom/bytedance/embedapplog/b/i;Lcom/bytedance/embedapplog/d/b;)V

    const/4 v3, 0x6

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 5
    iget-object v0, p0, Lcom/bytedance/embedapplog/a/e;->h:Landroid/os/Handler;

    iget-object v1, p0, Lcom/bytedance/embedapplog/a/e;->j:Landroid/os/Handler;

    new-instance v2, Lcom/bytedance/embedapplog/a/g;

    iget-object v4, p0, Lcom/bytedance/embedapplog/a/e;->c:Landroid/app/Application;

    iget-object v5, p0, Lcom/bytedance/embedapplog/a/e;->f:Lcom/bytedance/embedapplog/d/b;

    iget-object v6, p0, Lcom/bytedance/embedapplog/a/e;->d:Lcom/bytedance/embedapplog/b/h;

    iget-object v7, p0, Lcom/bytedance/embedapplog/a/e;->g:Lcom/bytedance/embedapplog/b/i;

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/bytedance/embedapplog/a/g;-><init>(Landroid/content/Context;Lcom/bytedance/embedapplog/d/b;Lcom/bytedance/embedapplog/b/h;Lcom/bytedance/embedapplog/b/i;)V

    invoke-virtual {v1, v3, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/embedapplog/d/a;Lcom/bytedance/embedapplog/d/a;)I
    .locals 2

    .line 35
    iget-wide v0, p1, Lcom/bytedance/embedapplog/d/a;->a:J

    iget-wide p1, p2, Lcom/bytedance/embedapplog/d/a;->a:J

    sub-long/2addr v0, p1

    const-wide/16 p1, 0x0

    cmp-long p1, v0, p1

    if-gez p1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    if-lez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public a(Landroid/app/Application;Lcom/bytedance/embedapplog/b/h;Lcom/bytedance/embedapplog/b/i;Lcom/bytedance/embedapplog/collector/a;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/bytedance/embedapplog/a/e;->c:Landroid/app/Application;

    .line 2
    new-instance v0, Lcom/bytedance/embedapplog/d/b;

    invoke-direct {v0, p1, p3, p2}, Lcom/bytedance/embedapplog/d/b;-><init>(Landroid/app/Application;Lcom/bytedance/embedapplog/b/i;Lcom/bytedance/embedapplog/b/h;)V

    iput-object v0, p0, Lcom/bytedance/embedapplog/a/e;->f:Lcom/bytedance/embedapplog/d/b;

    .line 3
    iput-object p2, p0, Lcom/bytedance/embedapplog/a/e;->d:Lcom/bytedance/embedapplog/b/h;

    .line 4
    iput-object p3, p0, Lcom/bytedance/embedapplog/a/e;->g:Lcom/bytedance/embedapplog/b/i;

    .line 5
    new-instance p1, Lcom/bytedance/embedapplog/a/k;

    iget-object p3, p0, Lcom/bytedance/embedapplog/a/e;->g:Lcom/bytedance/embedapplog/b/i;

    iget-object v0, p0, Lcom/bytedance/embedapplog/a/e;->d:Lcom/bytedance/embedapplog/b/h;

    invoke-direct {p1, p3, v0}, Lcom/bytedance/embedapplog/a/k;-><init>(Lcom/bytedance/embedapplog/b/i;Lcom/bytedance/embedapplog/b/h;)V

    iput-object p1, p0, Lcom/bytedance/embedapplog/a/e;->i:Lcom/bytedance/embedapplog/a/k;

    .line 6
    iget-object p1, p0, Lcom/bytedance/embedapplog/a/e;->c:Landroid/app/Application;

    invoke-virtual {p1, p4}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 7
    new-instance p1, Landroid/os/HandlerThread;

    const-string p3, "bd_tracker_w"

    invoke-direct {p1, p3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 9
    new-instance p3, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p3, p1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p3, p0, Lcom/bytedance/embedapplog/a/e;->j:Landroid/os/Handler;

    .line 10
    iget-object p1, p0, Lcom/bytedance/embedapplog/a/e;->j:Landroid/os/Handler;

    const/4 p3, 0x1

    invoke-virtual {p1, p3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 11
    invoke-virtual {p2}, Lcom/bytedance/embedapplog/b/h;->F()I

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    invoke-static {p3}, Lcom/bytedance/embedapplog/util/g;->a(Z)V

    return-void
.end method

.method public a()Z
    .locals 4

    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/bytedance/embedapplog/a/e;->b:Z

    .line 13
    new-instance v1, Lcom/bytedance/embedapplog/a/b;

    iget-object v2, p0, Lcom/bytedance/embedapplog/a/e;->c:Landroid/app/Application;

    iget-object v3, p0, Lcom/bytedance/embedapplog/a/e;->g:Lcom/bytedance/embedapplog/b/i;

    invoke-direct {v1, v2, v3}, Lcom/bytedance/embedapplog/a/b;-><init>(Landroid/content/Context;Lcom/bytedance/embedapplog/b/i;)V

    .line 14
    iget-object v2, p0, Lcom/bytedance/embedapplog/a/e;->h:Landroid/os/Handler;

    if-eqz v2, :cond_0

    const/4 v3, 0x6

    .line 15
    invoke-virtual {v2, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/bytedance/embedapplog/d/a;

    check-cast p2, Lcom/bytedance/embedapplog/d/a;

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/embedapplog/a/e;->a(Lcom/bytedance/embedapplog/d/a;Lcom/bytedance/embedapplog/d/a;)I

    move-result p1

    return p1
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 9

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x1

    if-eq v0, v4, :cond_8

    const-wide/32 v5, 0x337f9800

    const/4 v7, 0x6

    if-eq v0, v1, :cond_5

    if-eq v0, v3, :cond_4

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    if-eq v0, v7, :cond_1

    const/4 p1, 0x7

    if-eq v0, p1, :cond_0

    .line 2
    invoke-static {v2}, Lcom/bytedance/embedapplog/util/h;->a(Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/bytedance/embedapplog/a/e;->e:Ljava/util/ArrayList;

    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p1, p0, Lcom/bytedance/embedapplog/a/e;->e:Ljava/util/ArrayList;

    invoke-static {}, Lcom/bytedance/embedapplog/a/k;->d()Lcom/bytedance/embedapplog/a/k$b;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    invoke-direct {p0, v2}, Lcom/bytedance/embedapplog/a/e;->b([Ljava/lang/String;)V

    goto/16 :goto_2

    :catchall_0
    move-exception p1

    .line 7
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 8
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/bytedance/embedapplog/a/c;

    .line 9
    invoke-virtual {p1}, Lcom/bytedance/embedapplog/a/c;->g()Z

    move-result v0

    if-nez v0, :cond_c

    .line 10
    invoke-virtual {p1}, Lcom/bytedance/embedapplog/a/c;->h()J

    move-result-wide v0

    cmp-long v2, v0, v5

    if-gez v2, :cond_2

    .line 11
    iget-object v2, p0, Lcom/bytedance/embedapplog/a/e;->h:Landroid/os/Handler;

    iget-object v3, p0, Lcom/bytedance/embedapplog/a/e;->j:Landroid/os/Handler;

    invoke-virtual {v3, v7, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v2, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 12
    :cond_2
    invoke-direct {p0}, Lcom/bytedance/embedapplog/a/e;->f()V

    goto/16 :goto_2

    .line 13
    :cond_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/bytedance/embedapplog/a/e;->b([Ljava/lang/String;)V

    goto/16 :goto_2

    .line 14
    :cond_4
    invoke-direct {p0, v2}, Lcom/bytedance/embedapplog/a/e;->b([Ljava/lang/String;)V

    goto/16 :goto_2

    .line 15
    :cond_5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 16
    new-instance v0, Lcom/bytedance/embedapplog/a/i;

    iget-object v1, p0, Lcom/bytedance/embedapplog/a/e;->c:Landroid/app/Application;

    iget-object v2, p0, Lcom/bytedance/embedapplog/a/e;->g:Lcom/bytedance/embedapplog/b/i;

    iget-object v3, p0, Lcom/bytedance/embedapplog/a/e;->i:Lcom/bytedance/embedapplog/a/k;

    invoke-direct {v0, v1, v2, v3}, Lcom/bytedance/embedapplog/a/i;-><init>(Landroid/content/Context;Lcom/bytedance/embedapplog/b/i;Lcom/bytedance/embedapplog/a/k;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    new-instance v0, Lcom/bytedance/embedapplog/a/d;

    iget-object v1, p0, Lcom/bytedance/embedapplog/a/e;->c:Landroid/app/Application;

    iget-object v2, p0, Lcom/bytedance/embedapplog/a/e;->g:Lcom/bytedance/embedapplog/b/i;

    iget-object v3, p0, Lcom/bytedance/embedapplog/a/e;->d:Lcom/bytedance/embedapplog/b/h;

    invoke-direct {v0, v1, v2, v3}, Lcom/bytedance/embedapplog/a/d;-><init>(Landroid/content/Context;Lcom/bytedance/embedapplog/b/i;Lcom/bytedance/embedapplog/b/h;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    new-instance v0, Lcom/bytedance/embedapplog/a/h;

    iget-object v1, p0, Lcom/bytedance/embedapplog/a/e;->c:Landroid/app/Application;

    iget-object v2, p0, Lcom/bytedance/embedapplog/a/e;->g:Lcom/bytedance/embedapplog/b/i;

    iget-object v3, p0, Lcom/bytedance/embedapplog/a/e;->f:Lcom/bytedance/embedapplog/d/b;

    invoke-direct {v0, v1, v2, v3}, Lcom/bytedance/embedapplog/a/h;-><init>(Landroid/content/Context;Lcom/bytedance/embedapplog/b/i;Lcom/bytedance/embedapplog/d/b;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    new-instance v0, Lcom/bytedance/embedapplog/a/j;

    iget-object v1, p0, Lcom/bytedance/embedapplog/a/e;->c:Landroid/app/Application;

    iget-object v2, p0, Lcom/bytedance/embedapplog/a/e;->f:Lcom/bytedance/embedapplog/d/b;

    iget-object v3, p0, Lcom/bytedance/embedapplog/a/e;->d:Lcom/bytedance/embedapplog/b/h;

    iget-object v8, p0, Lcom/bytedance/embedapplog/a/e;->g:Lcom/bytedance/embedapplog/b/i;

    invoke-direct {v0, v1, v2, v3, v8}, Lcom/bytedance/embedapplog/a/j;-><init>(Landroid/content/Context;Lcom/bytedance/embedapplog/d/b;Lcom/bytedance/embedapplog/b/h;Lcom/bytedance/embedapplog/b/i;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/embedapplog/a/c;

    .line 21
    invoke-virtual {v0}, Lcom/bytedance/embedapplog/a/c;->h()J

    move-result-wide v1

    cmp-long v3, v1, v5

    if-gez v3, :cond_6

    .line 22
    iget-object v3, p0, Lcom/bytedance/embedapplog/a/e;->h:Landroid/os/Handler;

    iget-object v8, p0, Lcom/bytedance/embedapplog/a/e;->j:Landroid/os/Handler;

    invoke-virtual {v8, v7, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v3, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 23
    :cond_7
    invoke-direct {p0}, Lcom/bytedance/embedapplog/a/e;->f()V

    goto :goto_2

    .line 24
    :cond_8
    iget-object p1, p0, Lcom/bytedance/embedapplog/a/e;->d:Lcom/bytedance/embedapplog/b/h;

    invoke-virtual {p1}, Lcom/bytedance/embedapplog/b/h;->T()Z

    .line 25
    iget-object p1, p0, Lcom/bytedance/embedapplog/a/e;->g:Lcom/bytedance/embedapplog/b/i;

    invoke-virtual {p1}, Lcom/bytedance/embedapplog/b/i;->e()Z

    move-result p1

    const-wide/16 v5, 0x3e8

    if-eqz p1, :cond_a

    .line 26
    iget-object p1, p0, Lcom/bytedance/embedapplog/a/e;->d:Lcom/bytedance/embedapplog/b/h;

    invoke-virtual {p1}, Lcom/bytedance/embedapplog/b/h;->O()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 27
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "bd_tracker_n"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 28
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 29
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/bytedance/embedapplog/a/e;->h:Landroid/os/Handler;

    .line 30
    iget-object p1, p0, Lcom/bytedance/embedapplog/a/e;->h:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 31
    iget-object p1, p0, Lcom/bytedance/embedapplog/a/e;->e:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_9

    .line 32
    iget-object p1, p0, Lcom/bytedance/embedapplog/a/e;->j:Landroid/os/Handler;

    invoke-virtual {p1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 33
    iget-object p1, p0, Lcom/bytedance/embedapplog/a/e;->j:Landroid/os/Handler;

    invoke-virtual {p1, v3, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_9
    const-string p1, "net|worker start"

    .line 34
    invoke-static {p1, v2}, Lcom/bytedance/embedapplog/util/h;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 35
    :cond_a
    iget-object p1, p0, Lcom/bytedance/embedapplog/a/e;->j:Landroid/os/Handler;

    invoke-virtual {p1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 36
    iget-object p1, p0, Lcom/bytedance/embedapplog/a/e;->j:Landroid/os/Handler;

    invoke-virtual {p1, v4, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 37
    :cond_b
    :goto_1
    invoke-static {}, Lcom/bytedance/embedapplog/b/b;->a()V

    :cond_c
    :goto_2
    return v4
.end method
