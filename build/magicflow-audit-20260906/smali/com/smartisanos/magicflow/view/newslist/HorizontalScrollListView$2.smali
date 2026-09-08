.class Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView$2;
.super Ljava/lang/Object;
.source "HorizontalScrollListView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->playDeleteItemAnimation(Landroid/animation/Animator$AnimatorListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;

.field final synthetic val$hintView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView$2;->this$0:Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;

    iput-object p2, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView$2;->val$hintView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView$2;->this$0:Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->getScrollHandleView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 3
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView$2;->val$hintView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/View;->scrollTo(II)V

    :cond_0
    return-void
.end method
