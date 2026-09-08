.class public Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard;
.super Lcom/smartisanos/magicflow/view/card/Card;
.source "AppRecommendCard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard$AppInfoAdapter;
    }
.end annotation


# static fields
.field private static final MAX_COLUMNS:I = 0x2

.field private static final log:Lcom/smartisanos/magicflow/LOG;


# instance fields
.field private mAdapter:Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard$AppInfoAdapter;

.field private mAppRecommendStars:I

.field private mGridView:Landroid/widget/GridView;

.field private mObserver:Lcom/smartisanos/magicflow/cache/DataChangeObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard;

    invoke-static {v0}, Lcom/smartisanos/magicflow/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/magicflow/LOG;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard;->log:Lcom/smartisanos/magicflow/LOG;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/smartisanos/magicflow/h/b;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/smartisanos/magicflow/view/card/Card;-><init>(Landroid/content/Context;Lcom/smartisanos/magicflow/h/b;Z)V

    const/4 p1, 0x5

    .line 2
    iput p1, p0, Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard;->mAppRecommendStars:I

    .line 3
    new-instance p1, Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard$1;

    invoke-direct {p1, p0}, Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard$1;-><init>(Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard;)V

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard;->mObserver:Lcom/smartisanos/magicflow/cache/DataChangeObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/magicflow/view/card/Card;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Landroid/content/Context;Lcom/smartisanos/magicflow/h/a;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard;->handleClick(Landroid/content/Context;Lcom/smartisanos/magicflow/h/a;)V

    return-void
.end method

.method static synthetic access$200()Lcom/smartisanos/magicflow/LOG;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard;->log:Lcom/smartisanos/magicflow/LOG;

    return-object v0
.end method

.method static synthetic access$500(Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard;->updateView()V

    return-void
.end method

.method private dataIndexOf(Ljava/util/List;Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/smartisanos/magicflow/h/a;",
            ">;",
            "Ljava/lang/String;",
            ")I"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/magicflow/h/a;

    .line 3
    iget-object v1, v1, Lcom/smartisanos/magicflow/h/a;->f:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method private static handleClick(Landroid/content/Context;Lcom/smartisanos/magicflow/h/a;)V
    .locals 2

    if-nez p1, :cond_0

    .line 1
    sget-object p0, Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard;->log:Lcom/smartisanos/magicflow/LOG;

    const-string p1, "handleClick return by info = null"

    invoke-virtual {p0, p1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcom/smartisanos/magicflow/cache/RecommendAppCache;->APP_INFO_LIST:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 3
    invoke-static {}, Lcom/smartisanos/magicflow/c;->h()Lcom/smartisanos/magicflow/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/smartisanos/magicflow/c;->b(I)V

    .line 4
    iget-object p1, p1, Lcom/smartisanos/magicflow/h/a;->f:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/smartisanos/magicflow/o/n;->k(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private updateView()V
    .locals 3

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/cache/RecommendAppCache;->APP_INFO_LIST:Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard;->mGridView:Landroid/widget/GridView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setVisibility(I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard;->mGridView:Landroid/widget/GridView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setVisibility(I)V

    .line 5
    :goto_0
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard;->mAdapter:Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard$AppInfoAdapter;

    invoke-virtual {v1, v0}, Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard$AppInfoAdapter;->updateList(Ljava/util/List;)V

    .line 6
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard;->mAdapter:Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard$AppInfoAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method public onDestroy()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/smartisanos/magicflow/view/card/Card;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard;->mObserver:Lcom/smartisanos/magicflow/cache/DataChangeObserver;

    invoke-static {v0}, Lcom/smartisanos/magicflow/cache/RecommendAppCache;->unregister(Lcom/smartisanos/magicflow/cache/DataChangeObserver;)V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard;->mGridView:Landroid/widget/GridView;

    if-eqz v0, :cond_2

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Landroid/widget/GridView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 5
    iget-object v2, p0, Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard;->mGridView:Landroid/widget/GridView;

    invoke-virtual {v2, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 6
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard$AppInfoAdapter$ViewHolder;

    if-eqz v3, :cond_0

    .line 7
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard$AppInfoAdapter$ViewHolder;

    invoke-virtual {v2}, Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard$AppInfoAdapter$ViewHolder;->clean()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard;->mGridView:Landroid/widget/GridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_2
    const/4 v0, 0x2

    .line 9
    invoke-static {v0}, Lcom/smartisanos/magicflow/o/n;->a(I)V

    .line 10
    invoke-static {}, Lcom/smartisanos/magicflow/MagicFlowApplication;->a()Lcom/smartisanos/magicflow/MagicFlowApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/smartisanos/magicflow/o/n;->b(Landroid/content/Context;)V

    return-void
.end method

.method public onPause()V
    .locals 2

    const/high16 v0, 0x80000

    .line 1
    invoke-static {v0}, Lcom/smartisanos/magicflow/o/g;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-static {v0, v1}, Lcom/smartisanos/magicflow/o/g;->a(IZ)V

    .line 3
    sget-object v0, Lcom/smartisanos/magicflow/cache/RecommendAppCache;->APP_INFO_LIST:Ljava/util/List;

    invoke-static {v0}, Lcom/smartisanos/magicflow/cache/RecommendAppCache;->updateAppListSort(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public onReadyToLoadData()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/Card;->mContentView:Landroid/view/ViewGroup;

    const v1, 0x7f08002c

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard;->mGridView:Landroid/widget/GridView;

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard;->mGridView:Landroid/widget/GridView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 3
    new-instance v0, Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard$AppInfoAdapter;

    invoke-direct {v0, p0}, Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard$AppInfoAdapter;-><init>(Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard;)V

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard;->mAdapter:Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard$AppInfoAdapter;

    .line 4
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard;->mGridView:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard;->mAdapter:Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard$AppInfoAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 5
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard;->mObserver:Lcom/smartisanos/magicflow/cache/DataChangeObserver;

    invoke-static {v0}, Lcom/smartisanos/magicflow/cache/RecommendAppCache;->register(Lcom/smartisanos/magicflow/cache/DataChangeObserver;)V

    .line 6
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/card/recommend/AppRecommendCard;->updateView()V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/smartisanos/magicflow/cache/RecommendAppCache;->syncWithServer()V

    return-void
.end method

.method public setContentView()V
    .locals 1

    const v0, 0x7f0b002c

    .line 1
    invoke-virtual {p0, v0}, Lcom/smartisanos/magicflow/view/card/Card;->initView(I)V

    return-void
.end method
