.class public Lcom/smartisanos/magicflow/view/NewsChannelStreamView;
.super Lcom/smartisanos/magicflow/view/BaseView;
.source "NewsChannelStreamView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mButtonBack:Landroid/widget/ImageView;

.field private mButtonChannel:Landroid/widget/ImageView;

.field private mButtonCollection:Landroid/widget/ImageView;

.field private mCateTabs:Landroid/widget/HorizontalScrollView;

.field private mNewsCategoryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private mPagerAdapter:Lcom/smartisanos/magicflow/view/newschannel/NewsPagerAdapter;

.field private mPrePosition:I

.field private mRadioAdapter:Lcom/smartisanos/magicflow/view/newschannel/NewsRadioAdapter;

.field private mRadioGroup:Lcom/smartisanos/magicflow/view/newschannel/NewsTabRadioGroup;

.field private mTitle:Lsmartisan/widget/TitleBar;

.field private mViewPager:Landroid/support/v4/view/ViewPager;

.field private settingChangeObserver:Lcom/smartisanos/magicflow/cache/SettingChangeObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const v0, 0x7f0b0086

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/smartisanos/magicflow/view/BaseView;-><init>(Landroid/content/Context;I)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/smartisanos/magicflow/view/NewsChannelStreamView;->mPrePosition:I

    .line 3
    new-instance p1, Lcom/smartisanos/magicflow/view/NewsChannelStreamView$1;

    invoke-direct {p1, p0}, Lcom/smartisanos/magicflow/view/NewsChannelStreamView$1;-><init>(Lcom/smartisanos/magicflow/view/NewsChannelStreamView;)V

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/NewsChannelStreamView;->settingChangeObserver:Lcom/smartisanos/magicflow/cache/SettingChangeObserver;

    .line 4
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/NewsChannelStreamView;->findView()V

    .line 5
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/NewsChannelStreamView;->initView()V

    .line 6
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/NewsChannelStreamView;->initAdapter()V

    .line 7
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/NewsChannelStreamView;->registerSettingObserver()V

    return-void
.end method

.method static synthetic access$000(Lcom/smartisanos/magicflow/view/NewsChannelStreamView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/NewsChannelStreamView;->refresh()V

    return-void
.end method

.method static synthetic access$100(Lcom/smartisanos/magicflow/view/NewsChannelStreamView;)Landroid/support/v4/view/ViewPager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/magicflow/view/NewsChannelStreamView;->mViewPager:Landroid/support/v4/view/ViewPager;

    return-object p0
.end method

.method static synthetic access$200(Lcom/smartisanos/magicflow/view/NewsChannelStreamView;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/magicflow/view/NewsChannelStreamView;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/smartisanos/magicflow/view/NewsChannelStreamView;)Lcom/smartisanos/magicflow/view/newschannel/NewsTabRadioGroup;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/magicflow/view/NewsChannelStreamView;->mRadioGroup:Lcom/smartisanos/magicflow/view/newschannel/NewsTabRadioGroup;

    return-object p0
.end method

.method static synthetic access$400(Lcom/smartisanos/magicflow/view/NewsChannelStreamView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/magicflow/view/NewsChannelStreamView;->mPrePosition:I

    return p0
.end method

.method static synthetic access$402(Lcom/smartisanos/magicflow/view/NewsChannelStreamView;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/smartisanos/magicflow/view/NewsChannelStreamView;->mPrePosition:I

    return p1
.end method

.method static synthetic access$500(Lcom/smartisanos/magicflow/view/NewsChannelStreamView;)Landroid/widget/HorizontalScrollView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/magicflow/view/NewsChannelStreamView;->mCateTabs:Landroid/widget/HorizontalScrollView;

    return-object p0
.end method

.method private destroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/NewsChannelStreamView;->mPagerAdapter:Lcom/smartisanos/magicflow/view/newschannel/NewsPagerAdapter;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/newschannel/NewsPagerAdapter;->destroy()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/NewsChannelStreamView;->mNewsCategoryList:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 5
    iput-object v1, p0, Lcom/smartisanos/magicflow/view/NewsChannelStreamView;->mNewsCategoryList:Ljava/util/List;

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/NewsChannelStreamView;->mRadioGroup:Lcom/smartisanos/magicflow/view/newschannel/NewsTabRadioGroup;

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/NewsChannelStreamView;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_3

    .line 9
    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    :cond_3
    const/4 v0, 0x3

    .line 10
    invoke-static {v0}, Lcom/smartisanos/magicflow/o/n;->a(I)V

    .line 11
    invoke-static {}, Lcom/smartisanos/magicflow/MagicFlowApplication;->a()Lcom/smartisanos/magicflow/MagicFlowApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/smartisanos/magicflow/o/n;->b(Landroid/content/Context;)V

    return-void
.end method

.method private findView()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContentView:Landroid/view/ViewGroup;

    const v1, 0x7f080373

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lsmartisan/widget/TitleBar;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/NewsChannelStreamView;->mTitle:Lsmartisan/widget/TitleBar;

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContentView:Landroid/view/ViewGroup;

    const v1, 0x7f0801ed

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/NewsChannelStreamView;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 3
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContentView:Landroid/view/ViewGroup;

    const v1, 0x7f08017f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/magicflow/view/newschannel/NewsTabRadioGroup;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/NewsChannelStreamView;->mRadioGroup:Lcom/smartisanos/magicflow/view/newschannel/NewsTabRadioGroup;

    .line 4
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContentView:Landroid/view/ViewGroup;

    const v1, 0x7f080152

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/HorizontalScrollView;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/NewsChannelStreamView;->mCateTabs:Landroid/widget/HorizontalScrollView;

    return-void
.end method

.method private initAdapter()V
    .locals 3

    .line 1
    new-instance v0, Lcom/smartisanos/magicflow/view/newschannel/NewsRadioAdapter;

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/smartisanos/magicflow/view/newschannel/NewsRadioAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/NewsChannelStreamView;->mRadioAdapter:Lcom/smartisanos/magicflow/view/newschannel/NewsRadioAdapter;

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/NewsChannelStreamView;->mRadioGroup:Lcom/smartisanos/magicflow/view/newschannel/NewsTabRadioGroup;

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/NewsChannelStreamView;->mRadioAdapter:Lcom/smartisanos/magicflow/view/newschannel/NewsRadioAdapter;

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/view/newschannel/NewsTabRadioGroup;->setAdapter(Lcom/smartisanos/magicflow/view/newschannel/RadioAdapter;)V

    .line 3
    new-instance v0, Lcom/smartisanos/magicflow/view/newschannel/NewsPagerAdapter;

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/smartisanos/magicflow/view/newschannel/NewsPagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/NewsChannelStreamView;->mPagerAdapter:Lcom/smartisanos/magicflow/view/newschannel/NewsPagerAdapter;

    .line 4
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/NewsChannelStreamView;->refresh()V

    return-void
.end method

.method private initView()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/NewsChannelStreamView;->mTitle:Lsmartisan/widget/TitleBar;

    const v1, 0x7f07035e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lsmartisan/widget/TitleBar;->addRightImageView(II)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/NewsChannelStreamView;->mButtonChannel:Landroid/widget/ImageView;

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/NewsChannelStreamView;->mButtonChannel:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/NewsChannelStreamView;->mTitle:Lsmartisan/widget/TitleBar;

    const v1, 0x7f07035f

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lsmartisan/widget/TitleBar;->addRightImageView(II)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/NewsChannelStreamView;->mButtonCollection:Landroid/widget/ImageView;

    .line 4
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/NewsChannelStreamView;->mButtonCollection:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/NewsChannelStreamView;->mTitle:Lsmartisan/widget/TitleBar;

    sget v1, Lsmartisan/widget/TitleBar;->BACK_ICON_RES:I

    invoke-virtual {v0, v1}, Lsmartisan/widget/TitleBar;->addLeftImageView(I)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/NewsChannelStreamView;->mButtonBack:Landroid/widget/ImageView;

    .line 6
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/NewsChannelStreamView;->mButtonBack:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/NewsChannelStreamView;->mRadioGroup:Lcom/smartisanos/magicflow/view/newschannel/NewsTabRadioGroup;

    new-instance v1, Lcom/smartisanos/magicflow/view/NewsChannelStreamView$2;

    invoke-direct {v1, p0}, Lcom/smartisanos/magicflow/view/NewsChannelStreamView$2;-><init>(Lcom/smartisanos/magicflow/view/NewsChannelStreamView;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 8
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/NewsChannelStreamView;->mViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/smartisanos/magicflow/view/NewsChannelStreamView$3;

    invoke-direct {v1, p0}, Lcom/smartisanos/magicflow/view/NewsChannelStreamView$3;-><init>(Lcom/smartisanos/magicflow/view/NewsChannelStreamView;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    return-void
.end method

.method private refresh()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/smartisanos/magicflow/cache/SettingDataCache;->getEnabledNewsChannelList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/NewsChannelStreamView;->mNewsCategoryList:Ljava/util/List;

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/NewsChannelStreamView;->mRadioAdapter:Lcom/smartisanos/magicflow/view/newschannel/NewsRadioAdapter;

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/NewsChannelStreamView;->mNewsCategoryList:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/view/newschannel/NewsRadioAdapter;->updateData(Ljava/util/List;)V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/NewsChannelStreamView;->mPagerAdapter:Lcom/smartisanos/magicflow/view/newschannel/NewsPagerAdapter;

    invoke-static {}, Lcom/smartisanos/magicflow/h/p;->b()Lcom/smartisanos/magicflow/h/p;

    move-result-object v1

    iget-object v2, p0, Lcom/smartisanos/magicflow/view/NewsChannelStreamView;->mNewsCategoryList:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/smartisanos/magicflow/h/p;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/view/newschannel/NewsPagerAdapter;->setCategory(Ljava/util/List;)V

    .line 4
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/NewsChannelStreamView;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/NewsChannelStreamView;->mPagerAdapter:Lcom/smartisanos/magicflow/view/newschannel/NewsPagerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    return-void
.end method

.method private refreshLocationItem()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/NewsChannelStreamView;->mNewsCategoryList:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "news_local"

    .line 2
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/NewsChannelStreamView;->mRadioAdapter:Lcom/smartisanos/magicflow/view/newschannel/NewsRadioAdapter;

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/newschannel/RadioAdapter;->notifyDataSetChanged()V

    .line 4
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/NewsChannelStreamView;->mPagerAdapter:Lcom/smartisanos/magicflow/view/newschannel/NewsPagerAdapter;

    iget-object v2, p0, Lcom/smartisanos/magicflow/view/NewsChannelStreamView;->mNewsCategoryList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/view/newschannel/NewsPagerAdapter;->getItem(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/magicflow/view/newschannel/fragment/NewsFragment;

    .line 5
    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/newschannel/fragment/NewsFragment;->refreshListView()V

    :cond_1
    return-void
.end method

.method private registerSettingObserver()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "EnabledNewsChannelOrder"

    .line 2
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    new-instance v1, Lcom/smartisanos/magicflow/cache/SettingObserverInfo;

    invoke-direct {v1, v0}, Lcom/smartisanos/magicflow/cache/SettingObserverInfo;-><init>(Ljava/util/List;)V

    .line 4
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/NewsChannelStreamView;->settingChangeObserver:Lcom/smartisanos/magicflow/cache/SettingChangeObserver;

    invoke-static {v1, v0}, Lcom/smartisanos/magicflow/cache/SettingDataCache;->register(Lcom/smartisanos/magicflow/cache/SettingObserverInfo;Lcom/smartisanos/magicflow/cache/SettingChangeObserver;)V

    return-void
.end method


# virtual methods
.method public onAdd()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/smartisanos/magicflow/o/j;->l(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/smartisanos/magicflow/o/h;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    :cond_0
    invoke-static {}, Lcom/smartisanos/magicflow/o/h;->c()V

    .line 4
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/NewsChannelStreamView;->refreshLocationItem()V

    .line 5
    :cond_1
    invoke-static {}, Lcom/smartisanos/magicflow/c;->h()Lcom/smartisanos/magicflow/c;

    move-result-object v0

    const-string v1, "A350029"

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/c;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/smartisanos/magicflow/o/n;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/NewsChannelStreamView;->mButtonBack:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_1

    .line 3
    invoke-static {}, Lcom/smartisanos/magicflow/b;->j()Lcom/smartisanos/magicflow/view/MagicFlowActivity;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 4
    invoke-virtual {p1}, Lcom/smartisanos/magicflow/view/MagicFlowActivity;->onBackPressed()V

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/NewsChannelStreamView;->mButtonChannel:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_2

    .line 6
    new-instance p1, Lcom/smartisanos/magicflow/view/settings/channel/NewsChannelSettingView;

    iget-object v0, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p1, v0, v1, v2}, Lcom/smartisanos/magicflow/view/settings/channel/NewsChannelSettingView;-><init>(Landroid/content/Context;ZZ)V

    .line 7
    invoke-static {p0, p1}, Lcom/smartisanos/magicflow/b;->a(Lcom/smartisanos/magicflow/view/BaseView;Lcom/smartisanos/magicflow/view/BaseView;)V

    goto :goto_0

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/NewsChannelStreamView;->mButtonCollection:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_3

    .line 9
    invoke-static {}, Lcom/smartisanos/magicflow/c;->h()Lcom/smartisanos/magicflow/c;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/smartisanos/magicflow/c;->i(I)V

    .line 10
    new-instance p1, Lcom/smartisanos/magicflow/view/CollectionStreamView;

    iget-object v0, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/smartisanos/magicflow/view/CollectionStreamView;-><init>(Landroid/content/Context;)V

    .line 11
    invoke-static {p0, p1}, Lcom/smartisanos/magicflow/b;->a(Lcom/smartisanos/magicflow/view/BaseView;Lcom/smartisanos/magicflow/view/BaseView;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onExit()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/smartisanos/magicflow/view/BaseView;->onExit()V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/NewsChannelStreamView;->settingChangeObserver:Lcom/smartisanos/magicflow/cache/SettingChangeObserver;

    invoke-static {v0}, Lcom/smartisanos/magicflow/cache/SettingDataCache;->unregister(Lcom/smartisanos/magicflow/cache/SettingChangeObserver;)V

    .line 3
    invoke-static {}, Lcom/smartisanos/magicflow/c;->h()Lcom/smartisanos/magicflow/c;

    move-result-object v0

    const-string v1, "A350029"

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/c;->f(Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/smartisanos/magicflow/l/a;->d()Lcom/smartisanos/magicflow/l/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/l/a;->c()V

    .line 5
    invoke-static {}, Lcom/smartisanos/magicflow/cache/NewsCache;->removeNewsData()V

    const/4 v0, 0x1

    .line 6
    invoke-static {v0}, Lcom/smartisanos/magicflow/f;->a(Z)V

    .line 7
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/NewsChannelStreamView;->destroy()V

    return-void
.end method
