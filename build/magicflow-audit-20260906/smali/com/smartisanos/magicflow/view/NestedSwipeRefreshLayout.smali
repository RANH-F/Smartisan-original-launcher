.class public Lcom/smartisanos/magicflow/view/NestedSwipeRefreshLayout;
.super Landroid/support/v4/widget/SwipeRefreshLayout;
.source "NestedSwipeRefreshLayout.java"

# interfaces
.implements Landroid/support/v4/view/NestedScrollingChild;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisanos/magicflow/view/NestedSwipeRefreshLayout$LoadMoreDelegate;
    }
.end annotation


# instance fields
.field private mLoadMoreDelegate:Lcom/smartisanos/magicflow/view/NestedSwipeRefreshLayout$LoadMoreDelegate;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/smartisanos/magicflow/view/NestedSwipeRefreshLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/support/v4/widget/SwipeRefreshLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/NestedSwipeRefreshLayout;->mLoadMoreDelegate:Lcom/smartisanos/magicflow/view/NestedSwipeRefreshLayout$LoadMoreDelegate;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/smartisanos/magicflow/view/NestedSwipeRefreshLayout$LoadMoreDelegate;->canLoadMore()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/NestedSwipeRefreshLayout;->mLoadMoreDelegate:Lcom/smartisanos/magicflow/view/NestedSwipeRefreshLayout$LoadMoreDelegate;

    invoke-interface {v0}, Lcom/smartisanos/magicflow/view/NestedSwipeRefreshLayout$LoadMoreDelegate;->onLoadMore()V

    .line 4
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onScrollChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onScrollChanged(IIII)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/NestedSwipeRefreshLayout;->mLoadMoreDelegate:Lcom/smartisanos/magicflow/view/NestedSwipeRefreshLayout$LoadMoreDelegate;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/smartisanos/magicflow/view/NestedSwipeRefreshLayout$LoadMoreDelegate;->canLoadMore()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/NestedSwipeRefreshLayout;->mLoadMoreDelegate:Lcom/smartisanos/magicflow/view/NestedSwipeRefreshLayout$LoadMoreDelegate;

    invoke-interface {v0}, Lcom/smartisanos/magicflow/view/NestedSwipeRefreshLayout$LoadMoreDelegate;->onLoadMore()V

    .line 4
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/widget/SwipeRefreshLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setLoadMoreDelegate(Lcom/smartisanos/magicflow/view/NestedSwipeRefreshLayout$LoadMoreDelegate;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/NestedSwipeRefreshLayout;->mLoadMoreDelegate:Lcom/smartisanos/magicflow/view/NestedSwipeRefreshLayout$LoadMoreDelegate;

    return-void
.end method
