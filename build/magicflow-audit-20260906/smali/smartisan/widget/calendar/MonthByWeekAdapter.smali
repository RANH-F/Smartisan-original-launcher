.class public Lsmartisan/widget/calendar/MonthByWeekAdapter;
.super Ljava/lang/Object;
.source "MonthByWeekAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsmartisan/widget/calendar/MonthByWeekAdapter$CellEventListener;
    }
.end annotation


# static fields
.field public static final ANIMATION_DURATION_MOVE:I = 0x0

.field protected static DEFAULT_DAYS_PER_WEEK:I = 0x7

.field protected static DEFAULT_MONTH_FOCUS:I = 0x0

.field protected static DEFAULT_NUM_WEEKS:I = 0x6

.field private static final TAG:Ljava/lang/String; = "MonthByWeek"

.field protected static WEEK_7_OVERHANG_HEIGHT:I = 0x7

.field protected static final WEEK_COUNT_L:I = 0x6

.field protected static final WEEK_COUNT_S:I = 0x5

.field public static final WEEK_PARAMS_DAYS_PER_WEEK:Ljava/lang/String; = "days_per_week"

.field public static final WEEK_PARAMS_FOCUS_MONTH:Ljava/lang/String; = "focus_month"

.field public static final WEEK_PARAMS_JULIAN_DAY:Ljava/lang/String; = "selected_day"

.field public static final WEEK_PARAMS_NUM_WEEKS:Ljava/lang/String; = "num_weeks"

.field public static final WEEK_PARAMS_SINGLE_WEEK:Ljava/lang/String; = "single_week"

.field public static final WEEK_PARAMS_WEEK_START:Ljava/lang/String; = "week_start"

.field public static mItemHeight:I

.field public static mItemSingleHeight:I

.field protected static mScale:F


# instance fields
.field mCellEventListener:Lsmartisan/widget/calendar/MonthByWeekAdapter$CellEventListener;

.field protected mContext:Landroid/content/Context;

.field protected mDaysPerWeek:I

.field protected mFirstDayOfWeek:I

.field protected mFirstJulianDay:I

.field protected mFocusMonth:I

.field protected mHasEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mHasFocus:Z

.field protected mHomeTimeZone:Ljava/lang/String;

.field protected mIsSingleWeek:Z

.field private mMaxJulianDay:I

.field private mMinJulianDay:I

.field protected mNumWeeks:I

.field protected mOrientation:I

.field private mPosition:I

.field protected mQueryDays:I

.field protected mSelectedDay:Landroid/text/format/Time;

.field protected mSelectedInMonthPosition:I

.field protected mSelectedWeek:I

.field mSortedIndexList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSortedWeeksViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lsmartisan/widget/calendar/MonthWeekEventsView;",
            ">;"
        }
    .end annotation
.end field

.field private mWeeksLayout:Landroid/widget/RelativeLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/HashMap;Lsmartisan/widget/calendar/MonthByWeekAdapter$CellEventListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Lsmartisan/widget/calendar/MonthByWeekAdapter$CellEventListener;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->mOrientation:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->mHasEvents:Ljava/util/List;

    const v0, 0x7fffffff

    .line 4
    iput v0, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->mMaxJulianDay:I

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->mMinJulianDay:I

    const/4 v1, -0x1

    .line 6
    iput v1, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->mSelectedInMonthPosition:I

    .line 7
    sget v2, Lsmartisan/widget/calendar/MonthByWeekAdapter;->DEFAULT_NUM_WEEKS:I

    iput v2, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->mNumWeeks:I

    .line 8
    sget v2, Lsmartisan/widget/calendar/MonthByWeekAdapter;->DEFAULT_DAYS_PER_WEEK:I

    iput v2, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->mDaysPerWeek:I

    .line 9
    sget v2, Lsmartisan/widget/calendar/MonthByWeekAdapter;->DEFAULT_MONTH_FOCUS:I

    iput v2, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->mFocusMonth:I

    .line 10
    iput-boolean v0, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->mIsSingleWeek:Z

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->mSortedWeeksViewList:Ljava/util/ArrayList;

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->mSortedIndexList:Ljava/util/ArrayList;

    .line 13
    iput v1, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->mPosition:I

    .line 14
    iput-object p1, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->mContext:Landroid/content/Context;

    .line 15
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    .line 16
    invoke-virtual {v0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->mFirstDayOfWeek:I

    .line 17
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 18
    sget v0, Lsmartisan/widget/R$dimen;->monthweek_item_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->mItemHeight:I

    .line 19
    sget v0, Lsmartisan/widget/R$dimen;->monthweek_item_single_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->mItemSingleHeight:I

    .line 20
    sget v0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->mScale:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 21
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    sput p1, Lsmartisan/widget/calendar/MonthByWeekAdapter;->mScale:F

    .line 22
    sget p1, Lsmartisan/widget/calendar/MonthByWeekAdapter;->mScale:F

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 23
    sget v0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->WEEK_7_OVERHANG_HEIGHT:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int p1, v0

    sput p1, Lsmartisan/widget/calendar/MonthByWeekAdapter;->WEEK_7_OVERHANG_HEIGHT:I

    .line 24
    :cond_0
    iput-object p3, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->mCellEventListener:Lsmartisan/widget/calendar/MonthByWeekAdapter$CellEventListener;

    .line 25
    invoke-virtual {p0}, Lsmartisan/widget/calendar/MonthByWeekAdapter;->init()V

    .line 26
    invoke-virtual {p0, p2}, Lsmartisan/widget/calendar/MonthByWeekAdapter;->updateParams(Ljava/util/HashMap;)V

    return-void
.end method

.method private setHasEvents(Lsmartisan/widget/calendar/MonthWeekEventsView;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->mHasEvents:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1, v1}, Lsmartisan/widget/calendar/MonthWeekEventsView;->setHasEvents(Ljava/util/List;)V

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Lsmartisan/widget/calendar/MonthWeekEventsView;->getFirstJulianDay()I

    move-result v0

    .line 4
    iget v2, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->mFirstJulianDay:I

    sub-int/2addr v0, v2

    .line 5
    iget v2, p1, Lsmartisan/widget/calendar/MonthWeekEventsView;->mNumDays:I

    add-int/2addr v2, v0

    if-ltz v0, :cond_2

    .line 6
    iget-object v3, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->mHasEvents:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-le v2, v3, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    iget-object v1, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->mHasEvents:Ljava/util/List;

    invoke-interface {v1, v0, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lsmartisan/widget/calendar/MonthWeekEventsView;->setHasEvents(Ljava/util/List;)V

    return-void

    .line 8
    :cond_2
    :goto_0
    invoke-virtual {p1, v1}, Lsmartisan/widget/calendar/MonthWeekEventsView;->setHasEvents(Ljava/util/List;)V

    return-void
.end method

.method private updateTimeZones()V
    .locals 2

    .line 1
    iget-object v0, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->mSelectedDay:Landroid/text/format/Time;

    iget-object v1, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->mHomeTimeZone:Ljava/lang/String;

    iput-object v1, v0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->mIsSingleWeek:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lsmartisan/widget/calendar/MonthByWeekAdapter;->getThisMonthWeekCount()I

    move-result v0

    return v0
.end method

.method public getFocusMonth()I
    .locals 1

    .line 1
    iget v0, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->mFocusMonth:I

    return v0
.end method

.method public getHomeTimeZone()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->mHomeTimeZone:Ljava/lang/String;

    return-object v0
.end method

.method public getIndexOfView(I)Lsmartisan/widget/calendar/MonthWeekEventsView;
    .locals 2

    .line 1
    iget-object v0, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->mSortedIndexList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->mSortedIndexList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-boolean v0, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->mIsSingleWeek:Z

    if-eqz v0, :cond_1

    .line 3
    iget-object p1, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->mSortedWeeksViewList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lsmartisan/widget/calendar/MonthWeekEventsView;

    return-object p1

    .line 4
    :cond_1
    iget-object v0, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->mSortedWeeksViewList:Ljava/util/ArrayList;

    iget-object v1, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->mSortedIndexList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lsmartisan/widget/calendar/MonthWeekEventsView;

    return-object p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getSelectedDay()Landroid/text/format/Time;
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->mSelectedDay:Landroid/text/format/Time;

    return-object v0
.end method

.method public getSelectedInMonthPosition()I
    .locals 1

    .line 1
    iget v0, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->mSelectedInMonthPosition:I

    return v0
.end method

.method public getThisMonthWeekCount()I
    .locals 4

    .line 1
    iget v0, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->mPosition:I

    const/4 v1, 0x4

    add-int/2addr v0, v1

    .line 2
    invoke-static {v0}, Lsmartisan/util/CalendarUtils;->getJulianMondayFromWeeksSinceEpoch(I)I

    move-result v0

    .line 3
    new-instance v2, Landroid/text/format/Time;

    iget-object v3, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->mSelectedDay:Landroid/text/format/Time;

    iget-object v3, v3, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 4
    iget-object v3, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->mContext:Landroid/content/Context;

    .line 5
    invoke-static {v3}, Lsmartisan/util/CalendarUtils;->getFirstDayOfWeekInTime(Landroid/content/Context;)I

    move-result v3

    rsub-int/lit8 v3, v3, 0x1

    sub-int/2addr v0, v3

    .line 6
    invoke-virtual {v2, v0}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 7
    iget v0, v2, Landroid/text/format/Time;->month:I

    iget v2, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->mFocusMonth:I

    if-ne v0, v2, :cond_0

    .line 8
    iget v0, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->mPosition:I

    const/4 v1, 0x5

    add-int/2addr v0, v1

    .line 9
    invoke-static {v0}, Lsmartisan/util/CalendarUtils;->getJulianMondayFromWeeksSinceEpoch(I)I

    move-result v0

    .line 10
    new-instance v2, Landroid/text/format/Time;

    iget-object v3, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->mSelectedDay:Landroid/text/format/Time;

    iget-object v3, v3, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 11
    iget-object v3, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->mContext:Landroid/content/Context;

    .line 12
    invoke-static {v3}, Lsmartisan/util/CalendarUtils;->getFirstDayOfWeekInTime(Landroid/content/Context;)I

    move-result v3

    rsub-int/lit8 v3, v3, 0x1

    sub-int/2addr v0, v3

    .line 13
    invoke-virtual {v2, v0}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 14
    iget v0, v2, Landroid/text/format/Time;->month:I

    iget v2, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->mFocusMonth:I

    if-ne v0, v2, :cond_0

    const/4 v0, 0x6

    return v0

    :cond_0
    return v1
.end method

.method public getTouchView(F)Lsmartisan/widget/calendar/MonthWeekEventsView;
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->mWeeksLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_2

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-boolean v0, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->mIsSingleWeek:Z

    if-eqz v0, :cond_1

    .line 3
    iget-object p1, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->mSortedWeeksViewList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lsmartisan/widget/calendar/MonthWeekEventsView;

    return-object p1

    .line 4
    :cond_1
    iget-object v0, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->mWeeksLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    iget-object p1, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->mWeeksLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v0, p1

    float-to-int p1, v0

    .line 5
    invoke-virtual {p0, p1}, Lsmartisan/widget/calendar/MonthByWeekAdapter;->getIndexOfView(I)Lsmartisan/widget/calendar/MonthWeekEventsView;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public hasFocus()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->mHasFocus:Z

    return v0
.end method

.method protected init()V
    .locals 2

    .line 1
    iget-object v0, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lsmartisan/util/CalendarUtils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->mHomeTimeZone:Ljava/lang/String;

    .line 2
    new-instance v0, Landroid/text/format/Time;

    iget-object v1, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->mHomeTimeZone:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->mSelectedDay:Landroid/text/format/Time;

    .line 3
    iget-object v0, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->mSelectedDay:Landroid/text/format/Time;

    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    return-void
.end method

.method public isInitialized()Z
    .locals 1

    .line 1
    iget v0, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->mPosition:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 2

    .line 1
    iget-object v0, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->mWeeksLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lsmartisan/widget/calendar/MonthByWeekAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lsmartisan/widget/calendar/MonthByWeekAdapter;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    iget-boolean v1, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->mIsSingleWeek:Z

    invoke-virtual {p0, v1, v0}, Lsmartisan/widget/calendar/MonthByWeekAdapter;->sortWeeksLayout(ZI)V

    :cond_0
    return-void
.end method

.method protected onDayTapped(Landroid/text/format/Time;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->mSelectedDay:Landroid/text/format/Time;

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lsmartisan/widget/calendar/MonthByWeekAdapter;->setSelectedDay(Landroid/text/format/Time;)V

    return-void
.end method

.method public reAddChildWithMarginTop(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->mSortedIndexList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->mSortedWeeksViewList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->mSortedIndexList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 2
    iget-object v0, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->mWeeksLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    const/4 v0, 0x0

    .line 3
    :goto_0
    iget-object v1, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->mSortedIndexList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 4
    iget-object v1, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->mSortedWeeksViewList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsmartisan/widget/calendar/MonthWeekEventsView;

    .line 5
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 6
    iget v3, v1, Lsmartisan/widget/calendar/MonthWeekEventsView;->mWeek:I

    iget v4, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->mPosition:I

    sub-int/2addr v3, v4

    mul-int/2addr v3, p1

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 7
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v3, v3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    .line 8
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 9
    :cond_0
    iget-object v3, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->mWeeksLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v1, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected refresh()V
    .locals 2

    .line 1
    iget-object v0, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lsmartisan/util/CalendarUtils;->getFirstDayOfWeekInTime(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->mFirstDayOfWeek:I

    .line 2
    iget-object v0, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lsmartisan/util/CalendarUtils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->mHomeTimeZone:Ljava/lang/String;

    .line 3
    invoke-direct {p0}, Lsmartisan/widget/calendar/MonthByWeekAdapter;->updateTimeZones()V

    .line 4
    invoke-virtual {p0}, Lsmartisan/widget/calendar/MonthByWeekAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setFocus(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->mHasFocus:Z

    return-void
.end method

.method public setPosition(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lsmartisan/widget/calendar/MonthByWeekAdapter;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->mPosition:I

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iput p1, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->mPosition:I

    return-void
.end method

.method public setSelectedDay(Landroid/text/format/Time;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lsmartisan/widget/calendar/MonthByWeekAdapter;->setSelectedDay(Landroid/text/format/Time;Z)V

    return-void
.end method

.method public setSelectedDay(Landroid/text/format/Time;Z)V
    .locals 2

    .line 2
    iput-boolean p2, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->mHasFocus:Z

    .line 3
    iget-object p2, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->mSelectedDay:Landroid/text/format/Time;

    invoke-virtual {p2, p1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 4
    iget-object p1, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->mSelectedDay:Landroid/text/format/Time;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide p1

    .line 5
    iget-object v0, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lsmartisan/util/CalendarUtils;->getFirstDayOfWeekInTime(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->mFirstDayOfWeek:I

    .line 6
    iget-object v0, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->mSelectedDay:Landroid/text/format/Time;

    iget-wide v0, v0, Landroid/text/format/Time;->gmtoff:J

    .line 7
    invoke-static {p1, p2, v0, v1}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result p1

    iget p2, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->mFirstDayOfWeek:I

    .line 8
    invoke-static {p1, p2}, Lsmartisan/util/CalendarUtils;->getWeeksSinceEpochFromJulianDay(II)I

    move-result p1

    iput p1, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->mSelectedWeek:I

    .line 9
    invoke-virtual {p0}, Lsmartisan/widget/calendar/MonthByWeekAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setWeeksLayout(Landroid/widget/RelativeLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->mWeeksLayout:Landroid/widget/RelativeLayout;

    return-void
.end method

.method public sortViewIndex(II)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_1

    .line 3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sub-int/2addr p2, v1

    :goto_1
    if-le p2, p1, :cond_2

    .line 4
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    .line 5
    :cond_2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    return-object v0
.end method

.method public sortWeeksLayout(ZI)V
    .locals 8

    .line 1
    new-array v0, p2, [Lsmartisan/widget/calendar/MonthWeekEventsView;

    const/4 v1, 0x0

    move v2, v1

    .line 2
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 3
    iget-object v3, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->mWeeksLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lsmartisan/widget/calendar/MonthWeekEventsView;

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iget-object v2, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->mWeeksLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 5
    iget-object v2, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->mSortedWeeksViewList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 6
    iget v2, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->mSelectedWeek:I

    iget v3, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->mPosition:I

    sub-int/2addr v2, v3

    iput v2, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->mSelectedInMonthPosition:I

    .line 7
    iget v2, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->mSelectedInMonthPosition:I

    invoke-virtual {p0, v2, p2}, Lsmartisan/widget/calendar/MonthByWeekAdapter;->sortViewIndex(II)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->mSortedIndexList:Ljava/util/ArrayList;

    move v2, v1

    :goto_1
    if-ge v2, p2, :cond_2

    .line 8
    iget-object v3, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->mSortedIndexList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 9
    invoke-virtual {p0, v0, v2}, Lsmartisan/widget/calendar/MonthByWeekAdapter;->updateViewAndSorted([Lsmartisan/widget/calendar/MonthWeekEventsView;I)Lsmartisan/widget/calendar/MonthWeekEventsView;

    move-result-object v4

    .line 10
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v6, -0x1

    const/4 v7, -0x2

    invoke-direct {v5, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    if-eqz p1, :cond_1

    move v6, v1

    goto :goto_2

    .line 11
    :cond_1
    sget v6, Lsmartisan/widget/calendar/MonthByWeekAdapter;->mItemHeight:I

    :goto_2
    mul-int/2addr v6, v3

    iput v6, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 12
    iget-object v3, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->mWeeksLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v4, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 13
    iget-object v3, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->mSortedWeeksViewList:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public updateFocusMonth(I)V
    .locals 0

    .line 1
    iput p1, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->mFocusMonth:I

    return-void
.end method

.method public updateParams(Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    const-string p1, "MonthByWeek"

    const-string v0, "WeekParameters are null! Cannot update adapter."

    .line 1
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "focus_month"

    .line 2
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->mFocusMonth:I

    .line 4
    :cond_1
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "num_weeks"

    .line 5
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->mNumWeeks:I

    :cond_2
    const-string v0, "single_week"

    .line 6
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 7
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->mIsSingleWeek:Z

    :cond_4
    const-string v0, "week_start"

    .line 8
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 9
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->mFirstDayOfWeek:I

    :cond_5
    const-string v0, "selected_day"

    .line 10
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 11
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 12
    iget v1, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->mFirstDayOfWeek:I

    invoke-static {v0, v1}, Lsmartisan/util/CalendarUtils;->getWeeksSinceEpochFromJulianDay(II)I

    move-result v0

    iput v0, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->mSelectedWeek:I

    :cond_6
    const-string v0, "days_per_week"

    .line 13
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 14
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->mDaysPerWeek:I

    .line 15
    :cond_7
    invoke-virtual {p0}, Lsmartisan/widget/calendar/MonthByWeekAdapter;->refresh()V

    return-void
.end method

.method public updateRange(II)V
    .locals 0

    .line 1
    iput p2, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->mMaxJulianDay:I

    .line 2
    iput p1, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->mMinJulianDay:I

    .line 3
    invoke-virtual {p0}, Lsmartisan/widget/calendar/MonthByWeekAdapter;->refresh()V

    return-void
.end method

.method public updateViewAndSorted([Lsmartisan/widget/calendar/MonthWeekEventsView;I)Lsmartisan/widget/calendar/MonthWeekEventsView;
    .locals 4

    if-eqz p1, :cond_1

    .line 1
    array-length v0, p1

    if-ge p2, v0, :cond_1

    aget-object v0, p1, p2

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    aget-object p1, p1, p2

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    goto :goto_1

    .line 5
    :cond_1
    :goto_0
    new-instance p1, Lsmartisan/widget/calendar/MonthWeekEventsView;

    iget-object v0, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->mCellEventListener:Lsmartisan/widget/calendar/MonthByWeekAdapter$CellEventListener;

    invoke-direct {p1, v0, v1}, Lsmartisan/widget/calendar/MonthWeekEventsView;-><init>(Landroid/content/Context;Lsmartisan/widget/calendar/MonthByWeekAdapter$CellEventListener;)V

    .line 6
    :cond_2
    :goto_1
    iget-object v0, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->mSortedIndexList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 8
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 9
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 10
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 11
    iget v1, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->mSelectedWeek:I

    iget v3, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->mPosition:I

    add-int/2addr v3, p2

    if-ne v1, v3, :cond_3

    .line 12
    iget-object v1, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->mSelectedDay:Landroid/text/format/Time;

    iget v2, v1, Landroid/text/format/Time;->weekDay:I

    .line 13
    :cond_3
    iget v1, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->mFocusMonth:I

    .line 14
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "focus_month"

    .line 15
    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "selected_day"

    .line 17
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    iget v1, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->mFirstDayOfWeek:I

    .line 19
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "week_start"

    .line 20
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    iget v1, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->mDaysPerWeek:I

    .line 22
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "num_days"

    .line 23
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    iget v1, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->mPosition:I

    add-int/2addr v1, p2

    .line 25
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "week"

    .line 26
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    iget v1, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->mSelectedInMonthPosition:I

    if-ne p2, v1, :cond_4

    iget-boolean p2, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->mIsSingleWeek:Z

    if-eqz p2, :cond_4

    const/4 p2, 0x1

    .line 28
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "is_single_week"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    :cond_4
    iget p2, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->mMaxJulianDay:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "max_julianday"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    iget p2, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->mMinJulianDay:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v1, "min_julianday"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    iget-object p2, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->mSelectedDay:Landroid/text/format/Time;

    iget-object p2, p2, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    invoke-virtual {p1, v0, p2}, Lsmartisan/widget/calendar/MonthWeekEventsView;->setWeekParams(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 32
    iget-boolean p2, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->mHasFocus:Z

    if-eqz p2, :cond_5

    .line 33
    invoke-direct {p0, p1}, Lsmartisan/widget/calendar/MonthByWeekAdapter;->setHasEvents(Lsmartisan/widget/calendar/MonthWeekEventsView;)V

    .line 34
    :cond_5
    iget-boolean p2, p0, Lsmartisan/widget/calendar/MonthByWeekAdapter;->mHasFocus:Z

    invoke-virtual {p1, p2}, Lsmartisan/widget/calendar/MonthWeekEventsView;->setHasFocus(Z)V

    return-object p1
.end method
