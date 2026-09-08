.class public Lcom/smartisanos/magicflow/view/settings/channel/NewsChannelSettingView;
.super Lcom/smartisanos/magicflow/view/BaseView;
.source "NewsChannelSettingView.java"

# interfaces
.implements Lcom/smartisanos/magicflow/view/settings/channel/ChannelAdapter$onItemRangeChangeListener;


# instance fields
.field private mAdapter:Lcom/smartisanos/magicflow/view/settings/channel/ChannelAdapter;

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/smartisanos/magicflow/view/settings/channel/ChannelBean;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxColumn:I

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private mTitle:Lsmartisan/widget/TitleBar;

.field private moveDuration:J

.field private removeDuration:J


# direct methods
.method public constructor <init>(Landroid/content/Context;ZZ)V
    .locals 0

    const p2, 0x7f0b0085

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/smartisanos/magicflow/view/BaseView;-><init>(Landroid/content/Context;I)V

    const/4 p2, 0x4

    .line 2
    iput p2, p0, Lcom/smartisanos/magicflow/view/settings/channel/NewsChannelSettingView;->mMaxColumn:I

    const-wide/16 p2, 0x12c

    .line 3
    iput-wide p2, p0, Lcom/smartisanos/magicflow/view/settings/channel/NewsChannelSettingView;->moveDuration:J

    const-wide/16 p2, 0x0

    .line 4
    iput-wide p2, p0, Lcom/smartisanos/magicflow/view/settings/channel/NewsChannelSettingView;->removeDuration:J

    .line 5
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/smartisanos/magicflow/view/settings/channel/NewsChannelSettingView;->mList:Ljava/util/List;

    .line 6
    iget-object p2, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContentView:Landroid/view/ViewGroup;

    const p3, 0x7f080373

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lsmartisan/widget/TitleBar;

    iput-object p2, p0, Lcom/smartisanos/magicflow/view/settings/channel/NewsChannelSettingView;->mTitle:Lsmartisan/widget/TitleBar;

    .line 7
    iget-object p2, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContentView:Landroid/view/ViewGroup;

    const p3, 0x7f080225

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/support/v7/widget/RecyclerView;

    iput-object p2, p0, Lcom/smartisanos/magicflow/view/settings/channel/NewsChannelSettingView;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 8
    new-instance p2, Landroid/support/v7/widget/GridLayoutManager;

    iget p3, p0, Lcom/smartisanos/magicflow/view/settings/channel/NewsChannelSettingView;->mMaxColumn:I

    invoke-direct {p2, p1, p3}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 9
    new-instance p1, Lcom/smartisanos/magicflow/view/settings/channel/NewsChannelSettingView$1;

    invoke-direct {p1, p0}, Lcom/smartisanos/magicflow/view/settings/channel/NewsChannelSettingView$1;-><init>(Lcom/smartisanos/magicflow/view/settings/channel/NewsChannelSettingView;)V

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/GridLayoutManager;->setSpanSizeLookup(Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 10
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/settings/channel/NewsChannelSettingView;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 11
    new-instance p1, Landroid/support/v7/widget/DefaultItemAnimator;

    invoke-direct {p1}, Landroid/support/v7/widget/DefaultItemAnimator;-><init>()V

    .line 12
    iget-wide p2, p0, Lcom/smartisanos/magicflow/view/settings/channel/NewsChannelSettingView;->moveDuration:J

    invoke-virtual {p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->setMoveDuration(J)V

    .line 13
    iget-wide p2, p0, Lcom/smartisanos/magicflow/view/settings/channel/NewsChannelSettingView;->removeDuration:J

    invoke-virtual {p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->setRemoveDuration(J)V

    .line 14
    iget-object p2, p0, Lcom/smartisanos/magicflow/view/settings/channel/NewsChannelSettingView;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 15
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/settings/channel/NewsChannelSettingView;->mTitle:Lsmartisan/widget/TitleBar;

    sget p2, Lsmartisan/widget/TitleBar;->BACK_ICON_RES:I

    invoke-virtual {p1, p2}, Lsmartisan/widget/TitleBar;->addLeftImageView(I)Landroid/widget/ImageView;

    move-result-object p1

    new-instance p2, Lcom/smartisanos/magicflow/view/settings/channel/NewsChannelSettingView$2;

    invoke-direct {p2, p0}, Lcom/smartisanos/magicflow/view/settings/channel/NewsChannelSettingView$2;-><init>(Lcom/smartisanos/magicflow/view/settings/channel/NewsChannelSettingView;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/settings/channel/NewsChannelSettingView;->mTitle:Lsmartisan/widget/TitleBar;

    new-instance p2, Lcom/smartisanos/magicflow/view/settings/channel/NewsChannelSettingView$3;

    invoke-direct {p2, p0}, Lcom/smartisanos/magicflow/view/settings/channel/NewsChannelSettingView$3;-><init>(Lcom/smartisanos/magicflow/view/settings/channel/NewsChannelSettingView;)V

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 17
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/settings/channel/NewsChannelSettingView;->loadInitData()V

    const/4 p1, 0x1

    .line 18
    invoke-static {p1}, Lcom/smartisanos/magicflow/h/v;->a(Z)V

    .line 19
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/view/settings/channel/NewsChannelSettingView;->checkLocationPermission()V

    return-void
.end method

.method static synthetic access$000(Lcom/smartisanos/magicflow/view/settings/channel/NewsChannelSettingView;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/magicflow/view/settings/channel/NewsChannelSettingView;->mList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/smartisanos/magicflow/view/settings/channel/NewsChannelSettingView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/magicflow/view/settings/channel/NewsChannelSettingView;->mMaxColumn:I

    return p0
.end method

.method private loadInitData()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/smartisanos/magicflow/o/h;->a(Landroid/content/Context;Z)V

    .line 2
    new-instance v0, Lcom/smartisanos/magicflow/view/settings/channel/ChannelBean;

    invoke-direct {v0}, Lcom/smartisanos/magicflow/view/settings/channel/ChannelBean;-><init>()V

    .line 3
    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/view/settings/channel/ChannelBean;->setLayoutType(I)V

    const/4 v2, 0x4

    .line 4
    invoke-virtual {v0, v2}, Lcom/smartisanos/magicflow/view/settings/channel/ChannelBean;->setSpanSize(I)V

    .line 5
    iget-object v2, p0, Lcom/smartisanos/magicflow/view/settings/channel/NewsChannelSettingView;->mList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    invoke-static {}, Lcom/smartisanos/magicflow/cache/SettingDataCache;->getEnabledNewsChannelList()Ljava/util/List;

    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 8
    new-instance v5, Lcom/smartisanos/magicflow/view/settings/channel/ChannelBean;

    invoke-direct {v5, v3, v1, v4}, Lcom/smartisanos/magicflow/view/settings/channel/ChannelBean;-><init>(Ljava/lang/String;II)V

    .line 9
    invoke-virtual {v5, v1}, Lcom/smartisanos/magicflow/view/settings/channel/ChannelBean;->setAdded(Z)V

    .line 10
    iget-object v3, p0, Lcom/smartisanos/magicflow/view/settings/channel/NewsChannelSettingView;->mList:Ljava/util/List;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 11
    :cond_0
    invoke-static {}, Lcom/smartisanos/magicflow/cache/SettingDataCache;->getDisabledNewsChannelList()Ljava/util/List;

    move-result-object v2

    .line 12
    new-instance v3, Lcom/smartisanos/magicflow/view/settings/channel/ChannelBean;

    invoke-direct {v3}, Lcom/smartisanos/magicflow/view/settings/channel/ChannelBean;-><init>()V

    const/4 v5, 0x2

    .line 13
    invoke-virtual {v3, v5}, Lcom/smartisanos/magicflow/view/settings/channel/ChannelBean;->setLayoutType(I)V

    .line 14
    iget v6, p0, Lcom/smartisanos/magicflow/view/settings/channel/NewsChannelSettingView;->mMaxColumn:I

    invoke-virtual {v3, v6}, Lcom/smartisanos/magicflow/view/settings/channel/ChannelBean;->setSpanSize(I)V

    .line 15
    iget-object v6, p0, Lcom/smartisanos/magicflow/view/settings/channel/NewsChannelSettingView;->mList:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 17
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 18
    new-instance v6, Lcom/smartisanos/magicflow/view/settings/channel/ChannelBean;

    invoke-direct {v6, v3, v1, v4}, Lcom/smartisanos/magicflow/view/settings/channel/ChannelBean;-><init>(Ljava/lang/String;II)V

    const/4 v3, 0x0

    .line 19
    invoke-virtual {v6, v3}, Lcom/smartisanos/magicflow/view/settings/channel/ChannelBean;->setAdded(Z)V

    .line 20
    iget-object v3, p0, Lcom/smartisanos/magicflow/view/settings/channel/NewsChannelSettingView;->mList:Ljava/util/List;

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 21
    :cond_1
    new-instance v2, Lcom/smartisanos/magicflow/view/settings/channel/ChannelAdapter;

    iget-object v3, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/smartisanos/magicflow/view/settings/channel/NewsChannelSettingView;->mList:Ljava/util/List;

    iget-object v7, p0, Lcom/smartisanos/magicflow/view/settings/channel/NewsChannelSettingView;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {v2, v3, v6, v7}, Lcom/smartisanos/magicflow/view/settings/channel/ChannelAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Landroid/support/v7/widget/RecyclerView;)V

    iput-object v2, p0, Lcom/smartisanos/magicflow/view/settings/channel/NewsChannelSettingView;->mAdapter:Lcom/smartisanos/magicflow/view/settings/channel/ChannelAdapter;

    .line 22
    iget-object v2, p0, Lcom/smartisanos/magicflow/view/settings/channel/NewsChannelSettingView;->mAdapter:Lcom/smartisanos/magicflow/view/settings/channel/ChannelAdapter;

    invoke-virtual {v2, v1}, Lcom/smartisanos/magicflow/view/settings/channel/ChannelAdapter;->setFixIndex(I)V

    .line 23
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/settings/channel/NewsChannelSettingView;->mAdapter:Lcom/smartisanos/magicflow/view/settings/channel/ChannelAdapter;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/smartisanos/magicflow/view/settings/channel/ChannelAdapter;->setSelectedSize(I)V

    .line 24
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0601f5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 25
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0601f7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 26
    sget v2, Lcom/smartisanos/magicflow/h/d;->H:I

    iget v3, p0, Lcom/smartisanos/magicflow/view/settings/channel/NewsChannelSettingView;->mMaxColumn:I

    mul-int/2addr v0, v3

    sub-int/2addr v2, v0

    mul-int/2addr v1, v5

    sub-int/2addr v2, v1

    div-int/2addr v2, v4

    .line 27
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0601f0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 28
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0601ef

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 29
    iget-object v3, p0, Lcom/smartisanos/magicflow/view/settings/channel/NewsChannelSettingView;->mAdapter:Lcom/smartisanos/magicflow/view/settings/channel/ChannelAdapter;

    invoke-virtual {v3, p0}, Lcom/smartisanos/magicflow/view/settings/channel/ChannelAdapter;->setOnItemRangeChangeListener(Lcom/smartisanos/magicflow/view/settings/channel/ChannelAdapter$onItemRangeChangeListener;)V

    .line 30
    iget-object v3, p0, Lcom/smartisanos/magicflow/view/settings/channel/NewsChannelSettingView;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v4, Lcom/smartisanos/magicflow/view/settings/channel/GridSpacingItemDecoration;

    iget v5, p0, Lcom/smartisanos/magicflow/view/settings/channel/NewsChannelSettingView;->mMaxColumn:I

    invoke-direct {v4, v5, v2, v0, v1}, Lcom/smartisanos/magicflow/view/settings/channel/GridSpacingItemDecoration;-><init>(IIII)V

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 31
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/settings/channel/NewsChannelSettingView;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/settings/channel/NewsChannelSettingView;->mAdapter:Lcom/smartisanos/magicflow/view/settings/channel/ChannelAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 32
    new-instance v0, Lcom/smartisanos/magicflow/view/settings/channel/ItemDragCallback;

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/settings/channel/NewsChannelSettingView;->mAdapter:Lcom/smartisanos/magicflow/view/settings/channel/ChannelAdapter;

    invoke-direct {v0, v1}, Lcom/smartisanos/magicflow/view/settings/channel/ItemDragCallback;-><init>(Lcom/smartisanos/magicflow/view/settings/channel/ChannelAdapter;)V

    .line 33
    new-instance v1, Landroid/support/v7/widget/helper/ItemTouchHelper;

    invoke-direct {v1, v0}, Landroid/support/v7/widget/helper/ItemTouchHelper;-><init>(Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;)V

    .line 34
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/settings/channel/NewsChannelSettingView;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/helper/ItemTouchHelper;->attachToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    return-void
.end method


# virtual methods
.method public checkLocationPermission()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/smartisanos/magicflow/o/j;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/smartisanos/magicflow/o/j;->a(Landroid/content/Context;ILcom/smartisanos/magicflow/o/j$c;Z)V

    :cond_0
    return-void
.end method

.method public onExit()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/smartisanos/magicflow/view/BaseView;->onExit()V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/settings/channel/NewsChannelSettingView;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public onRemove()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/view/settings/channel/NewsChannelSettingView;->saveData()V

    .line 2
    invoke-static {}, Lcom/smartisanos/magicflow/o/h;->b()V

    return-void
.end method

.method public refreshItemDecoration()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/settings/channel/NewsChannelSettingView;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->invalidateItemDecorations()V

    return-void
.end method

.method public saveData()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/settings/channel/NewsChannelSettingView;->mAdapter:Lcom/smartisanos/magicflow/view/settings/channel/ChannelAdapter;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/settings/channel/ChannelAdapter;->getEnabledList()Ljava/util/List;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 5
    invoke-static {v0, v1}, Lcom/smartisanos/magicflow/h/v;->b(Ljava/util/List;Ljava/lang/StringBuffer;)V

    .line 6
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/smartisanos/magicflow/h/v;->f(Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {v2}, Lcom/smartisanos/magicflow/h/v;->f(Ljava/lang/String;)V

    .line 8
    :goto_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/settings/channel/NewsChannelSettingView;->mAdapter:Lcom/smartisanos/magicflow/view/settings/channel/ChannelAdapter;

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/settings/channel/ChannelAdapter;->getDisabledList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 9
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 10
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 11
    invoke-static {v0, v1}, Lcom/smartisanos/magicflow/h/v;->b(Ljava/util/List;Ljava/lang/StringBuffer;)V

    .line 12
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/smartisanos/magicflow/h/v;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 13
    :cond_2
    invoke-static {v2}, Lcom/smartisanos/magicflow/h/v;->d(Ljava/lang/String;)V

    :goto_1
    return-void
.end method
