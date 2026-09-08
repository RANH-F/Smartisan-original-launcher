.class public Lcom/smartisanos/magicflow/view/settings/LifeInfoSettingView;
.super Lcom/smartisanos/magicflow/view/BaseView;
.source "LifeInfoSettingView.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private log:Lcom/smartisanos/magicflow/LOG;

.field private mChecked:Z

.field private mLifeInfoSub:Landroid/widget/LinearLayout;

.field private mSettingExpress:Lsmartisan/widget/ListContentItemText;

.field private mSwitch:Lsmartisan/widget/ListContentItemSwitch;

.field private mSwitchExpress:Lsmartisan/widget/ListContentItemSwitch;

.field private mSwitchFlightReservation:Lsmartisan/widget/ListContentItemSwitch;

.field private mSwitchHotelReservation:Lsmartisan/widget/ListContentItemSwitch;

.field private mSwitchMovieTicket:Lsmartisan/widget/ListContentItemSwitch;

.field private mSwitchTrainReservation:Lsmartisan/widget/ListContentItemSwitch;

.field private mTips:Lsmartisan/widget/TipsView;

.field private mTitle:Lsmartisan/widget/TitleBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZZ)V
    .locals 2

    const p2, 0x7f0b0083

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/smartisanos/magicflow/view/BaseView;-><init>(Landroid/content/Context;I)V

    .line 2
    const-class p2, Lcom/smartisanos/magicflow/view/settings/LifeInfoSettingView;

    invoke-static {p2}, Lcom/smartisanos/magicflow/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/magicflow/LOG;

    move-result-object p2

    iput-object p2, p0, Lcom/smartisanos/magicflow/view/settings/LifeInfoSettingView;->log:Lcom/smartisanos/magicflow/LOG;

    .line 3
    invoke-static {}, Lcom/smartisanos/magicflow/c;->h()Lcom/smartisanos/magicflow/c;

    move-result-object p2

    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Lcom/smartisanos/magicflow/c;->k(I)V

    .line 4
    iget-object p2, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContentView:Landroid/view/ViewGroup;

    const v0, 0x7f080373

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lsmartisan/widget/TitleBar;

    iput-object p2, p0, Lcom/smartisanos/magicflow/view/settings/LifeInfoSettingView;->mTitle:Lsmartisan/widget/TitleBar;

    .line 5
    iget-object p2, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContentView:Landroid/view/ViewGroup;

    const v0, 0x7f080286

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lsmartisan/widget/ListContentItemSwitch;

    iput-object p2, p0, Lcom/smartisanos/magicflow/view/settings/LifeInfoSettingView;->mSwitch:Lsmartisan/widget/ListContentItemSwitch;

    .line 6
    iget-object p2, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContentView:Landroid/view/ViewGroup;

    const v0, 0x7f080180

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    .line 7
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContentView:Landroid/view/ViewGroup;

    const v1, 0x7f0802df

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lsmartisan/widget/TipsView;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/settings/LifeInfoSettingView;->mTips:Lsmartisan/widget/TipsView;

    .line 8
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContentView:Landroid/view/ViewGroup;

    const v1, 0x7f08019b

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/settings/LifeInfoSettingView;->mLifeInfoSub:Landroid/widget/LinearLayout;

    .line 9
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/settings/LifeInfoSettingView;->mTitle:Lsmartisan/widget/TitleBar;

    sget v1, Lsmartisan/widget/TitleBar;->BACK_ICON_RES:I

    invoke-virtual {v0, v1}, Lsmartisan/widget/TitleBar;->addLeftImageView(I)Landroid/widget/ImageView;

    move-result-object v0

    new-instance v1, Lcom/smartisanos/magicflow/view/settings/LifeInfoSettingView$1;

    invoke-direct {v1, p0}, Lcom/smartisanos/magicflow/view/settings/LifeInfoSettingView$1;-><init>(Lcom/smartisanos/magicflow/view/settings/LifeInfoSettingView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/settings/LifeInfoSettingView;->mTips:Lsmartisan/widget/TipsView;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f0d01a4

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iput-boolean p3, p0, Lcom/smartisanos/magicflow/view/settings/LifeInfoSettingView;->mChecked:Z

    .line 12
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/settings/LifeInfoSettingView;->mSwitch:Lsmartisan/widget/ListContentItemSwitch;

    iget-boolean p3, p0, Lcom/smartisanos/magicflow/view/settings/LifeInfoSettingView;->mChecked:Z

    invoke-virtual {p1, p3}, Lsmartisan/widget/ListContentItemSwitch;->setChecked(Z)V

    .line 13
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/settings/LifeInfoSettingView;->mSwitch:Lsmartisan/widget/ListContentItemSwitch;

    const p3, 0x7f0d01a3

    invoke-virtual {p1, p3}, Lsmartisan/widget/ListContentItem;->setTitle(I)V

    const p1, 0x7f0701f8

    .line 14
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 15
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContentView:Landroid/view/ViewGroup;

    const p2, 0x7f0801cc

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lsmartisan/widget/ListContentItemSwitch;

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/settings/LifeInfoSettingView;->mSwitchMovieTicket:Lsmartisan/widget/ListContentItemSwitch;

    .line 16
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContentView:Landroid/view/ViewGroup;

    const p2, 0x7f080131

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lsmartisan/widget/ListContentItemSwitch;

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/settings/LifeInfoSettingView;->mSwitchFlightReservation:Lsmartisan/widget/ListContentItemSwitch;

    .line 17
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContentView:Landroid/view/ViewGroup;

    const p2, 0x7f0802ef

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lsmartisan/widget/ListContentItemSwitch;

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/settings/LifeInfoSettingView;->mSwitchTrainReservation:Lsmartisan/widget/ListContentItemSwitch;

    .line 18
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContentView:Landroid/view/ViewGroup;

    const p2, 0x7f080162

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lsmartisan/widget/ListContentItemSwitch;

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/settings/LifeInfoSettingView;->mSwitchHotelReservation:Lsmartisan/widget/ListContentItemSwitch;

    .line 19
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContentView:Landroid/view/ViewGroup;

    const p2, 0x7f08010c

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lsmartisan/widget/ListContentItemSwitch;

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/settings/LifeInfoSettingView;->mSwitchExpress:Lsmartisan/widget/ListContentItemSwitch;

    .line 20
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContentView:Landroid/view/ViewGroup;

    const p2, 0x7f080112

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lsmartisan/widget/ListContentItemText;

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/settings/LifeInfoSettingView;->mSettingExpress:Lsmartisan/widget/ListContentItemText;

    .line 21
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/settings/LifeInfoSettingView;->mSwitchMovieTicket:Lsmartisan/widget/ListContentItemSwitch;

    const-string p2, "Movie"

    invoke-static {p2}, Lcom/smartisanos/magicflow/cache/SettingDataCache;->isCategoryEnabled(Ljava/lang/String;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lsmartisan/widget/ListContentItemSwitch;->setChecked(Z)V

    .line 22
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/settings/LifeInfoSettingView;->mSwitchFlightReservation:Lsmartisan/widget/ListContentItemSwitch;

    const-string p2, "Flight"

    invoke-static {p2}, Lcom/smartisanos/magicflow/cache/SettingDataCache;->isCategoryEnabled(Ljava/lang/String;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lsmartisan/widget/ListContentItemSwitch;->setChecked(Z)V

    .line 23
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/settings/LifeInfoSettingView;->mSwitchTrainReservation:Lsmartisan/widget/ListContentItemSwitch;

    const-string p2, "Train"

    invoke-static {p2}, Lcom/smartisanos/magicflow/cache/SettingDataCache;->isCategoryEnabled(Ljava/lang/String;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lsmartisan/widget/ListContentItemSwitch;->setChecked(Z)V

    .line 24
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/settings/LifeInfoSettingView;->mSwitchHotelReservation:Lsmartisan/widget/ListContentItemSwitch;

    const-string p2, "Hotel"

    invoke-static {p2}, Lcom/smartisanos/magicflow/cache/SettingDataCache;->isCategoryEnabled(Ljava/lang/String;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lsmartisan/widget/ListContentItemSwitch;->setChecked(Z)V

    .line 25
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/settings/LifeInfoSettingView;->mSwitchExpress:Lsmartisan/widget/ListContentItemSwitch;

    const-string p2, "Express"

    invoke-static {p2}, Lcom/smartisanos/magicflow/cache/SettingDataCache;->isCategoryEnabled(Ljava/lang/String;)Z

    move-result p2

    invoke-virtual {p1, p2}, Lsmartisan/widget/ListContentItemSwitch;->setChecked(Z)V

    .line 26
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/settings/LifeInfoSettingView;->mSwitch:Lsmartisan/widget/ListContentItemSwitch;

    invoke-virtual {p1, p0}, Lsmartisan/widget/ListContentItemSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 27
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/settings/LifeInfoSettingView;->mSwitchMovieTicket:Lsmartisan/widget/ListContentItemSwitch;

    invoke-virtual {p1, p0}, Lsmartisan/widget/ListContentItemSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 28
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/settings/LifeInfoSettingView;->mSwitchFlightReservation:Lsmartisan/widget/ListContentItemSwitch;

    invoke-virtual {p1, p0}, Lsmartisan/widget/ListContentItemSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 29
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/settings/LifeInfoSettingView;->mSwitchTrainReservation:Lsmartisan/widget/ListContentItemSwitch;

    invoke-virtual {p1, p0}, Lsmartisan/widget/ListContentItemSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 30
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/settings/LifeInfoSettingView;->mSwitchHotelReservation:Lsmartisan/widget/ListContentItemSwitch;

    invoke-virtual {p1, p0}, Lsmartisan/widget/ListContentItemSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 31
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/settings/LifeInfoSettingView;->mSwitchExpress:Lsmartisan/widget/ListContentItemSwitch;

    invoke-virtual {p1, p0}, Lsmartisan/widget/ListContentItemSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 32
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/settings/LifeInfoSettingView;->mSettingExpress:Lsmartisan/widget/ListContentItemText;

    new-instance p2, Lcom/smartisanos/magicflow/view/settings/LifeInfoSettingView$2;

    invoke-direct {p2, p0}, Lcom/smartisanos/magicflow/view/settings/LifeInfoSettingView$2;-><init>(Lcom/smartisanos/magicflow/view/settings/LifeInfoSettingView;)V

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/settings/LifeInfoSettingView;->mLifeInfoSub:Landroid/widget/LinearLayout;

    iget-boolean p2, p0, Lcom/smartisanos/magicflow/view/settings/LifeInfoSettingView;->mChecked:Z

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/16 p2, 0x8

    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/settings/LifeInfoSettingView;->mSwitch:Lsmartisan/widget/ListContentItemSwitch;

    invoke-virtual {v0}, Lsmartisan/widget/ListContentItemSwitch;->getSwitch()Lsmartisan/widget/SwitchEx;

    move-result-object v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-ne p1, v0, :cond_1

    .line 2
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/settings/LifeInfoSettingView;->mLifeInfoSub:Landroid/widget/LinearLayout;

    if-eqz p2, :cond_0

    move v1, v2

    :cond_0
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/settings/LifeInfoSettingView;->mSwitchMovieTicket:Lsmartisan/widget/ListContentItemSwitch;

    invoke-virtual {v0}, Lsmartisan/widget/ListContentItemSwitch;->getSwitch()Lsmartisan/widget/SwitchEx;

    move-result-object v0

    const/4 v3, 0x0

    if-ne p1, v0, :cond_2

    .line 4
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContext:Landroid/content/Context;

    const v3, 0x7f0d01b8

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v0, "Movie"

    const-string v4, "LifeInfoMovieAlert"

    goto :goto_0

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/settings/LifeInfoSettingView;->mSwitchFlightReservation:Lsmartisan/widget/ListContentItemSwitch;

    invoke-virtual {v0}, Lsmartisan/widget/ListContentItemSwitch;->getSwitch()Lsmartisan/widget/SwitchEx;

    move-result-object v0

    if-ne p1, v0, :cond_3

    .line 6
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContext:Landroid/content/Context;

    const v3, 0x7f0d016e

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v0, "Flight"

    const-string v4, "LifeInfoFlightAlert"

    goto :goto_0

    .line 7
    :cond_3
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/settings/LifeInfoSettingView;->mSwitchTrainReservation:Lsmartisan/widget/ListContentItemSwitch;

    invoke-virtual {v0}, Lsmartisan/widget/ListContentItemSwitch;->getSwitch()Lsmartisan/widget/SwitchEx;

    move-result-object v0

    if-ne p1, v0, :cond_4

    .line 8
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContext:Landroid/content/Context;

    const v3, 0x7f0d0276

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v0, "Train"

    const-string v4, "LifeInfoTrainAlert"

    goto :goto_0

    .line 9
    :cond_4
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/settings/LifeInfoSettingView;->mSwitchHotelReservation:Lsmartisan/widget/ListContentItemSwitch;

    invoke-virtual {v0}, Lsmartisan/widget/ListContentItemSwitch;->getSwitch()Lsmartisan/widget/SwitchEx;

    move-result-object v0

    if-ne p1, v0, :cond_5

    .line 10
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContext:Landroid/content/Context;

    const v3, 0x7f0d0186

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v0, "Hotel"

    const-string v4, "LifeInfoHotelAlert"

    goto :goto_0

    .line 11
    :cond_5
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/settings/LifeInfoSettingView;->mSwitchExpress:Lsmartisan/widget/ListContentItemSwitch;

    invoke-virtual {v0}, Lsmartisan/widget/ListContentItemSwitch;->getSwitch()Lsmartisan/widget/SwitchEx;

    move-result-object v0

    if-ne p1, v0, :cond_6

    .line 12
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContext:Landroid/content/Context;

    const v3, 0x7f0d014b

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v0, "Express"

    const-string v4, "LifeInfoExpressAlert"

    goto :goto_0

    :cond_6
    move-object v0, v3

    move-object v4, v0

    :goto_0
    const/4 v5, 0x1

    if-nez p2, :cond_8

    .line 13
    invoke-static {v4}, Lcom/smartisanos/magicflow/cache/SettingDataCache;->isLifeInfoAlertAlerted(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 14
    new-instance v6, Landroid/view/ContextThemeWrapper;

    iget-object v7, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContext:Landroid/content/Context;

    const v8, 0x103012b

    invoke-direct {v6, v7, v8}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 15
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 16
    iget-object v6, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContext:Landroid/content/Context;

    const v8, 0x7f0d01a5

    invoke-virtual {v6, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v8, v5, [Ljava/lang/Object;

    aput-object v3, v8, v2

    invoke-static {v6, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const v6, 0x7f0d0034

    .line 17
    invoke-virtual {v7, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    .line 18
    invoke-virtual {v6, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v6, 0x7f0d01a7

    new-instance v7, Lcom/smartisanos/magicflow/view/settings/LifeInfoSettingView$4;

    invoke-direct {v7, p0, p1, v0}, Lcom/smartisanos/magicflow/view/settings/LifeInfoSettingView$4;-><init>(Lcom/smartisanos/magicflow/view/settings/LifeInfoSettingView;Landroid/widget/CompoundButton;Ljava/lang/String;)V

    .line 19
    invoke-virtual {v3, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v6, 0x7f0d01a6

    new-instance v7, Lcom/smartisanos/magicflow/view/settings/LifeInfoSettingView$3;

    invoke-direct {v7, p0, p1, v0}, Lcom/smartisanos/magicflow/view/settings/LifeInfoSettingView$3;-><init>(Lcom/smartisanos/magicflow/view/settings/LifeInfoSettingView;Landroid/widget/CompoundButton;Ljava/lang/String;)V

    .line 20
    invoke-virtual {v3, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 21
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 22
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 23
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 24
    invoke-static {v5, v4}, Lcom/smartisanos/magicflow/h/v;->a(ZLjava/lang/String;)V

    goto :goto_1

    .line 25
    :cond_7
    invoke-static {v0, v2}, Lcom/smartisanos/magicflow/h/v;->a(Ljava/lang/String;Z)V

    goto :goto_1

    .line 26
    :cond_8
    invoke-static {v0, v5}, Lcom/smartisanos/magicflow/h/v;->a(Ljava/lang/String;Z)V

    .line 27
    :goto_1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/settings/LifeInfoSettingView;->mSwitchExpress:Lsmartisan/widget/ListContentItemSwitch;

    invoke-virtual {v0}, Lsmartisan/widget/ListContentItemSwitch;->getSwitch()Lsmartisan/widget/SwitchEx;

    move-result-object v0

    if-ne p1, v0, :cond_b

    .line 28
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/settings/LifeInfoSettingView;->mSettingExpress:Lsmartisan/widget/ListContentItemText;

    if-eqz p2, :cond_9

    move v1, v2

    :cond_9
    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 29
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/settings/LifeInfoSettingView;->mSwitchExpress:Lsmartisan/widget/ListContentItemSwitch;

    if-eqz p2, :cond_a

    const/4 v5, 0x2

    :cond_a
    invoke-virtual {p1, v5}, Lsmartisan/widget/ListContentItem;->setBackgroundStyle(I)V

    :cond_b
    return-void
.end method

.method public onRemove()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/settings/LifeInfoSettingView;->mSwitch:Lsmartisan/widget/ListContentItemSwitch;

    invoke-virtual {v0}, Lsmartisan/widget/ListContentItemSwitch;->isChecked()Z

    move-result v0

    .line 2
    iget-boolean v1, p0, Lcom/smartisanos/magicflow/view/settings/LifeInfoSettingView;->mChecked:Z

    if-eq v1, v0, :cond_0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "LifeInfo"

    .line 3
    invoke-static {v1, v0}, Lcom/smartisanos/magicflow/cache/SettingDataCache;->refreshSettingEnabledCategoryOrder(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method
