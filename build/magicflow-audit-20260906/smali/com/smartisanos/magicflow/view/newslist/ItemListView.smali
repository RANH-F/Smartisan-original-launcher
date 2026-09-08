.class public Lcom/smartisanos/magicflow/view/newslist/ItemListView;
.super Landroid/widget/RelativeLayout;
.source "ItemListView.java"

# interfaces
.implements Landroid/support/v4/widget/SwipeRefreshLayout$OnRefreshListener;
.implements Lcom/smartisanos/magicflow/view/NestedSwipeRefreshLayout$LoadMoreDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisanos/magicflow/view/newslist/ItemListView$OnListViewDataLoadFinishListener;,
        Lcom/smartisanos/magicflow/view/newslist/ItemListView$OnListViewItemDeleteListener;,
        Lcom/smartisanos/magicflow/view/newslist/ItemListView$OnItemClickListener;
    }
.end annotation


# static fields
.field protected static final LOAD_MORE_MIN_COUNT:I = 0x3


# instance fields
.field private canShowTip:Z

.field private isDestroy:Z

.field private log:Lcom/smartisanos/magicflow/LOG;

.field protected mAdapter:Lcom/smartisanos/magicflow/view/newslist/ItemListAdapter;

.field protected mCategory:Lcom/smartisanos/magicflow/h/q;

.field private mHasShowedPosition:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mIsLoading:Z

.field mIsRefreshing:Z

.field private mIsUpdatedTipAnimating:Z

.field private final mItemViewDetachedRemoveDelayed:I

.field protected mLinearLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

.field private mListViewDataLoadFinishListener:Lcom/smartisanos/magicflow/view/newslist/ItemListView$OnListViewDataLoadFinishListener;

.field private mNewsType:Ljava/lang/String;

.field private mObserver:Lcom/smartisanos/magicflow/cache/NewsDataChangeObserver;

.field private mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field protected mParser:Lcom/smartisanos/magicflow/j/e;

.field protected mRecyclerView:Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView;

.field private mShowDislike:Z

.field protected mSwipeRefreshLayout:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshRecyclerView;

.field protected mUpdatedTip:Landroid/widget/TextView;

.field private mUpdatedTipHeight:I

.field private mUseListDivider:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/smartisanos/magicflow/view/newslist/ItemListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/smartisanos/magicflow/view/newslist/ItemListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    const-class p1, Lcom/smartisanos/magicflow/view/newslist/ItemListView;

    invoke-static {p1}, Lcom/smartisanos/magicflow/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/magicflow/LOG;

    move-result-object p1

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->log:Lcom/smartisanos/magicflow/LOG;

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->isDestroy:Z

    .line 6
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->mHasShowedPosition:Ljava/util/List;

    const/16 p2, 0x64

    .line 7
    iput p2, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->mItemViewDetachedRemoveDelayed:I

    .line 8
    new-instance p2, Lcom/smartisanos/magicflow/view/newslist/ItemListView$6;

    invoke-direct {p2, p0}, Lcom/smartisanos/magicflow/view/newslist/ItemListView$6;-><init>(Lcom/smartisanos/magicflow/view/newslist/ItemListView;)V

    iput-object p2, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->mObserver:Lcom/smartisanos/magicflow/cache/NewsDataChangeObserver;

    .line 9
    iput-boolean p1, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->canShowTip:Z

    .line 10
    iput-boolean p1, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->mIsUpdatedTipAnimating:Z

    .line 11
    iput-boolean p1, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->mIsLoading:Z

    const/4 p1, 0x1

    .line 12
    iput-boolean p1, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->mIsRefreshing:Z

    .line 13
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/smartisanos/magicflow/view/newslist/ItemListView;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->mHasShowedPosition:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/smartisanos/magicflow/view/newslist/ItemListView;)Lcom/smartisanos/magicflow/LOG;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->log:Lcom/smartisanos/magicflow/LOG;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/smartisanos/magicflow/view/newslist/ItemListView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->mUpdatedTipHeight:I

    return p0
.end method

.method static synthetic access$1102(Lcom/smartisanos/magicflow/view/newslist/ItemListView;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->mIsUpdatedTipAnimating:Z

    return p1
.end method

.method static synthetic access$200(Lcom/smartisanos/magicflow/view/newslist/ItemListView;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->mNewsType:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/smartisanos/magicflow/view/newslist/ItemListView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->isDestroy:Z

    return p0
.end method

.method static synthetic access$400(Lcom/smartisanos/magicflow/view/newslist/ItemListView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->canShowTip:Z

    return p0
.end method

.method static synthetic access$500(Lcom/smartisanos/magicflow/view/newslist/ItemListView;ZI)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->showStreamTopTip(ZI)V

    return-void
.end method

.method static synthetic access$600(Lcom/smartisanos/magicflow/view/newslist/ItemListView;)Lcom/smartisanos/magicflow/view/newslist/ItemListView$OnListViewDataLoadFinishListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->mListViewDataLoadFinishListener:Lcom/smartisanos/magicflow/view/newslist/ItemListView$OnListViewDataLoadFinishListener;

    return-object p0
.end method

.method static synthetic access$700(Lcom/smartisanos/magicflow/view/newslist/ItemListView;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->checkNet()Z

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lcom/smartisanos/magicflow/view/newslist/ItemListView;Lcom/smartisanos/magicflow/h/r;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->loadNewsFinish(Lcom/smartisanos/magicflow/h/r;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/smartisanos/magicflow/view/newslist/ItemListView;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->handleFailWithServer(Z)V

    return-void
.end method

.method private checkNet()Z
    .locals 1

    .line 1
    invoke-static {}, Lcom/smartisanos/magicflow/MagicFlowApplication;->a()Lcom/smartisanos/magicflow/MagicFlowApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/smartisanos/magicflow/o/n;->p(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->showNetworkError()V

    :cond_0
    return v0
.end method

.method private handleFailWithServer(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->isDestroy:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 2
    iput-boolean v0, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->mIsRefreshing:Z

    .line 3
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->mCategory:Lcom/smartisanos/magicflow/h/q;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/smartisanos/magicflow/h/q;->b:Ljava/lang/String;

    const-string v1, "news_local"

    .line 4
    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->mCategory:Lcom/smartisanos/magicflow/h/q;

    iget-object p1, p1, Lcom/smartisanos/magicflow/h/q;->d:Ljava/lang/String;

    .line 5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0d01df

    .line 6
    invoke-virtual {p0, p1}, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->toast(I)V

    :cond_1
    const p1, 0x7f0d02ae

    .line 7
    invoke-virtual {p0, p1}, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->showUpdatedTip(I)V

    .line 8
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->finishRefreshing()V

    goto :goto_0

    .line 9
    :cond_2
    iput-boolean v0, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->mIsLoading:Z

    .line 10
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->showNetworkError()V

    .line 11
    :goto_0
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->mNewsType:Ljava/lang/String;

    invoke-static {p1}, Lcom/smartisanos/magicflow/cache/NewsCache;->getNewsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_3

    .line 12
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->mListViewDataLoadFinishListener:Lcom/smartisanos/magicflow/view/newslist/ItemListView$OnListViewDataLoadFinishListener;

    if-eqz p1, :cond_3

    .line 13
    invoke-interface {p1, v0}, Lcom/smartisanos/magicflow/view/newslist/ItemListView$OnListViewDataLoadFinishListener;->onListViewDataLoadFinish(Z)V

    :cond_3
    return-void
.end method

.method private handleInitFail(ZLjava/lang/String;)V
    .locals 2

    if-nez p1, :cond_1

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->showNetworkError()V

    .line 2
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->mListViewDataLoadFinishListener:Lcom/smartisanos/magicflow/view/newslist/ItemListView$OnListViewDataLoadFinishListener;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1, p2}, Lcom/smartisanos/magicflow/view/newslist/ItemListView$OnListViewDataLoadFinishListener;->onListViewDataLoadFinish(Z)V

    .line 4
    :cond_0
    iput-boolean p2, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->mIsRefreshing:Z

    return-void

    :cond_1
    const/4 p1, 0x1

    .line 5
    invoke-direct {p0, p1}, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->loadSyncData(Z)V

    .line 6
    sget-boolean p1, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-eqz p1, :cond_2

    .line 7
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->log:Lcom/smartisanos/magicflow/LOG;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleInitFail failContent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private init()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0072

    invoke-static {v0, v1, p0}, Landroid/widget/RelativeLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const v0, 0x7f0802cc

    .line 2
    invoke-virtual {p0, v0}, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->viewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshRecyclerView;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->mSwipeRefreshLayout:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshRecyclerView;

    .line 3
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->mSwipeRefreshLayout:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshRecyclerView;

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->getRefreshableView()Lcom/smartisanos/magicflow/pulltorefresh/IHeaderBaseView;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->mRecyclerView:Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView;

    .line 4
    new-instance v0, Lcom/smartisanos/magicflow/view/newslist/ItemListAdapter;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/smartisanos/magicflow/view/newslist/ItemListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->mAdapter:Lcom/smartisanos/magicflow/view/newslist/ItemListAdapter;

    .line 5
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->mAdapter:Lcom/smartisanos/magicflow/view/newslist/ItemListAdapter;

    iget-boolean v1, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->mUseListDivider:Z

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/view/newslist/ItemListAdapter;->setUseListDivider(Z)V

    .line 6
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->mRecyclerView:Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView;

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->mAdapter:Lcom/smartisanos/magicflow/view/newslist/ItemListAdapter;

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 7
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->mRecyclerView:Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView;

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView;->addRefreshHeader()V

    .line 8
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->mRecyclerView:Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 9
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->mRecyclerView:Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setOverScrollMode(I)V

    .line 10
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->mLinearLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    .line 11
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->mRecyclerView:Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView;

    iget-object v2, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->mLinearLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0, v2}, Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView;->setLinearLayoutManager(Landroid/support/v7/widget/LinearLayoutManager;)V

    .line 12
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->mRecyclerView:Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView;

    new-instance v2, Lcom/smartisanos/magicflow/view/newslist/ItemListView$1;

    invoke-direct {v2, p0}, Lcom/smartisanos/magicflow/view/newslist/ItemListView$1;-><init>(Lcom/smartisanos/magicflow/view/newslist/ItemListView;)V

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 13
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->mRecyclerView:Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView;

    new-instance v2, Lcom/smartisanos/magicflow/view/newslist/ItemListView$2;

    invoke-direct {v2, p0}, Lcom/smartisanos/magicflow/view/newslist/ItemListView$2;-><init>(Lcom/smartisanos/magicflow/view/newslist/ItemListView;)V

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->addOnChildAttachStateChangeListener(Landroid/support/v7/widget/RecyclerView$OnChildAttachStateChangeListener;)V

    .line 14
    new-instance v0, Lcom/smartisanos/magicflow/view/newslist/ItemListView$3;

    invoke-direct {v0, p0}, Lcom/smartisanos/magicflow/view/newslist/ItemListView$3;-><init>(Lcom/smartisanos/magicflow/view/newslist/ItemListView;)V

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    const v0, 0x7f08036b

    .line 15
    invoke-virtual {p0, v0}, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->viewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->mUpdatedTip:Landroid/widget/TextView;

    .line 16
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 17
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 18
    iget-object v2, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->mUpdatedTip:Landroid/widget/TextView;

    invoke-virtual {v2, v0, v1}, Landroid/widget/TextView;->measure(II)V

    .line 19
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->mUpdatedTip:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->mUpdatedTipHeight:I

    return-void
.end method

.method private loadNewsFinish(Lcom/smartisanos/magicflow/h/r;Ljava/lang/String;Z)V
    .locals 1

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->log:Lcom/smartisanos/magicflow/LOG;

    const-string p2, "loadInitData return by NewsResult null"

    invoke-virtual {p1, p2}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/smartisanos/magicflow/h/r;->e()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3
    invoke-static {}, Lcom/smartisanos/magicflow/l/a;->d()Lcom/smartisanos/magicflow/l/a;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/smartisanos/magicflow/l/a;->e(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    const/4 p3, -0x1

    .line 4
    invoke-static {p2, p1, p3}, Lcom/smartisanos/magicflow/cache/NewsCache;->notifyNews(Ljava/lang/String;ZI)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p1}, Lcom/smartisanos/magicflow/h/r;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p3, p1}, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->handleInitFail(ZLjava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_2
    invoke-virtual {p1}, Lcom/smartisanos/magicflow/h/r;->d()Z

    move-result v0

    .line 7
    invoke-virtual {p1}, Lcom/smartisanos/magicflow/h/r;->a()Ljava/util/List;

    move-result-object p1

    .line 8
    invoke-static {p3, p2, v0, p1}, Lcom/smartisanos/magicflow/cache/NewsCache;->updateDataList(ZLjava/lang/String;ZLjava/util/List;)V

    :goto_0
    return-void
.end method

.method private loadSyncData(Z)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->mNewsType:Ljava/lang/String;

    new-instance v2, Lcom/smartisanos/magicflow/view/newslist/ItemListView$8;

    invoke-direct {v2, p0, p1}, Lcom/smartisanos/magicflow/view/newslist/ItemListView$8;-><init>(Lcom/smartisanos/magicflow/view/newslist/ItemListView;Z)V

    invoke-static {v0, p1, v1, v2}, Lcom/smartisanos/magicflow/cache/NewsCache;->loadTTWithServer(Landroid/content/Context;ZLjava/lang/String;Lcom/smartisanos/magicflow/cache/FailedCallback;)V

    return-void
.end method

.method private showStreamTopTip(ZI)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->finishRefreshing()V

    if-lez p2, :cond_0

    .line 3
    invoke-virtual {p0, p2}, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->showUpdated(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->showAlreadyNewest()V

    :cond_1
    :goto_0
    return-void
.end method

.method private showUpdatedTip(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->mUpdatedTip:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->mUpdatedTip:Landroid/widget/TextView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 4
    iget-boolean p1, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->mIsUpdatedTipAnimating:Z

    if-nez p1, :cond_1

    .line 5
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->startTipFadeInFadeOut()V

    :cond_1
    return-void
.end method

.method private startTipFadeInFadeOut()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->mRecyclerView:Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2
    iget v1, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->mUpdatedTipHeight:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 3
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->mRecyclerView:Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->mUpdatedTip:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, 0x0

    .line 5
    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 6
    iget-object v3, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->mUpdatedTip:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v3, 0x2

    new-array v3, v3, [I

    aput v2, v3, v2

    .line 7
    iget v2, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->mUpdatedTipHeight:I

    neg-int v2, v2

    const/4 v4, 0x1

    aput v2, v3, v4

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    const-wide/16 v3, 0x1f4

    .line 8
    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const-wide/16 v3, 0x320

    .line 9
    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 10
    new-instance v3, Lcom/smartisanos/magicflow/view/newslist/ItemListView$9;

    invoke-direct {v3, p0, v1, v0}, Lcom/smartisanos/magicflow/view/newslist/ItemListView$9;-><init>(Lcom/smartisanos/magicflow/view/newslist/ItemListView;Landroid/widget/RelativeLayout$LayoutParams;Landroid/widget/RelativeLayout$LayoutParams;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 11
    new-instance v0, Lcom/smartisanos/magicflow/view/newslist/ItemListView$10;

    invoke-direct {v0, p0}, Lcom/smartisanos/magicflow/view/newslist/ItemListView$10;-><init>(Lcom/smartisanos/magicflow/view/newslist/ItemListView;)V

    invoke-virtual {v2, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 12
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method


# virtual methods
.method public bind(Lcom/smartisanos/magicflow/h/q;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->mCategory:Lcom/smartisanos/magicflow/h/q;

    .line 2
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->mCategory:Lcom/smartisanos/magicflow/h/q;

    iget-object p1, p1, Lcom/smartisanos/magicflow/h/q;->b:Ljava/lang/String;

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->mNewsType:Ljava/lang/String;

    .line 3
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->mAdapter:Lcom/smartisanos/magicflow/view/newslist/ItemListAdapter;

    iget-object v0, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->mNewsType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/smartisanos/magicflow/view/newslist/ItemListAdapter;->setNewsType(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->reset()V

    .line 5
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->mNewsType:Ljava/lang/String;

    iget-object v0, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->mObserver:Lcom/smartisanos/magicflow/cache/NewsDataChangeObserver;

    invoke-static {p1, v0}, Lcom/smartisanos/magicflow/cache/NewsCache;->register(Ljava/lang/String;Lcom/smartisanos/magicflow/cache/NewsDataChangeObserver;)V

    .line 6
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->loadInitData()V

    return-void
.end method

.method public canLoadMore()Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->mIsRefreshing:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->mIsLoading:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->mAdapter:Lcom/smartisanos/magicflow/view/newslist/ItemListAdapter;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->mLinearLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    iget-object v2, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->mAdapter:Lcom/smartisanos/magicflow/view/newslist/ItemListAdapter;

    .line 3
    invoke-virtual {v2}, Lcom/smartisanos/magicflow/view/newslist/ItemListAdapter;->getItemCount()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x3

    if-lt v0, v2, :cond_1

    move v1, v3

    :cond_1
    :goto_0
    return v1
.end method

.method public destroy()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->mNewsType:Ljava/lang/String;

    invoke-static {v0}, Lcom/smartisanos/magicflow/cache/NewsCache;->unregister(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->isDestroy:Z

    .line 3
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->mSwipeRefreshLayout:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshRecyclerView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v2, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v2}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 5
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->mSwipeRefreshLayout:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshRecyclerView;

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->destroy()V

    .line 6
    iput-object v1, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->mSwipeRefreshLayout:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshRecyclerView;

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->mAdapter:Lcom/smartisanos/magicflow/view/newslist/ItemListAdapter;

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/newslist/ItemListAdapter;->destroy()V

    .line 9
    iput-object v1, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->mAdapter:Lcom/smartisanos/magicflow/view/newslist/ItemListAdapter;

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->mRecyclerView:Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView;

    if-eqz v0, :cond_2

    .line 11
    invoke-virtual {v0}, Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView;->destroy()V

    .line 12
    iput-object v1, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->mRecyclerView:Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView;

    .line 13
    :cond_2
    iput-object v1, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->mParser:Lcom/smartisanos/magicflow/j/e;

    .line 14
    iput-object v1, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->mLinearLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    .line 15
    iput-object v1, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 16
    iput-object v1, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->mListViewDataLoadFinishListener:Lcom/smartisanos/magicflow/view/newslist/ItemListView$OnListViewDataLoadFinishListener;

    .line 17
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->mHasShowedPosition:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method protected finishRefreshing()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->mSwipeRefreshLayout:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshRecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->isFinishedRefresh()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->mSwipeRefreshLayout:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshRecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->finishRefreshing(I)V

    :cond_0
    return-void
.end method

.method public getAdapter()Lcom/smartisanos/magicflow/view/newslist/ItemListAdapter;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->mAdapter:Lcom/smartisanos/magicflow/view/newslist/ItemListAdapter;

    return-object v0
.end method

.method public loadInitData()V
    .locals 9

    .line 1
    invoke-static {}, Lcom/smartisanos/magicflow/o/j;->e()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->mListViewDataLoadFinishListener:Lcom/smartisanos/magicflow/view/newslist/ItemListView$OnListViewDataLoadFinishListener;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, v1}, Lcom/smartisanos/magicflow/view/newslist/ItemListView$OnListViewDataLoadFinishListener;->onListViewDataLoadFinish(Z)V

    :cond_0
    return-void

    .line 4
    :cond_1
    iput-boolean v1, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->canShowTip:Z

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->mIsRefreshing:Z

    .line 6
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iget-object v3, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->mNewsType:Ljava/lang/String;

    invoke-static {v3}, Lcom/smartisanos/magicflow/cache/NewsCache;->getNoShowTTFeedAdList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 8
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    const/4 v4, 0x3

    rsub-int/lit8 v5, v1, 0x3

    .line 9
    sget-boolean v6, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-eqz v6, :cond_3

    .line 10
    iget-object v6, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->log:Lcom/smartisanos/magicflow/LOG;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "needAdSize="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ",noShowedAdNum="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    .line 11
    :cond_3
    new-instance v1, Lcom/smartisanos/magicflow/i/e;

    iget-object v6, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->mNewsType:Ljava/lang/String;

    invoke-direct {v1, v4, v6, v0}, Lcom/smartisanos/magicflow/i/e;-><init>(ILjava/lang/String;Z)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    new-instance v0, Lcom/smartisanos/magicflow/view/newslist/ItemListView$7;

    invoke-direct {v0, p0, v2, v5, v3}, Lcom/smartisanos/magicflow/view/newslist/ItemListView$7;-><init>(Lcom/smartisanos/magicflow/view/newslist/ItemListView;Ljava/util/List;ILjava/util/List;)V

    invoke-static {v0}, Lcom/smartisanos/magicflow/o/c;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->mRecyclerView:Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public notifyNewsCardDataChanged()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->mNewsType:Ljava/lang/String;

    const-string v1, "__all__"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, -0x1

    const-string v2, "news_card__all__"

    .line 2
    invoke-static {v2, v0, v1}, Lcom/smartisanos/magicflow/cache/NewsCache;->notifyNews(Ljava/lang/String;ZI)V

    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onLoadMore()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->mIsLoading:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->mIsLoading:Z

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, v0}, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->loadSyncData(Z)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    return-void
.end method

.method public onRefresh()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->mCategory:Lcom/smartisanos/magicflow/h/q;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->mIsRefreshing:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->mIsRefreshing:Z

    .line 3
    iput-boolean v0, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->canShowTip:Z

    .line 4
    invoke-direct {p0, v0}, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->loadSyncData(Z)V

    :cond_0
    return-void
.end method

.method public removeData(Lcom/smartisanos/magicflow/h/l;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget v0, p1, Lcom/smartisanos/magicflow/h/l;->A:I

    .line 2
    invoke-static {}, Lcom/smartisanos/magicflow/l/a;->d()Lcom/smartisanos/magicflow/l/a;

    move-result-object v1

    .line 3
    iget-boolean v2, p1, Lcom/smartisanos/magicflow/h/l;->E:Z

    if-nez v2, :cond_1

    .line 4
    new-instance v2, Lcom/smartisanos/magicflow/view/newslist/ItemListView$5;

    invoke-direct {v2, p0, p1}, Lcom/smartisanos/magicflow/view/newslist/ItemListView$5;-><init>(Lcom/smartisanos/magicflow/view/newslist/ItemListView;Lcom/smartisanos/magicflow/h/l;)V

    invoke-static {v2}, Lcom/smartisanos/magicflow/o/d;->post(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    .line 5
    iget-object v2, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->mNewsType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/smartisanos/magicflow/l/a;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    .line 6
    iget-object v2, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->mNewsType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/smartisanos/magicflow/l/a;->e(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 7
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->mNewsType:Ljava/lang/String;

    .line 8
    invoke-virtual {v1, p1}, Lcom/smartisanos/magicflow/l/a;->e(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->mNewsType:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/smartisanos/magicflow/l/a;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 9
    invoke-virtual {v1, p1, v2, v3}, Lcom/smartisanos/magicflow/l/a;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x0

    .line 10
    iput-boolean v1, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->canShowTip:Z

    .line 11
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->mNewsType:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/smartisanos/magicflow/cache/NewsCache;->updateNewsMapItemList(Ljava/lang/String;Ljava/util/List;)V

    .line 12
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->mNewsType:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lcom/smartisanos/magicflow/cache/NewsCache;->notifyNews(Ljava/lang/String;ZI)V

    .line 13
    iput-boolean v1, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->canShowTip:Z

    :cond_3
    return-void
.end method

.method protected reset()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->finishRefreshing()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->mIsRefreshing:Z

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->mIsLoading:Z

    .line 4
    iput-boolean v0, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->isDestroy:Z

    return-void
.end method

.method public setEnablePullDownRefresh(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->mSwipeRefreshLayout:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshRecyclerView;

    invoke-virtual {v0, p1}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->setEnabledPullDownToRefresh(Z)V

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->mSwipeRefreshLayout:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshRecyclerView;

    new-instance v0, Lcom/smartisanos/magicflow/view/newslist/ItemListView$4;

    invoke-direct {v0, p0}, Lcom/smartisanos/magicflow/view/newslist/ItemListView$4;-><init>(Lcom/smartisanos/magicflow/view/newslist/ItemListView;)V

    invoke-virtual {p1, v0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->setRefreshListener(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView$RefreshListener;)V

    .line 3
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->mSwipeRefreshLayout:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshRecyclerView;

    invoke-virtual {p1}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->enablePullDown()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->mSwipeRefreshLayout:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshRecyclerView;

    invoke-virtual {p1}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBaseView;->disablePullDown()V

    :goto_0
    return-void
.end method

.method public setEnableScrollUpdate(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->mSwipeRefreshLayout:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshRecyclerView;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object v0, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->reset()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->mSwipeRefreshLayout:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshRecyclerView;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object v0, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    :goto_0
    return-void
.end method

.method public setOnItemClickListener(Lcom/smartisanos/magicflow/view/newslist/ItemListView$OnItemClickListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->mAdapter:Lcom/smartisanos/magicflow/view/newslist/ItemListAdapter;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/smartisanos/magicflow/view/newslist/ItemListAdapter;->setOnItemClickListener(Lcom/smartisanos/magicflow/view/newslist/ItemListView$OnItemClickListener;)V

    :cond_0
    return-void
.end method

.method public setOnListViewDataLoadFinishListener(Lcom/smartisanos/magicflow/view/newslist/ItemListView$OnListViewDataLoadFinishListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->mListViewDataLoadFinishListener:Lcom/smartisanos/magicflow/view/newslist/ItemListView$OnListViewDataLoadFinishListener;

    return-void
.end method

.method public setOnListViewDeleteListener(Lcom/smartisanos/magicflow/view/newslist/ItemListView$OnListViewItemDeleteListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->mAdapter:Lcom/smartisanos/magicflow/view/newslist/ItemListAdapter;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/smartisanos/magicflow/view/newslist/ItemListAdapter;->setOnListViewItemDeleteListener(Lcom/smartisanos/magicflow/view/newslist/ItemListView$OnListViewItemDeleteListener;)V

    :cond_0
    return-void
.end method

.method public setRecyclerNestedScrollingEnabled(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->mRecyclerView:Lcom/smartisanos/magicflow/pulltorefresh/HeaderRecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    return-void
.end method

.method public setUseListDivider(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->mUseListDivider:Z

    .line 2
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->mAdapter:Lcom/smartisanos/magicflow/view/newslist/ItemListAdapter;

    if-eqz p1, :cond_0

    .line 3
    iget-boolean v0, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->mUseListDivider:Z

    invoke-virtual {p1, v0}, Lcom/smartisanos/magicflow/view/newslist/ItemListAdapter;->setUseListDivider(Z)V

    :cond_0
    return-void
.end method

.method protected showAlreadyNewest()V
    .locals 1

    const v0, 0x7f0d024e

    .line 1
    invoke-virtual {p0, v0}, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->showUpdatedTip(I)V

    return-void
.end method

.method protected showNetworkError()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/smartisanos/magicflow/o/j;->g(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0d01c3

    .line 2
    invoke-virtual {p0, v0}, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->toast(I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/smartisanos/magicflow/o/j;->n(Landroid/content/Context;)V

    :goto_0
    return-void
.end method

.method protected showUpdated(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->mAdapter:Lcom/smartisanos/magicflow/view/newslist/ItemListAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/newslist/ItemListAdapter;->getItemCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d02af

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-direct {p0, p1}, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->showUpdatedTip(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected showUpdatedTip(I)V
    .locals 1

    .line 6
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->mUpdatedTip:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 8
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->mUpdatedTip:Landroid/widget/TextView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 9
    iget-boolean p1, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->mIsUpdatedTipAnimating:Z

    if-nez p1, :cond_1

    .line 10
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->startTipFadeInFadeOut()V

    :cond_1
    return-void
.end method

.method protected toast(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/smartisanos/magicflow/service/MagicFlowService;->d()Lcom/smartisanos/magicflow/service/MagicFlowService;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/smartisanos/magicflow/o/n;->a(Landroid/content/Context;I)V

    return-void
.end method

.method public viewById(I)Landroid/view/View;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method
