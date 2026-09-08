.class public Lcom/smartisanos/magicflow/view/card/news/NewsCard;
.super Lcom/smartisanos/magicflow/view/card/Card;
.source "NewsCard.java"


# instance fields
.field private log:Lcom/smartisanos/magicflow/LOG;

.field private mButtonChangeNews:Landroid/widget/TextView;

.field private mButtonMore:Landroid/widget/TextView;

.field private mCategoryView:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;",
            ">;"
        }
    .end annotation
.end field

.field private mDayText:Landroid/widget/TextView;

.field private mDrawableBottom:Landroid/graphics/drawable/Drawable;

.field private mMouthText:Landroid/widget/TextView;

.field private mNewsCardPagerAdapter:Lcom/smartisanos/magicflow/view/newslist/NewsCardPagerAdapter;

.field private mNewsCardReaderView:Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;

.field private mNewsCardTouTiaoView:Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;

.field private mNewsCardViewPager:Lcom/smartisanos/magicflow/view/NoScrollViewPager;

.field private mNewsTableRg:Landroid/widget/RadioGroup;

.field private mReadButton:Landroid/widget/RadioButton;

.field private mSeparateView:Landroid/view/View;

.field private mTouTiaoButton:Landroid/widget/RadioButton;

.field private settingChangeObserver:Lcom/smartisanos/magicflow/cache/SettingChangeObserver;

.field private tableIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/smartisanos/magicflow/h/b;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/smartisanos/magicflow/view/card/Card;-><init>(Landroid/content/Context;Lcom/smartisanos/magicflow/h/b;Z)V

    .line 2
    const-class p1, Lcom/smartisanos/magicflow/view/card/news/NewsCard;

    invoke-static {p1}, Lcom/smartisanos/magicflow/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/magicflow/LOG;

    move-result-object p1

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCard;->log:Lcom/smartisanos/magicflow/LOG;

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCard;->tableIds:Ljava/util/List;

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCard;->mCategoryView:Ljava/util/List;

    .line 5
    new-instance p1, Lcom/smartisanos/magicflow/view/card/news/NewsCard$1;

    invoke-direct {p1, p0}, Lcom/smartisanos/magicflow/view/card/news/NewsCard$1;-><init>(Lcom/smartisanos/magicflow/view/card/news/NewsCard;)V

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCard;->settingChangeObserver:Lcom/smartisanos/magicflow/cache/SettingChangeObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/smartisanos/magicflow/view/card/news/NewsCard;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/smartisanos/magicflow/view/card/news/NewsCard;->updateView(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/smartisanos/magicflow/view/card/news/NewsCard;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/smartisanos/magicflow/view/card/news/NewsCard;->buttonCheckedChanged(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/smartisanos/magicflow/view/card/news/NewsCard;)Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCard;->mNewsCardTouTiaoView:Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/smartisanos/magicflow/view/card/news/NewsCard;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCard;->mDayText:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/smartisanos/magicflow/view/card/news/NewsCard;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCard;->mMouthText:Landroid/widget/TextView;

    return-object p0
.end method

.method private buttonCheckedChanged(I)V
    .locals 6

    .line 1
    sput p1, Lcom/smartisanos/magicflow/cache/NewsCache;->sCurrentCheckedId:I

    .line 2
    invoke-direct {p0, p1}, Lcom/smartisanos/magicflow/view/card/news/NewsCard;->setMoreButtonStatus(I)V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCard;->mNewsCardViewPager:Lcom/smartisanos/magicflow/view/NoScrollViewPager;

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCard;->tableIds:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 4
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/card/news/NewsCard;->notifyNewsList()V

    .line 5
    sget p1, Lcom/smartisanos/magicflow/cache/NewsCache;->sCurrentCheckedId:I

    const v0, 0x7f0801e5

    const/16 v2, 0x8

    const/4 v3, 0x5

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq p1, v0, :cond_2

    const v0, 0x7f0801ec

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCard;->tableIds:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v4, :cond_1

    .line 7
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCard;->mTouTiaoButton:Landroid/widget/RadioButton;

    invoke-virtual {p1}, Landroid/widget/RadioButton;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCard;->mTouTiaoButton:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result p1

    float-to-int p1, p1

    .line 8
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCard;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v1, p1, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 9
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCard;->mTouTiaoButton:Landroid/widget/RadioButton;

    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCard;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v5, v5, v5, v0}, Landroid/widget/RadioButton;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 10
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCard;->mReadButton:Landroid/widget/RadioButton;

    invoke-virtual {p1, v5, v5, v5, v5}, Landroid/widget/RadioButton;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 11
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCard;->mNewsCardReaderView:Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;

    invoke-virtual {p1, v2}, Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;->setContentViewVisibility(I)V

    .line 12
    :cond_1
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCard;->mNewsCardTouTiaoView:Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;

    invoke-virtual {p1, v1}, Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;->setContentViewVisibility(I)V

    .line 13
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCard;->mNewsCardTouTiaoView:Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;

    invoke-virtual {p1}, Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;->switchStreamView()V

    goto :goto_0

    .line 14
    :cond_2
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCard;->tableIds:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v4, :cond_3

    .line 15
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCard;->mReadButton:Landroid/widget/RadioButton;

    invoke-virtual {p1}, Landroid/widget/RadioButton;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCard;->mReadButton:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result p1

    float-to-int p1, p1

    .line 16
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCard;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v1, p1, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 17
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCard;->mReadButton:Landroid/widget/RadioButton;

    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCard;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v5, v5, v5, v0}, Landroid/widget/RadioButton;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 18
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCard;->mTouTiaoButton:Landroid/widget/RadioButton;

    invoke-virtual {p1, v5, v5, v5, v5}, Landroid/widget/RadioButton;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 19
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCard;->mNewsCardTouTiaoView:Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;

    invoke-virtual {p1, v2}, Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;->setContentViewVisibility(I)V

    .line 20
    :cond_3
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCard;->mNewsCardReaderView:Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;

    invoke-virtual {p1, v1}, Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;->setContentViewVisibility(I)V

    .line 21
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCard;->mNewsCardReaderView:Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;

    invoke-virtual {p1}, Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;->switchStreamView()V

    :goto_0
    return-void
.end method

.method public static getCurrentCheckedType()I
    .locals 3

    .line 1
    sget v0, Lcom/smartisanos/magicflow/cache/NewsCache;->sCurrentCheckedId:I

    const/4 v1, 0x0

    const v2, 0x7f0801ec

    if-ne v0, v2, :cond_0

    return v1

    .line 2
    :cond_0
    sget v0, Lcom/smartisanos/magicflow/cache/NewsCache;->sCurrentCheckedId:I

    const v2, 0x7f0801e5

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method private initReadView()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCard;->mNewsCardReaderView:Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/smartisanos/magicflow/h/q;

    invoke-direct {v0}, Lcom/smartisanos/magicflow/h/q;-><init>()V

    const-string v1, "smartisan_read"

    .line 3
    iput-object v1, v0, Lcom/smartisanos/magicflow/h/q;->b:Ljava/lang/String;

    const-string v1, "https://reader.smartisan.com/index.php?r=article/getList&site_id=1"

    .line 4
    iput-object v1, v0, Lcom/smartisanos/magicflow/h/q;->c:Ljava/lang/String;

    .line 5
    new-instance v1, Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;

    iget-object v2, p0, Lcom/smartisanos/magicflow/view/card/Card;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;-><init>(Landroid/content/Context;Lcom/smartisanos/magicflow/h/q;)V

    iput-object v1, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCard;->mNewsCardReaderView:Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;

    :cond_0
    return-void
.end method

.method private initTouTiaoView()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCard;->mNewsCardTouTiaoView:Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/smartisanos/magicflow/h/q;

    invoke-direct {v0}, Lcom/smartisanos/magicflow/h/q;-><init>()V

    const-string v1, "__all__"

    .line 3
    iput-object v1, v0, Lcom/smartisanos/magicflow/h/q;->b:Ljava/lang/String;

    const-string v1, "https://api-screen.smartisan.com/news/list"

    .line 4
    iput-object v1, v0, Lcom/smartisanos/magicflow/h/q;->c:Ljava/lang/String;

    .line 5
    new-instance v1, Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;

    iget-object v2, p0, Lcom/smartisanos/magicflow/view/card/Card;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;-><init>(Landroid/content/Context;Lcom/smartisanos/magicflow/h/q;)V

    iput-object v1, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCard;->mNewsCardTouTiaoView:Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;

    :cond_0
    return-void
.end method

.method private needGetLocation()Z
    .locals 6

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/h/d;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 3
    sget-wide v4, Lcom/smartisanos/magicflow/h/d;->i:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/32 v4, 0x1499700

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private notifyNewsList()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCard;->mCategoryView:Ljava/util/List;

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCard;->tableIds:Ljava/util/List;

    sget v2, Lcom/smartisanos/magicflow/cache/NewsCache;->sCurrentCheckedId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;

    .line 2
    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;->notifyListViewDataChanged()V

    return-void
.end method

.method private registerSettingObserver()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "TouTiao"

    .line 2
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "SmartisanReader"

    .line 3
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    new-instance v1, Lcom/smartisanos/magicflow/cache/SettingObserverInfo;

    invoke-direct {v1, v0}, Lcom/smartisanos/magicflow/cache/SettingObserverInfo;-><init>(Ljava/util/List;)V

    .line 5
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCard;->settingChangeObserver:Lcom/smartisanos/magicflow/cache/SettingChangeObserver;

    invoke-static {v1, v0}, Lcom/smartisanos/magicflow/cache/SettingDataCache;->register(Lcom/smartisanos/magicflow/cache/SettingObserverInfo;Lcom/smartisanos/magicflow/cache/SettingChangeObserver;)V

    return-void
.end method

.method private setDateText()V
    .locals 1

    .line 1
    new-instance v0, Lcom/smartisanos/magicflow/view/card/news/NewsCard$5;

    invoke-direct {v0, p0}, Lcom/smartisanos/magicflow/view/card/news/NewsCard$5;-><init>(Lcom/smartisanos/magicflow/view/card/news/NewsCard;)V

    invoke-static {v0}, Lcom/smartisanos/magicflow/o/d;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method private setMoreButtonStatus(I)V
    .locals 2

    const v0, 0x7f0801ec

    if-ne p1, v0, :cond_0

    .line 1
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCard;->mButtonMore:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/Card;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d01b5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCard;->mButtonChangeNews:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCard;->mSeparateView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCard;->mButtonMore:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/Card;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d01eb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCard;->mButtonChangeNews:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 6
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCard;->mSeparateView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private setPagerAdapterData()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCard;->mCategoryView:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCard;->tableIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCard;->mCategoryView:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const-string v0, "TouTiao"

    .line 4
    invoke-static {v0}, Lcom/smartisanos/magicflow/cache/SettingDataCache;->isCategoryEnabled(Ljava/lang/String;)Z

    move-result v1

    const v2, 0x7f0801ec

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    .line 5
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/card/news/NewsCard;->initTouTiaoView()V

    .line 6
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCard;->mCategoryView:Ljava/util/List;

    iget-object v5, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCard;->mNewsCardTouTiaoView:Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCard;->tableIds:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCard;->mTouTiaoButton:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setVisibility(I)V

    goto :goto_0

    .line 9
    :cond_1
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCard;->mTouTiaoButton:Landroid/widget/RadioButton;

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setVisibility(I)V

    :goto_0
    const-string v1, "SmartisanReader"

    .line 10
    invoke-static {v1}, Lcom/smartisanos/magicflow/cache/SettingDataCache;->isCategoryEnabled(Ljava/lang/String;)Z

    move-result v5

    const v6, 0x7f0801e5

    if-eqz v5, :cond_2

    .line 11
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/card/news/NewsCard;->initReadView()V

    .line 12
    iget-object v3, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCard;->mCategoryView:Ljava/util/List;

    iget-object v5, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCard;->mNewsCardReaderView:Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    iget-object v3, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCard;->tableIds:Ljava/util/List;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    iget-object v3, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCard;->mReadButton:Landroid/widget/RadioButton;

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setVisibility(I)V

    goto :goto_1

    .line 15
    :cond_2
    iget-object v5, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCard;->mReadButton:Landroid/widget/RadioButton;

    invoke-virtual {v5, v3}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 16
    :goto_1
    iget-object v3, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCard;->tableIds:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_3

    .line 17
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/card/news/NewsCard;->initTouTiaoView()V

    .line 18
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/card/news/NewsCard;->initReadView()V

    .line 19
    iget-object v3, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCard;->mTouTiaoButton:Landroid/widget/RadioButton;

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 20
    iget-object v3, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCard;->mReadButton:Landroid/widget/RadioButton;

    invoke-virtual {v3, v4}, Landroid/widget/RadioButton;->setVisibility(I)V

    const/4 v3, 0x1

    .line 21
    invoke-static {v0, v3}, Lcom/smartisanos/magicflow/h/v;->a(Ljava/lang/String;Z)V

    .line 22
    invoke-static {v1, v3}, Lcom/smartisanos/magicflow/h/v;->a(Ljava/lang/String;Z)V

    .line 23
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCard;->tableIds:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCard;->mCategoryView:Ljava/util/List;

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCard;->mNewsCardTouTiaoView:Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCard;->tableIds:Ljava/util/List;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCard;->mCategoryView:Ljava/util/List;

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCard;->mNewsCardReaderView:Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    :cond_3
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCard;->mNewsCardPagerAdapter:Lcom/smartisanos/magicflow/view/newslist/NewsCardPagerAdapter;

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCard;->mCategoryView:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/view/newslist/NewsCardPagerAdapter;->setCategory(Ljava/util/List;)V

    .line 28
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCard;->tableIds:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/smartisanos/magicflow/view/card/news/NewsCard;->setRadioButtonBackground(Ljava/util/List;)V

    .line 29
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCard;->tableIds:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/smartisanos/magicflow/cache/NewsCache;->sCurrentCheckedId:I

    .line 30
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCard;->tableIds:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/smartisanos/magicflow/view/card/news/NewsCard;->setMoreButtonStatus(I)V

    .line 31
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCard;->tableIds:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/smartisanos/magicflow/view/card/news/NewsCard;->setRadioButtonChecked(I)V

    return-void
.end method

.method private setRadioButtonBackground(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCard;->mTouTiaoButton:Landroid/widget/RadioButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCard;->mReadButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCard;->mTouTiaoButton:Landroid/widget/RadioButton;

    iget-object v2, p0, Lcom/smartisanos/magicflow/view/card/Card;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0601ee

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v2}, Landroid/widget/RadioButton;->setTextSize(IF)V

    .line 4
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCard;->mReadButton:Landroid/widget/RadioButton;

    iget-object v2, p0, Lcom/smartisanos/magicflow/view/card/Card;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v0, v4, v2}, Landroid/widget/RadioButton;->setTextSize(IF)V

    .line 5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 6
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const v0, 0x7f0801ec

    if-ne p1, v0, :cond_0

    .line 7
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCard;->mTouTiaoButton:Landroid/widget/RadioButton;

    invoke-virtual {p1, v2, v2, v2, v2}, Landroid/widget/RadioButton;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    const v0, 0x7f0801e5

    if-ne p1, v0, :cond_2

    .line 8
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCard;->mReadButton:Landroid/widget/RadioButton;

    invoke-virtual {p1, v2, v2, v2, v2}, Landroid/widget/RadioButton;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCard;->mTouTiaoButton:Landroid/widget/RadioButton;

    invoke-virtual {p1}, Landroid/widget/RadioButton;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCard;->mTouTiaoButton:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result p1

    float-to-int p1, p1

    .line 10
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCard;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x5

    invoke-virtual {v0, v4, v4, p1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 11
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCard;->mTouTiaoButton:Landroid/widget/RadioButton;

    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCard;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v2, v2, v2, v0}, Landroid/widget/RadioButton;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 12
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCard;->mReadButton:Landroid/widget/RadioButton;

    invoke-virtual {p1, v2, v2, v2, v2}, Landroid/widget/RadioButton;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private setRadioButtonChecked(I)V
    .locals 4

    const/16 v0, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    const v3, 0x7f0801ec

    if-ne p1, v3, :cond_0

    .line 1
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCard;->mTouTiaoButton:Landroid/widget/RadioButton;

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 2
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCard;->mReadButton:Landroid/widget/RadioButton;

    invoke-virtual {p1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 3
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCard;->mNewsCardTouTiaoView:Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;

    invoke-virtual {p1, v2}, Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;->setContentViewVisibility(I)V

    .line 4
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCard;->mNewsCardReaderView:Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p1, v0}, Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;->setContentViewVisibility(I)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCard;->mReadButton:Landroid/widget/RadioButton;

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 7
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCard;->mTouTiaoButton:Landroid/widget/RadioButton;

    invoke-virtual {p1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 8
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCard;->mNewsCardReaderView:Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;

    invoke-virtual {p1, v2}, Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;->setContentViewVisibility(I)V

    .line 9
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCard;->mNewsCardTouTiaoView:Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;

    if-eqz p1, :cond_1

    .line 10
    invoke-virtual {p1, v0}, Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;->setContentViewVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateView(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/card/news/NewsCard;->setDateText()V

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/view/card/news/NewsCard;->refreshData()V

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/card/news/NewsCard;->setPagerAdapterData()V

    :goto_0
    return-void
.end method


# virtual methods
.method public onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/smartisanos/magicflow/view/card/Card;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCard;->settingChangeObserver:Lcom/smartisanos/magicflow/cache/SettingChangeObserver;

    invoke-static {v0}, Lcom/smartisanos/magicflow/cache/SettingDataCache;->unregister(Lcom/smartisanos/magicflow/cache/SettingChangeObserver;)V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCard;->mCategoryView:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;

    .line 4
    invoke-virtual {v1}, Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;->clean()V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCard;->mCategoryView:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 6
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCard;->mNewsTableRg:Landroid/widget/RadioGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    const/4 v0, 0x0

    .line 7
    invoke-static {v0}, Lcom/smartisanos/magicflow/o/n;->a(I)V

    const/4 v0, 0x1

    .line 8
    invoke-static {v0}, Lcom/smartisanos/magicflow/o/n;->a(I)V

    .line 9
    invoke-static {}, Lcom/smartisanos/magicflow/MagicFlowApplication;->a()Lcom/smartisanos/magicflow/MagicFlowApplication;

    move-result-object v0

    invoke-static {v0}, Lcom/smartisanos/magicflow/o/n;->b(Landroid/content/Context;)V

    .line 10
    invoke-static {}, Lcom/smartisanos/magicflow/o/h;->b()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/smartisanos/magicflow/view/card/Card;->onPause()V

    .line 2
    invoke-static {}, Lcom/smartisanos/magicflow/l/a;->d()Lcom/smartisanos/magicflow/l/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/l/a;->c()V

    .line 3
    invoke-static {}, Lcom/smartisanos/magicflow/cache/NewsCache;->removeNewsData()V

    .line 4
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/card/news/NewsCard;->notifyNewsList()V

    return-void
.end method

.method public onReadyToLoadData()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/Card;->mContentView:Landroid/view/ViewGroup;

    const v1, 0x7f0800d9

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCard;->mDayText:Landroid/widget/TextView;

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/Card;->mContentView:Landroid/view/ViewGroup;

    const v1, 0x7f0801ca

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCard;->mMouthText:Landroid/widget/TextView;

    .line 3
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/Card;->mContentView:Landroid/view/ViewGroup;

    const v1, 0x7f0801eb

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCard;->mNewsTableRg:Landroid/widget/RadioGroup;

    .line 4
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/Card;->mContentView:Landroid/view/ViewGroup;

    const v1, 0x7f0801ec

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCard;->mTouTiaoButton:Landroid/widget/RadioButton;

    .line 5
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/Card;->mContentView:Landroid/view/ViewGroup;

    const v1, 0x7f0801e5

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCard;->mReadButton:Landroid/widget/RadioButton;

    .line 6
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/Card;->mContentView:Landroid/view/ViewGroup;

    const v1, 0x7f080062

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCard;->mButtonMore:Landroid/widget/TextView;

    .line 7
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/Card;->mContentView:Landroid/view/ViewGroup;

    const v1, 0x7f080280

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCard;->mSeparateView:Landroid/view/View;

    .line 8
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/Card;->mContentView:Landroid/view/ViewGroup;

    const v1, 0x7f080060

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCard;->mButtonChangeNews:Landroid/widget/TextView;

    .line 9
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/Card;->mContext:Landroid/content/Context;

    const v1, 0x7f070259

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCard;->mDrawableBottom:Landroid/graphics/drawable/Drawable;

    .line 10
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/Card;->mContentView:Landroid/view/ViewGroup;

    const v1, 0x7f0801dc

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/magicflow/view/NoScrollViewPager;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCard;->mNewsCardViewPager:Lcom/smartisanos/magicflow/view/NoScrollViewPager;

    .line 11
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCard;->mNewsCardViewPager:Lcom/smartisanos/magicflow/view/NoScrollViewPager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 12
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCard;->mDayText:Landroid/widget/TextView;

    invoke-static {}, Lcom/smartisanos/magicflow/o/n;->c()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCard;->mMouthText:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/smartisanos/magicflow/o/n;->d()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    new-instance v0, Lcom/smartisanos/magicflow/view/newslist/NewsCardPagerAdapter;

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/card/Card;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/smartisanos/magicflow/view/newslist/NewsCardPagerAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCard;->mNewsCardPagerAdapter:Lcom/smartisanos/magicflow/view/newslist/NewsCardPagerAdapter;

    .line 15
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/card/news/NewsCard;->setPagerAdapterData()V

    .line 16
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCard;->mNewsCardViewPager:Lcom/smartisanos/magicflow/view/NoScrollViewPager;

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCard;->mNewsCardPagerAdapter:Lcom/smartisanos/magicflow/view/newslist/NewsCardPagerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 17
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCard;->mCategoryView:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;->switchStreamView()V

    .line 18
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCard;->mNewsTableRg:Landroid/widget/RadioGroup;

    new-instance v1, Lcom/smartisanos/magicflow/view/card/news/NewsCard$2;

    invoke-direct {v1, p0}, Lcom/smartisanos/magicflow/view/card/news/NewsCard$2;-><init>(Lcom/smartisanos/magicflow/view/card/news/NewsCard;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 19
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCard;->mButtonMore:Landroid/widget/TextView;

    new-instance v1, Lcom/smartisanos/magicflow/view/card/news/NewsCard$3;

    invoke-direct {v1, p0}, Lcom/smartisanos/magicflow/view/card/news/NewsCard$3;-><init>(Lcom/smartisanos/magicflow/view/card/news/NewsCard;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCard;->mButtonChangeNews:Landroid/widget/TextView;

    new-instance v1, Lcom/smartisanos/magicflow/view/card/news/NewsCard$4;

    invoke-direct {v1, p0}, Lcom/smartisanos/magicflow/view/card/news/NewsCard$4;-><init>(Lcom/smartisanos/magicflow/view/card/news/NewsCard;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/card/news/NewsCard;->registerSettingObserver()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/smartisanos/magicflow/view/card/Card;->onResume()V

    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lcom/smartisanos/magicflow/view/card/news/NewsCard;->updateView(Z)V

    .line 3
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/card/news/NewsCard;->needGetLocation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/Card;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/smartisanos/magicflow/o/h;->a(Landroid/content/Context;Z)V

    :cond_0
    return-void
.end method

.method public refreshData()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCard;->mCategoryView:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCard;->tableIds:Ljava/util/List;

    sget v1, Lcom/smartisanos/magicflow/cache/NewsCache;->sCurrentCheckedId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCard;->mCategoryView:Ljava/util/List;

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/card/news/NewsCard;->tableIds:Ljava/util/List;

    sget v2, Lcom/smartisanos/magicflow/cache/NewsCache;->sCurrentCheckedId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/view/card/news/NewsCardStreamView;->refreshListData(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setContentView()V
    .locals 1

    const v0, 0x7f0b0032

    .line 1
    invoke-virtual {p0, v0}, Lcom/smartisanos/magicflow/view/card/Card;->initView(I)V

    return-void
.end method
