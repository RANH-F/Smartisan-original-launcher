.class public final Lcom/bytedance/tea/crash/i/e;
.super Ljava/lang/Object;
.source "CrashFileCollector.java"


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/bytedance/tea/crash/i/e;->a:Landroid/content/Context;

    return-void
.end method

.method private a(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/bytedance/tea/crash/f;
    .locals 2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 10
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    const-string v1, "launch_"

    .line 11
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 12
    sget-object p1, Lcom/bytedance/tea/crash/f;->b:Lcom/bytedance/tea/crash/f;

    return-object p1

    :cond_1
    const-string v1, "anr_"

    .line 13
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 14
    sget-object p1, Lcom/bytedance/tea/crash/f;->e:Lcom/bytedance/tea/crash/f;

    return-object p1

    :cond_2
    const-string v1, "java_"

    .line 15
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "is_dart"

    .line 16
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    .line 17
    sget-object p1, Lcom/bytedance/tea/crash/f;->h:Lcom/bytedance/tea/crash/f;

    return-object p1

    :cond_3
    const-string p1, "isJava"

    .line 18
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    if-ne p1, v1, :cond_4

    .line 19
    sget-object p1, Lcom/bytedance/tea/crash/f;->c:Lcom/bytedance/tea/crash/f;

    return-object p1

    :cond_4
    return-object v0
.end method

.method private a()V
    .locals 6

    const-string v0, "history_time"

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/bytedance/tea/crash/i/e;->a:Landroid/content/Context;

    const-string v2, "npth"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-wide/16 v2, -0x1

    .line 4
    invoke-interface {v1, v0, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gez v4, :cond_0

    .line 5
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v1, v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    const-wide/32 v2, 0x5265c00

    cmp-long v2, v4, v2

    if-lez v2, :cond_1

    .line 7
    iget-object v2, p0, Lcom/bytedance/tea/crash/i/e;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/bytedance/tea/crash/m/h;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/tea/crash/m/d;->a(Ljava/io/File;)Z

    .line 8
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v1, v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method private a(Ljava/io/File;Ljava/lang/String;)[Ljava/io/File;
    .locals 1

    .line 20
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 21
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 22
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    goto :goto_0

    .line 23
    :cond_1
    new-instance p2, Lcom/bytedance/tea/crash/i/e$a;

    invoke-direct {p2, p0}, Lcom/bytedance/tea/crash/i/e$a;-><init>(Lcom/bytedance/tea/crash/i/e;)V

    invoke-virtual {p1, p2}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private b()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/bytedance/tea/crash/i/e;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/tea/crash/m/h;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    const-string v1, ".npth"

    invoke-direct {p0, v0, v1}, Lcom/bytedance/tea/crash/i/e;->a(Ljava/io/File;Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    const/4 v1, 0x0

    .line 3
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_3

    const/16 v2, 0x32

    if-ge v1, v2, :cond_3

    .line 4
    aget-object v2, v0, v1

    .line 5
    :try_start_0
    invoke-static {}, Lcom/bytedance/tea/crash/c/b;->a()Lcom/bytedance/tea/crash/c/b;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/bytedance/tea/crash/c/b;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6
    invoke-static {v2}, Lcom/bytedance/tea/crash/m/d;->a(Ljava/io/File;)Z

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/bytedance/tea/crash/m/d;->c(Ljava/lang/String;)Lcom/bytedance/tea/crash/e/c;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 8
    invoke-virtual {v3}, Lcom/bytedance/tea/crash/e/c;->b()Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 9
    invoke-virtual {v3}, Lcom/bytedance/tea/crash/e/c;->b()Lorg/json/JSONObject;

    move-result-object v4

    .line 10
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v4}, Lcom/bytedance/tea/crash/i/e;->a(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/bytedance/tea/crash/f;

    .line 11
    invoke-virtual {v3}, Lcom/bytedance/tea/crash/e/c;->b()Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "upload_scene"

    const-string v7, "launch_scan"

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 12
    invoke-virtual {v3}, Lcom/bytedance/tea/crash/e/c;->a()Ljava/lang/String;

    move-result-object v5

    .line 13
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/bytedance/tea/crash/e/c;->c()Z

    move-result v3

    .line 14
    invoke-static {v5, v4, v3}, Lcom/bytedance/tea/crash/upload/b;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/bytedance/tea/crash/upload/f;

    move-result-object v3

    .line 15
    invoke-virtual {v3}, Lcom/bytedance/tea/crash/upload/f;->a()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 16
    invoke-static {v2}, Lcom/bytedance/tea/crash/m/d;->a(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 17
    invoke-static {}, Lcom/bytedance/tea/crash/c/b;->a()Lcom/bytedance/tea/crash/c/b;

    move-result-object v3

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/tea/crash/c/a/a;->a(Ljava/lang/String;)Lcom/bytedance/tea/crash/c/a/a;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/bytedance/tea/crash/c/b;->a(Lcom/bytedance/tea/crash/c/a/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 18
    invoke-static {v2}, Lcom/bytedance/tea/crash/m/j;->b(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/tea/crash/i/e;->a()V

    if-eqz p1, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/bytedance/tea/crash/i/e;->b()V

    :cond_0
    return-void
.end method
