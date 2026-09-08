.class public Lcom/smartisanos/magicflow/view/settings/MainSettingView;
.super Lcom/smartisanos/magicflow/view/BaseView;
.source "MainSettingView.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private log:Lcom/smartisanos/magicflow/LOG;

.field private mDisabledAdapter:Lcom/smartisanos/magicflow/view/dslv/DragSortAdapter;

.field private mDisabledListView:Landroid/widget/ListView;

.field private mDisabledTips:Lsmartisan/widget/TipsView;

.field private mEnabledAdapter:Lcom/smartisanos/magicflow/view/dslv/DragSortAdapter;

.field private mEnabledListView:Landroid/widget/ListView;

.field private mEnabledTips:Lsmartisan/widget/TipsView;

.field private mFromSystem:Z

.field private mGlobalAnimLayout:Lcom/smartisanos/magicflow/view/settings/GlobalLeftScreenAnimView;

.field private mGlobalSwitch:Lsmartisan/widget/ListContentItemSwitch;

.field private mGlobalSwitchLine:Landroid/view/View;

.field private mGlobalTips:Lsmartisan/widget/TipsView;

.field private mLeftScreenSwitch:Lsmartisan/widget/ListContentItemSwitch;

.field private mLeftScreenSwitchTips:Lsmartisan/widget/TipsView;

.field private mMainSetting:Landroid/widget/LinearLayout;

.field private final mShowMainSettingTime:I

.field private mTitle:Lsmartisan/widget/TitleBar;

.field private settingChangeObserver:Lcom/smartisanos/magicflow/cache/SettingChangeObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLjava/lang/String;)V
    .locals 1

    const p3, 0x7f0b0084

    .line 1
    invoke-direct {p0, p1, p3}, Lcom/smartisanos/magicflow/view/BaseView;-><init>(Landroid/content/Context;I)V

    .line 2
    const-class p3, Lcom/smartisanos/magicflow/view/settings/MainSettingView;

    invoke-static {p3}, Lcom/smartisanos/magicflow/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/magicflow/LOG;

    move-result-object p3

    iput-object p3, p0, Lcom/smartisanos/magicflow/view/settings/MainSettingView;->log:Lcom/smartisanos/magicflow/LOG;

    const/16 p3, 0x96

    .line 3
    iput p3, p0, Lcom/smartisanos/magicflow/view/settings/MainSettingView;->mShowMainSettingTime:I

    .line 4
    new-instance p3, Lcom/smartisanos/magicflow/view/settings/MainSettingView$1;

    invoke-direct {p3, p0}, Lcom/smartisanos/magicflow/view/settings/MainSettingView$1;-><init>(Lcom/smartisanos/magicflow/view/settings/MainSettingView;)V

    iput-object p3, p0, Lcom/smartisanos/magicflow/view/settings/MainSettingView;->settingChangeObserver:Lcom/smartisanos/magicflow/cache/SettingChangeObserver;

    .line 5
    iput-boolean p2, p0, Lcom/smartisanos/magicflow/view/settings/MainSettingView;->mFromSystem:Z

    .line 6
    iget-object p2, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContentView:Landroid/view/ViewGroup;

    const p3, 0x7f080196

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lsmartisan/widget/ListContentItemSwitch;

    iput-object p2, p0, Lcom/smartisanos/magicflow/view/settings/MainSettingView;->mLeftScreenSwitch:Lsmartisan/widget/ListContentItemSwitch;

    .line 7
    iget-object p2, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContentView:Landroid/view/ViewGroup;

    const p3, 0x7f080197

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lsmartisan/widget/TipsView;

    iput-object p2, p0, Lcom/smartisanos/magicflow/view/settings/MainSettingView;->mLeftScreenSwitchTips:Lsmartisan/widget/TipsView;

    .line 8
    iget-object p2, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContentView:Landroid/view/ViewGroup;

    const p3, 0x7f080141

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lsmartisan/widget/ListContentItemSwitch;

    iput-object p2, p0, Lcom/smartisanos/magicflow/view/settings/MainSettingView;->mGlobalSwitch:Lsmartisan/widget/ListContentItemSwitch;

    .line 9
    iget-object p2, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContentView:Landroid/view/ViewGroup;

    const p3, 0x7f080143

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/smartisanos/magicflow/view/settings/MainSettingView;->mGlobalSwitchLine:Landroid/view/View;

    .line 10
    iget-object p2, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContentView:Landroid/view/ViewGroup;

    const p3, 0x7f080140

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/smartisanos/magicflow/view/settings/GlobalLeftScreenAnimView;

    iput-object p2, p0, Lcom/smartisanos/magicflow/view/settings/MainSettingView;->mGlobalAnimLayout:Lcom/smartisanos/magicflow/view/settings/GlobalLeftScreenAnimView;

    .line 11
    iget-object p2, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContentView:Landroid/view/ViewGroup;

    const p3, 0x7f080142

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lsmartisan/widget/TipsView;

    iput-object p2, p0, Lcom/smartisanos/magicflow/view/settings/MainSettingView;->mGlobalTips:Lsmartisan/widget/TipsView;

    .line 12
    invoke-static {p1}, Lcom/smartisanos/magicflow/a;->e(Landroid/content/Context;)Z

    move-result p2

    .line 13
    iget-object p3, p0, Lcom/smartisanos/magicflow/view/settings/MainSettingView;->mLeftScreenSwitch:Lsmartisan/widget/ListContentItemSwitch;

    invoke-virtual {p3, p2}, Lsmartisan/widget/ListContentItemSwitch;->setChecked(Z)V

    .line 14
    iget-object p3, p0, Lcom/smartisanos/magicflow/view/settings/MainSettingView;->mLeftScreenSwitch:Lsmartisan/widget/ListContentItemSwitch;

    invoke-virtual {p3, p0}, Lsmartisan/widget/ListContentItemSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 15
    iget-object p3, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContentView:Landroid/view/ViewGroup;

    const v0, 0x7f0801b2

    invoke-virtual {p3, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcom/smartisanos/magicflow/view/settings/MainSettingView;->mMainSetting:Landroid/widget/LinearLayout;

    .line 16
    iget-object p3, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContentView:Landroid/view/ViewGroup;

    const v0, 0x7f0800a8

    invoke-virtual {p3, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ListView;

    iput-object p3, p0, Lcom/smartisanos/magicflow/view/settings/MainSettingView;->mEnabledListView:Landroid/widget/ListView;

    .line 17
    iget-object p3, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContentView:Landroid/view/ViewGroup;

    const v0, 0x7f0800f7

    invoke-virtual {p3, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lsmartisan/widget/TipsView;

    iput-object p3, p0, Lcom/smartisanos/magicflow/view/settings/MainSettingView;->mEnabledTips:Lsmartisan/widget/TipsView;

    .line 18
    iget-object p3, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContentView:Landroid/view/ViewGroup;

    const v0, 0x7f0800e5

    invoke-virtual {p3, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lsmartisan/widget/TipsView;

    iput-object p3, p0, Lcom/smartisanos/magicflow/view/settings/MainSettingView;->mDisabledTips:Lsmartisan/widget/TipsView;

    .line 19
    iget-object p3, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContentView:Landroid/view/ViewGroup;

    const v0, 0x7f080373

    invoke-virtual {p3, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lsmartisan/widget/TitleBar;

    iput-object p3, p0, Lcom/smartisanos/magicflow/view/settings/MainSettingView;->mTitle:Lsmartisan/widget/TitleBar;

    .line 20
    iget-object p3, p0, Lcom/smartisanos/magicflow/view/settings/MainSettingView;->mTitle:Lsmartisan/widget/TitleBar;

    sget v0, Lsmartisan/widget/TitleBar;->BACK_ICON_RES:I

    invoke-virtual {p3, v0}, Lsmartisan/widget/TitleBar;->addLeftImageView(I)Landroid/widget/ImageView;

    move-result-object p3

    new-instance v0, Lcom/smartisanos/magicflow/view/settings/MainSettingView$2;

    invoke-direct {v0, p0}, Lcom/smartisanos/magicflow/view/settings/MainSettingView$2;-><init>(Lcom/smartisanos/magicflow/view/settings/MainSettingView;)V

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    invoke-static {p1}, Lcom/smartisanos/magicflow/a;->d(Landroid/content/Context;)Z

    move-result p1

    .line 22
    iget-object p3, p0, Lcom/smartisanos/magicflow/view/settings/MainSettingView;->mGlobalSwitch:Lsmartisan/widget/ListContentItemSwitch;

    invoke-virtual {p3, p1}, Lsmartisan/widget/ListContentItemSwitch;->setChecked(Z)V

    .line 23
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/settings/MainSettingView;->mGlobalSwitch:Lsmartisan/widget/ListContentItemSwitch;

    invoke-virtual {p1, p0}, Lsmartisan/widget/ListContentItemSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 24
    invoke-direct {p0, p2}, Lcom/smartisanos/magicflow/view/settings/MainSettingView;->setGlobalViewVisibility(Z)V

    .line 25
    iget-boolean p1, p0, Lcom/smartisanos/magicflow/view/settings/MainSettingView;->mFromSystem:Z

    const/16 p2, 0x8

    if-nez p1, :cond_0

    .line 26
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/settings/MainSettingView;->mLeftScreenSwitch:Lsmartisan/widget/ListContentItemSwitch;

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 27
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/settings/MainSettingView;->mLeftScreenSwitchTips:Lsmartisan/widget/TipsView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 28
    :cond_0
    iget-boolean p1, p0, Lcom/smartisanos/magicflow/view/settings/MainSettingView;->mFromSystem:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/smartisanos/magicflow/a;->e(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 29
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/settings/MainSettingView;->mMainSetting:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 30
    :cond_1
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/settings/MainSettingView;->mMainSetting:Landroid/widget/LinearLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 31
    :goto_0
    invoke-static {}, Lcom/smartisanos/magicflow/cache/SettingDataCache;->isReady()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 32
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/settings/MainSettingView;->setViewData()V

    goto :goto_1

    .line 33
    :cond_2
    new-instance p1, Lcom/smartisanos/magicflow/view/settings/MainSettingView$3;

    invoke-direct {p1, p0}, Lcom/smartisanos/magicflow/view/settings/MainSettingView$3;-><init>(Lcom/smartisanos/magicflow/view/settings/MainSettingView;)V

    invoke-static {p1}, Lcom/smartisanos/magicflow/o/c;->a(Ljava/lang/Runnable;)V

    :goto_1
    return-void
.end method

.method static synthetic access$000(Lcom/smartisanos/magicflow/view/settings/MainSettingView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/settings/MainSettingView;->refreshAdapter()V

    return-void
.end method

.method static synthetic access$100(Lcom/smartisanos/magicflow/view/settings/MainSettingView;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/smartisanos/magicflow/view/settings/MainSettingView;)Landroid/widget/LinearLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/magicflow/view/settings/MainSettingView;->mMainSetting:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$200(Lcom/smartisanos/magicflow/view/settings/MainSettingView;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/smartisanos/magicflow/view/settings/MainSettingView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/settings/MainSettingView;->setViewData()V

    return-void
.end method

.method static synthetic access$400(Lcom/smartisanos/magicflow/view/settings/MainSettingView;)Lcom/smartisanos/magicflow/view/dslv/DragSortAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/magicflow/view/settings/MainSettingView;->mEnabledAdapter:Lcom/smartisanos/magicflow/view/dslv/DragSortAdapter;

    return-object p0
.end method

.method static synthetic access$500(Lcom/smartisanos/magicflow/view/settings/MainSettingView;)Lcom/smartisanos/magicflow/view/dslv/DragSortAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/magicflow/view/settings/MainSettingView;->mDisabledAdapter:Lcom/smartisanos/magicflow/view/dslv/DragSortAdapter;

    return-object p0
.end method

.method static synthetic access$600(Lcom/smartisanos/magicflow/view/settings/MainSettingView;)Landroid/widget/ListView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/magicflow/view/settings/MainSettingView;->mEnabledListView:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/smartisanos/magicflow/view/settings/MainSettingView;)Landroid/widget/ListView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/magicflow/view/settings/MainSettingView;->mDisabledListView:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic access$800(Lcom/smartisanos/magicflow/view/settings/MainSettingView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/settings/MainSettingView;->changeView()V

    return-void
.end method

.method static synthetic access$900(Lcom/smartisanos/magicflow/view/settings/MainSettingView;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/smartisanos/magicflow/view/settings/MainSettingView;->setGlobalViewVisibility(Z)V

    return-void
.end method

.method private changeView()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/settings/MainSettingView;->mEnabledAdapter:Lcom/smartisanos/magicflow/view/dslv/DragSortAdapter;

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/dslv/DragSortAdapter;->getDataList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/settings/MainSettingView;->mEnabledTips:Lsmartisan/widget/TipsView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/settings/MainSettingView;->mDisabledTips:Lsmartisan/widget/TipsView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/settings/MainSettingView;->mDisabledAdapter:Lcom/smartisanos/magicflow/view/dslv/DragSortAdapter;

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/dslv/DragSortAdapter;->getDataList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/settings/MainSettingView;->mDisabledTips:Lsmartisan/widget/TipsView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/settings/MainSettingView;->mEnabledTips:Lsmartisan/widget/TipsView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/settings/MainSettingView;->mEnabledTips:Lsmartisan/widget/TipsView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 8
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/settings/MainSettingView;->mDisabledTips:Lsmartisan/widget/TipsView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private checkOrder(Ljava/util/List;Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {}, Lcom/smartisanos/magicflow/h/v;->c()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    if-ne v1, v2, :cond_4

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 7
    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 8
    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 9
    :cond_2
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/settings/MainSettingView;->log:Lcom/smartisanos/magicflow/LOG;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disagbledlist enabledList has same category :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    return v3

    .line 10
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_4

    const/4 v3, 0x1

    :cond_4
    return v3
.end method

.method private createSettingView(Landroid/content/Context;Ljava/lang/String;Z)Lcom/smartisanos/magicflow/view/BaseView;
    .locals 3

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/settings/MainSettingView;->log:Lcom/smartisanos/magicflow/LOG;

    const-string p2, "createSettingView return by categoryName null"

    invoke-virtual {p1, p2}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    return-object v1

    :cond_0
    const-string v0, "Contacts"

    .line 3
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 4
    new-instance v1, Lcom/smartisanos/magicflow/view/settings/ContactsSettingView;

    invoke-direct {v1, p1, v2, p3}, Lcom/smartisanos/magicflow/view/settings/ContactsSettingView;-><init>(Landroid/content/Context;ZZ)V

    goto :goto_0

    :cond_1
    const-string v0, "ShortcutButton"

    .line 5
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    new-instance v1, Lcom/smartisanos/magicflow/view/settings/shortcut/ShortcutButtonSettingView;

    invoke-direct {v1, p1, v2, p3}, Lcom/smartisanos/magicflow/view/settings/shortcut/ShortcutButtonSettingView;-><init>(Landroid/content/Context;ZZ)V

    goto :goto_0

    :cond_2
    const-string v0, "AppSuggestion"

    .line 7
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    new-instance v1, Lcom/smartisanos/magicflow/view/settings/AppSuggestionSettingView;

    invoke-direct {v1, p1, v2, p3}, Lcom/smartisanos/magicflow/view/settings/AppSuggestionSettingView;-><init>(Landroid/content/Context;ZZ)V

    goto :goto_0

    :cond_3
    const-string v0, "Calendar"

    .line 9
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 10
    new-instance v1, Lcom/smartisanos/magicflow/view/settings/CalendarSettingView;

    invoke-direct {v1, p1, v2, p3}, Lcom/smartisanos/magicflow/view/settings/CalendarSettingView;-><init>(Landroid/content/Context;ZZ)V

    goto :goto_0

    :cond_4
    const-string v0, "LifeInfo"

    .line 11
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 12
    new-instance v1, Lcom/smartisanos/magicflow/view/settings/LifeInfoSettingView;

    invoke-direct {v1, p1, v2, p3}, Lcom/smartisanos/magicflow/view/settings/LifeInfoSettingView;-><init>(Landroid/content/Context;ZZ)V

    goto :goto_0

    :cond_5
    const-string v0, "MusicFastPayment"

    .line 13
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 14
    new-instance v1, Lcom/smartisanos/magicflow/view/settings/MusicFastPaymentSettingView;

    invoke-direct {v1, p1, v2, p3}, Lcom/smartisanos/magicflow/view/settings/MusicFastPaymentSettingView;-><init>(Landroid/content/Context;ZZ)V

    goto :goto_0

    :cond_6
    const-string v0, "News"

    .line 15
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 16
    new-instance v1, Lcom/smartisanos/magicflow/view/settings/NewsSettingView;

    invoke-direct {v1, p1, v2, p3}, Lcom/smartisanos/magicflow/view/settings/NewsSettingView;-><init>(Landroid/content/Context;ZZ)V

    goto :goto_0

    :cond_7
    const-string v0, "AppRecommend"

    .line 17
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 18
    new-instance v1, Lcom/smartisanos/magicflow/view/settings/AppRecommendSettingView;

    invoke-direct {v1, p1, v2, p3}, Lcom/smartisanos/magicflow/view/settings/AppRecommendSettingView;-><init>(Landroid/content/Context;ZZ)V

    :cond_8
    :goto_0
    return-object v1
.end method

.method private getDisabledOrder()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/settings/MainSettingView;->mDisabledAdapter:Lcom/smartisanos/magicflow/view/dslv/DragSortAdapter;

    invoke-virtual {v1}, Lcom/smartisanos/magicflow/view/dslv/DragSortAdapter;->getDataList()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    .line 3
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 4
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 5
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-eq v2, v3, :cond_0

    const-string v3, ";"

    .line 7
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getEnabledOrder()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/settings/MainSettingView;->mEnabledAdapter:Lcom/smartisanos/magicflow/view/dslv/DragSortAdapter;

    invoke-virtual {v1}, Lcom/smartisanos/magicflow/view/dslv/DragSortAdapter;->getDataList()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    .line 3
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 4
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 5
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-eq v2, v3, :cond_0

    const-string v3, ";"

    .line 7
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private refreshAdapter()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/smartisanos/magicflow/cache/SettingDataCache;->getEnabledCategoryList()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-lez v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/settings/MainSettingView;->mEnabledTips:Lsmartisan/widget/TipsView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/settings/MainSettingView;->mEnabledTips:Lsmartisan/widget/TipsView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5
    :goto_0
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/settings/MainSettingView;->mEnabledAdapter:Lcom/smartisanos/magicflow/view/dslv/DragSortAdapter;

    invoke-virtual {v1, v0}, Lcom/smartisanos/magicflow/view/dslv/DragSortAdapter;->setDataList(Ljava/util/List;)V

    .line 6
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/settings/MainSettingView;->mEnabledListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/settings/MainSettingView;->mEnabledAdapter:Lcom/smartisanos/magicflow/view/dslv/DragSortAdapter;

    invoke-static {v0, v1}, Lcom/smartisanos/magicflow/o/n;->a(Landroid/widget/ListView;Landroid/widget/BaseAdapter;)V

    .line 7
    invoke-static {}, Lcom/smartisanos/magicflow/cache/SettingDataCache;->getDisabledCategoryList()Ljava/util/List;

    move-result-object v0

    .line 8
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 9
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/settings/MainSettingView;->mDisabledTips:Lsmartisan/widget/TipsView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 10
    :cond_1
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/settings/MainSettingView;->mDisabledTips:Lsmartisan/widget/TipsView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 11
    :goto_1
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/settings/MainSettingView;->mDisabledAdapter:Lcom/smartisanos/magicflow/view/dslv/DragSortAdapter;

    invoke-virtual {v1, v0}, Lcom/smartisanos/magicflow/view/dslv/DragSortAdapter;->setDataList(Ljava/util/List;)V

    .line 12
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/settings/MainSettingView;->mDisabledListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/settings/MainSettingView;->mDisabledAdapter:Lcom/smartisanos/magicflow/view/dslv/DragSortAdapter;

    invoke-static {v0, v1}, Lcom/smartisanos/magicflow/o/n;->a(Landroid/widget/ListView;Landroid/widget/BaseAdapter;)V

    return-void
.end method

.method private registerSettingObserver()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "DisabledCategoryOrder"

    .line 2
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    new-instance v1, Lcom/smartisanos/magicflow/cache/SettingObserverInfo;

    invoke-direct {v1, v0}, Lcom/smartisanos/magicflow/cache/SettingObserverInfo;-><init>(Ljava/util/List;)V

    .line 4
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/settings/MainSettingView;->settingChangeObserver:Lcom/smartisanos/magicflow/cache/SettingChangeObserver;

    invoke-static {v1, v0}, Lcom/smartisanos/magicflow/cache/SettingDataCache;->register(Lcom/smartisanos/magicflow/cache/SettingObserverInfo;Lcom/smartisanos/magicflow/cache/SettingChangeObserver;)V

    return-void
.end method

.method private setGlobalViewVisibility(Z)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/smartisanos/magicflow/h/d;->k:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/settings/MainSettingView;->mGlobalSwitch:Lsmartisan/widget/ListContentItemSwitch;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/settings/MainSettingView;->mGlobalTips:Lsmartisan/widget/TipsView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/settings/MainSettingView;->mGlobalAnimLayout:Lcom/smartisanos/magicflow/view/settings/GlobalLeftScreenAnimView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/smartisanos/magicflow/view/settings/GlobalLeftScreenAnimView;->show(Z)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/settings/MainSettingView;->mGlobalSwitch:Lsmartisan/widget/ListContentItemSwitch;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 6
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/settings/MainSettingView;->mGlobalTips:Lsmartisan/widget/TipsView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private setViewData()V
    .locals 6

    .line 1
    invoke-static {}, Lcom/smartisanos/magicflow/cache/SettingDataCache;->getEnabledCategoryList()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/smartisanos/magicflow/cache/SettingDataCache;->getDisabledCategoryList()Ljava/util/List;

    move-result-object v1

    .line 3
    invoke-direct {p0, v0, v1}, Lcom/smartisanos/magicflow/view/settings/MainSettingView;->checkOrder(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {}, Lcom/smartisanos/magicflow/h/v;->c()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    :cond_0
    new-instance v2, Lcom/smartisanos/magicflow/view/dslv/DragSortAdapter;

    iget-object v3, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/smartisanos/magicflow/view/dslv/DragSortAdapter;-><init>(Landroid/content/Context;ZZ)V

    iput-object v2, p0, Lcom/smartisanos/magicflow/view/settings/MainSettingView;->mEnabledAdapter:Lcom/smartisanos/magicflow/view/dslv/DragSortAdapter;

    .line 7
    iget-object v2, p0, Lcom/smartisanos/magicflow/view/settings/MainSettingView;->mEnabledListView:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/smartisanos/magicflow/view/settings/MainSettingView;->mEnabledAdapter:Lcom/smartisanos/magicflow/view/dslv/DragSortAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 8
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0x8

    if-lez v2, :cond_1

    .line 9
    iget-object v2, p0, Lcom/smartisanos/magicflow/view/settings/MainSettingView;->mEnabledTips:Lsmartisan/widget/TipsView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 10
    :cond_1
    iget-object v2, p0, Lcom/smartisanos/magicflow/view/settings/MainSettingView;->mEnabledTips:Lsmartisan/widget/TipsView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 11
    :goto_0
    iget-object v2, p0, Lcom/smartisanos/magicflow/view/settings/MainSettingView;->mEnabledAdapter:Lcom/smartisanos/magicflow/view/dslv/DragSortAdapter;

    invoke-virtual {v2, v0}, Lcom/smartisanos/magicflow/view/dslv/DragSortAdapter;->setDataList(Ljava/util/List;)V

    .line 12
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/settings/MainSettingView;->mEnabledListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 13
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/settings/MainSettingView;->mEnabledListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/smartisanos/magicflow/view/settings/MainSettingView;->mEnabledAdapter:Lcom/smartisanos/magicflow/view/dslv/DragSortAdapter;

    invoke-static {v0, v2}, Lcom/smartisanos/magicflow/o/n;->a(Landroid/widget/ListView;Landroid/widget/BaseAdapter;)V

    .line 14
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContentView:Landroid/view/ViewGroup;

    const v2, 0x7f0800e4

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/settings/MainSettingView;->mDisabledListView:Landroid/widget/ListView;

    .line 15
    new-instance v0, Lcom/smartisanos/magicflow/view/dslv/DragSortAdapter;

    iget-object v2, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, v5, v5}, Lcom/smartisanos/magicflow/view/dslv/DragSortAdapter;-><init>(Landroid/content/Context;ZZ)V

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/settings/MainSettingView;->mDisabledAdapter:Lcom/smartisanos/magicflow/view/dslv/DragSortAdapter;

    .line 16
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/settings/MainSettingView;->mDisabledListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/smartisanos/magicflow/view/settings/MainSettingView;->mDisabledAdapter:Lcom/smartisanos/magicflow/view/dslv/DragSortAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 17
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/settings/MainSettingView;->mDisabledListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 18
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 19
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/settings/MainSettingView;->mDisabledTips:Lsmartisan/widget/TipsView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 20
    :cond_2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/settings/MainSettingView;->mDisabledTips:Lsmartisan/widget/TipsView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 21
    :goto_1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/settings/MainSettingView;->mDisabledAdapter:Lcom/smartisanos/magicflow/view/dslv/DragSortAdapter;

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/view/dslv/DragSortAdapter;->setDataList(Ljava/util/List;)V

    .line 22
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/settings/MainSettingView;->mDisabledListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/settings/MainSettingView;->mDisabledAdapter:Lcom/smartisanos/magicflow/view/dslv/DragSortAdapter;

    invoke-static {v0, v1}, Lcom/smartisanos/magicflow/o/n;->a(Landroid/widget/ListView;Landroid/widget/BaseAdapter;)V

    .line 23
    new-instance v0, Lcom/smartisanos/magicflow/view/settings/MainSettingView$4;

    invoke-direct {v0, p0}, Lcom/smartisanos/magicflow/view/settings/MainSettingView$4;-><init>(Lcom/smartisanos/magicflow/view/settings/MainSettingView;)V

    .line 24
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/settings/MainSettingView;->mEnabledAdapter:Lcom/smartisanos/magicflow/view/dslv/DragSortAdapter;

    invoke-virtual {v1, v0}, Lcom/smartisanos/magicflow/view/dslv/DragSortAdapter;->setOnRemoveListener(Lcom/smartisanos/magicflow/view/dslv/DragSortAdapter$OnRemoveListener;)V

    .line 25
    new-instance v0, Lcom/smartisanos/magicflow/view/settings/MainSettingView$5;

    invoke-direct {v0, p0}, Lcom/smartisanos/magicflow/view/settings/MainSettingView$5;-><init>(Lcom/smartisanos/magicflow/view/settings/MainSettingView;)V

    .line 26
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/settings/MainSettingView;->mDisabledAdapter:Lcom/smartisanos/magicflow/view/dslv/DragSortAdapter;

    invoke-virtual {v1, v0}, Lcom/smartisanos/magicflow/view/dslv/DragSortAdapter;->setOnRemoveListener(Lcom/smartisanos/magicflow/view/dslv/DragSortAdapter$OnRemoveListener;)V

    .line 27
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/settings/MainSettingView;->registerSettingObserver()V

    return-void
.end method

.method private showMainSetting(Z)V
    .locals 3

    .line 1
    new-instance v0, Lcom/smartisanos/magicflow/view/settings/MainSettingView$6;

    invoke-direct {v0, p0, p1}, Lcom/smartisanos/magicflow/view/settings/MainSettingView$6;-><init>(Lcom/smartisanos/magicflow/view/settings/MainSettingView;Z)V

    const-wide/16 v1, 0x96

    invoke-static {v0, v1, v2}, Lcom/smartisanos/magicflow/o/m;->a(Ljava/lang/Runnable;J)V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/settings/MainSettingView;->mLeftScreenSwitch:Lsmartisan/widget/ListContentItemSwitch;

    invoke-virtual {v0}, Lsmartisan/widget/ListContentItemSwitch;->getSwitch()Lsmartisan/widget/SwitchEx;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 2
    sput-boolean p2, Lcom/smartisanos/magicflow/h/d;->c:Z

    .line 3
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContext:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/smartisanos/magicflow/a;->b(Landroid/content/Context;Z)V

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    .line 4
    invoke-direct {p0, p1}, Lcom/smartisanos/magicflow/view/settings/MainSettingView;->showMainSetting(Z)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Lcom/smartisanos/magicflow/b;->m()V

    const/4 p1, 0x0

    .line 6
    invoke-direct {p0, p1}, Lcom/smartisanos/magicflow/view/settings/MainSettingView;->showMainSetting(Z)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContext:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/smartisanos/magicflow/a;->a(Landroid/content/Context;Z)V

    :goto_0
    return-void
.end method

.method public onExit()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/smartisanos/magicflow/view/BaseView;->onExit()V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/settings/MainSettingView;->settingChangeObserver:Lcom/smartisanos/magicflow/cache/SettingChangeObserver;

    invoke-static {v0}, Lcom/smartisanos/magicflow/cache/SettingDataCache;->unregister(Lcom/smartisanos/magicflow/cache/SettingChangeObserver;)V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/settings/MainSettingView;->mEnabledAdapter:Lcom/smartisanos/magicflow/view/dslv/DragSortAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/dslv/DragSortAdapter;->destroy()V

    .line 5
    iput-object v1, p0, Lcom/smartisanos/magicflow/view/settings/MainSettingView;->mEnabledAdapter:Lcom/smartisanos/magicflow/view/dslv/DragSortAdapter;

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/settings/MainSettingView;->mDisabledAdapter:Lcom/smartisanos/magicflow/view/dslv/DragSortAdapter;

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/dslv/DragSortAdapter;->destroy()V

    .line 8
    iput-object v1, p0, Lcom/smartisanos/magicflow/view/settings/MainSettingView;->mDisabledAdapter:Lcom/smartisanos/magicflow/view/dslv/DragSortAdapter;

    :cond_1
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/smartisanos/magicflow/o/n;->j()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_2

    .line 2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    .line 3
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/smartisanos/magicflow/view/settings/MainSettingView;->mEnabledAdapter:Lcom/smartisanos/magicflow/view/dslv/DragSortAdapter;

    .line 4
    invoke-virtual {p2}, Lcom/smartisanos/magicflow/view/dslv/DragSortAdapter;->getDataList()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const/4 p3, 0x1

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lcom/smartisanos/magicflow/view/settings/MainSettingView;->createSettingView(Landroid/content/Context;Ljava/lang/String;Z)Lcom/smartisanos/magicflow/view/BaseView;

    move-result-object p1

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/smartisanos/magicflow/view/settings/MainSettingView;->mDisabledAdapter:Lcom/smartisanos/magicflow/view/dslv/DragSortAdapter;

    .line 7
    invoke-virtual {p2}, Lcom/smartisanos/magicflow/view/dslv/DragSortAdapter;->getDataList()Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const/4 p3, 0x0

    .line 8
    invoke-direct {p0, p1, p2, p3}, Lcom/smartisanos/magicflow/view/settings/MainSettingView;->createSettingView(Landroid/content/Context;Ljava/lang/String;Z)Lcom/smartisanos/magicflow/view/BaseView;

    move-result-object p1

    .line 9
    :goto_0
    iget-object p2, p0, Lcom/smartisanos/magicflow/view/settings/MainSettingView;->mEnabledAdapter:Lcom/smartisanos/magicflow/view/dslv/DragSortAdapter;

    invoke-virtual {p2}, Lcom/smartisanos/magicflow/view/dslv/DragSortAdapter;->getDataList()Ljava/util/ArrayList;

    move-result-object p2

    invoke-static {p2}, Lcom/smartisanos/magicflow/cache/SettingDataCache;->setMainSettingCurrentEnabledList(Ljava/util/List;)V

    .line 10
    iget-object p2, p0, Lcom/smartisanos/magicflow/view/settings/MainSettingView;->mDisabledAdapter:Lcom/smartisanos/magicflow/view/dslv/DragSortAdapter;

    invoke-virtual {p2}, Lcom/smartisanos/magicflow/view/dslv/DragSortAdapter;->getDataList()Ljava/util/ArrayList;

    move-result-object p2

    invoke-static {p2}, Lcom/smartisanos/magicflow/cache/SettingDataCache;->setMainSettingCurrentDisabledList(Ljava/util/List;)V

    .line 11
    invoke-static {p0, p1}, Lcom/smartisanos/magicflow/b;->a(Lcom/smartisanos/magicflow/view/BaseView;Lcom/smartisanos/magicflow/view/BaseView;)V

    :cond_2
    return-void
.end method

.method public onRemove()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/smartisanos/magicflow/c;->h()Lcom/smartisanos/magicflow/c;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/smartisanos/magicflow/a;->e(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/c;->c(Z)V

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/view/settings/MainSettingView;->saveData()V

    return-void
.end method

.method public saveData()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/settings/MainSettingView;->mEnabledAdapter:Lcom/smartisanos/magicflow/view/dslv/DragSortAdapter;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/settings/MainSettingView;->getEnabledOrder()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 4
    invoke-static {v0}, Lcom/smartisanos/magicflow/h/v;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {v2}, Lcom/smartisanos/magicflow/h/v;->e(Ljava/lang/String;)V

    .line 6
    :goto_0
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/settings/MainSettingView;->getDisabledOrder()Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    .line 8
    invoke-static {v0}, Lcom/smartisanos/magicflow/h/v;->c(Ljava/lang/String;)V

    goto :goto_1

    .line 9
    :cond_2
    invoke-static {v2}, Lcom/smartisanos/magicflow/h/v;->c(Ljava/lang/String;)V

    :goto_1
    return-void
.end method
