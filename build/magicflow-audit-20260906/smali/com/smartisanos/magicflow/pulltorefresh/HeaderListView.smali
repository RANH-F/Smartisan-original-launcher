.class public Lcom/smartisanos/magicflow/pulltorefresh/HeaderListView;
.super Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView;
.source "HeaderListView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Lcom/smartisanos/magicflow/pulltorefresh/IHeaderBaseView;
.implements Lcom/smartisanos/magicflow/pulltorefresh/IFooterBaseView;


# instance fields
.field private mFooter:Landroid/view/View;

.field private mFooterListener:Lcom/smartisanos/magicflow/pulltorefresh/RefreshFooterView$RefreshFooterListener;

.field private mHeader:Landroid/view/View;

.field private mListener:Lcom/smartisanos/magicflow/pulltorefresh/RefreshHeaderView$RefreshHeaderListener;

.field private mScrollState:I

.field private refreshContentHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p1, 0x87

    .line 2
    iput p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/HeaderListView;->refreshContentHeight:I

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/HeaderListView;->mScrollState:I

    .line 4
    invoke-direct {p0}, Lcom/smartisanos/magicflow/pulltorefresh/HeaderListView;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p1, 0x87

    .line 6
    iput p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/HeaderListView;->refreshContentHeight:I

    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/HeaderListView;->mScrollState:I

    .line 8
    invoke-direct {p0}, Lcom/smartisanos/magicflow/pulltorefresh/HeaderListView;->initView()V

    return-void
.end method

.method private initView()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v0

    const v1, 0x106000d

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Landroid/widget/ListView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v0, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setOverscrollHeader(Landroid/graphics/drawable/Drawable;)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v2, 0x1

    const v3, 0x7f0b00b7

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/HeaderListView;->mHeader:Landroid/view/View;

    .line 4
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/HeaderListView;->mHeader:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/smartisanos/magicflow/pulltorefresh/HeaderListView;->measureView(Landroid/view/View;)V

    .line 5
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/HeaderListView;->mHeader:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/HeaderListView;->refreshContentHeight:I

    .line 6
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/HeaderListView;->mHeader:Landroid/view/View;

    iget v5, p0, Lcom/smartisanos/magicflow/pulltorefresh/HeaderListView;->refreshContentHeight:I

    mul-int/lit8 v5, v5, -0x1

    const/4 v6, 0x0

    invoke-virtual {v0, v6, v5, v6, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 7
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/HeaderListView;->mHeader:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 8
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/HeaderListView;->mHeader:Landroid/view/View;

    invoke-virtual {p0, v0, v4, v6}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 9
    invoke-virtual {p0}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v0

    if-eqz v0, :cond_1

    .line 10
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Landroid/widget/ListView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setOverscrollFooter(Landroid/graphics/drawable/Drawable;)V

    .line 11
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, v3, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/HeaderListView;->mFooter:Landroid/view/View;

    .line 12
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/HeaderListView;->mFooter:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/smartisanos/magicflow/pulltorefresh/HeaderListView;->measureView(Landroid/view/View;)V

    .line 13
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/HeaderListView;->mFooter:Landroid/view/View;

    iget v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/HeaderListView;->refreshContentHeight:I

    mul-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v6, v6, v6, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 14
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/HeaderListView;->mFooter:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 15
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/HeaderListView;->mFooter:Landroid/view/View;

    invoke-virtual {p0, v0, v4, v6}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 16
    invoke-virtual {p0, v6}, Landroid/widget/ListView;->setHeaderDividersEnabled(Z)V

    .line 17
    invoke-virtual {p0, v6}, Landroid/widget/ListView;->setFooterDividersEnabled(Z)V

    .line 18
    invoke-super {p0, p0}, Lcom/smartisanos/magicflow/pulltorefresh/pinnedhead/PinnedSectionListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method

.method private isScrolling()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/HeaderListView;->mScrollState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private measureView(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    :cond_0
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v2, 0x0

    invoke-static {v2, v2, v1}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 5
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v0, :cond_1

    const/high16 v2, 0x40000000    # 2.0f

    .line 6
    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 8
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    return-void
.end method


# virtual methods
.method public addFooter()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/HeaderListView;->mFooter:Landroid/view/View;

    iget v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/HeaderListView;->refreshContentHeight:I

    neg-int v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/HeaderListView;->mFooter:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    return-void
.end method

.method public getFooterBottom()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/HeaderListView;->mFooter:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    return v0
.end method

.method public getFooterHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/HeaderListView;->refreshContentHeight:I

    return v0
.end method

.method public getHeaderHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/HeaderListView;->refreshContentHeight:I

    return v0
.end method

.method public getHeaderTop()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/HeaderListView;->mHeader:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    return v0
.end method

.method public getScrollDistance()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/ListView;->getScrollY()I

    move-result v0

    return v0
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    if-nez p2, :cond_0

    .line 1
    invoke-virtual {p0, p2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/widget/ListView;->getTop()I

    move-result p1

    invoke-virtual {p0}, Lcom/smartisanos/magicflow/pulltorefresh/HeaderListView;->getHeaderHeight()I

    move-result p2

    add-int/2addr p1, p2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    iget-object p2, p0, Lcom/smartisanos/magicflow/pulltorefresh/HeaderListView;->mListener:Lcom/smartisanos/magicflow/pulltorefresh/RefreshHeaderView$RefreshHeaderListener;

    if-eqz p2, :cond_1

    .line 4
    invoke-interface {p2, p1}, Lcom/smartisanos/magicflow/pulltorefresh/RefreshHeaderView$RefreshHeaderListener;->headerClipBottomChanged(I)V

    :cond_1
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/smartisanos/magicflow/pulltorefresh/HeaderListView;->mScrollState:I

    return-void
.end method

.method public removeFooter()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/HeaderListView;->mFooter:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    return-void
.end method

.method public scrollToBottom()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/ListView;->getCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setSelection(I)V

    return v1
.end method

.method public scrollToTop()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/magicflow/pulltorefresh/HeaderListView;->isScrolling()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setSelection(I)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public setFooterPadding(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/HeaderListView;->mFooter:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, p1}, Landroid/view/View;->setPadding(IIII)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v2

    sub-int/2addr v0, v2

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p0}, Landroid/widget/ListView;->getEmptyView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/pulltorefresh/HeaderListView;->getFooterHeight()I

    move-result v0

    add-int/2addr p1, v0

    if-gez p1, :cond_0

    move p1, v1

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ListView;->getEmptyView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1, v1, v1, p1}, Landroid/view/View;->setPadding(IIII)V

    :cond_1
    return-void
.end method

.method public setHeaderPadding(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/HeaderListView;->mHeader:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v2

    sub-int/2addr v0, v2

    if-nez v0, :cond_1

    .line 3
    invoke-virtual {p0}, Landroid/widget/ListView;->getEmptyView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/pulltorefresh/HeaderListView;->getHeaderHeight()I

    move-result v0

    add-int/2addr p1, v0

    if-gez p1, :cond_0

    move p1, v1

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ListView;->getEmptyView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1, p1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    :cond_1
    return-void
.end method

.method public setRefreshFooterListener(Lcom/smartisanos/magicflow/pulltorefresh/RefreshFooterView$RefreshFooterListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/HeaderListView;->mFooterListener:Lcom/smartisanos/magicflow/pulltorefresh/RefreshFooterView$RefreshFooterListener;

    return-void
.end method

.method public setRefreshHeaderListener(Lcom/smartisanos/magicflow/pulltorefresh/RefreshHeaderView$RefreshHeaderListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/HeaderListView;->mListener:Lcom/smartisanos/magicflow/pulltorefresh/RefreshHeaderView$RefreshHeaderListener;

    return-void
.end method
