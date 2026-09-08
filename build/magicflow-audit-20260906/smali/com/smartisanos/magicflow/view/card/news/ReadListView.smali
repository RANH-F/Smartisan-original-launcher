.class public Lcom/smartisanos/magicflow/view/card/news/ReadListView;
.super Lcom/smartisanos/magicflow/view/card/news/AbstractNewsCardListView;
.source "ReadListView.java"


# instance fields
.field private observer:Lcom/smartisanos/magicflow/cache/NewsDataChangeObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/smartisanos/magicflow/h/q;Lcom/smartisanos/magicflow/view/card/news/CardItemListView;Landroid/widget/ProgressBar;Lcom/smartisanos/magicflow/view/card/news/OnLoadViewStatusChangeListener;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/smartisanos/magicflow/view/card/news/AbstractNewsCardListView;-><init>(Landroid/content/Context;Lcom/smartisanos/magicflow/h/q;Lcom/smartisanos/magicflow/view/card/news/CardItemListView;Landroid/widget/ProgressBar;Lcom/smartisanos/magicflow/view/card/news/OnLoadViewStatusChangeListener;)V

    .line 2
    new-instance p1, Lcom/smartisanos/magicflow/view/card/news/ReadListView$1;

    invoke-direct {p1, p0}, Lcom/smartisanos/magicflow/view/card/news/ReadListView$1;-><init>(Lcom/smartisanos/magicflow/view/card/news/ReadListView;)V

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/news/ReadListView;->observer:Lcom/smartisanos/magicflow/cache/NewsDataChangeObserver;

    .line 3
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/news/ReadListView;->observer:Lcom/smartisanos/magicflow/cache/NewsDataChangeObserver;

    const-string p2, "smartisan_read"

    invoke-static {p2, p1}, Lcom/smartisanos/magicflow/cache/NewsCache;->register(Ljava/lang/String;Lcom/smartisanos/magicflow/cache/NewsDataChangeObserver;)V

    return-void
.end method


# virtual methods
.method protected changeViewStatus()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/news/AbstractNewsCardListView;->mListView:Lcom/smartisanos/magicflow/view/card/news/CardItemListView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/card/news/CardItemListView;->getAdapter()Lcom/smartisanos/magicflow/view/card/news/AbstractCardItemListAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/news/AbstractNewsCardListView;->mListView:Lcom/smartisanos/magicflow/view/card/news/CardItemListView;

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/card/news/CardItemListView;->getAdapter()Lcom/smartisanos/magicflow/view/card/news/AbstractCardItemListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/card/news/AbstractCardItemListAdapter;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/card/news/AbstractNewsCardListView;->mLoadViewStatusChangeListener:Lcom/smartisanos/magicflow/view/card/news/OnLoadViewStatusChangeListener;

    if-eqz v1, :cond_1

    .line 4
    invoke-interface {v1, v0}, Lcom/smartisanos/magicflow/view/card/news/OnLoadViewStatusChangeListener;->onLoadViewStatusChange(Z)V

    :cond_1
    return-void
.end method

.method public clean()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/smartisanos/magicflow/view/card/news/AbstractNewsCardListView;->clean()V

    const/4 v0, 0x1

    .line 2
    invoke-static {v0}, Lcom/smartisanos/magicflow/o/n;->a(I)V

    const-string v0, "smartisan_read"

    .line 3
    invoke-static {v0}, Lcom/smartisanos/magicflow/cache/NewsCache;->unregister(Ljava/lang/String;)V

    return-void
.end method
