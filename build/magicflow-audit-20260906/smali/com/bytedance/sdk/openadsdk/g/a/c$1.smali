.class Lcom/bytedance/sdk/openadsdk/g/a/c$1;
.super Ljava/lang/Object;
.source "GifRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/g/a/c;->b(Lc/b/a/a/d/m;)Lc/b/a/a/d/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[B

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/g/a/c;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/g/a/c;[B)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/g/a/c$1;->b:Lcom/bytedance/sdk/openadsdk/g/a/c;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/g/a/c$1;->a:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/a/c$1;->b:Lcom/bytedance/sdk/openadsdk/g/a/c;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/g/a/c;->a(Lcom/bytedance/sdk/openadsdk/g/a/c;)Lcom/bytedance/sdk/openadsdk/g/a/c$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/g/a/c$1;->b:Lcom/bytedance/sdk/openadsdk/g/a/c;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/g/a/c;->a(Lcom/bytedance/sdk/openadsdk/g/a/c;)Lcom/bytedance/sdk/openadsdk/g/a/c$a;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/g/a/c$1;->b:Lcom/bytedance/sdk/openadsdk/g/a/c;

    invoke-virtual {v1}, Lc/b/a/a/d/c;->getUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/g/a/c$1;->a:[B

    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/g/a/c$a;->a(Ljava/lang/String;[B)V

    :cond_0
    return-void
.end method
