.class Lcom/bytedance/sdk/openadsdk/core/b/b$2;
.super Ljava/lang/Object;
.source "TTBannerExpressAdImpl.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/nativeexpress/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/b/b;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/b/b;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/b/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/b/b$2;->a:Lcom/bytedance/sdk/openadsdk/core/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/b$2;->a:Lcom/bytedance/sdk/openadsdk/core/b/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/b/b;->c(Lcom/bytedance/sdk/openadsdk/core/b/b;)V

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/core/e/k;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/e/k;

    .line 2
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/b$2;->a:Lcom/bytedance/sdk/openadsdk/core/b/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/b/b;->g(Lcom/bytedance/sdk/openadsdk/core/b/b;)Lcom/bytedance/sdk/openadsdk/core/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/b/b$2;->a:Lcom/bytedance/sdk/openadsdk/core/b/b;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/b/b;->i(Lcom/bytedance/sdk/openadsdk/core/b/b;)Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/core/b/a;->a(Lcom/bytedance/sdk/openadsdk/core/e/k;Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/b/b$2;->a:Lcom/bytedance/sdk/openadsdk/core/b/b;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/b/b;->a(Lcom/bytedance/sdk/openadsdk/core/b/b;Lcom/bytedance/sdk/openadsdk/core/e/k;)V

    .line 4
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/b/b$2;->a:Lcom/bytedance/sdk/openadsdk/core/b/b;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/b/b;->g(Lcom/bytedance/sdk/openadsdk/core/b/b;)Lcom/bytedance/sdk/openadsdk/core/b/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/b/a;->e()V

    .line 5
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/b/b$2;->a:Lcom/bytedance/sdk/openadsdk/core/b/b;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/b/b;->c(Lcom/bytedance/sdk/openadsdk/core/b/b;)V

    return-void
.end method
