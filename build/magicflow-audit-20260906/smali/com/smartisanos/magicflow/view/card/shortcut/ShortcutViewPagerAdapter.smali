.class public Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutViewPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "ShortcutViewPagerAdapter.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mShortcutItemInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mShortcutItemViewList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutViewPagerItemView;",
            ">;"
        }
    .end annotation
.end field

.field private observer:Lcom/smartisanos/magicflow/cache/DataChangeObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 2
    new-instance v0, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutViewPagerAdapter$1;

    invoke-direct {v0, p0}, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutViewPagerAdapter$1;-><init>(Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutViewPagerAdapter;)V

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutViewPagerAdapter;->observer:Lcom/smartisanos/magicflow/cache/DataChangeObserver;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutViewPagerAdapter;->mShortcutItemViewList:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutViewPagerAdapter;->mShortcutItemInfoList:Ljava/util/List;

    .line 5
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutViewPagerAdapter;->mContext:Landroid/content/Context;

    .line 6
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutViewPagerAdapter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/smartisanos/magicflow/cache/ShortcutInfoCache;->init(Landroid/content/Context;)V

    .line 7
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutViewPagerAdapter;->observer:Lcom/smartisanos/magicflow/cache/DataChangeObserver;

    invoke-static {p1}, Lcom/smartisanos/magicflow/cache/ShortcutInfoCache;->registerTool(Lcom/smartisanos/magicflow/cache/DataChangeObserver;)V

    return-void
.end method

.method static synthetic access$000(Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutViewPagerAdapter;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutViewPagerAdapter;->mShortcutItemInfoList:Ljava/util/List;

    return-object p0
.end method

.method private getPageDataByPosition(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutItemInfo;",
            ">;"
        }
    .end annotation

    mul-int/lit8 p1, p1, 0x6

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutViewPagerAdapter;->mShortcutItemInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v1, p1, 0x6

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutViewPagerAdapter;->mShortcutItemInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 2
    :goto_0
    invoke-static {}, Lcom/smartisanos/magicflow/cache/ShortcutInfoCache;->getToolShortcutInfoList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt p1, v0, :cond_2

    .line 3
    invoke-static {}, Lcom/smartisanos/magicflow/cache/ShortcutInfoCache;->getToolShortcutInfoList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v1, v0, :cond_1

    goto :goto_1

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutViewPagerAdapter;->mShortcutItemInfoList:Ljava/util/List;

    invoke-interface {v0, p1, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutViewPagerAdapter;->observer:Lcom/smartisanos/magicflow/cache/DataChangeObserver;

    invoke-static {v0}, Lcom/smartisanos/magicflow/cache/ShortcutInfoCache;->unregisterTool(Lcom/smartisanos/magicflow/cache/DataChangeObserver;)V

    return-void
.end method

.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutViewPagerAdapter;->mShortcutItemViewList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/support/v4/view/PagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutViewPagerAdapter;->mShortcutItemViewList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutViewPagerItemView;

    .line 2
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutViewPagerAdapter;->mShortcutItemViewList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setData(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutItemInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutViewPagerAdapter;->mShortcutItemInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_3

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutViewPagerAdapter;->mShortcutItemInfoList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutViewPagerAdapter;->mShortcutItemInfoList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 5
    rem-int/lit8 v0, p1, 0x6

    div-int/lit8 p1, p1, 0x6

    if-eqz v0, :cond_1

    add-int/lit8 p1, p1, 0x1

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutViewPagerAdapter;->mShortcutItemViewList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-ne v0, p1, :cond_2

    :goto_0
    if-ge v1, p1, :cond_4

    .line 7
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutViewPagerAdapter;->mShortcutItemViewList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutViewPagerItemView;

    .line 8
    invoke-direct {p0, v1}, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutViewPagerAdapter;->getPageDataByPosition(I)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutViewPagerItemView;->setData(Ljava/util/List;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutViewPagerAdapter;->mShortcutItemViewList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :goto_1
    if-ge v1, p1, :cond_4

    .line 10
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutViewPagerAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0b00d7

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutViewPagerItemView;

    .line 11
    invoke-direct {p0, v1}, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutViewPagerAdapter;->getPageDataByPosition(I)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutViewPagerItemView;->setData(Ljava/util/List;)V

    .line 12
    iget-object v2, p0, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutViewPagerAdapter;->mShortcutItemViewList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 13
    :cond_3
    :goto_2
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutViewPagerAdapter;->mShortcutItemViewList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 14
    :cond_4
    invoke-virtual {p0}, Landroid/support/v4/view/PagerAdapter;->notifyDataSetChanged()V

    return-void
.end method
