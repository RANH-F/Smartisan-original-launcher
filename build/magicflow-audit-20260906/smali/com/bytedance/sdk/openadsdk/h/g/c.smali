.class public Lcom/bytedance/sdk/openadsdk/h/g/c;
.super Ljava/lang/Object;
.source "StorageList.java"


# static fields
.field private static e:Lcom/bytedance/sdk/openadsdk/h/g/c;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/Object;

.field private c:Ljava/lang/reflect/Method;

.field private d:Ljava/lang/reflect/Method;


# direct methods
.method private constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/g/c;->a:Landroid/content/Context;

    .line 3
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/g/c;->b:Ljava/lang/Object;

    .line 4
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/g/c;->c:Ljava/lang/reflect/Method;

    .line 5
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/g/c;->d:Ljava/lang/reflect/Method;

    .line 6
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->a()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/g/c;->a:Landroid/content/Context;

    .line 7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/g/c;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    const-string v1, "storage"

    .line 8
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/g/c;->b:Ljava/lang/Object;

    .line 9
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/g/c;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getVolumeList"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/g/c;->c:Ljava/lang/reflect/Method;

    .line 10
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/g/c;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getVolumeState"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v2

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/g/c;->d:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public static a()Lcom/bytedance/sdk/openadsdk/h/g/c;
    .locals 2

    .line 1
    sget-object v0, Lcom/bytedance/sdk/openadsdk/h/g/c;->e:Lcom/bytedance/sdk/openadsdk/h/g/c;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/bytedance/sdk/openadsdk/h/g/c;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/openadsdk/h/g/c;->e:Lcom/bytedance/sdk/openadsdk/h/g/c;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/bytedance/sdk/openadsdk/h/g/c;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/h/g/c;-><init>()V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/h/g/c;->e:Lcom/bytedance/sdk/openadsdk/h/g/c;

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
    sget-object v0, Lcom/bytedance/sdk/openadsdk/h/g/c;->e:Lcom/bytedance/sdk/openadsdk/h/g/c;

    return-object v0
.end method


# virtual methods
.method public b()Z
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/g/c;->b:Ljava/lang/Object;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/h/g/c;->c:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_6

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/h/g/c;->d:Ljava/lang/reflect/Method;

    if-nez v3, :cond_0

    goto :goto_3

    :cond_0
    :try_start_0
    new-array v3, v1, [Ljava/lang/Object;

    .line 2
    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    if-eqz v0, :cond_5

    .line 3
    array-length v2, v0

    if-nez v2, :cond_1

    goto :goto_2

    .line 4
    :cond_1
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getPath"

    new-array v4, v1, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 5
    aget-object v3, v0, v1

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "isEmulated"

    new-array v5, v1, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    if-eqz v2, :cond_5

    if-nez v3, :cond_2

    goto :goto_2

    .line 6
    :cond_2
    array-length v4, v0

    move v5, v1

    :goto_0
    if-ge v5, v4, :cond_6

    aget-object v6, v0, v5

    new-array v7, v1, [Ljava/lang/Object;

    .line 7
    invoke-virtual {v3, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_3

    goto :goto_1

    :cond_3
    new-array v7, v1, [Ljava/lang/Object;

    .line 8
    invoke-virtual {v2, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 9
    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/h/g/c;->d:Ljava/lang/reflect/Method;

    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/h/g/c;->b:Ljava/lang/Object;

    const/4 v9, 0x1

    new-array v10, v9, [Ljava/lang/Object;

    aput-object v6, v10, v1

    invoke-virtual {v7, v8, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    const-string v7, "mounted"

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v6, :cond_4

    return v9

    :cond_4
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    :goto_2
    return v1

    :catch_0
    move-exception v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6
    :goto_3
    return v1
.end method
