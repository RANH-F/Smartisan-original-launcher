.class public Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView;
.super Landroid/support/v7/widget/RecyclerView;
.source "HeaderRecyclerView.java"

# interfaces
.implements Lcom/smartisanos/magicflow/pulltorefresh/IHeaderBaseView;
.implements Lcom/smartisanos/magicflow/pulltorefresh/IFooterBaseView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView$ItemViewHolder;,
        Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView$AbstractChildAdapter;,
        Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView$WrappedAdapter;
    }
.end annotation


# instance fields
.field private log:Lcom/smartisanos/magicflow/LOG;

.field private mAdapter:Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView$WrappedAdapter;

.field protected mFooterView:Landroid/view/View;

.field private mHeaderView:Landroid/view/View;

.field private mLinearLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

.field private refreshContentHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    const-class p1, Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView;

    invoke-static {p1}, Lcom/smartisanos/magicflow/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/magicflow/LOG;

    move-result-object p1

    iput-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView;->log:Lcom/smartisanos/magicflow/LOG;

    .line 4
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView;->init()V

    return-void
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
.method public addFooterView()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView;->mFooterView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView;->addFooterView(Landroid/view/View;)V

    return-void
.end method

.method public addFooterView(Landroid/view/View;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView;->mAdapter:Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView$WrappedAdapter;

    invoke-virtual {v0, p1}, Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView$WrappedAdapter;->addFootView(Landroid/view/View;)V

    .line 3
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView;->mAdapter:Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView$WrappedAdapter;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public addHeaderView(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView;->mAdapter:Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView$WrappedAdapter;

    invoke-virtual {v0, p1}, Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView$WrappedAdapter;->addHeaderView(Landroid/view/View;)V

    .line 2
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView;->mAdapter:Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView$WrappedAdapter;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public addRefreshHeader()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView;->mHeaderView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView;->addHeaderView(Landroid/view/View;)V

    return-void
.end method

.method public destroy()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView;->mHeaderView:Landroid/view/View;

    .line 2
    iget-object v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView;->mAdapter:Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView$WrappedAdapter;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView$WrappedAdapter;->destroy()V

    .line 4
    iput-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView;->mAdapter:Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView$WrappedAdapter;

    .line 5
    :cond_0
    iput-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView;->mFooterView:Landroid/view/View;

    .line 6
    iput-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView;->mLinearLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    return-void
.end method

.method public fling(II)Z
    .locals 3

    .line 1
    sget-boolean v0, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView;->log:Lcom/smartisanos/magicflow/LOG;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "velocityX = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",velocityY="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView;->mAdapter:Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView$WrappedAdapter;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView$WrappedAdapter;->access$000(Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView$WrappedAdapter;)Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView$AbstractChildAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView;->mAdapter:Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView$WrappedAdapter;

    invoke-static {v0}, Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView$WrappedAdapter;->access$000(Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView$WrappedAdapter;)Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView$AbstractChildAdapter;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView$AbstractChildAdapter;->access$100(Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView$AbstractChildAdapter;II)V

    .line 5
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView;->fling(II)Z

    move-result p1

    return p1
.end method

.method public getFooterBottom()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView;->mFooterView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    return v0
.end method

.method public getFooterHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView;->refreshContentHeight:I

    return v0
.end method

.method public getHeaderCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView;->mAdapter:Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView$WrappedAdapter;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView$WrappedAdapter;->getHeadersCount()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getHeaderHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView;->refreshContentHeight:I

    return v0
.end method

.method public getHeaderTop()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView;->mHeaderView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    return v0
.end method

.method public getLinearLayoutManager()Landroid/support/v7/widget/LinearLayoutManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView;->mLinearLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    return-object v0
.end method

.method public getScrollDistance()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getScrollY()I

    move-result v0

    return v0
.end method

.method init()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f0b00b7

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView;->mHeaderView:Landroid/view/View;

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView;->mHeaderView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView;->measureView(Landroid/view/View;)V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView;->mHeaderView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView;->refreshContentHeight:I

    .line 4
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView;->mHeaderView:Landroid/view/View;

    iget v4, p0, Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView;->refreshContentHeight:I

    mul-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v3, v4, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 5
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView;->mHeaderView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView;->mFooterView:Landroid/view/View;

    .line 7
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView;->mFooterView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView;->measureView(Landroid/view/View;)V

    .line 8
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView;->mFooterView:Landroid/view/View;

    iget v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView;->refreshContentHeight:I

    mul-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v3, v3, v3, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 9
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView;->mFooterView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public removeFooterView(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView;->mAdapter:Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView$WrappedAdapter;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public scrollToBottom()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView;->mLinearLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView;->mAdapter:Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView$WrappedAdapter;

    invoke-virtual {v1}, Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView$WrappedAdapter;->getItemCount()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->scrollToPosition(I)V

    const/4 v0, 0x1

    return v0
.end method

.method public scrollToTop()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView;->getLinearLayoutManager()Landroid/support/v7/widget/LinearLayoutManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->scrollToPosition(I)V

    const/4 v0, 0x1

    return v0
.end method

.method public setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView$WrappedAdapter;

    check-cast p1, Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView$AbstractChildAdapter;

    invoke-direct {v0, p0, p1}, Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView$WrappedAdapter;-><init>(Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView;Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView$AbstractChildAdapter;)V

    iput-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView;->mAdapter:Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView$WrappedAdapter;

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView;->mAdapter:Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView$WrappedAdapter;

    invoke-virtual {p1, v0}, Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView$AbstractChildAdapter;->setHolderAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 3
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView;->mAdapter:Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView$WrappedAdapter;

    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public setFooterPadding(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView;->mFooterView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, p1}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public setHeaderPadding(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView;->mHeaderView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public setLinearLayoutManager(Landroid/support/v7/widget/LinearLayoutManager;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 2
    iput-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView;->mLinearLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    return-void
.end method

.method public setRefreshFooterListener(Lcom/smartisanos/magicflow/pulltorefresh/RefreshFooterView$RefreshFooterListener;)V
    .locals 0

    return-void
.end method

.method public setRefreshHeaderListener(Lcom/smartisanos/magicflow/pulltorefresh/RefreshHeaderView$RefreshHeaderListener;)V
    .locals 0

    return-void
.end method
