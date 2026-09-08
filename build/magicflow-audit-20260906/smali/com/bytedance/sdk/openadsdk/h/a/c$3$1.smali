.class Lcom/bytedance/sdk/openadsdk/h/a/c$3$1;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/h/a/c$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/h/a/c$3;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/h/a/c$3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/h/a/c$3$1;->a:Lcom/bytedance/sdk/openadsdk/h/a/c$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/h/a/c$3$1;->a:Lcom/bytedance/sdk/openadsdk/h/a/c$3;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/h/a/c$3;->a:Lcom/bytedance/sdk/openadsdk/h/a/c;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/a/c;->a(Lcom/bytedance/sdk/openadsdk/h/a/c;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/h/a/c;->a(Lcom/bytedance/sdk/openadsdk/h/a/c;J)V

    return-void
.end method
