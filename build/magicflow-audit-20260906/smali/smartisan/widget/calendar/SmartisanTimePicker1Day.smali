.class public Lsmartisan/widget/calendar/SmartisanTimePicker1Day;
.super Landroid/widget/FrameLayout;
.source "SmartisanTimePicker1Day.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsmartisan/widget/calendar/SmartisanTimePicker1Day$SavedState;
    }
.end annotation


# static fields
.field private static final DEFAULT_ENABLED_STATE:Z = true

.field private static final HOURS_IN_HALF_DAY:I = 0xc


# instance fields
.field private mAmPmButton:Landroid/widget/Button;

.field public mAmPmDividerView:Landroid/view/View;

.field public mAmPmSpinner:Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;

.field private mAmPmStrings:[Ljava/lang/String;

.field private mCurrentLocale:Ljava/util/Locale;

.field public mHourSpinner:Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;

.field private mIs24HourView:Z

.field private mIsAm:Z

.field private mIsEnabled:Z

.field public mMinuteSpinner:Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;

.field private mTempCalendar:Ljava/util/Calendar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lsmartisan/widget/calendar/SmartisanTimePicker1Day;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lsmartisan/widget/calendar/SmartisanTimePicker1Day;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x1

    .line 4
    iput-boolean p2, p0, Lsmartisan/widget/calendar/SmartisanTimePicker1Day;->mIsEnabled:Z

    .line 5
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p3

    invoke-direct {p0, p3}, Lsmartisan/widget/calendar/SmartisanTimePicker1Day;->setCurrentLocale(Ljava/util/Locale;)V

    const-string p3, "layout_inflater"

    .line 6
    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/LayoutInflater;

    .line 7
    sget v0, Lsmartisan/widget/R$layout;->remind_time_picker_1_day:I

    invoke-virtual {p3, v0, p0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 8
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    .line 9
    sget v0, Lsmartisan/widget/R$color;->date_pick_normal_day_color:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 10
    sget v1, Lsmartisan/widget/R$color;->calander_date_pick_select_day_color_2:I

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    .line 11
    sget v1, Lsmartisan/widget/R$id;->hour:I

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;

    iput-object v1, p0, Lsmartisan/widget/calendar/SmartisanTimePicker1Day;->mHourSpinner:Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;

    .line 12
    iget-object v1, p0, Lsmartisan/widget/calendar/SmartisanTimePicker1Day;->mHourSpinner:Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lsmartisan/widget/R$dimen;->no_year_picker_text_size:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 13
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lsmartisan/widget/R$dimen;->no_year_picker_text_size_highlight:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 14
    invoke-virtual {v1, v2, v3}, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->setTextSize(II)V

    .line 15
    iget-object v1, p0, Lsmartisan/widget/calendar/SmartisanTimePicker1Day;->mHourSpinner:Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;

    invoke-virtual {v1, v0, p3}, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->setTextColor(II)V

    .line 16
    iget-object v1, p0, Lsmartisan/widget/calendar/SmartisanTimePicker1Day;->mHourSpinner:Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;

    new-instance v2, Lsmartisan/widget/calendar/SmartisanTimePicker1Day$1;

    invoke-direct {v2, p0}, Lsmartisan/widget/calendar/SmartisanTimePicker1Day$1;-><init>(Lsmartisan/widget/calendar/SmartisanTimePicker1Day;)V

    invoke-virtual {v1, v2}, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->setOnValueChangedListener(Lsmartisan/widget/calendar/SmartisanNumberPicker1Day$OnValueChangeListener;)V

    .line 17
    iget-object v1, p0, Lsmartisan/widget/calendar/SmartisanTimePicker1Day;->mHourSpinner:Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;

    new-instance v2, Lsmartisan/widget/calendar/SmartisanTimePicker1Day$2;

    invoke-direct {v2, p0}, Lsmartisan/widget/calendar/SmartisanTimePicker1Day$2;-><init>(Lsmartisan/widget/calendar/SmartisanTimePicker1Day;)V

    invoke-virtual {v1, v2}, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->setFormatter(Lsmartisan/widget/calendar/SmartisanNumberPicker1Day$Formatter;)V

    .line 18
    sget v1, Lsmartisan/widget/R$id;->minute:I

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;

    iput-object v1, p0, Lsmartisan/widget/calendar/SmartisanTimePicker1Day;->mMinuteSpinner:Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;

    .line 19
    iget-object v1, p0, Lsmartisan/widget/calendar/SmartisanTimePicker1Day;->mMinuteSpinner:Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->setMinValue(I)V

    .line 20
    iget-object v1, p0, Lsmartisan/widget/calendar/SmartisanTimePicker1Day;->mMinuteSpinner:Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;

    const/16 v3, 0x3c

    invoke-virtual {v1, v3}, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->setMaxValue(I)V

    .line 21
    iget-object v1, p0, Lsmartisan/widget/calendar/SmartisanTimePicker1Day;->mMinuteSpinner:Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;

    invoke-virtual {v1, p2}, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->setWrapSelectorWheel(Z)V

    .line 22
    iget-object v1, p0, Lsmartisan/widget/calendar/SmartisanTimePicker1Day;->mMinuteSpinner:Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;

    new-instance v3, Lsmartisan/widget/calendar/SmartisanTimePicker1Day$3;

    invoke-direct {v3, p0}, Lsmartisan/widget/calendar/SmartisanTimePicker1Day$3;-><init>(Lsmartisan/widget/calendar/SmartisanTimePicker1Day;)V

    invoke-virtual {v1, v3}, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->setFormatter(Lsmartisan/widget/calendar/SmartisanNumberPicker1Day$Formatter;)V

    .line 23
    iget-object v1, p0, Lsmartisan/widget/calendar/SmartisanTimePicker1Day;->mMinuteSpinner:Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lsmartisan/widget/R$dimen;->no_year_picker_text_size:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 24
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lsmartisan/widget/R$dimen;->no_year_picker_text_size_highlight:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 25
    invoke-virtual {v1, v3, v4}, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->setTextSize(II)V

    .line 26
    iget-object v1, p0, Lsmartisan/widget/calendar/SmartisanTimePicker1Day;->mMinuteSpinner:Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;

    invoke-virtual {v1, v0, p3}, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->setTextColor(II)V

    .line 27
    new-instance v1, Ljava/text/DateFormatSymbols;

    invoke-direct {v1}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lsmartisan/widget/calendar/SmartisanTimePicker1Day;->mAmPmStrings:[Ljava/lang/String;

    .line 28
    sget v1, Lsmartisan/widget/R$id;->am_pm_divider:I

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lsmartisan/widget/calendar/SmartisanTimePicker1Day;->mAmPmDividerView:Landroid/view/View;

    .line 29
    sget v1, Lsmartisan/widget/R$id;->amPm:I

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 30
    instance-of v3, v1, Landroid/widget/Button;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 31
    iput-object v4, p0, Lsmartisan/widget/calendar/SmartisanTimePicker1Day;->mAmPmSpinner:Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;

    .line 32
    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lsmartisan/widget/calendar/SmartisanTimePicker1Day;->mAmPmButton:Landroid/widget/Button;

    .line 33
    iget-object p2, p0, Lsmartisan/widget/calendar/SmartisanTimePicker1Day;->mAmPmButton:Landroid/widget/Button;

    new-instance p3, Lsmartisan/widget/calendar/SmartisanTimePicker1Day$4;

    invoke-direct {p3, p0}, Lsmartisan/widget/calendar/SmartisanTimePicker1Day$4;-><init>(Lsmartisan/widget/calendar/SmartisanTimePicker1Day;)V

    invoke-virtual {p2, p3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 34
    :cond_0
    iput-object v4, p0, Lsmartisan/widget/calendar/SmartisanTimePicker1Day;->mAmPmButton:Landroid/widget/Button;

    .line 35
    check-cast v1, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;

    iput-object v1, p0, Lsmartisan/widget/calendar/SmartisanTimePicker1Day;->mAmPmSpinner:Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;

    .line 36
    iget-object v1, p0, Lsmartisan/widget/calendar/SmartisanTimePicker1Day;->mAmPmSpinner:Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;

    invoke-virtual {v1, v2}, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->setMinValue(I)V

    .line 37
    iget-object v1, p0, Lsmartisan/widget/calendar/SmartisanTimePicker1Day;->mAmPmSpinner:Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;

    invoke-virtual {v1, p2}, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->setMaxValue(I)V

    .line 38
    iget-object p2, p0, Lsmartisan/widget/calendar/SmartisanTimePicker1Day;->mAmPmSpinner:Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;

    iget-object v1, p0, Lsmartisan/widget/calendar/SmartisanTimePicker1Day;->mAmPmStrings:[Ljava/lang/String;

    invoke-virtual {p2, v1}, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->setDisplayedValues([Ljava/lang/String;)V

    .line 39
    iget-object p2, p0, Lsmartisan/widget/calendar/SmartisanTimePicker1Day;->mAmPmSpinner:Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;

    new-instance v1, Lsmartisan/widget/calendar/SmartisanTimePicker1Day$5;

    invoke-direct {v1, p0}, Lsmartisan/widget/calendar/SmartisanTimePicker1Day$5;-><init>(Lsmartisan/widget/calendar/SmartisanTimePicker1Day;)V

    .line 40
    invoke-virtual {p2, v1}, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->setOnValueChangedListener(Lsmartisan/widget/calendar/SmartisanNumberPicker1Day$OnValueChangeListener;)V

    .line 41
    iget-object p2, p0, Lsmartisan/widget/calendar/SmartisanTimePicker1Day;->mAmPmSpinner:Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lsmartisan/widget/R$dimen;->no_year_picker_text_size:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lsmartisan/widget/R$dimen;->no_year_picker_text_size_highlight:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p2, v1, v3}, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->setTextSize(II)V

    .line 42
    iget-object p2, p0, Lsmartisan/widget/calendar/SmartisanTimePicker1Day;->mAmPmSpinner:Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;

    invoke-virtual {p2, v0, p3}, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->setTextColor(II)V

    .line 43
    :goto_0
    iget-object p2, p0, Lsmartisan/widget/calendar/SmartisanTimePicker1Day;->mHourSpinner:Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;

    invoke-virtual {p2}, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->getValue()I

    move-result p2

    invoke-direct {p0, p2}, Lsmartisan/widget/calendar/SmartisanTimePicker1Day;->onHourChanged(I)V

    .line 44
    invoke-static {p1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lsmartisan/widget/calendar/SmartisanTimePicker1Day;->setIs24HourView(Ljava/lang/Boolean;)V

    .line 45
    invoke-direct {p0}, Lsmartisan/widget/calendar/SmartisanTimePicker1Day;->updateHourControl()V

    .line 46
    invoke-direct {p0}, Lsmartisan/widget/calendar/SmartisanTimePicker1Day;->updateAmPmControl()V

    .line 47
    invoke-virtual {p0}, Lsmartisan/widget/calendar/SmartisanTimePicker1Day;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_1

    .line 48
    invoke-virtual {p0, v2}, Lsmartisan/widget/calendar/SmartisanTimePicker1Day;->setEnabled(Z)V

    .line 49
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lsmartisan/widget/R$integer;->time_picker_wheel_item_count:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    const/4 p2, 0x5

    if-ne p1, p2, :cond_2

    .line 50
    sget p1, Lsmartisan/widget/R$drawable;->remind_time_picker_widget_5_bg:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_1

    .line 51
    :cond_2
    sget p1, Lsmartisan/widget/R$drawable;->remind_time_picker_widget_bg:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    :goto_1
    return-void
.end method

.method static synthetic access$000(Lsmartisan/widget/calendar/SmartisanTimePicker1Day;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lsmartisan/widget/calendar/SmartisanTimePicker1Day;->mIsAm:Z

    return p0
.end method

.method static synthetic access$002(Lsmartisan/widget/calendar/SmartisanTimePicker1Day;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lsmartisan/widget/calendar/SmartisanTimePicker1Day;->mIsAm:Z

    return p1
.end method

.method static synthetic access$100(Lsmartisan/widget/calendar/SmartisanTimePicker1Day;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lsmartisan/widget/calendar/SmartisanTimePicker1Day;->updateAmPmControl()V

    return-void
.end method

.method static synthetic access$200(Lsmartisan/widget/calendar/SmartisanTimePicker1Day;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lsmartisan/widget/calendar/SmartisanTimePicker1Day;->onHourChanged(I)V

    return-void
.end method

.method private onHourChanged(I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lsmartisan/widget/calendar/SmartisanTimePicker1Day;->mMinuteSpinner:Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->setMinValue(I)V

    .line 2
    iget-object p1, p0, Lsmartisan/widget/calendar/SmartisanTimePicker1Day;->mMinuteSpinner:Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;

    invoke-virtual {p1, v0}, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->setWrapSelectorWheel(Z)V

    .line 3
    iget-object p1, p0, Lsmartisan/widget/calendar/SmartisanTimePicker1Day;->mMinuteSpinner:Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 4
    iget-object p1, p0, Lsmartisan/widget/calendar/SmartisanTimePicker1Day;->mHourSpinner:Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;

    invoke-virtual {p1, v0}, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->setWrapSelectorWheel(Z)V

    return-void
.end method

.method private setCurrentLocale(Ljava/util/Locale;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/calendar/SmartisanTimePicker1Day;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iput-object p1, p0, Lsmartisan/widget/calendar/SmartisanTimePicker1Day;->mCurrentLocale:Ljava/util/Locale;

    .line 3
    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lsmartisan/widget/calendar/SmartisanTimePicker1Day;->mTempCalendar:Ljava/util/Calendar;

    return-void
.end method

.method private updateAmPmControl()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lsmartisan/widget/calendar/SmartisanTimePicker1Day;->is24HourView()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lsmartisan/widget/calendar/SmartisanTimePicker1Day;->mAmPmDividerView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lsmartisan/widget/calendar/SmartisanTimePicker1Day;->mAmPmSpinner:Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lsmartisan/widget/calendar/SmartisanTimePicker1Day;->mAmPmButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 6
    :cond_1
    iget-boolean v0, p0, Lsmartisan/widget/calendar/SmartisanTimePicker1Day;->mIsAm:Z

    xor-int/lit8 v0, v0, 0x1

    .line 7
    iget-object v1, p0, Lsmartisan/widget/calendar/SmartisanTimePicker1Day;->mAmPmDividerView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 8
    iget-object v1, p0, Lsmartisan/widget/calendar/SmartisanTimePicker1Day;->mAmPmSpinner:Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;

    if-eqz v1, :cond_2

    .line 9
    invoke-virtual {v1, v0}, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->setValue(I)V

    .line 10
    iget-object v0, p0, Lsmartisan/widget/calendar/SmartisanTimePicker1Day;->mAmPmSpinner:Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 11
    :cond_2
    iget-object v1, p0, Lsmartisan/widget/calendar/SmartisanTimePicker1Day;->mAmPmButton:Landroid/widget/Button;

    iget-object v3, p0, Lsmartisan/widget/calendar/SmartisanTimePicker1Day;->mAmPmStrings:[Ljava/lang/String;

    aget-object v0, v3, v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget-object v0, p0, Lsmartisan/widget/calendar/SmartisanTimePicker1Day;->mAmPmButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    :goto_0
    const/4 v0, 0x4

    .line 13
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->sendAccessibilityEvent(I)V

    return-void
.end method

.method private updateHourControl()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lsmartisan/widget/calendar/SmartisanTimePicker1Day;->is24HourView()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lsmartisan/widget/calendar/SmartisanTimePicker1Day;->mHourSpinner:Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;

    invoke-virtual {v0, v1}, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->setWrapSelectorWheel(Z)V

    .line 3
    iget-object v0, p0, Lsmartisan/widget/calendar/SmartisanTimePicker1Day;->mHourSpinner:Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->setMinValue(I)V

    .line 4
    iget-object v0, p0, Lsmartisan/widget/calendar/SmartisanTimePicker1Day;->mHourSpinner:Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->setMaxValue(I)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lsmartisan/widget/calendar/SmartisanTimePicker1Day;->mHourSpinner:Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;

    invoke-virtual {v0, v1}, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->setWrapSelectorWheel(Z)V

    .line 6
    iget-object v0, p0, Lsmartisan/widget/calendar/SmartisanTimePicker1Day;->mHourSpinner:Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;

    invoke-virtual {v0, v1}, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->setMinValue(I)V

    .line 7
    iget-object v0, p0, Lsmartisan/widget/calendar/SmartisanTimePicker1Day;->mHourSpinner:Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->setMaxValue(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lsmartisan/widget/calendar/SmartisanTimePicker1Day;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const/4 p1, 0x1

    return p1
.end method

.method public getBaseline()I
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/calendar/SmartisanTimePicker1Day;->mHourSpinner:Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getBaseline()I

    move-result v0

    return v0
.end method

.method public getCurrentHour()Ljava/lang/Integer;
    .locals 2

    .line 1
    iget-object v0, p0, Lsmartisan/widget/calendar/SmartisanTimePicker1Day;->mHourSpinner:Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;

    invoke-virtual {v0}, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->getValue()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Lsmartisan/widget/calendar/SmartisanTimePicker1Day;->is24HourView()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 4
    :cond_0
    iget-boolean v1, p0, Lsmartisan/widget/calendar/SmartisanTimePicker1Day;->mIsAm:Z

    if-eqz v1, :cond_1

    .line 5
    rem-int/lit8 v0, v0, 0xc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 6
    :cond_1
    rem-int/lit8 v0, v0, 0xc

    add-int/lit8 v0, v0, 0xc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentMinute()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/calendar/SmartisanTimePicker1Day;->mMinuteSpinner:Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;

    invoke-virtual {v0}, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->getValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayDate(Landroid/content/Context;ILandroid/text/format/Time;)[Ljava/lang/String;
    .locals 10

    const/4 v0, 0x5

    new-array v1, v0, [I

    add-int/lit8 v2, p2, -0x2

    const/4 v3, 0x0

    aput v2, v1, v3

    add-int/lit8 v2, p2, -0x1

    const/4 v4, 0x1

    aput v2, v1, v4

    const/4 v2, 0x2

    aput p2, v1, v2

    add-int/lit8 v4, p2, 0x1

    const/4 v5, 0x3

    aput v4, v1, v5

    add-int/2addr p2, v2

    const/4 v2, 0x4

    aput p2, v1, v2

    new-array p2, v0, [Ljava/lang/String;

    .line 1
    :goto_0
    array-length v0, v1

    if-ge v3, v0, :cond_0

    .line 2
    aget v0, v1, v3

    invoke-virtual {p3, v0}, Landroid/text/format/Time;->setJulianDay(I)J

    move-result-wide v7

    const/16 v9, 0x10

    move-object v4, p1

    move-wide v5, v7

    .line 3
    invoke-static/range {v4 .. v9}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object p2
.end method

.method public is24HourView()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lsmartisan/widget/calendar/SmartisanTimePicker1Day;->mIs24HourView:Z

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lsmartisan/widget/calendar/SmartisanTimePicker1Day;->mIsEnabled:Z

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-direct {p0, p1}, Lsmartisan/widget/calendar/SmartisanTimePicker1Day;->setCurrentLocale(Ljava/util/Locale;)V

    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2
    const-class v0, Lsmartisan/widget/calendar/SmartisanTimePicker1Day;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2
    const-class v0, Lsmartisan/widget/calendar/SmartisanTimePicker1Day;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2
    iget-boolean v0, p0, Lsmartisan/widget/calendar/SmartisanTimePicker1Day;->mIs24HourView:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x81

    goto :goto_0

    :cond_0
    const/16 v0, 0x41

    .line 3
    :goto_0
    iget-object v1, p0, Lsmartisan/widget/calendar/SmartisanTimePicker1Day;->mTempCalendar:Ljava/util/Calendar;

    const/16 v2, 0xb

    invoke-virtual {p0}, Lsmartisan/widget/calendar/SmartisanTimePicker1Day;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 4
    iget-object v1, p0, Lsmartisan/widget/calendar/SmartisanTimePicker1Day;->mTempCalendar:Ljava/util/Calendar;

    const/16 v2, 0xc

    invoke-virtual {p0}, Lsmartisan/widget/calendar/SmartisanTimePicker1Day;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lsmartisan/widget/calendar/SmartisanTimePicker1Day;->mTempCalendar:Ljava/util/Calendar;

    .line 6
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 7
    invoke-static {v1, v2, v3, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 1
    check-cast p1, Lsmartisan/widget/calendar/SmartisanTimePicker1Day$SavedState;

    .line 2
    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 3
    invoke-virtual {p1}, Lsmartisan/widget/calendar/SmartisanTimePicker1Day$SavedState;->getHour()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lsmartisan/widget/calendar/SmartisanTimePicker1Day;->setCurrentHour(Ljava/lang/Integer;)V

    .line 4
    invoke-virtual {p1}, Lsmartisan/widget/calendar/SmartisanTimePicker1Day$SavedState;->getMinute()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lsmartisan/widget/calendar/SmartisanTimePicker1Day;->setCurrentMinute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 5

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 2
    new-instance v1, Lsmartisan/widget/calendar/SmartisanTimePicker1Day$SavedState;

    invoke-virtual {p0}, Lsmartisan/widget/calendar/SmartisanTimePicker1Day;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0}, Lsmartisan/widget/calendar/SmartisanTimePicker1Day;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v1, v0, v2, v3, v4}, Lsmartisan/widget/calendar/SmartisanTimePicker1Day$SavedState;-><init>(Landroid/os/Parcelable;IILsmartisan/widget/calendar/SmartisanTimePicker1Day$1;)V

    return-object v1
.end method

.method public setCurrentHour(Ljava/lang/Integer;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCurrentHour currentHour:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "setTime"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_4

    .line 2
    invoke-virtual {p0}, Lsmartisan/widget/calendar/SmartisanTimePicker1Day;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-virtual {p0}, Lsmartisan/widget/calendar/SmartisanTimePicker1Day;->is24HourView()Z

    move-result v0

    if-nez v0, :cond_3

    .line 4
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xc

    if-lt v0, v1, :cond_1

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lsmartisan/widget/calendar/SmartisanTimePicker1Day;->mIsAm:Z

    .line 6
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v0, v1, :cond_2

    .line 7
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sub-int/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lsmartisan/widget/calendar/SmartisanTimePicker1Day;->mIsAm:Z

    .line 9
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_2

    .line 10
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 11
    :cond_2
    :goto_0
    invoke-direct {p0}, Lsmartisan/widget/calendar/SmartisanTimePicker1Day;->updateAmPmControl()V

    .line 12
    :cond_3
    iget-object v0, p0, Lsmartisan/widget/calendar/SmartisanTimePicker1Day;->mHourSpinner:Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->setValue(I)V

    .line 13
    iget-object p1, p0, Lsmartisan/widget/calendar/SmartisanTimePicker1Day;->mHourSpinner:Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;

    invoke-virtual {p1}, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->getValue()I

    move-result p1

    invoke-direct {p0, p1}, Lsmartisan/widget/calendar/SmartisanTimePicker1Day;->onHourChanged(I)V

    :cond_4
    :goto_1
    return-void
.end method

.method public setCurrentMinute(Ljava/lang/Integer;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCurrentMinute currentMinute:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "setTime"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p0}, Lsmartisan/widget/calendar/SmartisanTimePicker1Day;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lsmartisan/widget/calendar/SmartisanTimePicker1Day;->mMinuteSpinner:Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->setValue(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lsmartisan/widget/calendar/SmartisanTimePicker1Day;->mIsEnabled:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 3
    iget-object v0, p0, Lsmartisan/widget/calendar/SmartisanTimePicker1Day;->mMinuteSpinner:Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 4
    iget-object v0, p0, Lsmartisan/widget/calendar/SmartisanTimePicker1Day;->mHourSpinner:Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 5
    iget-object v0, p0, Lsmartisan/widget/calendar/SmartisanTimePicker1Day;->mAmPmSpinner:Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lsmartisan/widget/calendar/SmartisanTimePicker1Day;->mAmPmButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 8
    :goto_0
    iput-boolean p1, p0, Lsmartisan/widget/calendar/SmartisanTimePicker1Day;->mIsEnabled:Z

    return-void
.end method

.method public setIs24HourView(Ljava/lang/Boolean;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lsmartisan/widget/calendar/SmartisanTimePicker1Day;->mIs24HourView:Z

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lsmartisan/widget/calendar/SmartisanTimePicker1Day;->mIs24HourView:Z

    .line 3
    invoke-virtual {p0}, Lsmartisan/widget/calendar/SmartisanTimePicker1Day;->getCurrentHour()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 4
    invoke-direct {p0}, Lsmartisan/widget/calendar/SmartisanTimePicker1Day;->updateHourControl()V

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lsmartisan/widget/calendar/SmartisanTimePicker1Day;->setCurrentHour(Ljava/lang/Integer;)V

    .line 6
    invoke-direct {p0}, Lsmartisan/widget/calendar/SmartisanTimePicker1Day;->updateAmPmControl()V

    return-void
.end method
