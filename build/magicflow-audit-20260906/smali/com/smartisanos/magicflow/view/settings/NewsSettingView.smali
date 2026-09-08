.class public Lcom/smartisanos/magicflow/view/settings/NewsSettingView;
.super Lcom/smartisanos/magicflow/view/BaseView;
.source "NewsSettingView.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final RESET_SWITCH_TIME:I

.field private enableds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mChecked:Z

.field private mCheckedCount:I

.field private mInterestSetting:Lsmartisan/widget/ListContentItemText;

.field private mNewsSub:Landroid/widget/LinearLayout;

.field private mObserverInfo:Lcom/smartisanos/magicflow/cache/SettingObserverInfo;

.field private mSwitch:Lsmartisan/widget/ListContentItemSwitch;

.field private mSwitchReader:Lsmartisan/widget/ListContentItemSwitch;

.field private mSwitchToutiao:Lsmartisan/widget/ListContentItemSwitch;

.field private mTips:Lsmartisan/widget/TipsView;

.field private mTitle:Lsmartisan/widget/TitleBar;

.field private settingChangeObserver:Lcom/smartisanos/magicflow/cache/SettingChangeObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZZ)V
    .locals 2

    const p2, 0x7f0b0087

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/smartisanos/magicflow/view/BaseView;-><init>(Landroid/content/Context;I)V

    .line 2
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/smartisanos/magicflow/view/settings/NewsSettingView;->enableds:Ljava/util/ArrayList;

    .line 3
    new-instance p2, Lcom/smartisanos/magicflow/view/settings/NewsSettingView$1;

    invoke-direct {p2, p0}, Lcom/smartisanos/magicflow/view/settings/NewsSettingView$1;-><init>(Lcom/smartisanos/magicflow/view/settings/NewsSettingView;)V

    iput-object p2, p0, Lcom/smartisanos/magicflow/view/settings/NewsSettingView;->settingChangeObserver:Lcom/smartisanos/magicflow/cache/SettingChangeObserver;

    const/16 p2, 0xc8

    .line 4
    iput p2, p0, Lcom/smartisanos/magicflow/view/settings/NewsSettingView;->RESET_SWITCH_TIME:I

    .line 5
    invoke-static {}, Lcom/smartisanos/magicflow/c;->h()Lcom/smartisanos/magicflow/c;

    move-result-object p2

    const/4 v0, 0x5

    invoke-virtual {p2, v0}, Lcom/smartisanos/magicflow/c;->k(I)V

    .line 6
    iget-object p2, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContentView:Landroid/view/ViewGroup;

    const v0, 0x7f080373

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lsmartisan/widget/TitleBar;

    iput-object p2, p0, Lcom/smartisanos/magicflow/view/settings/NewsSettingView;->mTitle:Lsmartisan/widget/TitleBar;

    .line 7
    iget-object p2, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContentView:Landroid/view/ViewGroup;

    const v0, 0x7f080286

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lsmartisan/widget/ListContentItemSwitch;

    iput-object p2, p0, Lcom/smartisanos/magicflow/view/settings/NewsSettingView;->mSwitch:Lsmartisan/widget/ListContentItemSwitch;

    .line 8
    iget-object p2, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContentView:Landroid/view/ViewGroup;

    const v0, 0x7f080180

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    .line 9
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContentView:Landroid/view/ViewGroup;

    const v1, 0x7f0802df

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lsmartisan/widget/TipsView;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/settings/NewsSettingView;->mTips:Lsmartisan/widget/TipsView;

    .line 10
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContentView:Landroid/view/ViewGroup;

    const v1, 0x7f0801ea

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/settings/NewsSettingView;->mNewsSub:Landroid/widget/LinearLayout;

    .line 11
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContentView:Landroid/view/ViewGroup;

    const v1, 0x7f0801e7

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lsmartisan/widget/ListContentItemSwitch;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/settings/NewsSettingView;->mSwitchToutiao:Lsmartisan/widget/ListContentItemSwitch;

    .line 12
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContentView:Landroid/view/ViewGroup;

    const v1, 0x7f0801e6

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lsmartisan/widget/ListContentItemSwitch;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/settings/NewsSettingView;->mSwitchReader:Lsmartisan/widget/ListContentItemSwitch;

    .line 13
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContentView:Landroid/view/ViewGroup;

    const v1, 0x7f0801e2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lsmartisan/widget/ListContentItemText;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/settings/NewsSettingView;->mInterestSetting:Lsmartisan/widget/ListContentItemText;

    .line 14
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/settings/NewsSettingView;->mTitle:Lsmartisan/widget/TitleBar;

    sget v1, Lsmartisan/widget/TitleBar;->BACK_ICON_RES:I

    invoke-virtual {v0, v1}, Lsmartisan/widget/TitleBar;->addLeftImageView(I)Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Lcom/smartisanos/magicflow/view/settings/NewsSettingView$2;

    invoke-direct {v1, p0}, Lcom/smartisanos/magicflow/view/settings/NewsSettingView$2;-><init>(Lcom/smartisanos/magicflow/view/settings/NewsSettingView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    iput-boolean p3, p0, Lcom/smartisanos/magicflow/view/settings/NewsSettingView;->mChecked:Z

    .line 16
    iget-object p3, p0, Lcom/smartisanos/magicflow/view/settings/NewsSettingView;->mSwitch:Lsmartisan/widget/ListContentItemSwitch;

    iget-boolean v0, p0, Lcom/smartisanos/magicflow/view/settings/NewsSettingView;->mChecked:Z

    invoke-virtual {p3, v0}, Lsmartisan/widget/ListContentItemSwitch;->setChecked(Z)V

    .line 17
    iget-object p3, p0, Lcom/smartisanos/magicflow/view/settings/NewsSettingView;->mSwitch:Lsmartisan/widget/ListContentItemSwitch;

    const v0, 0x7f0d01d9

    invoke-virtual {p3, v0}, Lsmartisan/widget/ListContentItem;->setTitle(I)V

    const p3, 0x7f070269

    .line 18
    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 19
    iget-object p2, p0, Lcom/smartisanos/magicflow/view/settings/NewsSettingView;->mTips:Lsmartisan/widget/TipsView;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f0d01d4

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string p1, "TouTiao"

    .line 20
    invoke-static {p1}, Lcom/smartisanos/magicflow/cache/SettingDataCache;->isCategoryEnabled(Ljava/lang/String;)Z

    move-result p1

    .line 21
    iget-object p2, p0, Lcom/smartisanos/magicflow/view/settings/NewsSettingView;->mSwitchToutiao:Lsmartisan/widget/ListContentItemSwitch;

    invoke-virtual {p2, p1}, Lsmartisan/widget/ListContentItemSwitch;->setChecked(Z)V

    const/4 p2, 0x1

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/smartisanos/magicflow/view/settings/NewsSettingView;->calculateCheckedCount(ZZ)V

    const-string p1, "SmartisanReader"

    .line 23
    invoke-static {p1}, Lcom/smartisanos/magicflow/cache/SettingDataCache;->isCategoryEnabled(Ljava/lang/String;)Z

    move-result p1

    .line 24
    iget-object p3, p0, Lcom/smartisanos/magicflow/view/settings/NewsSettingView;->mSwitchReader:Lsmartisan/widget/ListContentItemSwitch;

    invoke-virtual {p3, p1}, Lsmartisan/widget/ListContentItemSwitch;->setChecked(Z)V

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/smartisanos/magicflow/view/settings/NewsSettingView;->calculateCheckedCount(ZZ)V

    .line 26
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/settings/NewsSettingView;->mSwitch:Lsmartisan/widget/ListContentItemSwitch;

    invoke-virtual {p1, p0}, Lsmartisan/widget/ListContentItemSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 27
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/settings/NewsSettingView;->mSwitchToutiao:Lsmartisan/widget/ListContentItemSwitch;

    invoke-virtual {p1, p0}, Lsmartisan/widget/ListContentItemSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 28
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/settings/NewsSettingView;->mSwitchReader:Lsmartisan/widget/ListContentItemSwitch;

    invoke-virtual {p1, p0}, Lsmartisan/widget/ListContentItemSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 29
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/settings/NewsSettingView;->mInterestSetting:Lsmartisan/widget/ListContentItemText;

    invoke-virtual {p1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string p1, "News"

    .line 30
    invoke-static {p1}, Lcom/smartisanos/magicflow/cache/SettingDataCache;->getSubEnabledCategoryList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 31
    iget-object p2, p0, Lcom/smartisanos/magicflow/view/settings/NewsSettingView;->enableds:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/smartisanos/magicflow/cache/SettingDataCache;->getSubEnabledCategoryList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 32
    :cond_0
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/settings/NewsSettingView;->setNewsChannelEnabledCount()V

    .line 33
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/settings/NewsSettingView;->mNewsSub:Landroid/widget/LinearLayout;

    iget-boolean p2, p0, Lcom/smartisanos/magicflow/view/settings/NewsSettingView;->mChecked:Z

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    goto :goto_0

    :cond_1
    const/16 p2, 0x8

    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 34
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/settings/NewsSettingView;->registerSettingObserver()V

    return-void
.end method

.method static synthetic access$000(Lcom/smartisanos/magicflow/view/settings/NewsSettingView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/settings/NewsSettingView;->setNewsChannelEnabledCount()V

    return-void
.end method

.method private calculateCheckedCount(ZZ)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iget p1, p0, Lcom/smartisanos/magicflow/view/settings/NewsSettingView;->mCheckedCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/smartisanos/magicflow/view/settings/NewsSettingView;->mCheckedCount:I

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    .line 2
    iget p1, p0, Lcom/smartisanos/magicflow/view/settings/NewsSettingView;->mCheckedCount:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/smartisanos/magicflow/view/settings/NewsSettingView;->mCheckedCount:I

    :cond_1
    :goto_0
    return-void
.end method

.method private registerSettingObserver()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/settings/NewsSettingView;->mObserverInfo:Lcom/smartisanos/magicflow/cache/SettingObserverInfo;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "EnabledNewsChannelOrder"

    .line 3
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    new-instance v1, Lcom/smartisanos/magicflow/cache/SettingObserverInfo;

    invoke-direct {v1, v0}, Lcom/smartisanos/magicflow/cache/SettingObserverInfo;-><init>(Ljava/util/List;)V

    iput-object v1, p0, Lcom/smartisanos/magicflow/view/settings/NewsSettingView;->mObserverInfo:Lcom/smartisanos/magicflow/cache/SettingObserverInfo;

    .line 5
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/settings/NewsSettingView;->mObserverInfo:Lcom/smartisanos/magicflow/cache/SettingObserverInfo;

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/settings/NewsSettingView;->settingChangeObserver:Lcom/smartisanos/magicflow/cache/SettingChangeObserver;

    invoke-static {v0, v1}, Lcom/smartisanos/magicflow/cache/SettingDataCache;->register(Lcom/smartisanos/magicflow/cache/SettingObserverInfo;Lcom/smartisanos/magicflow/cache/SettingChangeObserver;)V

    return-void
.end method

.method private setNewsChannelEnabledCount()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/smartisanos/magicflow/cache/SettingDataCache;->getEnabledNewsChannelSize()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContext:Landroid/content/Context;

    const v1, 0x7f0d0120

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/16 v1, 0x1e

    if-ne v0, v1, :cond_1

    .line 3
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContext:Landroid/content/Context;

    const v1, 0x7f0d012c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4
    :cond_1
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContext:Landroid/content/Context;

    const v2, 0x7f0d012e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 5
    :goto_0
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/settings/NewsSettingView;->mInterestSetting:Lsmartisan/widget/ListContentItemText;

    invoke-virtual {v1, v0}, Lsmartisan/widget/ListContentItemText;->setSubtitle(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public onAdd()V
    .locals 0

    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/settings/NewsSettingView;->mSwitch:Lsmartisan/widget/ListContentItemSwitch;

    invoke-virtual {v0}, Lsmartisan/widget/ListContentItemSwitch;->getSwitch()Lsmartisan/widget/SwitchEx;

    move-result-object v0

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    .line 2
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/settings/NewsSettingView;->mNewsSub:Landroid/widget/LinearLayout;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void

    .line 3
    :cond_1
    invoke-direct {p0, p2, v1}, Lcom/smartisanos/magicflow/view/settings/NewsSettingView;->calculateCheckedCount(ZZ)V

    if-nez p2, :cond_3

    .line 4
    sget-object v0, Lcom/smartisanos/magicflow/h/v;->f:[Ljava/lang/String;

    array-length v2, v0

    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 5
    invoke-static {v3}, Lcom/smartisanos/magicflow/cache/SettingDataCache;->isCategoryEnabled(Ljava/lang/String;)Z

    move-result v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 6
    :cond_2
    iget v0, p0, Lcom/smartisanos/magicflow/view/settings/NewsSettingView;->mCheckedCount:I

    if-nez v0, :cond_3

    .line 7
    new-instance p2, Lcom/smartisanos/magicflow/view/settings/NewsSettingView$3;

    invoke-direct {p2, p0, p1}, Lcom/smartisanos/magicflow/view/settings/NewsSettingView$3;-><init>(Lcom/smartisanos/magicflow/view/settings/NewsSettingView;Landroid/widget/CompoundButton;)V

    const-wide/16 v0, 0xc8

    invoke-static {p2, v0, v1}, Lcom/smartisanos/magicflow/o/m;->a(Ljava/lang/Runnable;J)V

    .line 8
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContext:Landroid/content/Context;

    const p2, 0x7f0d0163

    invoke-static {p1, p2}, Lcom/smartisanos/magicflow/o/n;->b(Landroid/content/Context;I)V

    return-void

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/settings/NewsSettingView;->mSwitchToutiao:Lsmartisan/widget/ListContentItemSwitch;

    invoke-virtual {v0}, Lsmartisan/widget/ListContentItemSwitch;->getSwitch()Lsmartisan/widget/SwitchEx;

    move-result-object v0

    if-ne p1, v0, :cond_4

    const-string p1, "TouTiao"

    .line 10
    invoke-static {p1, p2}, Lcom/smartisanos/magicflow/h/v;->a(Ljava/lang/String;Z)V

    goto :goto_2

    .line 11
    :cond_4
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/settings/NewsSettingView;->mSwitchReader:Lsmartisan/widget/ListContentItemSwitch;

    invoke-virtual {v0}, Lsmartisan/widget/ListContentItemSwitch;->getSwitch()Lsmartisan/widget/SwitchEx;

    move-result-object v0

    if-ne p1, v0, :cond_5

    const-string p1, "SmartisanReader"

    .line 12
    invoke-static {p1, p2}, Lcom/smartisanos/magicflow/h/v;->a(Ljava/lang/String;Z)V

    :cond_5
    :goto_2
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/smartisanos/magicflow/o/n;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lcom/smartisanos/magicflow/view/settings/channel/NewsChannelSettingView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, v1}, Lcom/smartisanos/magicflow/view/settings/channel/NewsChannelSettingView;-><init>(Landroid/content/Context;ZZ)V

    .line 3
    invoke-static {p0, v0}, Lcom/smartisanos/magicflow/b;->a(Lcom/smartisanos/magicflow/view/BaseView;Lcom/smartisanos/magicflow/view/BaseView;)V

    return-void
.end method

.method public onRemove()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/settings/NewsSettingView;->settingChangeObserver:Lcom/smartisanos/magicflow/cache/SettingChangeObserver;

    invoke-static {v0}, Lcom/smartisanos/magicflow/cache/SettingDataCache;->unregister(Lcom/smartisanos/magicflow/cache/SettingChangeObserver;)V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/settings/NewsSettingView;->mSwitch:Lsmartisan/widget/ListContentItemSwitch;

    invoke-virtual {v0}, Lsmartisan/widget/ListContentItemSwitch;->isChecked()Z

    move-result v0

    .line 3
    iget-boolean v1, p0, Lcom/smartisanos/magicflow/view/settings/NewsSettingView;->mChecked:Z

    if-eq v1, v0, :cond_0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "News"

    .line 4
    invoke-static {v1, v0}, Lcom/smartisanos/magicflow/cache/SettingDataCache;->refreshSettingEnabledCategoryOrder(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method
