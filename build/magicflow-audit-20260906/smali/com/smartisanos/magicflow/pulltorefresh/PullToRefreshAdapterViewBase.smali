.class public abstract Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshAdapterViewBase;
.super Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;
.source "PullToRefreshAdapterViewBase.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/widget/AbsListView;",
        ">",
        "Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase<",
        "TT;>;",
        "Landroid/widget/AbsListView$OnScrollListener;"
    }
.end annotation


# instance fields
.field private mEmptyView:Landroid/view/View;

.field private mIndicatorIvBottom:Lcom/smartisanos/magicflow/pulltorefresh/internal/IndicatorLayout;

.field private mIndicatorIvTop:Lcom/smartisanos/magicflow/pulltorefresh/internal/IndicatorLayout;

.field private mLastItemVisible:Z

.field private mOnLastItemVisibleListener:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$OnLastItemVisibleListener;

.field private mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private mScrollEmptyView:Z

.field private mShowIndicator:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshAdapterViewBase;->mScrollEmptyView:Z

    .line 3
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mRefreshableView:Landroid/view/View;

    check-cast p1, Landroid/widget/AbsListView;

    invoke-virtual {p1, p0}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshAdapterViewBase;->mScrollEmptyView:Z

    .line 6
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mRefreshableView:Landroid/view/View;

    check-cast p1, Landroid/widget/AbsListView;

    invoke-virtual {p1, p0}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;-><init>(Landroid/content/Context;Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;)V

    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshAdapterViewBase;->mScrollEmptyView:Z

    .line 9
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mRefreshableView:Landroid/view/View;

    check-cast p1, Landroid/widget/AbsListView;

    invoke-virtual {p1, p0}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$AnimationStyle;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1, p2, p3}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;-><init>(Landroid/content/Context;Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$AnimationStyle;)V

    const/4 p1, 0x1

    .line 11
    iput-boolean p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshAdapterViewBase;->mScrollEmptyView:Z

    .line 12
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mRefreshableView:Landroid/view/View;

    check-cast p1, Landroid/widget/AbsListView;

    invoke-virtual {p1, p0}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method

.method private addIndicatorViews()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->getMode()Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->getRefreshableViewWrapper()Landroid/widget/FrameLayout;

    move-result-object v1

    .line 3
    invoke-virtual {v0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result v2

    const/4 v3, 0x0

    const v4, 0x7f060177

    const/4 v5, -0x2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshAdapterViewBase;->mIndicatorIvTop:Lcom/smartisanos/magicflow/pulltorefresh/internal/IndicatorLayout;

    if-nez v2, :cond_0

    .line 4
    new-instance v2, Lcom/smartisanos/magicflow/pulltorefresh/internal/IndicatorLayout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    sget-object v7, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;->PULL_FROM_START:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;

    invoke-direct {v2, v6, v7}, Lcom/smartisanos/magicflow/pulltorefresh/internal/IndicatorLayout;-><init>(Landroid/content/Context;Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;)V

    iput-object v2, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshAdapterViewBase;->mIndicatorIvTop:Lcom/smartisanos/magicflow/pulltorefresh/internal/IndicatorLayout;

    .line 5
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 6
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    const/16 v6, 0x35

    .line 7
    iput v6, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 8
    iget-object v6, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshAdapterViewBase;->mIndicatorIvTop:Lcom/smartisanos/magicflow/pulltorefresh/internal/IndicatorLayout;

    invoke-virtual {v1, v6, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {v0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshAdapterViewBase;->mIndicatorIvTop:Lcom/smartisanos/magicflow/pulltorefresh/internal/IndicatorLayout;

    if-eqz v2, :cond_1

    .line 10
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 11
    iput-object v3, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshAdapterViewBase;->mIndicatorIvTop:Lcom/smartisanos/magicflow/pulltorefresh/internal/IndicatorLayout;

    .line 12
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshAdapterViewBase;->mIndicatorIvBottom:Lcom/smartisanos/magicflow/pulltorefresh/internal/IndicatorLayout;

    if-nez v2, :cond_2

    .line 13
    new-instance v0, Lcom/smartisanos/magicflow/pulltorefresh/internal/IndicatorLayout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;->PULL_FROM_END:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;

    invoke-direct {v0, v2, v3}, Lcom/smartisanos/magicflow/pulltorefresh/internal/IndicatorLayout;-><init>(Landroid/content/Context;Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;)V

    iput-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshAdapterViewBase;->mIndicatorIvBottom:Lcom/smartisanos/magicflow/pulltorefresh/internal/IndicatorLayout;

    .line 14
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 15
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    const/16 v2, 0x55

    .line 16
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 17
    iget-object v2, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshAdapterViewBase;->mIndicatorIvBottom:Lcom/smartisanos/magicflow/pulltorefresh/internal/IndicatorLayout;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 18
    :cond_2
    invoke-virtual {v0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshAdapterViewBase;->mIndicatorIvBottom:Lcom/smartisanos/magicflow/pulltorefresh/internal/IndicatorLayout;

    if-eqz v0, :cond_3

    .line 19
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 20
    iput-object v3, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshAdapterViewBase;->mIndicatorIvBottom:Lcom/smartisanos/magicflow/pulltorefresh/internal/IndicatorLayout;

    :cond_3
    :goto_1
    return-void
.end method

.method private static convertEmptyViewLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 2

    if-eqz p0, :cond_1

    .line 1
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2
    instance-of v1, p0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v1, :cond_0

    .line 3
    check-cast p0, Landroid/widget/LinearLayout$LayoutParams;

    iget p0, p0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iput p0, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_0

    :cond_0
    const/16 p0, 0x11

    .line 4
    iput p0, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private getShowIndicatorInternal()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshAdapterViewBase;->mShowIndicator:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->isPullToRefreshEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isFirstItemVisible()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mRefreshableView:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 2
    invoke-interface {v0}, Landroid/widget/Adapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mRefreshableView:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v0

    const/4 v2, 0x0

    if-gt v0, v1, :cond_2

    .line 4
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mRefreshableView:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iget-object v3, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mRefreshableView:Landroid/view/View;

    check-cast v3, Landroid/widget/AbsListView;

    invoke-virtual {v3}, Landroid/widget/AbsListView;->getTop()I

    move-result v3

    if-lt v0, v3, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    return v1

    :cond_2
    return v2

    :cond_3
    :goto_1
    return v1
.end method

.method private isLastItemVisible()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mRefreshableView:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 2
    invoke-interface {v0}, Landroid/widget/Adapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mRefreshableView:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getCount()I

    move-result v0

    sub-int/2addr v0, v1

    .line 4
    iget-object v2, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mRefreshableView:Landroid/view/View;

    check-cast v2, Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v2

    sub-int/2addr v0, v1

    const/4 v3, 0x0

    if-lt v2, v0, :cond_2

    .line 5
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mRefreshableView:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v0

    sub-int/2addr v2, v0

    .line 6
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mRefreshableView:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iget-object v2, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mRefreshableView:Landroid/view/View;

    check-cast v2, Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getBottom()I

    move-result v2

    if-gt v0, v2, :cond_1

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    return v1

    :cond_2
    return v3

    :cond_3
    :goto_1
    return v1
.end method

.method private removeIndicatorViews()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshAdapterViewBase;->mIndicatorIvTop:Lcom/smartisanos/magicflow/pulltorefresh/internal/IndicatorLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->getRefreshableViewWrapper()Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v2, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshAdapterViewBase;->mIndicatorIvTop:Lcom/smartisanos/magicflow/pulltorefresh/internal/IndicatorLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 3
    iput-object v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshAdapterViewBase;->mIndicatorIvTop:Lcom/smartisanos/magicflow/pulltorefresh/internal/IndicatorLayout;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshAdapterViewBase;->mIndicatorIvBottom:Lcom/smartisanos/magicflow/pulltorefresh/internal/IndicatorLayout;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->getRefreshableViewWrapper()Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v2, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshAdapterViewBase;->mIndicatorIvBottom:Lcom/smartisanos/magicflow/pulltorefresh/internal/IndicatorLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 6
    iput-object v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshAdapterViewBase;->mIndicatorIvBottom:Lcom/smartisanos/magicflow/pulltorefresh/internal/IndicatorLayout;

    :cond_1
    return-void
.end method

.method private updateIndicatorViewsVisibility()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshAdapterViewBase;->mIndicatorIvTop:Lcom/smartisanos/magicflow/pulltorefresh/internal/IndicatorLayout;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->isRefreshing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshAdapterViewBase;->isReadyForPullStart()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshAdapterViewBase;->mIndicatorIvTop:Lcom/smartisanos/magicflow/pulltorefresh/internal/IndicatorLayout;

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/pulltorefresh/internal/IndicatorLayout;->isVisible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshAdapterViewBase;->mIndicatorIvTop:Lcom/smartisanos/magicflow/pulltorefresh/internal/IndicatorLayout;

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/pulltorefresh/internal/IndicatorLayout;->show()V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshAdapterViewBase;->mIndicatorIvTop:Lcom/smartisanos/magicflow/pulltorefresh/internal/IndicatorLayout;

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/pulltorefresh/internal/IndicatorLayout;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshAdapterViewBase;->mIndicatorIvTop:Lcom/smartisanos/magicflow/pulltorefresh/internal/IndicatorLayout;

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/pulltorefresh/internal/IndicatorLayout;->hide()V

    .line 7
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshAdapterViewBase;->mIndicatorIvBottom:Lcom/smartisanos/magicflow/pulltorefresh/internal/IndicatorLayout;

    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->isRefreshing()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshAdapterViewBase;->isReadyForPullEnd()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshAdapterViewBase;->mIndicatorIvBottom:Lcom/smartisanos/magicflow/pulltorefresh/internal/IndicatorLayout;

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/pulltorefresh/internal/IndicatorLayout;->isVisible()Z

    move-result v0

    if-nez v0, :cond_3

    .line 10
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshAdapterViewBase;->mIndicatorIvBottom:Lcom/smartisanos/magicflow/pulltorefresh/internal/IndicatorLayout;

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/pulltorefresh/internal/IndicatorLayout;->show()V

    goto :goto_1

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshAdapterViewBase;->mIndicatorIvBottom:Lcom/smartisanos/magicflow/pulltorefresh/internal/IndicatorLayout;

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/pulltorefresh/internal/IndicatorLayout;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 12
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshAdapterViewBase;->mIndicatorIvBottom:Lcom/smartisanos/magicflow/pulltorefresh/internal/IndicatorLayout;

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/pulltorefresh/internal/IndicatorLayout;->hide()V

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public getShowIndicator()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshAdapterViewBase;->mShowIndicator:Z

    return v0
.end method

.method protected handleStyledAttributes(Landroid/content/res/TypedArray;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->isPullToRefreshOverScrollEnabled()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const/16 v1, 0x12

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshAdapterViewBase;->mShowIndicator:Z

    return-void
.end method

.method protected isReadyForPullEnd()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshAdapterViewBase;->isLastItemVisible()Z

    move-result v0

    return v0
.end method

.method protected isReadyForPullStart()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshAdapterViewBase;->isFirstItemVisible()Z

    move-result v0

    return v0
.end method

.method protected onPullToRefresh()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->onPullToRefresh()V

    .line 2
    invoke-direct {p0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshAdapterViewBase;->getShowIndicatorInternal()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    sget-object v0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshAdapterViewBase$1;->$SwitchMap$com$smartisanos$magicflow$pulltorefresh$PullToRefreshBase$Mode:[I

    invoke-virtual {p0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->getCurrentMode()Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshAdapterViewBase;->mIndicatorIvTop:Lcom/smartisanos/magicflow/pulltorefresh/internal/IndicatorLayout;

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/pulltorefresh/internal/IndicatorLayout;->pullToRefresh()V

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshAdapterViewBase;->mIndicatorIvBottom:Lcom/smartisanos/magicflow/pulltorefresh/internal/IndicatorLayout;

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/pulltorefresh/internal/IndicatorLayout;->pullToRefresh()V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onRefreshing(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->onRefreshing(Z)V

    .line 2
    invoke-direct {p0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshAdapterViewBase;->getShowIndicatorInternal()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshAdapterViewBase;->updateIndicatorViewsVisibility()V

    :cond_0
    return-void
.end method

.method protected onReleaseToRefresh()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->onReleaseToRefresh()V

    .line 2
    invoke-direct {p0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshAdapterViewBase;->getShowIndicatorInternal()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    sget-object v0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshAdapterViewBase$1;->$SwitchMap$com$smartisanos$magicflow$pulltorefresh$PullToRefreshBase$Mode:[I

    invoke-virtual {p0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->getCurrentMode()Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$Mode;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshAdapterViewBase;->mIndicatorIvTop:Lcom/smartisanos/magicflow/pulltorefresh/internal/IndicatorLayout;

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/pulltorefresh/internal/IndicatorLayout;->releaseToRefresh()V

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshAdapterViewBase;->mIndicatorIvBottom:Lcom/smartisanos/magicflow/pulltorefresh/internal/IndicatorLayout;

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/pulltorefresh/internal/IndicatorLayout;->releaseToRefresh()V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onReset()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->onReset()V

    .line 2
    invoke-direct {p0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshAdapterViewBase;->getShowIndicatorInternal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshAdapterViewBase;->updateIndicatorViewsVisibility()V

    :cond_0
    return-void
.end method

.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshAdapterViewBase;->mOnLastItemVisibleListener:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$OnLastItemVisibleListener;

    if-eqz v0, :cond_1

    if-lez p4, :cond_0

    add-int v0, p2, p3

    add-int/lit8 v1, p4, -0x1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iput-boolean v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshAdapterViewBase;->mLastItemVisible:Z

    .line 3
    :cond_1
    invoke-direct {p0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshAdapterViewBase;->getShowIndicatorInternal()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    invoke-direct {p0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshAdapterViewBase;->updateIndicatorViewsVisibility()V

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshAdapterViewBase;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_3

    .line 6
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    :cond_3
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onScrollChanged(IIII)V

    .line 2
    iget-object p3, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshAdapterViewBase;->mEmptyView:Landroid/view/View;

    if-eqz p3, :cond_0

    iget-boolean p4, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshAdapterViewBase;->mScrollEmptyView:Z

    if-nez p4, :cond_0

    neg-int p1, p1

    neg-int p2, p2

    .line 3
    invoke-virtual {p3, p1, p2}, Landroid/view/View;->scrollTo(II)V

    :cond_0
    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2

    if-nez p2, :cond_0

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshAdapterViewBase;->mOnLastItemVisibleListener:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$OnLastItemVisibleListener;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshAdapterViewBase;->mLastItemVisible:Z

    if-eqz v1, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$OnLastItemVisibleListener;->onLastItemVisible()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshAdapterViewBase;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    :cond_1
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mRefreshableView:Landroid/view/View;

    check-cast v0, Landroid/widget/AdapterView;

    invoke-virtual {v0, p1}, Landroid/widget/AdapterView;->setAdapter(Landroid/widget/Adapter;)V

    return-void
.end method

.method public final setEmptyView(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->getRefreshableViewWrapper()Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p1, v1}, Landroid/view/View;->setClickable(Z)V

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 5
    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 6
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-static {v1}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshAdapterViewBase;->convertEmptyViewLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {v0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 9
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mRefreshableView:Landroid/view/View;

    instance-of v1, v0, Lcom/smartisanos/magicflow/pulltorefresh/internal/EmptyViewMethodAccessor;

    if-eqz v1, :cond_3

    .line 10
    check-cast v0, Lcom/smartisanos/magicflow/pulltorefresh/internal/EmptyViewMethodAccessor;

    invoke-interface {v0, p1}, Lcom/smartisanos/magicflow/pulltorefresh/internal/EmptyViewMethodAccessor;->setEmptyViewInternal(Landroid/view/View;)V

    goto :goto_1

    .line 11
    :cond_3
    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView;->setEmptyView(Landroid/view/View;)V

    .line 12
    :goto_1
    iput-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshAdapterViewBase;->mEmptyView:Landroid/view/View;

    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->mRefreshableView:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public final setOnLastItemVisibleListener(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$OnLastItemVisibleListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshAdapterViewBase;->mOnLastItemVisibleListener:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$OnLastItemVisibleListener;

    return-void
.end method

.method public final setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshAdapterViewBase;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    return-void
.end method

.method public final setScrollEmptyView(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshAdapterViewBase;->mScrollEmptyView:Z

    return-void
.end method

.method public setShowIndicator(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshAdapterViewBase;->mShowIndicator:Z

    .line 2
    invoke-direct {p0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshAdapterViewBase;->getShowIndicatorInternal()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshAdapterViewBase;->addIndicatorViews()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshAdapterViewBase;->removeIndicatorViews()V

    :goto_0
    return-void
.end method

.method protected updateUIForMode()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->updateUIForMode()V

    .line 2
    invoke-direct {p0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshAdapterViewBase;->getShowIndicatorInternal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshAdapterViewBase;->addIndicatorViews()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshAdapterViewBase;->removeIndicatorViews()V

    :goto_0
    return-void
.end method
