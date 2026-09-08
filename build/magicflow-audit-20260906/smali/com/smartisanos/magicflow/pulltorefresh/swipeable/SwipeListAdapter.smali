.class public Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListAdapter;
.super Ljava/lang/Object;
.source "SwipeListAdapter.java"

# interfaces
.implements Landroid/widget/WrapperListAdapter;
.implements Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeMenuView$OnSwipeMenuViewClickListener;


# instance fields
.field private isAnimating:Z

.field private mBgDrawable:Landroid/graphics/drawable/Drawable;

.field private mContentShadowDrawable:Landroid/graphics/drawable/Drawable;

.field private mContext:Landroid/content/Context;

.field private mItemClickEnable:Z

.field private mListAdapter:Landroid/widget/ListAdapter;

.field private mMenuContainerHeight:I

.field private mMenuContainerWidth:I

.field private mMenuItemClickListener:Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView$OnMenuItemClickListener;

.field private mOpenedChild:Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/ListAdapter;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListAdapter;->mItemClickEnable:Z

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListAdapter;->isAnimating:Z

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListAdapter;->mMenuContainerHeight:I

    .line 5
    iput v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListAdapter;->mMenuContainerWidth:I

    .line 6
    iput-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListAdapter;->mContext:Landroid/content/Context;

    .line 7
    iput-object p2, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListAdapter;->mListAdapter:Landroid/widget/ListAdapter;

    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListAdapter;->mListAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v0

    return v0
.end method

.method public createMenuViews()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListAdapter;->mListAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListAdapter;->mListAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListAdapter;->mListAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListAdapter;->mListAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result p1

    return p1
.end method

.method public getOpenedChild()Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListAdapter;->mOpenedChild:Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListAdapter;->mListAdapter:Landroid/widget/ListAdapter;

    instance-of v1, v0, Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView$PinnedSectionListAdapter;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView$PinnedSectionListAdapter;

    .line 2
    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v0

    invoke-interface {v1, v0}, Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView$PinnedSectionListAdapter;->isItemViewTypePinned(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListAdapter;->mListAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1, p2, p3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    check-cast p2, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;

    if-eqz p2, :cond_2

    .line 5
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p2, p1}, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->setPosition(I)V

    .line 7
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListAdapter;->mListAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {p2}, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->getContentView()Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, p1, v1, p3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    goto :goto_2

    .line 8
    :cond_2
    :goto_0
    iget-object p2, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListAdapter;->mListAdapter:Landroid/widget/ListAdapter;

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0, p3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 9
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListAdapter;->createMenuViews()Ljava/util/List;

    move-result-object p3

    .line 10
    new-instance v1, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeMenuView;

    iget v2, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListAdapter;->mMenuContainerWidth:I

    iget v3, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListAdapter;->mMenuContainerHeight:I

    invoke-direct {v1, p3, v2, v3}, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeMenuView;-><init>(Ljava/util/List;II)V

    .line 11
    iget-object p3, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListAdapter;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p3, :cond_3

    .line 12
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p3

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-virtual {v1, p3}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 13
    :cond_3
    invoke-virtual {v1, p0}, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeMenuView;->setOnSwipeMenuViewClickListener(Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeMenuView$OnSwipeMenuViewClickListener;)V

    .line 14
    iget-object p3, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListAdapter;->mContentShadowDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p3, :cond_4

    .line 15
    new-instance p3, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p3, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 16
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    iget-object v4, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListAdapter;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListAdapter;->mMenuContainerHeight:I

    .line 17
    invoke-static {v4, v5}, Lcom/smartisanos/magicflow/pulltorefresh/DensityUtil;->dp2px(Landroid/content/Context;I)I

    move-result v4

    const/16 v5, 0x10

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 18
    invoke-virtual {p3, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 19
    iget-object v2, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListAdapter;->mContentShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 20
    new-instance v2, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;

    invoke-direct {v2, p2, p3, v1}, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;-><init>(Landroid/view/View;Landroid/view/View;Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeMenuView;)V

    move-object p2, v2

    goto :goto_1

    .line 21
    :cond_4
    new-instance p3, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;

    invoke-direct {p3, p2, v1}, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;-><init>(Landroid/view/View;Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeMenuView;)V

    move-object p2, p3

    .line 22
    :goto_1
    invoke-virtual {p2, p1}, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->setPosition(I)V

    .line 23
    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 24
    :goto_2
    invoke-virtual {p2, p0}, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->setSwipeListAdapter(Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListAdapter;)V

    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListAdapter;->mListAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v0

    return v0
.end method

.method public getWrappedAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListAdapter;->mListAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public hasStableIds()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListAdapter;->mListAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->hasStableIds()Z

    move-result v0

    return v0
.end method

.method public isAdapterAnimating()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListAdapter;->isAnimating:Z

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListAdapter;->mListAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListAdapter;->mItemClickEnable:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListAdapter;->mListAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onMenuViewClick(Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeMenuView;Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeMenuView;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListAdapter;->mMenuItemClickListener:Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView$OnMenuItemClickListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeMenuView;->getPosition()I

    move-result p1

    invoke-interface {v0, p1, p2, p3}, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView$OnMenuItemClickListener;->onMenuItemClick(ILjava/util/List;I)V

    :cond_0
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListAdapter;->mListAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    return-void
.end method

.method public setAdapterAnimating(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListAdapter;->isAnimating:Z

    return-void
.end method

.method public setBgDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListAdapter;->mBgDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setContentShadow(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListAdapter;->mContentShadowDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setMenuContainerHeight(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListAdapter;->mMenuContainerHeight:I

    return-void
.end method

.method public setMenuContainerWidth(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListAdapter;->mMenuContainerWidth:I

    return-void
.end method

.method public setMenuItemClickListener(Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView$OnMenuItemClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListAdapter;->mMenuItemClickListener:Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListView$OnMenuItemClickListener;

    return-void
.end method

.method public setOpenedChild(Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListAdapter;->mOpenedChild:Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;

    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListAdapter;->mListAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    return-void
.end method
