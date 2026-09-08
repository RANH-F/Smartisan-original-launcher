.class Lcom/bytedance/sdk/openadsdk/core/d/a$4;
.super Ljava/lang/Object;
.source "TTInteractionExpressAdImpl.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/l$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/d/a;->a(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/d/a;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/d/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/a$4;->a:Lcom/bytedance/sdk/openadsdk/core/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 2

    .line 3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/a$4;->a:Lcom/bytedance/sdk/openadsdk/core/d/a;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/d/a;->g(Lcom/bytedance/sdk/openadsdk/core/d/a;)V

    .line 4
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/a$4;->a:Lcom/bytedance/sdk/openadsdk/core/d/a;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/d/a;->b(Lcom/bytedance/sdk/openadsdk/core/d/a;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/a$4;->a:Lcom/bytedance/sdk/openadsdk/core/d/a;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/d/a;->f(Lcom/bytedance/sdk/openadsdk/core/d/a;)Lcom/bytedance/sdk/openadsdk/core/e/k;

    move-result-object v0

    const-string v1, "interaction"

    invoke-static {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/c/d;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/e/k;Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/a$4;->a:Lcom/bytedance/sdk/openadsdk/core/d/a;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/d/a;->i(Lcom/bytedance/sdk/openadsdk/core/d/a;)Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$AdInteractionListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 6
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/a$4;->a:Lcom/bytedance/sdk/openadsdk/core/d/a;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/d/a;->i(Lcom/bytedance/sdk/openadsdk/core/d/a;)Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$AdInteractionListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$AdInteractionListener;->onAdDismiss()V

    :cond_0
    const-string p1, "TTInteractionExpressAd"

    const-string v0, "dislike\u4e8b\u4ef6\u53d1\u51fa"

    .line 7
    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/FrameLayout;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/a$4;->a:Lcom/bytedance/sdk/openadsdk/core/d/a;

    invoke-static {p1, p3}, Lcom/bytedance/sdk/openadsdk/core/d/a;->a(Lcom/bytedance/sdk/openadsdk/core/d/a;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;

    .line 2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/a$4;->a:Lcom/bytedance/sdk/openadsdk/core/d/a;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/d/a;->h(Lcom/bytedance/sdk/openadsdk/core/d/a;)Landroid/widget/FrameLayout;

    move-result-object p1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/d/a$4;->a:Lcom/bytedance/sdk/openadsdk/core/d/a;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/d/a;->e(Lcom/bytedance/sdk/openadsdk/core/d/a;)Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    move-result-object p2

    new-instance p3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p3, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
