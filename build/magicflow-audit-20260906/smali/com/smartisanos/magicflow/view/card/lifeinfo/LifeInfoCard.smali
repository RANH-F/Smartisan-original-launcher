.class public Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCard;
.super Lcom/smartisanos/magicflow/view/card/Card;
.source "LifeInfoCard.java"


# instance fields
.field private lifeInfoCardListViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;",
            ">;"
        }
    .end annotation
.end field

.field private mExpressListView:Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;

.field private mFlightListView:Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;

.field private mHotelListView:Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;

.field private mInfoCardList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseListView;",
            ">;"
        }
    .end annotation
.end field

.field private mLifeInfoList:Landroid/widget/LinearLayout;

.field private mMovieListView:Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;

.field private mTrainListView:Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;

.field private settingChangeObserver:Lcom/smartisanos/magicflow/cache/SettingChangeObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/smartisanos/magicflow/h/b;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/smartisanos/magicflow/view/card/Card;-><init>(Landroid/content/Context;Lcom/smartisanos/magicflow/h/b;Z)V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCard;->mInfoCardList:Ljava/util/ArrayList;

    .line 3
    new-instance p1, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCard$1;

    invoke-direct {p1, p0}, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCard$1;-><init>(Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCard;)V

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCard;->settingChangeObserver:Lcom/smartisanos/magicflow/cache/SettingChangeObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCard;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCard;->refreshListViews()V

    return-void
.end method

.method private createBaseListView(Ljava/lang/String;)Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseListView;
    .locals 3

    const-string v0, "Movie"

    .line 1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/smartisanos/magicflow/view/card/lifeinfo/MovieTicketListView;

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCard;->mMovieListView:Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;

    iget-object v2, p0, Lcom/smartisanos/magicflow/view/card/Card;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2, p1}, Lcom/smartisanos/magicflow/view/card/lifeinfo/MovieTicketListView;-><init>(Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "Flight"

    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    new-instance v0, Lcom/smartisanos/magicflow/view/card/lifeinfo/FlightTicketListView;

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCard;->mFlightListView:Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;

    iget-object v2, p0, Lcom/smartisanos/magicflow/view/card/Card;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2, p1}, Lcom/smartisanos/magicflow/view/card/lifeinfo/FlightTicketListView;-><init>(Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "Train"

    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    new-instance v0, Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainTicketListView;

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCard;->mTrainListView:Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;

    iget-object v2, p0, Lcom/smartisanos/magicflow/view/card/Card;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2, p1}, Lcom/smartisanos/magicflow/view/card/lifeinfo/TrainTicketListView;-><init>(Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v0, "Hotel"

    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    new-instance v0, Lcom/smartisanos/magicflow/view/card/lifeinfo/HotelListView;

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCard;->mHotelListView:Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;

    iget-object v2, p0, Lcom/smartisanos/magicflow/view/card/Card;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2, p1}, Lcom/smartisanos/magicflow/view/card/lifeinfo/HotelListView;-><init>(Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v0, "Express"

    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 10
    new-instance v0, Lcom/smartisanos/magicflow/view/card/lifeinfo/ExpressListView;

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCard;->mExpressListView:Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;

    iget-object v2, p0, Lcom/smartisanos/magicflow/view/card/Card;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2, p1}, Lcom/smartisanos/magicflow/view/card/lifeinfo/ExpressListView;-><init>(Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private loadCards()V
    .locals 5

    const-string v0, "LifeInfo"

    .line 1
    invoke-static {v0}, Lcom/smartisanos/magicflow/cache/SettingDataCache;->getSubEnabledCategoryList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 3
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 4
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 5
    invoke-virtual {p0, v3}, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCard;->getBaseListView(Ljava/lang/String;)Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseListView;

    move-result-object v4

    if-nez v4, :cond_0

    .line 6
    invoke-direct {p0, v3}, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCard;->createBaseListView(Ljava/lang/String;)Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseListView;

    move-result-object v4

    :cond_0
    if-eqz v4, :cond_1

    .line 7
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCard;->mInfoCardList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseListView;

    .line 9
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 10
    invoke-virtual {v2}, Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseListView;->onDestroy()V

    goto :goto_1

    .line 11
    :cond_4
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCard;->mInfoCardList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 12
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCard;->mInfoCardList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 13
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :cond_5
    return-void
.end method

.method private refreshListViews()V
    .locals 6

    const-string v0, "LifeInfo"

    .line 1
    invoke-static {v0}, Lcom/smartisanos/magicflow/cache/SettingDataCache;->getSubEnabledCategoryList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCard;->mInfoCardList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseListView;

    .line 3
    invoke-virtual {v1}, Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseListView;->onDestroy()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCard;->mInfoCardList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void

    .line 5
    :cond_1
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCard;->mInfoCardList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v2, :cond_2

    goto :goto_2

    :cond_2
    move v1, v3

    .line 6
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 8
    iget-object v5, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCard;->mInfoCardList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseListView;

    iget-object v5, v5, Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseListView;->mCategory:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    move v4, v3

    :goto_2
    if-eqz v4, :cond_5

    .line 9
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCard;->loadCards()V

    goto :goto_4

    .line 10
    :cond_5
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCard;->mInfoCardList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseListView;

    .line 11
    invoke-virtual {v1}, Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseListView;->onResume()V

    goto :goto_3

    :cond_6
    :goto_4
    return-void
.end method

.method private registerSettingObserver()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "Movie"

    .line 2
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "Flight"

    .line 3
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "Train"

    .line 4
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "Hotel"

    .line 5
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "Express"

    .line 6
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    new-instance v1, Lcom/smartisanos/magicflow/cache/SettingObserverInfo;

    invoke-direct {v1, v0}, Lcom/smartisanos/magicflow/cache/SettingObserverInfo;-><init>(Ljava/util/List;)V

    .line 8
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCard;->settingChangeObserver:Lcom/smartisanos/magicflow/cache/SettingChangeObserver;

    invoke-static {v1, v0}, Lcom/smartisanos/magicflow/cache/SettingDataCache;->register(Lcom/smartisanos/magicflow/cache/SettingObserverInfo;Lcom/smartisanos/magicflow/cache/SettingChangeObserver;)V

    return-void
.end method


# virtual methods
.method public getBaseListView(Ljava/lang/String;)Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseListView;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCard;->mInfoCardList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseListView;

    .line 2
    iget-object v2, v1, Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseListView;->mCategory:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getUnderSubCategoryViewAnimators(Ljava/lang/String;IJ)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IJ)",
            "Ljava/util/List<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "Movie"

    .line 2
    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/Card;->mCardInnerSubViews:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCard;->mFlightListView:Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/Card;->mCardInnerSubViews:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCard;->mTrainListView:Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/Card;->mCardInnerSubViews:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCard;->mHotelListView:Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/Card;->mCardInnerSubViews:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCard;->mExpressListView:Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string v1, "Flight"

    .line 7
    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/Card;->mCardInnerSubViews:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCard;->mTrainListView:Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/Card;->mCardInnerSubViews:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCard;->mHotelListView:Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/Card;->mCardInnerSubViews:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCard;->mExpressListView:Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string v1, "Train"

    .line 11
    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 12
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/Card;->mCardInnerSubViews:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCard;->mHotelListView:Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/Card;->mCardInnerSubViews:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCard;->mExpressListView:Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const-string v1, "Hotel"

    .line 14
    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 15
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/Card;->mCardInnerSubViews:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCard;->mExpressListView:Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/Card;->mCardInnerSubViews:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_4

    return-object v0

    .line 17
    :cond_4
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/Card;->mCardInnerSubViews:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    int-to-float v4, p2

    aput v4, v2, v3

    const-string v3, "translationY"

    .line 18
    invoke-static {v1, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/smartisanos/magicflow/view/card/Card;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCard;->settingChangeObserver:Lcom/smartisanos/magicflow/cache/SettingChangeObserver;

    invoke-static {v0}, Lcom/smartisanos/magicflow/cache/SettingDataCache;->unregister(Lcom/smartisanos/magicflow/cache/SettingChangeObserver;)V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCard;->mInfoCardList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseListView;

    .line 4
    invoke-virtual {v1}, Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseListView;->onDestroy()V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCard;->mInfoCardList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/smartisanos/magicflow/view/card/Card;->onPause()V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCard;->mInfoCardList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseListView;

    .line 3
    invoke-virtual {v1}, Lcom/smartisanos/magicflow/view/card/lifeinfo/BaseListView;->onPause()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onReadyToLoadData()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCard;->loadCards()V

    .line 2
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCard;->registerSettingObserver()V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/smartisanos/magicflow/view/card/Card;->onResume()V

    .line 2
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCard;->refreshListViews()V

    return-void
.end method

.method public setContentView()V
    .locals 2

    const v0, 0x7f0b0074

    .line 1
    invoke-virtual {p0, v0}, Lcom/smartisanos/magicflow/view/card/Card;->initView(I)V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/Card;->mContentView:Landroid/view/ViewGroup;

    const v1, 0x7f08019a

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCard;->mLifeInfoList:Landroid/widget/LinearLayout;

    .line 3
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/Card;->mContentView:Landroid/view/ViewGroup;

    const v1, 0x7f0801cb

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCard;->mMovieListView:Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;

    .line 4
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/Card;->mContentView:Landroid/view/ViewGroup;

    const v1, 0x7f08012f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCard;->mFlightListView:Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;

    .line 5
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/Card;->mContentView:Landroid/view/ViewGroup;

    const v1, 0x7f0802ee

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCard;->mTrainListView:Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;

    .line 6
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/Card;->mContentView:Landroid/view/ViewGroup;

    const v1, 0x7f080160

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCard;->mHotelListView:Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;

    .line 7
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/Card;->mContentView:Landroid/view/ViewGroup;

    const v1, 0x7f08010d

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCard;->mExpressListView:Lcom/smartisanos/magicflow/view/card/lifeinfo/LifeInfoCardListView;

    return-void
.end method
