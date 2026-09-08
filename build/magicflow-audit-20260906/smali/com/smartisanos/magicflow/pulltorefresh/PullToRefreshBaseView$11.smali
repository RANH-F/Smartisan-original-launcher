.class Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$11;
.super Ljava/lang/Object;
.source "PullToRefreshBaseView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


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

.field final synthetic val$refreshMethod:I


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$11;->this$0:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;

    iput p2, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$11;->val$refreshMethod:I

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
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$11;->this$0:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->mIsSyncing:Z

    .line 2
    invoke-static {p1, v0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->access$002(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;Z)Z

    .line 3
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$11;->this$0:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;

    const/4 v0, 0x3

    invoke-static {p1, v0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->access$102(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;I)I

    .line 4
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$11;->this$0:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;

    invoke-static {p1}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->access$2400(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;)Landroid/widget/ImageView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 5
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$11;->this$0:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;

    invoke-static {p1}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->access$600(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;)Lcom/smartisanos/magicflow/pulltorefresh/IHeaderBaseView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 6
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$11;->this$0:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;

    invoke-static {p1}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->access$2600(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;)Lcom/smartisanos/magicflow/pulltorefresh/RefreshHeaderView;

    move-result-object p1

    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$11;->this$0:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;

    invoke-static {v0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->access$600(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;)Lcom/smartisanos/magicflow/pulltorefresh/IHeaderBaseView;

    move-result-object v0

    invoke-interface {v0}, Lcom/smartisanos/magicflow/pulltorefresh/IHeaderBaseView;->getHeaderHeight()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/smartisanos/magicflow/pulltorefresh/RefreshHeaderView;->setClipBottom(I)V

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$11;->this$0:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;

    invoke-static {p1}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->access$1000(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;)V

    .line 8
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$11;->this$0:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;

    invoke-static {p1}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->access$100(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;)I

    move-result v0

    iget v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$11;->val$refreshMethod:I

    invoke-static {p1, v0, v1}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->access$700(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;II)V

    .line 9
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$11;->this$0:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->access$2200(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;I)V

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
