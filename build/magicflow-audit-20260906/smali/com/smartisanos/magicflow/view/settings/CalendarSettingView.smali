.class public Lcom/smartisanos/magicflow/view/settings/CalendarSettingView;
.super Lcom/smartisanos/magicflow/view/BaseView;
.source "CalendarSettingView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mCalendarTimeRange:Landroid/widget/LinearLayout;

.field private mChecked:Z

.field private mOneDayCheck:Lsmartisan/widget/ListContentItemCheck;

.field private mOneWeekCheck:Lsmartisan/widget/ListContentItemCheck;

.field private mSwitch:Lsmartisan/widget/ListContentItemSwitch;

.field private mThreeDayCheck:Lsmartisan/widget/ListContentItemCheck;

.field private mTips:Lsmartisan/widget/TipsView;

.field private mTitle:Lsmartisan/widget/TitleBar;

.field private mTwoWeekCheck:Lsmartisan/widget/ListContentItemCheck;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZZ)V
    .locals 2

    const p2, 0x7f0b002a

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/smartisanos/magicflow/view/BaseView;-><init>(Landroid/content/Context;I)V

    .line 2
    invoke-static {}, Lcom/smartisanos/magicflow/c;->h()Lcom/smartisanos/magicflow/c;

    move-result-object p2

    const/4 v0, 0x3

    invoke-virtual {p2, v0}, Lcom/smartisanos/magicflow/c;->k(I)V

    .line 3
    iget-object p2, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContentView:Landroid/view/ViewGroup;

    const v0, 0x7f080373

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lsmartisan/widget/TitleBar;

    iput-object p2, p0, Lcom/smartisanos/magicflow/view/settings/CalendarSettingView;->mTitle:Lsmartisan/widget/TitleBar;

    .line 4
    iget-object p2, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContentView:Landroid/view/ViewGroup;

    const v0, 0x7f080286

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lsmartisan/widget/ListContentItemSwitch;

    iput-object p2, p0, Lcom/smartisanos/magicflow/view/settings/CalendarSettingView;->mSwitch:Lsmartisan/widget/ListContentItemSwitch;

    .line 5
    iget-object p2, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContentView:Landroid/view/ViewGroup;

    const v0, 0x7f080180

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    .line 6
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContentView:Landroid/view/ViewGroup;

    const v1, 0x7f0802df

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lsmartisan/widget/TipsView;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/settings/CalendarSettingView;->mTips:Lsmartisan/widget/TipsView;

    .line 7
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContentView:Landroid/view/ViewGroup;

    const v1, 0x7f080075

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/settings/CalendarSettingView;->mCalendarTimeRange:Landroid/widget/LinearLayout;

    .line 8
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContentView:Landroid/view/ViewGroup;

    const v1, 0x7f0801a2

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lsmartisan/widget/ListContentItemCheck;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/settings/CalendarSettingView;->mOneDayCheck:Lsmartisan/widget/ListContentItemCheck;

    .line 9
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContentView:Landroid/view/ViewGroup;

    const v1, 0x7f0801a4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lsmartisan/widget/ListContentItemCheck;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/settings/CalendarSettingView;->mThreeDayCheck:Lsmartisan/widget/ListContentItemCheck;

    .line 10
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContentView:Landroid/view/ViewGroup;

    const v1, 0x7f0801a3

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lsmartisan/widget/ListContentItemCheck;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/settings/CalendarSettingView;->mOneWeekCheck:Lsmartisan/widget/ListContentItemCheck;

    .line 11
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/BaseView;->mContentView:Landroid/view/ViewGroup;

    const v1, 0x7f0801a5

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lsmartisan/widget/ListContentItemCheck;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/settings/CalendarSettingView;->mTwoWeekCheck:Lsmartisan/widget/ListContentItemCheck;

    .line 12
    iput-boolean p3, p0, Lcom/smartisanos/magicflow/view/settings/CalendarSettingView;->mChecked:Z

    .line 13
    iget-object p3, p0, Lcom/smartisanos/magicflow/view/settings/CalendarSettingView;->mSwitch:Lsmartisan/widget/ListContentItemSwitch;

    iget-boolean v0, p0, Lcom/smartisanos/magicflow/view/settings/CalendarSettingView;->mChecked:Z

    invoke-virtual {p3, v0}, Lsmartisan/widget/ListContentItemSwitch;->setChecked(Z)V

    .line 14
    iget-object p3, p0, Lcom/smartisanos/magicflow/view/settings/CalendarSettingView;->mSwitch:Lsmartisan/widget/ListContentItemSwitch;

    const v0, 0x7f0d008e

    invoke-virtual {p3, v0}, Lsmartisan/widget/ListContentItem;->setTitle(I)V

    const p3, 0x7f0700f9

    .line 15
    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 16
    iget-object p2, p0, Lcom/smartisanos/magicflow/view/settings/CalendarSettingView;->mTips:Lsmartisan/widget/TipsView;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f0d0090

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/settings/CalendarSettingView;->setCheckStatus()V

    .line 18
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/settings/CalendarSettingView;->mTitle:Lsmartisan/widget/TitleBar;

    sget p2, Lsmartisan/widget/TitleBar;->BACK_ICON_RES:I

    invoke-virtual {p1, p2}, Lsmartisan/widget/TitleBar;->addLeftImageView(I)Landroid/widget/ImageView;

    move-result-object p1

    new-instance p2, Lcom/smartisanos/magicflow/view/settings/CalendarSettingView$1;

    invoke-direct {p2, p0}, Lcom/smartisanos/magicflow/view/settings/CalendarSettingView$1;-><init>(Lcom/smartisanos/magicflow/view/settings/CalendarSettingView;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/settings/CalendarSettingView;->mSwitch:Lsmartisan/widget/ListContentItemSwitch;

    invoke-virtual {p1, p0}, Lsmartisan/widget/ListContentItemSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 20
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/settings/CalendarSettingView;->mOneDayCheck:Lsmartisan/widget/ListContentItemCheck;

    invoke-virtual {p1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/settings/CalendarSettingView;->mThreeDayCheck:Lsmartisan/widget/ListContentItemCheck;

    invoke-virtual {p1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/settings/CalendarSettingView;->mOneWeekCheck:Lsmartisan/widget/ListContentItemCheck;

    invoke-virtual {p1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/settings/CalendarSettingView;->mTwoWeekCheck:Lsmartisan/widget/ListContentItemCheck;

    invoke-virtual {p1, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/settings/CalendarSettingView;->mCalendarTimeRange:Landroid/widget/LinearLayout;

    iget-boolean p2, p0, Lcom/smartisanos/magicflow/view/settings/CalendarSettingView;->mChecked:Z

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/16 p2, 0x8

    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method private setCheckStatus()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/smartisanos/magicflow/cache/SettingDataCache;->getCalendarTimeRange()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    const/4 v3, 0x6

    if-eq v0, v3, :cond_1

    const/16 v3, 0xd

    if-eq v0, v3, :cond_0

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/settings/CalendarSettingView;->mOneDayCheck:Lsmartisan/widget/ListContentItemCheck;

    invoke-virtual {v0, v2}, Lsmartisan/widget/ListContentItemCheck;->setChecked(Z)V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/settings/CalendarSettingView;->mThreeDayCheck:Lsmartisan/widget/ListContentItemCheck;

    invoke-virtual {v0, v1}, Lsmartisan/widget/ListContentItemCheck;->setChecked(Z)V

    .line 4
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/settings/CalendarSettingView;->mOneWeekCheck:Lsmartisan/widget/ListContentItemCheck;

    invoke-virtual {v0, v2}, Lsmartisan/widget/ListContentItemCheck;->setChecked(Z)V

    .line 5
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/settings/CalendarSettingView;->mTwoWeekCheck:Lsmartisan/widget/ListContentItemCheck;

    invoke-virtual {v0, v2}, Lsmartisan/widget/ListContentItemCheck;->setChecked(Z)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/settings/CalendarSettingView;->mOneDayCheck:Lsmartisan/widget/ListContentItemCheck;

    invoke-virtual {v0, v2}, Lsmartisan/widget/ListContentItemCheck;->setChecked(Z)V

    .line 7
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/settings/CalendarSettingView;->mThreeDayCheck:Lsmartisan/widget/ListContentItemCheck;

    invoke-virtual {v0, v2}, Lsmartisan/widget/ListContentItemCheck;->setChecked(Z)V

    .line 8
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/settings/CalendarSettingView;->mOneWeekCheck:Lsmartisan/widget/ListContentItemCheck;

    invoke-virtual {v0, v2}, Lsmartisan/widget/ListContentItemCheck;->setChecked(Z)V

    .line 9
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/settings/CalendarSettingView;->mTwoWeekCheck:Lsmartisan/widget/ListContentItemCheck;

    invoke-virtual {v0, v1}, Lsmartisan/widget/ListContentItemCheck;->setChecked(Z)V

    goto :goto_0

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/settings/CalendarSettingView;->mOneDayCheck:Lsmartisan/widget/ListContentItemCheck;

    invoke-virtual {v0, v2}, Lsmartisan/widget/ListContentItemCheck;->setChecked(Z)V

    .line 11
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/settings/CalendarSettingView;->mThreeDayCheck:Lsmartisan/widget/ListContentItemCheck;

    invoke-virtual {v0, v2}, Lsmartisan/widget/ListContentItemCheck;->setChecked(Z)V

    .line 12
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/settings/CalendarSettingView;->mOneWeekCheck:Lsmartisan/widget/ListContentItemCheck;

    invoke-virtual {v0, v1}, Lsmartisan/widget/ListContentItemCheck;->setChecked(Z)V

    .line 13
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/settings/CalendarSettingView;->mTwoWeekCheck:Lsmartisan/widget/ListContentItemCheck;

    invoke-virtual {v0, v2}, Lsmartisan/widget/ListContentItemCheck;->setChecked(Z)V

    goto :goto_0

    .line 14
    :cond_2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/settings/CalendarSettingView;->mOneDayCheck:Lsmartisan/widget/ListContentItemCheck;

    invoke-virtual {v0, v1}, Lsmartisan/widget/ListContentItemCheck;->setChecked(Z)V

    .line 15
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/settings/CalendarSettingView;->mThreeDayCheck:Lsmartisan/widget/ListContentItemCheck;

    invoke-virtual {v0, v2}, Lsmartisan/widget/ListContentItemCheck;->setChecked(Z)V

    .line 16
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/settings/CalendarSettingView;->mOneWeekCheck:Lsmartisan/widget/ListContentItemCheck;

    invoke-virtual {v0, v2}, Lsmartisan/widget/ListContentItemCheck;->setChecked(Z)V

    .line 17
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/settings/CalendarSettingView;->mTwoWeekCheck:Lsmartisan/widget/ListContentItemCheck;

    invoke-virtual {v0, v2}, Lsmartisan/widget/ListContentItemCheck;->setChecked(Z)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/settings/CalendarSettingView;->mCalendarTimeRange:Landroid/widget/LinearLayout;

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/16 p2, 0x8

    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 2
    :pswitch_0
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/settings/CalendarSettingView;->mOneDayCheck:Lsmartisan/widget/ListContentItemCheck;

    invoke-virtual {p1, v1}, Lsmartisan/widget/ListContentItemCheck;->setChecked(Z)V

    .line 3
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/settings/CalendarSettingView;->mThreeDayCheck:Lsmartisan/widget/ListContentItemCheck;

    invoke-virtual {p1, v1}, Lsmartisan/widget/ListContentItemCheck;->setChecked(Z)V

    .line 4
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/settings/CalendarSettingView;->mOneWeekCheck:Lsmartisan/widget/ListContentItemCheck;

    invoke-virtual {p1, v1}, Lsmartisan/widget/ListContentItemCheck;->setChecked(Z)V

    .line 5
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/settings/CalendarSettingView;->mTwoWeekCheck:Lsmartisan/widget/ListContentItemCheck;

    invoke-virtual {p1, v0}, Lsmartisan/widget/ListContentItemCheck;->setChecked(Z)V

    const/16 v1, 0xd

    goto :goto_0

    .line 6
    :pswitch_1
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/settings/CalendarSettingView;->mOneDayCheck:Lsmartisan/widget/ListContentItemCheck;

    invoke-virtual {p1, v1}, Lsmartisan/widget/ListContentItemCheck;->setChecked(Z)V

    .line 7
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/settings/CalendarSettingView;->mThreeDayCheck:Lsmartisan/widget/ListContentItemCheck;

    invoke-virtual {p1, v0}, Lsmartisan/widget/ListContentItemCheck;->setChecked(Z)V

    .line 8
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/settings/CalendarSettingView;->mOneWeekCheck:Lsmartisan/widget/ListContentItemCheck;

    invoke-virtual {p1, v1}, Lsmartisan/widget/ListContentItemCheck;->setChecked(Z)V

    .line 9
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/settings/CalendarSettingView;->mTwoWeekCheck:Lsmartisan/widget/ListContentItemCheck;

    invoke-virtual {p1, v1}, Lsmartisan/widget/ListContentItemCheck;->setChecked(Z)V

    const/4 v1, 0x2

    goto :goto_0

    .line 10
    :pswitch_2
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/settings/CalendarSettingView;->mOneDayCheck:Lsmartisan/widget/ListContentItemCheck;

    invoke-virtual {p1, v1}, Lsmartisan/widget/ListContentItemCheck;->setChecked(Z)V

    .line 11
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/settings/CalendarSettingView;->mThreeDayCheck:Lsmartisan/widget/ListContentItemCheck;

    invoke-virtual {p1, v1}, Lsmartisan/widget/ListContentItemCheck;->setChecked(Z)V

    .line 12
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/settings/CalendarSettingView;->mOneWeekCheck:Lsmartisan/widget/ListContentItemCheck;

    invoke-virtual {p1, v0}, Lsmartisan/widget/ListContentItemCheck;->setChecked(Z)V

    .line 13
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/settings/CalendarSettingView;->mTwoWeekCheck:Lsmartisan/widget/ListContentItemCheck;

    invoke-virtual {p1, v1}, Lsmartisan/widget/ListContentItemCheck;->setChecked(Z)V

    const/4 v1, 0x6

    goto :goto_0

    .line 14
    :pswitch_3
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/settings/CalendarSettingView;->mOneDayCheck:Lsmartisan/widget/ListContentItemCheck;

    invoke-virtual {p1, v0}, Lsmartisan/widget/ListContentItemCheck;->setChecked(Z)V

    .line 15
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/settings/CalendarSettingView;->mThreeDayCheck:Lsmartisan/widget/ListContentItemCheck;

    invoke-virtual {p1, v1}, Lsmartisan/widget/ListContentItemCheck;->setChecked(Z)V

    .line 16
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/settings/CalendarSettingView;->mOneWeekCheck:Lsmartisan/widget/ListContentItemCheck;

    invoke-virtual {p1, v1}, Lsmartisan/widget/ListContentItemCheck;->setChecked(Z)V

    .line 17
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/settings/CalendarSettingView;->mTwoWeekCheck:Lsmartisan/widget/ListContentItemCheck;

    invoke-virtual {p1, v1}, Lsmartisan/widget/ListContentItemCheck;->setChecked(Z)V

    .line 18
    :goto_0
    invoke-static {v1}, Lcom/smartisanos/magicflow/h/v;->a(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x7f0801a2
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onRemove()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/smartisanos/magicflow/view/BaseView;->onRemove()V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/settings/CalendarSettingView;->mSwitch:Lsmartisan/widget/ListContentItemSwitch;

    invoke-virtual {v0}, Lsmartisan/widget/ListContentItemSwitch;->isChecked()Z

    move-result v0

    .line 3
    iget-boolean v1, p0, Lcom/smartisanos/magicflow/view/settings/CalendarSettingView;->mChecked:Z

    if-eq v1, v0, :cond_0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Calendar"

    .line 4
    invoke-static {v1, v0}, Lcom/smartisanos/magicflow/cache/SettingDataCache;->refreshSettingEnabledCategoryOrder(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method
