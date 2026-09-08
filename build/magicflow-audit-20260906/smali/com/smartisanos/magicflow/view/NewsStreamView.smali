.class public Lcom/smartisanos/magicflow/view/NewsStreamView;
.super Lcom/smartisanos/magicflow/view/BaseView;
.source "NewsStreamView.java"


# instance fields
.field private listParent:Landroid/widget/RelativeLayout;

.field private log:Lcom/smartisanos/magicflow/LOG;

.field private mListInfo:Lcom/smartisanos/magicflow/h/q;

.field private mNewsListView:Lcom/smartisanos/magicflow/view/newslist/ItemListView;

.field private mNoNetworkLayout:Lcom/smartisanos/magicflow/view/NoNetworkView;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mWebView:Lcom/smartisanos/magicflow/view/NewsWebView;

.field private onClickListener:Lcom/smartisanos/magicflow/view/card/news/NoNetWorkButtonClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/smartisanos/magicflow/h/q;)V
    .locals 1

    const v0, 0x7f0b0088

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/smartisanos/magicflow/view/BaseView;-><init>(Landroid/content/Context;I)V

    .line 2
    const-class p1, Lcom/smartisanos/magicflow/view/NewsStreamView;

    invoke-static {p1}, Lcom/smartisanos/magicflow/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/magicflow/LOG;

    move-result-object p1

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/NewsStreamView;->log:Lcom/smartisanos/magicflow/LOG;

    .line 3
    iput-object p2, p0, Lcom/smartisanos/magicflow/view/NewsStreamView;->mListInfo:Lcom/smartisanos/magicflow/h/q;

    .line 4
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContentView:Landroid/view/ViewGroup;

    const p2, 0x7f0801a8

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/NewsStreamView;->listParent:Landroid/widget/RelativeLayout;

    .line 5
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContentView:Landroid/view/ViewGroup;

    const p2, 0x7f0801e8

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/smartisanos/magicflow/view/NoNetworkView;

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/NewsStreamView;->mNoNetworkLayout:Lcom/smartisanos/magicflow/view/NoNetworkView;

    .line 6
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContentView:Landroid/view/ViewGroup;

    const p2, 0x7f0801e9

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/NewsStreamView;->mProgressBar:Landroid/widget/ProgressBar;

    .line 7
    new-instance p1, Lcom/smartisanos/magicflow/view/newslist/NewsItemListView;

    iget-object p2, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/smartisanos/magicflow/view/newslist/NewsItemListView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/NewsStreamView;->mNewsListView:Lcom/smartisanos/magicflow/view/newslist/ItemListView;

    .line 8
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/NewsStreamView;->mNewsListView:Lcom/smartisanos/magicflow/view/newslist/ItemListView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->setUseListDivider(Z)V

    .line 9
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/NewsStreamView;->mNewsListView:Lcom/smartisanos/magicflow/view/newslist/ItemListView;

    invoke-virtual {p1, p2}, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->setRecyclerNestedScrollingEnabled(Z)V

    .line 10
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/NewsStreamView;->mNewsListView:Lcom/smartisanos/magicflow/view/newslist/ItemListView;

    invoke-virtual {p1, p2}, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->setEnablePullDownRefresh(Z)V

    .line 11
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/NewsStreamView;->mNewsListView:Lcom/smartisanos/magicflow/view/newslist/ItemListView;

    invoke-virtual {p1, p2}, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->setEnableScrollUpdate(Z)V

    .line 12
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/NewsStreamView;->mNewsListView:Lcom/smartisanos/magicflow/view/newslist/ItemListView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 13
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/NewsStreamView;->listParent:Landroid/widget/RelativeLayout;

    iget-object p2, p0, Lcom/smartisanos/magicflow/view/NewsStreamView;->mNewsListView:Lcom/smartisanos/magicflow/view/newslist/ItemListView;

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 14
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/NewsStreamView;->mNewsListView:Lcom/smartisanos/magicflow/view/newslist/ItemListView;

    new-instance p2, Lcom/smartisanos/magicflow/view/NewsStreamView$1;

    invoke-direct {p2, p0}, Lcom/smartisanos/magicflow/view/NewsStreamView$1;-><init>(Lcom/smartisanos/magicflow/view/NewsStreamView;)V

    invoke-virtual {p1, p2}, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->setOnItemClickListener(Lcom/smartisanos/magicflow/view/newslist/ItemListView$OnItemClickListener;)V

    .line 15
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/NewsStreamView;->mNewsListView:Lcom/smartisanos/magicflow/view/newslist/ItemListView;

    new-instance p2, Lcom/smartisanos/magicflow/view/NewsStreamView$2;

    invoke-direct {p2, p0}, Lcom/smartisanos/magicflow/view/NewsStreamView$2;-><init>(Lcom/smartisanos/magicflow/view/NewsStreamView;)V

    invoke-virtual {p1, p2}, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->setOnListViewDeleteListener(Lcom/smartisanos/magicflow/view/newslist/ItemListView$OnListViewItemDeleteListener;)V

    .line 16
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/NewsStreamView;->mNewsListView:Lcom/smartisanos/magicflow/view/newslist/ItemListView;

    new-instance p2, Lcom/smartisanos/magicflow/view/NewsStreamView$3;

    invoke-direct {p2, p0}, Lcom/smartisanos/magicflow/view/NewsStreamView$3;-><init>(Lcom/smartisanos/magicflow/view/NewsStreamView;)V

    invoke-virtual {p1, p2}, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->setOnListViewDataLoadFinishListener(Lcom/smartisanos/magicflow/view/newslist/ItemListView$OnListViewDataLoadFinishListener;)V

    .line 17
    new-instance p1, Lcom/smartisanos/magicflow/view/NewsStreamView$4;

    invoke-direct {p1, p0}, Lcom/smartisanos/magicflow/view/NewsStreamView$4;-><init>(Lcom/smartisanos/magicflow/view/NewsStreamView;)V

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/NewsStreamView;->onClickListener:Lcom/smartisanos/magicflow/view/card/news/NoNetWorkButtonClickListener;

    .line 18
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/NewsStreamView;->mNoNetworkLayout:Lcom/smartisanos/magicflow/view/NoNetworkView;

    iget-object p2, p0, Lcom/smartisanos/magicflow/view/NewsStreamView;->onClickListener:Lcom/smartisanos/magicflow/view/card/news/NoNetWorkButtonClickListener;

    invoke-virtual {p1, p2}, Lcom/smartisanos/magicflow/view/NoNetworkView;->setButtonClickListener(Lcom/smartisanos/magicflow/view/card/news/NoNetWorkButtonClickListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/smartisanos/magicflow/view/NewsStreamView;)Lcom/smartisanos/magicflow/view/NewsWebView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/magicflow/view/NewsStreamView;->mWebView:Lcom/smartisanos/magicflow/view/NewsWebView;

    return-object p0
.end method

.method static synthetic access$002(Lcom/smartisanos/magicflow/view/NewsStreamView;Lcom/smartisanos/magicflow/view/NewsWebView;)Lcom/smartisanos/magicflow/view/NewsWebView;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/NewsStreamView;->mWebView:Lcom/smartisanos/magicflow/view/NewsWebView;

    return-object p1
.end method

.method static synthetic access$100(Lcom/smartisanos/magicflow/view/NewsStreamView;)Lcom/smartisanos/magicflow/h/q;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/magicflow/view/NewsStreamView;->mListInfo:Lcom/smartisanos/magicflow/h/q;

    return-object p0
.end method

.method static synthetic access$200(Lcom/smartisanos/magicflow/view/NewsStreamView;)Lcom/smartisanos/magicflow/LOG;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/magicflow/view/NewsStreamView;->log:Lcom/smartisanos/magicflow/LOG;

    return-object p0
.end method

.method static synthetic access$300(Lcom/smartisanos/magicflow/view/NewsStreamView;)Lcom/smartisanos/magicflow/view/newslist/ItemListView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/magicflow/view/NewsStreamView;->mNewsListView:Lcom/smartisanos/magicflow/view/newslist/ItemListView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/smartisanos/magicflow/view/NewsStreamView;)Lcom/smartisanos/magicflow/view/NoNetworkView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/magicflow/view/NewsStreamView;->mNoNetworkLayout:Lcom/smartisanos/magicflow/view/NoNetworkView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/smartisanos/magicflow/view/NewsStreamView;)Landroid/widget/ProgressBar;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/magicflow/view/NewsStreamView;->mProgressBar:Landroid/widget/ProgressBar;

    return-object p0
.end method


# virtual methods
.method public bindListView()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/NewsStreamView;->mListInfo:Lcom/smartisanos/magicflow/h/q;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/NewsStreamView;->mNewsListView:Lcom/smartisanos/magicflow/view/newslist/ItemListView;

    invoke-virtual {v1, v0}, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->bind(Lcom/smartisanos/magicflow/h/q;)V

    :cond_0
    return-void
.end method

.method public onAdd()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/NewsStreamView;->mWebView:Lcom/smartisanos/magicflow/view/NewsWebView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/NewsWebView;->destroyWebview()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/smartisanos/magicflow/view/NewsStreamView;->mWebView:Lcom/smartisanos/magicflow/view/NewsWebView;

    :cond_0
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/NewsStreamView;->mNewsListView:Lcom/smartisanos/magicflow/view/newslist/ItemListView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->setEnableScrollUpdate(Z)V

    :cond_0
    return-void
.end method

.method public onExit()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/NewsStreamView;->mWebView:Lcom/smartisanos/magicflow/view/NewsWebView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/NewsWebView;->destroyWebview()V

    .line 3
    iput-object v1, p0, Lcom/smartisanos/magicflow/view/NewsStreamView;->mWebView:Lcom/smartisanos/magicflow/view/NewsWebView;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/NewsStreamView;->mNewsListView:Lcom/smartisanos/magicflow/view/newslist/ItemListView;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->destroy()V

    .line 6
    iput-object v1, p0, Lcom/smartisanos/magicflow/view/NewsStreamView;->mNewsListView:Lcom/smartisanos/magicflow/view/newslist/ItemListView;

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/NewsStreamView;->mNoNetworkLayout:Lcom/smartisanos/magicflow/view/NoNetworkView;

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/view/NoNetworkView;->setButtonClickListener(Lcom/smartisanos/magicflow/view/card/news/NoNetWorkButtonClickListener;)V

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/NewsStreamView;->listParent:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_3

    .line 10
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 11
    iput-object v1, p0, Lcom/smartisanos/magicflow/view/NewsStreamView;->listParent:Landroid/widget/RelativeLayout;

    .line 12
    :cond_3
    iput-object v1, p0, Lcom/smartisanos/magicflow/view/NewsStreamView;->onClickListener:Lcom/smartisanos/magicflow/view/card/news/NoNetWorkButtonClickListener;

    return-void
.end method

.method public onRemove()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/NewsStreamView;->mNewsListView:Lcom/smartisanos/magicflow/view/newslist/ItemListView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->notifyNewsCardDataChanged()V

    :cond_0
    return-void
.end method

.method public onRemoveNews(Lcom/smartisanos/magicflow/h/l;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/NewsStreamView;->mNewsListView:Lcom/smartisanos/magicflow/view/newslist/ItemListView;

    invoke-virtual {v0, p1}, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->removeData(Lcom/smartisanos/magicflow/h/l;)V

    return-void
.end method
