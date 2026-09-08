.class Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$10;
.super Ljava/lang/Object;
.source "PullToRefreshBaseView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->doFinishRefreshing(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;

.field final synthetic val$headerClipBottom:I


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$10;->this$0:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;

    iput p2, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$10;->val$headerClipBottom:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$10;->this$0:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;

    invoke-static {v0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->access$600(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;)Lcom/smartisanos/magicflow/pulltorefresh/IHeaderBaseView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$10;->this$0:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;

    invoke-static {v0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->access$600(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;)Lcom/smartisanos/magicflow/pulltorefresh/IHeaderBaseView;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/smartisanos/magicflow/pulltorefresh/IHeaderBaseView;->setHeaderPadding(I)V

    .line 4
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$10;->this$0:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;

    invoke-static {v0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->access$2600(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;)Lcom/smartisanos/magicflow/pulltorefresh/RefreshHeaderView;

    move-result-object v0

    iget v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$10;->val$headerClipBottom:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/pulltorefresh/RefreshHeaderView;->setClipBottom(I)V

    .line 5
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$10;->this$0:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;

    invoke-static {v0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->access$2900(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$10;->this$0:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;

    invoke-static {v0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->access$2600(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;)Lcom/smartisanos/magicflow/pulltorefresh/RefreshHeaderView;

    move-result-object v0

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    :cond_1
    return-void
.end method
