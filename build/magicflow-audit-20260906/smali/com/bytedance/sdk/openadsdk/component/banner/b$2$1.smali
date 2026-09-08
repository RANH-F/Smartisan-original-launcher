.class Lcom/bytedance/sdk/openadsdk/component/banner/b$2$1;
.super Ljava/lang/Object;
.source "BannerAdManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/component/banner/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/banner/b$2;->a(Lcom/bytedance/sdk/openadsdk/core/e/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/component/banner/b$2;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/banner/b$2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/banner/b$2$1;->a:Lcom/bytedance/sdk/openadsdk/component/banner/b$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/b$2$1;->a:Lcom/bytedance/sdk/openadsdk/component/banner/b$2;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/banner/b$2;->a:Lcom/bytedance/sdk/openadsdk/TTAdNative$BannerAdListener;

    const/4 v1, -0x5

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/g;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/TTAdNative$BannerAdListener;->onError(ILjava/lang/String;)V

    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/component/banner/a;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/b$2$1;->a:Lcom/bytedance/sdk/openadsdk/component/banner/b$2;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/banner/b$2;->c:Lcom/bytedance/sdk/openadsdk/component/banner/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/banner/b;->a(Lcom/bytedance/sdk/openadsdk/component/banner/b;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/banner/e;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/banner/b$2$1;->a:Lcom/bytedance/sdk/openadsdk/component/banner/b$2;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/banner/b$2;->c:Lcom/bytedance/sdk/openadsdk/component/banner/b;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/component/banner/b;->a(Lcom/bytedance/sdk/openadsdk/component/banner/b;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/banner/b$2$1;->a:Lcom/bytedance/sdk/openadsdk/component/banner/b$2;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/component/banner/b$2;->b:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-direct {v0, v1, p1, v2}, Lcom/bytedance/sdk/openadsdk/component/banner/e;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/component/banner/a;Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    .line 3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/banner/b$2$1;->a:Lcom/bytedance/sdk/openadsdk/component/banner/b$2;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/banner/b$2;->a:Lcom/bytedance/sdk/openadsdk/TTAdNative$BannerAdListener;

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/TTAdNative$BannerAdListener;->onBannerAdLoad(Lcom/bytedance/sdk/openadsdk/TTBannerAd;)V

    :cond_0
    return-void
.end method
