.class public Lcom/smartisanos/magicflow/view/weather/HeadView;
.super Landroid/support/constraint/ConstraintLayout;
.source "HeadView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/smartisanos/magicflow/k/a$b;


# static fields
.field private static final TEMP_UNIT_CENTIGRADE:Ljava/lang/String; = "\u00b0C"

.field private static final TEMP_UNIT_FAHREN:Ljava/lang/String; = "\u00b0F"

.field private static final log:Lcom/smartisanos/magicflow/LOG;


# instance fields
.field private mCameraButton:Landroid/widget/ImageView;

.field private mDivider:Landroid/widget/ImageView;

.field private mDividerLocation:Landroid/widget/ImageView;

.field private mDividerStep:Landroid/widget/ImageView;

.field private mQuality:Landroid/widget/TextView;

.field private mSearchLayout:Landroid/support/constraint/ConstraintLayout;

.field private mSearchTextView:Landroid/widget/TextView;

.field private mSettingButton:Landroid/widget/ImageView;

.field private mStepNum:Landroid/widget/TextView;

.field private final mStepRefreshTime:J

.field private mTemperatureComparper:Landroid/widget/TextView;

.field private mTvDate:Landroid/widget/TextView;

.field private mTvLocation:Landroid/widget/TextView;

.field private mTvSignal:Landroid/widget/TextView;

.field private mTvTemperature:Landroid/widget/TextView;

.field private mTvWeather:Landroid/widget/TextView;

.field private mWeatherLayout:Landroid/view/View;

.field private final mWeatherRefreshTime:J

.field private observer:Lcom/smartisanos/magicflow/cache/DataChangeObserver;

.field private updateStepNumRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/smartisanos/magicflow/view/weather/HeadView;

    invoke-static {v0}, Lcom/smartisanos/magicflow/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/magicflow/LOG;

    move-result-object v0

    sput-object v0, Lcom/smartisanos/magicflow/view/weather/HeadView;->log:Lcom/smartisanos/magicflow/LOG;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/smartisanos/magicflow/view/weather/HeadView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/smartisanos/magicflow/view/weather/HeadView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/support/constraint/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-wide/32 p1, 0x124f80

    .line 4
    iput-wide p1, p0, Lcom/smartisanos/magicflow/view/weather/HeadView;->mWeatherRefreshTime:J

    .line 5
    new-instance p1, Lcom/smartisanos/magicflow/view/weather/HeadView$1;

    invoke-direct {p1, p0}, Lcom/smartisanos/magicflow/view/weather/HeadView$1;-><init>(Lcom/smartisanos/magicflow/view/weather/HeadView;)V

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/weather/HeadView;->observer:Lcom/smartisanos/magicflow/cache/DataChangeObserver;

    const-wide/16 p1, 0x2710

    .line 6
    iput-wide p1, p0, Lcom/smartisanos/magicflow/view/weather/HeadView;->mStepRefreshTime:J

    .line 7
    new-instance p1, Lcom/smartisanos/magicflow/view/weather/HeadView$3;

    invoke-direct {p1, p0}, Lcom/smartisanos/magicflow/view/weather/HeadView$3;-><init>(Lcom/smartisanos/magicflow/view/weather/HeadView;)V

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/weather/HeadView;->updateStepNumRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/smartisanos/magicflow/view/weather/HeadView;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/magicflow/view/weather/HeadView;->updateStepNumRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$100(Lcom/smartisanos/magicflow/view/weather/HeadView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/weather/HeadView;->setStepNumText()V

    return-void
.end method

.method private formatDate(Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    const-string v0, ""

    if-nez p1, :cond_0

    return-object v0

    .line 1
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v2, 0x5

    .line 3
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x2

    .line 4
    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    const/4 v4, 0x1

    add-int/2addr v1, v4

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v5, 0x7f0d00cc

    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getTempUnit(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/smartisanos/magicflow/a;->b(Landroid/content/Context;)I

    move-result p1

    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    const-string p1, "\u00b0C"

    return-object p1

    :cond_0
    const-string p1, "\u00b0F"

    return-object p1
.end method

.method public static handleClick(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/smartisanos/magicflow/view/weather/HeadView;->startOrGuideUserToInstall(Landroid/content/Context;)V

    return-void
.end method

.method public static handleSearLayoutClick(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/smartisanos/magicflow/c;->h()Lcom/smartisanos/magicflow/c;

    move-result-object v0

    const-string v1, "A350050"

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/c;->g(Ljava/lang/String;)V

    .line 2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "launch_source"

    const-string v2, "launcher_left_screen"

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.smartisanos.quicksearch"

    const-string v2, "com.android.quicksearchbox.SearchActivity"

    .line 4
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v1, 0x7f01000f

    const v2, 0x7f01000e

    .line 5
    invoke-static {p0, v1, v2}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v1

    .line 6
    invoke-static {v0, p0, v1}, Lcom/smartisanos/magicflow/o/n;->a(Landroid/content/Intent;Landroid/content/Context;Landroid/app/ActivityOptions;)Z

    return-void
.end method

.method private handleSettingButtonClick(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/smartisanos/magicflow/c;->h()Lcom/smartisanos/magicflow/c;

    move-result-object v0

    const-string v1, "A350013"

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/c;->g(Ljava/lang/String;)V

    .line 2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/smartisanos/magicflow/view/MagicFlowActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "extra_view_type"

    const-string v2, "MainSetting"

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v1, 0x7f01000d

    const v2, 0x7f01000e

    .line 4
    invoke-static {p1, v1, v2}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object p1

    .line 5
    invoke-static {v0, p1}, Lcom/smartisanos/magicflow/b;->a(Landroid/content/Intent;Landroid/app/ActivityOptions;)V

    return-void
.end method

.method private setAlertTextView(Lcom/smartisanos/magicflow/view/weather/WeatherDetailInfo;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/weather/HeadView;->mQuality:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/smartisanos/magicflow/view/weather/WeatherDetailInfo;->getDrawableByAlertLevel(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/weather/HeadView;->mQuality:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/smartisanos/magicflow/view/weather/WeatherDetailInfo;->getAlertInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/weather/HeadView;->mQuality:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/smartisanos/magicflow/view/weather/WeatherDetailInfo;->getAlertTextColor(Landroid/content/Context;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method private setStepNumText()V
    .locals 4

    .line 1
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "#,###"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/smartisanos/magicflow/k/a;->d()Lcom/smartisanos/magicflow/k/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/smartisanos/magicflow/k/a;->a()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const v0, 0x7f0d026b

    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/weather/HeadView;->mStepNum:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    sget-boolean v1, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-eqz v1, :cond_0

    .line 6
    sget-object v1, Lcom/smartisanos/magicflow/view/weather/HeadView;->log:Lcom/smartisanos/magicflow/LOG;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setStepNumText:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static startOrGuideUserToInstall(Landroid/content/Context;)V
    .locals 4

    const-string v0, "com.smartisanos.weather"

    .line 1
    invoke-static {p0, v0}, Lcom/smartisanos/magicflow/o/n;->g(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    :try_start_0
    invoke-static {}, Lcom/smartisanos/magicflow/c;->h()Lcom/smartisanos/magicflow/c;

    move-result-object v1

    const-string v2, "A350016"

    invoke-virtual {v1, v2}, Lcom/smartisanos/magicflow/c;->g(Ljava/lang/String;)V

    .line 3
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 4
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.smartisanos.weather.CityWeather"

    invoke-direct {v2, v0, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v0, "launch_param"

    const-string v2, "launcher_weather_card"

    .line 6
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v0, 0x7f01000d

    const v2, 0x7f01000e

    .line 7
    invoke-static {p0, v0, v2}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v0

    .line 8
    invoke-static {v1, p0, v0}, Lcom/smartisanos/magicflow/o/n;->a(Landroid/content/Intent;Landroid/content/Context;Landroid/app/ActivityOptions;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 9
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 10
    :cond_0
    invoke-static {p0, v0}, Lcom/smartisanos/magicflow/o/n;->k(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getSearchLayout()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/weather/HeadView;->mSearchLayout:Landroid/support/constraint/ConstraintLayout;

    return-object v0
.end method

.method public getSearchLayoutAlpha()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/weather/HeadView;->mSearchLayout:Landroid/support/constraint/ConstraintLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    return v0
.end method

.method public getSearchLayoutHeight()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/weather/HeadView;->mSearchLayout:Landroid/support/constraint/ConstraintLayout;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/smartisanos/magicflow/o/n;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 3
    :sswitch_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/smartisanos/magicflow/view/weather/HeadView;->handleClick(Landroid/content/Context;)V

    goto :goto_0

    .line 4
    :sswitch_1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/smartisanos/magicflow/view/weather/HeadView;->handleSettingButtonClick(Landroid/content/Context;)V

    goto :goto_0

    .line 5
    :sswitch_2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/smartisanos/magicflow/view/weather/HeadView;->handleSearLayoutClick(Landroid/content/Context;)V

    goto :goto_0

    .line 6
    :sswitch_3
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/smartisanos/magicflow/o/n;->t(Landroid/content/Context;)V

    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f080077 -> :sswitch_3
        0x7f08026d -> :sswitch_2
        0x7f080285 -> :sswitch_1
        0x7f080379 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/weather/HeadView;->observer:Lcom/smartisanos/magicflow/cache/DataChangeObserver;

    invoke-static {v0}, Lcom/smartisanos/magicflow/cache/WeatherDataCache;->unregister(Lcom/smartisanos/magicflow/cache/DataChangeObserver;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    const v0, 0x7f080285

    .line 2
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/weather/HeadView;->mSettingButton:Landroid/widget/ImageView;

    const v0, 0x7f080077

    .line 3
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/weather/HeadView;->mCameraButton:Landroid/widget/ImageView;

    const v0, 0x7f080379

    .line 4
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/weather/HeadView;->mWeatherLayout:Landroid/view/View;

    const v0, 0x7f08026d

    .line 5
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/ConstraintLayout;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/weather/HeadView;->mSearchLayout:Landroid/support/constraint/ConstraintLayout;

    const v0, 0x7f080272

    .line 6
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/weather/HeadView;->mSearchTextView:Landroid/widget/TextView;

    const v0, 0x7f08037e

    .line 7
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/weather/HeadView;->mTvTemperature:Landroid/widget/TextView;

    const v0, 0x7f08037d

    .line 8
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/weather/HeadView;->mTvSignal:Landroid/widget/TextView;

    const v0, 0x7f08037b

    .line 9
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/weather/HeadView;->mTvDate:Landroid/widget/TextView;

    const v0, 0x7f08037c

    .line 10
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/weather/HeadView;->mTvLocation:Landroid/widget/TextView;

    const v0, 0x7f080380

    .line 11
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/weather/HeadView;->mTvWeather:Landroid/widget/TextView;

    const v0, 0x7f080376

    .line 12
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/weather/HeadView;->mDivider:Landroid/widget/ImageView;

    const v0, 0x7f080377

    .line 13
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/weather/HeadView;->mDividerLocation:Landroid/widget/ImageView;

    const v0, 0x7f080378

    .line 14
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/weather/HeadView;->mDividerStep:Landroid/widget/ImageView;

    const v0, 0x7f08037f

    .line 15
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/weather/HeadView;->mTemperatureComparper:Landroid/widget/TextView;

    const v0, 0x7f08037a

    .line 16
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/weather/HeadView;->mQuality:Landroid/widget/TextView;

    const v0, 0x7f0802c0

    .line 17
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/weather/HeadView;->mStepNum:Landroid/widget/TextView;

    .line 18
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/weather/HeadView;->mCameraButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/weather/HeadView;->mSettingButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/weather/HeadView;->mSearchLayout:Landroid/support/constraint/ConstraintLayout;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/weather/HeadView;->observer:Lcom/smartisanos/magicflow/cache/DataChangeObserver;

    invoke-static {v0}, Lcom/smartisanos/magicflow/cache/WeatherDataCache;->register(Lcom/smartisanos/magicflow/cache/DataChangeObserver;)V

    .line 22
    invoke-static {}, Lcom/smartisanos/magicflow/k/a;->d()Lcom/smartisanos/magicflow/k/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/smartisanos/magicflow/k/a;->a(Lcom/smartisanos/magicflow/k/a$b;)V

    .line 23
    invoke-static {}, Lcom/smartisanos/magicflow/k/a;->d()Lcom/smartisanos/magicflow/k/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/k/a;->b()V

    .line 24
    invoke-static {}, Lcom/smartisanos/magicflow/k/a;->d()Lcom/smartisanos/magicflow/k/a;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/k/a;->a(Landroid/content/Context;)V

    .line 25
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/weather/HeadView;->setStepNumText()V

    .line 26
    sget-boolean v0, Lcom/smartisanos/magicflow/h/d;->U:Z

    if-eqz v0, :cond_0

    .line 27
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/weather/HeadView;->mCameraButton:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/weather/HeadView;->mCameraButton:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public onStepChanged(I)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/smartisanos/magicflow/view/weather/HeadView;->log:Lcom/smartisanos/magicflow/LOG;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stepNum="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x4

    .line 3
    invoke-static {p1}, Lcom/smartisanos/magicflow/o/g;->a(I)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/smartisanos/magicflow/view/weather/HeadView;->updateStepNumRunnable:Ljava/lang/Runnable;

    invoke-static {p1}, Lcom/smartisanos/magicflow/o/m;->a(Ljava/lang/Runnable;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 4
    new-instance p1, Lcom/smartisanos/magicflow/view/weather/HeadView$2;

    invoke-direct {p1, p0}, Lcom/smartisanos/magicflow/view/weather/HeadView$2;-><init>(Lcom/smartisanos/magicflow/view/weather/HeadView;)V

    invoke-static {p1}, Lcom/smartisanos/magicflow/o/d;->post(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public refreshData()V
    .locals 4

    .line 1
    sget-object v0, Lcom/smartisanos/magicflow/cache/WeatherDataCache;->sWeatherInfo:Lcom/smartisanos/magicflow/view/weather/WeatherDetailInfo;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/smartisanos/magicflow/cache/WeatherDataCache;->sLastTimeUpdate:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v2, 0x124f80

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 3
    :cond_0
    invoke-static {}, Lcom/smartisanos/magicflow/cache/WeatherDataCache;->updateWeatherData()V

    .line 4
    :cond_1
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/weather/HeadView;->setStepNumText()V

    return-void
.end method

.method public refreshUI()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/weather/HeadView;->mSearchTextView:Landroid/widget/TextView;

    const v1, 0x7f0d0237

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2
    sget-object v0, Lcom/smartisanos/magicflow/cache/WeatherDataCache;->sWeatherInfo:Lcom/smartisanos/magicflow/view/weather/WeatherDetailInfo;

    .line 3
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/weather/HeadView;->mTvSignal:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/smartisanos/magicflow/view/weather/HeadView;->getTempUnit(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v1, 0x8

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/weather/HeadView;->mWeatherLayout:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/weather/HeadView;->mTvTemperature:Landroid/widget/TextView;

    const-string v2, "--"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/weather/HeadView;->mTvWeather:Landroid/widget/TextView;

    const v2, 0x7f0d00cd

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 7
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/weather/HeadView;->mDivider:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/weather/HeadView;->mDividerLocation:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/weather/HeadView;->mDividerStep:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 10
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/weather/HeadView;->mQuality:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 11
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/weather/HeadView;->mTemperatureComparper:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 12
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/weather/HeadView;->mTvDate:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/weather/HeadView;->mTvLocation:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 14
    :cond_0
    iget-object v2, p0, Lcom/smartisanos/magicflow/view/weather/HeadView;->mDivider:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 15
    iget-object v2, p0, Lcom/smartisanos/magicflow/view/weather/HeadView;->mDividerLocation:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 16
    iget-object v2, p0, Lcom/smartisanos/magicflow/view/weather/HeadView;->mDividerStep:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 17
    iget-object v2, p0, Lcom/smartisanos/magicflow/view/weather/HeadView;->mQuality:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 18
    iget-object v2, p0, Lcom/smartisanos/magicflow/view/weather/HeadView;->mTemperatureComparper:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 19
    iget-object v2, p0, Lcom/smartisanos/magicflow/view/weather/HeadView;->mTvDate:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 20
    iget-object v2, p0, Lcom/smartisanos/magicflow/view/weather/HeadView;->mTvLocation:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 21
    iget-object v2, p0, Lcom/smartisanos/magicflow/view/weather/HeadView;->mWeatherLayout:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    iget-object v2, p0, Lcom/smartisanos/magicflow/view/weather/HeadView;->mTvTemperature:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/smartisanos/magicflow/view/weather/WeatherDetailInfo;->getTemp(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/smartisanos/magicflow/view/weather/WeatherHelper;->getTempDiffText(Landroid/content/Context;Lcom/smartisanos/magicflow/view/weather/WeatherDetailInfo;)[Ljava/lang/String;

    move-result-object v2

    .line 24
    iget-object v4, p0, Lcom/smartisanos/magicflow/view/weather/HeadView;->mTemperatureComparper:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, v2, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x1

    aget-object v2, v2, v6

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/weather/WeatherDetailInfo;->hasAlertInfo()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 26
    invoke-direct {p0, v0}, Lcom/smartisanos/magicflow/view/weather/HeadView;->setAlertTextView(Lcom/smartisanos/magicflow/view/weather/WeatherDetailInfo;)V

    goto :goto_0

    .line 27
    :cond_1
    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/weather/WeatherBasicInfo;->getAqi()I

    move-result v2

    if-gez v2, :cond_2

    .line 28
    iget-object v2, p0, Lcom/smartisanos/magicflow/view/weather/HeadView;->mQuality:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 29
    :cond_2
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/weather/HeadView;->mQuality:Landroid/widget/TextView;

    const v2, 0x7f070107

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 30
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/weather/HeadView;->mQuality:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 31
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/weather/HeadView;->mQuality:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/weather/WeatherBasicInfo;->getAqi()I

    move-result v3

    invoke-static {v3}, Lcom/smartisanos/magicflow/view/weather/WeatherHelper;->getAQIResId(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    :goto_0
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/weather/HeadView;->mTvLocation:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/weather/WeatherDetailInfo;->getLocation()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/smartisanos/magicflow/o/n;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/weather/HeadView;->mTvDate:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/smartisanos/magicflow/view/weather/HeadView;->formatDate(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/weather/HeadView;->mTvWeather:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/weather/WeatherDetailInfo;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method public setSearchLayoutAlpha(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/weather/HeadView;->mSearchLayout:Landroid/support/constraint/ConstraintLayout;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setAlpha(F)V

    :cond_0
    return-void
.end method
