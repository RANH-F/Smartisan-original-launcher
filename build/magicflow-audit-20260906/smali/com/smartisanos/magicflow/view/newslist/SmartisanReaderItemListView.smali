.class public Lcom/smartisanos/magicflow/view/newslist/SmartisanReaderItemListView;
.super Lcom/smartisanos/magicflow/view/newslist/ItemListView;
.source "SmartisanReaderItemListView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/smartisanos/magicflow/view/newslist/SmartisanReaderItemListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/smartisanos/magicflow/view/newslist/SmartisanReaderItemListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/smartisanos/magicflow/view/newslist/ItemListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p1, Lcom/smartisanos/magicflow/j/c;

    invoke-direct {p1}, Lcom/smartisanos/magicflow/j/c;-><init>()V

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->mParser:Lcom/smartisanos/magicflow/j/e;

    return-void
.end method


# virtual methods
.method public bind(Lcom/smartisanos/magicflow/h/q;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-super {p0, p1}, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->bind(Lcom/smartisanos/magicflow/h/q;)V

    return-void
.end method

.method public onLoadMore()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->mIsLoading:Z

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0}, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->onLoadMore()V

    :cond_0
    return-void
.end method

.method public onRefresh()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/smartisanos/magicflow/view/newslist/ItemListView;->onRefresh()V

    return-void
.end method
