.class public Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;
.super Ljava/lang/Object;
.source "NewsCardStreamView.java"


# instance fields
.field private log:Lcom/smartisanos/magicflow/LOG;

.field private mCardListView:Lcom/smartisanos/magicflow/view/card/news/AbstractNewsCardListView;

.field private mContentView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mLoadViewStatusChangeListener:Lcom/smartisanos/magicflow/view/card/news/OnLoadViewStatusChangeListener;

.field private mNewsCardProgressBar:Landroid/widget/ProgressBar;

.field private mNoNetworkView:Lcom/smartisanos/magicflow/view/NoNetworkView;

.field private mRefreshBtn:Landroid/widget/TextView;

.field private mStreamType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/smartisanos/magicflow/h/q;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-class v0, Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;

    invoke-static {v0}, Lcom/smartisanos/magicflow/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/magicflow/LOG;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;->log:Lcom/smartisanos/magicflow/LOG;

    .line 3
    new-instance v0, Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView$2;

    invoke-direct {v0, p0}, Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView$2;-><init>(Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;)V

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;->mLoadViewStatusChangeListener:Lcom/smartisanos/magicflow/view/card/news/OnLoadViewStatusChangeListener;

    .line 4
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;->mContext:Landroid/content/Context;

    .line 5
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0b0097

    const/4 v1, 0x0

    .line 6
    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;->mContentView:Landroid/view/View;

    .line 7
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;->mContentView:Landroid/view/View;

    const v0, 0x7f0801da

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/smartisanos/magicflow/view/NoNetworkView;

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;->mNoNetworkView:Lcom/smartisanos/magicflow/view/NoNetworkView;

    .line 8
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;->mContentView:Landroid/view/View;

    const v0, 0x7f0801db

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;->mNewsCardProgressBar:Landroid/widget/ProgressBar;

    .line 9
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;->mContentView:Landroid/view/View;

    const v0, 0x7f0801d9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/smartisanos/magicflow/view/card/news/CardItemListView;

    .line 10
    invoke-direct {p0, p1, p2}, Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;->initStreamListView(Lcom/smartisanos/magicflow/view/card/news/CardItemListView;Lcom/smartisanos/magicflow/h/q;)V

    .line 11
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;->mNoNetworkView:Lcom/smartisanos/magicflow/view/NoNetworkView;

    new-instance p2, Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView$1;

    invoke-direct {p2, p0}, Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView$1;-><init>(Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;)V

    invoke-virtual {p1, p2}, Lcom/smartisanos/magicflow/view/NoNetworkView;->setButtonClickListener(Lcom/smartisanos/magicflow/view/card/news/NoNetWorkButtonClickListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;)Landroid/widget/ProgressBar;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;->mNewsCardProgressBar:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$100(Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;)Lcom/smartisanos/magicflow/view/NoNetworkView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;->mNoNetworkView:Lcom/smartisanos/magicflow/view/NoNetworkView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;->mStreamType:I

    return p0
.end method

.method static synthetic access$300(Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;)Lcom/smartisanos/magicflow/view/card/news/AbstractNewsCardListView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;->mCardListView:Lcom/smartisanos/magicflow/view/card/news/AbstractNewsCardListView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method protected static handleClickListItem(Lcom/smartisanos/magicflow/h/l;Landroid/content/Context;I)V
    .locals 4

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-static {}, Lcom/smartisanos/magicflow/o/n;->j()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2
    invoke-static {}, Lcom/smartisanos/magicflow/l/a;->d()Lcom/smartisanos/magicflow/l/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/smartisanos/magicflow/l/a;->a(Lcom/smartisanos/magicflow/h/l;)V

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eqz p2, :cond_2

    if-eq p2, v2, :cond_1

    goto :goto_0

    :cond_1
    const-string p2, "smartisan_read"

    .line 3
    invoke-static {p2}, Lcom/smartisanos/magicflow/cache/NewsCache;->getNewsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p2

    .line 4
    invoke-static {}, Lcom/smartisanos/magicflow/c;->h()Lcom/smartisanos/magicflow/c;

    move-result-object v3

    add-int/2addr p2, v2

    invoke-virtual {v3, v1, p2}, Lcom/smartisanos/magicflow/c;->b(II)V

    .line 5
    invoke-static {}, Lcom/smartisanos/magicflow/c;->h()Lcom/smartisanos/magicflow/c;

    move-result-object p2

    invoke-virtual {p2, v2, v0}, Lcom/smartisanos/magicflow/c;->a(II)V

    .line 6
    invoke-static {p1, p0, v2}, Lcom/smartisanos/magicflow/o/n;->a(Landroid/content/Context;Lcom/smartisanos/magicflow/h/l;I)V

    goto :goto_0

    :cond_2
    const-string p2, "__all__"

    .line 7
    invoke-static {p2}, Lcom/smartisanos/magicflow/cache/NewsCache;->getNewsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p2

    .line 8
    invoke-static {}, Lcom/smartisanos/magicflow/c;->h()Lcom/smartisanos/magicflow/c;

    move-result-object v3

    add-int/2addr p2, v2

    invoke-virtual {v3, p2, v1}, Lcom/smartisanos/magicflow/c;->b(II)V

    .line 9
    invoke-static {}, Lcom/smartisanos/magicflow/c;->h()Lcom/smartisanos/magicflow/c;

    move-result-object p2

    const-string v1, "news_card_tt"

    invoke-virtual {p2, v1}, Lcom/smartisanos/magicflow/c;->e(Ljava/lang/String;)V

    .line 10
    invoke-static {p1, p0, v0}, Lcom/smartisanos/magicflow/o/n;->a(Landroid/content/Context;Lcom/smartisanos/magicflow/h/l;I)V

    :cond_3
    :goto_0
    return-void
.end method

.method private initStreamListView(Lcom/smartisanos/magicflow/view/card/news/CardItemListView;Lcom/smartisanos/magicflow/h/q;)V
    .locals 7

    if-nez p2, :cond_0

    .line 1
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;->log:Lcom/smartisanos/magicflow/LOG;

    const-string p2, "listInfo == null"

    invoke-virtual {p1, p2}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    return-void

    .line 2
    :cond_0
    iget-object v0, p2, Lcom/smartisanos/magicflow/h/q;->b:Ljava/lang/String;

    const-string v1, "__all__"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;->mStreamType:I

    .line 4
    new-instance v0, Lcom/smartisanos/magicflow/view/card/news/TouTiaoListView;

    iget-object v2, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;->mNewsCardProgressBar:Landroid/widget/ProgressBar;

    iget-object v6, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;->mLoadViewStatusChangeListener:Lcom/smartisanos/magicflow/view/card/news/OnLoadViewStatusChangeListener;

    move-object v1, v0

    move-object v3, p2

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/smartisanos/magicflow/view/card/news/TouTiaoListView;-><init>(Landroid/content/Context;Lcom/smartisanos/magicflow/h/q;Lcom/smartisanos/magicflow/view/card/news/CardItemListView;Landroid/widget/ProgressBar;Lcom/smartisanos/magicflow/view/card/news/OnLoadViewStatusChangeListener;)V

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;->mCardListView:Lcom/smartisanos/magicflow/view/card/news/AbstractNewsCardListView;

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p2, Lcom/smartisanos/magicflow/h/q;->b:Ljava/lang/String;

    const-string v1, "smartisan_read"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 6
    iput v0, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;->mStreamType:I

    .line 7
    new-instance v0, Lcom/smartisanos/magicflow/view/card/news/ReadListView;

    iget-object v2, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;->mNewsCardProgressBar:Landroid/widget/ProgressBar;

    iget-object v6, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;->mLoadViewStatusChangeListener:Lcom/smartisanos/magicflow/view/card/news/OnLoadViewStatusChangeListener;

    move-object v1, v0

    move-object v3, p2

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/smartisanos/magicflow/view/card/news/ReadListView;-><init>(Landroid/content/Context;Lcom/smartisanos/magicflow/h/q;Lcom/smartisanos/magicflow/view/card/news/CardItemListView;Landroid/widget/ProgressBar;Lcom/smartisanos/magicflow/view/card/news/OnLoadViewStatusChangeListener;)V

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;->mCardListView:Lcom/smartisanos/magicflow/view/card/news/AbstractNewsCardListView;

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method protected clean()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;->mCardListView:Lcom/smartisanos/magicflow/view/card/news/AbstractNewsCardListView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/card/news/AbstractNewsCardListView;->clean()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;->mNoNetworkView:Lcom/smartisanos/magicflow/view/NoNetworkView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/view/NoNetworkView;->setButtonClickListener(Lcom/smartisanos/magicflow/view/card/news/NoNetWorkButtonClickListener;)V

    .line 5
    :cond_1
    iput-object v1, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;->mLoadViewStatusChangeListener:Lcom/smartisanos/magicflow/view/card/news/OnLoadViewStatusChangeListener;

    return-void
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method protected notifyListViewDataChanged()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;->mCardListView:Lcom/smartisanos/magicflow/view/card/news/AbstractNewsCardListView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/card/news/AbstractNewsCardListView;->notifyListViewDataChanged()V

    :cond_0
    return-void
.end method

.method protected refreshListData(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;->mCardListView:Lcom/smartisanos/magicflow/view/card/news/AbstractNewsCardListView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;->setProgressBarStatus()V

    .line 3
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;->mCardListView:Lcom/smartisanos/magicflow/view/card/news/AbstractNewsCardListView;

    invoke-virtual {p1}, Lcom/smartisanos/magicflow/view/card/news/AbstractNewsCardListView;->refreshData()V

    :cond_0
    return-void
.end method

.method protected setContentViewVisibility(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method protected setProgressBarStatus()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;->mStreamType:I

    invoke-static {v0}, Lcom/smartisanos/magicflow/cache/NewsCache;->getCacheSize(I)I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;->mNewsCardProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;->mNoNetworkView:Lcom/smartisanos/magicflow/view/NoNetworkView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method protected switchStreamView()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;->mCardListView:Lcom/smartisanos/magicflow/view/card/news/AbstractNewsCardListView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;->setProgressBarStatus()V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;->mCardListView:Lcom/smartisanos/magicflow/view/card/news/AbstractNewsCardListView;

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/card/news/AbstractNewsCardListView;->onChecked()V

    :cond_0
    return-void
.end method
