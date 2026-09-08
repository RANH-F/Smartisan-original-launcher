.class Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView$4;
.super Ljava/lang/Object;
.source "SwipeListView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;->playDeleteAnimation(Landroid/animation/Animator$AnimatorListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;

.field final synthetic val$listener:Landroid/animation/Animator$AnimatorListener;


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;Landroid/animation/Animator$AnimatorListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView$4;->this$0:Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;

    iput-object p2, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView$4;->val$listener:Landroid/animation/Animator$AnimatorListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView$4;->this$0:Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;

    invoke-static {p1}, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;->access$300(Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;)Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p1

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p1, v0, p1

    .line 2
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 3
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 4
    invoke-static {}, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;->access$500()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 5
    new-instance v0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView$4$1;

    invoke-direct {v0, p0}, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView$4$1;-><init>(Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView$4;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 6
    new-instance v0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView$4$2;

    invoke-direct {v0, p0}, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView$4$2;-><init>(Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView$4;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 7
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView$4;->this$0:Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;

    invoke-static {v0}, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;->access$400(Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;)Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListAdapter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListAdapter;->setAdapterAnimating(Z)V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView$4;->val$listener:Landroid/animation/Animator$AnimatorListener;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    :cond_0
    return-void
.end method
