.class public Lsmartisan/widget/calendar/CalendarView;
.super Landroid/widget/FrameLayout;
.source "CalendarView.java"

# interfaces
.implements Lsmartisan/widget/calendar/DragViewSwitcher$DragViewSwitcherListener;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final MESID_JMP:I = 0x1


# instance fields
.field protected mAdapter:Lsmartisan/widget/calendar/MonthByWeekAdapter;

.field protected mAddTimes:I

.field mAllNextIv:Landroid/widget/ImageView;

.field mAllPreviousIv:Landroid/widget/ImageView;

.field mCellEventListener:Lsmartisan/widget/calendar/MonthByWeekAdapter$CellEventListener;

.field protected mCurrentMonthDisplayed:I

.field protected mDayLabels:[Ljava/lang/String;

.field mDayNamesHeader:Landroid/view/ViewGroup;

.field mDayTitle:Landroid/widget/TextView;

.field protected mFirstDayOfMonth:Landroid/text/format/Time;

.field protected mFirstDayOfWeek:I

.field protected mFirstJumpCalendar:Z

.field private mFormatter:Ljava/util/Formatter;

.field protected mHandler:Landroid/os/Handler;

.field private mIsWeeksLayoutInAnimation:Z

.field private mMaxTime:Landroid/text/format/Time;

.field private mMinTime:Landroid/text/format/Time;

.field private mNeedToHandleTitleClicked:Z

.field private mSelectedMills:J

.field private mSelectedTime:Landroid/text/format/Time;

.field private mStringBuilder:Ljava/lang/StringBuilder;

.field protected mTempTime:Landroid/text/format/Time;

.field private mViewFactory:Landroid/widget/ViewSwitcher$ViewFactory;

.field mViewSwitcher:Lsmartisan/widget/calendar/DragViewSwitcher;

.field mWeeksLayout:Landroid/widget/RelativeLayout;

.field protected needToRunCals:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/util/Calendar;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lsmartisan/widget/calendar/CalendarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 3
    iput-boolean p2, p0, Lsmartisan/widget/calendar/CalendarView;->mNeedToHandleTitleClicked:Z

    const/4 p2, 0x1

    .line 4
    iput-boolean p2, p0, Lsmartisan/widget/calendar/CalendarView;->mFirstJumpCalendar:Z

    .line 5
    new-instance p3, Landroid/text/format/Time;

    invoke-direct {p3}, Landroid/text/format/Time;-><init>()V

    iput-object p3, p0, Lsmartisan/widget/calendar/CalendarView;->mSelectedTime:Landroid/text/format/Time;

    .line 6
    new-instance p3, Landroid/text/format/Time;

    invoke-direct {p3}, Landroid/text/format/Time;-><init>()V

    iput-object p3, p0, Lsmartisan/widget/calendar/CalendarView;->mMaxTime:Landroid/text/format/Time;

    .line 7
    new-instance p3, Landroid/text/format/Time;

    invoke-direct {p3}, Landroid/text/format/Time;-><init>()V

    iput-object p3, p0, Lsmartisan/widget/calendar/CalendarView;->mMinTime:Landroid/text/format/Time;

    .line 8
    new-instance p3, Ljava/util/LinkedList;

    invoke-direct {p3}, Ljava/util/LinkedList;-><init>()V

    iput-object p3, p0, Lsmartisan/widget/calendar/CalendarView;->needToRunCals:Ljava/util/LinkedList;

    .line 9
    new-instance p3, Landroid/text/format/Time;

    invoke-direct {p3}, Landroid/text/format/Time;-><init>()V

    iput-object p3, p0, Lsmartisan/widget/calendar/CalendarView;->mTempTime:Landroid/text/format/Time;

    .line 10
    new-instance p3, Landroid/text/format/Time;

    invoke-direct {p3}, Landroid/text/format/Time;-><init>()V

    iput-object p3, p0, Lsmartisan/widget/calendar/CalendarView;->mFirstDayOfMonth:Landroid/text/format/Time;

    .line 11
    new-instance p3, Lsmartisan/widget/calendar/CalendarView$1;

    invoke-direct {p3, p0}, Lsmartisan/widget/calendar/CalendarView$1;-><init>(Lsmartisan/widget/calendar/CalendarView;)V

    iput-object p3, p0, Lsmartisan/widget/calendar/CalendarView;->mCellEventListener:Lsmartisan/widget/calendar/MonthByWeekAdapter$CellEventListener;

    .line 12
    new-instance p3, Lsmartisan/widget/calendar/CalendarView$2;

    invoke-direct {p3, p0}, Lsmartisan/widget/calendar/CalendarView$2;-><init>(Lsmartisan/widget/calendar/CalendarView;)V

    iput-object p3, p0, Lsmartisan/widget/calendar/CalendarView;->mViewFactory:Landroid/widget/ViewSwitcher$ViewFactory;

    .line 13
    new-instance p3, Lsmartisan/widget/calendar/CalendarView$3;

    invoke-direct {p3, p0}, Lsmartisan/widget/calendar/CalendarView$3;-><init>(Lsmartisan/widget/calendar/CalendarView;)V

    iput-object p3, p0, Lsmartisan/widget/calendar/CalendarView;->mHandler:Landroid/os/Handler;

    const-string p3, "layout_inflater"

    .line 14
    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    .line 15
    sget p3, Lsmartisan/widget/R$layout;->calendar_view:I

    invoke-virtual {p1, p3, p0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 16
    invoke-direct {p0}, Lsmartisan/widget/calendar/CalendarView;->initViews()V

    .line 17
    invoke-virtual {p0}, Lsmartisan/widget/calendar/CalendarView;->intDatas()V

    .line 18
    invoke-virtual {p0}, Lsmartisan/widget/calendar/CalendarView;->setupAdapter()V

    .line 19
    invoke-virtual {p0}, Lsmartisan/widget/calendar/CalendarView;->updateDayNamesHeader()V

    return-void
.end method

.method static synthetic access$000(Lsmartisan/widget/calendar/CalendarView;)Landroid/text/format/Time;
    .locals 0

    .line 1
    iget-object p0, p0, Lsmartisan/widget/calendar/CalendarView;->mMinTime:Landroid/text/format/Time;

    return-object p0
.end method

.method static synthetic access$100(Lsmartisan/widget/calendar/CalendarView;)Landroid/text/format/Time;
    .locals 0

    .line 1
    iget-object p0, p0, Lsmartisan/widget/calendar/CalendarView;->mMaxTime:Landroid/text/format/Time;

    return-object p0
.end method

.method static synthetic access$200(Lsmartisan/widget/calendar/CalendarView;Landroid/text/format/Time;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lsmartisan/widget/calendar/CalendarView;->onDayTapped(Landroid/text/format/Time;)V

    return-void
.end method

.method static synthetic access$300(Lsmartisan/widget/calendar/CalendarView;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lsmartisan/widget/calendar/CalendarView;->mSelectedMills:J

    return-wide v0
.end method

.method static synthetic access$302(Lsmartisan/widget/calendar/CalendarView;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lsmartisan/widget/calendar/CalendarView;->mSelectedMills:J

    return-wide p1
.end method

.method static synthetic access$400(Lsmartisan/widget/calendar/CalendarView;I)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lsmartisan/widget/calendar/CalendarView;->changeCurrentTime(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lsmartisan/widget/calendar/CalendarView;Ljava/util/Calendar;)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lsmartisan/widget/calendar/CalendarView;->getAndCorrectDay(Ljava/util/Calendar;)I

    move-result p0

    return p0
.end method

.method static synthetic access$602(Lsmartisan/widget/calendar/CalendarView;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lsmartisan/widget/calendar/CalendarView;->mIsWeeksLayoutInAnimation:Z

    return p1
.end method

.method private changeCurrentTime(I)Z
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lsmartisan/widget/calendar/CalendarView;->getMonthCalendarByOffset(I)Ljava/util/Calendar;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lsmartisan/widget/calendar/CalendarView;->mSelectedMills:J

    const/4 p1, 0x1

    return p1
.end method

.method private getAndCorrectDay(Ljava/util/Calendar;)I
    .locals 3

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v2, p0, Lsmartisan/widget/calendar/CalendarView;->mMinTime:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->year:I

    if-ne v1, v2, :cond_0

    const/4 v1, 0x2

    .line 2
    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    iget-object v1, p0, Lsmartisan/widget/calendar/CalendarView;->mMinTime:Landroid/text/format/Time;

    iget v2, v1, Landroid/text/format/Time;->month:I

    if-gt p1, v2, :cond_0

    .line 3
    iget v0, v1, Landroid/text/format/Time;->monthDay:I

    :cond_0
    return v0
.end method

.method private getCalendarBeforeJump(Z)Ljava/util/Calendar;
    .locals 4

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lsmartisan/widget/calendar/CalendarView;->mAdapter:Lsmartisan/widget/calendar/MonthByWeekAdapter;

    invoke-virtual {v1}, Lsmartisan/widget/calendar/MonthByWeekAdapter;->getFocusMonth()I

    move-result v1

    const/4 v2, 0x1

    if-nez p1, :cond_1

    .line 3
    iget-object v3, p0, Lsmartisan/widget/calendar/CalendarView;->mSelectedTime:Landroid/text/format/Time;

    iget v3, v3, Landroid/text/format/Time;->month:I

    if-ne v1, v3, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0, v1}, Lsmartisan/widget/calendar/CalendarView;->getTimeByFocusMonth(I)Landroid/text/format/Time;

    move-result-object p1

    .line 5
    invoke-virtual {p1, v2}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_1

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 6
    iget-wide v1, p0, Lsmartisan/widget/calendar/CalendarView;->mSelectedMills:J

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_1

    .line 7
    :cond_2
    iget-object p1, p0, Lsmartisan/widget/calendar/CalendarView;->mSelectedTime:Landroid/text/format/Time;

    invoke-virtual {p1, v2}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    :goto_1
    return-object v0
.end method

.method private getCalendarByOffsetInField(Ljava/util/Calendar;II)Ljava/util/Calendar;
    .locals 3

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 3
    invoke-virtual {v0, p2, p3}, Ljava/util/Calendar;->add(II)V

    return-object v0
.end method

.method private initViews()V
    .locals 5

    .line 1
    sget v0, Lsmartisan/widget/R$id;->day_names:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lsmartisan/widget/calendar/CalendarView;->mDayNamesHeader:Landroid/view/ViewGroup;

    .line 2
    sget v0, Lsmartisan/widget/R$id;->date_title:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lsmartisan/widget/calendar/CalendarView;->mDayTitle:Landroid/widget/TextView;

    .line 3
    iget-object v0, p0, Lsmartisan/widget/calendar/CalendarView;->mDayTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    sget v0, Lsmartisan/widget/R$id;->allinone_image_previous:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lsmartisan/widget/calendar/CalendarView;->mAllPreviousIv:Landroid/widget/ImageView;

    .line 5
    iget-object v0, p0, Lsmartisan/widget/calendar/CalendarView;->mAllPreviousIv:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    sget v0, Lsmartisan/widget/R$id;->allinone_image_next:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lsmartisan/widget/calendar/CalendarView;->mAllNextIv:Landroid/widget/ImageView;

    .line 7
    iget-object v0, p0, Lsmartisan/widget/calendar/CalendarView;->mAllNextIv:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    sget v0, Lsmartisan/widget/R$id;->main_switcher:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lsmartisan/widget/calendar/DragViewSwitcher;

    iput-object v0, p0, Lsmartisan/widget/calendar/CalendarView;->mViewSwitcher:Lsmartisan/widget/calendar/DragViewSwitcher;

    .line 9
    iget-object v0, p0, Lsmartisan/widget/calendar/CalendarView;->mViewSwitcher:Lsmartisan/widget/calendar/DragViewSwitcher;

    iget-object v1, p0, Lsmartisan/widget/calendar/CalendarView;->mViewFactory:Landroid/widget/ViewSwitcher$ViewFactory;

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    .line 10
    iget-object v0, p0, Lsmartisan/widget/calendar/CalendarView;->mViewSwitcher:Lsmartisan/widget/calendar/DragViewSwitcher;

    invoke-virtual {v0, p0}, Lsmartisan/widget/calendar/DragViewSwitcher;->addDragViewSwitcherActor(Lsmartisan/widget/calendar/DragViewSwitcher$DragViewSwitcherListener;)V

    const/4 v0, 0x7

    new-array v1, v0, [Ljava/lang/String;

    .line 11
    iput-object v1, p0, Lsmartisan/widget/calendar/CalendarView;->mDayLabels:[Ljava/lang/String;

    const/4 v1, 0x1

    :goto_0
    if-gt v1, v0, :cond_0

    .line 12
    iget-object v2, p0, Lsmartisan/widget/calendar/CalendarView;->mDayLabels:[Ljava/lang/String;

    add-int/lit8 v3, v1, -0x1

    const/16 v4, 0x14

    invoke-static {v1, v4}, Landroid/text/format/DateUtils;->getDayOfWeekString(II)Ljava/lang/String;

    move-result-object v4

    .line 13
    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private onDayTapped(Landroid/text/format/Time;)V
    .locals 3

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p1, v0}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v1

    invoke-static {v1, v2}, Lsmartisan/util/CalendarUtils;->isValidDay(J)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v1, p0, Lsmartisan/widget/calendar/CalendarView;->mSelectedTime:Landroid/text/format/Time;

    invoke-static {p1, v1}, Lsmartisan/util/CalendarUtils;->isTheSameDay(Landroid/text/format/Time;Landroid/text/format/Time;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3
    invoke-virtual {p1, v0}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lsmartisan/widget/calendar/CalendarView;->setSelectTime(J)V

    .line 4
    iget-object p1, p0, Lsmartisan/widget/calendar/CalendarView;->mAdapter:Lsmartisan/widget/calendar/MonthByWeekAdapter;

    iget-object v0, p0, Lsmartisan/widget/calendar/CalendarView;->mSelectedTime:Landroid/text/format/Time;

    invoke-virtual {p1, v0}, Lsmartisan/widget/calendar/MonthByWeekAdapter;->onDayTapped(Landroid/text/format/Time;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setSelectTime(J)V
    .locals 2

    .line 1
    iput-wide p1, p0, Lsmartisan/widget/calendar/CalendarView;->mSelectedMills:J

    .line 2
    iget-object p1, p0, Lsmartisan/widget/calendar/CalendarView;->mSelectedTime:Landroid/text/format/Time;

    iget-wide v0, p0, Lsmartisan/widget/calendar/CalendarView;->mSelectedMills:J

    invoke-virtual {p1, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 3
    iget-object p1, p0, Lsmartisan/widget/calendar/CalendarView;->mSelectedTime:Landroid/text/format/Time;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/text/format/Time;->normalize(Z)J

    .line 4
    iget-object p1, p0, Lsmartisan/widget/calendar/CalendarView;->mAdapter:Lsmartisan/widget/calendar/MonthByWeekAdapter;

    iget-object p2, p0, Lsmartisan/widget/calendar/CalendarView;->mSelectedTime:Landroid/text/format/Time;

    invoke-virtual {p1, p2}, Lsmartisan/widget/calendar/MonthByWeekAdapter;->setSelectedDay(Landroid/text/format/Time;)V

    return-void
.end method


# virtual methods
.method protected animationEnd(Ljava/util/Calendar;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 2
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 3
    iput-object v0, p0, Lsmartisan/widget/calendar/CalendarView;->mSelectedTime:Landroid/text/format/Time;

    .line 4
    invoke-virtual {p0}, Lsmartisan/widget/calendar/CalendarView;->updateDateInTitle()V

    return-void
.end method

.method protected buildMonthYearDate()Ljava/lang/String;
    .locals 10

    .line 1
    iget-object v0, p0, Lsmartisan/widget/calendar/CalendarView;->mStringBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2
    iget-wide v0, p0, Lsmartisan/widget/calendar/CalendarView;->mSelectedMills:J

    .line 3
    iget-boolean v2, p0, Lsmartisan/widget/calendar/CalendarView;->mFirstJumpCalendar:Z

    if-eqz v2, :cond_0

    .line 4
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    .line 5
    iget-wide v3, p0, Lsmartisan/widget/calendar/CalendarView;->mSelectedMills:J

    invoke-virtual {v2, v3, v4}, Landroid/text/format/Time;->set(J)V

    .line 6
    iget v2, v2, Landroid/text/format/Time;->month:I

    iget-object v3, p0, Lsmartisan/widget/calendar/CalendarView;->mAdapter:Lsmartisan/widget/calendar/MonthByWeekAdapter;

    invoke-virtual {v3}, Lsmartisan/widget/calendar/MonthByWeekAdapter;->getFocusMonth()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 7
    iget-object v0, p0, Lsmartisan/widget/calendar/CalendarView;->mAdapter:Lsmartisan/widget/calendar/MonthByWeekAdapter;

    invoke-virtual {v0}, Lsmartisan/widget/calendar/MonthByWeekAdapter;->getFocusMonth()I

    move-result v0

    invoke-virtual {p0, v0}, Lsmartisan/widget/calendar/CalendarView;->getTimeByFocusMonth(I)Landroid/text/format/Time;

    move-result-object v0

    const/4 v1, 0x1

    .line 8
    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    :cond_0
    move-wide v6, v0

    .line 9
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lsmartisan/widget/calendar/CalendarView;->mFormatter:Ljava/util/Formatter;

    const/16 v8, 0x34

    iget-object v0, p0, Lsmartisan/widget/calendar/CalendarView;->mAdapter:Lsmartisan/widget/calendar/MonthByWeekAdapter;

    .line 10
    invoke-virtual {v0}, Lsmartisan/widget/calendar/MonthByWeekAdapter;->getHomeTimeZone()Ljava/lang/String;

    move-result-object v9

    move-wide v4, v6

    .line 11
    invoke-static/range {v2 .. v9}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v0

    .line 12
    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getAniminationListener(ZLjava/util/Calendar;I)Landroid/view/animation/Animation$AnimationListener;
    .locals 1

    .line 1
    new-instance v0, Lsmartisan/widget/calendar/CalendarView$4;

    invoke-direct {v0, p0, p3, p1, p2}, Lsmartisan/widget/calendar/CalendarView$4;-><init>(Lsmartisan/widget/calendar/CalendarView;IZLjava/util/Calendar;)V

    return-object v0
.end method

.method public getCurrentTime()Landroid/text/format/Time;
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/calendar/CalendarView;->mSelectedTime:Landroid/text/format/Time;

    return-object v0
.end method

.method protected getMonthCalendarByOffset(I)Ljava/util/Calendar;
    .locals 4

    .line 1
    iget-boolean v0, p0, Lsmartisan/widget/calendar/CalendarView;->mFirstJumpCalendar:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-direct {p0, v0}, Lsmartisan/widget/calendar/CalendarView;->getCalendarBeforeJump(Z)Ljava/util/Calendar;

    move-result-object v0

    const/4 v2, 0x0

    .line 2
    iput-boolean v2, p0, Lsmartisan/widget/calendar/CalendarView;->mFirstJumpCalendar:Z

    const/4 v2, 0x2

    .line 3
    invoke-virtual {v0, v2, p1}, Ljava/util/Calendar;->add(II)V

    .line 4
    iget-object p1, p0, Lsmartisan/widget/calendar/CalendarView;->mSelectedTime:Landroid/text/format/Time;

    iget p1, p1, Landroid/text/format/Time;->month:I

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x5

    if-ne p1, v2, :cond_0

    iget-object p1, p0, Lsmartisan/widget/calendar/CalendarView;->mSelectedTime:Landroid/text/format/Time;

    iget p1, p1, Landroid/text/format/Time;->year:I

    .line 5
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne p1, v2, :cond_0

    .line 6
    iget-object p1, p0, Lsmartisan/widget/calendar/CalendarView;->mSelectedTime:Landroid/text/format/Time;

    iget p1, p1, Landroid/text/format/Time;->monthDay:I

    invoke-virtual {v0, v3, p1}, Ljava/util/Calendar;->set(II)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-direct {p0, v0}, Lsmartisan/widget/calendar/CalendarView;->getAndCorrectDay(Ljava/util/Calendar;)I

    move-result p1

    invoke-virtual {v0, v3, p1}, Ljava/util/Calendar;->set(II)V

    .line 8
    :goto_0
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    const/16 v2, 0x7f5

    if-gt p1, v2, :cond_2

    .line 9
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    const/16 v1, 0x7b2

    if-ge p1, v1, :cond_1

    goto :goto_1

    :cond_1
    return-object v0

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method protected varargs getNeedToJumpCalendar(Ljava/util/Calendar;Ljava/util/Calendar;II[I)[Ljava/util/Calendar;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p1, p2}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v2, p2

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move-object p1, p2

    .line 3
    :goto_1
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-direct {p0, v2, p3, p4}, Lsmartisan/widget/calendar/CalendarView;->getCalendarByOffsetInField(Ljava/util/Calendar;II)Ljava/util/Calendar;

    move-result-object v1

    .line 5
    invoke-virtual {p0, v1, p1, p5}, Lsmartisan/widget/calendar/CalendarView;->isSameCalendarByFields(Ljava/util/Calendar;Ljava/util/Calendar;[I)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 6
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    rsub-int/lit8 p4, p4, 0x0

    .line 7
    invoke-direct {p0, p1, p3, p4}, Lsmartisan/widget/calendar/CalendarView;->getCalendarByOffsetInField(Ljava/util/Calendar;II)Ljava/util/Calendar;

    move-result-object p1

    .line 8
    invoke-virtual {p0, p1, v1, p5}, Lsmartisan/widget/calendar/CalendarView;->isSameCalendarByFields(Ljava/util/Calendar;Ljava/util/Calendar;[I)Z

    move-result p1

    if-nez p1, :cond_2

    .line 9
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    new-array p1, v3, [Ljava/util/Calendar;

    .line 10
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/util/Calendar;

    return-object p1
.end method

.method protected getTime(Ljava/util/Calendar;)Landroid/text/format/Time;
    .locals 3

    .line 1
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 2
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    return-object v0
.end method

.method protected getTimeByFocusMonth(I)Landroid/text/format/Time;
    .locals 3

    .line 1
    new-instance v0, Landroid/text/format/Time;

    iget-object v1, p0, Lsmartisan/widget/calendar/CalendarView;->mSelectedTime:Landroid/text/format/Time;

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Landroid/text/format/Time;)V

    const/16 v1, 0xb

    if-ne p1, v1, :cond_0

    .line 2
    iget-object v2, p0, Lsmartisan/widget/calendar/CalendarView;->mSelectedTime:Landroid/text/format/Time;

    iget v2, v2, Landroid/text/format/Time;->month:I

    if-nez v2, :cond_0

    .line 3
    iget p1, v0, Landroid/text/format/Time;->year:I

    add-int/lit8 p1, p1, -0x1

    iput p1, v0, Landroid/text/format/Time;->year:I

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 4
    iget-object p1, p0, Lsmartisan/widget/calendar/CalendarView;->mSelectedTime:Landroid/text/format/Time;

    iget p1, p1, Landroid/text/format/Time;->month:I

    if-ne p1, v1, :cond_1

    .line 5
    iget p1, v0, Landroid/text/format/Time;->year:I

    add-int/lit8 p1, p1, 0x1

    iput p1, v0, Landroid/text/format/Time;->year:I

    .line 6
    :cond_1
    :goto_0
    iget-object p1, p0, Lsmartisan/widget/calendar/CalendarView;->mAdapter:Lsmartisan/widget/calendar/MonthByWeekAdapter;

    invoke-virtual {p1}, Lsmartisan/widget/calendar/MonthByWeekAdapter;->getFocusMonth()I

    move-result p1

    iput p1, v0, Landroid/text/format/Time;->month:I

    const/16 p1, 0xf

    .line 7
    iput p1, v0, Landroid/text/format/Time;->monthDay:I

    return-object v0
.end method

.method public goTo(JZ)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lsmartisan/widget/calendar/CalendarView;->mSelectedTime:Landroid/text/format/Time;

    invoke-virtual {v0, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 2
    iget-object v0, p0, Lsmartisan/widget/calendar/CalendarView;->mSelectedTime:Landroid/text/format/Time;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    .line 3
    iget-object v0, p0, Lsmartisan/widget/calendar/CalendarView;->mTempTime:Landroid/text/format/Time;

    invoke-virtual {v0, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 4
    iget-object p1, p0, Lsmartisan/widget/calendar/CalendarView;->mTempTime:Landroid/text/format/Time;

    invoke-virtual {p1, v1}, Landroid/text/format/Time;->normalize(Z)J

    .line 5
    iget-object p1, p0, Lsmartisan/widget/calendar/CalendarView;->mFirstDayOfMonth:Landroid/text/format/Time;

    iget-object p2, p0, Lsmartisan/widget/calendar/CalendarView;->mTempTime:Landroid/text/format/Time;

    invoke-virtual {p1, p2}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 6
    iget-object p1, p0, Lsmartisan/widget/calendar/CalendarView;->mFirstDayOfMonth:Landroid/text/format/Time;

    iput v1, p1, Landroid/text/format/Time;->monthDay:I

    .line 7
    invoke-virtual {p1, v1}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide p1

    .line 8
    iget-object v0, p0, Lsmartisan/widget/calendar/CalendarView;->mFirstDayOfMonth:Landroid/text/format/Time;

    invoke-virtual {p0, v0, v1}, Lsmartisan/widget/calendar/CalendarView;->setMonthDisplayed(Landroid/text/format/Time;Z)V

    .line 9
    iget-object v0, p0, Lsmartisan/widget/calendar/CalendarView;->mFirstDayOfMonth:Landroid/text/format/Time;

    iget-wide v0, v0, Landroid/text/format/Time;->gmtoff:J

    .line 10
    invoke-static {p1, p2, v0, v1}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result p1

    iget p2, p0, Lsmartisan/widget/calendar/CalendarView;->mFirstDayOfWeek:I

    .line 11
    invoke-static {p1, p2}, Lsmartisan/util/CalendarUtils;->getWeeksSinceEpochFromJulianDay(II)I

    move-result p1

    .line 12
    iget-object p2, p0, Lsmartisan/widget/calendar/CalendarView;->mAdapter:Lsmartisan/widget/calendar/MonthByWeekAdapter;

    invoke-virtual {p2, p1}, Lsmartisan/widget/calendar/MonthByWeekAdapter;->setPosition(I)V

    .line 13
    iget-object p1, p0, Lsmartisan/widget/calendar/CalendarView;->mAdapter:Lsmartisan/widget/calendar/MonthByWeekAdapter;

    iget-object p2, p0, Lsmartisan/widget/calendar/CalendarView;->mSelectedTime:Landroid/text/format/Time;

    invoke-virtual {p1, p2, p3}, Lsmartisan/widget/calendar/MonthByWeekAdapter;->setSelectedDay(Landroid/text/format/Time;Z)V

    .line 14
    invoke-virtual {p0}, Lsmartisan/widget/calendar/CalendarView;->updateDateInTitle()V

    const/4 p1, 0x0

    return p1
.end method

.method public initTimes(J)V
    .locals 7

    .line 9
    invoke-static {}, Lsmartisan/util/CalendarUtils;->getMaxTimeMills()J

    move-result-wide v5

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p1

    .line 10
    invoke-virtual/range {v0 .. v6}, Lsmartisan/widget/calendar/CalendarView;->initTimes(JJJ)V

    return-void
.end method

.method public initTimes(JJJ)V
    .locals 0

    .line 1
    invoke-direct {p0, p3, p4}, Lsmartisan/widget/calendar/CalendarView;->setSelectTime(J)V

    .line 2
    iget-object p3, p0, Lsmartisan/widget/calendar/CalendarView;->mMinTime:Landroid/text/format/Time;

    invoke-virtual {p3, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 3
    iget-object p1, p0, Lsmartisan/widget/calendar/CalendarView;->mMinTime:Landroid/text/format/Time;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/text/format/Time;->normalize(Z)J

    .line 4
    iget-object p1, p0, Lsmartisan/widget/calendar/CalendarView;->mMaxTime:Landroid/text/format/Time;

    invoke-virtual {p1, p5, p6}, Landroid/text/format/Time;->set(J)V

    .line 5
    iget-object p1, p0, Lsmartisan/widget/calendar/CalendarView;->mMaxTime:Landroid/text/format/Time;

    invoke-virtual {p1, p2}, Landroid/text/format/Time;->normalize(Z)J

    .line 6
    iget-wide p3, p0, Lsmartisan/widget/calendar/CalendarView;->mSelectedMills:J

    invoke-virtual {p0, p3, p4, p2}, Lsmartisan/widget/calendar/CalendarView;->goTo(JZ)Z

    .line 7
    invoke-virtual {p0, p2}, Lsmartisan/widget/calendar/CalendarView;->setupWeeksLayout(Z)V

    .line 8
    iget-object p1, p0, Lsmartisan/widget/calendar/CalendarView;->mAdapter:Lsmartisan/widget/calendar/MonthByWeekAdapter;

    iget-object p2, p0, Lsmartisan/widget/calendar/CalendarView;->mMinTime:Landroid/text/format/Time;

    invoke-static {p2}, Lsmartisan/util/CalendarUtils;->getJulianDay(Landroid/text/format/Time;)I

    move-result p2

    iget-object p3, p0, Lsmartisan/widget/calendar/CalendarView;->mMaxTime:Landroid/text/format/Time;

    invoke-static {p3}, Lsmartisan/util/CalendarUtils;->getJulianDay(Landroid/text/format/Time;)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Lsmartisan/widget/calendar/MonthByWeekAdapter;->updateRange(II)V

    return-void
.end method

.method protected intDatas()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lsmartisan/widget/calendar/CalendarView;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 2
    new-instance v0, Ljava/util/Formatter;

    iget-object v1, p0, Lsmartisan/widget/calendar/CalendarView;->mStringBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v0, p0, Lsmartisan/widget/calendar/CalendarView;->mFormatter:Ljava/util/Formatter;

    return-void
.end method

.method protected varargs isSameCalendarByFields(Ljava/util/Calendar;Ljava/util/Calendar;[I)Z
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    .line 1
    :goto_0
    array-length v2, p3

    const/4 v3, 0x1

    if-ge v1, v2, :cond_2

    .line 2
    aget v2, p3, v1

    const/4 v4, 0x3

    if-ne v2, v4, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/util/Calendar;

    aput-object p1, v4, v0

    aput-object p2, v4, v3

    invoke-static {v2, v4}, Lsmartisan/util/CalendarUtils;->setFisrtDayOfWeek(Landroid/content/Context;[Ljava/util/Calendar;)V

    .line 4
    :cond_0
    aget v2, p3, v1

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    aget v3, p3, v1

    invoke-virtual {p2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-eq v2, v3, :cond_1

    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v3
.end method

.method protected isVailidToNext()Z
    .locals 6

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lsmartisan/widget/calendar/CalendarView;->getMonthCalendarByOffset(I)Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 2
    :cond_0
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x2

    .line 3
    invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 4
    iget-object v4, p0, Lsmartisan/widget/calendar/CalendarView;->mMaxTime:Landroid/text/format/Time;

    iget v5, v4, Landroid/text/format/Time;->year:I

    if-le v3, v5, :cond_1

    return v2

    :cond_1
    if-ne v3, v5, :cond_3

    .line 5
    iget v3, v4, Landroid/text/format/Time;->month:I

    if-gt v1, v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :cond_3
    :goto_0
    return v0
.end method

.method protected isVailidToPrevious()Z
    .locals 6

    const/4 v0, -0x1

    .line 1
    invoke-virtual {p0, v0}, Lsmartisan/widget/calendar/CalendarView;->getMonthCalendarByOffset(I)Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x1

    .line 2
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x2

    .line 3
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 4
    iget-object v4, p0, Lsmartisan/widget/calendar/CalendarView;->mMinTime:Landroid/text/format/Time;

    iget v5, v4, Landroid/text/format/Time;->year:I

    if-ge v3, v5, :cond_1

    return v1

    :cond_1
    if-ne v3, v5, :cond_3

    .line 5
    iget v3, v4, Landroid/text/format/Time;->month:I

    if-lt v0, v3, :cond_2

    move v1, v2

    :cond_2
    return v1

    :cond_3
    return v2
.end method

.method protected jumpToDayForMonth(Ljava/util/Calendar;Z)I
    .locals 7

    const/4 p2, 0x1

    .line 1
    iput-boolean p2, p0, Lsmartisan/widget/calendar/CalendarView;->mFirstJumpCalendar:Z

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lsmartisan/widget/calendar/CalendarView;->getCalendarBeforeJump(Z)Ljava/util/Calendar;

    move-result-object v2

    .line 3
    iget-object v1, p0, Lsmartisan/widget/calendar/CalendarView;->mSelectedTime:Landroid/text/format/Time;

    iget v1, v1, Landroid/text/format/Time;->month:I

    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-ne v1, v4, :cond_0

    iget-object v1, p0, Lsmartisan/widget/calendar/CalendarView;->mSelectedTime:Landroid/text/format/Time;

    iget v1, v1, Landroid/text/format/Time;->year:I

    .line 4
    invoke-virtual {p1, p2}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-ne v1, v4, :cond_0

    .line 5
    iget v1, p0, Lsmartisan/widget/calendar/CalendarView;->mAddTimes:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ne v1, p2, :cond_0

    const/4 v1, 0x5

    .line 6
    iget-object v4, p0, Lsmartisan/widget/calendar/CalendarView;->mSelectedTime:Landroid/text/format/Time;

    iget v4, v4, Landroid/text/format/Time;->monthDay:I

    invoke-virtual {p1, v1, v4}, Ljava/util/Calendar;->set(II)V

    :cond_0
    new-array v1, v3, [I

    .line 7
    fill-array-data v1, :array_0

    invoke-virtual {p0, v2, p1, v1}, Lsmartisan/widget/calendar/CalendarView;->isSameCalendarByFields(Ljava/util/Calendar;Ljava/util/Calendar;[I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lsmartisan/widget/calendar/CalendarView;->mSelectedMills:J

    .line 9
    iget-wide v1, p0, Lsmartisan/widget/calendar/CalendarView;->mSelectedMills:J

    invoke-virtual {p0, v1, v2, p2}, Lsmartisan/widget/calendar/CalendarView;->goTo(JZ)Z

    .line 10
    invoke-virtual {p0, p1}, Lsmartisan/widget/calendar/CalendarView;->animationEnd(Ljava/util/Calendar;)V

    return v0

    .line 11
    :cond_1
    invoke-virtual {v2, p1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result p2

    const/4 v4, 0x2

    const/4 v5, 0x1

    new-array v6, v3, [I

    .line 12
    fill-array-data v6, :array_1

    move-object v1, p0

    move-object v3, p1

    invoke-virtual/range {v1 .. v6}, Lsmartisan/widget/calendar/CalendarView;->getNeedToJumpCalendar(Ljava/util/Calendar;Ljava/util/Calendar;II[I)[Ljava/util/Calendar;

    move-result-object p1

    .line 13
    invoke-virtual {p0, p2, p1}, Lsmartisan/widget/calendar/CalendarView;->prepareJumpNextView(Z[Ljava/util/Calendar;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 14
    iget-object p1, p0, Lsmartisan/widget/calendar/CalendarView;->mViewSwitcher:Lsmartisan/widget/calendar/DragViewSwitcher;

    invoke-virtual {p1}, Landroid/widget/ViewSwitcher;->showNext()V

    :cond_2
    return v0

    :array_0
    .array-data 4
        0x1
        0x2
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x2
    .end array-data
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 2
    sget v0, Lsmartisan/widget/R$id;->date_title:I

    if-ne p1, v0, :cond_0

    .line 3
    iget-boolean p1, p0, Lsmartisan/widget/calendar/CalendarView;->mNeedToHandleTitleClicked:Z

    if-eqz p1, :cond_8

    .line 4
    invoke-virtual {p0}, Lsmartisan/widget/calendar/CalendarView;->onDateTitleClicked()V

    goto :goto_0

    .line 5
    :cond_0
    sget v0, Lsmartisan/widget/R$id;->allinone_image_previous:I

    const-wide/16 v1, 0xc8

    const/4 v3, 0x1

    if-ne p1, v0, :cond_4

    .line 6
    iget-object p1, p0, Lsmartisan/widget/calendar/CalendarView;->needToRunCals:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 7
    :cond_1
    invoke-virtual {p0}, Lsmartisan/widget/calendar/CalendarView;->isVailidToPrevious()Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    const/4 p1, -0x1

    .line 8
    invoke-direct {p0, p1}, Lsmartisan/widget/calendar/CalendarView;->changeCurrentTime(I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 9
    iget p1, p0, Lsmartisan/widget/calendar/CalendarView;->mAddTimes:I

    sub-int/2addr p1, v3

    iput p1, p0, Lsmartisan/widget/calendar/CalendarView;->mAddTimes:I

    .line 10
    invoke-virtual {p0}, Lsmartisan/widget/calendar/CalendarView;->updateDateInTitle()V

    .line 11
    :cond_3
    iget-object p1, p0, Lsmartisan/widget/calendar/CalendarView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 12
    iget-object p1, p0, Lsmartisan/widget/calendar/CalendarView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    .line 13
    iput v3, p1, Landroid/os/Message;->what:I

    .line 14
    iget-object v0, p0, Lsmartisan/widget/calendar/CalendarView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 15
    :cond_4
    sget v0, Lsmartisan/widget/R$id;->allinone_image_next:I

    if-ne p1, v0, :cond_8

    .line 16
    iget-object p1, p0, Lsmartisan/widget/calendar/CalendarView;->needToRunCals:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    return-void

    .line 17
    :cond_5
    invoke-virtual {p0}, Lsmartisan/widget/calendar/CalendarView;->isVailidToNext()Z

    move-result p1

    if-nez p1, :cond_6

    return-void

    .line 18
    :cond_6
    invoke-direct {p0, v3}, Lsmartisan/widget/calendar/CalendarView;->changeCurrentTime(I)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 19
    iget p1, p0, Lsmartisan/widget/calendar/CalendarView;->mAddTimes:I

    add-int/2addr p1, v3

    iput p1, p0, Lsmartisan/widget/calendar/CalendarView;->mAddTimes:I

    .line 20
    invoke-virtual {p0}, Lsmartisan/widget/calendar/CalendarView;->updateDateInTitle()V

    .line 21
    :cond_7
    iget-object p1, p0, Lsmartisan/widget/calendar/CalendarView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 22
    iget-object p1, p0, Lsmartisan/widget/calendar/CalendarView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    .line 23
    iput v3, p1, Landroid/os/Message;->what:I

    .line 24
    iget-object v0, p0, Lsmartisan/widget/calendar/CalendarView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_8
    :goto_0
    return-void
.end method

.method protected onDateTitleClicked()V
    .locals 8

    .line 1
    new-instance v7, Lsmartisan/widget/calendar/CalendarView$6;

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lsmartisan/widget/calendar/CalendarView$5;

    invoke-direct {v3, p0}, Lsmartisan/widget/calendar/CalendarView$5;-><init>(Lsmartisan/widget/calendar/CalendarView;)V

    iget-object v0, p0, Lsmartisan/widget/calendar/CalendarView;->mSelectedTime:Landroid/text/format/Time;

    iget v4, v0, Landroid/text/format/Time;->year:I

    iget v5, v0, Landroid/text/format/Time;->month:I

    iget v6, v0, Landroid/text/format/Time;->monthDay:I

    move-object v0, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lsmartisan/widget/calendar/CalendarView$6;-><init>(Lsmartisan/widget/calendar/CalendarView;Landroid/content/Context;Lsmartisan/widget/SmartisanDatePickerExDialog$OnDateSetListener;III)V

    .line 3
    sget v0, Lsmartisan/widget/R$id;->menu_dialog_title_bar:I

    .line 4
    invoke-virtual {v7, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lsmartisan/widget/MenuDialogTitleBar;

    .line 5
    sget v1, Lsmartisan/widget/R$string;->chose_date:I

    invoke-virtual {v0, v1}, Lsmartisan/widget/MenuDialogTitleBar;->setTitle(I)V

    .line 6
    invoke-virtual {v7}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 8

    if-eqz p1, :cond_1

    .line 1
    instance-of v0, p1, Lsmartisan/widget/calendar/DateTimeSavedState;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    check-cast p1, Lsmartisan/widget/calendar/DateTimeSavedState;

    .line 3
    invoke-virtual {p1}, Landroid/preference/Preference$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 4
    invoke-virtual {p1}, Lsmartisan/widget/calendar/DateTimeSavedState;->getMinMills()J

    move-result-wide v2

    invoke-virtual {p1}, Lsmartisan/widget/calendar/DateTimeSavedState;->getCurrentMills()J

    move-result-wide v4

    invoke-virtual {p1}, Lsmartisan/widget/calendar/DateTimeSavedState;->getMaxMills()J

    move-result-wide v6

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lsmartisan/widget/calendar/CalendarView;->initTimes(JJJ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 11

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 2
    new-instance v8, Lsmartisan/widget/calendar/DateTimeSavedState;

    iget-object v0, p0, Lsmartisan/widget/calendar/CalendarView;->mMinTime:Landroid/text/format/Time;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v3

    iget-wide v5, p0, Lsmartisan/widget/calendar/CalendarView;->mSelectedMills:J

    iget-object v0, p0, Lsmartisan/widget/calendar/CalendarView;->mMaxTime:Landroid/text/format/Time;

    .line 3
    invoke-virtual {v0, v2}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v9

    move-object v0, v8

    move-wide v2, v3

    move-wide v4, v5

    move-wide v6, v9

    invoke-direct/range {v0 .. v7}, Lsmartisan/widget/calendar/DateTimeSavedState;-><init>(Landroid/os/Parcelable;JJJ)V

    return-object v8
.end method

.method protected prepareFollowingView(IZLjava/util/Calendar;)Z
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lsmartisan/widget/calendar/CalendarView;->mFirstJumpCalendar:Z

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    new-array p1, v0, [Ljava/util/Calendar;

    aput-object p3, p1, v1

    .line 2
    invoke-virtual {p0, p2, p1}, Lsmartisan/widget/calendar/CalendarView;->prepareJumpNextView(Z[Ljava/util/Calendar;)Z

    move-result p1

    return p1

    :cond_0
    return v1
.end method

.method protected varargs prepareJumpNextView(Z[Ljava/util/Calendar;)Z
    .locals 5

    const/4 v0, 0x0

    .line 1
    aget-object v1, p2, v0

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Lsmartisan/util/CalendarUtils;->isValidDay(J)Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    .line 2
    :cond_0
    iget-boolean v1, p0, Lsmartisan/widget/calendar/CalendarView;->mIsWeeksLayoutInAnimation:Z

    if-eqz v1, :cond_1

    .line 3
    iget-object p1, p0, Lsmartisan/widget/calendar/CalendarView;->needToRunCals:Ljava/util/LinkedList;

    aget-object p2, p2, v0

    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return v0

    .line 4
    :cond_1
    invoke-virtual {p0, v0}, Lsmartisan/widget/calendar/CalendarView;->setupWeeksLayout(Z)V

    .line 5
    aget-object v1, p2, v0

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lsmartisan/widget/calendar/CalendarView;->mSelectedMills:J

    .line 6
    iget-wide v1, p0, Lsmartisan/widget/calendar/CalendarView;->mSelectedMills:J

    array-length v3, p2

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    move v3, v4

    goto :goto_0

    :cond_2
    move v3, v0

    :goto_0
    invoke-virtual {p0, v1, v2, v3}, Lsmartisan/widget/calendar/CalendarView;->goTo(JZ)Z

    move v1, v4

    .line 7
    :goto_1
    array-length v2, p2

    if-ge v1, v2, :cond_3

    .line 8
    iget-object v2, p0, Lsmartisan/widget/calendar/CalendarView;->needToRunCals:Ljava/util/LinkedList;

    aget-object v3, p2, v1

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 9
    :cond_3
    iget-object v1, p0, Lsmartisan/widget/calendar/CalendarView;->needToRunCals:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    .line 10
    aget-object p2, p2, v0

    invoke-virtual {p0, p1, p2, v1}, Lsmartisan/widget/calendar/CalendarView;->getAniminationListener(ZLjava/util/Calendar;I)Landroid/view/animation/Animation$AnimationListener;

    move-result-object p2

    .line 11
    invoke-static {v1, v1}, Lsmartisan/widget/calendar/SequenceAnimUtils;->getInterpolator(II)Landroid/view/animation/Interpolator;

    move-result-object v0

    .line 12
    invoke-static {v1, v1}, Lsmartisan/widget/calendar/SequenceAnimUtils;->getDuration(II)I

    move-result v1

    .line 13
    invoke-virtual {p0, p1, p2, v0, v1}, Lsmartisan/widget/calendar/CalendarView;->setupScrollAnim(ZLandroid/view/animation/Animation$AnimationListener;Landroid/view/animation/Interpolator;I)V

    return v4
.end method

.method public prepareNextView(I)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lsmartisan/widget/calendar/CalendarView;->isVailidToNext()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lsmartisan/widget/calendar/CalendarView;->getMonthCalendarByOffset(I)Ljava/util/Calendar;

    move-result-object v2

    if-nez v2, :cond_1

    return v1

    .line 3
    :cond_1
    invoke-virtual {p0, p1, v0, v2}, Lsmartisan/widget/calendar/CalendarView;->prepareFollowingView(IZLjava/util/Calendar;)Z

    move-result p1

    return p1
.end method

.method public preparePreviouseView(I)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lsmartisan/widget/calendar/CalendarView;->isVailidToPrevious()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, -0x1

    .line 2
    invoke-virtual {p0, v0}, Lsmartisan/widget/calendar/CalendarView;->getMonthCalendarByOffset(I)Ljava/util/Calendar;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 3
    :cond_1
    invoke-virtual {p0, p1, v1, v0}, Lsmartisan/widget/calendar/CalendarView;->prepareFollowingView(IZLjava/util/Calendar;)Z

    move-result p1

    return p1
.end method

.method protected setMonthDisplayed(Landroid/text/format/Time;Z)V
    .locals 1

    .line 1
    iget p1, p1, Landroid/text/format/Time;->month:I

    iput p1, p0, Lsmartisan/widget/calendar/CalendarView;->mCurrentMonthDisplayed:I

    if-eqz p2, :cond_0

    .line 2
    iget-object p1, p0, Lsmartisan/widget/calendar/CalendarView;->mAdapter:Lsmartisan/widget/calendar/MonthByWeekAdapter;

    iget p2, p0, Lsmartisan/widget/calendar/CalendarView;->mCurrentMonthDisplayed:I

    invoke-virtual {p1, p2}, Lsmartisan/widget/calendar/MonthByWeekAdapter;->updateFocusMonth(I)V

    .line 3
    :cond_0
    iget-object p1, p0, Lsmartisan/widget/calendar/CalendarView;->mSelectedTime:Landroid/text/format/Time;

    iget p2, p1, Landroid/text/format/Time;->minute:I

    const/16 v0, 0x1e

    if-lt p2, v0, :cond_1

    .line 4
    iput v0, p1, Landroid/text/format/Time;->minute:I

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 5
    iput p2, p1, Landroid/text/format/Time;->minute:I

    :goto_0
    return-void
.end method

.method public setNeedToHandleTitleClicked(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lsmartisan/widget/calendar/CalendarView;->mNeedToHandleTitleClicked:Z

    return-void
.end method

.method protected setupAdapter()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lsmartisan/util/CalendarUtils;->getFirstDayOfWeekInTime(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lsmartisan/widget/calendar/CalendarView;->mFirstDayOfWeek:I

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x6

    .line 3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "num_weeks"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "single_week"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget v1, p0, Lsmartisan/widget/calendar/CalendarView;->mFirstDayOfWeek:I

    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "week_start"

    .line 7
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v1, p0, Lsmartisan/widget/calendar/CalendarView;->mSelectedTime:Landroid/text/format/Time;

    const/4 v2, 0x1

    .line 9
    invoke-virtual {v1, v2}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v1

    iget-object v3, p0, Lsmartisan/widget/calendar/CalendarView;->mSelectedTime:Landroid/text/format/Time;

    iget-wide v3, v3, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v1, v2, v3, v4}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "selected_day"

    .line 10
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x7

    .line 11
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "days_per_week"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-object v1, p0, Lsmartisan/widget/calendar/CalendarView;->mSelectedTime:Landroid/text/format/Time;

    iget v1, v1, Landroid/text/format/Time;->month:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "focus_month"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object v1, p0, Lsmartisan/widget/calendar/CalendarView;->mAdapter:Lsmartisan/widget/calendar/MonthByWeekAdapter;

    if-nez v1, :cond_0

    .line 14
    new-instance v1, Lsmartisan/widget/calendar/MonthByWeekAdapter;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lsmartisan/widget/calendar/CalendarView;->mCellEventListener:Lsmartisan/widget/calendar/MonthByWeekAdapter$CellEventListener;

    invoke-direct {v1, v2, v0, v3}, Lsmartisan/widget/calendar/MonthByWeekAdapter;-><init>(Landroid/content/Context;Ljava/util/HashMap;Lsmartisan/widget/calendar/MonthByWeekAdapter$CellEventListener;)V

    iput-object v1, p0, Lsmartisan/widget/calendar/CalendarView;->mAdapter:Lsmartisan/widget/calendar/MonthByWeekAdapter;

    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {v1, v0}, Lsmartisan/widget/calendar/MonthByWeekAdapter;->updateParams(Ljava/util/HashMap;)V

    :goto_0
    return-void
.end method

.method protected setupScrollAnim(ZLandroid/view/animation/Animation$AnimationListener;Landroid/view/animation/Interpolator;I)V
    .locals 3

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lsmartisan/widget/R$anim;->remind_week_left_in:I

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lsmartisan/widget/R$anim;->remind_week_left_out:I

    .line 3
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lsmartisan/widget/R$anim;->remind_week_right_in:I

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    .line 5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lsmartisan/widget/R$anim;->remind_week_right_out:I

    .line 6
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    :goto_0
    int-to-long v1, p4

    .line 7
    invoke-virtual {p1, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 8
    iget-object p4, p0, Lsmartisan/widget/calendar/CalendarView;->mViewSwitcher:Lsmartisan/widget/calendar/DragViewSwitcher;

    invoke-virtual {p4, p1}, Landroid/widget/ViewSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 9
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 10
    iget-object p4, p0, Lsmartisan/widget/calendar/CalendarView;->mViewSwitcher:Lsmartisan/widget/calendar/DragViewSwitcher;

    invoke-virtual {p4, v0}, Landroid/widget/ViewSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 11
    invoke-virtual {p1, p2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    if-eqz p3, :cond_1

    .line 12
    invoke-virtual {p1, p3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 13
    invoke-virtual {v0, p3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    :cond_1
    return-void
.end method

.method protected setupWeeksLayout(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lsmartisan/widget/calendar/CalendarView;->mViewSwitcher:Lsmartisan/widget/calendar/DragViewSwitcher;

    invoke-virtual {p1}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lsmartisan/widget/calendar/CalendarView;->mViewSwitcher:Lsmartisan/widget/calendar/DragViewSwitcher;

    invoke-virtual {p1}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    move-result-object p1

    .line 2
    :goto_0
    sget v0, Lsmartisan/widget/R$id;->linearlayout_list:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lsmartisan/widget/calendar/CalendarView;->mWeeksLayout:Landroid/widget/RelativeLayout;

    .line 3
    iget-object p1, p0, Lsmartisan/widget/calendar/CalendarView;->mAdapter:Lsmartisan/widget/calendar/MonthByWeekAdapter;

    iget-object v0, p0, Lsmartisan/widget/calendar/CalendarView;->mWeeksLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Lsmartisan/widget/calendar/MonthByWeekAdapter;->setWeeksLayout(Landroid/widget/RelativeLayout;)V

    return-void
.end method

.method protected updateDateInTitle()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lsmartisan/widget/calendar/CalendarView;->buildMonthYearDate()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lsmartisan/widget/calendar/CalendarView;->mDayTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lsmartisan/widget/calendar/CalendarView;->mAllNextIv:Landroid/widget/ImageView;

    iget-object v1, p0, Lsmartisan/widget/calendar/CalendarView;->mSelectedTime:Landroid/text/format/Time;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lsmartisan/util/CalendarUtils;->turningMonthIsValid(Landroid/text/format/Time;Z)Z

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lsmartisan/widget/calendar/CalendarView;->mAllPreviousIv:Landroid/widget/ImageView;

    iget-object v1, p0, Lsmartisan/widget/calendar/CalendarView;->mSelectedTime:Landroid/text/format/Time;

    invoke-static {v1, v3}, Lsmartisan/util/CalendarUtils;->turningMonthIsValid(Landroid/text/format/Time;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    move v2, v3

    :cond_1
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method protected updateDayNamesHeader()V
    .locals 6

    .line 1
    iget v0, p0, Lsmartisan/widget/calendar/CalendarView;->mFirstDayOfWeek:I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/4 v3, 0x7

    if-ge v2, v3, :cond_1

    .line 2
    iget-object v4, p0, Lsmartisan/widget/calendar/CalendarView;->mDayNamesHeader:Landroid/view/ViewGroup;

    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const/16 v5, 0x8

    if-ge v2, v5, :cond_0

    add-int v5, v0, v2

    .line 3
    rem-int/2addr v5, v3

    .line 4
    iget-object v3, p0, Lsmartisan/widget/calendar/CalendarView;->mDayLabels:[Ljava/lang/String;

    aget-object v3, v3, v5

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 6
    :cond_0
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
