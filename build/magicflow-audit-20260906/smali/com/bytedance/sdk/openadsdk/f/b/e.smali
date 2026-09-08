.class Lcom/bytedance/sdk/openadsdk/f/b/e;
.super Ljava/lang/Object;
.source "LogUploaderImplEmpty.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/f/b/a;


# static fields
.field private static volatile a:Lcom/bytedance/sdk/openadsdk/f/b/e;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static c()Lcom/bytedance/sdk/openadsdk/f/b/e;
    .locals 2

    .line 1
    sget-object v0, Lcom/bytedance/sdk/openadsdk/f/b/e;->a:Lcom/bytedance/sdk/openadsdk/f/b/e;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/bytedance/sdk/openadsdk/f/b/e;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/openadsdk/f/b/e;->a:Lcom/bytedance/sdk/openadsdk/f/b/e;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/bytedance/sdk/openadsdk/f/b/e;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/f/b/e;-><init>()V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/f/b/e;->a:Lcom/bytedance/sdk/openadsdk/f/b/e;

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
    sget-object v0, Lcom/bytedance/sdk/openadsdk/f/b/e;->a:Lcom/bytedance/sdk/openadsdk/f/b/e;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/f/a/b;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/f/a/b;Z)V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method
