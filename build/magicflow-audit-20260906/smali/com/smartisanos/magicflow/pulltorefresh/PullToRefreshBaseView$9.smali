.class Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$9;
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

.field final synthetic val$refreshMethod:I


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$9;->this$0:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;

    iput p2, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$9;->val$refreshMethod:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$9;->this$0:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;

    invoke-static {v0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->access$2700(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 3
    iget v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$9;->val$refreshMethod:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$9;->this$0:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;

    invoke-static {v0, p1}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->access$2200(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;I)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$9;->this$0:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;

    invoke-static {v0, p1}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->access$2800(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;I)V

    :cond_1
    :goto_0
    return-void
.end method
