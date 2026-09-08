.class Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView$3$2;
.super Ljava/lang/Object;
.source "HorizontalScrollListView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView$3;->onAnimationEnd(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView$3;


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView$3;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView$3$2;->this$1:Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView$3$2;->this$1:Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView$3;

    iget-object p1, p1, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView$3;->this$0:Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->access$702(Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;Z)Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView$3$2;->this$1:Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView$3;

    iget-object v0, v0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView$3;->this$0:Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->restoreScrollState(Z)Z

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView$3$2;->this$1:Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView$3;

    iget-object v0, v0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView$3;->val$btnsView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 3
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 4
    check-cast v0, Landroid/view/ViewGroup;

    .line 5
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_1

    .line 6
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 7
    invoke-virtual {v4}, Landroid/view/View;->clearAnimation()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView$3$2;->this$1:Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView$3;

    iget-object v2, v0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView$3;->val$otherBtnsView:Landroid/view/View;

    if-eqz v2, :cond_2

    .line 10
    iget v0, v0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView$3;->val$otherBtnsVisibility:I

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView$3$2;->this$1:Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView$3;

    iget-object v2, v0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView$3;->val$hintView:Landroid/view/View;

    iget v0, v0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView$3;->val$fromXDelta:I

    invoke-virtual {v2, v0, v1}, Landroid/view/View;->scrollTo(II)V

    .line 12
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView$3$2;->this$1:Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView$3;

    iget-object v0, v0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView$3;->val$listener:Landroid/animation/Animator$AnimatorListener;

    if-eqz v0, :cond_3

    .line 13
    invoke-interface {v0, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 14
    :cond_3
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView$3$2;->this$1:Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView$3;

    iget-object p1, p1, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView$3;->this$0:Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;

    invoke-static {p1, v1}, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->access$702(Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;Z)Z

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
