.class public Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;
.super Landroid/widget/LinearLayout;
.source "SmartisanNumberPicker1Day.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsmartisan/widget/calendar/SmartisanNumberPicker1Day$Formatter;,
        Lsmartisan/widget/calendar/SmartisanNumberPicker1Day$OnScrollListener;,
        Lsmartisan/widget/calendar/SmartisanNumberPicker1Day$OnValueChangeListener;,
        Lsmartisan/widget/calendar/SmartisanNumberPicker1Day$TwoDigitFormatter;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final DEFAULT_TEXT_SIZE:I = 0x2d

.field private static final DEFAUlT_TEXT_COLOR:I

.field private static final SELECTOR_ADJUSTMENT_DURATION_MILLIS:I = 0x320

.field private static final SELECTOR_MAX_FLING_VELOCITY_ADJUSTMENT:I = 0x8

.field private static final SIZE_UNSPECIFIED:I = -0x1

.field private static final SNAP_SCROLL_DURATION:I = 0x12c

.field private static final TAG:Ljava/lang/String; = "SmartisanNumberPicker"

.field private static final TOP_AND_BOTTOM_FADING_EDGE_STRENGTH:F = 0.0f

.field private static final VOLUME:F = 0.0945f

.field private static sPool:Landroid/media/SoundPool;

.field private static sSoundId:I

.field private static final sTwoDigitFormatter:Lsmartisan/widget/calendar/SmartisanNumberPicker1Day$TwoDigitFormatter;


# instance fields
.field private SELECTOR_MIDDLE_ITEM_INDEX:I

.field private SELECTOR_WHEEL_ITEM_COUNT:I

.field private final mAdjustScroller:Landroid/widget/Scroller;

.field private mBottomSelectionDividerBottom:I

.field private final mComputeMaxWidth:Z

.field private mContext:Landroid/content/Context;

.field private mCurrentScrollOffset:I

.field private mDisplayedValues:[Ljava/lang/String;

.field private final mFlingScroller:Landroid/widget/Scroller;

.field private mFormatter:Lsmartisan/widget/calendar/SmartisanNumberPicker1Day$Formatter;

.field private final mHasSelectorWheel:Z

.field private mHighlightColor:I

.field private mHighlightSize:I

.field private mIngonreMoveEvents:Z

.field private mInitialScrollOffset:I

.field private mLastDownEventTime:J

.field private mLastDownEventY:F

.field private mLastDownOrMoveEventY:F

.field private final mMaxHeight:I

.field private mMaxValue:I

.field private mMaxWidth:I

.field private mMaximumFlingVelocity:I

.field private mMiddleScrollOffset:I

.field private final mMinHeight:I

.field private mMinValue:I

.field private final mMinWidth:I

.field private mMinimumFlingVelocity:I

.field private mNormalColor:I

.field private mNormalSize:I

.field private mOldTime:I

.field private mOnScrollListener:Lsmartisan/widget/calendar/SmartisanNumberPicker1Day$OnScrollListener;

.field private mOnValueChangeListener:Lsmartisan/widget/calendar/SmartisanNumberPicker1Day$OnValueChangeListener;

.field private mPreviousScrollerY:I

.field private mScrollState:I

.field private mSelectorElementHeight:I

.field private final mSelectorIndexToStringCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectorIndices:[I

.field private mSelectorTextGapHeight:I

.field private final mSelectorWheelPaint:Landroid/graphics/Paint;

.field private mShowSoftInputOnTap:Z

.field private mSoundRunnable:Ljava/lang/Runnable;

.field private mTopSelectionDividerTop:I

.field private mTouchSlop:I

.field private mValue:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mWrapSelectorWheel:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "#545454"

    .line 1
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->DEFAUlT_TEXT_COLOR:I

    .line 2
    new-instance v0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day$TwoDigitFormatter;

    invoke-direct {v0}, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day$TwoDigitFormatter;-><init>()V

    sput-object v0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->sTwoDigitFormatter:Lsmartisan/widget/calendar/SmartisanNumberPicker1Day$TwoDigitFormatter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x3

    .line 4
    iput p2, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->SELECTOR_WHEEL_ITEM_COUNT:I

    .line 5
    iget p2, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->SELECTOR_WHEEL_ITEM_COUNT:I

    div-int/lit8 p2, p2, 0x2

    iput p2, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->SELECTOR_MIDDLE_ITEM_INDEX:I

    .line 6
    new-instance p2, Landroid/util/SparseArray;

    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    iput-object p2, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    .line 7
    iget p2, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->SELECTOR_WHEEL_ITEM_COUNT:I

    new-array p2, p2, [I

    iput-object p2, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mSelectorIndices:[I

    .line 8
    sget p2, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->DEFAUlT_TEXT_COLOR:I

    iput p2, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mNormalColor:I

    .line 9
    iput p2, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mHighlightColor:I

    const/high16 p2, -0x80000000

    .line 10
    iput p2, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mInitialScrollOffset:I

    const/4 p2, 0x0

    .line 11
    iput p2, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mScrollState:I

    const/4 p3, -0x1

    .line 12
    iput p3, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mOldTime:I

    .line 13
    new-instance v0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day$1;

    invoke-direct {v0, p0}, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day$1;-><init>(Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;)V

    iput-object v0, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mSoundRunnable:Ljava/lang/Runnable;

    .line 14
    iput-object p1, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mContext:Landroid/content/Context;

    .line 15
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lsmartisan/widget/R$dimen;->date_pick_title_textsize:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mNormalSize:I

    .line 16
    iget v0, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mNormalSize:I

    iput v0, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mHighlightSize:I

    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mHasSelectorWheel:Z

    .line 18
    iput p3, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mMinHeight:I

    .line 19
    iput p3, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mMaxHeight:I

    .line 20
    iget v1, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mMinHeight:I

    if-eq v1, p3, :cond_1

    iget v2, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mMaxHeight:I

    if-eq v2, p3, :cond_1

    if-gt v1, v2, :cond_0

    goto :goto_0

    .line 21
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "minHeight > maxHeight"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 22
    :cond_1
    :goto_0
    iput p3, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mMinWidth:I

    .line 23
    iput p3, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mMaxWidth:I

    .line 24
    iget v1, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mMinWidth:I

    if-eq v1, p3, :cond_3

    iget v2, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mMaxWidth:I

    if-eq v2, p3, :cond_3

    if-gt v1, v2, :cond_2

    goto :goto_1

    .line 25
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "minWidth > maxWidth"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 26
    :cond_3
    :goto_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lsmartisan/widget/R$integer;->time_picker_wheel_item_count:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->SELECTOR_WHEEL_ITEM_COUNT:I

    .line 27
    iget v1, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->SELECTOR_WHEEL_ITEM_COUNT:I

    div-int/lit8 v2, v1, 0x2

    iput v2, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->SELECTOR_MIDDLE_ITEM_INDEX:I

    .line 28
    new-array v1, v1, [I

    iput-object v1, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mSelectorIndices:[I

    .line 29
    iget v1, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mMaxWidth:I

    if-ne v1, p3, :cond_4

    move p2, v0

    :cond_4
    iput-boolean p2, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mComputeMaxWidth:Z

    .line 30
    iget-boolean p2, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mHasSelectorWheel:Z

    xor-int/2addr p2, v0

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setWillNotDraw(Z)V

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 32
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p2

    iput p2, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mTouchSlop:I

    .line 33
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result p2

    iput p2, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mMinimumFlingVelocity:I

    .line 34
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p1

    div-int/lit8 p1, p1, 0x8

    iput p1, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mMaximumFlingVelocity:I

    .line 35
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 36
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 37
    sget-object p2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 38
    iget p2, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mNormalSize:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 39
    iget p2, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mNormalColor:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 40
    iput-object p1, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mSelectorWheelPaint:Landroid/graphics/Paint;

    .line 41
    new-instance p1, Landroid/widget/Scroller;

    iget-object p2, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mContext:Landroid/content/Context;

    const/4 p3, 0x0

    invoke-direct {p1, p2, p3, v0}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    iput-object p1, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mFlingScroller:Landroid/widget/Scroller;

    .line 42
    iget-object p1, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 p2, 0x40200000    # 2.5f

    cmpl-float p1, p1, p2

    if-nez p1, :cond_5

    .line 43
    iget-object p1, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mFlingScroller:Landroid/widget/Scroller;

    const p3, 0x3b378034    # 0.0028f

    invoke-virtual {p1, p3}, Landroid/widget/Scroller;->setFriction(F)V

    goto :goto_2

    .line 44
    :cond_5
    iget-object p1, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mFlingScroller:Landroid/widget/Scroller;

    const p3, 0x3ac49ba6    # 0.0015f

    invoke-virtual {p1, p3}, Landroid/widget/Scroller;->setFriction(F)V

    .line 45
    :goto_2
    new-instance p1, Landroid/widget/Scroller;

    iget-object p3, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0, p2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-direct {p1, p3, v0}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object p1, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mAdjustScroller:Landroid/widget/Scroller;

    .line 46
    iget-object p1, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mAdjustScroller:Landroid/widget/Scroller;

    const p2, 0x3a03126f    # 5.0E-4f

    invoke-virtual {p1, p2}, Landroid/widget/Scroller;->setFriction(F)V

    return-void
.end method

.method static synthetic access$000()Landroid/media/SoundPool;
    .locals 1

    .line 1
    sget-object v0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->sPool:Landroid/media/SoundPool;

    return-object v0
.end method

.method static synthetic access$100()I
    .locals 1

    .line 1
    sget v0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->sSoundId:I

    return v0
.end method

.method private changeValueByOne(Z)V
    .locals 13

    .line 1
    iget-boolean v0, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mHasSelectorWheel:Z

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mFlingScroller:Landroid/widget/Scroller;

    invoke-direct {p0, v0}, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-direct {p0, v0}, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    :cond_0
    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mPreviousScrollerY:I

    if-eqz p1, :cond_1

    .line 5
    iget-object v1, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mFlingScroller:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget p1, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mSelectorElementHeight:I

    neg-int v5, p1

    const/16 v6, 0x12c

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v7, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mFlingScroller:Landroid/widget/Scroller;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget v11, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mSelectorElementHeight:I

    const/16 v12, 0x12c

    invoke-virtual/range {v7 .. v12}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 7
    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    if-eqz p1, :cond_3

    .line 8
    iget p1, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mValue:I

    add-int/2addr p1, v0

    invoke-direct {p0, p1, v0}, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->setValueInternal(IZ)V

    goto :goto_1

    .line 9
    :cond_3
    iget p1, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mValue:I

    sub-int/2addr p1, v0

    invoke-direct {p0, p1, v0}, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->setValueInternal(IZ)V

    :goto_1
    return-void
.end method

.method private decrementSelectorIndices([I)V
    .locals 3

    .line 1
    array-length v0, p1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-lez v0, :cond_0

    add-int/lit8 v2, v0, -0x1

    .line 2
    aget v2, p1, v2

    aput v2, p1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3
    :cond_0
    aget v0, p1, v1

    sub-int/2addr v0, v1

    .line 4
    iget-boolean v1, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mWrapSelectorWheel:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mMinValue:I

    if-ge v0, v1, :cond_1

    .line 5
    iget v0, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mMaxValue:I

    :cond_1
    const/4 v1, 0x0

    .line 6
    aput v0, p1, v1

    .line 7
    invoke-direct {p0, v0}, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->ensureCachedScrollSelectorValue(I)V

    return-void
.end method

.method private ensureCachedScrollSelectorValue(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    .line 2
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    return-void

    .line 3
    :cond_0
    iget v1, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mMinValue:I

    if-lt p1, v1, :cond_3

    iget v2, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mMaxValue:I

    if-le p1, v2, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v2, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mDisplayedValues:[Ljava/lang/String;

    if-eqz v2, :cond_2

    sub-int v1, p1, v1

    .line 5
    aget-object v1, v2, v1

    goto :goto_1

    .line 6
    :cond_2
    invoke-direct {p0, p1}, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->formatNumber(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    :goto_0
    const-string v1, ""

    .line 7
    :goto_1
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method private ensureScrollWheelAdjusted()Z
    .locals 7

    .line 1
    iget v0, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mInitialScrollOffset:I

    iget v1, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mCurrentScrollOffset:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2
    iput v1, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mPreviousScrollerY:I

    .line 3
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mSelectorElementHeight:I

    div-int/lit8 v3, v2, 0x2

    if-le v1, v3, :cond_1

    if-lez v0, :cond_0

    neg-int v2, v2

    :cond_0
    add-int/2addr v0, v2

    :cond_1
    move v5, v0

    .line 4
    iget-object v1, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mAdjustScroller:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v6, 0x320

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 5
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    const/4 v0, 0x1

    return v0

    :cond_2
    return v1
.end method

.method private fling(I)V
    .locals 10

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mPreviousScrollerY:I

    if-lez p1, :cond_0

    .line 2
    iget-object v1, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mFlingScroller:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const v9, 0x7fffffff

    move v5, p1

    invoke-virtual/range {v1 .. v9}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mFlingScroller:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const v3, 0x7fffffff

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const v9, 0x7fffffff

    move v5, p1

    invoke-virtual/range {v1 .. v9}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 4
    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method private formatNumber(I)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mFormatter:Lsmartisan/widget/calendar/SmartisanNumberPicker1Day$Formatter;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day$Formatter;->format(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->formatNumberWithLocale(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private static formatNumberWithLocale(I)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "%d"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getTextColorByOffset(I)I
    .locals 8

    .line 1
    iget v0, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mMiddleScrollOffset:I

    iget v1, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mSelectorElementHeight:I

    sub-int v2, v0, v1

    if-le p1, v2, :cond_4

    add-int v2, v0, v1

    if-lt p1, v2, :cond_0

    goto :goto_1

    :cond_0
    if-ne p1, v0, :cond_1

    .line 2
    iget p1, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mHighlightColor:I

    return p1

    :cond_1
    const/high16 v2, 0x3f800000    # 1.0f

    if-ge p1, v0, :cond_2

    sub-int/2addr v0, v1

    sub-int v0, p1, v0

    int-to-float v0, v0

    mul-float/2addr v0, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    .line 3
    :goto_0
    iget v1, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mMiddleScrollOffset:I

    if-lt p1, v1, :cond_3

    .line 4
    iget v0, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mSelectorElementHeight:I

    add-int/2addr v1, v0

    sub-int/2addr v1, p1

    int-to-float p1, v1

    mul-float/2addr p1, v2

    int-to-float v0, v0

    div-float v0, p1, v0

    .line 5
    :cond_3
    iget p1, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mNormalColor:I

    const v1, 0xffffff

    and-int v2, p1, v1

    .line 6
    iget v3, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mHighlightColor:I

    and-int/2addr v1, v3

    and-int/lit16 v4, v2, 0xff

    and-int/lit16 v5, v1, 0xff

    int-to-float v6, v4

    sub-int/2addr v5, v4

    int-to-float v4, v5

    mul-float/2addr v4, v0

    add-float/2addr v6, v4

    float-to-int v4, v6

    or-int/lit8 v4, v4, 0x0

    shr-int/lit8 v5, v2, 0x8

    and-int/lit16 v5, v5, 0xff

    shr-int/lit8 v6, v1, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-float v7, v5

    sub-int/2addr v6, v5

    int-to-float v5, v6

    mul-float/2addr v5, v0

    add-float/2addr v7, v5

    float-to-int v5, v7

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    shr-int/lit8 v2, v2, 0x10

    and-int/lit16 v2, v2, 0xff

    shr-int/lit8 v1, v1, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-float v5, v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float/2addr v1, v0

    add-float/2addr v5, v1

    float-to-int v1, v5

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v1, v4

    shr-int/lit8 p1, p1, 0x18

    shr-int/lit8 v2, v3, 0x18

    int-to-float v3, p1

    sub-int/2addr v2, p1

    int-to-float p1, v2

    mul-float/2addr p1, v0

    add-float/2addr v3, p1

    float-to-int p1, v3

    shl-int/lit8 p1, p1, 0x18

    or-int/2addr p1, v1

    return p1

    .line 7
    :cond_4
    :goto_1
    iget p1, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mNormalColor:I

    return p1
.end method

.method private getTextSizeByOffset(I)F
    .locals 9

    .line 1
    iget v0, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mMiddleScrollOffset:I

    iget v1, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mSelectorElementHeight:I

    sub-int v2, v0, v1

    if-le p1, v2, :cond_3

    add-int v2, v0, v1

    if-lt p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    if-ge p1, v0, :cond_1

    .line 2
    iget v4, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mNormalSize:I

    int-to-double v5, v4

    sub-int/2addr v0, v1

    sub-int/2addr p1, v0

    int-to-double v7, p1

    mul-double/2addr v7, v2

    int-to-double v0, v1

    div-double/2addr v7, v0

    iget p1, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mHighlightSize:I

    sub-int/2addr p1, v4

    int-to-double v0, p1

    mul-double/2addr v7, v0

    add-double/2addr v5, v7

    double-to-float p1, v5

    return p1

    :cond_1
    if-lt p1, v0, :cond_2

    .line 3
    iget v4, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mNormalSize:I

    int-to-double v5, v4

    add-int/2addr v0, v1

    sub-int/2addr v0, p1

    int-to-double v7, v0

    mul-double/2addr v7, v2

    int-to-double v0, v1

    div-double/2addr v7, v0

    iget p1, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mHighlightSize:I

    sub-int/2addr p1, v4

    int-to-double v0, p1

    mul-double/2addr v7, v0

    add-double/2addr v5, v7

    double-to-float p1, v5

    return p1

    .line 4
    :cond_2
    iget p1, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mNormalSize:I

    int-to-float p1, p1

    return p1

    .line 5
    :cond_3
    :goto_0
    iget p1, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mNormalSize:I

    int-to-float p1, p1

    return p1
.end method

.method public static final getTwoDigitFormatter()Lsmartisan/widget/calendar/SmartisanNumberPicker1Day$Formatter;
    .locals 1

    .line 1
    sget-object v0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->sTwoDigitFormatter:Lsmartisan/widget/calendar/SmartisanNumberPicker1Day$TwoDigitFormatter;

    return-object v0
.end method

.method private getWrappedSelectorIndex(I)I
    .locals 2

    .line 1
    iget v0, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mMaxValue:I

    if-le p1, v0, :cond_0

    .line 2
    iget v1, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mMinValue:I

    sub-int/2addr p1, v0

    rem-int/2addr p1, v0

    add-int/2addr v1, p1

    add-int/lit8 v1, v1, -0x1

    return v1

    .line 3
    :cond_0
    iget v1, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mMinValue:I

    if-ge p1, v1, :cond_1

    sub-int p1, v1, p1

    sub-int v1, v0, v1

    .line 4
    rem-int/2addr p1, v1

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x1

    return v0

    :cond_1
    return p1
.end method

.method private incrementSelectorIndices([I)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    :goto_0
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    .line 2
    aget v2, p1, v1

    aput v2, p1, v0

    move v0, v1

    goto :goto_0

    .line 3
    :cond_0
    array-length v0, p1

    add-int/lit8 v0, v0, -0x2

    aget v0, p1, v0

    add-int/lit8 v0, v0, 0x1

    .line 4
    iget-boolean v1, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mWrapSelectorWheel:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mMaxValue:I

    if-le v0, v1, :cond_1

    .line 5
    iget v0, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mMinValue:I

    .line 6
    :cond_1
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    aput v0, p1, v1

    .line 7
    invoke-direct {p0, v0}, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->ensureCachedScrollSelectorValue(I)V

    return-void
.end method

.method private initializeFadingEdges()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVerticalFadingEdgeEnabled(Z)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mNormalSize:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setFadingEdgeLength(I)V

    return-void
.end method

.method private initializeSelectorWheel()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->initializeSelectorWheelIndices()V

    .line 2
    iget-object v0, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mSelectorIndices:[I

    .line 3
    array-length v1, v0

    iget v2, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mNormalSize:I

    mul-int/2addr v1, v2

    .line 4
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTop()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v2, v1

    int-to-float v1, v2

    .line 5
    array-length v0, v0

    int-to-float v0, v0

    div-float/2addr v1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr v1, v0

    float-to-int v0, v1

    .line 6
    iput v0, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mSelectorTextGapHeight:I

    .line 7
    iget v0, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mNormalSize:I

    iget v1, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mSelectorTextGapHeight:I

    add-int/2addr v0, v1

    iput v0, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mSelectorElementHeight:I

    .line 8
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    iget v1, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mNormalSize:I

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 9
    iget v1, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mSelectorElementHeight:I

    iget v2, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->SELECTOR_MIDDLE_ITEM_INDEX:I

    mul-int v3, v1, v2

    sub-int/2addr v0, v3

    iput v0, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mInitialScrollOffset:I

    .line 10
    iget v0, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mInitialScrollOffset:I

    mul-int/2addr v2, v1

    add-int/2addr v2, v0

    iput v2, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mMiddleScrollOffset:I

    .line 11
    iput v0, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mCurrentScrollOffset:I

    return-void
.end method

.method private initializeSelectorWheelIndices()V
    .locals 5

    .line 1
    iget-object v0, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 2
    iget-object v0, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mSelectorIndices:[I

    .line 3
    invoke-virtual {p0}, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->getValue()I

    move-result v1

    const/4 v2, 0x0

    .line 4
    :goto_0
    iget-object v3, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mSelectorIndices:[I

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 5
    iget v3, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->SELECTOR_MIDDLE_ITEM_INDEX:I

    sub-int v3, v2, v3

    add-int/2addr v3, v1

    .line 6
    iget-boolean v4, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mWrapSelectorWheel:Z

    if-eqz v4, :cond_0

    .line 7
    invoke-direct {p0, v3}, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->getWrappedSelectorIndex(I)I

    move-result v3

    .line 8
    :cond_0
    aput v3, v0, v2

    .line 9
    aget v3, v0, v2

    invoke-direct {p0, v3}, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->ensureCachedScrollSelectorValue(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private isTimeChanged(I)Z
    .locals 2

    .line 1
    iget v0, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mOldTime:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2
    iput p1, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mOldTime:I

    .line 3
    :cond_0
    iget v0, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mOldTime:I

    if-ne v0, p1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "SmartisanNumberPicker"

    .line 1
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private makeMeasureSpec(II)I
    .locals 4

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    return p1

    .line 1
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v2, -0x80000000

    const/high16 v3, 0x40000000    # 2.0f

    if-eq v1, v2, :cond_3

    if-eqz v1, :cond_2

    if-ne v1, v3, :cond_1

    return p1

    .line 3
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown measure mode: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_2
    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    return p1

    .line 5
    :cond_3
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    return p1
.end method

.method private moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z
    .locals 6

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p1, v0}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 2
    invoke-virtual {p1}, Landroid/widget/Scroller;->getFinalY()I

    move-result v1

    invoke-virtual {p1}, Landroid/widget/Scroller;->getCurrY()I

    move-result p1

    sub-int/2addr v1, p1

    .line 3
    iget p1, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mCurrentScrollOffset:I

    add-int/2addr p1, v1

    iget v2, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mSelectorElementHeight:I

    rem-int/2addr p1, v2

    .line 4
    iget v2, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mInitialScrollOffset:I

    sub-int/2addr v2, p1

    const/4 p1, 0x0

    if-eqz v2, :cond_4

    .line 5
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mSelectorElementHeight:I

    div-int/lit8 v5, v4, 0x2

    if-le v3, v5, :cond_1

    if-lez v2, :cond_0

    sub-int/2addr v2, v4

    goto :goto_0

    :cond_0
    add-int/2addr v2, v4

    :cond_1
    :goto_0
    add-int/2addr v1, v2

    .line 6
    iget v2, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->SELECTOR_WHEEL_ITEM_COUNT:I

    iget v3, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mSelectorElementHeight:I

    mul-int/2addr v2, v3

    .line 7
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-le v3, v2, :cond_3

    if-lez v1, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    neg-int v1, v2

    .line 8
    :cond_3
    :goto_1
    invoke-virtual {p0, p1, v1}, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->scrollBy(II)V

    return v0

    :cond_4
    return p1
.end method

.method private notifyChange(II)V
    .locals 1

    .line 1
    iget-object p2, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mOnValueChangeListener:Lsmartisan/widget/calendar/SmartisanNumberPicker1Day$OnValueChangeListener;

    if-eqz p2, :cond_0

    .line 2
    iget v0, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mValue:I

    invoke-interface {p2, p0, p1, v0}, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day$OnValueChangeListener;->onValueChange(Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;II)V

    :cond_0
    return-void
.end method

.method private onScrollStateChange(I)V
    .locals 1

    .line 1
    iget v0, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mScrollState:I

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iput p1, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mScrollState:I

    .line 3
    iget-object v0, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mOnScrollListener:Lsmartisan/widget/calendar/SmartisanNumberPicker1Day$OnScrollListener;

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0, p0, p1}, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day$OnScrollListener;->onScrollStateChange(Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;I)V

    :cond_1
    return-void
.end method

.method private onScrollerFinished(Landroid/widget/Scroller;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mFlingScroller:Landroid/widget/Scroller;

    if-ne p1, v0, :cond_0

    .line 2
    invoke-direct {p0}, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->ensureScrollWheelAdjusted()Z

    const/4 p1, 0x0

    .line 3
    invoke-direct {p0, p1}, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->onScrollStateChange(I)V

    :cond_0
    return-void
.end method

.method private resolveSizeAndStateRespectingMinSize(III)I
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/4 p2, 0x0

    .line 2
    invoke-static {p1, p3, p2}, Landroid/widget/LinearLayout;->resolveSizeAndState(III)I

    move-result p1

    return p1

    :cond_0
    return p2
.end method

.method private setValueInternal(IZ)V
    .locals 1

    .line 1
    iget v0, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mValue:I

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v0, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mWrapSelectorWheel:Z

    if-eqz v0, :cond_1

    .line 3
    invoke-direct {p0, p1}, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->getWrappedSelectorIndex(I)I

    move-result p1

    goto :goto_0

    .line 4
    :cond_1
    iget v0, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mMinValue:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 5
    iget v0, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mMaxValue:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 6
    :goto_0
    iget v0, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mValue:I

    .line 7
    iput p1, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mValue:I

    if-eqz p2, :cond_2

    .line 8
    invoke-direct {p0, v0, p1}, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->notifyChange(II)V

    .line 9
    :cond_2
    invoke-direct {p0}, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->initializeSelectorWheelIndices()V

    .line 10
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method private tryComputeMaxWidth()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mComputeMaxWidth:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mDisplayedValues:[Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    :goto_0
    const/16 v2, 0x9

    if-gt v1, v2, :cond_2

    .line 3
    iget-object v2, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-static {v1}, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->formatNumberWithLocale(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    cmpl-float v3, v2, v0

    if-lez v3, :cond_1

    move v0, v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_2
    iget v0, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mMaxValue:I

    :goto_1
    if-lez v0, :cond_5

    .line 5
    div-int/lit8 v0, v0, 0xa

    goto :goto_1

    .line 6
    :cond_3
    array-length v0, v0

    move v2, v1

    :goto_2
    if-ge v1, v0, :cond_5

    .line 7
    iget-object v3, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mDisplayedValues:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    int-to-float v4, v2

    cmpl-float v4, v3, v4

    if-lez v4, :cond_4

    float-to-int v2, v3

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 4

    .line 1
    iget-object v0, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mFlingScroller:Landroid/widget/Scroller;

    .line 2
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v0, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mAdjustScroller:Landroid/widget/Scroller;

    .line 4
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 6
    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    .line 7
    iget v2, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mPreviousScrollerY:I

    if-nez v2, :cond_1

    .line 8
    invoke-virtual {v0}, Landroid/widget/Scroller;->getStartY()I

    move-result v2

    iput v2, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mPreviousScrollerY:I

    :cond_1
    const/4 v2, 0x0

    .line 9
    iget v3, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mPreviousScrollerY:I

    sub-int v3, v1, v3

    invoke-virtual {p0, v2, v3}, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->scrollBy(II)V

    .line 10
    iput v1, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mPreviousScrollerY:I

    .line 11
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 12
    invoke-direct {p0, v0}, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->onScrollerFinished(Landroid/widget/Scroller;)V

    goto :goto_0

    .line 13
    :cond_2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    :goto_0
    return-void
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic getContentDescription()Ljava/lang/CharSequence;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "GetContentDescriptionOverride"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->getContentDescription()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentDescription()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "GetContentDescriptionOverride"
        }
    .end annotation

    const-string v0, ""

    return-object v0
.end method

.method public getDisplayedValues()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mDisplayedValues:[Ljava/lang/String;

    return-object v0
.end method

.method public getMaxValue()I
    .locals 1

    .line 1
    iget v0, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mMaxValue:I

    return v0
.end method

.method public getMinValue()I
    .locals 1

    .line 1
    iget v0, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mMinValue:I

    return v0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getValue()I
    .locals 1

    .line 1
    iget v0, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mValue:I

    return v0
.end method

.method public getWrapSelectorWheel()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mWrapSelectorWheel:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 2
    sget-object v0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->sPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    const/4 v0, 0x0

    .line 4
    sput-object v0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->sPool:Landroid/media/SoundPool;

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 1
    iget-boolean v0, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mHasSelectorWheel:Z

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void

    .line 3
    :cond_0
    iget v0, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mCurrentScrollOffset:I

    .line 4
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getRight()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    const/4 v2, 0x2

    div-int/2addr v1, v2

    .line 5
    iget-object v3, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mSelectorIndices:[I

    const/4 v4, 0x0

    move v5, v0

    move v0, v4

    .line 6
    :goto_0
    array-length v6, v3

    if-ge v0, v6, :cond_2

    .line 7
    aget v6, v3, v0

    .line 8
    iget-object v7, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 9
    invoke-direct {p0, v5}, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->getTextSizeByOffset(I)F

    move-result v7

    .line 10
    iget-object v8, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 11
    invoke-direct {p0, v5}, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->getTextColorByOffset(I)I

    move-result v7

    .line 12
    iget-object v8, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v8, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 13
    iget-object v7, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mSelectorWheelPaint:Landroid/graphics/Paint;

    array-length v8, v3

    div-int/2addr v8, v2

    if-ne v0, v8, :cond_1

    const/4 v8, 0x1

    goto :goto_1

    :cond_1
    move v8, v4

    :goto_1
    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    int-to-float v7, v1

    int-to-float v8, v5

    .line 14
    iget-object v9, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 15
    iget v6, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mSelectorElementHeight:I

    add-int/2addr v5, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 16
    :cond_2
    aget p1, v3, v2

    invoke-direct {p0, p1}, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->isTimeChanged(I)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mFlingScroller:Landroid/widget/Scroller;

    .line 17
    invoke-virtual {p1}, Landroid/widget/Scroller;->getFinalY()I

    move-result p1

    iget-object v0, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    const/16 v0, 0x32

    if-le p1, v0, :cond_3

    .line 18
    aget p1, v3, v2

    iput p1, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mOldTime:I

    .line 19
    iget-object p1, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mSoundRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0xa

    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    .line 20
    :cond_3
    aget p1, v3, v2

    invoke-direct {p0, p1}, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->isTimeChanged(I)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mFlingScroller:Landroid/widget/Scroller;

    .line 21
    invoke-virtual {p1}, Landroid/widget/Scroller;->getFinalY()I

    move-result p1

    iget-object v0, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    if-gt p1, v0, :cond_4

    .line 22
    aget p1, v3, v2

    iput p1, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mOldTime:I

    .line 23
    iget-object p1, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mSoundRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x1e

    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    :goto_2
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2
    const-class v0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 4
    iget v0, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mMinValue:I

    iget v1, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mValue:I

    add-int/2addr v0, v1

    iget v1, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mSelectorElementHeight:I

    mul-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollY(I)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mHasSelectorWheel:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 3
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mLastDownEventY:F

    iput v0, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mLastDownOrMoveEventY:F

    .line 4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    iput-wide v2, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mLastDownEventTime:J

    .line 5
    iput-boolean v1, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mIngonreMoveEvents:Z

    .line 6
    iput-boolean v1, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mShowSoftInputOnTap:Z

    .line 7
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 8
    iget-object p1, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_2

    .line 9
    iget-object p1, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {p1, v0}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 10
    iget-object p1, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {p1, v0}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 11
    invoke-direct {p0, v1}, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->onScrollStateChange(I)V

    goto :goto_0

    .line 12
    :cond_2
    iget-object p1, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_3

    .line 13
    iget-object p1, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {p1, v0}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 14
    iget-object p1, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {p1, v0}, Landroid/widget/Scroller;->forceFinished(Z)V

    goto :goto_0

    .line 15
    :cond_3
    iget p1, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mLastDownEventY:F

    iget v1, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mTopSelectionDividerTop:I

    int-to-float v1, v1

    cmpg-float v1, p1, v1

    if-gez v1, :cond_4

    goto :goto_0

    .line 16
    :cond_4
    iget v1, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mBottomSelectionDividerBottom:I

    int-to-float v1, v1

    cmpl-float p1, p1, v1

    if-lez p1, :cond_5

    goto :goto_0

    .line 17
    :cond_5
    iput-boolean v0, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mShowSoftInputOnTap:Z

    :goto_0
    return v0

    :cond_6
    :goto_1
    return v1
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mHasSelectorWheel:Z

    if-nez v0, :cond_0

    .line 2
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 3
    invoke-direct {p0}, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->initializeSelectorWheel()V

    .line 4
    invoke-direct {p0}, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->initializeFadingEdges()V

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mHasSelectorWheel:Z

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void

    .line 3
    :cond_0
    iget v0, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mMaxWidth:I

    invoke-direct {p0, p1, v0}, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->makeMeasureSpec(II)I

    move-result v0

    .line 4
    iget v1, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mMaxHeight:I

    invoke-direct {p0, p2, v1}, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->makeMeasureSpec(II)I

    move-result v1

    .line 5
    invoke-super {p0, v0, v1}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 6
    iget v0, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mMinWidth:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v1

    invoke-direct {p0, v0, v1, p1}, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->resolveSizeAndStateRespectingMinSize(III)I

    move-result p1

    .line 7
    iget v0, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mMinHeight:I

    .line 8
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v1

    .line 9
    invoke-direct {p0, v0, v1, p2}, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->resolveSizeAndStateRespectingMinSize(III)I

    move-result p2

    .line 10
    invoke-virtual {p0, p1, p2}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mHasSelectorWheel:Z

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 2
    :cond_0
    iget-object v0, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_1

    .line 3
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 4
    :cond_1
    iget-object v0, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_6

    if-eq v0, v2, :cond_2

    goto/16 :goto_3

    .line 6
    :cond_2
    iget-boolean v0, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mIngonreMoveEvents:Z

    if-eqz v0, :cond_3

    goto/16 :goto_3

    .line 7
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 8
    iget v0, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mScrollState:I

    if-eq v0, v3, :cond_4

    .line 9
    iget v0, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mLastDownEventY:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    .line 10
    iget v1, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mTouchSlop:I

    if-le v0, v1, :cond_5

    .line 11
    invoke-direct {p0, v3}, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->onScrollStateChange(I)V

    goto :goto_0

    .line 12
    :cond_4
    iget v0, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mLastDownOrMoveEventY:F

    sub-float v0, p1, v0

    float-to-int v0, v0

    .line 13
    invoke-virtual {p0, v1, v0}, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->scrollBy(II)V

    .line 14
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    .line 15
    :cond_5
    :goto_0
    iput p1, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mLastDownOrMoveEventY:F

    goto :goto_3

    .line 16
    :cond_6
    iget-object v0, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v4, 0x3e8

    .line 17
    iget v5, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mMaximumFlingVelocity:I

    int-to-float v5, v5

    invoke-virtual {v0, v4, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 18
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    float-to-int v0, v0

    .line 19
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mMinimumFlingVelocity:I

    if-le v4, v5, :cond_7

    .line 20
    invoke-direct {p0, v0}, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->fling(I)V

    .line 21
    invoke-direct {p0, v2}, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->onScrollStateChange(I)V

    goto :goto_2

    .line 22
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    int-to-float v2, v0

    .line 23
    iget v4, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mLastDownEventY:F

    sub-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-int v2, v2

    .line 24
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    iget-wide v6, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mLastDownEventTime:J

    sub-long/2addr v4, v6

    .line 25
    iget p1, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mTouchSlop:I

    if-gt v2, p1, :cond_a

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result p1

    int-to-long v6, p1

    cmp-long p1, v4, v6

    if-gez p1, :cond_a

    .line 26
    iget-boolean p1, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mShowSoftInputOnTap:Z

    if-eqz p1, :cond_8

    .line 27
    iput-boolean v1, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mShowSoftInputOnTap:Z

    goto :goto_1

    .line 28
    :cond_8
    iget p1, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mSelectorElementHeight:I

    div-int/2addr v0, p1

    iget p1, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->SELECTOR_MIDDLE_ITEM_INDEX:I

    sub-int/2addr v0, p1

    if-lez v0, :cond_9

    .line 29
    invoke-direct {p0, v3}, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->changeValueByOne(Z)V

    goto :goto_1

    :cond_9
    if-gez v0, :cond_b

    .line 30
    invoke-direct {p0, v1}, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->changeValueByOne(Z)V

    goto :goto_1

    .line 31
    :cond_a
    invoke-direct {p0}, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->ensureScrollWheelAdjusted()Z

    .line 32
    :cond_b
    :goto_1
    invoke-direct {p0, v1}, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->onScrollStateChange(I)V

    .line 33
    :goto_2
    iget-object p1, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 p1, 0x0

    .line 34
    iput-object p1, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mVelocityTracker:Landroid/view/VelocityTracker;

    :goto_3
    return v3

    :cond_c
    :goto_4
    return v1
.end method

.method public scrollBy(II)V
    .locals 3

    .line 1
    iget-object p1, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mSelectorIndices:[I

    .line 2
    iget-boolean v0, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mWrapSelectorWheel:Z

    if-nez v0, :cond_0

    if-lez p2, :cond_0

    iget v0, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->SELECTOR_MIDDLE_ITEM_INDEX:I

    aget v0, p1, v0

    iget v1, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mMinValue:I

    if-gt v0, v1, :cond_0

    .line 3
    iget p1, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mInitialScrollOffset:I

    iput p1, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mCurrentScrollOffset:I

    return-void

    .line 4
    :cond_0
    iget-boolean v0, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mWrapSelectorWheel:Z

    if-nez v0, :cond_1

    if-gez p2, :cond_1

    iget v0, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->SELECTOR_MIDDLE_ITEM_INDEX:I

    aget v0, p1, v0

    iget v1, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mMaxValue:I

    if-lt v0, v1, :cond_1

    .line 5
    iget p1, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mInitialScrollOffset:I

    iput p1, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mCurrentScrollOffset:I

    return-void

    .line 6
    :cond_1
    iget v0, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mCurrentScrollOffset:I

    add-int/2addr v0, p2

    iput v0, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mCurrentScrollOffset:I

    .line 7
    :cond_2
    :goto_0
    iget p2, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mCurrentScrollOffset:I

    iget v0, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mInitialScrollOffset:I

    sub-int v0, p2, v0

    iget v1, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mSelectorTextGapHeight:I

    const/4 v2, 0x1

    if-le v0, v1, :cond_3

    .line 8
    iget v0, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mSelectorElementHeight:I

    sub-int/2addr p2, v0

    iput p2, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mCurrentScrollOffset:I

    .line 9
    invoke-direct {p0, p1}, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->decrementSelectorIndices([I)V

    .line 10
    iget p2, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->SELECTOR_MIDDLE_ITEM_INDEX:I

    aget p2, p1, p2

    invoke-direct {p0, p2, v2}, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->setValueInternal(IZ)V

    .line 11
    iget-boolean p2, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mWrapSelectorWheel:Z

    if-nez p2, :cond_2

    iget p2, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->SELECTOR_MIDDLE_ITEM_INDEX:I

    aget p2, p1, p2

    iget v0, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mMinValue:I

    if-gt p2, v0, :cond_2

    .line 12
    iget p2, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mInitialScrollOffset:I

    iput p2, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mCurrentScrollOffset:I

    goto :goto_0

    .line 13
    :cond_3
    :goto_1
    iget p2, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mCurrentScrollOffset:I

    iget v0, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mInitialScrollOffset:I

    sub-int v0, p2, v0

    iget v1, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mSelectorTextGapHeight:I

    neg-int v1, v1

    if-ge v0, v1, :cond_4

    .line 14
    iget v0, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mSelectorElementHeight:I

    add-int/2addr p2, v0

    iput p2, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mCurrentScrollOffset:I

    .line 15
    invoke-direct {p0, p1}, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->incrementSelectorIndices([I)V

    .line 16
    iget p2, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->SELECTOR_MIDDLE_ITEM_INDEX:I

    aget p2, p1, p2

    invoke-direct {p0, p2, v2}, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->setValueInternal(IZ)V

    .line 17
    iget-boolean p2, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mWrapSelectorWheel:Z

    if-nez p2, :cond_3

    iget p2, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->SELECTOR_MIDDLE_ITEM_INDEX:I

    aget p2, p1, p2

    iget v0, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mMaxValue:I

    if-lt p2, v0, :cond_3

    .line 18
    iget p2, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mInitialScrollOffset:I

    iput p2, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mCurrentScrollOffset:I

    goto :goto_1

    :cond_4
    return-void
.end method

.method public setDisplayedValues([Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mDisplayedValues:[Ljava/lang/String;

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iput-object p1, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mDisplayedValues:[Ljava/lang/String;

    .line 3
    invoke-direct {p0}, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->initializeSelectorWheelIndices()V

    return-void
.end method

.method public setFormatter(Lsmartisan/widget/calendar/SmartisanNumberPicker1Day$Formatter;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mFormatter:Lsmartisan/widget/calendar/SmartisanNumberPicker1Day$Formatter;

    if-ne p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    iput-object p1, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mFormatter:Lsmartisan/widget/calendar/SmartisanNumberPicker1Day$Formatter;

    .line 3
    invoke-direct {p0}, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->initializeSelectorWheelIndices()V

    return-void
.end method

.method public setMaxValue(I)V
    .locals 1

    .line 1
    iget v0, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mMaxValue:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-ltz p1, :cond_3

    .line 2
    iput p1, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mMaxValue:I

    .line 3
    iget p1, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mMaxValue:I

    iget v0, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mValue:I

    if-ge p1, v0, :cond_1

    .line 4
    iput p1, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mValue:I

    .line 5
    :cond_1
    iget p1, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mMaxValue:I

    iget v0, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mMinValue:I

    sub-int/2addr p1, v0

    iget-object v0, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mSelectorIndices:[I

    array-length v0, v0

    if-le p1, v0, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 6
    :goto_0
    invoke-virtual {p0, p1}, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->setWrapSelectorWheel(Z)V

    .line 7
    invoke-direct {p0}, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->initializeSelectorWheelIndices()V

    .line 8
    invoke-direct {p0}, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->tryComputeMaxWidth()V

    .line 9
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void

    .line 10
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "maxValue must be >= 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMinValue(I)V
    .locals 1

    .line 1
    iget v0, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mMinValue:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-ltz p1, :cond_3

    .line 2
    iput p1, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mMinValue:I

    .line 3
    iget p1, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mMinValue:I

    iget v0, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mValue:I

    if-le p1, v0, :cond_1

    .line 4
    iput p1, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mValue:I

    .line 5
    :cond_1
    iget p1, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mMaxValue:I

    iget v0, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mMinValue:I

    sub-int/2addr p1, v0

    iget-object v0, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mSelectorIndices:[I

    array-length v0, v0

    if-le p1, v0, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 6
    :goto_0
    invoke-virtual {p0, p1}, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->setWrapSelectorWheel(Z)V

    .line 7
    invoke-direct {p0}, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->initializeSelectorWheelIndices()V

    .line 8
    invoke-direct {p0}, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->tryComputeMaxWidth()V

    .line 9
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void

    .line 10
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "minValue must be >= 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setOnScrollListener(Lsmartisan/widget/calendar/SmartisanNumberPicker1Day$OnScrollListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mOnScrollListener:Lsmartisan/widget/calendar/SmartisanNumberPicker1Day$OnScrollListener;

    return-void
.end method

.method public setOnValueChangedListener(Lsmartisan/widget/calendar/SmartisanNumberPicker1Day$OnValueChangeListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mOnValueChangeListener:Lsmartisan/widget/calendar/SmartisanNumberPicker1Day$OnValueChangeListener;

    return-void
.end method

.method public setTextColor(II)V
    .locals 0

    .line 1
    iput p1, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mNormalColor:I

    .line 2
    iput p2, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mHighlightColor:I

    return-void
.end method

.method public setTextSize(II)V
    .locals 0

    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    .line 1
    iput p1, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mNormalSize:I

    .line 2
    iput p2, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mHighlightSize:I

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "the text size mus be >= 0 "

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setValue(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->setValueInternal(IZ)V

    return-void
.end method

.method public setWrapSelectorWheel(Z)V
    .locals 2

    .line 1
    iget v0, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mMaxValue:I

    iget v1, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mMinValue:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mSelectorIndices:[I

    array-length v1, v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_1

    if-eqz v0, :cond_2

    .line 2
    :cond_1
    iget-boolean v0, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mWrapSelectorWheel:Z

    if-eq p1, v0, :cond_2

    .line 3
    iput-boolean p1, p0, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->mWrapSelectorWheel:Z

    .line 4
    invoke-direct {p0}, Lsmartisan/widget/calendar/SmartisanNumberPicker1Day;->initializeSelectorWheelIndices()V

    .line 5
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    :cond_2
    return-void
.end method
