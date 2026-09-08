.class public Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutViewPagerItemView;
.super Landroid/widget/LinearLayout;
.source "ShortcutViewPagerItemView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private log:Lcom/smartisanos/magicflow/LOG;

.field private mFifthShortcut:Landroid/widget/ImageView;

.field private mFirstShortcut:Landroid/widget/ImageView;

.field private mFourthShortcut:Landroid/widget/ImageView;

.field private mSecondShortcut:Landroid/widget/ImageView;

.field private mSixthShortcut:Landroid/widget/ImageView;

.field private mThirdShortcut:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    const-class p1, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutViewPagerItemView;

    invoke-static {p1}, Lcom/smartisanos/magicflow/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/magicflow/LOG;

    move-result-object p1

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutViewPagerItemView;->log:Lcom/smartisanos/magicflow/LOG;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    const-class p1, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutViewPagerItemView;

    invoke-static {p1}, Lcom/smartisanos/magicflow/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/magicflow/LOG;

    move-result-object p1

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutViewPagerItemView;->log:Lcom/smartisanos/magicflow/LOG;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 6
    const-class p1, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutViewPagerItemView;

    invoke-static {p1}, Lcom/smartisanos/magicflow/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/magicflow/LOG;

    move-result-object p1

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutViewPagerItemView;->log:Lcom/smartisanos/magicflow/LOG;

    return-void
.end method

.method private findView()V
    .locals 1

    const v0, 0x7f080127

    .line 1
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutViewPagerItemView;->mFirstShortcut:Landroid/widget/ImageView;

    const v0, 0x7f080275

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutViewPagerItemView;->mSecondShortcut:Landroid/widget/ImageView;

    const v0, 0x7f0802d9

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutViewPagerItemView;->mThirdShortcut:Landroid/widget/ImageView;

    const v0, 0x7f08013d

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutViewPagerItemView;->mFourthShortcut:Landroid/widget/ImageView;

    const v0, 0x7f080122

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutViewPagerItemView;->mFifthShortcut:Landroid/widget/ImageView;

    const v0, 0x7f080297

    .line 6
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutViewPagerItemView;->mSixthShortcut:Landroid/widget/ImageView;

    .line 7
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutViewPagerItemView;->mFirstShortcut:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutViewPagerItemView;->mSecondShortcut:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutViewPagerItemView;->mThirdShortcut:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutViewPagerItemView;->mFourthShortcut:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutViewPagerItemView;->mFifthShortcut:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutViewPagerItemView;->mSixthShortcut:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private handItemClick(Landroid/content/Context;Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutItemInfo;)V
    .locals 2

    if-eqz p2, :cond_8

    .line 1
    iget-object v0, p2, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutItemInfo;->mPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    invoke-static {}, Lcom/smartisanos/magicflow/c;->h()Lcom/smartisanos/magicflow/c;

    move-result-object v0

    iget-object v1, p2, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutItemInfo;->mCategory:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/c;->d(Ljava/lang/String;)V

    .line 3
    iget-boolean v0, p2, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutItemInfo;->isInstalled:Z

    if-nez v0, :cond_1

    .line 4
    iget-object p2, p2, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutItemInfo;->mPackageName:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/smartisanos/magicflow/o/n;->k(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_1
    iget-object v0, p2, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutItemInfo;->mCategory:Ljava/lang/String;

    const-string v1, "open_ailpay_bus_code"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p2, 0x2

    .line 6
    invoke-static {p1, p2}, Lcom/smartisanos/magicflow/o/n;->c(Landroid/content/Context;I)V

    return-void

    .line 7
    :cond_2
    iget-object v0, p2, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutItemInfo;->mCategory:Ljava/lang/String;

    const-string v1, "open_ailpay_city_service"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p2, 0x3

    .line 8
    invoke-static {p1, p2}, Lcom/smartisanos/magicflow/o/n;->c(Landroid/content/Context;I)V

    return-void

    .line 9
    :cond_3
    iget-object v0, p2, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutItemInfo;->mPackageName:Ljava/lang/String;

    const-string v1, "com.android.browser"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 10
    iget-object v0, p2, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutItemInfo;->mCategory:Ljava/lang/String;

    const-string v1, "open_browser_bookmark"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 11
    invoke-static {p1}, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutHelper;->startBrowserBookMark(Landroid/content/Context;)V

    return-void

    .line 12
    :cond_4
    iget-object v0, p2, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutItemInfo;->mCategory:Ljava/lang/String;

    const-string v1, "open_browser_search"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 13
    invoke-static {p1}, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutHelper;->startBrowserSearch(Landroid/content/Context;)V

    return-void

    .line 14
    :cond_5
    iget-object v0, p2, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutItemInfo;->mPackageName:Ljava/lang/String;

    const-string v1, "com.smartisanos.appstore"

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p2, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutItemInfo;->mCategory:Ljava/lang/String;

    const-string v1, "open_appstore_search"

    .line 15
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 16
    invoke-static {p1}, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutHelper;->startAppStoreSearch(Landroid/content/Context;)V

    return-void

    .line 17
    :cond_6
    invoke-virtual {p2}, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutItemInfo;->getActivityName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 18
    iget-object p2, p2, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutItemInfo;->mPackageName:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/smartisanos/magicflow/o/n;->l(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 19
    :cond_7
    iget-object v0, p2, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutItemInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutItemInfo;->getActivityName()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2, p1}, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutHelper;->startAppActivity(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    :goto_0
    return-void

    .line 20
    :cond_8
    :goto_1
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutViewPagerItemView;->log:Lcom/smartisanos/magicflow/LOG;

    const-string p2, "shortcut onItemClick appInfo no data"

    invoke-virtual {p1, p2}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    return-void
.end method

.method private setShortcutImage(Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutItemInfo;I)V
    .locals 4

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p1, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutItemInfo;->mAppIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    sget-boolean v1, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-eqz v1, :cond_1

    .line 3
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutViewPagerItemView;->log:Lcom/smartisanos/magicflow/LOG;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setShortcutImage info = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutItemInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    :cond_1
    if-eqz p2, :cond_7

    const/4 v1, 0x1

    if-eq p2, v1, :cond_6

    const/4 v1, 0x2

    if-eq p2, v1, :cond_5

    const/4 v1, 0x3

    if-eq p2, v1, :cond_4

    const/4 v1, 0x4

    if-eq p2, v1, :cond_3

    const/4 v1, 0x5

    if-eq p2, v1, :cond_2

    goto :goto_1

    .line 4
    :cond_2
    iget-object p2, p0, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutViewPagerItemView;->mSixthShortcut:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 5
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutViewPagerItemView;->mSixthShortcut:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 6
    :cond_3
    iget-object p2, p0, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutViewPagerItemView;->mFifthShortcut:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 7
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutViewPagerItemView;->mFifthShortcut:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 8
    :cond_4
    iget-object p2, p0, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutViewPagerItemView;->mFourthShortcut:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 9
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutViewPagerItemView;->mFourthShortcut:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 10
    :cond_5
    iget-object p2, p0, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutViewPagerItemView;->mThirdShortcut:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 11
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutViewPagerItemView;->mThirdShortcut:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 12
    :cond_6
    iget-object p2, p0, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutViewPagerItemView;->mSecondShortcut:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 13
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutViewPagerItemView;->mSecondShortcut:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 14
    :cond_7
    iget-object p2, p0, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutViewPagerItemView;->mFirstShortcut:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 15
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutViewPagerItemView;->mFirstShortcut:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutCardViewPager;->cleanCachedTouchData()V

    .line 2
    invoke-static {}, Lcom/smartisanos/magicflow/o/n;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutItemInfo;

    if-nez v0, :cond_1

    .line 4
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutViewPagerItemView;->log:Lcom/smartisanos/magicflow/LOG;

    const-string v0, "handItemClick info null"

    invoke-virtual {p1, v0}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    return-void

    .line 5
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutViewPagerItemView;->handItemClick(Landroid/content/Context;Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutItemInfo;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 2
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutViewPagerItemView;->findView()V

    return-void
.end method

.method public setData(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutItemInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutItemInfo;

    .line 4
    rem-int/lit8 v2, v0, 0x6

    invoke-direct {p0, v1, v2}, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutViewPagerItemView;->setShortcutImage(Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutItemInfo;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void

    .line 5
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutViewPagerItemView;->log:Lcom/smartisanos/magicflow/LOG;

    const-string v0, "setData info is empty"

    invoke-virtual {p1, v0}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    return-void
.end method
