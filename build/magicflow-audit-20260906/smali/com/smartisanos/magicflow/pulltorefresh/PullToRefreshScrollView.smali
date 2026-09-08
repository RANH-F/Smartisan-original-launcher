.class public Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshScrollView;
.super Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;
.source "PullToRefreshScrollView.java"


# instance fields
.field private mHeaderScrollView:Lcom/smartisanos/magicflow/pulltorefresh/HeaderScrollView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->hideLoadMore()V

    return-void
.end method


# virtual methods
.method protected addMoreView(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method protected addNoMoreView(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/smartisanos/magicflow/pulltorefresh/RefreshHeaderView;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/smartisanos/magicflow/pulltorefresh/IHeaderBaseView;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshScrollView;->mHeaderScrollView:Lcom/smartisanos/magicflow/pulltorefresh/HeaderScrollView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/smartisanos/magicflow/pulltorefresh/HeaderScrollView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    return-void
.end method

.method protected canPredicateWhenPullDown()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshScrollView;->mHeaderScrollView:Lcom/smartisanos/magicflow/pulltorefresh/HeaderScrollView;

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/pulltorefresh/HeaderScrollView;->getScrollDistance()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected canPredicateWhenPullUpLoad()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected canPredicateWhenPullUpRefresh()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected createRefreshableView(Landroid/util/AttributeSet;Z)Lcom/smartisanos/magicflow/pulltorefresh/IHeaderBaseView;
    .locals 1

    .line 1
    new-instance p2, Lcom/smartisanos/magicflow/pulltorefresh/HeaderScrollView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/smartisanos/magicflow/pulltorefresh/HeaderScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p2, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshScrollView;->mHeaderScrollView:Lcom/smartisanos/magicflow/pulltorefresh/HeaderScrollView;

    .line 2
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshScrollView;->mHeaderScrollView:Lcom/smartisanos/magicflow/pulltorefresh/HeaderScrollView;

    return-object p1
.end method

.method public getRefreshableView()Lcom/smartisanos/magicflow/pulltorefresh/HeaderScrollView;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshScrollView;->mHeaderScrollView:Lcom/smartisanos/magicflow/pulltorefresh/HeaderScrollView;

    return-object v0
.end method

.method public bridge synthetic getRefreshableView()Lcom/smartisanos/magicflow/pulltorefresh/IHeaderBaseView;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshScrollView;->getRefreshableView()Lcom/smartisanos/magicflow/pulltorefresh/HeaderScrollView;

    move-result-object v0

    return-object v0
.end method

.method protected isBottom(Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected isTop()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshScrollView;->mHeaderScrollView:Lcom/smartisanos/magicflow/pulltorefresh/HeaderScrollView;

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/pulltorefresh/HeaderScrollView;->getScrollDistance()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected removeMoreView(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method protected removeNoMoreView(Landroid/view/View;)V
    .locals 0

    return-void
.end method
