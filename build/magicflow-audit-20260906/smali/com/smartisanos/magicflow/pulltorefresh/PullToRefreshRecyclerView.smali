.class public Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshRecyclerView;
.super Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;
.source "PullToRefreshRecyclerView.java"


# instance fields
.field mRecyclerView:Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshRecyclerView;->init()V

    return-void
.end method


# virtual methods
.method protected addMoreView(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshRecyclerView;->mRecyclerView:Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView;

    invoke-virtual {v0, p1}, Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView;->addFooterView(Landroid/view/View;)V

    return-void
.end method

.method protected addNoMoreView(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method protected canPredicateWhenPullDown()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshRecyclerView;->mRecyclerView:Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshRecyclerView;->mRecyclerView:Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method protected canPredicateWhenPullUpLoad()Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshRecyclerView;->isBottom(Z)Z

    move-result v0

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
    new-instance p2, Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p2, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshRecyclerView;->mRecyclerView:Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView;

    .line 2
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshRecyclerView;->mRecyclerView:Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView;

    return-object p1
.end method

.method init()V
    .locals 0

    return-void
.end method

.method protected isBottom(Z)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 1
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshRecyclerView;->mRecyclerView:Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView;

    invoke-virtual {p1}, Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView;->getLinearLayoutManager()Landroid/support/v7/widget/LinearLayoutManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p1

    iget-object v2, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshRecyclerView;->mRecyclerView:Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v2

    iget-object v3, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshRecyclerView;->mRecyclerView:Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView;

    invoke-virtual {v3}, Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView;->getHeaderCount()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x5

    if-lt p1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0

    .line 2
    :cond_1
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshRecyclerView;->mRecyclerView:Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView;

    invoke-virtual {p1}, Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView;->getLinearLayoutManager()Landroid/support/v7/widget/LinearLayoutManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p1

    iget-object v2, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshRecyclerView;->mRecyclerView:Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v2

    iget-object v3, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshRecyclerView;->mRecyclerView:Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView;

    invoke-virtual {v3}, Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView;->getHeaderCount()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x3

    if-lt p1, v2, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    return v0
.end method

.method protected isTop()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshRecyclerView;->mRecyclerView:Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method protected removeMoreView(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshRecyclerView;->mRecyclerView:Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView;

    invoke-virtual {v0, p1}, Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView;->removeFooterView(Landroid/view/View;)V

    return-void
.end method

.method protected removeNoMoreView(Landroid/view/View;)V
    .locals 0

    return-void
.end method
