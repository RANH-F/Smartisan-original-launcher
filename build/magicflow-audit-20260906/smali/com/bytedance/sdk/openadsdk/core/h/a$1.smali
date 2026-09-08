.class Lcom/bytedance/sdk/openadsdk/core/h/a$1;
.super Ljava/lang/Object;
.source "PlayableCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/h/a;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/h/a;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/h/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/h/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/h/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v0, 0x1

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/h/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/h/a;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/h/a;->a(Lcom/bytedance/sdk/openadsdk/core/h/a;)Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 6
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7
    :try_start_1
    new-instance v5, Ljava/io/File;

    const-string v6, "tt_open_ad_sdk_check_res.dat"

    invoke-direct {v5, v4, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 8
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/h/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/h/a;

    invoke-static {v4, v5, v0}, Lcom/bytedance/sdk/openadsdk/core/h/a;->a(Lcom/bytedance/sdk/openadsdk/core/h/a;Ljava/io/File;Z)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 9
    :catchall_1
    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/h/a$1;->a:Lcom/bytedance/sdk/openadsdk/core/h/a;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/h/a;->b(Lcom/bytedance/sdk/openadsdk/core/h/a;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
