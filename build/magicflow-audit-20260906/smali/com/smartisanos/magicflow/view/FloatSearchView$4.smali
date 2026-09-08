.class Lcom/smartisanos/magicflow/view/FloatSearchView$4;
.super Ljava/lang/Object;
.source "FloatSearchView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/view/FloatSearchView;->continueHide(Lcom/smartisanos/magicflow/view/weather/HeadView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smartisanos/magicflow/view/FloatSearchView;


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/view/FloatSearchView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/FloatSearchView$4;->this$0:Lcom/smartisanos/magicflow/view/FloatSearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/FloatSearchView$4;->this$0:Lcom/smartisanos/magicflow/view/FloatSearchView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/smartisanos/magicflow/view/FloatSearchView;->access$202(Lcom/smartisanos/magicflow/view/FloatSearchView;Z)Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/FloatSearchView$4;->this$0:Lcom/smartisanos/magicflow/view/FloatSearchView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/smartisanos/magicflow/view/FloatSearchView;->access$202(Lcom/smartisanos/magicflow/view/FloatSearchView;Z)Z

    .line 2
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/FloatSearchView$4;->this$0:Lcom/smartisanos/magicflow/view/FloatSearchView;

    invoke-static {p1}, Lcom/smartisanos/magicflow/view/FloatSearchView;->access$300(Lcom/smartisanos/magicflow/view/FloatSearchView;)Landroid/widget/FrameLayout;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
