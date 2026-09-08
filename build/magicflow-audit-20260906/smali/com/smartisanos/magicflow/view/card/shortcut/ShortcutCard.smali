.class public Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutCard;
.super Lcom/smartisanos/magicflow/view/card/Card;
.source "ShortcutCard.java"


# instance fields
.field private mAdapter:Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutViewPagerAdapter;

.field private mDotsView:Lcom/smartisanos/magicflow/view/card/shortcut/DotsView;

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/smartisanos/magicflow/h/b;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/smartisanos/magicflow/view/card/Card;-><init>(Landroid/content/Context;Lcom/smartisanos/magicflow/h/b;Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutCard;)Lcom/smartisanos/magicflow/view/card/shortcut/DotsView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutCard;->mDotsView:Lcom/smartisanos/magicflow/view/card/shortcut/DotsView;

    return-object p0
.end method

.method private setData()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutCard;->mAdapter:Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutViewPagerAdapter;

    invoke-static {}, Lcom/smartisanos/magicflow/cache/ShortcutInfoCache;->getToolShortcutInfoList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutViewPagerAdapter;->setData(Ljava/util/List;)V

    .line 2
    invoke-static {}, Lcom/smartisanos/magicflow/cache/ShortcutInfoCache;->getToolShortcutInfoList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 3
    rem-int/lit8 v1, v0, 0x6

    div-int/lit8 v0, v0, 0x6

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutCard;->mDotsView:Lcom/smartisanos/magicflow/view/card/shortcut/DotsView;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/smartisanos/magicflow/view/card/shortcut/DotsView;->setDotsData(II)V

    return-void
.end method


# virtual methods
.method public onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutCard;->mAdapter:Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutViewPagerAdapter;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutViewPagerAdapter;->destroy()V

    .line 3
    :cond_0
    invoke-super {p0}, Lcom/smartisanos/magicflow/view/card/Card;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/smartisanos/magicflow/view/card/Card;->onPause()V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutCard;->mAdapter:Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutViewPagerAdapter;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutCard;->mViewPager:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    :cond_0
    return-void
.end method

.method public onReadyToLoadData()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/smartisanos/magicflow/view/card/Card;->onReadyToLoadData()V

    .line 2
    new-instance v0, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutViewPagerAdapter;

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/card/Card;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutViewPagerAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutCard;->mAdapter:Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutViewPagerAdapter;

    .line 3
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutCard;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutCard;->mAdapter:Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutViewPagerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 4
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutCard;->setData()V

    .line 5
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutCard;->mViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutCard$1;

    invoke-direct {v1, p0}, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutCard$1;-><init>(Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutCard;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/smartisanos/magicflow/view/card/Card;->onResume()V

    return-void
.end method

.method public setContentView()V
    .locals 2

    const v0, 0x7f0b0073

    .line 1
    invoke-virtual {p0, v0}, Lcom/smartisanos/magicflow/view/card/Card;->initView(I)V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/Card;->mContentView:Landroid/view/ViewGroup;

    const v1, 0x7f08028f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutCard;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 3
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/Card;->mContentView:Landroid/view/ViewGroup;

    const v1, 0x7f0800eb

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/magicflow/view/card/shortcut/DotsView;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutCard;->mDotsView:Lcom/smartisanos/magicflow/view/card/shortcut/DotsView;

    return-void
.end method
