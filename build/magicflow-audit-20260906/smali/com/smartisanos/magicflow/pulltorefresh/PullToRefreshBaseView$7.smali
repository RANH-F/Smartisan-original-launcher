.class Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$7;
.super Ljava/lang/Object;
.source "PullToRefreshBaseView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->showRefreshing(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;


# direct methods
.method constructor <init>(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$7;->this$0:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;

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
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$7;->this$0:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;

    invoke-static {v0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->access$200(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;)Lcom/smartisanos/magicflow/pulltorefresh/RefreshFooterView;

    move-result-object v0

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$7;->this$0:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;

    invoke-static {v0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->access$1500(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;)Lcom/smartisanos/magicflow/pulltorefresh/IFooterBaseView;

    move-result-object v0

    neg-int p1, p1

    mul-int/lit8 p1, p1, 0x2

    invoke-interface {v0, p1}, Lcom/smartisanos/magicflow/pulltorefresh/IFooterBaseView;->setFooterPadding(I)V

    return-void
.end method
