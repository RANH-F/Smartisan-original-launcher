.class public Lcom/smartisanos/magicflow/view/card/lifeinfo/HotelListView;
.super Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseListView;
.source "HotelListView.java"


# instance fields
.field private mObserver:Lcom/smartisanos/magicflow/cache/DataChangeObserver;


# direct methods
.method public constructor <init>(Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseListView;-><init>(Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;Landroid/content/Context;Ljava/lang/String;)V

    .line 2
    new-instance p1, Lcom/smartisanos/magicflow/view/card/lifeinfo/HotelListView$1;

    invoke-direct {p1, p0}, Lcom/smartisanos/magicflow/view/card/lifeinfo/HotelListView$1;-><init>(Lcom/smartisanos/magicflow/view/card/lifeinfo/HotelListView;)V

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/HotelListView;->mObserver:Lcom/smartisanos/magicflow/cache/DataChangeObserver;

    .line 3
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseListView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f06019b

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iget-object p2, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseListView;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0600b4

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    add-int/2addr p1, p2

    .line 4
    iget-object p2, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseListView;->mLifeInfoCardListView:Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;

    invoke-virtual {p2, p1}, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->setNormalItemHeight(I)V

    .line 5
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseListView;->mLifeInfoCardListView:Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;

    const-string p2, "Hotel"

    invoke-virtual {p1, p2}, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->setItemViewType(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/view/card/lifeinfo/HotelListView;->updateListView()V

    .line 7
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/HotelListView;->mObserver:Lcom/smartisanos/magicflow/cache/DataChangeObserver;

    invoke-static {p1}, Lcom/smartisanos/magicflow/cache/HotelDataCache;->register(Lcom/smartisanos/magicflow/cache/DataChangeObserver;)V

    .line 8
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseListView;->mLifeInfoCardListView:Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;

    new-instance p2, Lcom/smartisanos/magicflow/view/card/lifeinfo/HotelListView$2;

    invoke-direct {p2, p0, p3}, Lcom/smartisanos/magicflow/view/card/lifeinfo/HotelListView$2;-><init>(Lcom/smartisanos/magicflow/view/card/lifeinfo/HotelListView;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->setOnItemViewMoveListener(Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView$OnItemViewMoveListener;)V

    .line 9
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseListView;->mLifeInfoCardListView:Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;

    new-instance p2, Lcom/smartisanos/magicflow/view/card/lifeinfo/HotelListView$3;

    invoke-direct {p2, p0}, Lcom/smartisanos/magicflow/view/card/lifeinfo/HotelListView$3;-><init>(Lcom/smartisanos/magicflow/view/card/lifeinfo/HotelListView;)V

    invoke-virtual {p1, p2}, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->setOnItemViewDeleteListener(Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView$OnItemViewDeleteListener;)V

    return-void
.end method


# virtual methods
.method public getItemViews(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/smartisanos/magicflow/h/m;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_1

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 3
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 4
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/magicflow/h/k;

    .line 5
    new-instance v3, Lcom/smartisanos/magicflow/view/card/lifeinfo/HotelItemViewHolder;

    iget-object v4, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseListView;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/smartisanos/magicflow/view/card/lifeinfo/HotelItemViewHolder;-><init>(Landroid/content/Context;)V

    .line 6
    invoke-virtual {v3, v2}, Lcom/smartisanos/magicflow/view/card/lifeinfo/HotelItemViewHolder;->setViewData(Lcom/smartisanos/magicflow/h/m;)V

    .line 7
    invoke-virtual {v3}, Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseLifeInfoItemViewHolder;->getItemView()Landroid/view/View;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseListView;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/HotelListView;->mObserver:Lcom/smartisanos/magicflow/cache/DataChangeObserver;

    invoke-static {v0}, Lcom/smartisanos/magicflow/cache/HotelDataCache;->unregister(Lcom/smartisanos/magicflow/cache/DataChangeObserver;)V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseListView;->mLifeInfoCardListView:Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->destroy()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseListView;->mLifeInfoCardListView:Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->onPause()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/view/card/lifeinfo/HotelListView;->updateListView()V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseListView;->mLifeInfoCardListView:Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->updateItemViewStatus()V

    :cond_0
    return-void
.end method

.method public removeItemInfo(Lcom/smartisanos/magicflow/h/m;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/smartisanos/magicflow/cache/HotelDataCache;->removeHotelCardItem(Lcom/smartisanos/magicflow/h/m;)V

    return-void
.end method

.method public updateListView()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseListView;->mLifeInfoCardListView:Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/smartisanos/magicflow/cache/HotelDataCache;->HOTEL_INFO_LIST:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseListView;->getValidItemList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcom/smartisanos/magicflow/h/k;->a(Ljava/util/List;)V

    .line 4
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseListView;->mLifeInfoCardListView:Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;

    invoke-virtual {v1, v0, p0}, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->update(Ljava/util/List;Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseListView;)V

    :cond_0
    return-void
.end method
