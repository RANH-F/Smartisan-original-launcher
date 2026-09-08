.class Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView$3$1;
.super Ljava/lang/Object;
.source "HorizontalScrollListView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView$3$1;->this$1:Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView$3$1;->this$1:Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView$3;

    iget-object v0, v0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView$3;->val$hintView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 3
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView$3$1;->this$1:Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView$3;

    iget-object v0, v0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView$3;->val$hintView:Landroid/view/View;

    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, p1}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method
