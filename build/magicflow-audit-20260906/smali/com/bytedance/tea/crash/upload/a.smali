.class public Lcom/bytedance/tea/crash/upload/a;
.super Ljava/lang/Object;
.source "CrashUploadManager.java"


# static fields
.field private static volatile b:Lcom/bytedance/tea/crash/upload/a;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field private volatile a:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/bytedance/tea/crash/upload/a;->a:Landroid/content/Context;

    return-void
.end method

.method public static a()Lcom/bytedance/tea/crash/upload/a;
    .locals 2

    .line 1
    sget-object v0, Lcom/bytedance/tea/crash/upload/a;->b:Lcom/bytedance/tea/crash/upload/a;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/bytedance/tea/crash/upload/a;

    invoke-static {}, Lcom/bytedance/tea/crash/o;->d()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bytedance/tea/crash/upload/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/bytedance/tea/crash/upload/a;->b:Lcom/bytedance/tea/crash/upload/a;

    .line 3
    :cond_0
    sget-object v0, Lcom/bytedance/tea/crash/upload/a;->b:Lcom/bytedance/tea/crash/upload/a;

    return-object v0
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/bytedance/tea/crash/o;->a()Lcom/bytedance/tea/crash/i/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/tea/crash/i/b;->a()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/tea/crash/upload/b;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 6
    iget-object v2, p0, Lcom/bytedance/tea/crash/upload/a;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/bytedance/tea/crash/m/h;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    .line 7
    invoke-static {}, Lcom/bytedance/tea/crash/m/h;->a()Ljava/lang/String;

    move-result-object v3

    .line 8
    invoke-static {}, Lcom/bytedance/tea/crash/upload/b;->a()Z

    move-result v4

    .line 9
    invoke-static {v2, v3, v1, p1, v4}, Lcom/bytedance/tea/crash/m/d;->a(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Z)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    :cond_1
    :goto_0
    return-object v0
.end method

.method public b(Lorg/json/JSONObject;)V
    .locals 4

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/bytedance/tea/crash/o;->a()Lcom/bytedance/tea/crash/i/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/tea/crash/i/b;->a()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/tea/crash/upload/b;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/bytedance/tea/crash/upload/a;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/bytedance/tea/crash/m/h;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 4
    invoke-static {}, Lcom/bytedance/tea/crash/m/h;->b()Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-static {}, Lcom/bytedance/tea/crash/upload/b;->b()Z

    move-result v3

    .line 6
    invoke-static {v1, v2, v0, p1, v3}, Lcom/bytedance/tea/crash/m/d;->a(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "upload_scene"

    const-string v3, "direct"

    .line 7
    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bytedance/tea/crash/upload/b;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/tea/crash/upload/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/tea/crash/upload/f;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 9
    invoke-static {v1}, Lcom/bytedance/tea/crash/m/d;->a(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    :goto_0
    return-void
.end method
