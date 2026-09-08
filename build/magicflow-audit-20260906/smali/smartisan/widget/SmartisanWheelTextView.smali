.class public Lsmartisan/widget/SmartisanWheelTextView;
.super Landroid/view/View;
.source "SmartisanWheelTextView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsmartisan/widget/SmartisanWheelTextView$OnValueChangeListener;
    }
.end annotation


# static fields
.field private static final END_TEXT:Ljava/lang/String; = "..."

.field private static final MAX_FONT_SCALE_WITH_SUBTITLE:F = 1.1f

.field private static MAX_NO_ACTION_OFFSET:I = 0x0

.field private static MIN_ACTION_OFFSET:I = 0x0

.field private static final MSG_SET_GLOBAL_LAYOUT_LISTENER:I = 0x1000

.field private static final SELECTOR_ADJUSTMENT_DURATION_MILLIS:I = 0x96

.field private static final TAG:Ljava/lang/String; = "SmartisanWheelTextView"


# instance fields
.field private final mAdjustScroller:Landroid/widget/Scroller;

.field private mClickTimeout:I

.field private mContentPaddingTop:F

.field private mCurrentScrollOffset:I

.field private mDisplayedValues:[Ljava/lang/String;

.field private mDownX:F

.field private mDownY:F

.field private mDrawSubtitleLen:I

.field private mDrawTitleLen:I

.field private mHostWidth:I

.field private mIngonreMoveEvents:Z

.field private mInitialScrollOffset:I

.field private mIsNeedRotate:Z

.field private mLastDownOrMoveEventY:F

.field private mLeftElementsWidth:I

.field private mLeftIconView:Landroid/view/View;

.field private mLeftView:Landroid/view/View;

.field private mMaxAvailableWidth:I

.field private mMaxSubtitleSize:F

.field private mMaxTitleSize:F

.field private mMaxTitleSizeWithSubtitle:F

.field private mOnValueChangeListener:Lsmartisan/widget/SmartisanWheelTextView$OnValueChangeListener;

.field private mPaddingLeftOffset:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPreviousScrollerY:I

.field private mRightElementsWidth:I

.field private mRightIconView:Landroid/view/View;

.field private mRightViewList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lsmartisan/widget/SmartisanButton;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectorElementHeight:I

.field private mSelectorIndices:[I

.field private mSubContent:Ljava/lang/String;

.field private mSubPaint:Landroid/graphics/Paint;

.field private mSubtitleSize:F

.field private mTextColor:I

.field private mTitleAlignCenter:Z

.field private mTitleSize:F

.field private mTouchSlop:I

.field private mValue:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lsmartisan/widget/SmartisanWheelTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 2
    sget v0, Lsmartisan/widget/R$style;->TitleTextStyle:I

    invoke-direct {p0, p1, p2, v0}, Lsmartisan/widget/SmartisanWheelTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p2, 0x4f000000

    .line 4
    iput p2, p0, Lsmartisan/widget/SmartisanWheelTextView;->mMaxTitleSize:F

    const/4 p2, 0x0

    .line 5
    iput-boolean p2, p0, Lsmartisan/widget/SmartisanWheelTextView;->mIsNeedRotate:Z

    const/high16 v0, -0x80000000

    .line 6
    iput v0, p0, Lsmartisan/widget/SmartisanWheelTextView;->mInitialScrollOffset:I

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lsmartisan/widget/SmartisanWheelTextView;->mTitleAlignCenter:Z

    .line 8
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 9
    sget-object v2, Lsmartisan/widget/R$styleable;->SmartisanWheelTextView:[I

    invoke-virtual {v1, p3, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 10
    sget v1, Lsmartisan/widget/R$styleable;->SmartisanWheelTextView_android_textColor:I

    invoke-virtual {p3, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    iput v1, p0, Lsmartisan/widget/SmartisanWheelTextView;->mTextColor:I

    .line 11
    sget v1, Lsmartisan/widget/R$styleable;->SmartisanWheelTextView_android_textSize:I

    const/4 v2, -0x1

    invoke-virtual {p3, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lsmartisan/widget/SmartisanWheelTextView;->mTitleSize:F

    .line 12
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    const p3, 0x40d55555

    .line 13
    invoke-direct {p0, p3}, Lsmartisan/widget/SmartisanWheelTextView;->dp2px(F)F

    move-result p3

    float-to-int p3, p3

    sput p3, Lsmartisan/widget/SmartisanWheelTextView;->MAX_NO_ACTION_OFFSET:I

    const p3, 0x41855555

    .line 14
    invoke-direct {p0, p3}, Lsmartisan/widget/SmartisanWheelTextView;->dp2px(F)F

    move-result p3

    float-to-int p3, p3

    sput p3, Lsmartisan/widget/SmartisanWheelTextView;->MIN_ACTION_OFFSET:I

    .line 15
    invoke-direct {p0}, Lsmartisan/widget/SmartisanWheelTextView;->initMaxSize()V

    .line 16
    invoke-virtual {p0, p2}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 17
    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 18
    invoke-direct {p0}, Lsmartisan/widget/SmartisanWheelTextView;->initTitlePaint()V

    .line 19
    invoke-direct {p0}, Lsmartisan/widget/SmartisanWheelTextView;->initSubtitlePaint()V

    const/high16 p2, 0x40c00000    # 6.0f

    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    invoke-static {v0, p2, p3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p2

    iput p2, p0, Lsmartisan/widget/SmartisanWheelTextView;->mContentPaddingTop:F

    .line 21
    new-instance p2, Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-direct {p2, p3, v0}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object p2, p0, Lsmartisan/widget/SmartisanWheelTextView;->mAdjustScroller:Landroid/widget/Scroller;

    .line 22
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result p2

    .line 23
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result p3

    add-int/2addr p2, p3

    iput p2, p0, Lsmartisan/widget/SmartisanWheelTextView;->mClickTimeout:I

    .line 24
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lsmartisan/widget/SmartisanWheelTextView;->mTouchSlop:I

    return-void
.end method

.method private decrementSelectorIndices([I)V
    .locals 2

    .line 1
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-lez v0, :cond_0

    .line 2
    aget v1, p1, v0

    add-int/lit8 v1, v1, -0x1

    aput v1, p1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private dp2px(F)F
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    return p1
.end method

.method private drawSingleLineText(Landroid/graphics/Canvas;Ljava/lang/String;)V
    .locals 7

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsmartisan/widget/SmartisanWheelTextView;->mSubContent:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lsmartisan/widget/SmartisanWheelTextView;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lsmartisan/widget/SmartisanWheelTextView;->mSubContent:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lsmartisan/widget/SmartisanWheelTextView;->mTitleSize:F

    iget v2, p0, Lsmartisan/widget/SmartisanWheelTextView;->mMaxTitleSize:F

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    goto :goto_0

    :cond_1
    iget v1, p0, Lsmartisan/widget/SmartisanWheelTextView;->mTitleSize:F

    iget v2, p0, Lsmartisan/widget/SmartisanWheelTextView;->mMaxTitleSizeWithSubtitle:F

    .line 3
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 4
    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 5
    iget-object v0, p0, Lsmartisan/widget/SmartisanWheelTextView;->mSubPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lsmartisan/widget/SmartisanWheelTextView;->mSubContent:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lsmartisan/widget/SmartisanWheelTextView;->mSubtitleSize:F

    goto :goto_1

    :cond_2
    iget v1, p0, Lsmartisan/widget/SmartisanWheelTextView;->mSubtitleSize:F

    iget v2, p0, Lsmartisan/widget/SmartisanWheelTextView;->mMaxSubtitleSize:F

    .line 6
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 7
    :goto_1
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 8
    iget-object v0, p0, Lsmartisan/widget/SmartisanWheelTextView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    .line 9
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_3

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v3, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    add-int/2addr v3, v0

    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    int-to-float v0, v1

    goto :goto_2

    :cond_3
    move v0, v2

    .line 11
    :goto_2
    iget-object v1, p0, Lsmartisan/widget/SmartisanWheelTextView;->mSubContent:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 12
    iget-object v1, p0, Lsmartisan/widget/SmartisanWheelTextView;->mSubPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v1

    .line 13
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 14
    iget v0, p0, Lsmartisan/widget/SmartisanWheelTextView;->mContentPaddingTop:F

    iget-object v2, p0, Lsmartisan/widget/SmartisanWheelTextView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Paint$FontMetricsInt;->top:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    .line 15
    iget v2, v1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v2, v1

    int-to-float v1, v2

    add-float v2, v0, v1

    goto :goto_3

    .line 16
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iget v3, v1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    sub-int/2addr v2, v3

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v2, v1

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    .line 17
    :cond_5
    :goto_3
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 18
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, "..."

    const/4 v5, 0x0

    if-nez v3, :cond_7

    .line 19
    iget v3, p0, Lsmartisan/widget/SmartisanWheelTextView;->mDrawTitleLen:I

    if-lez v3, :cond_6

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v3, v6, :cond_6

    .line 20
    iget v3, p0, Lsmartisan/widget/SmartisanWheelTextView;->mDrawTitleLen:I

    add-int/lit8 v3, v3, -0x1

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 21
    invoke-virtual {p2, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 22
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 23
    :cond_6
    iget-object v3, p0, Lsmartisan/widget/SmartisanWheelTextView;->mPaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    int-to-float v3, v1

    .line 24
    iget-object v6, p0, Lsmartisan/widget/SmartisanWheelTextView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v3, v0, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 25
    :cond_7
    iget-object p2, p0, Lsmartisan/widget/SmartisanWheelTextView;->mSubContent:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_9

    .line 26
    iget p2, p0, Lsmartisan/widget/SmartisanWheelTextView;->mDrawSubtitleLen:I

    if-lez p2, :cond_8

    iget-object v0, p0, Lsmartisan/widget/SmartisanWheelTextView;->mSubContent:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p2, v0, :cond_8

    .line 27
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lsmartisan/widget/SmartisanWheelTextView;->mSubContent:Ljava/lang/String;

    iget v3, p0, Lsmartisan/widget/SmartisanWheelTextView;->mDrawSubtitleLen:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_4

    .line 28
    :cond_8
    iget-object p2, p0, Lsmartisan/widget/SmartisanWheelTextView;->mSubContent:Ljava/lang/String;

    .line 29
    :goto_4
    iget-object v0, p0, Lsmartisan/widget/SmartisanWheelTextView;->mSubPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    int-to-float v0, v1

    .line 30
    iget-object v1, p0, Lsmartisan/widget/SmartisanWheelTextView;->mSubPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0, v2, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_9
    return-void
.end method

.method private ensureScrollWheelAdjusted()Z
    .locals 7

    .line 1
    iget v0, p0, Lsmartisan/widget/SmartisanWheelTextView;->mInitialScrollOffset:I

    iget v3, p0, Lsmartisan/widget/SmartisanWheelTextView;->mCurrentScrollOffset:I

    sub-int v5, v0, v3

    if-eqz v5, :cond_0

    const v0, 0x7fffffff

    .line 2
    iput v0, p0, Lsmartisan/widget/SmartisanWheelTextView;->mPreviousScrollerY:I

    .line 3
    iget-object v1, p0, Lsmartisan/widget/SmartisanWheelTextView;->mAdjustScroller:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/16 v6, 0x96

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private getAvaliableDrawTitleLen(Ljava/lang/String;I)I
    .locals 6

    const-string v0, "..."

    .line 1
    invoke-direct {p0, v0}, Lsmartisan/widget/SmartisanWheelTextView;->getTitleWidth(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    .line 2
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    int-to-float v2, v2

    .line 4
    invoke-direct {p0, v4}, Lsmartisan/widget/SmartisanWheelTextView;->getTitleWidth(Ljava/lang/String;)F

    move-result v4

    add-float/2addr v2, v4

    float-to-int v2, v2

    add-int v4, v2, v0

    if-gt v4, p2, :cond_0

    add-int/lit8 v3, v1, 0x1

    move v1, v3

    goto :goto_0

    :cond_0
    return v3
.end method

.method private getDisPlayMaxIndex()I
    .locals 5

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SmartisanWheelTextView;->mDisplayedValues:[Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    array-length v0, v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    move v2, v0

    move v0, v1

    .line 2
    :goto_0
    iget-object v3, p0, Lsmartisan/widget/SmartisanWheelTextView;->mDisplayedValues:[Ljava/lang/String;

    array-length v4, v3

    if-ge v1, v4, :cond_2

    .line 3
    aget-object v3, v3, v1

    invoke-direct {p0, v3}, Lsmartisan/widget/SmartisanWheelTextView;->getTitleWidth(Ljava/lang/String;)F

    move-result v3

    cmpl-float v4, v3, v2

    if-lez v4, :cond_1

    move v0, v1

    move v2, v3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method private getSubtitleWidth(Ljava/lang/String;)F
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iget-object v0, p0, Lsmartisan/widget/SmartisanWheelTextView;->mSubContent:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lsmartisan/widget/SmartisanWheelTextView;->mSubPaint:Landroid/graphics/Paint;

    iget v1, p0, Lsmartisan/widget/SmartisanWheelTextView;->mMaxSubtitleSize:F

    iget v2, p0, Lsmartisan/widget/SmartisanWheelTextView;->mSubtitleSize:F

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lsmartisan/widget/SmartisanWheelTextView;->mSubPaint:Landroid/graphics/Paint;

    iget v1, p0, Lsmartisan/widget/SmartisanWheelTextView;->mSubtitleSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 5
    :goto_0
    iget-object v0, p0, Lsmartisan/widget/SmartisanWheelTextView;->mSubPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    return p1
.end method

.method private getTitleHeight(Ljava/lang/String;)I
    .locals 4

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    if-eqz p1, :cond_0

    .line 2
    iget-object v1, p0, Lsmartisan/widget/SmartisanWheelTextView;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, p1, v2, v3, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 3
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result p1

    return p1
.end method

.method private getTitleWidth(Ljava/lang/String;)F
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iget-object v0, p0, Lsmartisan/widget/SmartisanWheelTextView;->mSubContent:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lsmartisan/widget/SmartisanWheelTextView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lsmartisan/widget/SmartisanWheelTextView;->mMaxTitleSizeWithSubtitle:F

    iget v2, p0, Lsmartisan/widget/SmartisanWheelTextView;->mTitleSize:F

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lsmartisan/widget/SmartisanWheelTextView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lsmartisan/widget/SmartisanWheelTextView;->mTitleSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 5
    :goto_0
    iget-object v0, p0, Lsmartisan/widget/SmartisanWheelTextView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    return p1
.end method

.method private handleTextByWidth()I
    .locals 5

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SmartisanWheelTextView;->mDisplayedValues:[Ljava/lang/String;

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 2
    invoke-direct {p0}, Lsmartisan/widget/SmartisanWheelTextView;->getDisPlayMaxIndex()I

    move-result v1

    aget-object v0, v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    invoke-direct {p0, v0}, Lsmartisan/widget/SmartisanWheelTextView;->getTitleWidth(Ljava/lang/String;)F

    move-result v1

    .line 4
    iget-object v2, p0, Lsmartisan/widget/SmartisanWheelTextView;->mSubContent:Ljava/lang/String;

    invoke-direct {p0, v2}, Lsmartisan/widget/SmartisanWheelTextView;->getSubtitleWidth(Ljava/lang/String;)F

    move-result v2

    .line 5
    iget v3, p0, Lsmartisan/widget/SmartisanWheelTextView;->mMaxAvailableWidth:I

    if-lez v3, :cond_1

    int-to-float v4, v3

    cmpl-float v4, v1, v4

    if-ltz v4, :cond_1

    .line 6
    invoke-direct {p0, v0, v3}, Lsmartisan/widget/SmartisanWheelTextView;->getAvaliableDrawTitleLen(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lsmartisan/widget/SmartisanWheelTextView;->mDrawTitleLen:I

    .line 7
    iget v0, p0, Lsmartisan/widget/SmartisanWheelTextView;->mMaxAvailableWidth:I

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lsmartisan/widget/SmartisanWheelTextView;->mDrawTitleLen:I

    :cond_2
    float-to-int v0, v1

    .line 9
    :goto_1
    iget v1, p0, Lsmartisan/widget/SmartisanWheelTextView;->mMaxAvailableWidth:I

    const/4 v3, 0x0

    if-lez v1, :cond_3

    cmpl-float v4, v2, v3

    if-lez v4, :cond_3

    int-to-float v4, v1

    cmpl-float v4, v2, v4

    if-ltz v4, :cond_3

    .line 10
    iget-object v2, p0, Lsmartisan/widget/SmartisanWheelTextView;->mSubContent:Ljava/lang/String;

    invoke-direct {p0, v2, v1}, Lsmartisan/widget/SmartisanWheelTextView;->getAvaliableDrawTitleLen(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lsmartisan/widget/SmartisanWheelTextView;->mDrawSubtitleLen:I

    .line 11
    iget v1, p0, Lsmartisan/widget/SmartisanWheelTextView;->mMaxAvailableWidth:I

    goto :goto_2

    :cond_3
    cmpl-float v1, v2, v3

    if-lez v1, :cond_4

    .line 12
    iget-object v1, p0, Lsmartisan/widget/SmartisanWheelTextView;->mSubContent:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iput v1, p0, Lsmartisan/widget/SmartisanWheelTextView;->mDrawSubtitleLen:I

    :cond_4
    float-to-int v1, v2

    .line 13
    :goto_2
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private incrementSelectorIndices([I)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 2
    aget v1, p1, v0

    add-int/lit8 v1, v1, 0x1

    aput v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private initMaxSize()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 3
    sget v2, Lsmartisan/widget/R$dimen;->title_bar_title_text_size:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    iget v3, v1, Landroid/content/res/Configuration;->fontScale:F

    div-float/2addr v2, v3

    const v3, 0x3f8ccccd    # 1.1f

    mul-float/2addr v2, v3

    iput v2, p0, Lsmartisan/widget/SmartisanWheelTextView;->mMaxTitleSizeWithSubtitle:F

    .line 4
    sget v2, Lsmartisan/widget/R$dimen;->item_sub_title_size:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iget v1, v1, Landroid/content/res/Configuration;->fontScale:F

    div-float/2addr v0, v1

    mul-float/2addr v0, v3

    iput v0, p0, Lsmartisan/widget/SmartisanWheelTextView;->mMaxSubtitleSize:F

    return-void
.end method

.method private initSubtitlePaint()V
    .locals 3

    .line 1
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lsmartisan/widget/SmartisanWheelTextView;->mSubPaint:Landroid/graphics/Paint;

    .line 2
    iget-object v0, p0, Lsmartisan/widget/SmartisanWheelTextView;->mSubPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lsmartisan/widget/R$dimen;->item_sub_title_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lsmartisan/widget/SmartisanWheelTextView;->mSubtitleSize:F

    .line 4
    iget-object v0, p0, Lsmartisan/widget/SmartisanWheelTextView;->mSubPaint:Landroid/graphics/Paint;

    iget v1, p0, Lsmartisan/widget/SmartisanWheelTextView;->mSubtitleSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 5
    iget-object v0, p0, Lsmartisan/widget/SmartisanWheelTextView;->mSubPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lsmartisan/widget/R$color;->sub_title_text_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private initTitlePaint()V
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/Paint;

    const/16 v1, 0x21

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lsmartisan/widget/SmartisanWheelTextView;->mPaint:Landroid/graphics/Paint;

    .line 2
    iget-object v0, p0, Lsmartisan/widget/SmartisanWheelTextView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 3
    iget-object v0, p0, Lsmartisan/widget/SmartisanWheelTextView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lsmartisan/widget/SmartisanWheelTextView;->mTitleSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 4
    iget-object v0, p0, Lsmartisan/widget/SmartisanWheelTextView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lsmartisan/widget/SmartisanWheelTextView;->mTextColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private initializeSelectorWheel()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lsmartisan/widget/SmartisanWheelTextView;->isSupportRotate()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lsmartisan/widget/SmartisanWheelTextView;->initializeSelectorWheelIndices()V

    .line 3
    iget-object v0, p0, Lsmartisan/widget/SmartisanWheelTextView;->mDisplayedValues:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lsmartisan/widget/SmartisanWheelTextView;->getTitleHeight(Ljava/lang/String;)I

    .line 4
    iget-object v0, p0, Lsmartisan/widget/SmartisanWheelTextView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iget v2, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    add-int/2addr v2, v0

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    int-to-float v0, v1

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    iput v1, p0, Lsmartisan/widget/SmartisanWheelTextView;->mSelectorElementHeight:I

    .line 7
    iget-object v1, p0, Lsmartisan/widget/SmartisanWheelTextView;->mDisplayedValues:[Ljava/lang/String;

    array-length v1, v1

    div-int/lit8 v1, v1, 0x2

    float-to-int v0, v0

    .line 8
    iget v2, p0, Lsmartisan/widget/SmartisanWheelTextView;->mSelectorElementHeight:I

    mul-int/2addr v2, v1

    sub-int/2addr v0, v2

    iput v0, p0, Lsmartisan/widget/SmartisanWheelTextView;->mInitialScrollOffset:I

    .line 9
    iget v0, p0, Lsmartisan/widget/SmartisanWheelTextView;->mInitialScrollOffset:I

    iput v0, p0, Lsmartisan/widget/SmartisanWheelTextView;->mCurrentScrollOffset:I

    return-void
.end method

.method private initializeSelectorWheelIndices()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lsmartisan/widget/SmartisanWheelTextView;->isSupportRotate()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lsmartisan/widget/SmartisanWheelTextView;->mDisplayedValues:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lsmartisan/widget/SmartisanWheelTextView;->mSelectorIndices:[I

    .line 3
    invoke-virtual {p0}, Lsmartisan/widget/SmartisanWheelTextView;->getValue()I

    move-result v0

    const/4 v1, 0x0

    .line 4
    :goto_0
    iget-object v2, p0, Lsmartisan/widget/SmartisanWheelTextView;->mSelectorIndices:[I

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 5
    iget-object v3, p0, Lsmartisan/widget/SmartisanWheelTextView;->mDisplayedValues:[Ljava/lang/String;

    array-length v3, v3

    div-int/lit8 v3, v3, 0x2

    sub-int v3, v1, v3

    add-int/2addr v3, v0

    .line 6
    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private isSupportRotate()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lsmartisan/widget/SmartisanWheelTextView;->mIsNeedRotate:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsmartisan/widget/SmartisanWheelTextView;->mDisplayedValues:[Ljava/lang/String;

    if-eqz v0, :cond_0

    array-length v0, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private notifyChange(II)V
    .locals 1

    .line 1
    iget-object p2, p0, Lsmartisan/widget/SmartisanWheelTextView;->mOnValueChangeListener:Lsmartisan/widget/SmartisanWheelTextView$OnValueChangeListener;

    if-eqz p2, :cond_0

    .line 2
    iget v0, p0, Lsmartisan/widget/SmartisanWheelTextView;->mValue:I

    invoke-interface {p2, p0, p1, v0}, Lsmartisan/widget/SmartisanWheelTextView$OnValueChangeListener;->onValueChange(Lsmartisan/widget/SmartisanWheelTextView;II)V

    :cond_0
    return-void
.end method

.method private setValueInternal(IZ)V
    .locals 1

    .line 1
    iget v0, p0, Lsmartisan/widget/SmartisanWheelTextView;->mValue:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-gez p1, :cond_1

    .line 2
    iget-object v0, p0, Lsmartisan/widget/SmartisanWheelTextView;->mDisplayedValues:[Ljava/lang/String;

    array-length v0, v0

    add-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    .line 3
    :cond_1
    iget-object v0, p0, Lsmartisan/widget/SmartisanWheelTextView;->mDisplayedValues:[Ljava/lang/String;

    array-length v0, v0

    rem-int/2addr p1, v0

    .line 4
    iget v0, p0, Lsmartisan/widget/SmartisanWheelTextView;->mValue:I

    .line 5
    iput p1, p0, Lsmartisan/widget/SmartisanWheelTextView;->mValue:I

    if-eqz p2, :cond_2

    .line 6
    invoke-direct {p0, v0, p1}, Lsmartisan/widget/SmartisanWheelTextView;->notifyChange(II)V

    .line 7
    :cond_2
    invoke-direct {p0}, Lsmartisan/widget/SmartisanWheelTextView;->initializeSelectorWheelIndices()V

    const/16 p1, 0x10

    .line 8
    invoke-virtual {p0, p1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    const p1, 0x8000

    .line 9
    invoke-virtual {p0, p1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 4

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SmartisanWheelTextView;->mAdjustScroller:Landroid/widget/Scroller;

    .line 2
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 4
    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    .line 5
    iget v2, p0, Lsmartisan/widget/SmartisanWheelTextView;->mPreviousScrollerY:I

    const v3, 0x7fffffff

    if-ne v2, v3, :cond_1

    .line 6
    invoke-virtual {v0}, Landroid/widget/Scroller;->getStartY()I

    move-result v2

    iput v2, p0, Lsmartisan/widget/SmartisanWheelTextView;->mPreviousScrollerY:I

    :cond_1
    const/4 v2, 0x0

    .line 7
    iget v3, p0, Lsmartisan/widget/SmartisanWheelTextView;->mPreviousScrollerY:I

    sub-int v3, v1, v3

    invoke-virtual {p0, v2, v3}, Lsmartisan/widget/SmartisanWheelTextView;->scrollBy(II)V

    .line 8
    iput v1, p0, Lsmartisan/widget/SmartisanWheelTextView;->mPreviousScrollerY:I

    .line 9
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_2
    return-void
.end method

.method public getValue()I
    .locals 1

    .line 1
    iget v0, p0, Lsmartisan/widget/SmartisanWheelTextView;->mValue:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SmartisanWheelTextView;->mDisplayedValues:[Ljava/lang/String;

    if-eqz v0, :cond_7

    array-length v1, v0

    if-gtz v1, :cond_0

    goto/16 :goto_4

    .line 2
    :cond_0
    array-length v1, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_6

    iget-boolean v1, p0, Lsmartisan/widget/SmartisanWheelTextView;->mIsNeedRotate:Z

    if-nez v1, :cond_1

    goto/16 :goto_3

    .line 3
    :cond_1
    iget-object v1, p0, Lsmartisan/widget/SmartisanWheelTextView;->mSelectorIndices:[I

    if-eqz v1, :cond_5

    if-nez v0, :cond_2

    goto :goto_2

    .line 4
    :cond_2
    iget-object v0, p0, Lsmartisan/widget/SmartisanWheelTextView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 5
    iget v0, p0, Lsmartisan/widget/SmartisanWheelTextView;->mCurrentScrollOffset:I

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    .line 7
    iget-object v2, p0, Lsmartisan/widget/SmartisanWheelTextView;->mSelectorIndices:[I

    move v4, v0

    move v0, v3

    .line 8
    :goto_0
    array-length v5, v2

    if-ge v0, v5, :cond_7

    .line 9
    aget v5, v2, v0

    if-gez v5, :cond_3

    .line 10
    iget-object v6, p0, Lsmartisan/widget/SmartisanWheelTextView;->mDisplayedValues:[Ljava/lang/String;

    array-length v6, v6

    add-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget-object v6, p0, Lsmartisan/widget/SmartisanWheelTextView;->mDisplayedValues:[Ljava/lang/String;

    array-length v6, v6

    rem-int/2addr v5, v6

    goto :goto_1

    .line 11
    :cond_3
    iget-object v6, p0, Lsmartisan/widget/SmartisanWheelTextView;->mDisplayedValues:[Ljava/lang/String;

    array-length v6, v6

    rem-int/2addr v5, v6

    .line 12
    :goto_1
    iget-object v6, p0, Lsmartisan/widget/SmartisanWheelTextView;->mDisplayedValues:[Ljava/lang/String;

    aget-object v5, v6, v5

    .line 13
    iget v6, p0, Lsmartisan/widget/SmartisanWheelTextView;->mDrawTitleLen:I

    if-eqz v6, :cond_4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v6, v7, :cond_4

    .line 14
    iget v6, p0, Lsmartisan/widget/SmartisanWheelTextView;->mDrawTitleLen:I

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 15
    invoke-virtual {v5, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 16
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "..."

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_4
    int-to-float v6, v1

    int-to-float v7, v4

    .line 17
    iget-object v8, p0, Lsmartisan/widget/SmartisanWheelTextView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 18
    iget v5, p0, Lsmartisan/widget/SmartisanWheelTextView;->mSelectorElementHeight:I

    add-int/2addr v4, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    :goto_2
    return-void

    .line 19
    :cond_6
    :goto_3
    iget-object v0, p0, Lsmartisan/widget/SmartisanWheelTextView;->mDisplayedValues:[Ljava/lang/String;

    aget-object v0, v0, v3

    invoke-direct {p0, p1, v0}, Lsmartisan/widget/SmartisanWheelTextView;->drawSingleLineText(Landroid/graphics/Canvas;Ljava/lang/String;)V

    :cond_7
    :goto_4
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2
    const-class v0, Lsmartisan/widget/SmartisanWheelTextView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 4
    iget v0, p0, Lsmartisan/widget/SmartisanWheelTextView;->mValue:I

    iget v1, p0, Lsmartisan/widget/SmartisanWheelTextView;->mSelectorElementHeight:I

    mul-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollY(I)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-direct {p0}, Lsmartisan/widget/SmartisanWheelTextView;->initializeSelectorWheel()V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 3
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 4
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_0

    .line 5
    invoke-direct {p0}, Lsmartisan/widget/SmartisanWheelTextView;->handleTextByWidth()I

    goto :goto_0

    .line 6
    :cond_0
    invoke-direct {p0}, Lsmartisan/widget/SmartisanWheelTextView;->handleTextByWidth()I

    move-result p1

    .line 7
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getMinimumWidth()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 8
    invoke-direct {p0}, Lsmartisan/widget/SmartisanWheelTextView;->initializeSelectorWheel()V

    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2
    iget-object v0, p0, Lsmartisan/widget/SmartisanWheelTextView;->mDisplayedValues:[Ljava/lang/String;

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    array-length v0, v0

    iget v1, p0, Lsmartisan/widget/SmartisanWheelTextView;->mValue:I

    if-le v0, v1, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lsmartisan/widget/SmartisanWheelTextView;->mDisplayedValues:[Ljava/lang/String;

    iget v2, p0, Lsmartisan/widget/SmartisanWheelTextView;->mValue:I

    aget-object v1, v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    :cond_0
    iget-object v0, p0, Lsmartisan/widget/SmartisanWheelTextView;->mSubContent:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lsmartisan/widget/SmartisanWheelTextView;->mSubContent:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-direct {p0}, Lsmartisan/widget/SmartisanWheelTextView;->isSupportRotate()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 5
    iget v3, p0, Lsmartisan/widget/SmartisanWheelTextView;->mDownX:F

    sub-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 6
    iget v3, p0, Lsmartisan/widget/SmartisanWheelTextView;->mDownY:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_6

    if-eq v0, v4, :cond_4

    const/4 v5, 0x2

    if-eq v0, v5, :cond_1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_4

    goto :goto_0

    .line 7
    :cond_1
    iget-boolean v0, p0, Lsmartisan/widget/SmartisanWheelTextView;->mIngonreMoveEvents:Z

    if-eqz v0, :cond_2

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 9
    iget v0, p0, Lsmartisan/widget/SmartisanWheelTextView;->mLastDownOrMoveEventY:F

    sub-float v0, p1, v0

    float-to-int v0, v0

    .line 10
    iget-boolean v1, p0, Lsmartisan/widget/SmartisanWheelTextView;->mIsNeedRotate:Z

    if-eqz v1, :cond_3

    .line 11
    invoke-virtual {p0, v3, v0}, Lsmartisan/widget/SmartisanWheelTextView;->scrollBy(II)V

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 13
    :cond_3
    iput p1, p0, Lsmartisan/widget/SmartisanWheelTextView;->mLastDownOrMoveEventY:F

    goto :goto_0

    .line 14
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v7

    sub-long/2addr v5, v7

    long-to-float p1, v5

    .line 15
    iget-boolean v0, p0, Lsmartisan/widget/SmartisanWheelTextView;->mIsNeedRotate:Z

    if-eqz v0, :cond_5

    .line 16
    invoke-direct {p0}, Lsmartisan/widget/SmartisanWheelTextView;->ensureScrollWheelAdjusted()Z

    .line 17
    :cond_5
    iget v0, p0, Lsmartisan/widget/SmartisanWheelTextView;->mTouchSlop:I

    int-to-float v3, v0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_7

    int-to-float v0, v0

    cmpg-float v0, v1, v0

    if-gez v0, :cond_7

    iget v0, p0, Lsmartisan/widget/SmartisanWheelTextView;->mClickTimeout:I

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_7

    .line 18
    invoke-virtual {p0}, Landroid/view/View;->performClick()Z

    goto :goto_0

    .line 19
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lsmartisan/widget/SmartisanWheelTextView;->mDownX:F

    .line 20
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lsmartisan/widget/SmartisanWheelTextView;->mDownY:F

    iput p1, p0, Lsmartisan/widget/SmartisanWheelTextView;->mLastDownOrMoveEventY:F

    .line 21
    iput-boolean v3, p0, Lsmartisan/widget/SmartisanWheelTextView;->mIngonreMoveEvents:Z

    .line 22
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 23
    iget-object p1, p0, Lsmartisan/widget/SmartisanWheelTextView;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_7

    .line 24
    iget-object p1, p0, Lsmartisan/widget/SmartisanWheelTextView;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {p1, v4}, Landroid/widget/Scroller;->forceFinished(Z)V

    :cond_7
    :goto_0
    return v4

    .line 25
    :cond_8
    :goto_1
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public scrollBy(II)V
    .locals 3

    .line 1
    sget p1, Lsmartisan/widget/SmartisanWheelTextView;->MAX_NO_ACTION_OFFSET:I

    if-le p2, p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, p2

    .line 2
    :goto_0
    iget-object p2, p0, Lsmartisan/widget/SmartisanWheelTextView;->mSelectorIndices:[I

    .line 3
    iget v0, p0, Lsmartisan/widget/SmartisanWheelTextView;->mCurrentScrollOffset:I

    add-int/2addr v0, p1

    iput v0, p0, Lsmartisan/widget/SmartisanWheelTextView;->mCurrentScrollOffset:I

    .line 4
    iget p1, p0, Lsmartisan/widget/SmartisanWheelTextView;->mCurrentScrollOffset:I

    iget v0, p0, Lsmartisan/widget/SmartisanWheelTextView;->mInitialScrollOffset:I

    sub-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    sget v0, Lsmartisan/widget/SmartisanWheelTextView;->MAX_NO_ACTION_OFFSET:I

    if-gt p1, v0, :cond_1

    return-void

    .line 5
    :cond_1
    iget p1, p0, Lsmartisan/widget/SmartisanWheelTextView;->mCurrentScrollOffset:I

    iget v0, p0, Lsmartisan/widget/SmartisanWheelTextView;->mInitialScrollOffset:I

    sub-int v0, p1, v0

    sget v1, Lsmartisan/widget/SmartisanWheelTextView;->MIN_ACTION_OFFSET:I

    const/4 v2, 0x1

    if-le v0, v1, :cond_2

    iget-boolean v0, p0, Lsmartisan/widget/SmartisanWheelTextView;->mIngonreMoveEvents:Z

    if-nez v0, :cond_2

    .line 6
    iget v0, p0, Lsmartisan/widget/SmartisanWheelTextView;->mSelectorElementHeight:I

    sub-int/2addr p1, v0

    iput p1, p0, Lsmartisan/widget/SmartisanWheelTextView;->mCurrentScrollOffset:I

    .line 7
    invoke-direct {p0, p2}, Lsmartisan/widget/SmartisanWheelTextView;->decrementSelectorIndices([I)V

    .line 8
    iget p1, p0, Lsmartisan/widget/SmartisanWheelTextView;->mValue:I

    sub-int/2addr p1, v2

    invoke-direct {p0, p1, v2}, Lsmartisan/widget/SmartisanWheelTextView;->setValueInternal(IZ)V

    .line 9
    invoke-direct {p0}, Lsmartisan/widget/SmartisanWheelTextView;->ensureScrollWheelAdjusted()Z

    .line 10
    iput-boolean v2, p0, Lsmartisan/widget/SmartisanWheelTextView;->mIngonreMoveEvents:Z

    return-void

    .line 11
    :cond_2
    iget p1, p0, Lsmartisan/widget/SmartisanWheelTextView;->mCurrentScrollOffset:I

    iget v0, p0, Lsmartisan/widget/SmartisanWheelTextView;->mInitialScrollOffset:I

    sub-int v0, p1, v0

    sget v1, Lsmartisan/widget/SmartisanWheelTextView;->MIN_ACTION_OFFSET:I

    neg-int v1, v1

    if-ge v0, v1, :cond_3

    iget-boolean v0, p0, Lsmartisan/widget/SmartisanWheelTextView;->mIngonreMoveEvents:Z

    if-nez v0, :cond_3

    .line 12
    iget v0, p0, Lsmartisan/widget/SmartisanWheelTextView;->mSelectorElementHeight:I

    add-int/2addr p1, v0

    iput p1, p0, Lsmartisan/widget/SmartisanWheelTextView;->mCurrentScrollOffset:I

    .line 13
    invoke-direct {p0, p2}, Lsmartisan/widget/SmartisanWheelTextView;->incrementSelectorIndices([I)V

    .line 14
    iget p1, p0, Lsmartisan/widget/SmartisanWheelTextView;->mValue:I

    add-int/2addr p1, v2

    invoke-direct {p0, p1, v2}, Lsmartisan/widget/SmartisanWheelTextView;->setValueInternal(IZ)V

    .line 15
    invoke-direct {p0}, Lsmartisan/widget/SmartisanWheelTextView;->ensureScrollWheelAdjusted()Z

    .line 16
    iput-boolean v2, p0, Lsmartisan/widget/SmartisanWheelTextView;->mIngonreMoveEvents:Z

    :cond_3
    return-void
.end method

.method public setAvailWidth(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getMinimumWidth()I

    move-result v0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lsmartisan/widget/SmartisanWheelTextView;->mMaxAvailableWidth:I

    return-void
.end method

.method public varargs setDisplayedValues([Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_2

    .line 1
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lsmartisan/widget/SmartisanWheelTextView;->mDisplayedValues:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    iput-object p1, p0, Lsmartisan/widget/SmartisanWheelTextView;->mDisplayedValues:[Ljava/lang/String;

    .line 4
    invoke-direct {p0}, Lsmartisan/widget/SmartisanWheelTextView;->initializeSelectorWheelIndices()V

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_2
    :goto_0
    return-void
.end method

.method public setIsNeedRotate(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lsmartisan/widget/SmartisanWheelTextView;->mIsNeedRotate:Z

    return-void
.end method

.method public setOnValueChangedListener(Lsmartisan/widget/SmartisanWheelTextView$OnValueChangeListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/SmartisanWheelTextView;->mOnValueChangeListener:Lsmartisan/widget/SmartisanWheelTextView$OnValueChangeListener;

    return-void
.end method

.method public setSubContentText(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/SmartisanWheelTextView;->mSubContent:Ljava/lang/String;

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method setSubtitleColor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SmartisanWheelTextView;->mSubPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setTextColor(I)V
    .locals 1

    .line 1
    iget v0, p0, Lsmartisan/widget/SmartisanWheelTextView;->mTextColor:I

    if-eq v0, p1, :cond_0

    .line 2
    iput p1, p0, Lsmartisan/widget/SmartisanWheelTextView;->mTextColor:I

    .line 3
    iget-object p1, p0, Lsmartisan/widget/SmartisanWheelTextView;->mPaint:Landroid/graphics/Paint;

    iget v0, p0, Lsmartisan/widget/SmartisanWheelTextView;->mTextColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public setTextMaxSize(F)V
    .locals 0

    .line 1
    iput p1, p0, Lsmartisan/widget/SmartisanWheelTextView;->mMaxTitleSize:F

    return-void
.end method

.method public setTextSize(F)V
    .locals 1

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_1

    .line 1
    iget v0, p0, Lsmartisan/widget/SmartisanWheelTextView;->mTitleSize:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 2
    iput p1, p0, Lsmartisan/widget/SmartisanWheelTextView;->mTitleSize:F

    .line 3
    iget-object p1, p0, Lsmartisan/widget/SmartisanWheelTextView;->mPaint:Landroid/graphics/Paint;

    iget v0, p0, Lsmartisan/widget/SmartisanWheelTextView;->mTitleSize:F

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "the text size mus be >= 0 "

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method setTitleColor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SmartisanWheelTextView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setValue(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lsmartisan/widget/SmartisanWheelTextView;->setValueInternal(IZ)V

    return-void
.end method
