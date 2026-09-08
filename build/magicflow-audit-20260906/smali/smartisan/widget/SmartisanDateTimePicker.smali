.class public Lsmartisan/widget/SmartisanDateTimePicker;
.super Landroid/widget/FrameLayout;
.source "SmartisanDateTimePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsmartisan/widget/SmartisanDateTimePicker$SavedState;,
        Lsmartisan/widget/SmartisanDateTimePicker$OnDateChangedListener;
    }
.end annotation


# static fields
.field private static final DATE_FORMAT:Ljava/lang/String; = "yyyy/MM/dd"

.field private static final DEFAULT_ENABLED_STATE:Z = true


# instance fields
.field private mBaseDateMills:J

.field private mCurrentDate:Ljava/util/Calendar;

.field private mCurrentLocale:Ljava/util/Locale;

.field private final mDateFormat:Ljava/text/DateFormat;

.field private final mDateSpinner:Lsmartisan/widget/SmartisanNumberPickerEx;

.field private final mHourSpinner:Lsmartisan/widget/SmartisanNumberPickerEx;

.field private mIsEnabled:Z

.field private mMaxDate:Ljava/util/Calendar;

.field private mMinDate:Ljava/util/Calendar;

.field private final mMinuteSpinner:Lsmartisan/widget/SmartisanNumberPickerEx;

.field private mOnDateChangedListener:Lsmartisan/widget/SmartisanDateTimePicker$OnDateChangedListener;

.field private final mSpinners:Landroid/widget/LinearLayout;

.field private mTempDate:Ljava/util/Calendar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lsmartisan/widget/SmartisanDateTimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lsmartisan/widget/SmartisanDateTimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p2, Ljava/text/SimpleDateFormat;

    const-string p3, "yyyy/MM/dd"

    invoke-direct {p2, p3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lsmartisan/widget/SmartisanDateTimePicker;->mDateFormat:Ljava/text/DateFormat;

    const/4 p2, 0x1

    .line 5
    iput-boolean p2, p0, Lsmartisan/widget/SmartisanDateTimePicker;->mIsEnabled:Z

    .line 6
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p3

    invoke-direct {p0, p3}, Lsmartisan/widget/SmartisanDateTimePicker;->setCurrentLocale(Ljava/util/Locale;)V

    const-string p3, "layout_inflater"

    .line 7
    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/LayoutInflater;

    .line 8
    sget v0, Lsmartisan/widget/R$layout;->date_time_picker_ex:I

    invoke-virtual {p3, v0, p0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 9
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    .line 10
    sget v0, Lsmartisan/widget/R$color;->date_pick_ex_normal_day_color:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 11
    sget v1, Lsmartisan/widget/R$color;->date_pick_ex_select_day_color:I

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    .line 12
    sget v1, Lsmartisan/widget/R$id;->pickers:I

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lsmartisan/widget/SmartisanDateTimePicker;->mSpinners:Landroid/widget/LinearLayout;

    .line 13
    sget v1, Lsmartisan/widget/R$id;->minute:I

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lsmartisan/widget/SmartisanNumberPickerEx;

    iput-object v1, p0, Lsmartisan/widget/SmartisanDateTimePicker;->mMinuteSpinner:Lsmartisan/widget/SmartisanNumberPickerEx;

    .line 14
    iget-object v1, p0, Lsmartisan/widget/SmartisanDateTimePicker;->mMinuteSpinner:Lsmartisan/widget/SmartisanNumberPickerEx;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lsmartisan/widget/SmartisanNumberPickerEx;->setMinValue(I)V

    .line 15
    iget-object v1, p0, Lsmartisan/widget/SmartisanDateTimePicker;->mMinuteSpinner:Lsmartisan/widget/SmartisanNumberPickerEx;

    const/16 v3, 0x3b

    invoke-virtual {v1, v3}, Lsmartisan/widget/SmartisanNumberPickerEx;->setMaxValue(I)V

    .line 16
    iget-object v1, p0, Lsmartisan/widget/SmartisanDateTimePicker;->mMinuteSpinner:Lsmartisan/widget/SmartisanNumberPickerEx;

    invoke-static {}, Lsmartisan/widget/SmartisanNumberPickerEx;->getTwoDigitFormatter()Lsmartisan/widget/SmartisanNumberPickerEx$Formatter;

    move-result-object v3

    invoke-virtual {v1, v3}, Lsmartisan/widget/SmartisanNumberPickerEx;->setFormatter(Lsmartisan/widget/SmartisanNumberPickerEx$Formatter;)V

    .line 17
    iget-object v1, p0, Lsmartisan/widget/SmartisanDateTimePicker;->mMinuteSpinner:Lsmartisan/widget/SmartisanNumberPickerEx;

    invoke-virtual {v1, v0, p3}, Lsmartisan/widget/SmartisanNumberPickerEx;->setTextColor(II)V

    .line 18
    iget-object v1, p0, Lsmartisan/widget/SmartisanDateTimePicker;->mMinuteSpinner:Lsmartisan/widget/SmartisanNumberPickerEx;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const-wide/high16 v4, 0x4030000000000000L    # 16.0

    invoke-static {v3, v4, v5}, Lsmartisan/util/Utils;->dipTopx(Landroid/content/Context;D)I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    const-wide/high16 v7, 0x4032000000000000L    # 18.0

    invoke-static {v6, v7, v8}, Lsmartisan/util/Utils;->dipTopx(Landroid/content/Context;D)I

    move-result v6

    invoke-virtual {v1, v3, v6}, Lsmartisan/widget/SmartisanNumberPickerEx;->setTextSize(II)V

    .line 19
    iget-object v1, p0, Lsmartisan/widget/SmartisanDateTimePicker;->mMinuteSpinner:Lsmartisan/widget/SmartisanNumberPickerEx;

    new-instance v3, Lsmartisan/widget/SmartisanDateTimePicker$1;

    invoke-direct {v3, p0}, Lsmartisan/widget/SmartisanDateTimePicker$1;-><init>(Lsmartisan/widget/SmartisanDateTimePicker;)V

    invoke-virtual {v1, v3}, Lsmartisan/widget/SmartisanNumberPickerEx;->setOnValueChangedListener(Lsmartisan/widget/SmartisanNumberPickerEx$OnValueChangeListener;)V

    .line 20
    sget v1, Lsmartisan/widget/R$id;->hour:I

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lsmartisan/widget/SmartisanNumberPickerEx;

    iput-object v1, p0, Lsmartisan/widget/SmartisanDateTimePicker;->mHourSpinner:Lsmartisan/widget/SmartisanNumberPickerEx;

    .line 21
    iget-object v1, p0, Lsmartisan/widget/SmartisanDateTimePicker;->mHourSpinner:Lsmartisan/widget/SmartisanNumberPickerEx;

    invoke-virtual {v1, v2}, Lsmartisan/widget/SmartisanNumberPickerEx;->setMinValue(I)V

    .line 22
    iget-object v1, p0, Lsmartisan/widget/SmartisanDateTimePicker;->mHourSpinner:Lsmartisan/widget/SmartisanNumberPickerEx;

    const/16 v3, 0x17

    invoke-virtual {v1, v3}, Lsmartisan/widget/SmartisanNumberPickerEx;->setMaxValue(I)V

    .line 23
    iget-object v1, p0, Lsmartisan/widget/SmartisanDateTimePicker;->mHourSpinner:Lsmartisan/widget/SmartisanNumberPickerEx;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v4, v5}, Lsmartisan/util/Utils;->dipTopx(Landroid/content/Context;D)I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v7, v8}, Lsmartisan/util/Utils;->dipTopx(Landroid/content/Context;D)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lsmartisan/widget/SmartisanNumberPickerEx;->setTextSize(II)V

    .line 24
    iget-object v1, p0, Lsmartisan/widget/SmartisanDateTimePicker;->mHourSpinner:Lsmartisan/widget/SmartisanNumberPickerEx;

    invoke-virtual {v1, v0, p3}, Lsmartisan/widget/SmartisanNumberPickerEx;->setTextColor(II)V

    .line 25
    iget-object v1, p0, Lsmartisan/widget/SmartisanDateTimePicker;->mHourSpinner:Lsmartisan/widget/SmartisanNumberPickerEx;

    new-instance v3, Lsmartisan/widget/SmartisanDateTimePicker$2;

    invoke-direct {v3, p0}, Lsmartisan/widget/SmartisanDateTimePicker$2;-><init>(Lsmartisan/widget/SmartisanDateTimePicker;)V

    invoke-virtual {v1, v3}, Lsmartisan/widget/SmartisanNumberPickerEx;->setOnValueChangedListener(Lsmartisan/widget/SmartisanNumberPickerEx$OnValueChangeListener;)V

    .line 26
    sget v1, Lsmartisan/widget/R$id;->date:I

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lsmartisan/widget/SmartisanNumberPickerEx;

    iput-object v1, p0, Lsmartisan/widget/SmartisanDateTimePicker;->mDateSpinner:Lsmartisan/widget/SmartisanNumberPickerEx;

    .line 27
    iget-object v1, p0, Lsmartisan/widget/SmartisanDateTimePicker;->mDateSpinner:Lsmartisan/widget/SmartisanNumberPickerEx;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const-wide/high16 v4, 0x402e000000000000L    # 15.0

    invoke-static {v3, v4, v5}, Lsmartisan/util/Utils;->dipTopx(Landroid/content/Context;D)I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    const-wide/high16 v5, 0x4031000000000000L    # 17.0

    invoke-static {v4, v5, v6}, Lsmartisan/util/Utils;->dipTopx(Landroid/content/Context;D)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lsmartisan/widget/SmartisanNumberPickerEx;->setTextSize(II)V

    .line 28
    iget-object v1, p0, Lsmartisan/widget/SmartisanDateTimePicker;->mDateSpinner:Lsmartisan/widget/SmartisanNumberPickerEx;

    invoke-virtual {v1, v0, p3}, Lsmartisan/widget/SmartisanNumberPickerEx;->setTextColor(II)V

    .line 29
    iget-object p3, p0, Lsmartisan/widget/SmartisanDateTimePicker;->mDateSpinner:Lsmartisan/widget/SmartisanNumberPickerEx;

    invoke-virtual {p3, v2}, Lsmartisan/widget/SmartisanNumberPickerEx;->setMinValue(I)V

    .line 30
    iget-object p3, p0, Lsmartisan/widget/SmartisanDateTimePicker;->mDateSpinner:Lsmartisan/widget/SmartisanNumberPickerEx;

    new-instance v0, Lsmartisan/widget/SmartisanDateTimePicker$3;

    invoke-direct {v0, p0}, Lsmartisan/widget/SmartisanDateTimePicker$3;-><init>(Lsmartisan/widget/SmartisanDateTimePicker;)V

    invoke-virtual {p3, v0}, Lsmartisan/widget/SmartisanNumberPickerEx;->setFormatter(Lsmartisan/widget/SmartisanNumberPickerEx$Formatter;)V

    .line 31
    iget-object p3, p0, Lsmartisan/widget/SmartisanDateTimePicker;->mDateSpinner:Lsmartisan/widget/SmartisanNumberPickerEx;

    new-instance v0, Lsmartisan/widget/SmartisanDateTimePicker$4;

    invoke-direct {v0, p0}, Lsmartisan/widget/SmartisanDateTimePicker$4;-><init>(Lsmartisan/widget/SmartisanDateTimePicker;)V

    invoke-virtual {p3, v0}, Lsmartisan/widget/SmartisanNumberPickerEx;->setOnValueChangedListener(Lsmartisan/widget/SmartisanNumberPickerEx$OnValueChangeListener;)V

    .line 32
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p3

    const-string v0, "zh"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 33
    iget-object p3, p0, Lsmartisan/widget/SmartisanDateTimePicker;->mHourSpinner:Lsmartisan/widget/SmartisanNumberPickerEx;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lsmartisan/widget/R$string;->date_time_picker_hour:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lsmartisan/widget/SmartisanNumberPickerEx;->setHightlightSuffix(Ljava/lang/String;)V

    .line 34
    iget-object p3, p0, Lsmartisan/widget/SmartisanDateTimePicker;->mMinuteSpinner:Lsmartisan/widget/SmartisanNumberPickerEx;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lsmartisan/widget/R$string;->date_time_picker_minute:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lsmartisan/widget/SmartisanNumberPickerEx;->setHightlightSuffix(Ljava/lang/String;)V

    .line 35
    :cond_0
    invoke-virtual {p0, p2}, Lsmartisan/widget/SmartisanDateTimePicker;->setSpinnersShown(Z)V

    .line 36
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getImportantForAccessibility()I

    move-result p1

    if-nez p1, :cond_1

    .line 37
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setImportantForAccessibility(I)V

    .line 38
    :cond_1
    sget p1, Lsmartisan/widget/R$drawable;->time_picker_widget_bg_ex_new:I

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    return-void
.end method

.method static synthetic access$000(Lsmartisan/widget/SmartisanDateTimePicker;)Ljava/util/Calendar;
    .locals 0

    .line 1
    iget-object p0, p0, Lsmartisan/widget/SmartisanDateTimePicker;->mCurrentDate:Ljava/util/Calendar;

    return-object p0
.end method

.method static synthetic access$100(Lsmartisan/widget/SmartisanDateTimePicker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lsmartisan/widget/SmartisanDateTimePicker;->notifyDateChanged()V

    return-void
.end method

.method static synthetic access$200(Lsmartisan/widget/SmartisanDateTimePicker;I)J
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lsmartisan/widget/SmartisanDateTimePicker;->getTimMillsForDayValue(I)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$300(Lsmartisan/widget/SmartisanDateTimePicker;)Ljava/text/DateFormat;
    .locals 0

    .line 1
    iget-object p0, p0, Lsmartisan/widget/SmartisanDateTimePicker;->mDateFormat:Ljava/text/DateFormat;

    return-object p0
.end method

.method private changeMinDate(J)V
    .locals 8

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SmartisanDateTimePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 2
    iget-object v1, p0, Lsmartisan/widget/SmartisanDateTimePicker;->mTempDate:Ljava/util/Calendar;

    iget-object p1, p0, Lsmartisan/widget/SmartisanDateTimePicker;->mMinDate:Ljava/util/Calendar;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object p1, p0, Lsmartisan/widget/SmartisanDateTimePicker;->mMinDate:Ljava/util/Calendar;

    const/4 p2, 0x2

    .line 3
    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iget-object p1, p0, Lsmartisan/widget/SmartisanDateTimePicker;->mMinDate:Ljava/util/Calendar;

    const/4 p2, 0x5

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 4
    invoke-virtual/range {v1 .. v7}, Ljava/util/Calendar;->set(IIIIII)V

    .line 5
    iget-object p1, p0, Lsmartisan/widget/SmartisanDateTimePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lsmartisan/widget/SmartisanDateTimePicker;->mBaseDateMills:J

    return-void
.end method

.method private getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;
    .locals 2

    if-nez p1, :cond_0

    .line 1
    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 3
    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p1

    .line 4
    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    return-object p1
.end method

.method private getDayValueForTimeMills(J)I
    .locals 2

    .line 1
    iget-wide v0, p0, Lsmartisan/widget/SmartisanDateTimePicker;->mBaseDateMills:J

    sub-long/2addr p1, v0

    const-wide/32 v0, 0x5265c00

    div-long/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    move-result p1

    return p1
.end method

.method private getTimMillsForDayValue(I)J
    .locals 6

    .line 1
    iget-wide v0, p0, Lsmartisan/widget/SmartisanDateTimePicker;->mBaseDateMills:J

    int-to-long v2, p1

    const-wide/32 v4, 0x5265c00

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    iget-object p1, p0, Lsmartisan/widget/SmartisanDateTimePicker;->mHourSpinner:Lsmartisan/widget/SmartisanNumberPickerEx;

    .line 2
    invoke-virtual {p1}, Lsmartisan/widget/SmartisanNumberPickerEx;->getValue()I

    move-result p1

    int-to-long v2, p1

    const-wide/32 v4, 0x36ee80

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    iget-object p1, p0, Lsmartisan/widget/SmartisanDateTimePicker;->mMinuteSpinner:Lsmartisan/widget/SmartisanNumberPickerEx;

    .line 3
    invoke-virtual {p1}, Lsmartisan/widget/SmartisanNumberPickerEx;->getValue()I

    move-result p1

    int-to-long v2, p1

    const-wide/32 v4, 0xea60

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private notifyDateChanged()V
    .locals 3

    const/4 v0, 0x4

    .line 1
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->sendAccessibilityEvent(I)V

    .line 2
    iget-object v0, p0, Lsmartisan/widget/SmartisanDateTimePicker;->mOnDateChangedListener:Lsmartisan/widget/SmartisanDateTimePicker$OnDateChangedListener;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lsmartisan/widget/SmartisanDateTimePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lsmartisan/widget/SmartisanDateTimePicker$OnDateChangedListener;->onDateChanged(J)V

    :cond_0
    return-void
.end method

.method private setCurrentLocale(Ljava/util/Locale;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SmartisanDateTimePicker;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iput-object p1, p0, Lsmartisan/widget/SmartisanDateTimePicker;->mCurrentLocale:Ljava/util/Locale;

    .line 3
    iget-object v0, p0, Lsmartisan/widget/SmartisanDateTimePicker;->mTempDate:Ljava/util/Calendar;

    invoke-direct {p0, v0, p1}, Lsmartisan/widget/SmartisanDateTimePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lsmartisan/widget/SmartisanDateTimePicker;->mTempDate:Ljava/util/Calendar;

    .line 4
    iget-object v0, p0, Lsmartisan/widget/SmartisanDateTimePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-direct {p0, v0, p1}, Lsmartisan/widget/SmartisanDateTimePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lsmartisan/widget/SmartisanDateTimePicker;->mCurrentDate:Ljava/util/Calendar;

    .line 5
    iget-object v0, p0, Lsmartisan/widget/SmartisanDateTimePicker;->mMinDate:Ljava/util/Calendar;

    invoke-direct {p0, v0, p1}, Lsmartisan/widget/SmartisanDateTimePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lsmartisan/widget/SmartisanDateTimePicker;->mMinDate:Ljava/util/Calendar;

    .line 6
    iget-object v0, p0, Lsmartisan/widget/SmartisanDateTimePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-direct {p0, v0, p1}, Lsmartisan/widget/SmartisanDateTimePicker;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lsmartisan/widget/SmartisanDateTimePicker;->mMaxDate:Ljava/util/Calendar;

    return-void
.end method

.method private setSpinnersInitialValues()V
    .locals 3

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SmartisanDateTimePicker;->mDateSpinner:Lsmartisan/widget/SmartisanNumberPickerEx;

    iget-object v1, p0, Lsmartisan/widget/SmartisanDateTimePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lsmartisan/widget/SmartisanDateTimePicker;->getDayValueForTimeMills(J)I

    move-result v1

    invoke-virtual {v0, v1}, Lsmartisan/widget/SmartisanNumberPickerEx;->setInitialValue(I)V

    .line 2
    iget-object v0, p0, Lsmartisan/widget/SmartisanDateTimePicker;->mHourSpinner:Lsmartisan/widget/SmartisanNumberPickerEx;

    iget-object v1, p0, Lsmartisan/widget/SmartisanDateTimePicker;->mCurrentDate:Ljava/util/Calendar;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lsmartisan/widget/SmartisanNumberPickerEx;->setInitialValue(I)V

    .line 3
    iget-object v0, p0, Lsmartisan/widget/SmartisanDateTimePicker;->mMinuteSpinner:Lsmartisan/widget/SmartisanNumberPickerEx;

    iget-object v1, p0, Lsmartisan/widget/SmartisanDateTimePicker;->mCurrentDate:Ljava/util/Calendar;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lsmartisan/widget/SmartisanNumberPickerEx;->setInitialValue(I)V

    return-void
.end method

.method private updateSpinners()V
    .locals 3

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SmartisanDateTimePicker;->mDateSpinner:Lsmartisan/widget/SmartisanNumberPickerEx;

    iget-object v1, p0, Lsmartisan/widget/SmartisanDateTimePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lsmartisan/widget/SmartisanDateTimePicker;->getDayValueForTimeMills(J)I

    move-result v1

    invoke-virtual {v0, v1}, Lsmartisan/widget/SmartisanNumberPickerEx;->setValue(I)V

    .line 2
    iget-object v0, p0, Lsmartisan/widget/SmartisanDateTimePicker;->mHourSpinner:Lsmartisan/widget/SmartisanNumberPickerEx;

    iget-object v1, p0, Lsmartisan/widget/SmartisanDateTimePicker;->mCurrentDate:Ljava/util/Calendar;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lsmartisan/widget/SmartisanNumberPickerEx;->setValue(I)V

    .line 3
    iget-object v0, p0, Lsmartisan/widget/SmartisanDateTimePicker;->mMinuteSpinner:Lsmartisan/widget/SmartisanNumberPickerEx;

    iget-object v1, p0, Lsmartisan/widget/SmartisanDateTimePicker;->mCurrentDate:Ljava/util/Calendar;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lsmartisan/widget/SmartisanNumberPickerEx;->setValue(I)V

    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lsmartisan/widget/SmartisanDateTimePicker;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const/4 p1, 0x1

    return p1
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    return-void
.end method

.method public getCurrentMills()J
    .locals 2

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SmartisanDateTimePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSpinnersShown()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SmartisanDateTimePicker;->mSpinners:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v0

    return v0
.end method

.method public init(JJJLsmartisan/widget/SmartisanDateTimePicker$OnDateChangedListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SmartisanDateTimePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 2
    invoke-virtual {p0, p3, p4}, Lsmartisan/widget/SmartisanDateTimePicker;->setMinDate(J)V

    .line 3
    invoke-virtual {p0, p5, p6}, Lsmartisan/widget/SmartisanDateTimePicker;->setMaxDate(J)V

    .line 4
    invoke-direct {p0}, Lsmartisan/widget/SmartisanDateTimePicker;->setSpinnersInitialValues()V

    .line 5
    invoke-virtual {p0, p7}, Lsmartisan/widget/SmartisanDateTimePicker;->setOnDateChangedListener(Lsmartisan/widget/SmartisanDateTimePicker$OnDateChangedListener;)V

    return-void
.end method

.method public isEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lsmartisan/widget/SmartisanDateTimePicker;->mIsEnabled:Z

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-direct {p0, p1}, Lsmartisan/widget/SmartisanDateTimePicker;->setCurrentLocale(Ljava/util/Locale;)V

    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2
    const-class v0, Lsmartisan/widget/SmartisanDateTimePicker;

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
    const-class v0, Lsmartisan/widget/SmartisanDateTimePicker;

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
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lsmartisan/widget/SmartisanDateTimePicker;->mCurrentDate:Ljava/util/Calendar;

    .line 3
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    const/16 v3, 0x14

    .line 4
    invoke-static {v0, v1, v2, v3}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 9

    if-eqz p1, :cond_1

    .line 1
    instance-of v0, p1, Lsmartisan/widget/SmartisanDateTimePicker$SavedState;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    check-cast p1, Lsmartisan/widget/SmartisanDateTimePicker$SavedState;

    .line 3
    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 4
    invoke-static {p1}, Lsmartisan/widget/SmartisanDateTimePicker$SavedState;->access$500(Lsmartisan/widget/SmartisanDateTimePicker$SavedState;)J

    move-result-wide v2

    invoke-static {p1}, Lsmartisan/widget/SmartisanDateTimePicker$SavedState;->access$600(Lsmartisan/widget/SmartisanDateTimePicker$SavedState;)J

    move-result-wide v4

    invoke-static {p1}, Lsmartisan/widget/SmartisanDateTimePicker$SavedState;->access$700(Lsmartisan/widget/SmartisanDateTimePicker$SavedState;)J

    move-result-wide v6

    const/4 v8, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Lsmartisan/widget/SmartisanDateTimePicker;->init(JJJLsmartisan/widget/SmartisanDateTimePicker$OnDateChangedListener;)V

    .line 5
    invoke-static {p1}, Lsmartisan/widget/SmartisanDateTimePicker$SavedState;->access$500(Lsmartisan/widget/SmartisanDateTimePicker$SavedState;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lsmartisan/widget/SmartisanDateTimePicker;->setCurrentDate(J)V

    .line 6
    invoke-direct {p0}, Lsmartisan/widget/SmartisanDateTimePicker;->updateSpinners()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 10

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 2
    new-instance v9, Lsmartisan/widget/SmartisanDateTimePicker$SavedState;

    iget-object v0, p0, Lsmartisan/widget/SmartisanDateTimePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    iget-object v0, p0, Lsmartisan/widget/SmartisanDateTimePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    iget-object v0, p0, Lsmartisan/widget/SmartisanDateTimePicker;->mMaxDate:Ljava/util/Calendar;

    .line 3
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lsmartisan/widget/SmartisanDateTimePicker$SavedState;-><init>(Landroid/os/Parcelable;JJJLsmartisan/widget/SmartisanDateTimePicker$1;)V

    return-object v9
.end method

.method public setCurrentDate(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SmartisanDateTimePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lsmartisan/widget/SmartisanDateTimePicker;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 3
    iget-object v0, p0, Lsmartisan/widget/SmartisanDateTimePicker;->mTempDate:Ljava/util/Calendar;

    iget-object v1, p0, Lsmartisan/widget/SmartisanDateTimePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lsmartisan/widget/SmartisanDateTimePicker;->mTempDate:Ljava/util/Calendar;

    iget-object v1, p0, Lsmartisan/widget/SmartisanDateTimePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lsmartisan/widget/SmartisanDateTimePicker;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 5
    invoke-direct {p0}, Lsmartisan/widget/SmartisanDateTimePicker;->updateSpinners()V

    :cond_2
    :goto_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lsmartisan/widget/SmartisanDateTimePicker;->mIsEnabled:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 3
    iget-object v0, p0, Lsmartisan/widget/SmartisanDateTimePicker;->mMinuteSpinner:Lsmartisan/widget/SmartisanNumberPickerEx;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 4
    iget-object v0, p0, Lsmartisan/widget/SmartisanDateTimePicker;->mHourSpinner:Lsmartisan/widget/SmartisanNumberPickerEx;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 5
    iget-object v0, p0, Lsmartisan/widget/SmartisanDateTimePicker;->mDateSpinner:Lsmartisan/widget/SmartisanNumberPickerEx;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 6
    iput-boolean p1, p0, Lsmartisan/widget/SmartisanDateTimePicker;->mIsEnabled:Z

    return-void
.end method

.method public setMaxDate(J)V
    .locals 3

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SmartisanDateTimePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lsmartisan/widget/SmartisanDateTimePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 3
    iget-object v0, p0, Lsmartisan/widget/SmartisanDateTimePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Lsmartisan/widget/SmartisanDateTimePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lsmartisan/widget/SmartisanDateTimePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Lsmartisan/widget/SmartisanDateTimePicker;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 5
    :cond_1
    iget-object v0, p0, Lsmartisan/widget/SmartisanDateTimePicker;->mDateSpinner:Lsmartisan/widget/SmartisanNumberPickerEx;

    invoke-direct {p0, p1, p2}, Lsmartisan/widget/SmartisanDateTimePicker;->getDayValueForTimeMills(J)I

    move-result p1

    invoke-virtual {v0, p1}, Lsmartisan/widget/SmartisanNumberPickerEx;->setMaxValue(I)V

    .line 6
    iget-object p1, p0, Lsmartisan/widget/SmartisanDateTimePicker;->mDateSpinner:Lsmartisan/widget/SmartisanNumberPickerEx;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lsmartisan/widget/SmartisanNumberPickerEx;->setWrapSelectorWheel(Z)V

    .line 7
    invoke-direct {p0}, Lsmartisan/widget/SmartisanDateTimePicker;->updateSpinners()V

    return-void
.end method

.method public setMinDate(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SmartisanDateTimePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0, p1, p2}, Lsmartisan/widget/SmartisanDateTimePicker;->changeMinDate(J)V

    .line 3
    iget-object p1, p0, Lsmartisan/widget/SmartisanDateTimePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object p2, p0, Lsmartisan/widget/SmartisanDateTimePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {p1, p2}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lsmartisan/widget/SmartisanDateTimePicker;->mCurrentDate:Ljava/util/Calendar;

    iget-object p2, p0, Lsmartisan/widget/SmartisanDateTimePicker;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 5
    :cond_1
    invoke-direct {p0}, Lsmartisan/widget/SmartisanDateTimePicker;->updateSpinners()V

    return-void
.end method

.method public setOnDateChangedListener(Lsmartisan/widget/SmartisanDateTimePicker$OnDateChangedListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/SmartisanDateTimePicker;->mOnDateChangedListener:Lsmartisan/widget/SmartisanDateTimePicker$OnDateChangedListener;

    return-void
.end method

.method public setSpinnersShown(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SmartisanDateTimePicker;->mSpinners:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method
