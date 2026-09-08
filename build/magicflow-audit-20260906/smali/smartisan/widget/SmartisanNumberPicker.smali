.class public Lsmartisan/widget/SmartisanNumberPicker;
.super Landroid/widget/LinearLayout;
.source "SmartisanNumberPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;,
        Lsmartisan/widget/SmartisanNumberPicker$Formatter;,
        Lsmartisan/widget/SmartisanNumberPicker$OnScrollListener;,
        Lsmartisan/widget/SmartisanNumberPicker$OnValueChangeListener;,
        Lsmartisan/widget/SmartisanNumberPicker$TwoDigitFormatter;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final DEFAULT_TEXT_SIZE:I = 0x2d

.field private static final DEFAUlT_TEXT_COLOR:I

.field private static final SELECTOR_ADJUSTMENT_DURATION_MILLIS:I = 0x320

.field private static final SELECTOR_MAX_FLING_VELOCITY_ADJUSTMENT:I = 0x8

.field private static final SELECTOR_MIDDLE_ITEM_INDEX:I = 0x2

.field private static final SELECTOR_WHEEL_ITEM_COUNT:I = 0x5

.field private static final SIZE_UNSPECIFIED:I = -0x1

.field private static final SNAP_SCROLL_DURATION:I = 0x12c

.field private static final TAG:Ljava/lang/String; = "SmartisanNumberPicker"

.field private static final TOP_AND_BOTTOM_FADING_EDGE_STRENGTH:F = 0.0f

.field private static final UNSET_STRING:Ljava/lang/String; = "--"

.field public static final UNSET_YEAR:I = 0x4

.field private static final VOLUME:F = 0.0945f

.field private static sPool:Landroid/media/SoundPool;

.field private static sSoundId:I

.field private static final sTwoDigitFormatter:Lsmartisan/widget/SmartisanNumberPicker$TwoDigitFormatter;


# instance fields
.field private mAccessibilityNodeProvider:Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;

.field private final mAdjustScroller:Landroid/widget/Scroller;

.field private mBottomSelectionDividerBottom:I

.field private final mComputeMaxWidth:Z

.field private mCurrentScrollOffset:I

.field private mDisplayedValues:[Ljava/lang/String;

.field private final mFlingScroller:Landroid/widget/Scroller;

.field private mFormatter:Lsmartisan/widget/SmartisanNumberPicker$Formatter;

.field private final mHasSelectorWheel:Z

.field private mHasUnsetValue:Z

.field private mHighlightColor:I

.field private mHighlightSize:I

.field private mIngonreMoveEvents:Z

.field private mInitialScrollOffset:I

.field private mLastDownEventTime:J

.field private mLastDownEventY:F

.field private mLastDownOrMoveEventY:F

.field private mLastHoveredChildVirtualViewId:I

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

.field private mOnScrollListener:Lsmartisan/widget/SmartisanNumberPicker$OnScrollListener;

.field private mOnValueChangeListener:Lsmartisan/widget/SmartisanNumberPicker$OnValueChangeListener;

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

.field private final mSelectorIndices:[I

.field private mSelectorTextGapHeight:I

.field private final mSelectorWheelPaint:Landroid/graphics/Paint;

.field private mShowSoftInputOnTap:Z

.field private mSoundEnable:Z

.field private mSoundRunnable:Ljava/lang/Runnable;

.field private mTopSelectionDividerTop:I

.field private mTouchSlop:I

.field private mValue:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mVibrator:Landroid/os/Vibrator;

.field private mWrapSelectorWheel:Z

.field private mcContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "#545454"

    .line 1
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lsmartisan/widget/SmartisanNumberPicker;->DEFAUlT_TEXT_COLOR:I

    .line 2
    new-instance v0, Lsmartisan/widget/SmartisanNumberPicker$TwoDigitFormatter;

    invoke-direct {v0}, Lsmartisan/widget/SmartisanNumberPicker$TwoDigitFormatter;-><init>()V

    sput-object v0, Lsmartisan/widget/SmartisanNumberPicker;->sTwoDigitFormatter:Lsmartisan/widget/SmartisanNumberPicker$TwoDigitFormatter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lsmartisan/widget/SmartisanNumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lsmartisan/widget/SmartisanNumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p2, Landroid/util/SparseArray;

    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    iput-object p2, p0, Lsmartisan/widget/SmartisanNumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    const/4 p2, 0x5

    new-array p2, p2, [I

    .line 5
    iput-object p2, p0, Lsmartisan/widget/SmartisanNumberPicker;->mSelectorIndices:[I

    const/16 p2, 0x2d

    .line 6
    iput p2, p0, Lsmartisan/widget/SmartisanNumberPicker;->mNormalSize:I

    .line 7
    iput p2, p0, Lsmartisan/widget/SmartisanNumberPicker;->mHighlightSize:I

    .line 8
    sget p2, Lsmartisan/widget/SmartisanNumberPicker;->DEFAUlT_TEXT_COLOR:I

    iput p2, p0, Lsmartisan/widget/SmartisanNumberPicker;->mNormalColor:I

    .line 9
    iput p2, p0, Lsmartisan/widget/SmartisanNumberPicker;->mHighlightColor:I

    const/high16 p2, -0x80000000

    .line 10
    iput p2, p0, Lsmartisan/widget/SmartisanNumberPicker;->mInitialScrollOffset:I

    const/4 p2, 0x0

    .line 11
    iput p2, p0, Lsmartisan/widget/SmartisanNumberPicker;->mScrollState:I

    .line 12
    iput-boolean p2, p0, Lsmartisan/widget/SmartisanNumberPicker;->mHasUnsetValue:Z

    const/4 p3, 0x1

    .line 13
    iput-boolean p3, p0, Lsmartisan/widget/SmartisanNumberPicker;->mSoundEnable:Z

    const/4 v0, -0x1

    .line 14
    iput v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->mOldTime:I

    .line 15
    new-instance v1, Lsmartisan/widget/SmartisanNumberPicker$1;

    invoke-direct {v1, p0}, Lsmartisan/widget/SmartisanNumberPicker$1;-><init>(Lsmartisan/widget/SmartisanNumberPicker;)V

    iput-object v1, p0, Lsmartisan/widget/SmartisanNumberPicker;->mSoundRunnable:Ljava/lang/Runnable;

    .line 16
    iput-object p1, p0, Lsmartisan/widget/SmartisanNumberPicker;->mcContext:Landroid/content/Context;

    .line 17
    iput-boolean p3, p0, Lsmartisan/widget/SmartisanNumberPicker;->mHasSelectorWheel:Z

    .line 18
    iput v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->mMinHeight:I

    .line 19
    iput v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->mMaxHeight:I

    .line 20
    iget v1, p0, Lsmartisan/widget/SmartisanNumberPicker;->mMinHeight:I

    if-eq v1, v0, :cond_1

    iget v2, p0, Lsmartisan/widget/SmartisanNumberPicker;->mMaxHeight:I

    if-eq v2, v0, :cond_1

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
    iput v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->mMinWidth:I

    .line 23
    iput v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->mMaxWidth:I

    .line 24
    iget v1, p0, Lsmartisan/widget/SmartisanNumberPicker;->mMinWidth:I

    if-eq v1, v0, :cond_3

    iget v2, p0, Lsmartisan/widget/SmartisanNumberPicker;->mMaxWidth:I

    if-eq v2, v0, :cond_3

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
    iget v1, p0, Lsmartisan/widget/SmartisanNumberPicker;->mMaxWidth:I

    if-ne v1, v0, :cond_4

    move p2, p3

    :cond_4
    iput-boolean p2, p0, Lsmartisan/widget/SmartisanNumberPicker;->mComputeMaxWidth:Z

    .line 27
    iget-boolean p2, p0, Lsmartisan/widget/SmartisanNumberPicker;->mHasSelectorWheel:Z

    xor-int/2addr p2, p3

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setWillNotDraw(Z)V

    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 29
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p2

    iput p2, p0, Lsmartisan/widget/SmartisanNumberPicker;->mTouchSlop:I

    .line 30
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result p2

    iput p2, p0, Lsmartisan/widget/SmartisanNumberPicker;->mMinimumFlingVelocity:I

    .line 31
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p1

    div-int/lit8 p1, p1, 0x8

    iput p1, p0, Lsmartisan/widget/SmartisanNumberPicker;->mMaximumFlingVelocity:I

    .line 32
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 33
    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 34
    sget-object p2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 35
    iget p2, p0, Lsmartisan/widget/SmartisanNumberPicker;->mNormalSize:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 36
    iget p2, p0, Lsmartisan/widget/SmartisanNumberPicker;->mNormalColor:I

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 37
    iput-object p1, p0, Lsmartisan/widget/SmartisanNumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    .line 38
    new-instance p1, Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0, p3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    iput-object p1, p0, Lsmartisan/widget/SmartisanNumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    .line 39
    new-instance p1, Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x40200000    # 2.5f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-direct {p1, p2, v0}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object p1, p0, Lsmartisan/widget/SmartisanNumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    .line 40
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getImportantForAccessibility()I

    move-result p1

    if-nez p1, :cond_5

    .line 41
    invoke-virtual {p0, p3}, Landroid/widget/LinearLayout;->setImportantForAccessibility(I)V

    .line 42
    :cond_5
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "vibrator"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Vibrator;

    iput-object p1, p0, Lsmartisan/widget/SmartisanNumberPicker;->mVibrator:Landroid/os/Vibrator;

    return-void
.end method

.method static synthetic access$000()Landroid/media/SoundPool;
    .locals 1

    .line 1
    sget-object v0, Lsmartisan/widget/SmartisanNumberPicker;->sPool:Landroid/media/SoundPool;

    return-object v0
.end method

.method static synthetic access$100(Lsmartisan/widget/SmartisanNumberPicker;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lsmartisan/widget/SmartisanNumberPicker;->mSoundEnable:Z

    return p0
.end method

.method static synthetic access$1000(Lsmartisan/widget/SmartisanNumberPicker;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lsmartisan/widget/SmartisanNumberPicker;->mWrapSelectorWheel:Z

    return p0
.end method

.method static synthetic access$1100(Lsmartisan/widget/SmartisanNumberPicker;I)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lsmartisan/widget/SmartisanNumberPicker;->getWrappedSelectorIndex(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$1200(Lsmartisan/widget/SmartisanNumberPicker;)I
    .locals 0

    .line 1
    iget p0, p0, Lsmartisan/widget/SmartisanNumberPicker;->mMaxValue:I

    return p0
.end method

.method static synthetic access$1300(Lsmartisan/widget/SmartisanNumberPicker;)I
    .locals 0

    .line 1
    iget p0, p0, Lsmartisan/widget/SmartisanNumberPicker;->mMinValue:I

    return p0
.end method

.method static synthetic access$1400(Lsmartisan/widget/SmartisanNumberPicker;)[Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lsmartisan/widget/SmartisanNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1500(Lsmartisan/widget/SmartisanNumberPicker;I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lsmartisan/widget/SmartisanNumberPicker;->formatNumber(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200()I
    .locals 1

    .line 1
    sget v0, Lsmartisan/widget/SmartisanNumberPicker;->sSoundId:I

    return v0
.end method

.method static synthetic access$500(Lsmartisan/widget/SmartisanNumberPicker;)I
    .locals 0

    .line 1
    iget p0, p0, Lsmartisan/widget/SmartisanNumberPicker;->mTopSelectionDividerTop:I

    return p0
.end method

.method static synthetic access$600(Lsmartisan/widget/SmartisanNumberPicker;)I
    .locals 0

    .line 1
    iget p0, p0, Lsmartisan/widget/SmartisanNumberPicker;->mSelectorElementHeight:I

    return p0
.end method

.method static synthetic access$700(Lsmartisan/widget/SmartisanNumberPicker;)I
    .locals 0

    .line 1
    iget p0, p0, Lsmartisan/widget/SmartisanNumberPicker;->mBottomSelectionDividerBottom:I

    return p0
.end method

.method static synthetic access$800(Lsmartisan/widget/SmartisanNumberPicker;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lsmartisan/widget/SmartisanNumberPicker;->changeValueByOne(Z)V

    return-void
.end method

.method static synthetic access$900(Lsmartisan/widget/SmartisanNumberPicker;)I
    .locals 0

    .line 1
    iget p0, p0, Lsmartisan/widget/SmartisanNumberPicker;->mValue:I

    return p0
.end method

.method private changeValueByOne(Z)V
    .locals 13

    .line 1
    iget-boolean v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->mHasSelectorWheel:Z

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-direct {p0, v0}, Lsmartisan/widget/SmartisanNumberPicker;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-direct {p0, v0}, Lsmartisan/widget/SmartisanNumberPicker;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    :cond_0
    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->mPreviousScrollerY:I

    if-eqz p1, :cond_1

    .line 5
    iget-object v1, p0, Lsmartisan/widget/SmartisanNumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget p1, p0, Lsmartisan/widget/SmartisanNumberPicker;->mSelectorElementHeight:I

    neg-int v5, p1

    const/16 v6, 0x12c

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v7, p0, Lsmartisan/widget/SmartisanNumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget v11, p0, Lsmartisan/widget/SmartisanNumberPicker;->mSelectorElementHeight:I

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
    iget p1, p0, Lsmartisan/widget/SmartisanNumberPicker;->mValue:I

    add-int/2addr p1, v0

    invoke-direct {p0, p1, v0}, Lsmartisan/widget/SmartisanNumberPicker;->setValueInternal(IZ)V

    goto :goto_1

    .line 9
    :cond_3
    iget p1, p0, Lsmartisan/widget/SmartisanNumberPicker;->mValue:I

    sub-int/2addr p1, v0

    invoke-direct {p0, p1, v0}, Lsmartisan/widget/SmartisanNumberPicker;->setValueInternal(IZ)V

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
    iget-boolean v1, p0, Lsmartisan/widget/SmartisanNumberPicker;->mWrapSelectorWheel:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lsmartisan/widget/SmartisanNumberPicker;->mMinValue:I

    if-ge v0, v1, :cond_1

    .line 5
    invoke-direct {p0}, Lsmartisan/widget/SmartisanNumberPicker;->maxValue()I

    move-result v0

    :cond_1
    const/4 v1, 0x0

    .line 6
    aput v0, p1, v1

    .line 7
    invoke-direct {p0, v0}, Lsmartisan/widget/SmartisanNumberPicker;->ensureCachedScrollSelectorValue(I)V

    return-void
.end method

.method private ensureCachedScrollSelectorValue(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    .line 2
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    return-void

    .line 3
    :cond_0
    iget v1, p0, Lsmartisan/widget/SmartisanNumberPicker;->mMinValue:I

    if-lt p1, v1, :cond_3

    iget v2, p0, Lsmartisan/widget/SmartisanNumberPicker;->mMaxValue:I

    if-le p1, v2, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v2, p0, Lsmartisan/widget/SmartisanNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-eqz v2, :cond_2

    sub-int v1, p1, v1

    .line 5
    aget-object v1, v2, v1

    goto :goto_1

    .line 6
    :cond_2
    invoke-direct {p0, p1}, Lsmartisan/widget/SmartisanNumberPicker;->formatNumber(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 7
    :cond_3
    :goto_0
    invoke-direct {p0}, Lsmartisan/widget/SmartisanNumberPicker;->hasUnset()Z

    move-result v1

    if-eqz v1, :cond_4

    return-void

    :cond_4
    const-string v1, ""

    .line 8
    :goto_1
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method private ensureScrollWheelAdjusted()Z
    .locals 7

    .line 1
    iget v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->mInitialScrollOffset:I

    iget v1, p0, Lsmartisan/widget/SmartisanNumberPicker;->mCurrentScrollOffset:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2
    iput v1, p0, Lsmartisan/widget/SmartisanNumberPicker;->mPreviousScrollerY:I

    .line 3
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lsmartisan/widget/SmartisanNumberPicker;->mSelectorElementHeight:I

    div-int/lit8 v3, v2, 0x2

    if-le v1, v3, :cond_1

    if-lez v0, :cond_0

    neg-int v2, v2

    :cond_0
    add-int/2addr v0, v2

    :cond_1
    move v5, v0

    .line 4
    iget-object v1, p0, Lsmartisan/widget/SmartisanNumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

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
    iput v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->mPreviousScrollerY:I

    if-lez p1, :cond_0

    .line 2
    iget-object v1, p0, Lsmartisan/widget/SmartisanNumberPicker;->mFlingScroller:Landroid/widget/Scroller;

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
    iget-object v1, p0, Lsmartisan/widget/SmartisanNumberPicker;->mFlingScroller:Landroid/widget/Scroller;

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
    iget-object v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->mFormatter:Lsmartisan/widget/SmartisanNumberPicker$Formatter;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lsmartisan/widget/SmartisanNumberPicker$Formatter;->format(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lsmartisan/widget/SmartisanNumberPicker;->formatNumberWithLocale(I)Ljava/lang/String;

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
    iget v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->mMiddleScrollOffset:I

    iget v1, p0, Lsmartisan/widget/SmartisanNumberPicker;->mSelectorElementHeight:I

    sub-int v2, v0, v1

    if-le p1, v2, :cond_4

    add-int v2, v0, v1

    if-lt p1, v2, :cond_0

    goto :goto_1

    :cond_0
    if-ne p1, v0, :cond_1

    .line 2
    iget p1, p0, Lsmartisan/widget/SmartisanNumberPicker;->mHighlightColor:I

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
    iget v1, p0, Lsmartisan/widget/SmartisanNumberPicker;->mMiddleScrollOffset:I

    if-lt p1, v1, :cond_3

    .line 4
    iget v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->mSelectorElementHeight:I

    add-int/2addr v1, v0

    sub-int/2addr v1, p1

    int-to-float p1, v1

    mul-float/2addr p1, v2

    int-to-float v0, v0

    div-float v0, p1, v0

    .line 5
    :cond_3
    iget p1, p0, Lsmartisan/widget/SmartisanNumberPicker;->mNormalColor:I

    const v1, 0xffffff

    and-int v2, p1, v1

    .line 6
    iget v3, p0, Lsmartisan/widget/SmartisanNumberPicker;->mHighlightColor:I

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
    iget p1, p0, Lsmartisan/widget/SmartisanNumberPicker;->mNormalColor:I

    return p1
.end method

.method private getTextSizeByOffset(I)F
    .locals 9

    .line 1
    iget v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->mMiddleScrollOffset:I

    iget v1, p0, Lsmartisan/widget/SmartisanNumberPicker;->mSelectorElementHeight:I

    sub-int v2, v0, v1

    if-le p1, v2, :cond_3

    add-int v2, v0, v1

    if-lt p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    if-ge p1, v0, :cond_1

    .line 2
    iget v4, p0, Lsmartisan/widget/SmartisanNumberPicker;->mNormalSize:I

    int-to-double v5, v4

    sub-int/2addr v0, v1

    sub-int/2addr p1, v0

    int-to-double v7, p1

    mul-double/2addr v7, v2

    int-to-double v0, v1

    div-double/2addr v7, v0

    iget p1, p0, Lsmartisan/widget/SmartisanNumberPicker;->mHighlightSize:I

    sub-int/2addr p1, v4

    int-to-double v0, p1

    mul-double/2addr v7, v0

    add-double/2addr v5, v7

    double-to-float p1, v5

    return p1

    :cond_1
    if-lt p1, v0, :cond_2

    .line 3
    iget v4, p0, Lsmartisan/widget/SmartisanNumberPicker;->mNormalSize:I

    int-to-double v5, v4

    add-int/2addr v0, v1

    sub-int/2addr v0, p1

    int-to-double v7, v0

    mul-double/2addr v7, v2

    int-to-double v0, v1

    div-double/2addr v7, v0

    iget p1, p0, Lsmartisan/widget/SmartisanNumberPicker;->mHighlightSize:I

    sub-int/2addr p1, v4

    int-to-double v0, p1

    mul-double/2addr v7, v0

    add-double/2addr v5, v7

    double-to-float p1, v5

    return p1

    .line 4
    :cond_2
    iget p1, p0, Lsmartisan/widget/SmartisanNumberPicker;->mNormalSize:I

    int-to-float p1, p1

    return p1

    .line 5
    :cond_3
    :goto_0
    iget p1, p0, Lsmartisan/widget/SmartisanNumberPicker;->mNormalSize:I

    int-to-float p1, p1

    return p1
.end method

.method public static final getTwoDigitFormatter()Lsmartisan/widget/SmartisanNumberPicker$Formatter;
    .locals 1

    .line 1
    sget-object v0, Lsmartisan/widget/SmartisanNumberPicker;->sTwoDigitFormatter:Lsmartisan/widget/SmartisanNumberPicker$TwoDigitFormatter;

    return-object v0
.end method

.method private getWrappedSelectorIndex(I)I
    .locals 3

    .line 1
    invoke-direct {p0}, Lsmartisan/widget/SmartisanNumberPicker;->maxValue()I

    move-result v0

    if-le p1, v0, :cond_0

    .line 2
    iget v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->mMinValue:I

    invoke-direct {p0}, Lsmartisan/widget/SmartisanNumberPicker;->maxValue()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-direct {p0}, Lsmartisan/widget/SmartisanNumberPicker;->maxValue()I

    move-result v1

    rem-int/2addr p1, v1

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    return v0

    .line 3
    :cond_0
    iget v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->mMinValue:I

    if-ge p1, v0, :cond_1

    .line 4
    invoke-direct {p0}, Lsmartisan/widget/SmartisanNumberPicker;->maxValue()I

    move-result v0

    iget v1, p0, Lsmartisan/widget/SmartisanNumberPicker;->mMinValue:I

    sub-int/2addr v1, p1

    invoke-direct {p0}, Lsmartisan/widget/SmartisanNumberPicker;->maxValue()I

    move-result p1

    iget v2, p0, Lsmartisan/widget/SmartisanNumberPicker;->mMinValue:I

    sub-int/2addr p1, v2

    rem-int/2addr v1, p1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0

    :cond_1
    return p1
.end method

.method private hasUnset()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->mHasUnsetValue:Z

    return v0
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
    iget-boolean v1, p0, Lsmartisan/widget/SmartisanNumberPicker;->mWrapSelectorWheel:Z

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lsmartisan/widget/SmartisanNumberPicker;->maxValue()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 5
    iget v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->mMinValue:I

    .line 6
    :cond_1
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    aput v0, p1, v1

    .line 7
    invoke-direct {p0, v0}, Lsmartisan/widget/SmartisanNumberPicker;->ensureCachedScrollSelectorValue(I)V

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

    iget v1, p0, Lsmartisan/widget/SmartisanNumberPicker;->mNormalSize:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setFadingEdgeLength(I)V

    return-void
.end method

.method private initializeSelectorWheel()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lsmartisan/widget/SmartisanNumberPicker;->initializeSelectorWheelIndices()V

    .line 2
    iget-object v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->mSelectorIndices:[I

    .line 3
    array-length v1, v0

    iget v2, p0, Lsmartisan/widget/SmartisanNumberPicker;->mNormalSize:I

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
    iput v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->mSelectorTextGapHeight:I

    .line 7
    iget v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->mNormalSize:I

    iget v1, p0, Lsmartisan/widget/SmartisanNumberPicker;->mSelectorTextGapHeight:I

    add-int/2addr v0, v1

    iput v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->mSelectorElementHeight:I

    .line 8
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    iget v1, p0, Lsmartisan/widget/SmartisanNumberPicker;->mNormalSize:I

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 9
    iget v1, p0, Lsmartisan/widget/SmartisanNumberPicker;->mSelectorElementHeight:I

    mul-int/lit8 v2, v1, 0x2

    sub-int/2addr v0, v2

    iput v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->mInitialScrollOffset:I

    .line 10
    iget v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->mInitialScrollOffset:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    iput v1, p0, Lsmartisan/widget/SmartisanNumberPicker;->mMiddleScrollOffset:I

    .line 11
    iput v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->mCurrentScrollOffset:I

    return-void
.end method

.method private initializeSelectorWheelIndices()V
    .locals 5

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 2
    iget-object v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->mSelectorIndices:[I

    .line 3
    invoke-virtual {p0}, Lsmartisan/widget/SmartisanNumberPicker;->getValue()I

    move-result v1

    .line 4
    invoke-direct {p0, v1}, Lsmartisan/widget/SmartisanNumberPicker;->looksUnset(I)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 5
    iget v1, p0, Lsmartisan/widget/SmartisanNumberPicker;->mMaxValue:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aput v1, v0, v3

    .line 6
    aget v1, v0, v3

    invoke-direct {p0, v1}, Lsmartisan/widget/SmartisanNumberPicker;->ensureCachedScrollSelectorValue(I)V

    .line 7
    iget v1, p0, Lsmartisan/widget/SmartisanNumberPicker;->mMaxValue:I

    aput v1, v0, v2

    .line 8
    aget v1, v0, v2

    invoke-direct {p0, v1}, Lsmartisan/widget/SmartisanNumberPicker;->ensureCachedScrollSelectorValue(I)V

    const/4 v1, 0x4

    const/4 v3, 0x2

    .line 9
    aput v1, v0, v3

    .line 10
    aget v3, v0, v3

    invoke-direct {p0, v3}, Lsmartisan/widget/SmartisanNumberPicker;->ensureCachedScrollSelectorValue(I)V

    .line 11
    iget v3, p0, Lsmartisan/widget/SmartisanNumberPicker;->mMinValue:I

    const/4 v4, 0x3

    aput v3, v0, v4

    .line 12
    aget v3, v0, v4

    invoke-direct {p0, v3}, Lsmartisan/widget/SmartisanNumberPicker;->ensureCachedScrollSelectorValue(I)V

    .line 13
    iget v3, p0, Lsmartisan/widget/SmartisanNumberPicker;->mMinValue:I

    add-int/2addr v3, v2

    aput v3, v0, v1

    .line 14
    aget v0, v0, v1

    invoke-direct {p0, v0}, Lsmartisan/widget/SmartisanNumberPicker;->ensureCachedScrollSelectorValue(I)V

    goto :goto_1

    .line 15
    :cond_0
    :goto_0
    iget-object v2, p0, Lsmartisan/widget/SmartisanNumberPicker;->mSelectorIndices:[I

    array-length v2, v2

    if-ge v3, v2, :cond_2

    add-int/lit8 v2, v3, -0x2

    add-int/2addr v2, v1

    .line 16
    iget-boolean v4, p0, Lsmartisan/widget/SmartisanNumberPicker;->mWrapSelectorWheel:Z

    if-eqz v4, :cond_1

    .line 17
    invoke-direct {p0, v2}, Lsmartisan/widget/SmartisanNumberPicker;->getWrappedSelectorIndex(I)I

    move-result v2

    .line 18
    :cond_1
    aput v2, v0, v3

    .line 19
    aget v2, v0, v3

    invoke-direct {p0, v2}, Lsmartisan/widget/SmartisanNumberPicker;->ensureCachedScrollSelectorValue(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private isTimeChanged(I)Z
    .locals 2

    .line 1
    iget v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->mOldTime:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2
    iput p1, p0, Lsmartisan/widget/SmartisanNumberPicker;->mOldTime:I

    .line 3
    :cond_0
    iget v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->mOldTime:I

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

.method private looksUnset(I)Z
    .locals 1

    .line 1
    iget v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->mMaxValue:I

    if-gt p1, v0, :cond_0

    iget v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->mMinValue:I

    if-ge p1, v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lsmartisan/widget/SmartisanNumberPicker;->hasUnset()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
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

.method private maxValue()I
    .locals 2

    .line 1
    iget v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->mMaxValue:I

    invoke-direct {p0}, Lsmartisan/widget/SmartisanNumberPicker;->hasUnset()Z

    move-result v1

    add-int/2addr v0, v1

    return v0
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
    iget p1, p0, Lsmartisan/widget/SmartisanNumberPicker;->mCurrentScrollOffset:I

    add-int/2addr p1, v1

    iget v2, p0, Lsmartisan/widget/SmartisanNumberPicker;->mSelectorElementHeight:I

    rem-int/2addr p1, v2

    .line 4
    iget v2, p0, Lsmartisan/widget/SmartisanNumberPicker;->mInitialScrollOffset:I

    sub-int/2addr v2, p1

    const/4 p1, 0x0

    if-eqz v2, :cond_4

    .line 5
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Lsmartisan/widget/SmartisanNumberPicker;->mSelectorElementHeight:I

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
    iget v2, p0, Lsmartisan/widget/SmartisanNumberPicker;->mSelectorElementHeight:I

    mul-int/lit8 v2, v2, 0x5

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
    invoke-virtual {p0, p1, v1}, Lsmartisan/widget/SmartisanNumberPicker;->scrollBy(II)V

    return v0

    :cond_4
    return p1
.end method

.method private notifyChange(II)V
    .locals 1

    .line 1
    iget-object p2, p0, Lsmartisan/widget/SmartisanNumberPicker;->mOnValueChangeListener:Lsmartisan/widget/SmartisanNumberPicker$OnValueChangeListener;

    if-eqz p2, :cond_0

    .line 2
    iget v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->mValue:I

    invoke-interface {p2, p0, p1, v0}, Lsmartisan/widget/SmartisanNumberPicker$OnValueChangeListener;->onValueChange(Lsmartisan/widget/SmartisanNumberPicker;II)V

    :cond_0
    return-void
.end method

.method private onScrollStateChange(I)V
    .locals 1

    .line 1
    iget v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->mScrollState:I

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iput p1, p0, Lsmartisan/widget/SmartisanNumberPicker;->mScrollState:I

    .line 3
    iget-object v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->mOnScrollListener:Lsmartisan/widget/SmartisanNumberPicker$OnScrollListener;

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0, p0, p1}, Lsmartisan/widget/SmartisanNumberPicker$OnScrollListener;->onScrollStateChange(Lsmartisan/widget/SmartisanNumberPicker;I)V

    :cond_1
    return-void
.end method

.method private onScrollerFinished(Landroid/widget/Scroller;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    if-ne p1, v0, :cond_0

    .line 2
    invoke-direct {p0}, Lsmartisan/widget/SmartisanNumberPicker;->ensureScrollWheelAdjusted()Z

    const/4 p1, 0x0

    .line 3
    invoke-direct {p0, p1}, Lsmartisan/widget/SmartisanNumberPicker;->onScrollStateChange(I)V

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
    .locals 2

    .line 1
    iget v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->mValue:I

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0, p1}, Lsmartisan/widget/SmartisanNumberPicker;->looksUnset(I)Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_1

    iget v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->mValue:I

    if-ne v0, v1, :cond_1

    return-void

    .line 3
    :cond_1
    iget-boolean v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->mWrapSelectorWheel:Z

    if-eqz v0, :cond_3

    .line 4
    invoke-direct {p0, p1}, Lsmartisan/widget/SmartisanNumberPicker;->looksUnset(I)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 5
    :cond_2
    invoke-direct {p0, p1}, Lsmartisan/widget/SmartisanNumberPicker;->getWrappedSelectorIndex(I)I

    move-result v1

    goto :goto_0

    .line 6
    :cond_3
    invoke-direct {p0, p1}, Lsmartisan/widget/SmartisanNumberPicker;->looksUnset(I)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    .line 7
    :cond_4
    iget v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->mMinValue:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 8
    iget v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->mMaxValue:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 9
    :goto_0
    iget p1, p0, Lsmartisan/widget/SmartisanNumberPicker;->mValue:I

    .line 10
    iput v1, p0, Lsmartisan/widget/SmartisanNumberPicker;->mValue:I

    if-eqz p2, :cond_5

    .line 11
    invoke-direct {p0, p1, v1}, Lsmartisan/widget/SmartisanNumberPicker;->notifyChange(II)V

    .line 12
    invoke-direct {p0}, Lsmartisan/widget/SmartisanNumberPicker;->startVibrate()V

    .line 13
    :cond_5
    invoke-direct {p0}, Lsmartisan/widget/SmartisanNumberPicker;->initializeSelectorWheelIndices()V

    .line 14
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method private startVibrate()V
    .locals 2

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->mVibrator:Landroid/os/Vibrator;

    const-string v1, "EFFECT_TIME_PICKER"

    invoke-static {v1}, Lsmartisan/InvokeApi$n;->a(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lsmartisan/InvokeApi$o;->a(Landroid/os/Vibrator;I)V

    return-void
.end method

.method private tryComputeMaxWidth()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->mComputeMaxWidth:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    :goto_0
    const/16 v2, 0x9

    if-gt v1, v2, :cond_2

    .line 3
    iget-object v2, p0, Lsmartisan/widget/SmartisanNumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-static {v1}, Lsmartisan/widget/SmartisanNumberPicker;->formatNumberWithLocale(I)Ljava/lang/String;

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
    iget v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->mMaxValue:I

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
    iget-object v3, p0, Lsmartisan/widget/SmartisanNumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lsmartisan/widget/SmartisanNumberPicker;->mDisplayedValues:[Ljava/lang/String;

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
    iget-object v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    .line 2
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

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
    iget v2, p0, Lsmartisan/widget/SmartisanNumberPicker;->mPreviousScrollerY:I

    if-nez v2, :cond_1

    .line 8
    invoke-virtual {v0}, Landroid/widget/Scroller;->getStartY()I

    move-result v2

    iput v2, p0, Lsmartisan/widget/SmartisanNumberPicker;->mPreviousScrollerY:I

    :cond_1
    const/4 v2, 0x0

    .line 9
    iget v3, p0, Lsmartisan/widget/SmartisanNumberPicker;->mPreviousScrollerY:I

    sub-int v3, v1, v3

    invoke-virtual {p0, v2, v3}, Lsmartisan/widget/SmartisanNumberPicker;->scrollBy(II)V

    .line 10
    iput v1, p0, Lsmartisan/widget/SmartisanNumberPicker;->mPreviousScrollerY:I

    .line 11
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 12
    invoke-direct {p0, v0}, Lsmartisan/widget/SmartisanNumberPicker;->onScrollerFinished(Landroid/widget/Scroller;)V

    goto :goto_0

    .line 13
    :cond_2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    :goto_0
    return-void
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 1
    iget-boolean v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lsmartisan/InvokeApi$a;->a(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    .line 5
    iget v1, p0, Lsmartisan/widget/SmartisanNumberPicker;->mTopSelectionDividerTop:I

    iget v2, p0, Lsmartisan/widget/SmartisanNumberPicker;->mSelectorElementHeight:I

    sub-int v3, v1, v2

    if-ge v0, v3, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    if-ge v0, v1, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    .line 6
    :cond_2
    iget v1, p0, Lsmartisan/widget/SmartisanNumberPicker;->mBottomSelectionDividerBottom:I

    add-int/2addr v2, v1

    if-le v0, v2, :cond_3

    const/4 v0, 0x5

    goto :goto_0

    :cond_3
    if-le v0, v1, :cond_4

    const/4 v0, 0x4

    goto :goto_0

    :cond_4
    const/4 v0, 0x3

    .line 7
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    .line 8
    invoke-virtual {p0}, Lsmartisan/widget/SmartisanNumberPicker;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v1

    check-cast v1, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;

    const/4 v2, 0x7

    const/4 v3, -0x1

    const/16 v4, 0x100

    const/4 v5, 0x0

    const/16 v6, 0x40

    const/16 v7, 0x80

    if-eq p1, v2, :cond_7

    const/16 v2, 0x9

    if-eq p1, v2, :cond_6

    const/16 v2, 0xa

    if-eq p1, v2, :cond_5

    goto :goto_1

    .line 9
    :cond_5
    invoke-static {v1, v0, v4}, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->access$400(Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;II)V

    .line 10
    iput v3, p0, Lsmartisan/widget/SmartisanNumberPicker;->mLastHoveredChildVirtualViewId:I

    goto :goto_1

    .line 11
    :cond_6
    invoke-static {v1, v0, v7}, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->access$400(Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;II)V

    .line 12
    iput v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->mLastHoveredChildVirtualViewId:I

    .line 13
    invoke-virtual {v1, v0, v6, v5}, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->performAction(IILandroid/os/Bundle;)Z

    goto :goto_1

    .line 14
    :cond_7
    iget p1, p0, Lsmartisan/widget/SmartisanNumberPicker;->mLastHoveredChildVirtualViewId:I

    if-eq p1, v0, :cond_8

    if-eq p1, v3, :cond_8

    .line 15
    invoke-static {v1, p1, v4}, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->access$400(Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;II)V

    .line 16
    invoke-static {v1, v0, v7}, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->access$400(Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;II)V

    .line 17
    iput v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->mLastHoveredChildVirtualViewId:I

    .line 18
    invoke-virtual {v1, v0, v6, v5}, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;->performAction(IILandroid/os/Bundle;)Z

    :cond_8
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method public getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0}, Landroid/widget/LinearLayout;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->mAccessibilityNodeProvider:Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;

    if-nez v0, :cond_1

    .line 4
    new-instance v0, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;-><init>(Lsmartisan/widget/SmartisanNumberPicker;Lsmartisan/widget/SmartisanNumberPicker$1;)V

    iput-object v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->mAccessibilityNodeProvider:Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;

    .line 5
    :cond_1
    iget-object v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->mAccessibilityNodeProvider:Lsmartisan/widget/SmartisanNumberPicker$AccessibilityNodeProviderImpl;

    return-object v0
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDisplayedValues()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    return-object v0
.end method

.method public getMaxValue()I
    .locals 1

    .line 1
    iget v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->mMaxValue:I

    return v0
.end method

.method public getMinValue()I
    .locals 1

    .line 1
    iget v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->mMinValue:I

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
    iget v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->mValue:I

    return v0
.end method

.method public getWrapSelectorWheel()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->mWrapSelectorWheel:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 2
    sget-object v0, Lsmartisan/widget/SmartisanNumberPicker;->sPool:Landroid/media/SoundPool;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Landroid/media/SoundPool;

    const/4 v1, 0x6

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v2}, Landroid/media/SoundPool;-><init>(III)V

    sput-object v0, Lsmartisan/widget/SmartisanNumberPicker;->sPool:Landroid/media/SoundPool;

    .line 4
    sget-object v0, Lsmartisan/widget/SmartisanNumberPicker;->sPool:Landroid/media/SoundPool;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lsmartisan/widget/R$raw;->time_picker:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    sput v0, Lsmartisan/widget/SmartisanNumberPicker;->sSoundId:I

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 2
    sget-object v0, Lsmartisan/widget/SmartisanNumberPicker;->sPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    const/4 v0, 0x0

    .line 4
    sput-object v0, Lsmartisan/widget/SmartisanNumberPicker;->sPool:Landroid/media/SoundPool;

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 1
    iget-boolean v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void

    .line 3
    :cond_0
    iget v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->mCurrentScrollOffset:I

    .line 4
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getRight()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    const/4 v2, 0x2

    div-int/2addr v1, v2

    .line 5
    iget-object v3, p0, Lsmartisan/widget/SmartisanNumberPicker;->mSelectorIndices:[I

    const/4 v4, 0x0

    .line 6
    :goto_0
    array-length v5, v3

    if-ge v4, v5, :cond_2

    .line 7
    aget v5, v3, v4

    .line 8
    invoke-direct {p0, v5}, Lsmartisan/widget/SmartisanNumberPicker;->looksUnset(I)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v5, "--"

    goto :goto_1

    .line 9
    :cond_1
    iget-object v6, p0, Lsmartisan/widget/SmartisanNumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 10
    :goto_1
    invoke-direct {p0, v0}, Lsmartisan/widget/SmartisanNumberPicker;->getTextSizeByOffset(I)F

    move-result v6

    .line 11
    iget-object v7, p0, Lsmartisan/widget/SmartisanNumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 12
    invoke-direct {p0, v0}, Lsmartisan/widget/SmartisanNumberPicker;->getTextColorByOffset(I)I

    move-result v6

    .line 13
    iget-object v7, p0, Lsmartisan/widget/SmartisanNumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v6}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v6, v1

    int-to-float v7, v0

    .line 14
    iget-object v8, p0, Lsmartisan/widget/SmartisanNumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 15
    iget v5, p0, Lsmartisan/widget/SmartisanNumberPicker;->mSelectorElementHeight:I

    add-int/2addr v0, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 16
    :cond_2
    aget p1, v3, v2

    invoke-direct {p0, p1}, Lsmartisan/widget/SmartisanNumberPicker;->isTimeChanged(I)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lsmartisan/widget/SmartisanNumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    .line 17
    invoke-virtual {p1}, Landroid/widget/Scroller;->getFinalY()I

    move-result p1

    iget-object v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    const/16 v0, 0x32

    if-le p1, v0, :cond_3

    .line 18
    aget p1, v3, v2

    iput p1, p0, Lsmartisan/widget/SmartisanNumberPicker;->mOldTime:I

    .line 19
    iget-object p1, p0, Lsmartisan/widget/SmartisanNumberPicker;->mSoundRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0xa

    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    .line 20
    :cond_3
    aget p1, v3, v2

    invoke-direct {p0, p1}, Lsmartisan/widget/SmartisanNumberPicker;->isTimeChanged(I)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lsmartisan/widget/SmartisanNumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    .line 21
    invoke-virtual {p1}, Landroid/widget/Scroller;->getFinalY()I

    move-result p1

    iget-object v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    if-gt p1, v0, :cond_4

    .line 22
    aget p1, v3, v2

    iput p1, p0, Lsmartisan/widget/SmartisanNumberPicker;->mOldTime:I

    .line 23
    iget-object p1, p0, Lsmartisan/widget/SmartisanNumberPicker;->mSoundRunnable:Ljava/lang/Runnable;

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
    const-class v0, Lsmartisan/widget/SmartisanNumberPicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 4
    iget v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->mMinValue:I

    iget v1, p0, Lsmartisan/widget/SmartisanNumberPicker;->mValue:I

    add-int/2addr v0, v1

    iget v1, p0, Lsmartisan/widget/SmartisanNumberPicker;->mSelectorElementHeight:I

    mul-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollY(I)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->mHasSelectorWheel:Z

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

    iput v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->mLastDownEventY:F

    iput v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->mLastDownOrMoveEventY:F

    .line 4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    iput-wide v2, p0, Lsmartisan/widget/SmartisanNumberPicker;->mLastDownEventTime:J

    .line 5
    iput-boolean v1, p0, Lsmartisan/widget/SmartisanNumberPicker;->mIngonreMoveEvents:Z

    .line 6
    iput-boolean v1, p0, Lsmartisan/widget/SmartisanNumberPicker;->mShowSoftInputOnTap:Z

    .line 7
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 8
    iget-object p1, p0, Lsmartisan/widget/SmartisanNumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_2

    .line 9
    iget-object p1, p0, Lsmartisan/widget/SmartisanNumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {p1, v0}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 10
    iget-object p1, p0, Lsmartisan/widget/SmartisanNumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {p1, v0}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 11
    invoke-direct {p0, v1}, Lsmartisan/widget/SmartisanNumberPicker;->onScrollStateChange(I)V

    goto :goto_0

    .line 12
    :cond_2
    iget-object p1, p0, Lsmartisan/widget/SmartisanNumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_3

    .line 13
    iget-object p1, p0, Lsmartisan/widget/SmartisanNumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {p1, v0}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 14
    iget-object p1, p0, Lsmartisan/widget/SmartisanNumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {p1, v0}, Landroid/widget/Scroller;->forceFinished(Z)V

    goto :goto_0

    .line 15
    :cond_3
    iget p1, p0, Lsmartisan/widget/SmartisanNumberPicker;->mLastDownEventY:F

    iget v1, p0, Lsmartisan/widget/SmartisanNumberPicker;->mTopSelectionDividerTop:I

    int-to-float v1, v1

    cmpg-float v1, p1, v1

    if-gez v1, :cond_4

    goto :goto_0

    .line 16
    :cond_4
    iget v1, p0, Lsmartisan/widget/SmartisanNumberPicker;->mBottomSelectionDividerBottom:I

    int-to-float v1, v1

    cmpl-float p1, p1, v1

    if-lez p1, :cond_5

    goto :goto_0

    .line 17
    :cond_5
    iput-boolean v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->mShowSoftInputOnTap:Z

    :goto_0
    return v0

    :cond_6
    :goto_1
    return v1
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_0

    .line 2
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 3
    invoke-direct {p0}, Lsmartisan/widget/SmartisanNumberPicker;->initializeSelectorWheel()V

    .line 4
    invoke-direct {p0}, Lsmartisan/widget/SmartisanNumberPicker;->initializeFadingEdges()V

    .line 5
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p1

    iget p2, p0, Lsmartisan/widget/SmartisanNumberPicker;->mSelectorElementHeight:I

    sub-int/2addr p1, p2

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lsmartisan/widget/SmartisanNumberPicker;->mTopSelectionDividerTop:I

    .line 6
    iget p1, p0, Lsmartisan/widget/SmartisanNumberPicker;->mTopSelectionDividerTop:I

    add-int/2addr p1, p2

    iput p1, p0, Lsmartisan/widget/SmartisanNumberPicker;->mBottomSelectionDividerBottom:I

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void

    .line 3
    :cond_0
    iget v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->mMaxWidth:I

    invoke-direct {p0, p1, v0}, Lsmartisan/widget/SmartisanNumberPicker;->makeMeasureSpec(II)I

    move-result v0

    .line 4
    iget v1, p0, Lsmartisan/widget/SmartisanNumberPicker;->mMaxHeight:I

    invoke-direct {p0, p2, v1}, Lsmartisan/widget/SmartisanNumberPicker;->makeMeasureSpec(II)I

    move-result v1

    .line 5
    invoke-super {p0, v0, v1}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 6
    iget v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->mMinWidth:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v1

    invoke-direct {p0, v0, v1, p1}, Lsmartisan/widget/SmartisanNumberPicker;->resolveSizeAndStateRespectingMinSize(III)I

    move-result p1

    .line 7
    iget v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->mMinHeight:I

    .line 8
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v1

    .line 9
    invoke-direct {p0, v0, v1, p2}, Lsmartisan/widget/SmartisanNumberPicker;->resolveSizeAndStateRespectingMinSize(III)I

    move-result p2

    .line 10
    invoke-virtual {p0, p1, p2}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 2
    :cond_0
    iget-object v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_1

    .line 3
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 4
    :cond_1
    iget-object v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

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
    iget-boolean v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->mIngonreMoveEvents:Z

    if-eqz v0, :cond_3

    goto/16 :goto_3

    .line 7
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 8
    iget v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->mScrollState:I

    if-eq v0, v3, :cond_4

    .line 9
    iget v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->mLastDownEventY:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    .line 10
    iget v1, p0, Lsmartisan/widget/SmartisanNumberPicker;->mTouchSlop:I

    if-le v0, v1, :cond_5

    .line 11
    invoke-direct {p0, v3}, Lsmartisan/widget/SmartisanNumberPicker;->onScrollStateChange(I)V

    goto :goto_0

    .line 12
    :cond_4
    iget v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->mLastDownOrMoveEventY:F

    sub-float v0, p1, v0

    float-to-int v0, v0

    .line 13
    invoke-virtual {p0, v1, v0}, Lsmartisan/widget/SmartisanNumberPicker;->scrollBy(II)V

    .line 14
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    .line 15
    :cond_5
    :goto_0
    iput p1, p0, Lsmartisan/widget/SmartisanNumberPicker;->mLastDownOrMoveEventY:F

    goto :goto_3

    .line 16
    :cond_6
    iget-object v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v4, 0x3e8

    .line 17
    iget v5, p0, Lsmartisan/widget/SmartisanNumberPicker;->mMaximumFlingVelocity:I

    int-to-float v5, v5

    invoke-virtual {v0, v4, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 18
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    float-to-int v0, v0

    .line 19
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, p0, Lsmartisan/widget/SmartisanNumberPicker;->mMinimumFlingVelocity:I

    if-le v4, v5, :cond_7

    .line 20
    invoke-direct {p0, v0}, Lsmartisan/widget/SmartisanNumberPicker;->fling(I)V

    .line 21
    invoke-direct {p0, v2}, Lsmartisan/widget/SmartisanNumberPicker;->onScrollStateChange(I)V

    goto :goto_2

    .line 22
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    int-to-float v4, v0

    .line 23
    iget v5, p0, Lsmartisan/widget/SmartisanNumberPicker;->mLastDownEventY:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-int v4, v4

    .line 24
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    iget-wide v7, p0, Lsmartisan/widget/SmartisanNumberPicker;->mLastDownEventTime:J

    sub-long/2addr v5, v7

    .line 25
    iget p1, p0, Lsmartisan/widget/SmartisanNumberPicker;->mTouchSlop:I

    if-gt v4, p1, :cond_a

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result p1

    int-to-long v7, p1

    cmp-long p1, v5, v7

    if-gez p1, :cond_a

    .line 26
    iget-boolean p1, p0, Lsmartisan/widget/SmartisanNumberPicker;->mShowSoftInputOnTap:Z

    if-eqz p1, :cond_8

    .line 27
    iput-boolean v1, p0, Lsmartisan/widget/SmartisanNumberPicker;->mShowSoftInputOnTap:Z

    goto :goto_1

    .line 28
    :cond_8
    iget p1, p0, Lsmartisan/widget/SmartisanNumberPicker;->mSelectorElementHeight:I

    div-int/2addr v0, p1

    sub-int/2addr v0, v2

    if-lez v0, :cond_9

    .line 29
    invoke-direct {p0, v3}, Lsmartisan/widget/SmartisanNumberPicker;->changeValueByOne(Z)V

    goto :goto_1

    :cond_9
    if-gez v0, :cond_b

    .line 30
    invoke-direct {p0, v1}, Lsmartisan/widget/SmartisanNumberPicker;->changeValueByOne(Z)V

    goto :goto_1

    .line 31
    :cond_a
    invoke-direct {p0}, Lsmartisan/widget/SmartisanNumberPicker;->ensureScrollWheelAdjusted()Z

    .line 32
    :cond_b
    :goto_1
    invoke-direct {p0, v1}, Lsmartisan/widget/SmartisanNumberPicker;->onScrollStateChange(I)V

    .line 33
    :goto_2
    iget-object p1, p0, Lsmartisan/widget/SmartisanNumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 p1, 0x0

    .line 34
    iput-object p1, p0, Lsmartisan/widget/SmartisanNumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    :goto_3
    return v3

    :cond_c
    :goto_4
    return v1
.end method

.method public scrollBy(II)V
    .locals 4

    .line 1
    iget-object p1, p0, Lsmartisan/widget/SmartisanNumberPicker;->mSelectorIndices:[I

    .line 2
    iget-boolean v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->mWrapSelectorWheel:Z

    const/4 v1, 0x2

    if-nez v0, :cond_0

    if-lez p2, :cond_0

    aget v0, p1, v1

    iget v2, p0, Lsmartisan/widget/SmartisanNumberPicker;->mMinValue:I

    if-gt v0, v2, :cond_0

    .line 3
    iget p1, p0, Lsmartisan/widget/SmartisanNumberPicker;->mInitialScrollOffset:I

    iput p1, p0, Lsmartisan/widget/SmartisanNumberPicker;->mCurrentScrollOffset:I

    return-void

    .line 4
    :cond_0
    iget-boolean v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->mWrapSelectorWheel:Z

    if-nez v0, :cond_1

    if-gez p2, :cond_1

    aget v0, p1, v1

    .line 5
    invoke-direct {p0}, Lsmartisan/widget/SmartisanNumberPicker;->maxValue()I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 6
    iget p1, p0, Lsmartisan/widget/SmartisanNumberPicker;->mInitialScrollOffset:I

    iput p1, p0, Lsmartisan/widget/SmartisanNumberPicker;->mCurrentScrollOffset:I

    return-void

    .line 7
    :cond_1
    iget v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->mCurrentScrollOffset:I

    add-int/2addr v0, p2

    iput v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->mCurrentScrollOffset:I

    .line 8
    :cond_2
    :goto_0
    iget p2, p0, Lsmartisan/widget/SmartisanNumberPicker;->mCurrentScrollOffset:I

    iget v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->mInitialScrollOffset:I

    sub-int v0, p2, v0

    iget v2, p0, Lsmartisan/widget/SmartisanNumberPicker;->mSelectorTextGapHeight:I

    const/4 v3, 0x1

    if-le v0, v2, :cond_3

    .line 9
    iget v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->mSelectorElementHeight:I

    sub-int/2addr p2, v0

    iput p2, p0, Lsmartisan/widget/SmartisanNumberPicker;->mCurrentScrollOffset:I

    .line 10
    invoke-direct {p0, p1}, Lsmartisan/widget/SmartisanNumberPicker;->decrementSelectorIndices([I)V

    .line 11
    aget p2, p1, v1

    invoke-direct {p0, p2, v3}, Lsmartisan/widget/SmartisanNumberPicker;->setValueInternal(IZ)V

    .line 12
    iget-boolean p2, p0, Lsmartisan/widget/SmartisanNumberPicker;->mWrapSelectorWheel:Z

    if-nez p2, :cond_2

    aget p2, p1, v1

    iget v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->mMinValue:I

    if-gt p2, v0, :cond_2

    .line 13
    iget p2, p0, Lsmartisan/widget/SmartisanNumberPicker;->mInitialScrollOffset:I

    iput p2, p0, Lsmartisan/widget/SmartisanNumberPicker;->mCurrentScrollOffset:I

    goto :goto_0

    .line 14
    :cond_3
    :goto_1
    iget p2, p0, Lsmartisan/widget/SmartisanNumberPicker;->mCurrentScrollOffset:I

    iget v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->mInitialScrollOffset:I

    sub-int v0, p2, v0

    iget v2, p0, Lsmartisan/widget/SmartisanNumberPicker;->mSelectorTextGapHeight:I

    neg-int v2, v2

    if-ge v0, v2, :cond_4

    .line 15
    iget v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->mSelectorElementHeight:I

    add-int/2addr p2, v0

    iput p2, p0, Lsmartisan/widget/SmartisanNumberPicker;->mCurrentScrollOffset:I

    .line 16
    invoke-direct {p0, p1}, Lsmartisan/widget/SmartisanNumberPicker;->incrementSelectorIndices([I)V

    .line 17
    aget p2, p1, v1

    invoke-direct {p0, p2, v3}, Lsmartisan/widget/SmartisanNumberPicker;->setValueInternal(IZ)V

    .line 18
    iget-boolean p2, p0, Lsmartisan/widget/SmartisanNumberPicker;->mWrapSelectorWheel:Z

    if-nez p2, :cond_3

    aget p2, p1, v1

    invoke-direct {p0}, Lsmartisan/widget/SmartisanNumberPicker;->maxValue()I

    move-result v0

    if-lt p2, v0, :cond_3

    .line 19
    iget p2, p0, Lsmartisan/widget/SmartisanNumberPicker;->mInitialScrollOffset:I

    iput p2, p0, Lsmartisan/widget/SmartisanNumberPicker;->mCurrentScrollOffset:I

    goto :goto_1

    :cond_4
    return-void
.end method

.method public setDisplayedValues([Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iput-object p1, p0, Lsmartisan/widget/SmartisanNumberPicker;->mDisplayedValues:[Ljava/lang/String;

    .line 3
    invoke-direct {p0}, Lsmartisan/widget/SmartisanNumberPicker;->initializeSelectorWheelIndices()V

    return-void
.end method

.method public setFormatter(Lsmartisan/widget/SmartisanNumberPicker$Formatter;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->mFormatter:Lsmartisan/widget/SmartisanNumberPicker$Formatter;

    if-ne p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    iput-object p1, p0, Lsmartisan/widget/SmartisanNumberPicker;->mFormatter:Lsmartisan/widget/SmartisanNumberPicker$Formatter;

    .line 3
    invoke-direct {p0}, Lsmartisan/widget/SmartisanNumberPicker;->initializeSelectorWheelIndices()V

    return-void
.end method

.method public setMaxValue(I)V
    .locals 1

    const/4 v0, 0x0

    .line 12
    invoke-virtual {p0, p1, v0}, Lsmartisan/widget/SmartisanNumberPicker;->setMaxValue(IZ)V

    return-void
.end method

.method public setMaxValue(IZ)V
    .locals 1

    .line 1
    iget v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->mMaxValue:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-ltz p1, :cond_3

    .line 2
    iput p1, p0, Lsmartisan/widget/SmartisanNumberPicker;->mMaxValue:I

    .line 3
    iget p1, p0, Lsmartisan/widget/SmartisanNumberPicker;->mMaxValue:I

    iget v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->mValue:I

    if-ge p1, v0, :cond_1

    .line 4
    iput p1, p0, Lsmartisan/widget/SmartisanNumberPicker;->mValue:I

    .line 5
    :cond_1
    iput-boolean p2, p0, Lsmartisan/widget/SmartisanNumberPicker;->mHasUnsetValue:Z

    .line 6
    invoke-direct {p0}, Lsmartisan/widget/SmartisanNumberPicker;->maxValue()I

    move-result p1

    iget p2, p0, Lsmartisan/widget/SmartisanNumberPicker;->mMinValue:I

    sub-int/2addr p1, p2

    iget-object p2, p0, Lsmartisan/widget/SmartisanNumberPicker;->mSelectorIndices:[I

    array-length p2, p2

    if-le p1, p2, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 7
    :goto_0
    invoke-virtual {p0, p1}, Lsmartisan/widget/SmartisanNumberPicker;->setWrapSelectorWheel(Z)V

    .line 8
    invoke-direct {p0}, Lsmartisan/widget/SmartisanNumberPicker;->initializeSelectorWheelIndices()V

    .line 9
    invoke-direct {p0}, Lsmartisan/widget/SmartisanNumberPicker;->tryComputeMaxWidth()V

    .line 10
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void

    .line 11
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "maxValue must be >= 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMinValue(I)V
    .locals 1

    .line 1
    iget v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->mMinValue:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-ltz p1, :cond_3

    .line 2
    iput p1, p0, Lsmartisan/widget/SmartisanNumberPicker;->mMinValue:I

    .line 3
    iget p1, p0, Lsmartisan/widget/SmartisanNumberPicker;->mMinValue:I

    iget v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->mValue:I

    if-le p1, v0, :cond_1

    .line 4
    iput p1, p0, Lsmartisan/widget/SmartisanNumberPicker;->mValue:I

    .line 5
    :cond_1
    invoke-direct {p0}, Lsmartisan/widget/SmartisanNumberPicker;->maxValue()I

    move-result p1

    iget v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->mMinValue:I

    sub-int/2addr p1, v0

    iget-object v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->mSelectorIndices:[I

    array-length v0, v0

    if-le p1, v0, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 6
    :goto_0
    invoke-virtual {p0, p1}, Lsmartisan/widget/SmartisanNumberPicker;->setWrapSelectorWheel(Z)V

    .line 7
    invoke-direct {p0}, Lsmartisan/widget/SmartisanNumberPicker;->initializeSelectorWheelIndices()V

    .line 8
    invoke-direct {p0}, Lsmartisan/widget/SmartisanNumberPicker;->tryComputeMaxWidth()V

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

.method public setOnScrollListener(Lsmartisan/widget/SmartisanNumberPicker$OnScrollListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/SmartisanNumberPicker;->mOnScrollListener:Lsmartisan/widget/SmartisanNumberPicker$OnScrollListener;

    return-void
.end method

.method public setOnValueChangedListener(Lsmartisan/widget/SmartisanNumberPicker$OnValueChangeListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/SmartisanNumberPicker;->mOnValueChangeListener:Lsmartisan/widget/SmartisanNumberPicker$OnValueChangeListener;

    return-void
.end method

.method public setSoundEnable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lsmartisan/widget/SmartisanNumberPicker;->mSoundEnable:Z

    return-void
.end method

.method public setTextColor(II)V
    .locals 0

    .line 1
    iput p1, p0, Lsmartisan/widget/SmartisanNumberPicker;->mNormalColor:I

    .line 2
    iput p2, p0, Lsmartisan/widget/SmartisanNumberPicker;->mHighlightColor:I

    return-void
.end method

.method public setTextSize(II)V
    .locals 0

    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    .line 1
    iput p1, p0, Lsmartisan/widget/SmartisanNumberPicker;->mNormalSize:I

    .line 2
    iput p2, p0, Lsmartisan/widget/SmartisanNumberPicker;->mHighlightSize:I

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
    invoke-direct {p0, p1, v0}, Lsmartisan/widget/SmartisanNumberPicker;->setValueInternal(IZ)V

    return-void
.end method

.method public setWrapSelectorWheel(Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lsmartisan/widget/SmartisanNumberPicker;->maxValue()I

    move-result v0

    iget v1, p0, Lsmartisan/widget/SmartisanNumberPicker;->mMinValue:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lsmartisan/widget/SmartisanNumberPicker;->mSelectorIndices:[I

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
    iget-boolean v0, p0, Lsmartisan/widget/SmartisanNumberPicker;->mWrapSelectorWheel:Z

    if-eq p1, v0, :cond_2

    .line 3
    iput-boolean p1, p0, Lsmartisan/widget/SmartisanNumberPicker;->mWrapSelectorWheel:Z

    :cond_2
    return-void
.end method
