.class public Lsmartisan/widget/calendar/MonthWeekEventsView;
.super Landroid/view/View;
.source "MonthWeekEventsView.java"


# static fields
.field private static DAY_SEPARATOR_INNER_WIDTH:I = 0x0

.field private static final DEBUG_LAYOUT:Z = false

.field private static DEFAULT_EDGE_SPACING:I = 0x0

.field protected static final DEFAULT_FOCUS_MONTH:I = -0x1

.field protected static DEFAULT_HEIGHT:I = 0x20

.field protected static final DEFAULT_NUM_DAYS:I = 0x7

.field protected static final DEFAULT_SELECTED_DAY:I = -0x1

.field protected static final DEFAULT_SHOW_WK_NUM:I = 0x0

.field protected static final DEFAULT_WEEK_START:I = 0x0

.field public static EXPANDED_HEIGHT:I = 0xa

.field public static EXPANDED_WIDTH:I = 0xa

.field protected static MINI_DAY_NUMBER_TEXT_SIZE:I = 0x0

.field private static final SHAKE_ANIMATION_DURATION:J = 0xc8L

.field private static SPACING_WEEK_NUMBER:I = 0x18

.field public static final SWTICH_ANIM_CHANGE_POINT:F = 0.5f

.field private static final TAG:Ljava/lang/String; = "MonthView"

.field private static TODAY_HIGHLIGHT_WIDTH:I = 0x2

.field public static final VIEW_PARAMS_FOCUS_MONTH:Ljava/lang/String; = "focus_month"

.field public static final VIEW_PARAMS_HEIGHT:Ljava/lang/String; = "height"

.field public static final VIEW_PARAMS_MAX_JULIANDAY:Ljava/lang/String; = "max_julianday"

.field public static final VIEW_PARAMS_MIN_JULIANDAY:Ljava/lang/String; = "min_julianday"

.field public static final VIEW_PARAMS_NUM_DAYS:Ljava/lang/String; = "num_days"

.field public static final VIEW_PARAMS_SELECTED_WEEKDAY:Ljava/lang/String; = "selected_day"

.field public static final VIEW_PARAMS_SHOW_WK_NUM:Ljava/lang/String; = "show_wk_num"

.field public static final VIEW_PARAMS_SINGLE_WEEK:Ljava/lang/String; = "is_single_week"

.field public static final VIEW_PARAMS_WEEK:Ljava/lang/String; = "week"

.field public static final VIEW_PARAMS_WEEK_START:Ljava/lang/String; = "week_start"

.field private static final mClickedAlpha:I = 0x80

.field private static mInitialized:Z = false

.field protected static mScale:F = 0.0f

.field protected static mStringBuilder:Ljava/lang/StringBuilder; = null

.field private static sBgMarginH:I = 0x3

.field private static sBgMarginV:F = 4.0f

.field private static sBorderWidth:I = 0x2

.field private static sWeekCellTotalInterval:I


# instance fields
.field private EventDrawableWapper:Landroid/graphics/drawable/Drawable;

.field private hasFocus:Z

.field private mAnimateToday:Z

.field private mAnimateTodayAlpha:I

.field private mAnimationValue:F

.field private mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mCellDrawer:Lsmartisan/widget/calendar/MonthByWeekDayViewDrawer;

.field mCellEventListener:Lsmartisan/widget/calendar/MonthByWeekAdapter$CellEventListener;

.field private mCellWidth:F

.field mChildBounds:Landroid/graphics/RectF;

.field private mClickedDayIndex:I

.field private mContext:Landroid/content/Context;

.field protected mDayNumbers:[Ljava/lang/String;

.field protected mDayTexts:[Ljava/lang/String;

.field protected mFakeSelectedDay:I

.field protected mFirstJulianDay:I

.field protected mFirstMonth:I

.field protected mFocusDay:[Z

.field private mHasEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field protected mHasSelectedDay:Z

.field protected mHasToday:Z

.field protected mHeight:I

.field private mHeightUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field protected mIsDayOutOfRange:[Z

.field private mIsInScaleAnimation:Z

.field private mIsInShakeAnimation:Z

.field private mIsSingleWeek:Z

.field protected mIsTodayBefore:[Z

.field protected mLastMonth:I

.field private mMaxJulianDay:I

.field private mMinJulianDay:I

.field private mMonthBGForDropDrawable:Landroid/graphics/drawable/Drawable;

.field private mMonthBGNotFocusDrawable:Landroid/graphics/drawable/Drawable;

.field private mMonthEventTop:I

.field protected mNumCells:I

.field protected mNumDays:I

.field private mOriginalView:Landroid/view/View;

.field protected mPadding:I

.field private mRes:Landroid/content/res/Resources;

.field protected mSelectedDayLine:Landroid/graphics/drawable/Drawable;

.field private mSelectedFullMonthBG:Landroid/graphics/drawable/Drawable;

.field protected mSelectedLeft:I

.field protected mSelectedRight:I

.field protected mSelectedWeekDay:I

.field private mSwitchAnimProgress:F

.field protected mTimeToday:Landroid/text/format/Time;

.field protected mTimeZone:Ljava/lang/String;

.field protected mToday:I

.field protected mTodayAnimateColor:I

.field private mTodayAnimator:Landroid/animation/ObjectAnimator;

.field protected mTodayDrawable:Landroid/graphics/drawable/Drawable;

.field private mTodayFullMonthBG:Landroid/graphics/drawable/Drawable;

.field protected mTodayIndex:I

.field private mUndrawBackgoundIndex:I

.field private mUnfocusTodayFullMonthBG:Landroid/graphics/drawable/Drawable;

.field protected mWeek:I

.field private mWeekEvenTop:I

.field private mWeekEventWithLunarTop:I

.field protected mWeekStart:I

.field protected mWidth:I

.field protected p:Landroid/graphics/Paint;

.field protected r:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    sput-object v0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mStringBuilder:Ljava/lang/StringBuilder;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lsmartisan/widget/calendar/MonthByWeekAdapter$CellEventListener;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mHasToday:Z

    const/4 v1, -0x1

    .line 3
    iput v1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mTodayIndex:I

    .line 4
    iput v1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mClickedDayIndex:I

    .line 5
    iput v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mAnimateTodayAlpha:I

    const/4 v2, 0x0

    .line 6
    iput-object v2, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mTodayAnimator:Landroid/animation/ObjectAnimator;

    .line 7
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    iput-object v2, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mTimeToday:Landroid/text/format/Time;

    .line 8
    iput v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mPadding:I

    .line 9
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->r:Landroid/graphics/Rect;

    .line 10
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->p:Landroid/graphics/Paint;

    .line 11
    iput-boolean v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mIsSingleWeek:Z

    .line 12
    iput v1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mFirstJulianDay:I

    .line 13
    iput v1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mFirstMonth:I

    .line 14
    iput v1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mLastMonth:I

    .line 15
    iput v1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mWeek:I

    .line 16
    sget v2, Lsmartisan/widget/calendar/MonthWeekEventsView;->DEFAULT_HEIGHT:I

    iput v2, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mHeight:I

    .line 17
    iput-boolean v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mHasSelectedDay:Z

    .line 18
    iput v1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mSelectedWeekDay:I

    .line 19
    iput v1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mFakeSelectedDay:I

    .line 20
    iput v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mWeekStart:I

    const/4 v2, 0x7

    .line 21
    iput v2, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mNumDays:I

    .line 22
    iget v2, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mNumDays:I

    iput v2, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mNumCells:I

    .line 23
    iput v1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mSelectedLeft:I

    .line 24
    iput v1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mSelectedRight:I

    .line 25
    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mTimeZone:Ljava/lang/String;

    .line 26
    iput v1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mToday:I

    const/4 v2, 0x0

    .line 27
    iput v2, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mSwitchAnimProgress:F

    .line 28
    iput v1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mUndrawBackgoundIndex:I

    .line 29
    iput v2, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mAnimationValue:F

    .line 30
    iput-boolean v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mIsInShakeAnimation:Z

    .line 31
    iput-boolean v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mIsInScaleAnimation:Z

    .line 32
    new-instance v0, Lsmartisan/widget/calendar/MonthWeekEventsView$2;

    invoke-direct {v0, p0}, Lsmartisan/widget/calendar/MonthWeekEventsView$2;-><init>(Lsmartisan/widget/calendar/MonthWeekEventsView;)V

    iput-object v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mAnimatorUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 33
    new-instance v0, Lsmartisan/widget/calendar/MonthWeekEventsView$3;

    invoke-direct {v0, p0}, Lsmartisan/widget/calendar/MonthWeekEventsView$3;-><init>(Lsmartisan/widget/calendar/MonthWeekEventsView;)V

    iput-object v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mHeightUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 34
    iput-object p1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mContext:Landroid/content/Context;

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mRes:Landroid/content/res/Resources;

    .line 36
    sget v0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mScale:F

    cmpl-float v0, v0, v2

    if-nez v0, :cond_0

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mScale:F

    .line 38
    sget v0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mScale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    .line 39
    sget v1, Lsmartisan/widget/calendar/MonthWeekEventsView;->DEFAULT_HEIGHT:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v0, v1

    sput v0, Lsmartisan/widget/calendar/MonthWeekEventsView;->DEFAULT_HEIGHT:I

    .line 40
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lsmartisan/widget/R$dimen;->monthbyweek_v:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lsmartisan/widget/calendar/MonthWeekEventsView;->sBgMarginV:F

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lsmartisan/widget/R$dimen;->monthbyweek_h:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    sput v0, Lsmartisan/widget/calendar/MonthWeekEventsView;->sBgMarginH:I

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lsmartisan/widget/R$dimen;->monthbyweek_border_width:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    sput p1, Lsmartisan/widget/calendar/MonthWeekEventsView;->sBorderWidth:I

    .line 43
    invoke-virtual {p0}, Lsmartisan/widget/calendar/MonthWeekEventsView;->initView()V

    .line 44
    iput-object p2, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mCellEventListener:Lsmartisan/widget/calendar/MonthByWeekAdapter$CellEventListener;

    .line 45
    new-instance p1, Lsmartisan/widget/calendar/MonthWeekEventsView$1;

    invoke-direct {p1, p0}, Lsmartisan/widget/calendar/MonthWeekEventsView$1;-><init>(Lsmartisan/widget/calendar/MonthWeekEventsView;)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method static synthetic access$000(Lsmartisan/widget/calendar/MonthWeekEventsView;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$102(Lsmartisan/widget/calendar/MonthWeekEventsView;F)F
    .locals 0

    .line 1
    iput p1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mAnimationValue:F

    return p1
.end method

.method static synthetic access$200(Lsmartisan/widget/calendar/MonthWeekEventsView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lsmartisan/widget/calendar/MonthWeekEventsView;->updatePercent()V

    return-void
.end method

.method private adjustAnimationBGRect(Landroid/graphics/Rect;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mAnimationValue:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 2
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mAnimationValue:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 3
    iget v2, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v0

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 4
    iget v2, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v0

    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 5
    iget v0, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 6
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method private computeDayLeftPosition(I)I
    .locals 1

    int-to-float p1, p1

    .line 1
    iget v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mCellWidth:F

    mul-float/2addr p1, v0

    const/4 v0, 0x0

    int-to-float v0, v0

    add-float/2addr p1, v0

    .line 2
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method

.method private drawBasicBackgound(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->r:Landroid/graphics/Rect;

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 2
    iget v2, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mHeight:I

    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    .line 3
    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 4
    iget v2, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mWidth:I

    sget v3, Lsmartisan/widget/calendar/MonthWeekEventsView;->sBorderWidth:I

    add-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Rect;->right:I

    .line 5
    iget-object v2, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mMonthBGForDropDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 6
    iget-object v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mMonthBGForDropDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 7
    iget-object p1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->r:Landroid/graphics/Rect;

    iput v1, p1, Landroid/graphics/Rect;->top:I

    .line 8
    iget v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mHeight:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method private drawSpecificBackground(Landroid/graphics/Canvas;)V
    .locals 6

    .line 1
    iget v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mSelectedWeekDay:I

    iget v1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mWeekStart:I

    sub-int/2addr v0, v1

    if-gez v0, :cond_0

    add-int/lit8 v0, v0, 0x7

    .line 2
    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 3
    sget v2, Lsmartisan/widget/calendar/MonthWeekEventsView;->sBgMarginV:F

    neg-float v3, v2

    float-to-int v3, v3

    iput v3, v1, Landroid/graphics/Rect;->top:I

    .line 4
    iget v3, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mHeight:I

    int-to-float v3, v3

    add-float/2addr v3, v2

    float-to-int v2, v3

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    const/4 v2, 0x0

    .line 5
    :goto_0
    iget v3, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mNumDays:I

    if-ge v2, v3, :cond_5

    .line 6
    iget v3, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mUndrawBackgoundIndex:I

    if-ne v2, v3, :cond_1

    goto :goto_1

    .line 7
    :cond_1
    iget-object v3, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mFocusDay:[Z

    if-eqz v3, :cond_3

    aget-boolean v3, v3, v2

    if-nez v3, :cond_3

    .line 8
    iget-object v3, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->r:Landroid/graphics/Rect;

    invoke-direct {p0, v2}, Lsmartisan/widget/calendar/MonthWeekEventsView;->computeDayLeftPosition(I)I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 9
    iget-object v3, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->r:Landroid/graphics/Rect;

    add-int/lit8 v4, v2, 0x1

    invoke-direct {p0, v4}, Lsmartisan/widget/calendar/MonthWeekEventsView;->computeDayLeftPosition(I)I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 10
    iget-object v3, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mMonthBGNotFocusDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->r:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 11
    invoke-virtual {p0, v2}, Lsmartisan/widget/calendar/MonthWeekEventsView;->isOutOfRangeDay(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 12
    iget-object v3, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mMonthBGNotFocusDrawable:Landroid/graphics/drawable/Drawable;

    const/high16 v4, 0x3f800000    # 1.0f

    iget v5, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mSwitchAnimProgress:F

    sub-float/2addr v4, v5

    const/high16 v5, 0x437f0000    # 255.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 13
    :cond_2
    iget-object v3, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mMonthBGNotFocusDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 14
    :cond_3
    iget-object v3, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mIsTodayBefore:[Z

    if-eqz v3, :cond_4

    aget-boolean v3, v3, v2

    if-eqz v3, :cond_4

    .line 15
    iget-object v3, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->r:Landroid/graphics/Rect;

    invoke-direct {p0, v2}, Lsmartisan/widget/calendar/MonthWeekEventsView;->computeDayLeftPosition(I)I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 16
    iget-object v3, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->r:Landroid/graphics/Rect;

    add-int/lit8 v4, v2, 0x1

    invoke-direct {p0, v4}, Lsmartisan/widget/calendar/MonthWeekEventsView;->computeDayLeftPosition(I)I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 17
    iget-object v3, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mMonthBGNotFocusDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->r:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 18
    iget-object v3, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mMonthBGNotFocusDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 19
    :cond_5
    iget-boolean v2, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mHasToday:Z

    if-eqz v2, :cond_7

    iget v2, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mTodayIndex:I

    iget v3, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mUndrawBackgoundIndex:I

    if-eq v2, v3, :cond_7

    .line 20
    invoke-direct {p0, v2}, Lsmartisan/widget/calendar/MonthWeekEventsView;->computeDayLeftPosition(I)I

    move-result v2

    sget v3, Lsmartisan/widget/calendar/MonthWeekEventsView;->sBgMarginH:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 21
    iget v2, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mTodayIndex:I

    add-int/lit8 v2, v2, 0x1

    invoke-direct {p0, v2}, Lsmartisan/widget/calendar/MonthWeekEventsView;->computeDayLeftPosition(I)I

    move-result v2

    sget v3, Lsmartisan/widget/calendar/MonthWeekEventsView;->sBgMarginH:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 22
    iget-boolean v2, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mHasSelectedDay:Z

    if-eqz v2, :cond_6

    iget v2, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mTodayIndex:I

    if-ne v0, v2, :cond_6

    .line 23
    iget-object v2, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mTodayFullMonthBG:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 24
    iget-object v2, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mTodayFullMonthBG:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_2

    .line 25
    :cond_6
    iget-object v2, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mUnfocusTodayFullMonthBG:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 26
    iget-object v2, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mUnfocusTodayFullMonthBG:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 27
    :cond_7
    :goto_2
    iget-boolean v2, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mHasSelectedDay:Z

    if-eqz v2, :cond_8

    iget v2, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mUndrawBackgoundIndex:I

    if-eq v0, v2, :cond_8

    iget v2, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mTodayIndex:I

    if-eq v0, v2, :cond_8

    .line 28
    invoke-direct {p0, v0}, Lsmartisan/widget/calendar/MonthWeekEventsView;->computeDayLeftPosition(I)I

    move-result v2

    sget v3, Lsmartisan/widget/calendar/MonthWeekEventsView;->sBgMarginH:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, 0x1

    .line 29
    invoke-direct {p0, v0}, Lsmartisan/widget/calendar/MonthWeekEventsView;->computeDayLeftPosition(I)I

    move-result v0

    sget v2, Lsmartisan/widget/calendar/MonthWeekEventsView;->sBgMarginH:I

    add-int/2addr v0, v2

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 30
    iget-object v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mSelectedFullMonthBG:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 31
    iget-object v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mSelectedFullMonthBG:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_8
    return-void
.end method

.method private getStringWidth(Ljava/lang/String;)F
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    new-array v0, v0, [F

    .line 2
    iget-object v1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->p:Landroid/graphics/Paint;

    invoke-virtual {v1, p1, v0}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;[F)I

    .line 3
    array-length p1, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_0

    aget v3, v0, v2

    add-float/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method private isBeforeDay(Landroid/text/format/Time;Landroid/text/format/Time;)Z
    .locals 3

    .line 1
    iget v0, p1, Landroid/text/format/Time;->year:I

    iget v1, p2, Landroid/text/format/Time;->year:I

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    return v2

    :cond_0
    if-ne v0, v1, :cond_1

    .line 2
    iget v0, p1, Landroid/text/format/Time;->month:I

    iget v1, p2, Landroid/text/format/Time;->month:I

    if-ge v0, v1, :cond_1

    return v2

    .line 3
    :cond_1
    iget v0, p1, Landroid/text/format/Time;->year:I

    iget v1, p2, Landroid/text/format/Time;->year:I

    if-ne v0, v1, :cond_2

    iget v0, p1, Landroid/text/format/Time;->month:I

    iget v1, p2, Landroid/text/format/Time;->month:I

    if-ne v0, v1, :cond_2

    .line 4
    iget p1, p1, Landroid/text/format/Time;->monthDay:I

    iget p2, p2, Landroid/text/format/Time;->monthDay:I

    if-ge p1, p2, :cond_2

    return v2

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private setAllDrawerFocusState()V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mCellDrawer:Lsmartisan/widget/calendar/MonthByWeekDayViewDrawer;

    invoke-direct {p0, v0}, Lsmartisan/widget/calendar/MonthWeekEventsView;->setDrawerFocusState(Lsmartisan/widget/calendar/DayCellViewDrawer;)V

    return-void
.end method

.method private setDrawerFocusState(Lsmartisan/widget/calendar/DayCellViewDrawer;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-boolean v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->hasFocus:Z

    invoke-virtual {p1, v0}, Lsmartisan/widget/calendar/DayCellViewDrawer;->setHasFocus(Z)V

    :cond_0
    return-void
.end method

.method private updatePercent()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mIsInScaleAnimation:Z

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mHeight:I

    sget v1, Lsmartisan/widget/calendar/MonthByWeekAdapter;->mItemHeight:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    sget v1, Lsmartisan/widget/calendar/MonthByWeekAdapter;->mItemSingleHeight:I

    sget v2, Lsmartisan/widget/calendar/MonthByWeekAdapter;->mItemHeight:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mSwitchAnimProgress:F

    goto :goto_0

    .line 3
    :cond_0
    iget-boolean v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mIsSingleWeek:Z

    if-eqz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 4
    iput v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mSwitchAnimProgress:F

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mSwitchAnimProgress:F

    :goto_0
    return-void
.end method


# virtual methods
.method protected drawBackground(Landroid/graphics/Canvas;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lsmartisan/widget/calendar/MonthWeekEventsView;->drawBasicBackgound(Landroid/graphics/Canvas;)V

    .line 2
    iget-boolean v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->hasFocus:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0, p1}, Lsmartisan/widget/calendar/MonthWeekEventsView;->drawSpecificBackground(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method protected drawToday(Landroid/graphics/Canvas;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->r:Landroid/graphics/Rect;

    sget v1, Lsmartisan/widget/calendar/MonthWeekEventsView;->DAY_SEPARATOR_INNER_WIDTH:I

    sget v2, Lsmartisan/widget/calendar/MonthWeekEventsView;->TODAY_HIGHLIGHT_WIDTH:I

    div-int/lit8 v3, v2, 0x2

    add-int/2addr v1, v3

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 2
    iget v1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mHeight:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    float-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v2, v4

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 3
    iget-object v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->p:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 4
    iget-object v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->p:Landroid/graphics/Paint;

    sget v1, Lsmartisan/widget/calendar/MonthWeekEventsView;->TODAY_HIGHLIGHT_WIDTH:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 5
    iget-object v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->r:Landroid/graphics/Rect;

    iget v1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mTodayIndex:I

    invoke-direct {p0, v1}, Lsmartisan/widget/calendar/MonthWeekEventsView;->computeDayLeftPosition(I)I

    move-result v1

    sget v2, Lsmartisan/widget/calendar/MonthWeekEventsView;->TODAY_HIGHLIGHT_WIDTH:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 6
    iget-object v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->r:Landroid/graphics/Rect;

    iget v1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mTodayIndex:I

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Lsmartisan/widget/calendar/MonthWeekEventsView;->computeDayLeftPosition(I)I

    move-result v1

    sget v2, Lsmartisan/widget/calendar/MonthWeekEventsView;->TODAY_HIGHLIGHT_WIDTH:I

    int-to-float v2, v2

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 7
    iget-object v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->p:Landroid/graphics/Paint;

    iget v1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mTodayAnimateColor:I

    iget v2, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mAnimateTodayAlpha:I

    shl-int/lit8 v2, v2, 0x18

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 8
    iget-object v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->r:Landroid/graphics/Rect;

    iget-object v1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 9
    iget-object p1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->p:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method protected drawWeekNums(Landroid/graphics/Canvas;)V
    .locals 11

    .line 1
    iget v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mSelectedWeekDay:I

    iget v1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mWeekStart:I

    sub-int/2addr v0, v1

    if-gez v0, :cond_0

    add-int/lit8 v0, v0, 0x7

    .line 2
    :cond_0
    invoke-virtual {p0}, Lsmartisan/widget/calendar/MonthWeekEventsView;->getDayCellViewDrawer()Lsmartisan/widget/calendar/DayCellViewDrawer;

    move-result-object v9

    .line 3
    iget-boolean v1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->hasFocus:Z

    invoke-virtual {v9, v1}, Lsmartisan/widget/calendar/DayCellViewDrawer;->setHasFocus(Z)V

    const/4 v1, 0x0

    move v10, v1

    .line 4
    :goto_0
    iget v1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mNumDays:I

    if-ge v10, v1, :cond_9

    .line 5
    iget-object v1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mDayNumbers:[Ljava/lang/String;

    if-eqz v1, :cond_8

    aget-object v1, v1, v10

    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v10, 0x1

    .line 6
    invoke-direct {p0, v1}, Lsmartisan/widget/calendar/MonthWeekEventsView;->computeDayLeftPosition(I)I

    move-result v2

    .line 7
    sget v1, Lsmartisan/widget/calendar/DayCellViewDrawer;->VIEW_TYPE_NORMAL:I

    .line 8
    iget-object v3, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mFocusDay:[Z

    aget-boolean v3, v3, v10

    if-nez v3, :cond_2

    .line 9
    sget v3, Lsmartisan/widget/calendar/DayCellViewDrawer;->VIEW_TYPE_NOT_FOCUS_MONTH:I

    or-int/2addr v1, v3

    .line 10
    :cond_2
    invoke-virtual {p0, v10}, Lsmartisan/widget/calendar/MonthWeekEventsView;->isOutOfRangeDay(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 11
    sget v3, Lsmartisan/widget/calendar/DayCellViewDrawer;->VIEW_TYPE_DAY_OUT_OF_RANGE:I

    or-int/2addr v1, v3

    .line 12
    :cond_3
    iget-boolean v3, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mHasToday:Z

    if-eqz v3, :cond_4

    iget v3, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mTodayIndex:I

    if-ne v3, v10, :cond_4

    .line 13
    sget v3, Lsmartisan/widget/calendar/DayCellViewDrawer;->VIEW_TYPE_TODAY:I

    or-int/2addr v1, v3

    .line 14
    :cond_4
    iget-boolean v3, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mHasSelectedDay:Z

    if-eqz v3, :cond_5

    if-ne v0, v10, :cond_5

    .line 15
    sget v3, Lsmartisan/widget/calendar/DayCellViewDrawer;->VIEW_TYPE_SELECTED:I

    or-int/2addr v1, v3

    .line 16
    :cond_5
    invoke-virtual {p0, v10}, Lsmartisan/widget/calendar/MonthWeekEventsView;->isDayNoValid(I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 17
    sget v3, Lsmartisan/widget/calendar/DayCellViewDrawer;->VIEW_TYPE_DAY_NO_VALID:I

    or-int/2addr v1, v3

    :cond_6
    move v6, v1

    .line 18
    iget-object v1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mDayTexts:[Ljava/lang/String;

    if-nez v1, :cond_7

    const-string v1, ""

    goto :goto_1

    :cond_7
    aget-object v1, v1, v10

    :goto_1
    move-object v4, v1

    .line 19
    iget-object v1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mDayNumbers:[Ljava/lang/String;

    aget-object v3, v1, v10

    const/4 v5, 0x2

    iget v8, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mSwitchAnimProgress:F

    move-object v1, v9

    move-object v7, p1

    invoke-virtual/range {v1 .. v8}, Lsmartisan/widget/calendar/DayCellViewDrawer;->drawView(ILjava/lang/String;Ljava/lang/String;IILandroid/graphics/Canvas;F)V

    :cond_8
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_9
    return-void
.end method

.method public getBoundsForIndex(I)Landroid/graphics/RectF;
    .locals 4

    .line 1
    iget-object v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mChildBounds:Landroid/graphics/RectF;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mChildBounds:Landroid/graphics/RectF;

    .line 3
    :cond_0
    iget-object v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mChildBounds:Landroid/graphics/RectF;

    int-to-float v1, p1

    iget v2, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mCellWidth:F

    mul-float/2addr v1, v2

    const/4 v3, 0x0

    add-int/lit8 p1, p1, 0x1

    int-to-float p1, p1

    mul-float/2addr p1, v2

    iget v2, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mHeight:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v3, p1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 4
    iget-object p1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mChildBounds:Landroid/graphics/RectF;

    return-object p1
.end method

.method public getCellPosFromLocation(F)I
    .locals 3

    .line 1
    iget v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mPadding:I

    int-to-float v1, v0

    cmpg-float v2, p1, v1

    if-ltz v2, :cond_1

    .line 2
    iget v2, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mWidth:I

    sub-int/2addr v2, v0

    int-to-float v0, v2

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    sub-float/2addr p1, v1

    .line 3
    iget v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mCellWidth:F

    div-float/2addr p1, v0

    float-to-int p1, p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, -0x1

    return p1
.end method

.method public getContentDescriptionForIndex(I)Ljava/lang/CharSequence;
    .locals 3

    .line 1
    new-instance v0, Landroid/text/format/Time;

    iget-object v1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mTimeZone:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 2
    iget v1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mFirstJulianDay:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 3
    iget-object p1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    const/16 v2, 0x1a

    invoke-static {p1, v0, v1, v2}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDayCellViewDrawer()Lsmartisan/widget/calendar/DayCellViewDrawer;
    .locals 4

    .line 1
    iget-object v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mCellDrawer:Lsmartisan/widget/calendar/MonthByWeekDayViewDrawer;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lsmartisan/widget/calendar/MonthByWeekDayViewDrawer;

    iget-object v1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mContext:Landroid/content/Context;

    iget-boolean v2, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->hasFocus:Z

    iget v3, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mCellWidth:F

    invoke-direct {v0, v1, v2, v3}, Lsmartisan/widget/calendar/MonthByWeekDayViewDrawer;-><init>(Landroid/content/Context;ZF)V

    iput-object v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mCellDrawer:Lsmartisan/widget/calendar/MonthByWeekDayViewDrawer;

    .line 3
    :cond_0
    iget-object v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mCellDrawer:Lsmartisan/widget/calendar/MonthByWeekDayViewDrawer;

    return-object v0
.end method

.method public getDayFromLocation(F)Landroid/text/format/Time;
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lsmartisan/widget/calendar/MonthWeekEventsView;->getCellPosFromLocation(F)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    iget v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mFirstJulianDay:I

    add-int/2addr v0, p1

    .line 3
    new-instance p1, Landroid/text/format/Time;

    iget-object v1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mTimeZone:Ljava/lang/String;

    invoke-direct {p1, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 4
    iget v1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mWeek:I

    if-nez v1, :cond_1

    const v1, 0x253d8c    # 3.419992E-39f

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    const/16 v1, 0x7b2

    const/4 v2, 0x1

    .line 5
    invoke-virtual {p1, v2, v0, v1}, Landroid/text/format/Time;->set(III)V

    .line 6
    invoke-virtual {p1, v2}, Landroid/text/format/Time;->normalize(Z)J

    return-object p1

    .line 7
    :cond_1
    invoke-virtual {p1, v0}, Landroid/text/format/Time;->setJulianDay(I)J

    const/4 v0, 0x4

    .line 8
    iput v0, p1, Landroid/text/format/Time;->hour:I

    return-object p1
.end method

.method public getFirstJulianDay()I
    .locals 1

    .line 1
    iget v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mFirstJulianDay:I

    return v0
.end method

.method public getFirstMonth()I
    .locals 1

    .line 1
    iget v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mFirstMonth:I

    return v0
.end method

.method public getLastMonth()I
    .locals 1

    .line 1
    iget v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mLastMonth:I

    return v0
.end method

.method public getmUndrawBackgoundIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mUndrawBackgoundIndex:I

    return v0
.end method

.method public hasFakeSelectedDay()Z
    .locals 2

    .line 1
    iget v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mFakeSelectedDay:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSelectedDay()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mHasSelectedDay:Z

    return v0
.end method

.method public hasToday()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mHasToday:Z

    return v0
.end method

.method protected initView()V
    .locals 3

    .line 1
    sget-boolean v0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mInitialized:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mRes:Landroid/content/res/Resources;

    sget v2, Lsmartisan/widget/R$dimen;->monthweek_grid_bg_interval_width:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lsmartisan/widget/calendar/MonthWeekEventsView;->sWeekCellTotalInterval:I

    .line 3
    iget-object v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mRes:Landroid/content/res/Resources;

    sget v2, Lsmartisan/widget/R$dimen;->text_size_month_number:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lsmartisan/widget/calendar/MonthWeekEventsView;->MINI_DAY_NUMBER_TEXT_SIZE:I

    .line 4
    sget v0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mScale:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_0

    .line 5
    sget v2, Lsmartisan/widget/calendar/MonthWeekEventsView;->EXPANDED_HEIGHT:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    sput v2, Lsmartisan/widget/calendar/MonthWeekEventsView;->EXPANDED_HEIGHT:I

    .line 6
    sget v2, Lsmartisan/widget/calendar/MonthWeekEventsView;->EXPANDED_WIDTH:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    sput v2, Lsmartisan/widget/calendar/MonthWeekEventsView;->EXPANDED_WIDTH:I

    .line 7
    sget v2, Lsmartisan/widget/calendar/MonthWeekEventsView;->SPACING_WEEK_NUMBER:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    sput v2, Lsmartisan/widget/calendar/MonthWeekEventsView;->SPACING_WEEK_NUMBER:I

    .line 8
    sget v2, Lsmartisan/widget/calendar/MonthWeekEventsView;->DAY_SEPARATOR_INNER_WIDTH:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    sput v2, Lsmartisan/widget/calendar/MonthWeekEventsView;->DAY_SEPARATOR_INNER_WIDTH:I

    .line 9
    sget v2, Lsmartisan/widget/calendar/MonthWeekEventsView;->DEFAULT_EDGE_SPACING:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    sput v2, Lsmartisan/widget/calendar/MonthWeekEventsView;->DEFAULT_EDGE_SPACING:I

    .line 10
    sget v2, Lsmartisan/widget/calendar/MonthWeekEventsView;->TODAY_HIGHLIGHT_WIDTH:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v0, v2

    sput v0, Lsmartisan/widget/calendar/MonthWeekEventsView;->TODAY_HIGHLIGHT_WIDTH:I

    .line 11
    :cond_0
    sput-boolean v1, Lsmartisan/widget/calendar/MonthWeekEventsView;->mInitialized:Z

    .line 12
    :cond_1
    iget-object v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mRes:Landroid/content/res/Resources;

    sget v2, Lsmartisan/widget/R$dimen;->monthweek_item_width:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mCellWidth:F

    .line 13
    iget-object v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->p:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 14
    iget-object v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->p:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 15
    iget-object v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->p:Landroid/graphics/Paint;

    sget v1, Lsmartisan/widget/calendar/MonthWeekEventsView;->MINI_DAY_NUMBER_TEXT_SIZE:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 16
    iget-object v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->p:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 17
    sget v0, Lsmartisan/widget/calendar/MonthWeekEventsView;->DEFAULT_EDGE_SPACING:I

    iput v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mPadding:I

    .line 18
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lsmartisan/widget/calendar/MonthWeekEventsView;->loadColors(Landroid/content/Context;)V

    return-void
.end method

.method public isDayNoValid(I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mIsTodayBefore:[Z

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    array-length v1, v0

    if-ge p1, v1, :cond_0

    .line 2
    aget-boolean p1, v0, p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isFocusDay(I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mFocusDay:[Z

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    array-length v1, v0

    if-ge p1, v1, :cond_0

    .line 2
    aget-boolean p1, v0, p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isHasFocus()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->hasFocus:Z

    return v0
.end method

.method public isOutOfRangeDay(I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mIsDayOutOfRange:[Z

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mFocusDay:[Z

    array-length v1, v1

    if-ge p1, v1, :cond_0

    .line 2
    aget-boolean p1, v0, p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected loadColors(Landroid/content/Context;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mRes:Landroid/content/res/Resources;

    sget v0, Lsmartisan/widget/R$color;->today_highlight_color:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mTodayAnimateColor:I

    .line 2
    iget-object p1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mRes:Landroid/content/res/Resources;

    sget v0, Lsmartisan/widget/R$drawable;->remind_month_grid_body_for_drop:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mMonthBGForDropDrawable:Landroid/graphics/drawable/Drawable;

    .line 3
    iget-object p1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mRes:Landroid/content/res/Resources;

    sget v0, Lsmartisan/widget/R$drawable;->remind_month_view_grey_day_item:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mMonthBGNotFocusDrawable:Landroid/graphics/drawable/Drawable;

    .line 4
    iget-object p1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mRes:Landroid/content/res/Resources;

    sget v0, Lsmartisan/widget/R$drawable;->remind_calendar_month_view_today_focused_2:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mTodayFullMonthBG:Landroid/graphics/drawable/Drawable;

    .line 5
    iget-object p1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mRes:Landroid/content/res/Resources;

    sget v0, Lsmartisan/widget/R$drawable;->remind_calendar_month_view_day_unfocused:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mUnfocusTodayFullMonthBG:Landroid/graphics/drawable/Drawable;

    .line 6
    iget-object p1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mRes:Landroid/content/res/Resources;

    sget v0, Lsmartisan/widget/R$drawable;->remind_calendar_month_view_day_focused_2:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mSelectedFullMonthBG:Landroid/graphics/drawable/Drawable;

    .line 7
    iget-object p1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mRes:Landroid/content/res/Resources;

    sget v0, Lsmartisan/widget/R$drawable;->remind_today_blue_week_holo_light:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mTodayDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lsmartisan/widget/calendar/MonthWeekEventsView;->drawBackground(Landroid/graphics/Canvas;)V

    .line 2
    invoke-virtual {p0, p1}, Lsmartisan/widget/calendar/MonthWeekEventsView;->drawWeekNums(Landroid/graphics/Canvas;)V

    .line 3
    iget-boolean v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->hasFocus:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mHasToday:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mAnimateToday:Z

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0, p1}, Lsmartisan/widget/calendar/MonthWeekEventsView;->drawToday(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    iget v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mHeight:I

    invoke-virtual {p0, p2, v0}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    sget p2, Lsmartisan/widget/calendar/MonthWeekEventsView;->sBorderWidth:I

    add-int/2addr p1, p2

    int-to-float p1, p1

    const/high16 p2, 0x40e00000    # 7.0f

    div-float/2addr p1, p2

    iput p1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mCellWidth:F

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 1
    iput p1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mWidth:I

    .line 2
    invoke-virtual {p0}, Lsmartisan/widget/calendar/MonthWeekEventsView;->updateSelectionPositions()V

    return-void
.end method

.method public setFakeSelectedDay(I)V
    .locals 1

    .line 1
    iget v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mFakeSelectedDay:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mFakeSelectedDay:I

    :cond_0
    return-void
.end method

.method setHasEvents(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mHasEvents:Ljava/util/List;

    return-void
.end method

.method public setHasFocus(Z)V
    .locals 2

    .line 1
    iput-boolean p1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->hasFocus:Z

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 2
    :goto_0
    iget-object v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mFocusDay:[Z

    array-length v1, v0

    if-ge p1, v1, :cond_0

    const/4 v1, 0x1

    .line 3
    aput-boolean v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0}, Lsmartisan/widget/calendar/MonthWeekEventsView;->setAllDrawerFocusState()V

    return-void
.end method

.method public setOriginalView(Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mOriginalView:Landroid/view/View;

    return-void
.end method

.method public setSelectedDay(I)V
    .locals 1

    .line 1
    iget v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mSelectedWeekDay:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mSelectedWeekDay:I

    :cond_0
    return-void
.end method

.method public setWeekParams(Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "week"

    .line 1
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 2
    invoke-virtual {p0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 3
    iput-object p2, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mTimeZone:Ljava/lang/String;

    const-string v1, "is_single_week"

    .line 4
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    iput-boolean v4, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mIsSingleWeek:Z

    goto :goto_0

    .line 6
    :cond_0
    iput-boolean v3, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mIsSingleWeek:Z

    .line 7
    :goto_0
    iget-boolean v1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mIsSingleWeek:Z

    if-eqz v1, :cond_1

    .line 8
    sget v1, Lsmartisan/widget/calendar/MonthByWeekAdapter;->mItemSingleHeight:I

    iput v1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mHeight:I

    goto :goto_1

    .line 9
    :cond_1
    sget v1, Lsmartisan/widget/calendar/MonthByWeekAdapter;->mItemHeight:I

    iput v1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mHeight:I

    :goto_1
    const-string v1, "selected_day"

    .line 10
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 11
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mSelectedWeekDay:I

    .line 12
    :cond_2
    iget v1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mSelectedWeekDay:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    move v1, v4

    goto :goto_2

    :cond_3
    move v1, v3

    :goto_2
    iput-boolean v1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mHasSelectedDay:Z

    const-string v1, "num_days"

    .line 13
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 14
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mNumDays:I

    .line 15
    :cond_4
    iget v1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mNumDays:I

    iput v1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mNumCells:I

    .line 16
    iget v1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mNumCells:I

    new-array v5, v1, [Ljava/lang/String;

    iput-object v5, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mDayNumbers:[Ljava/lang/String;

    .line 17
    new-array v1, v1, [Z

    iput-object v1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mFocusDay:[Z

    .line 18
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mWeek:I

    .line 19
    iget v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mWeek:I

    invoke-static {v0}, Lsmartisan/util/CalendarUtils;->getJulianMondayFromWeeksSinceEpoch(I)I

    move-result v0

    .line 20
    new-instance v1, Landroid/text/format/Time;

    const-string v5, "Asia/Shanghai"

    invoke-direct {v1, v5}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v1, v0}, Landroid/text/format/Time;->setJulianDay(I)J

    const-string v0, "week_start"

    .line 22
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 23
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mWeekStart:I

    :cond_5
    const-string v0, "max_julianday"

    .line 24
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 25
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mMaxJulianDay:I

    goto :goto_3

    :cond_6
    const v0, 0x7fffffff

    .line 26
    iput v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mMaxJulianDay:I

    :goto_3
    const-string v0, "min_julianday"

    .line 27
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 28
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mMinJulianDay:I

    goto :goto_4

    .line 29
    :cond_7
    iput v3, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mMinJulianDay:I

    .line 30
    :goto_4
    iget v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mWeekStart:I

    invoke-static {v1, v0}, Lsmartisan/util/CalendarUtils;->adjustToBeginningOfWeek(Landroid/text/format/Time;I)V

    .line 31
    invoke-virtual {v1, v4}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v5

    iget-wide v7, v1, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v5, v6, v7, v8}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v0

    iput v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mFirstJulianDay:I

    .line 32
    iget v0, v1, Landroid/text/format/Time;->month:I

    iput v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mFirstMonth:I

    .line 33
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0, p2}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 34
    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 35
    iput-boolean v3, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mHasToday:Z

    .line 36
    iput v2, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mToday:I

    const-string v5, "focus_month"

    .line 37
    invoke-virtual {p1, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :cond_8
    const/4 p1, 0x0

    .line 38
    iput-object p1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mIsDayOutOfRange:[Z

    .line 39
    iput-object p1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mIsTodayBefore:[Z

    move p1, v3

    .line 40
    :goto_5
    iget v5, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mNumCells:I

    if-ge p1, v5, :cond_14

    .line 41
    iget v5, v1, Landroid/text/format/Time;->monthDay:I

    if-ne v5, v4, :cond_9

    .line 42
    iget v5, v1, Landroid/text/format/Time;->month:I

    iput v5, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mFirstMonth:I

    .line 43
    :cond_9
    iget v5, v1, Landroid/text/format/Time;->month:I

    if-ne v5, v2, :cond_a

    .line 44
    iget-object v5, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mFocusDay:[Z

    aput-boolean v4, v5, p1

    goto :goto_6

    .line 45
    :cond_a
    iget-object v5, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mFocusDay:[Z

    aput-boolean v3, v5, p1

    :goto_6
    if-gez v2, :cond_b

    .line 46
    iget-object v5, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mFocusDay:[Z

    aput-boolean v4, v5, p1

    .line 47
    :cond_b
    iget v5, v1, Landroid/text/format/Time;->year:I

    iget v6, v0, Landroid/text/format/Time;->year:I

    if-ne v5, v6, :cond_c

    iget v5, v1, Landroid/text/format/Time;->month:I

    iget v6, v0, Landroid/text/format/Time;->month:I

    if-ne v5, v6, :cond_c

    iget v5, v1, Landroid/text/format/Time;->monthDay:I

    iget v6, v0, Landroid/text/format/Time;->monthDay:I

    if-ne v5, v6, :cond_c

    .line 48
    iput-boolean v4, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mHasToday:Z

    .line 49
    iput p1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mToday:I

    .line 50
    :cond_c
    iget v5, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mFirstJulianDay:I

    add-int/2addr v5, p1

    .line 51
    iget v6, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mMaxJulianDay:I

    if-gt v5, v6, :cond_d

    iget v6, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mMinJulianDay:I

    if-ge v5, v6, :cond_f

    .line 52
    :cond_d
    iget-object v5, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mIsTodayBefore:[Z

    if-nez v5, :cond_e

    .line 53
    iget v5, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mNumCells:I

    new-array v5, v5, [Z

    iput-object v5, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mIsTodayBefore:[Z

    .line 54
    :cond_e
    iget-object v5, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mIsTodayBefore:[Z

    aput-boolean v4, v5, p1

    .line 55
    :cond_f
    iget v5, v1, Landroid/text/format/Time;->year:I

    const/16 v6, 0x7b2

    if-lt v5, v6, :cond_10

    const/16 v6, 0x7f5

    if-le v5, v6, :cond_12

    .line 56
    :cond_10
    iget-object v5, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mFocusDay:[Z

    aput-boolean v3, v5, p1

    .line 57
    iget-object v5, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mIsDayOutOfRange:[Z

    if-nez v5, :cond_11

    .line 58
    iget v5, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mNumCells:I

    new-array v5, v5, [Z

    iput-object v5, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mIsDayOutOfRange:[Z

    .line 59
    :cond_11
    iget-object v5, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mIsDayOutOfRange:[Z

    aput-boolean v4, v5, p1

    .line 60
    :cond_12
    iget-object v5, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mDayNumbers:[Ljava/lang/String;

    iget v6, v1, Landroid/text/format/Time;->monthDay:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, p1

    .line 61
    iget v5, v1, Landroid/text/format/Time;->monthDay:I

    add-int/2addr v5, v4

    iput v5, v1, Landroid/text/format/Time;->monthDay:I

    .line 62
    iget v5, v1, Landroid/text/format/Time;->monthDay:I

    const/16 v6, 0x1c

    if-le v5, v6, :cond_13

    .line 63
    invoke-virtual {v1, v4}, Landroid/text/format/Time;->normalize(Z)J

    :cond_13
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_5

    .line 64
    :cond_14
    iget p1, v1, Landroid/text/format/Time;->monthDay:I

    if-ne p1, v4, :cond_15

    sub-int/2addr p1, v4

    .line 65
    iput p1, v1, Landroid/text/format/Time;->monthDay:I

    .line 66
    invoke-virtual {v1, v4}, Landroid/text/format/Time;->normalize(Z)J

    .line 67
    :cond_15
    iget p1, v1, Landroid/text/format/Time;->month:I

    iput p1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mLastMonth:I

    .line 68
    invoke-virtual {p0}, Lsmartisan/widget/calendar/MonthWeekEventsView;->updateSelectionPositions()V

    .line 69
    invoke-virtual {p0, p2}, Lsmartisan/widget/calendar/MonthWeekEventsView;->updateToday(Ljava/lang/String;)Z

    .line 70
    iget p1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mNumDays:I

    add-int/2addr p1, v4

    iput p1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mNumCells:I

    .line 71
    invoke-direct {p0}, Lsmartisan/widget/calendar/MonthWeekEventsView;->updatePercent()V

    return-void

    .line 72
    :cond_16
    new-instance p1, Ljava/security/InvalidParameterException;

    const-string p2, "You must specify the week number for this view"

    invoke-direct {p1, p2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setmUndrawBackgoundIndex(I)V
    .locals 0

    .line 1
    iput p1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mUndrawBackgoundIndex:I

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public testClearClickedDay()V
    .locals 1

    const/4 v0, -0x1

    .line 1
    iput v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mClickedDayIndex:I

    return-void
.end method

.method public testSetClickedDay(F)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lsmartisan/widget/calendar/MonthWeekEventsView;->getCellPosFromLocation(F)I

    move-result p1

    iput p1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mClickedDayIndex:I

    return-void
.end method

.method protected updateSelectionPositions()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mHasSelectedDay:Z

    if-eqz v0, :cond_1

    .line 2
    iget v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mSelectedWeekDay:I

    iget v1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mWeekStart:I

    sub-int/2addr v0, v1

    if-gez v0, :cond_0

    add-int/lit8 v0, v0, 0x7

    .line 3
    :cond_0
    iget v1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mWidth:I

    iget v2, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mPadding:I

    mul-int/lit8 v3, v2, 0x2

    sub-int/2addr v1, v3

    .line 4
    sget v3, Lsmartisan/widget/calendar/MonthWeekEventsView;->SPACING_WEEK_NUMBER:I

    sub-int/2addr v1, v3

    mul-int v4, v0, v1

    .line 5
    iget v5, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mNumDays:I

    div-int/2addr v4, v5

    add-int/2addr v4, v2

    iput v4, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mSelectedLeft:I

    add-int/lit8 v0, v0, 0x1

    mul-int/2addr v0, v1

    .line 6
    div-int/2addr v0, v5

    add-int/2addr v0, v2

    iput v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mSelectedRight:I

    .line 7
    iget v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mSelectedLeft:I

    add-int/2addr v0, v3

    iput v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mSelectedLeft:I

    .line 8
    iget v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mSelectedRight:I

    add-int/2addr v0, v3

    iput v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mSelectedRight:I

    :cond_1
    return-void
.end method

.method public updateToday(Ljava/lang/String;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mTimeToday:Landroid/text/format/Time;

    iput-object p1, v0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 2
    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 3
    iget-object p1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mTimeToday:Landroid/text/format/Time;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/text/format/Time;->normalize(Z)J

    .line 4
    iget-object p1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mTimeToday:Landroid/text/format/Time;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    iget-object p1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mTimeToday:Landroid/text/format/Time;

    iget-wide v4, p1, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v2, v3, v4, v5}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result p1

    .line 5
    iget v2, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mFirstJulianDay:I

    if-lt p1, v2, :cond_0

    iget v3, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mNumDays:I

    add-int/2addr v3, v2

    if-ge p1, v3, :cond_0

    .line 6
    iput-boolean v0, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mHasToday:Z

    sub-int/2addr p1, v2

    .line 7
    iput p1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mTodayIndex:I

    goto :goto_0

    .line 8
    :cond_0
    iput-boolean v1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mHasToday:Z

    const/4 p1, -0x1

    .line 9
    iput p1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mTodayIndex:I

    .line 10
    :goto_0
    iget-boolean p1, p0, Lsmartisan/widget/calendar/MonthWeekEventsView;->mHasToday:Z

    return p1
.end method
