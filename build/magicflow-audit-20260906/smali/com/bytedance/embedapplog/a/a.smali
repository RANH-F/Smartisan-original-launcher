.class Lcom/bytedance/embedapplog/a/a;
.super Lcom/bytedance/embedapplog/a/c;
.source "SourceFile"


# instance fields
.field private d:J

.field private final e:Lcom/bytedance/embedapplog/b/h;

.field private final f:Lcom/bytedance/embedapplog/b/i;


# direct methods
.method constructor <init>(Landroid/app/Application;Lcom/bytedance/embedapplog/b/i;Lcom/bytedance/embedapplog/b/h;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/bytedance/embedapplog/a/c;-><init>(Landroid/content/Context;)V

    .line 2
    iput-object p2, p0, Lcom/bytedance/embedapplog/a/a;->f:Lcom/bytedance/embedapplog/b/i;

    .line 3
    iput-object p3, p0, Lcom/bytedance/embedapplog/a/a;->e:Lcom/bytedance/embedapplog/b/h;

    return-void
.end method


# virtual methods
.method a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method b()J
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/bytedance/embedapplog/a/a;->e:Lcom/bytedance/embedapplog/b/h;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/b/h;->P()J

    move-result-wide v0

    const-wide/32 v2, 0x927c0

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    move-wide v0, v2

    .line 2
    :cond_0
    iget-wide v2, p0, Lcom/bytedance/embedapplog/a/a;->d:J

    add-long/2addr v2, v0

    return-wide v2
.end method

.method c()[J
    .locals 1

    .line 1
    sget-object v0, Lcom/bytedance/embedapplog/a/i;->g:[J

    return-object v0
.end method

.method d()Z
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/bytedance/embedapplog/a/a;->f:Lcom/bytedance/embedapplog/b/i;

    invoke-virtual {v0}, Lcom/bytedance/embedapplog/b/i;->a()Lorg/json/JSONObject;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/bytedance/embedapplog/a/a;->f:Lcom/bytedance/embedapplog/b/i;

    invoke-virtual {v1}, Lcom/bytedance/embedapplog/b/i;->o()I

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 4
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 5
    iget-object v3, p0, Lcom/bytedance/embedapplog/a/a;->f:Lcom/bytedance/embedapplog/b/i;

    invoke-virtual {v3}, Lcom/bytedance/embedapplog/b/i;->a()Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "header"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "magic_tag"

    const-string v4, "ss_app_log"

    .line 6
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "_gen_time"

    .line 7
    invoke-virtual {v2, v3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 8
    iget-object v3, p0, Lcom/bytedance/embedapplog/a/c;->a:Landroid/content/Context;

    iget-object v4, p0, Lcom/bytedance/embedapplog/a/a;->f:Lcom/bytedance/embedapplog/b/i;

    .line 9
    invoke-virtual {v4}, Lcom/bytedance/embedapplog/b/i;->a()Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {}, Lcom/bytedance/embedapplog/c/a;->a()Lcom/bytedance/embedapplog/util/UriConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bytedance/embedapplog/util/UriConfig;->getABConfigUri()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/bytedance/embedapplog/AppLog;->getIAppParam()Lcom/bytedance/embedapplog/IAppParam;

    move-result-object v6

    const/4 v7, 0x1

    .line 10
    invoke-static {v3, v4, v5, v7, v6}, Lcom/bytedance/embedapplog/c/b;->a(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;ZLcom/bytedance/embedapplog/IAppParam;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/bytedance/embedapplog/c/a;->d(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 11
    invoke-static {}, Lcom/bytedance/embedapplog/AppLog;->getAbConfig()Lorg/json/JSONObject;

    move-result-object v3

    .line 12
    invoke-static {}, Lcom/bytedance/embedapplog/AppLog;->getDataObserver()Lcom/bytedance/embedapplog/IDataObserver;

    move-result-object v4

    invoke-static {v3, v2}, Lcom/bytedance/embedapplog/util/i;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z

    move-result v3

    xor-int/2addr v3, v7

    invoke-interface {v4, v3, v2}, Lcom/bytedance/embedapplog/IDataObserver;->onRemoteAbConfigGet(ZLorg/json/JSONObject;)V

    .line 13
    sget-boolean v3, Lcom/bytedance/embedapplog/util/h;->a:Z

    if-eqz v3, :cond_0

    .line 14
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAbConfig "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/bytedance/embedapplog/util/h;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 15
    :cond_0
    iget-object v3, p0, Lcom/bytedance/embedapplog/a/a;->f:Lcom/bytedance/embedapplog/b/i;

    invoke-virtual {v3, v2}, Lcom/bytedance/embedapplog/b/i;->a(Lorg/json/JSONObject;)V

    .line 16
    iput-wide v0, p0, Lcom/bytedance/embedapplog/a/a;->d:J

    return v7

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method e()Ljava/lang/String;
    .locals 1

    const-string v0, "ab"

    return-object v0
.end method
