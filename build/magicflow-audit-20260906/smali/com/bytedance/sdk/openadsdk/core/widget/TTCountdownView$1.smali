.class Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TTCountdownView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->a(Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;Z)Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->a(Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->a(Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;Z)Z

    return-void

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->b(Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;)Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView$a;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->b(Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;)Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView$a;->b()V

    :cond_1
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->b(Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;)Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView$a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView$1;->a:Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;->b(Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView;)Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/TTCountdownView$a;->a()V

    :cond_0
    return-void
.end method
