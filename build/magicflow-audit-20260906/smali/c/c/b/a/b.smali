.class public Lc/c/b/a/b;
.super Ljava/lang/Object;


# static fields
.field static a:I = 0x1f8

.field static b:Z = false

.field static c:Ljava/lang/String; = ""

.field static d:Ljava/lang/String; = ""


# direct methods
.method public static a()Ljava/lang/String;
    .locals 4

    const-string v0, ""

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "os"

    const-string v3, "Android"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "version"

    const-string v3, "1.0.3"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-boolean v2, Lc/c/b/a/b;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "token_id"

    if-eqz v2, :cond_0

    :try_start_1
    sget-object v2, Lc/c/b/a/b;->d:Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_0
    const-string v2, "code"

    sget v3, Lc/c/b/a/b;->a:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0

    :catchall_0
    const-string v1, "Call onEvent Error"

    invoke-static {v1}, Lc/c/a/b/d;->a(Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lc/c/b/a/a/a;)V
    .locals 3

    sget v0, Lc/c/b/a/b;->a:I

    const/16 v1, 0x66

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const/16 v2, 0xca

    if-ne v0, v2, :cond_1

    return-void

    :cond_1
    const/16 v2, 0xc8

    if-ne v0, v2, :cond_2

    return-void

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    const/4 v0, 0x0

    sput-boolean v0, Lc/c/b/a/b;->b:Z

    sput-object p1, Lc/c/b/a/b;->c:Ljava/lang/String;

    sput v1, Lc/c/b/a/b;->a:I

    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lc/c/b/a/d;

    invoke-direct {v0, p0, p2}, Lc/c/b/a/d;-><init>(Landroid/content/Context;Lc/c/b/a/a/a;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const-string p0, "CZL-3"

    invoke-virtual {p1, p0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method
