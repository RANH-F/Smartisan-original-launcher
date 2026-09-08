.class public abstract Lcom/smartisanos/magicflow/view/card/news/AbstractNewsCardListView;
.super Ljava/lang/Object;
.source "AbstractNewsCardListView.java"


# instance fields
.field private failedCallback:Lcom/smartisanos/magicflow/cache/FailedCallback;

.field private log:Lcom/smartisanos/magicflow/LOG;

.field private mAdapter:Lcom/smartisanos/magicflow/view/card/news/NewsAdapter;

.field protected mCategory:Lcom/smartisanos/magicflow/h/q;

.field protected mContext:Landroid/content/Context;

.field protected mListView:Lcom/smartisanos/magicflow/view/card/news/CardItemListView;

.field protected mLoadViewStatusChangeListener:Lcom/smartisanos/magicflow/view/card/news/OnLoadViewStatusChangeListener;

.field protected mNewsType:Ljava/lang/String;

.field protected mProgressBar:Landroid/widget/ProgressBar;

.field protected mStreamType:I

.field private mUrlSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/smartisanos/magicflow/h/q;Lcom/smartisanos/magicflow/view/card/news/CardItemListView;Landroid/widget/ProgressBar;Lcom/smartisanos/magicflow/view/card/news/OnLoadViewStatusChangeListener;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-class v0, Lcom/smartisanos/magicflow/view/card/news/AbstractNewsCardListView;

    invoke-static {v0}, Lcom/smartisanos/magicflow/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/magicflow/LOG;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/news/AbstractNewsCardListView;->log:Lcom/smartisanos/magicflow/LOG;

    .line 3
    new-instance v0, Lcom/smartisanos/magicflow/view/card/news/AbstractNewsCardListView$2;

    invoke-direct {v0, p0}, Lcom/smartisanos/magicflow/view/card/news/AbstractNewsCardListView$2;-><init>(Lcom/smartisanos/magicflow/view/card/news/AbstractNewsCardListView;)V

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/news/AbstractNewsCardListView;->failedCallback:Lcom/smartisanos/magicflow/cache/FailedCallback;

    .line 4
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/news/AbstractNewsCardListView;->mUrlSet:Ljava/util/HashSet;

    .line 5
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/news/AbstractNewsCardListView;->mContext:Landroid/content/Context;

    .line 6
    iput-object p2, p0, Lcom/smartisanos/magicflow/view/card/news/AbstractNewsCardListView;->mCategory:Lcom/smartisanos/magicflow/h/q;

    .line 7
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/news/AbstractNewsCardListView;->mCategory:Lcom/smartisanos/magicflow/h/q;

    iget-object p1, p1, Lcom/smartisanos/magicflow/h/q;->b:Ljava/lang/String;

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/news/AbstractNewsCardListView;->mNewsType:Ljava/lang/String;

    .line 8
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/news/AbstractNewsCardListView;->mNewsType:Ljava/lang/String;

    const-string p2, "smartisan_read"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 9
    iput p1, p0, Lcom/smartisanos/magicflow/view/card/news/AbstractNewsCardListView;->mStreamType:I

    goto :goto_0

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/news/AbstractNewsCardListView;->mNewsType:Ljava/lang/String;

    const-string v0, "__all__"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 11
    iput p2, p0, Lcom/smartisanos/magicflow/view/card/news/AbstractNewsCardListView;->mStreamType:I

    .line 12
    :cond_1
    :goto_0
    iput-object p3, p0, Lcom/smartisanos/magicflow/view/card/news/AbstractNewsCardListView;->mListView:Lcom/smartisanos/magicflow/view/card/news/CardItemListView;

    .line 13
    iput-object p4, p0, Lcom/smartisanos/magicflow/view/card/news/AbstractNewsCardListView;->mProgressBar:Landroid/widget/ProgressBar;

    .line 14
    iput-object p5, p0, Lcom/smartisanos/magicflow/view/card/news/AbstractNewsCardListView;->mLoadViewStatusChangeListener:Lcom/smartisanos/magicflow/view/card/news/OnLoadViewStatusChangeListener;

    .line 15
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/news/AbstractNewsCardListView;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 16
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/news/AbstractNewsCardListView;->mListView:Lcom/smartisanos/magicflow/view/card/news/CardItemListView;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 17
    new-instance p1, Lcom/smartisanos/magicflow/view/card/news/NewsAdapter;

    iget-object p2, p0, Lcom/smartisanos/magicflow/view/card/news/AbstractNewsCardListView;->mContext:Landroid/content/Context;

    iget-object p4, p0, Lcom/smartisanos/magicflow/view/card/news/AbstractNewsCardListView;->mNewsType:Ljava/lang/String;

    iget p5, p0, Lcom/smartisanos/magicflow/view/card/news/AbstractNewsCardListView;->mStreamType:I

    invoke-direct {p1, p2, p4, p5, p3}, Lcom/smartisanos/magicflow/view/card/news/NewsAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;ILandroid/view/ViewGroup;)V

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/news/AbstractNewsCardListView;->mAdapter:Lcom/smartisanos/magicflow/view/card/news/NewsAdapter;

    .line 18
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/news/AbstractNewsCardListView;->mListView:Lcom/smartisanos/magicflow/view/card/news/CardItemListView;

    iget-object p2, p0, Lcom/smartisanos/magicflow/view/card/news/AbstractNewsCardListView;->mAdapter:Lcom/smartisanos/magicflow/view/card/news/NewsAdapter;

    invoke-virtual {p1, p2}, Lcom/smartisanos/magicflow/view/card/news/CardItemListView;->setAdapter(Lcom/smartisanos/magicflow/view/card/news/AbstractCardItemListAdapter;)V

    .line 19
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/news/AbstractNewsCardListView;->mListView:Lcom/smartisanos/magicflow/view/card/news/CardItemListView;

    new-instance p2, Lcom/smartisanos/magicflow/view/card/news/AbstractNewsCardListView$1;

    invoke-direct {p2, p0}, Lcom/smartisanos/magicflow/view/card/news/AbstractNewsCardListView$1;-><init>(Lcom/smartisanos/magicflow/view/card/news/AbstractNewsCardListView;)V

    invoke-virtual {p1, p2}, Lcom/smartisanos/magicflow/view/card/news/CardItemListView;->setItemViewVisibleListener(Lcom/smartisanos/magicflow/view/card/news/AbstractCardItemListAdapter$ItemViewVisibilityChangedListener;)V

    .line 20
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/card/news/AbstractNewsCardListView;->updateView()V

    return-void
.end method

.method static synthetic access$000(Lcom/smartisanos/magicflow/view/card/news/AbstractNewsCardListView;)Lcom/smartisanos/magicflow/view/card/news/NewsAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/magicflow/view/card/news/AbstractNewsCardListView;->mAdapter:Lcom/smartisanos/magicflow/view/card/news/NewsAdapter;

    return-object p0
.end method

.method private updateView()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/news/AbstractNewsCardListView;->mListView:Lcom/smartisanos/magicflow/view/card/news/CardItemListView;

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/card/news/CardItemListView;->getAdapter()Lcom/smartisanos/magicflow/view/card/news/AbstractCardItemListAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    iget v1, p0, Lcom/smartisanos/magicflow/view/card/news/AbstractNewsCardListView;->mStreamType:I

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    const-string v0, "smartisan_read"

    .line 3
    invoke-static {v0}, Lcom/smartisanos/magicflow/cache/NewsCache;->getNewsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 5
    iget-object v2, p0, Lcom/smartisanos/magicflow/view/card/news/AbstractNewsCardListView;->mListView:Lcom/smartisanos/magicflow/view/card/news/CardItemListView;

    invoke-virtual {v2}, Lcom/smartisanos/magicflow/view/card/news/CardItemListView;->getAdapter()Lcom/smartisanos/magicflow/view/card/news/AbstractCardItemListAdapter;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/magicflow/view/card/news/NewsAdapter;

    invoke-virtual {v2, v0}, Lcom/smartisanos/magicflow/view/card/news/NewsAdapter;->update(Ljava/util/List;)V

    goto :goto_0

    :cond_2
    const-string v0, "__all__"

    .line 6
    invoke-static {v0}, Lcom/smartisanos/magicflow/cache/NewsCache;->getNewsList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 8
    iget-object v2, p0, Lcom/smartisanos/magicflow/view/card/news/AbstractNewsCardListView;->mListView:Lcom/smartisanos/magicflow/view/card/news/CardItemListView;

    invoke-virtual {v2}, Lcom/smartisanos/magicflow/view/card/news/CardItemListView;->getAdapter()Lcom/smartisanos/magicflow/view/card/news/AbstractCardItemListAdapter;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/magicflow/view/card/news/NewsAdapter;

    invoke-virtual {v2, v0}, Lcom/smartisanos/magicflow/view/card/news/NewsAdapter;->update(Ljava/util/List;)V

    :goto_0
    if-eqz v1, :cond_3

    .line 9
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/news/AbstractNewsCardListView;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 10
    :cond_3
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/view/card/news/AbstractNewsCardListView;->onViewStatusChange()V

    return-void
.end method


# virtual methods
.method protected abstract changeViewStatus()V
.end method

.method public clean()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/news/AbstractNewsCardListView;->mListView:Lcom/smartisanos/magicflow/view/card/news/CardItemListView;

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/news/AbstractNewsCardListView;->mListView:Lcom/smartisanos/magicflow/view/card/news/CardItemListView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 3
    iget-object v2, p0, Lcom/smartisanos/magicflow/view/card/news/AbstractNewsCardListView;->mListView:Lcom/smartisanos/magicflow/view/card/news/CardItemListView;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/smartisanos/magicflow/view/card/news/NewsViewHolder;

    if-eqz v3, :cond_0

    .line 5
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/magicflow/view/card/news/NewsViewHolder;

    invoke-virtual {v2}, Lcom/smartisanos/magicflow/view/card/news/NewsViewHolder;->clean()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/news/AbstractNewsCardListView;->mListView:Lcom/smartisanos/magicflow/view/card/news/CardItemListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/view/card/news/CardItemListView;->setAdapter(Lcom/smartisanos/magicflow/view/card/news/AbstractCardItemListAdapter;)V

    .line 7
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/news/AbstractNewsCardListView;->mListView:Lcom/smartisanos/magicflow/view/card/news/CardItemListView;

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/view/card/news/CardItemListView;->setItemViewVisibleListener(Lcom/smartisanos/magicflow/view/card/news/AbstractCardItemListAdapter$ItemViewVisibilityChangedListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    return-void
.end method

.method protected getNotLoadedList(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/smartisanos/magicflow/h/l;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/smartisanos/magicflow/h/l;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/view/card/news/AbstractNewsCardListView;->initUrlSet()V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 4
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 5
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/magicflow/h/l;

    iget-object v2, v2, Lcom/smartisanos/magicflow/h/l;->r:Ljava/lang/String;

    .line 6
    iget-object v3, p0, Lcom/smartisanos/magicflow/view/card/news/AbstractNewsCardListView;->mUrlSet:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 7
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 9
    iget-object v3, p0, Lcom/smartisanos/magicflow/view/card/news/AbstractNewsCardListView;->mUrlSet:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0

    :cond_3
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method protected initUrlSet()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/news/AbstractNewsCardListView;->mUrlSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 2
    invoke-static {}, Lcom/smartisanos/magicflow/l/a;->d()Lcom/smartisanos/magicflow/l/a;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/card/news/AbstractNewsCardListView;->mNewsType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/l/a;->e(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 4
    iget-object v2, p0, Lcom/smartisanos/magicflow/view/card/news/AbstractNewsCardListView;->mUrlSet:Ljava/util/HashSet;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/magicflow/h/l;

    iget-object v3, v3, Lcom/smartisanos/magicflow/h/l;->r:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public loadAgain(Z)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/smartisanos/magicflow/view/card/news/AbstractNewsCardListView;->mStreamType:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/news/AbstractNewsCardListView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/card/news/AbstractNewsCardListView;->failedCallback:Lcom/smartisanos/magicflow/cache/FailedCallback;

    invoke-static {v0, p1, v1}, Lcom/smartisanos/magicflow/cache/NewsCache;->loadReadWithServer(Landroid/content/Context;ZLcom/smartisanos/magicflow/cache/FailedCallback;)V

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/news/AbstractNewsCardListView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/card/news/AbstractNewsCardListView;->failedCallback:Lcom/smartisanos/magicflow/cache/FailedCallback;

    const-string v2, "news_card__all__"

    invoke-static {v0, p1, v2, v1}, Lcom/smartisanos/magicflow/cache/NewsCache;->loadTTWithServer(Landroid/content/Context;ZLjava/lang/String;Lcom/smartisanos/magicflow/cache/FailedCallback;)V

    :goto_0
    return-void
.end method

.method protected notifyListViewDataChanged()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/news/AbstractNewsCardListView;->mListView:Lcom/smartisanos/magicflow/view/card/news/CardItemListView;

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/card/news/CardItemListView;->getAdapter()Lcom/smartisanos/magicflow/view/card/news/AbstractCardItemListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/news/AbstractNewsCardListView;->mListView:Lcom/smartisanos/magicflow/view/card/news/CardItemListView;

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/card/news/CardItemListView;->getAdapter()Lcom/smartisanos/magicflow/view/card/news/AbstractCardItemListAdapter;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/magicflow/view/card/news/NewsAdapter;

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/card/news/AbstractCardItemListAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public onChecked()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/news/AbstractNewsCardListView;->mListView:Lcom/smartisanos/magicflow/view/card/news/CardItemListView;

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/card/news/CardItemListView;->getAdapter()Lcom/smartisanos/magicflow/view/card/news/AbstractCardItemListAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget v0, p0, Lcom/smartisanos/magicflow/view/card/news/AbstractNewsCardListView;->mStreamType:I

    invoke-static {v0}, Lcom/smartisanos/magicflow/cache/NewsCache;->getCacheSize(I)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p0, v0}, Lcom/smartisanos/magicflow/view/card/news/AbstractNewsCardListView;->loadAgain(Z)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x5

    if-ge v0, v1, :cond_2

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Lcom/smartisanos/magicflow/view/card/news/AbstractNewsCardListView;->loadAgain(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onViewStatusChange()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/news/AbstractNewsCardListView;->mListView:Lcom/smartisanos/magicflow/view/card/news/CardItemListView;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/view/card/news/AbstractNewsCardListView;->changeViewStatus()V

    return-void
.end method

.method protected refreshData()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/smartisanos/magicflow/view/card/news/AbstractNewsCardListView;->loadAgain(Z)V

    return-void
.end method

.method protected setItemListViewVisibility(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/news/AbstractNewsCardListView;->mListView:Lcom/smartisanos/magicflow/view/card/news/CardItemListView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method protected setOnLoadViewStatusChangeListener(Lcom/smartisanos/magicflow/view/card/news/OnLoadViewStatusChangeListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/news/AbstractNewsCardListView;->mLoadViewStatusChangeListener:Lcom/smartisanos/magicflow/view/card/news/OnLoadViewStatusChangeListener;

    return-void
.end method
