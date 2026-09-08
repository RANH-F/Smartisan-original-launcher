.class public Lcom/smartisanos/magicflow/view/card/lifeinfo/ExpressListView;
.super Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseListView;
.source "ExpressListView.java"


# instance fields
.field private mObserver:Lcom/smartisanos/magicflow/cache/DataChangeObserver;


# direct methods
.method public constructor <init>(Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseListView;-><init>(Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;Landroid/content/Context;Ljava/lang/String;)V

    .line 2
    new-instance p1, Lcom/smartisanos/magicflow/view/card/lifeinfo/ExpressListView$1;

    invoke-direct {p1, p0}, Lcom/smartisanos/magicflow/view/card/lifeinfo/ExpressListView$1;-><init>(Lcom/smartisanos/magicflow/view/card/lifeinfo/ExpressListView;)V

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/ExpressListView;->mObserver:Lcom/smartisanos/magicflow/cache/DataChangeObserver;

    .line 3
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseListView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f06013b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseListView;->mContext:Landroid/content/Context;

    .line 4
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060130

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/2addr p1, v0

    .line 5
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseListView;->mLifeInfoCardListView:Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;

    invoke-virtual {v0, p1}, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->setNormalItemHeight(I)V

    .line 6
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseListView;->mLifeInfoCardListView:Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;

    const-string v0, "Express"

    invoke-virtual {p1, v0}, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->setItemViewType(Ljava/lang/String;)V

    .line 7
    new-instance p1, Lcom/smartisanos/magicflow/view/card/lifeinfo/DeliveryItemViewHolder;

    invoke-direct {p1, p2}, Lcom/smartisanos/magicflow/view/card/lifeinfo/DeliveryItemViewHolder;-><init>(Landroid/content/Context;)V

    .line 8
    new-instance v0, Lcom/smartisanos/magicflow/view/card/lifeinfo/DeliveryItemViewHolder;

    invoke-direct {v0, p2}, Lcom/smartisanos/magicflow/view/card/lifeinfo/DeliveryItemViewHolder;-><init>(Landroid/content/Context;)V

    .line 9
    iget-object p2, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseListView;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f060132

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseListView;->mContext:Landroid/content/Context;

    .line 10
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600b4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr p2, v1

    .line 11
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseListView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f060133

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v3, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseListView;->mContext:Landroid/content/Context;

    .line 12
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v1, v2

    const/4 v2, 0x0

    .line 13
    invoke-virtual {p1, v2}, Lcom/smartisanos/magicflow/view/card/lifeinfo/DeliveryItemViewHolder;->setViewStatus(Z)V

    .line 14
    iget-object v2, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseListView;->mLifeInfoCardListView:Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;

    invoke-virtual {v2, v1}, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->setHeadViewHeight(I)V

    .line 15
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseListView;->mLifeInfoCardListView:Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;

    invoke-virtual {p1}, Lcom/smartisanos/magicflow/view/card/lifeinfo/DeliveryItemViewHolder;->getItemView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->setHeadView(Landroid/view/View;)V

    const/4 p1, 0x1

    .line 16
    invoke-virtual {v0, p1}, Lcom/smartisanos/magicflow/view/card/lifeinfo/DeliveryItemViewHolder;->setViewStatus(Z)V

    .line 17
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseListView;->mLifeInfoCardListView:Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;

    invoke-virtual {p1, p2}, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->setFootViewHeight(I)V

    .line 18
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseListView;->mLifeInfoCardListView:Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/card/lifeinfo/DeliveryItemViewHolder;->getItemView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->setFootView(Landroid/view/View;)V

    .line 19
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/view/card/lifeinfo/ExpressListView;->updateListView()V

    .line 20
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/ExpressListView;->mObserver:Lcom/smartisanos/magicflow/cache/DataChangeObserver;

    invoke-static {p1}, Lcom/smartisanos/magicflow/cache/ExpressDataCache;->registerExpressObserver(Lcom/smartisanos/magicflow/cache/DataChangeObserver;)V

    .line 21
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/ExpressListView;->mObserver:Lcom/smartisanos/magicflow/cache/DataChangeObserver;

    invoke-static {p1}, Lcom/smartisanos/magicflow/cache/ExpressDataCache;->registerAccountObserver(Lcom/smartisanos/magicflow/cache/DataChangeObserver;)V

    .line 22
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseListView;->mLifeInfoCardListView:Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;

    new-instance p2, Lcom/smartisanos/magicflow/view/card/lifeinfo/ExpressListView$2;

    invoke-direct {p2, p0, p3}, Lcom/smartisanos/magicflow/view/card/lifeinfo/ExpressListView$2;-><init>(Lcom/smartisanos/magicflow/view/card/lifeinfo/ExpressListView;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->setOnItemViewMoveListener(Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView$OnItemViewMoveListener;)V

    .line 23
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseListView;->mLifeInfoCardListView:Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;

    new-instance p2, Lcom/smartisanos/magicflow/view/card/lifeinfo/ExpressListView$3;

    invoke-direct {p2, p0}, Lcom/smartisanos/magicflow/view/card/lifeinfo/ExpressListView$3;-><init>(Lcom/smartisanos/magicflow/view/card/lifeinfo/ExpressListView;)V

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

    check-cast v2, Lcom/smartisanos/magicflow/h/g;

    .line 5
    new-instance v3, Lcom/smartisanos/magicflow/view/card/lifeinfo/ExpressItemViewHolder;

    iget-object v4, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseListView;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/smartisanos/magicflow/view/card/lifeinfo/ExpressItemViewHolder;-><init>(Landroid/content/Context;)V

    .line 6
    invoke-virtual {v3, v2}, Lcom/smartisanos/magicflow/view/card/lifeinfo/ExpressItemViewHolder;->setViewData(Lcom/smartisanos/magicflow/h/m;)V

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
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/ExpressListView;->mObserver:Lcom/smartisanos/magicflow/cache/DataChangeObserver;

    invoke-static {v0}, Lcom/smartisanos/magicflow/cache/ExpressDataCache;->unregisterExpressObserver(Lcom/smartisanos/magicflow/cache/DataChangeObserver;)V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/ExpressListView;->mObserver:Lcom/smartisanos/magicflow/cache/DataChangeObserver;

    invoke-static {v0}, Lcom/smartisanos/magicflow/cache/ExpressDataCache;->unregisterAccountObserver(Lcom/smartisanos/magicflow/cache/DataChangeObserver;)V

    .line 4
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseListView;->mLifeInfoCardListView:Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;

    if-eqz v0, :cond_0

    .line 5
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
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/view/card/lifeinfo/ExpressListView;->updateListView()V

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
    check-cast p1, Lcom/smartisanos/magicflow/h/g;

    invoke-static {p1}, Lcom/smartisanos/magicflow/cache/ExpressDataCache;->removeExpressCardItem(Lcom/smartisanos/magicflow/h/g;)V

    return-void
.end method

.method public updateListView()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseListView;->mLifeInfoCardListView:Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lcom/smartisanos/magicflow/cache/ExpressDataCache;->getExpressExpressItemList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseListView;->getValidItemList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcom/smartisanos/magicflow/h/g;->a(Ljava/util/List;)V

    .line 4
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseListView;->mLifeInfoCardListView:Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;

    invoke-virtual {v1, v0, p0}, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->update(Ljava/util/List;Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseListView;)V

    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseListView;->mLifeInfoCardListView:Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;->getHeadView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 8
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/smartisanos/magicflow/view/card/lifeinfo/DeliveryItemViewHolder;

    if-eqz v1, :cond_0

    .line 9
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/magicflow/view/card/lifeinfo/DeliveryItemViewHolder;

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/card/lifeinfo/DeliveryItemViewHolder;->setDeliveryItemText()V

    :cond_0
    return-void
.end method
