.class Lcom/bytedance/sdk/openadsdk/component/banner/d$2;
.super Ljava/lang/Object;
.source "BannerView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/banner/d;->b(Lcom/bytedance/sdk/openadsdk/component/banner/c;)Landroid/animation/ObjectAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/component/banner/c;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/component/banner/d;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/banner/d;Lcom/bytedance/sdk/openadsdk/component/banner/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/banner/d$2;->b:Lcom/bytedance/sdk/openadsdk/component/banner/d;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/banner/d$2;->a:Lcom/bytedance/sdk/openadsdk/component/banner/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/banner/d$2;->b:Lcom/bytedance/sdk/openadsdk/component/banner/d;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/component/banner/d;->a(Lcom/bytedance/sdk/openadsdk/component/banner/d;Z)Z

    .line 2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/banner/d$2;->b:Lcom/bytedance/sdk/openadsdk/component/banner/d;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/banner/d;->b(Lcom/bytedance/sdk/openadsdk/component/banner/d;)V

    .line 3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/banner/d$2;->a:Lcom/bytedance/sdk/openadsdk/component/banner/c;

    if-eqz p1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/banner/d$2;->b:Lcom/bytedance/sdk/openadsdk/component/banner/d;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/banner/c;->a()Lcom/bytedance/sdk/openadsdk/core/e/k;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/banner/d;->a(Lcom/bytedance/sdk/openadsdk/component/banner/d;Lcom/bytedance/sdk/openadsdk/core/e/k;)V

    :cond_0
    const-string p1, "TTBannerAd"

    const-string v0, "SLIDE END"

    .line 5
    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    const-string p1, "TTBannerAd"

    const-string v0, "SLIDE START"

    .line 1
    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
