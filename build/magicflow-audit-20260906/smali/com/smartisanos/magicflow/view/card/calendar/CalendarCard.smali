.class public Lcom/smartisanos/magicflow/view/card/calendar/CalendarCard;
.super Lcom/smartisanos/magicflow/view/card/Card;
.source "CalendarCard.java"


# instance fields
.field private mAddPermission:Landroid/widget/LinearLayout;

.field private mCalendarRecentEventAdapter:Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter;

.field private mCalendarRecentlyListView:Landroid/widget/ListView;

.field private mContainerView:Landroid/widget/LinearLayout;

.field private mMoreButton:Landroid/widget/TextView;

.field private mMoreView:Landroid/widget/LinearLayout;

.field private observer:Lcom/smartisanos/magicflow/cache/DataChangeObserver;

.field private settingChangeObserver:Lcom/smartisanos/magicflow/cache/SettingChangeObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/smartisanos/magicflow/h/b;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/smartisanos/magicflow/view/card/Card;-><init>(Landroid/content/Context;Lcom/smartisanos/magicflow/h/b;Z)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarCard;->mCalendarRecentlyListView:Landroid/widget/ListView;

    .line 3
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarCard;->mCalendarRecentEventAdapter:Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter;

    .line 4
    new-instance p1, Lcom/smartisanos/magicflow/view/card/calendar/CalendarCard$1;

    invoke-direct {p1, p0}, Lcom/smartisanos/magicflow/view/card/calendar/CalendarCard$1;-><init>(Lcom/smartisanos/magicflow/view/card/calendar/CalendarCard;)V

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarCard;->settingChangeObserver:Lcom/smartisanos/magicflow/cache/SettingChangeObserver;

    .line 5
    new-instance p1, Lcom/smartisanos/magicflow/view/card/calendar/CalendarCard$4;

    invoke-direct {p1, p0}, Lcom/smartisanos/magicflow/view/card/calendar/CalendarCard$4;-><init>(Lcom/smartisanos/magicflow/view/card/calendar/CalendarCard;)V

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarCard;->observer:Lcom/smartisanos/magicflow/cache/DataChangeObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/smartisanos/magicflow/view/card/calendar/CalendarCard;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/magicflow/view/card/Card;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/smartisanos/magicflow/view/card/calendar/CalendarCard;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/card/calendar/CalendarCard;->refreshUI()V

    return-void
.end method

.method private refreshUI()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/smartisanos/magicflow/o/j;->a()Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarCard;->mMoreView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarCard;->mCalendarRecentlyListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarCard;->mCalendarRecentlyListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarCard;->mContainerView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarCard;->mAddPermission:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarCard;->mAddPermission:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 8
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarCard;->mCalendarRecentEventAdapter:Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter;

    sget-object v3, Lcom/smartisanos/magicflow/cache/CalendarDataCache;->CALENDAR_INFO_LIST:Ljava/util/List;

    invoke-virtual {v0, v3}, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter;->bindEventListDateResult(Ljava/util/List;)V

    .line 9
    sget-object v0, Lcom/smartisanos/magicflow/cache/CalendarDataCache;->CALENDAR_INFO_LIST:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 10
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarCard;->mContainerView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarCard;->mContainerView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 12
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarCard;->mCalendarRecentlyListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 13
    sget-object v0, Lcom/smartisanos/magicflow/cache/CalendarDataCache;->CALENDAR_INFO_LIST:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/smartisanos/magicflow/view/card/calendar/CalendarCard;->setMoreViewState(I)V

    :goto_0
    return-void
.end method

.method private registerSettingObserver()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "KeyCalendarTimeRange"

    .line 2
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    new-instance v1, Lcom/smartisanos/magicflow/cache/SettingObserverInfo;

    invoke-direct {v1, v0}, Lcom/smartisanos/magicflow/cache/SettingObserverInfo;-><init>(Ljava/util/List;)V

    .line 4
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarCard;->settingChangeObserver:Lcom/smartisanos/magicflow/cache/SettingChangeObserver;

    invoke-static {v1, v0}, Lcom/smartisanos/magicflow/cache/SettingDataCache;->register(Lcom/smartisanos/magicflow/cache/SettingObserverInfo;Lcom/smartisanos/magicflow/cache/SettingChangeObserver;)V

    return-void
.end method

.method private setMoreViewState(I)V
    .locals 1

    const/4 v0, 0x3

    if-le p1, v0, :cond_0

    .line 1
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarCard;->mMoreView:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarCard;->mMoreView:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarCard;->observer:Lcom/smartisanos/magicflow/cache/DataChangeObserver;

    invoke-static {v0}, Lcom/smartisanos/magicflow/cache/CalendarDataCache;->unregister(Lcom/smartisanos/magicflow/cache/DataChangeObserver;)V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarCard;->settingChangeObserver:Lcom/smartisanos/magicflow/cache/SettingChangeObserver;

    invoke-static {v0}, Lcom/smartisanos/magicflow/cache/SettingDataCache;->unregister(Lcom/smartisanos/magicflow/cache/SettingChangeObserver;)V

    .line 3
    invoke-super {p0}, Lcom/smartisanos/magicflow/view/card/Card;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/smartisanos/magicflow/view/card/Card;->onPause()V

    .line 2
    invoke-static {}, Lcom/smartisanos/magicflow/o/j;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarCard;->mCalendarRecentlyListView:Landroid/widget/ListView;

    if-eqz v0, :cond_2

    .line 4
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarCard;->mCalendarRecentEventAdapter:Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter;

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter;->refreshFinishedEvent()V

    .line 5
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarCard;->mCalendarRecentEventAdapter:Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter;

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter;->getRealCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarCard;->mContainerView:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarCard;->mMoreView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarCard;->mContainerView:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 9
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarCard;->mCalendarRecentEventAdapter:Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter;

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter;->getRealCount()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/smartisanos/magicflow/view/card/calendar/CalendarCard;->setMoreViewState(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onReadyToLoadData()V
    .locals 2

    .line 1
    new-instance v0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter;

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/card/Card;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarCard;->mCalendarRecentEventAdapter:Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter;

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/Card;->mContentView:Landroid/view/ViewGroup;

    const v1, 0x7f080074

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarCard;->mCalendarRecentlyListView:Landroid/widget/ListView;

    .line 3
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarCard;->mCalendarRecentlyListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarCard;->mCalendarRecentEventAdapter:Lcom/smartisanos/magicflow/view/card/calendar/CalendarRecentEventsAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 4
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/Card;->mContentView:Landroid/view/ViewGroup;

    const v1, 0x7f080064

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarCard;->mMoreView:Landroid/widget/LinearLayout;

    .line 5
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/Card;->mContentView:Landroid/view/ViewGroup;

    const v1, 0x7f080073

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarCard;->mAddPermission:Landroid/widget/LinearLayout;

    .line 6
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/Card;->mContentView:Landroid/view/ViewGroup;

    const v1, 0x7f080072

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarCard;->mMoreButton:Landroid/widget/TextView;

    .line 7
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/Card;->mContentView:Landroid/view/ViewGroup;

    const v1, 0x7f080065

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarCard;->mContainerView:Landroid/widget/LinearLayout;

    .line 8
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarCard;->mMoreButton:Landroid/widget/TextView;

    new-instance v1, Lcom/smartisanos/magicflow/view/card/calendar/CalendarCard$2;

    invoke-direct {v1, p0}, Lcom/smartisanos/magicflow/view/card/calendar/CalendarCard$2;-><init>(Lcom/smartisanos/magicflow/view/card/calendar/CalendarCard;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarCard;->mAddPermission:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/smartisanos/magicflow/view/card/calendar/CalendarCard$3;

    invoke-direct {v1, p0}, Lcom/smartisanos/magicflow/view/card/calendar/CalendarCard$3;-><init>(Lcom/smartisanos/magicflow/view/card/calendar/CalendarCard;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/calendar/CalendarCard;->observer:Lcom/smartisanos/magicflow/cache/DataChangeObserver;

    invoke-static {v0}, Lcom/smartisanos/magicflow/cache/CalendarDataCache;->register(Lcom/smartisanos/magicflow/cache/DataChangeObserver;)V

    .line 11
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/card/calendar/CalendarCard;->refreshUI()V

    .line 12
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/card/calendar/CalendarCard;->registerSettingObserver()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/smartisanos/magicflow/view/card/Card;->onResume()V

    const-wide/16 v0, 0x0

    .line 2
    invoke-static {v0, v1}, Lcom/smartisanos/magicflow/cache/CalendarDataCache;->updateCalendarData(J)V

    return-void
.end method

.method public setContentView()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/smartisanos/magicflow/view/card/Card;->setContentView()V

    const v0, 0x7f0b002d

    .line 2
    invoke-virtual {p0, v0}, Lcom/smartisanos/magicflow/view/card/Card;->initView(I)V

    return-void
.end method
