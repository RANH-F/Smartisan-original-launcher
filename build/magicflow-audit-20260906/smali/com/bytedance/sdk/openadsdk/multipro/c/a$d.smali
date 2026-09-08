.class Lcom/bytedance/sdk/openadsdk/multipro/c/a$d;
.super Ljava/lang/Object;
.source "AdEventProviderImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/multipro/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# static fields
.field private static volatile a:Lcom/bytedance/sdk/openadsdk/i/a;


# direct methods
.method public static a()Lcom/bytedance/sdk/openadsdk/i/a;
    .locals 5

    .line 1
    sget-object v0, Lcom/bytedance/sdk/openadsdk/multipro/c/a$d;->a:Lcom/bytedance/sdk/openadsdk/i/a;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/bytedance/sdk/openadsdk/i/a;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/openadsdk/multipro/c/a$d;->a:Lcom/bytedance/sdk/openadsdk/i/a;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcom/bytedance/sdk/openadsdk/i/b;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->a()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/bytedance/sdk/openadsdk/i/g;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/n;->a()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/bytedance/sdk/openadsdk/i/g;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/i/b;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/i/f;)V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/multipro/c/a$d;->a:Lcom/bytedance/sdk/openadsdk/i/a;

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
    sget-object v0, Lcom/bytedance/sdk/openadsdk/multipro/c/a$d;->a:Lcom/bytedance/sdk/openadsdk/i/a;

    return-object v0
.end method
