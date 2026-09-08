.class public Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionCard;
.super Lcom/smartisanos/magicflow/view/card/Card;
.source "AppSuggestionCard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final FIRST:I

.field private final FOUR:I

.field private final SECOND:I

.field private final THIRD:I

.field private firstApp:Landroid/widget/ImageView;

.field private fourthApp:Landroid/widget/ImageView;

.field private mObserver:Lcom/smartisanos/magicflow/cache/DataChangeObserver;

.field private secondApp:Landroid/widget/ImageView;

.field private thirdApp:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/smartisanos/magicflow/h/b;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/smartisanos/magicflow/view/card/Card;-><init>(Landroid/content/Context;Lcom/smartisanos/magicflow/h/b;Z)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionCard;->FIRST:I

    const/4 p1, 0x1

    .line 3
    iput p1, p0, Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionCard;->SECOND:I

    const/4 p1, 0x2

    .line 4
    iput p1, p0, Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionCard;->THIRD:I

    const/4 p1, 0x3

    .line 5
    iput p1, p0, Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionCard;->FOUR:I

    .line 6
    new-instance p1, Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionCard$1;

    invoke-direct {p1, p0}, Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionCard$1;-><init>(Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionCard;)V

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionCard;->mObserver:Lcom/smartisanos/magicflow/cache/DataChangeObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionCard;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionCard;->setAppSuggestionData()V

    return-void
.end method

.method static synthetic access$100(Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionCard;ILcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionItemInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionCard;->setAppSuggestionDrawable(ILcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionItemInfo;)V

    return-void
.end method

.method private loadAppIcon(ILcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionItemInfo;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionCard$2;

    invoke-direct {v0, p0, p2, p1}, Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionCard$2;-><init>(Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionCard;Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionItemInfo;I)V

    invoke-static {v0}, Lcom/smartisanos/magicflow/o/d;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method private setAppSuggestionData()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/smartisanos/magicflow/cache/AppSuggestionInfoCache;->getAppSuggestionInfoList()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_2

    .line 4
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionItemInfo;

    iget-object v3, v3, Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionItemInfo;->mAppIcon:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_1

    .line 5
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionItemInfo;

    invoke-direct {p0, v1, v3}, Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionCard;->loadAppIcon(ILcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionItemInfo;)V

    goto :goto_2

    .line 6
    :cond_1
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionItemInfo;

    invoke-direct {p0, v1, v3}, Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionCard;->setAppSuggestionDrawable(ILcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionItemInfo;)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private setAppSuggestionDrawable(ILcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionItemInfo;)V
    .locals 1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionCard;->fourthApp:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionCard;->fourthApp:Landroid/widget/ImageView;

    iget-object p2, p2, Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionItemInfo;->mAppIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionCard;->thirdApp:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionCard;->thirdApp:Landroid/widget/ImageView;

    iget-object p2, p2, Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionItemInfo;->mAppIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 5
    :cond_2
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionCard;->secondApp:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 6
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionCard;->secondApp:Landroid/widget/ImageView;

    iget-object p2, p2, Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionItemInfo;->mAppIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 7
    :cond_3
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionCard;->firstApp:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 8
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionCard;->firstApp:Landroid/widget/ImageView;

    iget-object p2, p2, Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionItemInfo;->mAppIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/smartisanos/magicflow/o/n;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionItemInfo;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionItemInfo;

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, v0, Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionItemInfo;->mPackageName:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/smartisanos/magicflow/o/n;->l(Landroid/content/Context;Ljava/lang/String;)V

    .line 5
    invoke-static {}, Lcom/smartisanos/magicflow/c;->h()Lcom/smartisanos/magicflow/c;

    move-result-object p1

    iget-object v0, v0, Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionItemInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/smartisanos/magicflow/c;->c(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionCard;->mObserver:Lcom/smartisanos/magicflow/cache/DataChangeObserver;

    invoke-static {v0}, Lcom/smartisanos/magicflow/cache/AppSuggestionInfoCache;->unregisterAppSuggestion(Lcom/smartisanos/magicflow/cache/DataChangeObserver;)V

    .line 2
    invoke-super {p0}, Lcom/smartisanos/magicflow/view/card/Card;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/smartisanos/magicflow/view/card/Card;->onPause()V

    return-void
.end method

.method public onReadyToLoadData()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/smartisanos/magicflow/view/card/Card;->onReadyToLoadData()V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionCard;->mObserver:Lcom/smartisanos/magicflow/cache/DataChangeObserver;

    invoke-static {v0}, Lcom/smartisanos/magicflow/cache/AppSuggestionInfoCache;->registerAppSuggestion(Lcom/smartisanos/magicflow/cache/DataChangeObserver;)V

    .line 3
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionCard;->setAppSuggestionData()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/smartisanos/magicflow/view/card/Card;->onResume()V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/Card;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/smartisanos/magicflow/cache/AppSuggestionInfoCache;->updateAppSuggestion(Landroid/content/Context;)V

    return-void
.end method

.method public setContentView()V
    .locals 2

    const v0, 0x7f0b005e

    .line 1
    invoke-virtual {p0, v0}, Lcom/smartisanos/magicflow/view/card/Card;->initView(I)V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/Card;->mContentView:Landroid/view/ViewGroup;

    const v1, 0x7f08021f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionCard;->firstApp:Landroid/widget/ImageView;

    .line 3
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/Card;->mContentView:Landroid/view/ViewGroup;

    const v1, 0x7f080221

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionCard;->secondApp:Landroid/widget/ImageView;

    .line 4
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/Card;->mContentView:Landroid/view/ViewGroup;

    const v1, 0x7f080222

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionCard;->thirdApp:Landroid/widget/ImageView;

    .line 5
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/Card;->mContentView:Landroid/view/ViewGroup;

    const v1, 0x7f080220

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionCard;->fourthApp:Landroid/widget/ImageView;

    .line 6
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionCard;->firstApp:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionCard;->secondApp:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionCard;->thirdApp:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/appsuggestion/AppSuggestionCard;->fourthApp:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
