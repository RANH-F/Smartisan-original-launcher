.class public Lcom/smartisanos/magicflow/view/ContentView;
.super Landroid/widget/FrameLayout;
.source "ContentView.java"

# interfaces
.implements Lcom/smartisanos/magicflow/view/MagicFlowScrollView$OnTouchEventUpListener;


# static fields
.field private static final log:Lcom/smartisanos/magicflow/LOG;


# instance fields
.field private addedListener:Z

.field private mCardListView:Landroid/widget/LinearLayout;

.field private mFloatSearchLayout:Lcom/smartisanos/magicflow/view/FloatSearchView;

.field private mFloatSearchMarginTop:I

.field private mHeadLayout:Lcom/smartisanos/magicflow/view/weather/HeadView;

.field private mNavigationBarMask:Landroid/widget/ImageView;

.field private mNavigationBarMaskAlphaOffset:F

.field private mScrollYUp:Z

.field private mScrollview:Lcom/smartisanos/magicflow/view/MagicFlowScrollView;

.field private mWelcomeView:Lcom/smartisanos/magicflow/view/WelcomeView;

.field private mWelcomeViewDismissListener:Lcom/smartisanos/magicflow/view/WelcomeView$OnWelcomeViewDismissListener;

.field private settingChangeObserver:Lcom/smartisanos/magicflow/cache/SettingChangeObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/smartisanos/magicflow/view/ContentView;

    invoke-static {v0}, Lcom/smartisanos/magicflow/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/magicflow/LOG;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/magicflow/view/ContentView;->log:Lcom/smartisanos/magicflow/LOG;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/smartisanos/magicflow/view/ContentView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/smartisanos/magicflow/view/ContentView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/smartisanos/magicflow/view/ContentView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 5
    new-instance p1, Lcom/smartisanos/magicflow/view/ContentView$1;

    invoke-direct {p1, p0}, Lcom/smartisanos/magicflow/view/ContentView$1;-><init>(Lcom/smartisanos/magicflow/view/ContentView;)V

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/ContentView;->settingChangeObserver:Lcom/smartisanos/magicflow/cache/SettingChangeObserver;

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/smartisanos/magicflow/view/ContentView;->addedListener:Z

    const/high16 p1, 0x428c0000    # 70.0f

    .line 7
    iput p1, p0, Lcom/smartisanos/magicflow/view/ContentView;->mNavigationBarMaskAlphaOffset:F

    .line 8
    new-instance p1, Lcom/smartisanos/magicflow/view/ContentView$3;

    invoke-direct {p1, p0}, Lcom/smartisanos/magicflow/view/ContentView$3;-><init>(Lcom/smartisanos/magicflow/view/ContentView;)V

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/ContentView;->mWelcomeViewDismissListener:Lcom/smartisanos/magicflow/view/WelcomeView$OnWelcomeViewDismissListener;

    return-void
.end method

.method static synthetic access$000(Lcom/smartisanos/magicflow/view/ContentView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/smartisanos/magicflow/view/ContentView;->mScrollYUp:Z

    return p0
.end method

.method static synthetic access$002(Lcom/smartisanos/magicflow/view/ContentView;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/smartisanos/magicflow/view/ContentView;->mScrollYUp:Z

    return p1
.end method

.method static synthetic access$100(Lcom/smartisanos/magicflow/view/ContentView;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/ContentView;->getStartShowFloatY()I

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/smartisanos/magicflow/view/ContentView;)Lcom/smartisanos/magicflow/view/weather/HeadView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/magicflow/view/ContentView;->mHeadLayout:Lcom/smartisanos/magicflow/view/weather/HeadView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/smartisanos/magicflow/view/ContentView;)Lcom/smartisanos/magicflow/view/FloatSearchView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/magicflow/view/ContentView;->mFloatSearchLayout:Lcom/smartisanos/magicflow/view/FloatSearchView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/smartisanos/magicflow/view/ContentView;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/ContentView;->getStartHideFloatY()I

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/smartisanos/magicflow/view/ContentView;)Lcom/smartisanos/magicflow/view/MagicFlowScrollView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/magicflow/view/ContentView;->mScrollview:Lcom/smartisanos/magicflow/view/MagicFlowScrollView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/smartisanos/magicflow/view/ContentView;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/magicflow/view/ContentView;->mNavigationBarMask:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/smartisanos/magicflow/view/ContentView;)Lcom/smartisanos/magicflow/view/WelcomeView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/magicflow/view/ContentView;->mWelcomeView:Lcom/smartisanos/magicflow/view/WelcomeView;

    return-object p0
.end method

.method static synthetic access$702(Lcom/smartisanos/magicflow/view/ContentView;Lcom/smartisanos/magicflow/view/WelcomeView;)Lcom/smartisanos/magicflow/view/WelcomeView;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/ContentView;->mWelcomeView:Lcom/smartisanos/magicflow/view/WelcomeView;

    return-object p1
.end method

.method static synthetic access$800(Lcom/smartisanos/magicflow/view/ContentView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/ContentView;->addCardsView()V

    return-void
.end method

.method static synthetic access$900()Lcom/smartisanos/magicflow/LOG;
    .locals 1

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/view/ContentView;->log:Lcom/smartisanos/magicflow/LOG;

    return-object v0
.end method

.method private addCardsView()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/ContentView;->mHeadLayout:Lcom/smartisanos/magicflow/view/weather/HeadView;

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/weather/HeadView;->refreshUI()V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/ContentView;->mFloatSearchLayout:Lcom/smartisanos/magicflow/view/FloatSearchView;

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/FloatSearchView;->updateText()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/smartisanos/magicflow/view/ContentView;->mWelcomeViewDismissListener:Lcom/smartisanos/magicflow/view/WelcomeView$OnWelcomeViewDismissListener;

    .line 4
    invoke-static {}, Lcom/smartisanos/magicflow/h/c;->g()Lcom/smartisanos/magicflow/h/c;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/smartisanos/magicflow/h/c;->e()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/smartisanos/magicflow/h/c;->f()V

    .line 8
    :cond_1
    sget-object v0, Lcom/smartisanos/magicflow/view/ContentView;->log:Lcom/smartisanos/magicflow/LOG;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addCardsView cards.size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/magicflow/view/card/Card;

    .line 10
    iget-object v2, p0, Lcom/smartisanos/magicflow/view/ContentView;->mCardListView:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Lcom/smartisanos/magicflow/view/card/Card;->getContentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 11
    :cond_2
    iget-boolean v0, p0, Lcom/smartisanos/magicflow/view/ContentView;->addedListener:Z

    if-nez v0, :cond_3

    .line 12
    sget-object v0, Lcom/smartisanos/magicflow/view/ContentView;->log:Lcom/smartisanos/magicflow/LOG;

    const-string v1, "addCardsView add listener"

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/ContentView;->addGlobalLayoutListener()V

    .line 14
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/ContentView;->addScrollListener()V

    :cond_3
    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Lcom/smartisanos/magicflow/view/ContentView;->addedListener:Z

    return-void
.end method

.method private addGlobalLayoutListener()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/smartisanos/magicflow/view/ContentView$4;

    invoke-direct {v1, p0}, Lcom/smartisanos/magicflow/view/ContentView$4;-><init>(Lcom/smartisanos/magicflow/view/ContentView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method private addScrollListener()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060152

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/smartisanos/magicflow/view/ContentView;->mFloatSearchMarginTop:I

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/ContentView;->mScrollview:Lcom/smartisanos/magicflow/view/MagicFlowScrollView;

    new-instance v1, Lcom/smartisanos/magicflow/view/ContentView$2;

    invoke-direct {v1, p0}, Lcom/smartisanos/magicflow/view/ContentView$2;-><init>(Lcom/smartisanos/magicflow/view/ContentView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    return-void
.end method

.method private getStartHideFloatY()I
    .locals 2

    .line 1
    sget v0, Lcom/smartisanos/magicflow/h/d;->s:I

    iget v1, p0, Lcom/smartisanos/magicflow/view/ContentView;->mFloatSearchMarginTop:I

    sub-int/2addr v0, v1

    return v0
.end method

.method private getStartShowFloatY()I
    .locals 2

    .line 1
    sget v0, Lcom/smartisanos/magicflow/h/d;->s:I

    iget v1, p0, Lcom/smartisanos/magicflow/view/ContentView;->mFloatSearchMarginTop:I

    sub-int/2addr v0, v1

    sget v1, Lcom/smartisanos/magicflow/h/d;->u:I

    sub-int/2addr v0, v1

    return v0
.end method

.method private registerSettingObserver()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "EnabledCategoryOrder"

    .line 2
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    new-instance v1, Lcom/smartisanos/magicflow/cache/SettingObserverInfo;

    invoke-direct {v1, v0}, Lcom/smartisanos/magicflow/cache/SettingObserverInfo;-><init>(Ljava/util/List;)V

    .line 4
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/ContentView;->settingChangeObserver:Lcom/smartisanos/magicflow/cache/SettingChangeObserver;

    invoke-static {v1, v0}, Lcom/smartisanos/magicflow/cache/SettingDataCache;->register(Lcom/smartisanos/magicflow/cache/SettingObserverInfo;Lcom/smartisanos/magicflow/cache/SettingChangeObserver;)V

    return-void
.end method


# virtual methods
.method public addViews()V
    .locals 3

    .line 1
    sget v0, Lcom/smartisanos/magicflow/h/d;->T:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/ContentView;->addCardsView()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b010a

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/magicflow/view/WelcomeView;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/ContentView;->mWelcomeView:Lcom/smartisanos/magicflow/view/WelcomeView;

    .line 4
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/ContentView;->mScrollview:Lcom/smartisanos/magicflow/view/MagicFlowScrollView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/ContentView;->mNavigationBarMask:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/ContentView;->mWelcomeView:Lcom/smartisanos/magicflow/view/WelcomeView;

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/ContentView;->mWelcomeViewDismissListener:Lcom/smartisanos/magicflow/view/WelcomeView$OnWelcomeViewDismissListener;

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/view/WelcomeView;->setOnWelcomeViewDismissListener(Lcom/smartisanos/magicflow/view/WelcomeView$OnWelcomeViewDismissListener;)V

    .line 7
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/ContentView;->mWelcomeView:Lcom/smartisanos/magicflow/view/WelcomeView;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public clean()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/ContentView;->mWelcomeView:Lcom/smartisanos/magicflow/view/WelcomeView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/ContentView;->mWelcomeView:Lcom/smartisanos/magicflow/view/WelcomeView;

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/WelcomeView;->clean()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/smartisanos/magicflow/view/ContentView;->mWelcomeView:Lcom/smartisanos/magicflow/view/WelcomeView;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/ContentView;->mCardListView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 6
    invoke-static {}, Lcom/smartisanos/magicflow/h/c;->g()Lcom/smartisanos/magicflow/h/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/h/c;->d()V

    return-void
.end method

.method protected floatSearchLayoutReset()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/ContentView;->mFloatSearchLayout:Lcom/smartisanos/magicflow/view/FloatSearchView;

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/ContentView;->mHeadLayout:Lcom/smartisanos/magicflow/view/weather/HeadView;

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/view/FloatSearchView;->continueAnimation(Lcom/smartisanos/magicflow/view/weather/HeadView;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/ContentView;->mScrollview:Lcom/smartisanos/magicflow/view/MagicFlowScrollView;

    sget v2, Lcom/smartisanos/magicflow/h/d;->u:I

    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/ContentView;->getStartShowFloatY()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/magicflow/view/MagicFlowScrollView;->scrollTo(II)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 3
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/ContentView;->mScrollview:Lcom/smartisanos/magicflow/view/MagicFlowScrollView;

    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/ContentView;->getStartHideFloatY()I

    move-result v2

    sget v3, Lcom/smartisanos/magicflow/h/d;->u:I

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/smartisanos/magicflow/view/MagicFlowScrollView;->scrollTo(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public hideFloatSearchMask(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/ContentView;->mFloatSearchLayout:Lcom/smartisanos/magicflow/view/FloatSearchView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/smartisanos/magicflow/view/FloatSearchView;->hideFloatSearchMask(F)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/ContentView;->settingChangeObserver:Lcom/smartisanos/magicflow/cache/SettingChangeObserver;

    invoke-static {v0}, Lcom/smartisanos/magicflow/cache/SettingDataCache;->unregister(Lcom/smartisanos/magicflow/cache/SettingChangeObserver;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f080137

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/magicflow/view/FloatSearchView;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/ContentView;->mFloatSearchLayout:Lcom/smartisanos/magicflow/view/FloatSearchView;

    const v0, 0x7f080151

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/magicflow/view/weather/HeadView;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/ContentView;->mHeadLayout:Lcom/smartisanos/magicflow/view/weather/HeadView;

    const v0, 0x7f0801b1

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/magicflow/view/MagicFlowScrollView;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/ContentView;->mScrollview:Lcom/smartisanos/magicflow/view/MagicFlowScrollView;

    const v0, 0x7f08009d

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/ContentView;->mCardListView:Landroid/widget/LinearLayout;

    const v0, 0x7f0801d4

    .line 6
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/ContentView;->mNavigationBarMask:Landroid/widget/ImageView;

    .line 7
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/ContentView;->mNavigationBarMask:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 8
    sget-boolean v0, Lcom/smartisanos/magicflow/h/d;->C:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/smartisanos/magicflow/h/d;->N:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/smartisanos/magicflow/view/ContentView;->setNavigationBarMaskStatus(Z)V

    .line 9
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/ContentView;->mScrollview:Lcom/smartisanos/magicflow/view/MagicFlowScrollView;

    invoke-virtual {v0, p0}, Lcom/smartisanos/magicflow/view/MagicFlowScrollView;->setOnTouchEventUpListener(Lcom/smartisanos/magicflow/view/MagicFlowScrollView$OnTouchEventUpListener;)V

    .line 10
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0601e5

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/smartisanos/magicflow/view/ContentView;->mNavigationBarMaskAlphaOffset:F

    .line 11
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0600cf

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 12
    iget-object v2, p0, Lcom/smartisanos/magicflow/view/ContentView;->mScrollview:Lcom/smartisanos/magicflow/view/MagicFlowScrollView;

    sget v3, Lcom/smartisanos/magicflow/h/d;->M:I

    invoke-virtual {v2, v0, v3, v0, v1}, Landroid/widget/ScrollView;->setPadding(IIII)V

    .line 13
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/ContentView;->mCardListView:Landroid/widget/LinearLayout;

    invoke-static {v0}, Lcom/smartisanos/magicflow/b;->a(Landroid/view/ViewGroup;)V

    .line 14
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/view/ContentView;->addViews()V

    .line 15
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/ContentView;->registerSettingObserver()V

    return-void
.end method

.method public onTouchEventUp(Landroid/view/MotionEvent;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/view/ContentView;->floatSearchLayoutReset()V

    return-void
.end method

.method public refreshCardsOrder()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/ContentView;->mCardListView:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    sget v0, Lcom/smartisanos/magicflow/h/d;->T:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/high16 v0, 0x10000

    const/4 v1, 0x1

    .line 2
    invoke-static {v0, v1}, Lcom/smartisanos/magicflow/o/g;->a(IZ)V

    .line 3
    invoke-static {}, Lcom/smartisanos/magicflow/h/c;->g()Lcom/smartisanos/magicflow/h/c;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/smartisanos/magicflow/h/c;->f()V

    .line 5
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/ContentView;->mCardListView:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 6
    invoke-virtual {v0}, Lcom/smartisanos/magicflow/h/c;->e()Ljava/util/ArrayList;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/magicflow/view/card/Card;

    .line 8
    invoke-virtual {v1}, Lcom/smartisanos/magicflow/view/card/Card;->onResume()V

    .line 9
    iget-object v2, p0, Lcom/smartisanos/magicflow/view/ContentView;->mCardListView:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Lcom/smartisanos/magicflow/view/card/Card;->getContentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public refreshData()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/ContentView;->mHeadLayout:Lcom/smartisanos/magicflow/view/weather/HeadView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/weather/HeadView;->refreshData()V

    :cond_0
    return-void
.end method

.method protected refreshFloatSearchBackgroundColor()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/ContentView;->mFloatSearchLayout:Lcom/smartisanos/magicflow/view/FloatSearchView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/FloatSearchView;->updateBackgroundColor()V

    :cond_0
    return-void
.end method

.method public resetWelcomeDetailsView()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/ContentView;->mWelcomeView:Lcom/smartisanos/magicflow/view/WelcomeView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/WelcomeView;->resetDetailsView()V

    :cond_0
    return-void
.end method

.method public setNavigationBarAlpha(F)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/ContentView;->mNavigationBarMask:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/ContentView;->mNavigationBarMask:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v2, p0, Lcom/smartisanos/magicflow/view/ContentView;->mNavigationBarMaskAlphaOffset:F

    div-float/2addr p1, v2

    sub-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public setNavigationBarMaskStatus(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/ContentView;->mNavigationBarMask:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    .line 2
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3
    :cond_1
    sget-boolean v0, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/smartisanos/magicflow/view/ContentView;->log:Lcom/smartisanos/magicflow/LOG;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setNavigationBarMaskStatus show="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public showFloatSearchMask()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/ContentView;->mFloatSearchLayout:Lcom/smartisanos/magicflow/view/FloatSearchView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/FloatSearchView;->showFloatSearchMask()V

    :cond_0
    return-void
.end method

.method public startScrollWelcomeDetailsView()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/ContentView;->mWelcomeView:Lcom/smartisanos/magicflow/view/WelcomeView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/WelcomeView;->startScrollDetailsView()V

    :cond_0
    return-void
.end method
