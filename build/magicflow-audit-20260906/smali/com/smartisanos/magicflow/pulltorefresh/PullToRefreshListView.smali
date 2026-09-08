.class public Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshListView;
.super Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;
.source "PullToRefreshListView.java"


# instance fields
.field protected listenerSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/widget/AbsListView$OnScrollListener;",
            ">;"
        }
    .end annotation
.end field

.field private mFooterView:Landroid/view/View;

.field private mHeaderListView:Lcom/smartisanos/magicflow/pulltorefresh/HeaderListView;

.field private mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshListView;->listenerSet:Ljava/util/Set;

    .line 3
    new-instance p1, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshListView$2;

    invoke-direct {p1, p0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshListView$2;-><init>(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshListView;)V

    iput-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    return-void
.end method


# virtual methods
.method protected addMoreView(Landroid/view/View;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshListView;->mFooterView:Landroid/view/View;

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshListView;->mHeaderListView:Lcom/smartisanos/magicflow/pulltorefresh/HeaderListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 3
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {p0, p1}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshListView;->addOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method

.method protected addNoMoreView(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshListView;->mHeaderListView:Lcom/smartisanos/magicflow/pulltorefresh/HeaderListView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    return-void
.end method

.method public addOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshListView;->listenerSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshListView;->listenerSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method protected canPredicateWhenPullDown()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshListView;->mHeaderListView:Lcom/smartisanos/magicflow/pulltorefresh/HeaderListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshListView;->mHeaderListView:Lcom/smartisanos/magicflow/pulltorefresh/HeaderListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

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
    invoke-virtual {p0, v0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshListView;->isBottom(Z)Z

    move-result v0

    return v0
.end method

.method protected canPredicateWhenPullUpRefresh()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshListView;->mHeaderListView:Lcom/smartisanos/magicflow/pulltorefresh/HeaderListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshListView;->mHeaderListView:Lcom/smartisanos/magicflow/pulltorefresh/HeaderListView;

    .line 2
    invoke-virtual {v0}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iget-object v2, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshListView;->mHeaderListView:Lcom/smartisanos/magicflow/pulltorefresh/HeaderListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-gt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method protected createRefreshableView(Landroid/util/AttributeSet;Z)Lcom/smartisanos/magicflow/pulltorefresh/IHeaderBaseView;
    .locals 1

    if-eqz p2, :cond_0

    .line 1
    new-instance p2, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p2, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshListView;->mHeaderListView:Lcom/smartisanos/magicflow/pulltorefresh/HeaderListView;

    goto :goto_0

    .line 2
    :cond_0
    new-instance p2, Lcom/smartisanos/magicflow/pulltorefresh/HeaderListView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/smartisanos/magicflow/pulltorefresh/HeaderListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p2, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshListView;->mHeaderListView:Lcom/smartisanos/magicflow/pulltorefresh/HeaderListView;

    .line 3
    :goto_0
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshListView;->mHeaderListView:Lcom/smartisanos/magicflow/pulltorefresh/HeaderListView;

    new-instance p2, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshListView$1;

    invoke-direct {p2, p0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshListView$1;-><init>(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshListView;)V

    invoke-virtual {p1, p2}, Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 4
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshListView;->mHeaderListView:Lcom/smartisanos/magicflow/pulltorefresh/HeaderListView;

    return-object p1
.end method

.method public getRefreshableView()Lcom/smartisanos/magicflow/pulltorefresh/HeaderListView;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshListView;->mHeaderListView:Lcom/smartisanos/magicflow/pulltorefresh/HeaderListView;

    return-object v0
.end method

.method public bridge synthetic getRefreshableView()Lcom/smartisanos/magicflow/pulltorefresh/IHeaderBaseView;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshListView;->getRefreshableView()Lcom/smartisanos/magicflow/pulltorefresh/HeaderListView;

    move-result-object v0

    return-object v0
.end method

.method public getSwipeListView()Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshListView;->mHeaderListView:Lcom/smartisanos/magicflow/pulltorefresh/HeaderListView;

    instance-of v1, v0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected isBottom(Z)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 1
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshListView;->mHeaderListView:Lcom/smartisanos/magicflow/pulltorefresh/HeaderListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result p1

    iget-object v2, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshListView;->mHeaderListView:Lcom/smartisanos/magicflow/pulltorefresh/HeaderListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getCount()I

    move-result v2

    sub-int/2addr v2, v1

    if-ne p1, v2, :cond_0

    move v0, v1

    :cond_0
    return v0

    .line 2
    :cond_1
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshListView;->mHeaderListView:Lcom/smartisanos/magicflow/pulltorefresh/HeaderListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->getChildCount()I

    move-result p1

    if-eqz p1, :cond_2

    .line 3
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshListView;->mHeaderListView:Lcom/smartisanos/magicflow/pulltorefresh/HeaderListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {p1, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 4
    iget-object v2, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshListView;->mFooterView:Landroid/view/View;

    if-ne p1, v2, :cond_2

    .line 5
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result p1

    iget-object v2, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshListView;->mHeaderListView:Lcom/smartisanos/magicflow/pulltorefresh/HeaderListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getMeasuredHeight()I

    move-result v2

    if-gt p1, v2, :cond_2

    move v0, v1

    :cond_2
    return v0
.end method

.method protected isTop()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshListView;->mHeaderListView:Lcom/smartisanos/magicflow/pulltorefresh/HeaderListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public playDeleteAnimation(Landroid/animation/Animator$AnimatorListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshListView;->mHeaderListView:Lcom/smartisanos/magicflow/pulltorefresh/HeaderListView;

    instance-of v1, v0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;

    invoke-virtual {v0, p1}, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;->playDeleteAnimation(Landroid/animation/Animator$AnimatorListener;)V

    :cond_0
    return-void
.end method

.method protected removeMoreView(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshListView;->mHeaderListView:Lcom/smartisanos/magicflow/pulltorefresh/HeaderListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshListView;->mFooterView:Landroid/view/View;

    .line 3
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {p0, p1}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshListView;->removeOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method

.method protected removeNoMoreView(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshListView;->mHeaderListView:Lcom/smartisanos/magicflow/pulltorefresh/HeaderListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    return-void
.end method

.method public removeOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshListView;->listenerSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshListView;->listenerSet:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .locals 0

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView$PinnedSectionListAdapter;

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshListView;->mHeaderListView:Lcom/smartisanos/magicflow/pulltorefresh/HeaderListView;

    new-instance v1, Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedHeadAdapter;

    invoke-direct {v1, p1}, Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedHeadAdapter;-><init>(Landroid/widget/ListAdapter;)V

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_1

    .line 3
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshListView;->mHeaderListView:Lcom/smartisanos/magicflow/pulltorefresh/HeaderListView;

    invoke-virtual {v0, p1}, Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :goto_1
    return-void
.end method

.method public setContentShadow(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshListView;->mHeaderListView:Lcom/smartisanos/magicflow/pulltorefresh/HeaderListView;

    instance-of v1, v0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;

    invoke-virtual {v0, p1}, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;->setContentShadow(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setEmptyView(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshListView;->mHeaderListView:Lcom/smartisanos/magicflow/pulltorefresh/HeaderListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    return-void
.end method

.method public setMenuBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshListView;->mHeaderListView:Lcom/smartisanos/magicflow/pulltorefresh/HeaderListView;

    instance-of v1, v0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;

    invoke-virtual {v0, p1}, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;->setMenuBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setMenuContainerHeight(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshListView;->mHeaderListView:Lcom/smartisanos/magicflow/pulltorefresh/HeaderListView;

    instance-of v1, v0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;

    invoke-virtual {v0, p1}, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;->setMenuContainerHeight(I)V

    :cond_0
    return-void
.end method

.method public setMenuContainerWidth(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshListView;->mHeaderListView:Lcom/smartisanos/magicflow/pulltorefresh/HeaderListView;

    instance-of v1, v0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;

    invoke-virtual {v0, p1}, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;->setMenuContainerWidth(I)V

    :cond_0
    return-void
.end method

.method public setMenuItemClickListener(Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView$OnMenuItemClickListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshListView;->mHeaderListView:Lcom/smartisanos/magicflow/pulltorefresh/HeaderListView;

    instance-of v1, v0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;

    invoke-virtual {v0, p1}, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;->setMenuItemClickListener(Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView$OnMenuItemClickListener;)V

    :cond_0
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshListView;->mHeaderListView:Lcom/smartisanos/magicflow/pulltorefresh/HeaderListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshListView;->mHeaderListView:Lcom/smartisanos/magicflow/pulltorefresh/HeaderListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    return-void
.end method

.method public setSwipeMenuCreator(Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeMenuCreator;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshListView;->mHeaderListView:Lcom/smartisanos/magicflow/pulltorefresh/HeaderListView;

    instance-of v1, v0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;

    invoke-virtual {v0, p1}, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView;->setSwipeMenuCreator(Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeMenuCreator;)V

    :cond_0
    return-void
.end method
