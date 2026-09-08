.class public Lsmartisan/widget/SmartisanNumberPickerEx;
.super Landroid/widget/LinearLayout;
.source "SmartisanNumberPickerEx.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsmartisan/widget/SmartisanNumberPickerEx$Formatter;,
        Lsmartisan/widget/SmartisanNumberPickerEx$OnScrollListener;,
        Lsmartisan/widget/SmartisanNumberPickerEx$OnValueChangeListener;,
        Lsmartisan/widget/SmartisanNumberPickerEx$TwoDigitFormatter;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final DEFAULT_LINE_SPACE:F = 2.0f

.field private static final DEFAULT_TEXT_SCALE:F = 1.05f

.field private static final DEFAULT_TEXT_SIZE:I = 0x11

.field private static final DEFAUlT_TEXT_COLOR:I

.field private static final HIGHLIGHT_TEXT_COLOR:I

.field private static final HIGHLIGHT_TEXT_SIZE:I = 0x3c

.field private static final INITIAL_TEXT_COLOR:I

.field private static final SELECTOR_ADJUSTMENT_DURATION_MILLIS:I = 0x320

.field private static final SELECTOR_MAX_FLING_VELOCITY_ADJUSTMENT:I = 0x8

.field private static final SELECTOR_MIDDLE_ITEM_INDEX:I = 0x4

.field private static final SELECTOR_WHEEL_ITEM_COUNT:I = 0x9

.field private static final SIZE_UNSPECIFIED:I = -0x1

.field private static final SNAP_SCROLL_DURATION:I = 0x12c

.field private static final TAG:Ljava/lang/String; = "SmartisanNumberPicker"

.field private static final TEXT_WIDTH_OFFSET_IGNORE:I = 0xa

.field private static final TOP_AND_BOTTOM_FADING_EDGE_STRENGTH:F = 0.0f

.field private static final UNSET_STRING:Ljava/lang/String; = "--"

.field public static final UNSET_YEAR:I = 0x4

.field private static final VOLUME:F = 0.0945f

.field private static mDefaultItemSize:I = 0x0

.field private static final mHighlightItemSize:I = 0x92

.field private static sPool:Landroid/media/SoundPool;

.field private static sSoundId:I

.field private static final sTwoDigitFormatter:Lsmartisan/widget/SmartisanNumberPickerEx$TwoDigitFormatter;


# instance fields
.field private final mAdjustScroller:Landroid/widget/Scroller;

.field private mBottomSelectionDividerBottom:I

.field private final mComputeMaxWidth:Z

.field private mCurrentScrollOffset:I

.field private mDisplayedValues:[Ljava/lang/String;

.field private mDrawableBg:Landroid/graphics/drawable/Drawable;

.field private mFirstLineY:I

.field private final mFlingScroller:Landroid/widget/Scroller;

.field private mFormatter:Lsmartisan/widget/SmartisanNumberPickerEx$Formatter;

.field private mHalfCircumference:I

.field private final mHasSelectorWheel:Z

.field private mHasUnsetValue:Z

.field private mHeight:I

.field private mHighlightColor:I

.field private mHighlightSize:I

.field private mHightlightSuffix:Ljava/lang/String;

.field private mHightlightSuffixFontSize:I

.field private mHightlightSuffixMargin:I

.field private mIngonreMoveEvents:Z

.field private mInitialColor:I

.field private mInitialScrollOffset:I

.field private mInitialValue:I

.field private mItemsVisibleCount:I

.field private mLargeLineGap:I

.field private mLastDownEventTime:J

.field private mLastDownEventY:F

.field private mLastDownOrMoveEventY:F

.field private mLineSpacingMultiplier:F

.field private final mMaxHeight:I

.field private mMaxTextHeight:I

.field private mMaxValue:I

.field private mMaxWidth:I

.field private mMaxWidthText:Ljava/lang/String;

.field private mMaximumFlingVelocity:I

.field private mMidTextWidth:I

.field private mMiddleScrollOffset:I

.field private final mMinHeight:I

.field private mMinValue:I

.field private final mMinWidth:I

.field private mMinimumFlingVelocity:I

.field private mNormalColor:I

.field private mNormalLineGap:I

.field private mNormalSize:I

.field private mOldTime:I

.field private mOnScrollListener:Lsmartisan/widget/SmartisanNumberPickerEx$OnScrollListener;

.field private mOnValueChangeListener:Lsmartisan/widget/SmartisanNumberPickerEx$OnValueChangeListener;

.field private mPaintCenterText:Landroid/graphics/Paint;

.field private mPaintIndicator:Landroid/graphics/Paint;

.field private mPaintOuterText:Landroid/graphics/Paint;

.field private mPreviousScrollerY:I

.field private mRadius:I

.field private mScaleX:F

.field private mScrollState:I

.field private mSecondLineY:I

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

.field private mSmallLineGap:I

.field private mSoundEnable:Z

.field private mSoundRunnable:Ljava/lang/Runnable;

.field private mTempRect:Landroid/graphics/Rect;

.field private mTextPadding:F

.field private mTextSize:I

.field private mTopSelectionDividerTop:I

.field private mTouchSlop:I

.field private mValue:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mWidth:I

.field private mWrapSelectorWheel:Z

.field private mcContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "#4c000000"

    .line 1
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lsmartisan/widget/SmartisanNumberPickerEx;->DEFAUlT_TEXT_COLOR:I

    const-string v0, "#e65079d9"

    .line 2
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lsmartisan/widget/SmartisanNumberPickerEx;->INITIAL_TEXT_COLOR:I

    const-string v0, "#9a000000"

    .line 3
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lsmartisan/widget/SmartisanNumberPickerEx;->HIGHLIGHT_TEXT_COLOR:I

    const/4 v0, 0x0

    .line 4
    sput v0, Lsmartisan/widget/SmartisanNumberPickerEx;->mDefaultItemSize:I

    .line 5
    new-instance v0, Lsmartisan/widget/SmartisanNumberPickerEx$TwoDigitFormatter;

    invoke-direct {v0}, Lsmartisan/widget/SmartisanNumberPickerEx$TwoDigitFormatter;-><init>()V

    sput-object v0, Lsmartisan/widget/SmartisanNumberPickerEx;->sTwoDigitFormatter:Lsmartisan/widget/SmartisanNumberPickerEx$TwoDigitFormatter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lsmartisan/widget/SmartisanNumberPickerEx;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lsmartisan/widget/SmartisanNumberPickerEx;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 4
    iput-object p2, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mHightlightSuffix:Ljava/lang/String;

    .line 5
    new-instance p3, Landroid/util/SparseArray;

    invoke-direct {p3}, Landroid/util/SparseArray;-><init>()V

    iput-object p3, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    const/16 p3, 0x9

    new-array v0, p3, [I

    .line 6
    iput-object v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mSelectorIndices:[I

    const/16 v0, 0x11

    .line 7
    iput v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mNormalSize:I

    const/16 v0, 0x3c

    .line 8
    iput v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mHighlightSize:I

    .line 9
    sget v0, Lsmartisan/widget/SmartisanNumberPickerEx;->DEFAUlT_TEXT_COLOR:I

    iput v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mNormalColor:I

    .line 10
    sget v0, Lsmartisan/widget/SmartisanNumberPickerEx;->HIGHLIGHT_TEXT_COLOR:I

    iput v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mHighlightColor:I

    .line 11
    sget v0, Lsmartisan/widget/SmartisanNumberPickerEx;->INITIAL_TEXT_COLOR:I

    iput v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mInitialColor:I

    const/high16 v0, -0x80000000

    .line 12
    iput v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mInitialScrollOffset:I

    const/4 v0, 0x0

    .line 13
    iput v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mScrollState:I

    .line 14
    iput-boolean v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mHasUnsetValue:Z

    const/4 v1, 0x1

    .line 15
    iput-boolean v1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mSoundEnable:Z

    const/4 v2, -0x1

    .line 16
    iput v2, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mOldTime:I

    const/high16 v3, 0x40000000    # 2.0f

    .line 17
    iput v3, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mLineSpacingMultiplier:F

    .line 18
    iput p3, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mItemsVisibleCount:I

    const p3, 0x3f866666    # 1.05f

    .line 19
    iput p3, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mScaleX:F

    .line 20
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mTempRect:Landroid/graphics/Rect;

    .line 21
    new-instance p3, Lsmartisan/widget/SmartisanNumberPickerEx$1;

    invoke-direct {p3, p0}, Lsmartisan/widget/SmartisanNumberPickerEx$1;-><init>(Lsmartisan/widget/SmartisanNumberPickerEx;)V

    iput-object p3, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mSoundRunnable:Ljava/lang/Runnable;

    .line 22
    iput-object p1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mcContext:Landroid/content/Context;

    .line 23
    iput-boolean v1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mHasSelectorWheel:Z

    .line 24
    iput v2, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mMinHeight:I

    .line 25
    iput v2, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mMaxHeight:I

    .line 26
    iget p3, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mMinHeight:I

    if-eq p3, v2, :cond_1

    iget v3, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mMaxHeight:I

    if-eq v3, v2, :cond_1

    if-gt p3, v3, :cond_0

    goto :goto_0

    .line 27
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "minHeight > maxHeight"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 28
    :cond_1
    :goto_0
    iput v2, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mMinWidth:I

    .line 29
    iput v2, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mMaxWidth:I

    .line 30
    iget p3, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mMinWidth:I

    if-eq p3, v2, :cond_3

    iget v3, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mMaxWidth:I

    if-eq v3, v2, :cond_3

    if-gt p3, v3, :cond_2

    goto :goto_1

    .line 31
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "minWidth > maxWidth"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 32
    :cond_3
    :goto_1
    iget p3, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mMaxWidth:I

    if-ne p3, v2, :cond_4

    move v0, v1

    :cond_4
    iput-boolean v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mComputeMaxWidth:Z

    .line 33
    iget-boolean p3, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mHasSelectorWheel:Z

    xor-int/2addr p3, v1

    invoke-virtual {p0, p3}, Landroid/widget/LinearLayout;->setWillNotDraw(Z)V

    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p3

    .line 35
    invoke-virtual {p3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mTouchSlop:I

    .line 36
    invoke-virtual {p3}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v0

    iput v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mMinimumFlingVelocity:I

    .line 37
    invoke-virtual {p3}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p3

    div-int/lit8 p3, p3, 0x8

    iput p3, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mMaximumFlingVelocity:I

    .line 38
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    .line 39
    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 40
    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 41
    iget v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mNormalSize:I

    int-to-float v0, v0

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 42
    iget v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mNormalColor:I

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 43
    iput-object p3, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mSelectorWheelPaint:Landroid/graphics/Paint;

    .line 44
    new-instance p3, Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p3, v0, p2, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    iput-object p3, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mFlingScroller:Landroid/widget/Scroller;

    .line 45
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    const/high16 p3, 0x40200000    # 2.5f

    cmpl-float p2, p2, p3

    if-nez p2, :cond_5

    .line 46
    iget-object p2, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mFlingScroller:Landroid/widget/Scroller;

    const v0, 0x3b378034    # 0.0028f

    invoke-virtual {p2, v0}, Landroid/widget/Scroller;->setFriction(F)V

    goto :goto_2

    .line 47
    :cond_5
    iget-object p2, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mFlingScroller:Landroid/widget/Scroller;

    const v0, 0x3ac49ba6    # 0.0015f

    invoke-virtual {p2, v0}, Landroid/widget/Scroller;->setFriction(F)V

    .line 48
    :goto_2
    new-instance p2, Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1, p3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-direct {p2, v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object p2, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mAdjustScroller:Landroid/widget/Scroller;

    .line 49
    iget-object p2, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mAdjustScroller:Landroid/widget/Scroller;

    const p3, 0x3a03126f    # 5.0E-4f

    invoke-virtual {p2, p3}, Landroid/widget/Scroller;->setFriction(F)V

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lsmartisan/widget/R$dimen;->number_picker_small_line_gap:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mSmallLineGap:I

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lsmartisan/widget/R$dimen;->number_picker_normal_line_gap:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mNormalLineGap:I

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lsmartisan/widget/R$dimen;->number_picker_large_line_gap:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mLargeLineGap:I

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lsmartisan/widget/R$dimen;->smartisan_numberpicker_hightlight_suffix_font_size:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mHightlightSuffixFontSize:I

    .line 54
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lsmartisan/widget/R$dimen;->smartisan_numberpicker_hightlight_suffix_margin:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mHightlightSuffixMargin:I

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lsmartisan/widget/R$color;->calander_date_pick_select_day_color_2:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mInitialColor:I

    .line 56
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 p2, 0x41880000    # 17.0f

    mul-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mTextSize:I

    .line 57
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mPaintOuterText:Landroid/graphics/Paint;

    .line 58
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mPaintCenterText:Landroid/graphics/Paint;

    .line 59
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mPaintIndicator:Landroid/graphics/Paint;

    .line 60
    invoke-direct {p0}, Lsmartisan/widget/SmartisanNumberPickerEx;->initPaints()V

    return-void
.end method

.method static synthetic access$000()Landroid/media/SoundPool;
    .locals 1

    .line 1
    sget-object v0, Lsmartisan/widget/SmartisanNumberPickerEx;->sPool:Landroid/media/SoundPool;

    return-object v0
.end method

.method static synthetic access$100(Lsmartisan/widget/SmartisanNumberPickerEx;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mSoundEnable:Z

    return p0
.end method

.method static synthetic access$200()I
    .locals 1

    .line 1
    sget v0, Lsmartisan/widget/SmartisanNumberPickerEx;->sSoundId:I

    return v0
.end method

.method private changeValueByOne(Z)V
    .locals 13

    .line 1
    iget-boolean v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mHasSelectorWheel:Z

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mFlingScroller:Landroid/widget/Scroller;

    invoke-direct {p0, v0}, Lsmartisan/widget/SmartisanNumberPickerEx;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-direct {p0, v0}, Lsmartisan/widget/SmartisanNumberPickerEx;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    :cond_0
    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mPreviousScrollerY:I

    if-eqz p1, :cond_1

    .line 5
    iget-object v1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mFlingScroller:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget p1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mSelectorElementHeight:I

    neg-int v5, p1

    const/16 v6, 0x12c

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v7, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mFlingScroller:Landroid/widget/Scroller;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget v11, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mSelectorElementHeight:I

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
    iget p1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mValue:I

    add-int/2addr p1, v0

    invoke-direct {p0, p1, v0}, Lsmartisan/widget/SmartisanNumberPickerEx;->setValueInternal(IZ)V

    goto :goto_1

    .line 9
    :cond_3
    iget p1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mValue:I

    sub-int/2addr p1, v0

    invoke-direct {p0, p1, v0}, Lsmartisan/widget/SmartisanNumberPickerEx;->setValueInternal(IZ)V

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
    iget-boolean v1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mWrapSelectorWheel:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mMinValue:I

    if-ge v0, v1, :cond_1

    .line 5
    invoke-direct {p0}, Lsmartisan/widget/SmartisanNumberPickerEx;->maxValue()I

    move-result v0

    :cond_1
    const/4 v1, 0x0

    .line 6
    aput v0, p1, v1

    .line 7
    invoke-direct {p0, v0}, Lsmartisan/widget/SmartisanNumberPickerEx;->ensureCachedScrollSelectorValue(I)V

    return-void
.end method

.method private ensureCachedScrollSelectorValue(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    .line 2
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    return-void

    .line 3
    :cond_0
    iget v1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mMinValue:I

    if-lt p1, v1, :cond_3

    iget v2, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mMaxValue:I

    if-le p1, v2, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v2, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mDisplayedValues:[Ljava/lang/String;

    if-eqz v2, :cond_2

    sub-int v1, p1, v1

    .line 5
    aget-object v1, v2, v1

    goto :goto_1

    .line 6
    :cond_2
    invoke-direct {p0, p1}, Lsmartisan/widget/SmartisanNumberPickerEx;->formatNumber(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 7
    :cond_3
    :goto_0
    invoke-direct {p0}, Lsmartisan/widget/SmartisanNumberPickerEx;->hasUnset()Z

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
    iget v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mInitialScrollOffset:I

    iget v1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mCurrentScrollOffset:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2
    iput v1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mPreviousScrollerY:I

    .line 3
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mSelectorElementHeight:I

    div-int/lit8 v3, v2, 0x2

    if-le v1, v3, :cond_1

    if-lez v0, :cond_0

    neg-int v2, v2

    :cond_0
    add-int/2addr v0, v2

    :cond_1
    move v5, v0

    .line 4
    iget-object v1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mAdjustScroller:Landroid/widget/Scroller;

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
    iput v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mPreviousScrollerY:I

    if-lez p1, :cond_0

    .line 2
    iget-object v1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mFlingScroller:Landroid/widget/Scroller;

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
    iget-object v1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mFlingScroller:Landroid/widget/Scroller;

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
    iget-object v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mFormatter:Lsmartisan/widget/SmartisanNumberPickerEx$Formatter;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lsmartisan/widget/SmartisanNumberPickerEx$Formatter;->format(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lsmartisan/widget/SmartisanNumberPickerEx;->formatNumberWithLocale(I)Ljava/lang/String;

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

.method private getTextX(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Rect;)I
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p2, p1, v1, v0, p3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 2
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    .line 3
    iget p2, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mScaleX:F

    mul-float/2addr p1, p2

    float-to-int p1, p1

    .line 4
    iget p2, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mWidth:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result p3

    sub-int/2addr p2, p3

    sub-int/2addr p2, p1

    div-int/lit8 p2, p2, 0x2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result p1

    add-int/2addr p2, p1

    return p2
.end method

.method public static final getTwoDigitFormatter()Lsmartisan/widget/SmartisanNumberPickerEx$Formatter;
    .locals 1

    .line 1
    sget-object v0, Lsmartisan/widget/SmartisanNumberPickerEx;->sTwoDigitFormatter:Lsmartisan/widget/SmartisanNumberPickerEx$TwoDigitFormatter;

    return-object v0
.end method

.method private getWrappedSelectorIndex(I)I
    .locals 3

    .line 1
    invoke-direct {p0}, Lsmartisan/widget/SmartisanNumberPickerEx;->maxValue()I

    move-result v0

    if-le p1, v0, :cond_0

    .line 2
    iget v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mMinValue:I

    invoke-direct {p0}, Lsmartisan/widget/SmartisanNumberPickerEx;->maxValue()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-direct {p0}, Lsmartisan/widget/SmartisanNumberPickerEx;->maxValue()I

    move-result v1

    rem-int/2addr p1, v1

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    return v0

    .line 3
    :cond_0
    iget v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mMinValue:I

    if-ge p1, v0, :cond_1

    .line 4
    invoke-direct {p0}, Lsmartisan/widget/SmartisanNumberPickerEx;->maxValue()I

    move-result v0

    iget v1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mMinValue:I

    sub-int/2addr v1, p1

    invoke-direct {p0}, Lsmartisan/widget/SmartisanNumberPickerEx;->maxValue()I

    move-result p1

    iget v2, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mMinValue:I

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
    iget-boolean v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mHasUnsetValue:Z

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
    iget-boolean v1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mWrapSelectorWheel:Z

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lsmartisan/widget/SmartisanNumberPickerEx;->maxValue()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 5
    iget v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mMinValue:I

    .line 6
    :cond_1
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    aput v0, p1, v1

    .line 7
    invoke-direct {p0, v0}, Lsmartisan/widget/SmartisanNumberPickerEx;->ensureCachedScrollSelectorValue(I)V

    return-void
.end method

.method private initPaints()V
    .locals 3

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mPaintOuterText:Landroid/graphics/Paint;

    iget v1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mNormalColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2
    iget-object v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mPaintOuterText:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 3
    iget-object v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mPaintOuterText:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 4
    iget-object v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mPaintOuterText:Landroid/graphics/Paint;

    iget v2, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mTextSize:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 5
    iget-object v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mPaintCenterText:Landroid/graphics/Paint;

    iget v2, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mHighlightColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 6
    iget-object v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mPaintCenterText:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 7
    iget-object v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mPaintCenterText:Landroid/graphics/Paint;

    iget v2, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mScaleX:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextScaleX(F)V

    .line 8
    iget-object v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mPaintCenterText:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 9
    iget-object v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mPaintCenterText:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 10
    iget-object v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mPaintCenterText:Landroid/graphics/Paint;

    iget v2, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mTextSize:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 11
    iget-object v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mPaintIndicator:Landroid/graphics/Paint;

    iget v2, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mNormalColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 12
    iget-object v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mPaintIndicator:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

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

    add-int/lit16 v0, v0, -0x92

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setFadingEdgeLength(I)V

    return-void
.end method

.method private initializeSelectorWheel()V
    .locals 6

    .line 1
    invoke-direct {p0}, Lsmartisan/widget/SmartisanNumberPickerEx;->initializeSelectorWheelIndices()V

    .line 2
    iget-object v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mSelectorIndices:[I

    .line 3
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mNormalSize:I

    mul-int/2addr v1, v2

    iget v2, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mHighlightSize:I

    add-int/2addr v1, v2

    .line 4
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTop()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v2, v1

    int-to-float v1, v2

    .line 5
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTop()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/lit16 v2, v2, -0x92

    div-int/lit8 v2, v2, 0x8

    sput v2, Lsmartisan/widget/SmartisanNumberPickerEx;->mDefaultItemSize:I

    .line 6
    array-length v0, v0

    int-to-float v0, v0

    div-float/2addr v1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr v1, v0

    float-to-int v1, v1

    .line 7
    iput v1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mSelectorTextGapHeight:I

    .line 8
    iget v1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mNormalSize:I

    iget v2, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mSelectorTextGapHeight:I

    add-int/2addr v1, v2

    iput v1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mSelectorElementHeight:I

    .line 9
    sget v1, Lsmartisan/widget/SmartisanNumberPickerEx;->mDefaultItemSize:I

    div-int/lit8 v2, v1, 0x2

    add-int/lit8 v2, v2, 0x6

    iput v2, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mInitialScrollOffset:I

    .line 10
    iget v2, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mInitialScrollOffset:I

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v1, v2

    iput v1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mMiddleScrollOffset:I

    .line 11
    iput v2, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mCurrentScrollOffset:I

    .line 12
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lsmartisan/widget/R$dimen;->number_picker_text_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mTextPadding:F

    .line 13
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v1

    iput v1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mWidth:I

    .line 14
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v1

    iput v1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mHeight:I

    .line 15
    iget v1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mWidth:I

    if-eqz v1, :cond_1

    iget v2, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mHeight:I

    if-nez v2, :cond_0

    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mWidth:I

    .line 17
    iget v1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mHeight:I

    int-to-double v2, v1

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    double-to-int v2, v2

    iput v2, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mHalfCircumference:I

    .line 18
    iget v2, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mHalfCircumference:I

    int-to-float v2, v2

    iget v3, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mLineSpacingMultiplier:F

    iget v4, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mItemsVisibleCount:I

    add-int/lit8 v4, v4, -0x1

    int-to-float v4, v4

    mul-float/2addr v4, v3

    div-float/2addr v2, v4

    float-to-int v2, v2

    iput v2, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mMaxTextHeight:I

    .line 19
    div-int/lit8 v2, v1, 0x2

    iput v2, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mRadius:I

    int-to-float v2, v1

    .line 20
    iget v4, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mMaxTextHeight:I

    int-to-float v5, v4

    mul-float/2addr v5, v3

    sub-float/2addr v2, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v2, v5

    float-to-int v2, v2

    iput v2, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mFirstLineY:I

    int-to-float v1, v1

    int-to-float v2, v4

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    div-float/2addr v1, v5

    float-to-int v1, v1

    .line 21
    iput v1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mSecondLineY:I

    int-to-float v1, v4

    mul-float/2addr v3, v1

    add-float/2addr v3, v0

    float-to-int v0, v3

    .line 22
    iput v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mSelectorTextGapHeight:I

    .line 23
    iget v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mSelectorTextGapHeight:I

    iput v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mSelectorElementHeight:I

    .line 24
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lsmartisan/widget/R$drawable;->time_picker_widget_lens:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mDrawableBg:Landroid/graphics/drawable/Drawable;

    :cond_1
    :goto_0
    return-void
.end method

.method private initializeSelectorWheelIndices()V
    .locals 6

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 2
    iget-object v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mSelectorIndices:[I

    .line 3
    invoke-virtual {p0}, Lsmartisan/widget/SmartisanNumberPickerEx;->getValue()I

    move-result v1

    .line 4
    invoke-direct {p0, v1}, Lsmartisan/widget/SmartisanNumberPickerEx;->looksUnset(I)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 5
    iget v1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mMinValue:I

    .line 6
    iget v2, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mMaxValue:I

    .line 7
    :goto_0
    iget-object v4, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mSelectorIndices:[I

    array-length v5, v4

    div-int/lit8 v5, v5, 0x2

    if-ge v3, v5, :cond_0

    .line 8
    array-length v4, v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v4, v3

    add-int/lit8 v4, v4, -0x1

    sub-int v4, v2, v4

    aput v4, v0, v3

    .line 9
    aget v4, v0, v3

    invoke-direct {p0, v4}, Lsmartisan/widget/SmartisanNumberPickerEx;->ensureCachedScrollSelectorValue(I)V

    .line 10
    iget-object v4, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mSelectorIndices:[I

    array-length v4, v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v3

    add-int/lit8 v4, v4, 0x1

    add-int v5, v1, v3

    .line 11
    aput v5, v0, v4

    .line 12
    aget v4, v0, v4

    invoke-direct {p0, v4}, Lsmartisan/widget/SmartisanNumberPickerEx;->ensureCachedScrollSelectorValue(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 13
    :cond_0
    array-length v1, v4

    div-int/lit8 v1, v1, 0x2

    const/4 v2, 0x4

    .line 14
    aput v2, v0, v1

    .line 15
    aget v0, v0, v1

    invoke-direct {p0, v0}, Lsmartisan/widget/SmartisanNumberPickerEx;->ensureCachedScrollSelectorValue(I)V

    goto :goto_2

    .line 16
    :cond_1
    :goto_1
    iget-object v2, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mSelectorIndices:[I

    array-length v2, v2

    if-ge v3, v2, :cond_3

    add-int/lit8 v2, v3, -0x4

    add-int/2addr v2, v1

    .line 17
    iget-boolean v4, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mWrapSelectorWheel:Z

    if-eqz v4, :cond_2

    .line 18
    invoke-direct {p0, v2}, Lsmartisan/widget/SmartisanNumberPickerEx;->getWrappedSelectorIndex(I)I

    move-result v2

    .line 19
    :cond_2
    aput v2, v0, v3

    .line 20
    aget v2, v0, v3

    invoke-direct {p0, v2}, Lsmartisan/widget/SmartisanNumberPickerEx;->ensureCachedScrollSelectorValue(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    return-void
.end method

.method private isTimeChanged(I)Z
    .locals 2

    .line 1
    iget v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mOldTime:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2
    iput p1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mOldTime:I

    .line 3
    :cond_0
    iget v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mOldTime:I

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
    iget v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mMaxValue:I

    if-gt p1, v0, :cond_0

    iget v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mMinValue:I

    if-ge p1, v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lsmartisan/widget/SmartisanNumberPickerEx;->hasUnset()Z

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
    iget v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mMaxValue:I

    invoke-direct {p0}, Lsmartisan/widget/SmartisanNumberPickerEx;->hasUnset()Z

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
    iget p1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mCurrentScrollOffset:I

    add-int/2addr p1, v1

    iget v2, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mSelectorElementHeight:I

    rem-int/2addr p1, v2

    .line 4
    iget v2, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mInitialScrollOffset:I

    sub-int/2addr v2, p1

    const/4 p1, 0x0

    if-eqz v2, :cond_4

    .line 5
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mSelectorElementHeight:I

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
    iget v2, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mSelectorElementHeight:I

    mul-int/lit8 v2, v2, 0x9

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
    invoke-virtual {p0, p1, v1}, Lsmartisan/widget/SmartisanNumberPickerEx;->scrollBy(II)V

    return v0

    :cond_4
    return p1
.end method

.method private notifyChange(II)V
    .locals 1

    .line 1
    iget-object p2, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mOnValueChangeListener:Lsmartisan/widget/SmartisanNumberPickerEx$OnValueChangeListener;

    if-eqz p2, :cond_0

    .line 2
    iget v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mValue:I

    invoke-interface {p2, p0, p1, v0}, Lsmartisan/widget/SmartisanNumberPickerEx$OnValueChangeListener;->onValueChange(Lsmartisan/widget/SmartisanNumberPickerEx;II)V

    :cond_0
    return-void
.end method

.method private onScrollStateChange(I)V
    .locals 1

    .line 1
    iget v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mScrollState:I

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iput p1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mScrollState:I

    .line 3
    iget-object v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mOnScrollListener:Lsmartisan/widget/SmartisanNumberPickerEx$OnScrollListener;

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0, p0, p1}, Lsmartisan/widget/SmartisanNumberPickerEx$OnScrollListener;->onScrollStateChange(Lsmartisan/widget/SmartisanNumberPickerEx;I)V

    :cond_1
    return-void
.end method

.method private onScrollerFinished(Landroid/widget/Scroller;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mFlingScroller:Landroid/widget/Scroller;

    if-ne p1, v0, :cond_0

    .line 2
    invoke-direct {p0}, Lsmartisan/widget/SmartisanNumberPickerEx;->ensureScrollWheelAdjusted()Z

    const/4 p1, 0x0

    .line 3
    invoke-direct {p0, p1}, Lsmartisan/widget/SmartisanNumberPickerEx;->onScrollStateChange(I)V

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
    iget v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mValue:I

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0, p1}, Lsmartisan/widget/SmartisanNumberPickerEx;->looksUnset(I)Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_1

    iget v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mValue:I

    if-ne v0, v1, :cond_1

    return-void

    .line 3
    :cond_1
    iget-boolean v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mWrapSelectorWheel:Z

    if-eqz v0, :cond_3

    .line 4
    invoke-direct {p0, p1}, Lsmartisan/widget/SmartisanNumberPickerEx;->looksUnset(I)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 5
    :cond_2
    invoke-direct {p0, p1}, Lsmartisan/widget/SmartisanNumberPickerEx;->getWrappedSelectorIndex(I)I

    move-result v1

    goto :goto_0

    .line 6
    :cond_3
    invoke-direct {p0, p1}, Lsmartisan/widget/SmartisanNumberPickerEx;->looksUnset(I)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    .line 7
    :cond_4
    iget v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mMinValue:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 8
    iget v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mMaxValue:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 9
    :goto_0
    iget p1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mValue:I

    .line 10
    iput v1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mValue:I

    if-eqz p2, :cond_5

    .line 11
    invoke-direct {p0, p1, v1}, Lsmartisan/widget/SmartisanNumberPickerEx;->notifyChange(II)V

    .line 12
    :cond_5
    invoke-direct {p0}, Lsmartisan/widget/SmartisanNumberPickerEx;->initializeSelectorWheelIndices()V

    .line 13
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method private tryComputeMaxWidth()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mComputeMaxWidth:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mDisplayedValues:[Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    :goto_0
    const/16 v2, 0x9

    if-gt v1, v2, :cond_2

    .line 3
    iget-object v2, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-static {v1}, Lsmartisan/widget/SmartisanNumberPickerEx;->formatNumberWithLocale(I)Ljava/lang/String;

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
    iget v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mMaxValue:I

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
    iget-object v3, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mDisplayedValues:[Ljava/lang/String;

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
    iget-object v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mFlingScroller:Landroid/widget/Scroller;

    .line 2
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mAdjustScroller:Landroid/widget/Scroller;

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
    iget v2, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mPreviousScrollerY:I

    if-nez v2, :cond_1

    .line 8
    invoke-virtual {v0}, Landroid/widget/Scroller;->getStartY()I

    move-result v2

    iput v2, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mPreviousScrollerY:I

    :cond_1
    const/4 v2, 0x0

    .line 9
    iget v3, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mPreviousScrollerY:I

    sub-int v3, v1, v3

    invoke-virtual {p0, v2, v3}, Lsmartisan/widget/SmartisanNumberPickerEx;->scrollBy(II)V

    .line 10
    iput v1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mPreviousScrollerY:I

    .line 11
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 12
    invoke-direct {p0, v0}, Lsmartisan/widget/SmartisanNumberPickerEx;->onScrollerFinished(Landroid/widget/Scroller;)V

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

.method public getDisplayedValues()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mDisplayedValues:[Ljava/lang/String;

    return-object v0
.end method

.method public getMaxValue()I
    .locals 1

    .line 1
    iget v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mMaxValue:I

    return v0
.end method

.method public getMinValue()I
    .locals 1

    .line 1
    iget v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mMinValue:I

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
    iget v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mValue:I

    return v0
.end method

.method public getWrapSelectorWheel()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mWrapSelectorWheel:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 2
    sget-object v0, Lsmartisan/widget/SmartisanNumberPickerEx;->sPool:Landroid/media/SoundPool;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Landroid/media/SoundPool;

    const/4 v1, 0x6

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v2}, Landroid/media/SoundPool;-><init>(III)V

    sput-object v0, Lsmartisan/widget/SmartisanNumberPickerEx;->sPool:Landroid/media/SoundPool;

    .line 4
    sget-object v0, Lsmartisan/widget/SmartisanNumberPickerEx;->sPool:Landroid/media/SoundPool;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lsmartisan/widget/R$raw;->time_picker:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    sput v0, Lsmartisan/widget/SmartisanNumberPickerEx;->sSoundId:I

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 2
    sget-object v0, Lsmartisan/widget/SmartisanNumberPickerEx;->sPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    const/4 v0, 0x0

    .line 4
    sput-object v0, Lsmartisan/widget/SmartisanNumberPickerEx;->sPool:Landroid/media/SoundPool;

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 1
    iget-boolean v1, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->mHasSelectorWheel:Z

    if-nez v1, :cond_0

    .line 2
    invoke-super/range {p0 .. p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void

    .line 3
    :cond_0
    iget-object v8, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->mSelectorIndices:[I

    .line 4
    invoke-direct/range {p0 .. p0}, Lsmartisan/widget/SmartisanNumberPickerEx;->initPaints()V

    .line 5
    iget v1, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->mCurrentScrollOffset:I

    iget v2, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->mInitialScrollOffset:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->mLineSpacingMultiplier:F

    iget v3, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->mMaxTextHeight:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    rem-float/2addr v1, v2

    float-to-int v9, v1

    .line 6
    iget-object v1, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->mDrawableBg:Landroid/graphics/drawable/Drawable;

    const/4 v10, 0x0

    const/4 v11, 0x0

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 8
    iget v1, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->mFirstLineY:I

    int-to-float v1, v1

    invoke-virtual {v7, v10, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 9
    iget-object v1, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->mDrawableBg:Landroid/graphics/drawable/Drawable;

    iget v2, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->mWidth:I

    iget v3, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->mSecondLineY:I

    iget v4, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->mFirstLineY:I

    sub-int/2addr v3, v4

    invoke-virtual {v1, v11, v11, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 10
    iget-object v1, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->mDrawableBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 11
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v1

    int-to-float v2, v1

    iget v1, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->mFirstLineY:I

    int-to-float v3, v1

    iget v4, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->mWidth:I

    int-to-float v4, v4

    int-to-float v5, v1

    iget-object v6, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->mPaintIndicator:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 13
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v1

    int-to-float v2, v1

    iget v1, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->mSecondLineY:I

    int-to-float v3, v1

    iget v4, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->mWidth:I

    int-to-float v4, v4

    int-to-float v5, v1

    iget-object v6, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->mPaintIndicator:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :goto_0
    move v1, v11

    .line 14
    :goto_1
    iget v2, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->mItemsVisibleCount:I

    if-ge v1, v2, :cond_d

    .line 15
    aget v2, v8, v1

    .line 16
    invoke-direct {v0, v2}, Lsmartisan/widget/SmartisanNumberPickerEx;->looksUnset(I)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "--"

    goto :goto_2

    .line 17
    :cond_2
    iget-object v4, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 18
    :goto_2
    iget v5, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->mInitialValue:I

    if-ne v2, v5, :cond_3

    .line 19
    iget-object v2, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->mPaintOuterText:Landroid/graphics/Paint;

    iget v5, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->mInitialColor:I

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 20
    iget-object v2, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->mPaintCenterText:Landroid/graphics/Paint;

    iget v5, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->mInitialColor:I

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_3

    .line 21
    :cond_3
    iget-object v2, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->mPaintOuterText:Landroid/graphics/Paint;

    iget v5, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->mNormalColor:I

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 22
    iget-object v2, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->mPaintCenterText:Landroid/graphics/Paint;

    iget v5, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->mHighlightColor:I

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 23
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 24
    iget v2, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->mMaxTextHeight:I

    int-to-float v2, v2

    iget v5, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->mLineSpacingMultiplier:F

    mul-float/2addr v2, v5

    int-to-float v5, v1

    mul-float/2addr v5, v2

    int-to-float v6, v9

    add-float/2addr v5, v6

    float-to-double v5, v5

    const-wide v12, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v5, v12

    .line 25
    iget v14, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->mHalfCircumference:I

    int-to-double v14, v14

    div-double/2addr v5, v14

    cmpl-double v12, v5, v12

    if-gez v12, :cond_8

    const-wide/16 v12, 0x0

    cmpg-double v12, v5, v12

    if-gtz v12, :cond_4

    goto/16 :goto_5

    .line 26
    :cond_4
    iget v12, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->mRadius:I

    int-to-double v12, v12

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    iget v3, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->mRadius:I

    int-to-double v10, v3

    mul-double/2addr v14, v10

    sub-double/2addr v12, v14

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    iget v3, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->mMaxTextHeight:I

    int-to-double v14, v3

    mul-double/2addr v10, v14

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    div-double/2addr v10, v14

    sub-double/2addr v12, v10

    double-to-int v3, v12

    int-to-float v10, v3

    const/4 v11, 0x0

    .line 27
    invoke-virtual {v7, v11, v10}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v10, 0x3f800000    # 1.0f

    .line 28
    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    double-to-float v5, v5

    invoke-virtual {v7, v10, v5}, Landroid/graphics/Canvas;->scale(FF)V

    .line 29
    iget v5, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->mFirstLineY:I

    if-gt v3, v5, :cond_5

    iget v6, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->mMaxTextHeight:I

    add-int/2addr v6, v3

    if-lt v6, v5, :cond_5

    .line 30
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 31
    iget v5, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->mWidth:I

    iget v6, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->mFirstLineY:I

    sub-int/2addr v6, v3

    const/4 v10, 0x0

    invoke-virtual {v7, v10, v10, v5, v6}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 32
    iget-object v5, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->mPaintOuterText:Landroid/graphics/Paint;

    iget-object v6, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {v0, v4, v5, v6}, Lsmartisan/widget/SmartisanNumberPickerEx;->getTextX(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Rect;)I

    move-result v5

    int-to-float v5, v5

    iget v6, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->mMaxTextHeight:I

    int-to-float v6, v6

    iget-object v10, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->mPaintOuterText:Landroid/graphics/Paint;

    invoke-virtual {v7, v4, v5, v6, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 33
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 34
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 35
    iget v5, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->mFirstLineY:I

    sub-int/2addr v5, v3

    iget v3, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->mWidth:I

    float-to-int v2, v2

    const/4 v6, 0x0

    invoke-virtual {v7, v6, v5, v3, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 36
    iget-object v2, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->mPaintCenterText:Landroid/graphics/Paint;

    iget-object v3, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {v0, v4, v2, v3}, Lsmartisan/widget/SmartisanNumberPickerEx;->getTextX(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Rect;)I

    move-result v2

    int-to-float v2, v2

    iget v3, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->mMaxTextHeight:I

    int-to-float v3, v3

    iget-object v5, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->mPaintCenterText:Landroid/graphics/Paint;

    invoke-virtual {v7, v4, v2, v3, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 37
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_4

    .line 38
    :cond_5
    iget v5, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->mSecondLineY:I

    if-gt v3, v5, :cond_6

    iget v6, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->mMaxTextHeight:I

    add-int/2addr v6, v3

    if-lt v6, v5, :cond_6

    .line 39
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 40
    iget v5, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->mWidth:I

    iget v6, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->mSecondLineY:I

    sub-int/2addr v6, v3

    const/4 v10, 0x0

    invoke-virtual {v7, v10, v10, v5, v6}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 41
    iget-object v5, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->mPaintCenterText:Landroid/graphics/Paint;

    iget-object v6, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {v0, v4, v5, v6}, Lsmartisan/widget/SmartisanNumberPickerEx;->getTextX(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Rect;)I

    move-result v5

    int-to-float v5, v5

    iget v6, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->mMaxTextHeight:I

    int-to-float v6, v6

    iget-object v10, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->mPaintCenterText:Landroid/graphics/Paint;

    invoke-virtual {v7, v4, v5, v6, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 42
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 43
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 44
    iget v5, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->mSecondLineY:I

    sub-int/2addr v5, v3

    iget v3, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->mWidth:I

    float-to-int v2, v2

    const/4 v6, 0x0

    invoke-virtual {v7, v6, v5, v3, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 45
    iget-object v2, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->mPaintOuterText:Landroid/graphics/Paint;

    iget-object v3, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {v0, v4, v2, v3}, Lsmartisan/widget/SmartisanNumberPickerEx;->getTextX(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Rect;)I

    move-result v2

    int-to-float v2, v2

    iget v3, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->mMaxTextHeight:I

    int-to-float v3, v3

    iget-object v5, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->mPaintOuterText:Landroid/graphics/Paint;

    invoke-virtual {v7, v4, v2, v3, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 46
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_4

    .line 47
    :cond_6
    iget v5, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->mFirstLineY:I

    if-lt v3, v5, :cond_7

    iget v5, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->mMaxTextHeight:I

    add-int/2addr v5, v3

    iget v3, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->mSecondLineY:I

    if-gt v5, v3, :cond_7

    .line 48
    iget v3, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->mWidth:I

    float-to-int v2, v2

    const/4 v5, 0x0

    invoke-virtual {v7, v5, v5, v3, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 49
    iget-object v2, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->mPaintCenterText:Landroid/graphics/Paint;

    iget-object v3, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {v0, v4, v2, v3}, Lsmartisan/widget/SmartisanNumberPickerEx;->getTextX(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Rect;)I

    move-result v2

    int-to-float v2, v2

    iget v3, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->mMaxTextHeight:I

    int-to-float v3, v3

    iget-object v5, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->mPaintCenterText:Landroid/graphics/Paint;

    invoke-virtual {v7, v4, v2, v3, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_4

    .line 50
    :cond_7
    iget v3, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->mWidth:I

    float-to-int v2, v2

    const/4 v5, 0x0

    invoke-virtual {v7, v5, v5, v3, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 51
    iget-object v2, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->mPaintOuterText:Landroid/graphics/Paint;

    iget-object v3, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {v0, v4, v2, v3}, Lsmartisan/widget/SmartisanNumberPickerEx;->getTextX(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Rect;)I

    move-result v2

    int-to-float v2, v2

    iget v3, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->mMaxTextHeight:I

    int-to-float v3, v3

    iget-object v5, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->mPaintOuterText:Landroid/graphics/Paint;

    invoke-virtual {v7, v4, v2, v3, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 52
    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_6

    :cond_8
    :goto_5
    move v11, v10

    .line 53
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 54
    :goto_6
    iget v2, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->mItemsVisibleCount:I

    const/4 v3, 0x2

    div-int/2addr v2, v3

    if-ne v1, v2, :cond_c

    iget-object v2, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->mHightlightSuffix:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 55
    iget-object v2, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->mFormatter:Lsmartisan/widget/SmartisanNumberPickerEx$Formatter;

    if-nez v2, :cond_a

    .line 56
    iget-object v2, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->mDisplayedValues:[Ljava/lang/String;

    if-eqz v2, :cond_9

    .line 57
    iget-object v2, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->mMaxWidthText:Ljava/lang/String;

    if-eqz v2, :cond_a

    move-object v4, v2

    goto :goto_7

    .line 58
    :cond_9
    iget v2, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->mMaxValue:I

    invoke-static {v2}, Lsmartisan/widget/SmartisanNumberPickerEx;->formatNumberWithLocale(I)Ljava/lang/String;

    move-result-object v4

    .line 59
    :cond_a
    :goto_7
    iget-object v2, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget v3, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->mHightlightSuffixFontSize:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 60
    iget-object v2, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget v3, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->mHighlightColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 61
    iget-object v2, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->mSelectorWheelPaint:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 62
    iget-object v2, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v5, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->mTempRect:Landroid/graphics/Rect;

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v6, v3, v5}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 63
    iget-object v2, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    .line 64
    iget v3, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->mScaleX:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 65
    iget v3, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->mMidTextWidth:I

    sub-int v3, v2, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/16 v4, 0xa

    if-le v3, v4, :cond_b

    .line 66
    iput v2, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->mMidTextWidth:I

    .line 67
    :cond_b
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v2

    iget v3, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->mMidTextWidth:I

    const/4 v4, 0x2

    div-int/2addr v3, v4

    add-int/2addr v2, v3

    iget v3, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->mWidth:I

    div-int/2addr v3, v4

    add-int/2addr v2, v3

    .line 68
    iget-object v3, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v3

    .line 69
    iget v5, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->mSecondLineY:I

    iget v10, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->mFirstLineY:I

    sub-int/2addr v5, v10

    div-int/2addr v5, v4

    add-int/2addr v5, v10

    .line 70
    iget v10, v3, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v3, v3, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int v3, v10, v3

    div-int/2addr v3, v4

    add-int/2addr v5, v3

    sub-int/2addr v5, v10

    int-to-float v3, v5

    .line 71
    iget-object v4, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->mHightlightSuffix:Ljava/lang/String;

    int-to-float v2, v2

    iget v5, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->mTextPadding:F

    add-float/2addr v2, v5

    iget v5, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->mHightlightSuffixMargin:I

    int-to-float v5, v5

    add-float/2addr v2, v5

    iget-object v5, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v4, v2, v3, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_8

    :cond_c
    const/4 v6, 0x0

    :goto_8
    add-int/lit8 v1, v1, 0x1

    move v10, v11

    move v11, v6

    goto/16 :goto_1

    :cond_d
    const/4 v1, 0x2

    .line 72
    aget v2, v8, v1

    invoke-direct {v0, v2}, Lsmartisan/widget/SmartisanNumberPickerEx;->isTimeChanged(I)Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object v2, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->mFlingScroller:Landroid/widget/Scroller;

    .line 73
    invoke-virtual {v2}, Landroid/widget/Scroller;->getFinalY()I

    move-result v2

    iget-object v3, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/16 v3, 0x32

    if-le v2, v3, :cond_e

    .line 74
    aget v1, v8, v1

    iput v1, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->mOldTime:I

    .line 75
    iget-object v1, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->mSoundRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_9

    .line 76
    :cond_e
    aget v2, v8, v1

    invoke-direct {v0, v2}, Lsmartisan/widget/SmartisanNumberPickerEx;->isTimeChanged(I)Z

    move-result v2

    if-eqz v2, :cond_f

    iget-object v2, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->mFlingScroller:Landroid/widget/Scroller;

    .line 77
    invoke-virtual {v2}, Landroid/widget/Scroller;->getFinalY()I

    move-result v2

    iget-object v3, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    if-gt v2, v3, :cond_f

    .line 78
    aget v1, v8, v1

    iput v1, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->mOldTime:I

    .line 79
    iget-object v1, v0, Lsmartisan/widget/SmartisanNumberPickerEx;->mSoundRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_f
    :goto_9
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
    iget v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mMinValue:I

    iget v1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mValue:I

    add-int/2addr v0, v1

    iget v1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mSelectorElementHeight:I

    mul-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollY(I)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mHasSelectorWheel:Z

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

    iput v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mLastDownEventY:F

    iput v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mLastDownOrMoveEventY:F

    .line 4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    iput-wide v2, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mLastDownEventTime:J

    .line 5
    iput-boolean v1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mIngonreMoveEvents:Z

    .line 6
    iput-boolean v1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mShowSoftInputOnTap:Z

    .line 7
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 8
    iget-object p1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_2

    .line 9
    iget-object p1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {p1, v0}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 10
    iget-object p1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {p1, v0}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 11
    invoke-direct {p0, v1}, Lsmartisan/widget/SmartisanNumberPickerEx;->onScrollStateChange(I)V

    goto :goto_0

    .line 12
    :cond_2
    iget-object p1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_3

    .line 13
    iget-object p1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {p1, v0}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 14
    iget-object p1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {p1, v0}, Landroid/widget/Scroller;->forceFinished(Z)V

    goto :goto_0

    .line 15
    :cond_3
    iget p1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mLastDownEventY:F

    iget v1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mTopSelectionDividerTop:I

    int-to-float v1, v1

    cmpg-float v1, p1, v1

    if-gez v1, :cond_4

    goto :goto_0

    .line 16
    :cond_4
    iget v1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mBottomSelectionDividerBottom:I

    int-to-float v1, v1

    cmpl-float p1, p1, v1

    if-lez p1, :cond_5

    goto :goto_0

    .line 17
    :cond_5
    iput-boolean v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mShowSoftInputOnTap:Z

    :goto_0
    return v0

    :cond_6
    :goto_1
    return v1
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mHasSelectorWheel:Z

    if-nez v0, :cond_0

    .line 2
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 3
    invoke-direct {p0}, Lsmartisan/widget/SmartisanNumberPickerEx;->initializeSelectorWheel()V

    .line 4
    invoke-direct {p0}, Lsmartisan/widget/SmartisanNumberPickerEx;->initializeFadingEdges()V

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mHasSelectorWheel:Z

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void

    .line 3
    :cond_0
    iget v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mMaxWidth:I

    invoke-direct {p0, p1, v0}, Lsmartisan/widget/SmartisanNumberPickerEx;->makeMeasureSpec(II)I

    move-result v0

    .line 4
    iget v1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mMaxHeight:I

    invoke-direct {p0, p2, v1}, Lsmartisan/widget/SmartisanNumberPickerEx;->makeMeasureSpec(II)I

    move-result v1

    .line 5
    invoke-super {p0, v0, v1}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 6
    iget v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mMinWidth:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v1

    invoke-direct {p0, v0, v1, p1}, Lsmartisan/widget/SmartisanNumberPickerEx;->resolveSizeAndStateRespectingMinSize(III)I

    move-result p1

    .line 7
    iget v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mMinHeight:I

    .line 8
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v1

    .line 9
    invoke-direct {p0, v0, v1, p2}, Lsmartisan/widget/SmartisanNumberPickerEx;->resolveSizeAndStateRespectingMinSize(III)I

    move-result p2

    .line 10
    invoke-virtual {p0, p1, p2}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    .line 11
    invoke-direct {p0}, Lsmartisan/widget/SmartisanNumberPickerEx;->initializeSelectorWheel()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mHasSelectorWheel:Z

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 2
    :cond_0
    iget-object v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_1

    .line 3
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 4
    :cond_1
    iget-object v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mVelocityTracker:Landroid/view/VelocityTracker;

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
    iget-boolean v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mIngonreMoveEvents:Z

    if-eqz v0, :cond_3

    goto/16 :goto_3

    .line 7
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 8
    iget v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mScrollState:I

    if-eq v0, v3, :cond_4

    .line 9
    iget v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mLastDownEventY:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    .line 10
    iget v1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mTouchSlop:I

    if-le v0, v1, :cond_5

    .line 11
    invoke-direct {p0, v3}, Lsmartisan/widget/SmartisanNumberPickerEx;->onScrollStateChange(I)V

    goto :goto_0

    .line 12
    :cond_4
    iget v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mLastDownOrMoveEventY:F

    sub-float v0, p1, v0

    float-to-int v0, v0

    .line 13
    invoke-virtual {p0, v1, v0}, Lsmartisan/widget/SmartisanNumberPickerEx;->scrollBy(II)V

    .line 14
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    .line 15
    :cond_5
    :goto_0
    iput p1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mLastDownOrMoveEventY:F

    goto :goto_3

    .line 16
    :cond_6
    iget-object v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v4, 0x3e8

    .line 17
    iget v5, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mMaximumFlingVelocity:I

    int-to-float v5, v5

    invoke-virtual {v0, v4, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 18
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    float-to-int v0, v0

    .line 19
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mMinimumFlingVelocity:I

    if-le v4, v5, :cond_7

    .line 20
    invoke-direct {p0, v0}, Lsmartisan/widget/SmartisanNumberPickerEx;->fling(I)V

    .line 21
    invoke-direct {p0, v2}, Lsmartisan/widget/SmartisanNumberPickerEx;->onScrollStateChange(I)V

    goto :goto_2

    .line 22
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    int-to-float v2, v0

    .line 23
    iget v4, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mLastDownEventY:F

    sub-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-int v2, v2

    .line 24
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    iget-wide v6, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mLastDownEventTime:J

    sub-long/2addr v4, v6

    .line 25
    iget p1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mTouchSlop:I

    if-gt v2, p1, :cond_a

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result p1

    int-to-long v6, p1

    cmp-long p1, v4, v6

    if-gez p1, :cond_a

    .line 26
    iget-boolean p1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mShowSoftInputOnTap:Z

    if-eqz p1, :cond_8

    .line 27
    iput-boolean v1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mShowSoftInputOnTap:Z

    goto :goto_1

    .line 28
    :cond_8
    iget p1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mSelectorElementHeight:I

    div-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x4

    if-lez v0, :cond_9

    .line 29
    invoke-direct {p0, v3}, Lsmartisan/widget/SmartisanNumberPickerEx;->changeValueByOne(Z)V

    goto :goto_1

    :cond_9
    if-gez v0, :cond_b

    .line 30
    invoke-direct {p0, v1}, Lsmartisan/widget/SmartisanNumberPickerEx;->changeValueByOne(Z)V

    goto :goto_1

    .line 31
    :cond_a
    invoke-direct {p0}, Lsmartisan/widget/SmartisanNumberPickerEx;->ensureScrollWheelAdjusted()Z

    .line 32
    :cond_b
    :goto_1
    invoke-direct {p0, v1}, Lsmartisan/widget/SmartisanNumberPickerEx;->onScrollStateChange(I)V

    .line 33
    :goto_2
    iget-object p1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 p1, 0x0

    .line 34
    iput-object p1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mVelocityTracker:Landroid/view/VelocityTracker;

    :goto_3
    return v3

    :cond_c
    :goto_4
    return v1
.end method

.method public scrollBy(II)V
    .locals 4

    .line 1
    iget-object p1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mSelectorIndices:[I

    .line 2
    iget-boolean v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mWrapSelectorWheel:Z

    const/4 v1, 0x4

    if-nez v0, :cond_0

    if-lez p2, :cond_0

    aget v0, p1, v1

    iget v2, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mMinValue:I

    if-gt v0, v2, :cond_0

    .line 3
    iget p1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mInitialScrollOffset:I

    iput p1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mCurrentScrollOffset:I

    return-void

    .line 4
    :cond_0
    iget-boolean v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mWrapSelectorWheel:Z

    if-nez v0, :cond_1

    if-gez p2, :cond_1

    aget v0, p1, v1

    .line 5
    invoke-direct {p0}, Lsmartisan/widget/SmartisanNumberPickerEx;->maxValue()I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 6
    iget p1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mInitialScrollOffset:I

    iput p1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mCurrentScrollOffset:I

    return-void

    .line 7
    :cond_1
    iget v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mCurrentScrollOffset:I

    add-int/2addr v0, p2

    iput v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mCurrentScrollOffset:I

    .line 8
    :cond_2
    :goto_0
    iget p2, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mCurrentScrollOffset:I

    iget v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mInitialScrollOffset:I

    sub-int v0, p2, v0

    iget v2, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mSelectorTextGapHeight:I

    const/4 v3, 0x1

    if-lt v0, v2, :cond_3

    .line 9
    iget v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mSelectorElementHeight:I

    sub-int/2addr p2, v0

    iput p2, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mCurrentScrollOffset:I

    .line 10
    invoke-direct {p0, p1}, Lsmartisan/widget/SmartisanNumberPickerEx;->decrementSelectorIndices([I)V

    .line 11
    aget p2, p1, v1

    invoke-direct {p0, p2, v3}, Lsmartisan/widget/SmartisanNumberPickerEx;->setValueInternal(IZ)V

    .line 12
    iget-boolean p2, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mWrapSelectorWheel:Z

    if-nez p2, :cond_2

    aget p2, p1, v1

    iget v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mMinValue:I

    if-gt p2, v0, :cond_2

    .line 13
    iget p2, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mInitialScrollOffset:I

    iput p2, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mCurrentScrollOffset:I

    goto :goto_0

    .line 14
    :cond_3
    :goto_1
    iget p2, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mCurrentScrollOffset:I

    iget v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mInitialScrollOffset:I

    sub-int v0, p2, v0

    iget v2, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mSelectorTextGapHeight:I

    neg-int v2, v2

    if-gt v0, v2, :cond_4

    .line 15
    iget v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mSelectorElementHeight:I

    add-int/2addr p2, v0

    iput p2, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mCurrentScrollOffset:I

    .line 16
    invoke-direct {p0, p1}, Lsmartisan/widget/SmartisanNumberPickerEx;->incrementSelectorIndices([I)V

    .line 17
    aget p2, p1, v1

    invoke-direct {p0, p2, v3}, Lsmartisan/widget/SmartisanNumberPickerEx;->setValueInternal(IZ)V

    .line 18
    iget-boolean p2, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mWrapSelectorWheel:Z

    if-nez p2, :cond_3

    aget p2, p1, v1

    invoke-direct {p0}, Lsmartisan/widget/SmartisanNumberPickerEx;->maxValue()I

    move-result v0

    if-lt p2, v0, :cond_3

    .line 19
    iget p2, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mInitialScrollOffset:I

    iput p2, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mCurrentScrollOffset:I

    goto :goto_1

    :cond_4
    return-void
.end method

.method public setDisplayedValues([Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mDisplayedValues:[Ljava/lang/String;

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iput-object p1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mDisplayedValues:[Ljava/lang/String;

    .line 3
    invoke-direct {p0}, Lsmartisan/widget/SmartisanNumberPickerEx;->initializeSelectorWheelIndices()V

    .line 4
    iget-object v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mDisplayedValues:[Ljava/lang/String;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mMaxWidthText:Ljava/lang/String;

    return-void

    .line 6
    :cond_1
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    .line 7
    iget-object v2, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mMaxWidthText:Ljava/lang/String;

    if-eqz v2, :cond_3

    .line 8
    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mMaxWidthText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v2, v3, :cond_2

    aget-object v2, p1, v1

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mMaxWidthText:Ljava/lang/String;

    :goto_1
    iput-object v2, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mMaxWidthText:Ljava/lang/String;

    goto :goto_2

    .line 9
    :cond_3
    aget-object v2, p1, v1

    iput-object v2, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mMaxWidthText:Ljava/lang/String;

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public setFormatter(Lsmartisan/widget/SmartisanNumberPickerEx$Formatter;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mFormatter:Lsmartisan/widget/SmartisanNumberPickerEx$Formatter;

    if-ne p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    iput-object p1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mFormatter:Lsmartisan/widget/SmartisanNumberPickerEx$Formatter;

    .line 3
    invoke-direct {p0}, Lsmartisan/widget/SmartisanNumberPickerEx;->initializeSelectorWheelIndices()V

    return-void
.end method

.method public setHightlightSuffix(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mHightlightSuffix:Ljava/lang/String;

    return-void
.end method

.method public setInitialValue(I)V
    .locals 0

    .line 1
    iput p1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mInitialValue:I

    return-void
.end method

.method public setLineSpacemMultiplier(F)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    const/high16 p1, 0x40000000    # 2.0f

    goto :goto_0

    .line 1
    :cond_0
    iget p1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mLineSpacingMultiplier:F

    :goto_0
    iput p1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mLineSpacingMultiplier:F

    .line 2
    invoke-direct {p0}, Lsmartisan/widget/SmartisanNumberPickerEx;->initializeSelectorWheel()V

    return-void
.end method

.method public setMaxValue(I)V
    .locals 1

    const/4 v0, 0x0

    .line 12
    invoke-virtual {p0, p1, v0}, Lsmartisan/widget/SmartisanNumberPickerEx;->setMaxValue(IZ)V

    return-void
.end method

.method public setMaxValue(IZ)V
    .locals 1

    .line 1
    iget v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mMaxValue:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-ltz p1, :cond_3

    .line 2
    iput p1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mMaxValue:I

    .line 3
    iget p1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mMaxValue:I

    iget v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mValue:I

    if-ge p1, v0, :cond_1

    .line 4
    iput p1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mValue:I

    .line 5
    :cond_1
    iput-boolean p2, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mHasUnsetValue:Z

    .line 6
    invoke-direct {p0}, Lsmartisan/widget/SmartisanNumberPickerEx;->maxValue()I

    move-result p1

    iget p2, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mMinValue:I

    sub-int/2addr p1, p2

    iget-object p2, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mSelectorIndices:[I

    array-length p2, p2

    if-le p1, p2, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 7
    :goto_0
    invoke-virtual {p0, p1}, Lsmartisan/widget/SmartisanNumberPickerEx;->setWrapSelectorWheel(Z)V

    .line 8
    invoke-direct {p0}, Lsmartisan/widget/SmartisanNumberPickerEx;->initializeSelectorWheelIndices()V

    .line 9
    invoke-direct {p0}, Lsmartisan/widget/SmartisanNumberPickerEx;->tryComputeMaxWidth()V

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
    iget v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mMinValue:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-ltz p1, :cond_3

    .line 2
    iput p1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mMinValue:I

    .line 3
    iget p1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mMinValue:I

    iget v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mValue:I

    if-le p1, v0, :cond_1

    .line 4
    iput p1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mValue:I

    .line 5
    :cond_1
    invoke-direct {p0}, Lsmartisan/widget/SmartisanNumberPickerEx;->maxValue()I

    move-result p1

    iget v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mMinValue:I

    sub-int/2addr p1, v0

    iget-object v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mSelectorIndices:[I

    array-length v0, v0

    if-le p1, v0, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 6
    :goto_0
    invoke-virtual {p0, p1}, Lsmartisan/widget/SmartisanNumberPickerEx;->setWrapSelectorWheel(Z)V

    .line 7
    invoke-direct {p0}, Lsmartisan/widget/SmartisanNumberPickerEx;->initializeSelectorWheelIndices()V

    .line 8
    invoke-direct {p0}, Lsmartisan/widget/SmartisanNumberPickerEx;->tryComputeMaxWidth()V

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

.method public setOnScrollListener(Lsmartisan/widget/SmartisanNumberPickerEx$OnScrollListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mOnScrollListener:Lsmartisan/widget/SmartisanNumberPickerEx$OnScrollListener;

    return-void
.end method

.method public setOnValueChangedListener(Lsmartisan/widget/SmartisanNumberPickerEx$OnValueChangeListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mOnValueChangeListener:Lsmartisan/widget/SmartisanNumberPickerEx$OnValueChangeListener;

    return-void
.end method

.method public setSoundEnable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mSoundEnable:Z

    return-void
.end method

.method public setTextColor(II)V
    .locals 0

    .line 1
    iput p1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mNormalColor:I

    .line 2
    iput p2, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mHighlightColor:I

    return-void
.end method

.method public setTextScaleX(I)V
    .locals 0

    int-to-float p1, p1

    .line 1
    iput p1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mScaleX:F

    return-void
.end method

.method public setTextSize(I)V
    .locals 1

    .line 4
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    int-to-float p1, p1

    mul-float/2addr v0, p1

    float-to-int p1, v0

    iput p1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mTextSize:I

    return-void
.end method

.method public setTextSize(II)V
    .locals 0

    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    .line 1
    iput p1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mNormalSize:I

    .line 2
    iput p2, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mHighlightSize:I

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
    invoke-direct {p0, p1, v0}, Lsmartisan/widget/SmartisanNumberPickerEx;->setValueInternal(IZ)V

    return-void
.end method

.method public setWrapSelectorWheel(Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lsmartisan/widget/SmartisanNumberPickerEx;->maxValue()I

    move-result v0

    iget v1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mMinValue:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mSelectorIndices:[I

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
    iget-boolean v0, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mWrapSelectorWheel:Z

    if-eq p1, v0, :cond_2

    .line 3
    iput-boolean p1, p0, Lsmartisan/widget/SmartisanNumberPickerEx;->mWrapSelectorWheel:Z

    :cond_2
    return-void
.end method
