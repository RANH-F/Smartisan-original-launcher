.class public Lsmartisan/widget/DownloadProgressView;
.super Landroid/view/View;
.source "DownloadProgressView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsmartisan/widget/DownloadProgressView$SavedState;
    }
.end annotation


# static fields
.field private static final DEF_ALPHA_ANIM_DURATION:I = 0x12c

.field private static DEF_BACK_RING_WIDTH:I = 0x6

.field private static final DEF_BACK_RING_WIDTH_DP:F = 2.0f

.field private static DEF_FORE_RING_WIDTH:I = 0x4

.field private static final DEF_FORE_RING_WIDTH_DP:F = 1.3333334f

.field private static DEF_INNER_CIRCLE_RADIUS:I = 0x0

.field private static final DEF_PROGRESS:I = 0x0

.field private static DEF_VIEW_WIDTH:I = 0x0

.field private static final MAX_ALPHA:I = 0xff

.field private static final MIN_ALPHA:I = 0x0

.field public static final STATE_PAUSED:I = 0x1

.field public static final STATE_PROCESSING:I = 0x4

.field public static final STATE_RESUMED:I = 0x2

.field public static final STATE_RETRY:I = 0x3


# instance fields
.field private mAlphaAnim:Landroid/animation/ValueAnimator;

.field private mAlphaAnimDuration:J

.field private mArcRectF:Landroid/graphics/RectF;

.field private mBackProgressEndColor:I

.field private mBackProgressShader:Landroid/graphics/Shader;

.field private mBackProgressStartColor:I

.field private mBackRingWidth:I

.field private mCurrentState:I

.field private mCurrentStateDrawableAlpha:I

.field private mDownloadDrawable:Landroid/graphics/drawable/Drawable;

.field private mFailedProgressColor:I

.field private mForeProgressEndColor:I

.field private mForeProgressShader:Landroid/graphics/Shader;

.field private mForeProgressStartColor:I

.field private mForeRingWidth:I

.field private mInnerCircleRadius:I

.field private mLastState:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPauseDrawable:Landroid/graphics/drawable/Drawable;

.field private mProcessingDegree:I

.field private mProcessingDrawable:Landroid/graphics/drawable/Drawable;

.field private mProgress:I

.field private mRetryDrawable:Landroid/graphics/drawable/Drawable;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lsmartisan/widget/DownloadProgressView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lsmartisan/widget/DownloadProgressView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Lsmartisan/widget/DownloadProgressView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lsmartisan/widget/DownloadProgressView;->mCurrentState:I

    .line 6
    iget v0, p0, Lsmartisan/widget/DownloadProgressView;->mCurrentState:I

    iput v0, p0, Lsmartisan/widget/DownloadProgressView;->mLastState:I

    const/16 v0, 0xff

    .line 7
    iput v0, p0, Lsmartisan/widget/DownloadProgressView;->mCurrentStateDrawableAlpha:I

    const-wide/16 v0, 0x12c

    .line 8
    iput-wide v0, p0, Lsmartisan/widget/DownloadProgressView;->mAlphaAnimDuration:J

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lsmartisan/widget/DownloadProgressView;->mDownloadDrawable:Landroid/graphics/drawable/Drawable;

    .line 10
    iput-object v0, p0, Lsmartisan/widget/DownloadProgressView;->mPauseDrawable:Landroid/graphics/drawable/Drawable;

    .line 11
    iput-object v0, p0, Lsmartisan/widget/DownloadProgressView;->mRetryDrawable:Landroid/graphics/drawable/Drawable;

    .line 12
    iput-object v0, p0, Lsmartisan/widget/DownloadProgressView;->mProcessingDrawable:Landroid/graphics/drawable/Drawable;

    const/high16 v0, 0x41700000    # 15.0f

    .line 13
    invoke-static {p1, v0}, Lsmartisan/widget/DownloadProgressView;->dp2px(Landroid/content/Context;F)I

    move-result v0

    sput v0, Lsmartisan/widget/DownloadProgressView;->DEF_INNER_CIRCLE_RADIUS:I

    const/high16 v0, 0x42100000    # 36.0f

    .line 14
    invoke-static {p1, v0}, Lsmartisan/widget/DownloadProgressView;->dp2px(Landroid/content/Context;F)I

    move-result v0

    sput v0, Lsmartisan/widget/DownloadProgressView;->DEF_VIEW_WIDTH:I

    const/high16 v0, 0x40000000    # 2.0f

    .line 15
    invoke-static {p1, v0}, Lsmartisan/widget/DownloadProgressView;->dp2px(Landroid/content/Context;F)I

    move-result v0

    sput v0, Lsmartisan/widget/DownloadProgressView;->DEF_BACK_RING_WIDTH:I

    const v0, 0x3faaaaab

    .line 16
    invoke-static {p1, v0}, Lsmartisan/widget/DownloadProgressView;->dp2px(Landroid/content/Context;F)I

    move-result v0

    sput v0, Lsmartisan/widget/DownloadProgressView;->DEF_FORE_RING_WIDTH:I

    .line 17
    sget-object v0, Lsmartisan/widget/R$styleable;->DownloadProgressView:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 18
    sget p2, Lsmartisan/widget/R$styleable;->DownloadProgressView_inner_circle_radius:I

    sget p3, Lsmartisan/widget/DownloadProgressView;->DEF_INNER_CIRCLE_RADIUS:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lsmartisan/widget/DownloadProgressView;->mInnerCircleRadius:I

    .line 19
    sget p2, Lsmartisan/widget/R$styleable;->DownloadProgressView_fore_ring_width:I

    sget p3, Lsmartisan/widget/DownloadProgressView;->DEF_FORE_RING_WIDTH:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lsmartisan/widget/DownloadProgressView;->mForeRingWidth:I

    .line 20
    sget p2, Lsmartisan/widget/R$styleable;->DownloadProgressView_back_ring_width:I

    sget p3, Lsmartisan/widget/DownloadProgressView;->DEF_BACK_RING_WIDTH:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    iput p2, p0, Lsmartisan/widget/DownloadProgressView;->mBackRingWidth:I

    .line 21
    sget p2, Lsmartisan/widget/R$styleable;->DownloadProgressView_smt_progress:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lsmartisan/widget/DownloadProgressView;->mProgress:I

    .line 22
    sget p2, Lsmartisan/widget/R$styleable;->DownloadProgressView_fore_progress_start_color:I

    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lsmartisan/widget/R$color;->def_fore_progress_start_color:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    .line 24
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lsmartisan/widget/DownloadProgressView;->mForeProgressStartColor:I

    .line 25
    sget p2, Lsmartisan/widget/R$styleable;->DownloadProgressView_fore_progress_end_color:I

    .line 26
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lsmartisan/widget/R$color;->def_fore_progress_end_color:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    .line 27
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lsmartisan/widget/DownloadProgressView;->mForeProgressEndColor:I

    .line 28
    sget p2, Lsmartisan/widget/R$styleable;->DownloadProgressView_back_progress_start_color:I

    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lsmartisan/widget/R$color;->def_back_progress_start_color:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    .line 30
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lsmartisan/widget/DownloadProgressView;->mBackProgressStartColor:I

    .line 31
    sget p2, Lsmartisan/widget/R$styleable;->DownloadProgressView_back_progress_end_color:I

    .line 32
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lsmartisan/widget/R$color;->def_back_progress_end_color:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    .line 33
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lsmartisan/widget/DownloadProgressView;->mBackProgressEndColor:I

    .line 34
    sget p2, Lsmartisan/widget/R$styleable;->DownloadProgressView_failed_progress_color:I

    .line 35
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lsmartisan/widget/R$color;->def_failed_progress_color:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    .line 36
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lsmartisan/widget/DownloadProgressView;->mFailedProgressColor:I

    .line 37
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 38
    iget p1, p0, Lsmartisan/widget/DownloadProgressView;->mBackRingWidth:I

    iget p2, p0, Lsmartisan/widget/DownloadProgressView;->mForeRingWidth:I

    if-lt p1, p2, :cond_0

    .line 39
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lsmartisan/widget/R$drawable;->circular_progress_download_2:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lsmartisan/widget/DownloadProgressView;->mDownloadDrawable:Landroid/graphics/drawable/Drawable;

    .line 40
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lsmartisan/widget/R$drawable;->circular_progress_pause_2:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lsmartisan/widget/DownloadProgressView;->mPauseDrawable:Landroid/graphics/drawable/Drawable;

    .line 41
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lsmartisan/widget/R$drawable;->circular_progress_redo:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lsmartisan/widget/DownloadProgressView;->mRetryDrawable:Landroid/graphics/drawable/Drawable;

    .line 42
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lsmartisan/widget/R$drawable;->circular_progress_processing:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lsmartisan/widget/DownloadProgressView;->mProcessingDrawable:Landroid/graphics/drawable/Drawable;

    return-void

    .line 43
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "the ring width should match mBackRingWidth >= mForeRingWidth, mBackRingWidth:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lsmartisan/widget/DownloadProgressView;->mBackRingWidth:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " mForeRingWidth:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lsmartisan/widget/DownloadProgressView;->mForeRingWidth:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$002(Lsmartisan/widget/DownloadProgressView;I)I
    .locals 0

    .line 1
    iput p1, p0, Lsmartisan/widget/DownloadProgressView;->mCurrentStateDrawableAlpha:I

    return p1
.end method

.method private cancelAlphaAnim()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lsmartisan/widget/DownloadProgressView;->isAlphaAnimRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lsmartisan/widget/DownloadProgressView;->mAlphaAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/16 v0, 0xff

    .line 3
    iput v0, p0, Lsmartisan/widget/DownloadProgressView;->mCurrentStateDrawableAlpha:I

    return-void
.end method

.method private static dp2px(Landroid/content/Context;F)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/4 v0, 0x1

    .line 2
    invoke-static {v0, p1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    const/4 p1, 0x0

    cmpl-float p1, p0, p1

    const v0, 0x3f666666    # 0.9f

    if-ltz p1, :cond_0

    add-float/2addr p0, v0

    goto :goto_0

    :cond_0
    sub-float/2addr p0, v0

    :goto_0
    float-to-int p0, p0

    return p0
.end method

.method private getCurrentStateDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget v0, p0, Lsmartisan/widget/DownloadProgressView;->mCurrentState:I

    invoke-direct {p0, v0}, Lsmartisan/widget/DownloadProgressView;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private getLastStateDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget v0, p0, Lsmartisan/widget/DownloadProgressView;->mLastState:I

    invoke-direct {p0, v0}, Lsmartisan/widget/DownloadProgressView;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private getProgress()I
    .locals 1

    .line 1
    iget v0, p0, Lsmartisan/widget/DownloadProgressView;->mProgress:I

    return v0
.end method

.method private getStateDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p1, p0, Lsmartisan/widget/DownloadProgressView;->mProcessingDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 2
    :cond_1
    iget-object p1, p0, Lsmartisan/widget/DownloadProgressView;->mRetryDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 3
    :cond_2
    iget-object p1, p0, Lsmartisan/widget/DownloadProgressView;->mPauseDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 4
    :cond_3
    iget-object p1, p0, Lsmartisan/widget/DownloadProgressView;->mDownloadDrawable:Landroid/graphics/drawable/Drawable;

    :goto_0
    return-object p1
.end method

.method private isAlphaAnimRunning()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/DownloadProgressView;->mAlphaAnim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private startShadowAlphaAnimation()V
    .locals 4

    .line 1
    iget-wide v0, p0, Lsmartisan/widget/DownloadProgressView;->mAlphaAnimDuration:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lsmartisan/widget/DownloadProgressView;->mAlphaAnim:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_1

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 3
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lsmartisan/widget/DownloadProgressView;->mAlphaAnim:Landroid/animation/ValueAnimator;

    .line 4
    iget-object v0, p0, Lsmartisan/widget/DownloadProgressView;->mAlphaAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lsmartisan/widget/DownloadProgressView$1;

    invoke-direct {v1, p0}, Lsmartisan/widget/DownloadProgressView$1;-><init>(Lsmartisan/widget/DownloadProgressView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 5
    iget-object v0, p0, Lsmartisan/widget/DownloadProgressView;->mAlphaAnim:Landroid/animation/ValueAnimator;

    iget-wide v1, p0, Lsmartisan/widget/DownloadProgressView;->mAlphaAnimDuration:J

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 6
    :cond_1
    invoke-direct {p0}, Lsmartisan/widget/DownloadProgressView;->isAlphaAnimRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    invoke-direct {p0}, Lsmartisan/widget/DownloadProgressView;->cancelAlphaAnim()V

    .line 8
    :cond_2
    iget-object v0, p0, Lsmartisan/widget/DownloadProgressView;->mAlphaAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0xff
    .end array-data
.end method


# virtual methods
.method public getCurrentState()I
    .locals 1

    .line 1
    iget v0, p0, Lsmartisan/widget/DownloadProgressView;->mCurrentState:I

    return v0
.end method

.method public getLastState()I
    .locals 1

    .line 1
    iget v0, p0, Lsmartisan/widget/DownloadProgressView;->mLastState:I

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lsmartisan/widget/DownloadProgressView;->cancelAlphaAnim()V

    .line 2
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 1
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget v8, v0, Lsmartisan/widget/DownloadProgressView;->mForeRingWidth:I

    .line 3
    iget v9, v0, Lsmartisan/widget/DownloadProgressView;->mBackRingWidth:I

    .line 4
    iget-object v1, v0, Lsmartisan/widget/DownloadProgressView;->mPaint:Landroid/graphics/Paint;

    if-nez v1, :cond_0

    .line 5
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, v0, Lsmartisan/widget/DownloadProgressView;->mPaint:Landroid/graphics/Paint;

    .line 6
    :cond_0
    iget-object v1, v0, Lsmartisan/widget/DownloadProgressView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->reset()V

    .line 7
    iget-object v1, v0, Lsmartisan/widget/DownloadProgressView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 8
    iget-object v1, v0, Lsmartisan/widget/DownloadProgressView;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 9
    iget-object v1, v0, Lsmartisan/widget/DownloadProgressView;->mPaint:Landroid/graphics/Paint;

    const/4 v10, 0x0

    invoke-virtual {v1, v10}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 10
    iget v1, v0, Lsmartisan/widget/DownloadProgressView;->mWidth:I

    int-to-float v4, v1

    int-to-float v5, v1

    iget-object v6, v0, Lsmartisan/widget/DownloadProgressView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 11
    iget v1, v0, Lsmartisan/widget/DownloadProgressView;->mWidth:I

    div-int/lit8 v2, v1, 0x2

    .line 12
    div-int/lit8 v11, v1, 0x2

    .line 13
    iget-object v1, v0, Lsmartisan/widget/DownloadProgressView;->mPaint:Landroid/graphics/Paint;

    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 14
    invoke-direct/range {p0 .. p0}, Lsmartisan/widget/DownloadProgressView;->getLastStateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 15
    iget v3, v0, Lsmartisan/widget/DownloadProgressView;->mCurrentStateDrawableAlpha:I

    const/16 v4, 0xff

    if-eq v3, v4, :cond_1

    .line 16
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 17
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    .line 18
    iget v6, v0, Lsmartisan/widget/DownloadProgressView;->mWidth:I

    sub-int v12, v6, v3

    div-int/lit8 v12, v12, 0x2

    sub-int v13, v6, v5

    div-int/lit8 v13, v13, 0x2

    add-int/2addr v3, v6

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v6, v5

    div-int/lit8 v6, v6, 0x2

    invoke-virtual {v1, v12, v13, v3, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 19
    iget v3, v0, Lsmartisan/widget/DownloadProgressView;->mCurrentStateDrawableAlpha:I

    sub-int/2addr v4, v3

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 20
    invoke-virtual {v1, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 21
    :cond_1
    invoke-direct/range {p0 .. p0}, Lsmartisan/widget/DownloadProgressView;->getCurrentStateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 22
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 23
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 24
    iget v5, v0, Lsmartisan/widget/DownloadProgressView;->mWidth:I

    sub-int v6, v5, v3

    div-int/lit8 v6, v6, 0x2

    sub-int v12, v5, v4

    div-int/lit8 v12, v12, 0x2

    add-int/2addr v3, v5

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v5, v4

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {v1, v6, v12, v3, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 25
    iget v3, v0, Lsmartisan/widget/DownloadProgressView;->mCurrentStateDrawableAlpha:I

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 26
    iget v3, v0, Lsmartisan/widget/DownloadProgressView;->mCurrentState:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 27
    iget v3, v0, Lsmartisan/widget/DownloadProgressView;->mProcessingDegree:I

    add-int/lit8 v3, v3, 0x5

    iput v3, v0, Lsmartisan/widget/DownloadProgressView;->mProcessingDegree:I

    .line 28
    iget v3, v0, Lsmartisan/widget/DownloadProgressView;->mProcessingDegree:I

    const/16 v5, 0x168

    if-lt v3, v5, :cond_3

    sub-int/2addr v3, v5

    .line 29
    iput v3, v0, Lsmartisan/widget/DownloadProgressView;->mProcessingDegree:I

    goto :goto_0

    .line 30
    :cond_2
    iput v10, v0, Lsmartisan/widget/DownloadProgressView;->mProcessingDegree:I

    .line 31
    :cond_3
    :goto_0
    iget v3, v0, Lsmartisan/widget/DownloadProgressView;->mProcessingDegree:I

    int-to-float v3, v3

    int-to-float v5, v2

    int-to-float v6, v11

    invoke-virtual {v7, v3, v5, v6}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 32
    invoke-virtual {v1, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 33
    iget v1, v0, Lsmartisan/widget/DownloadProgressView;->mCurrentState:I

    if-ne v1, v4, :cond_4

    .line 34
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    return-void

    .line 35
    :cond_4
    iget-object v1, v0, Lsmartisan/widget/DownloadProgressView;->mPaint:Landroid/graphics/Paint;

    int-to-float v3, v9

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 36
    iget-object v1, v0, Lsmartisan/widget/DownloadProgressView;->mPaint:Landroid/graphics/Paint;

    const-string v4, "#e6e6e6"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v1, v2

    int-to-float v4, v11

    .line 37
    iget v5, v0, Lsmartisan/widget/DownloadProgressView;->mInnerCircleRadius:I

    int-to-float v5, v5

    iget-object v6, v0, Lsmartisan/widget/DownloadProgressView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v4, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 38
    iget-object v5, v0, Lsmartisan/widget/DownloadProgressView;->mPaint:Landroid/graphics/Paint;

    int-to-float v8, v8

    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 39
    iget-object v5, v0, Lsmartisan/widget/DownloadProgressView;->mPaint:Landroid/graphics/Paint;

    const-string v6, "#f2f2f2"

    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 40
    iget v5, v0, Lsmartisan/widget/DownloadProgressView;->mInnerCircleRadius:I

    int-to-float v5, v5

    iget-object v6, v0, Lsmartisan/widget/DownloadProgressView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v4, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 41
    iget-object v1, v0, Lsmartisan/widget/DownloadProgressView;->mPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 42
    iget-object v1, v0, Lsmartisan/widget/DownloadProgressView;->mPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 43
    iget-object v1, v0, Lsmartisan/widget/DownloadProgressView;->mArcRectF:Landroid/graphics/RectF;

    if-nez v1, :cond_5

    .line 44
    new-instance v1, Landroid/graphics/RectF;

    iget v4, v0, Lsmartisan/widget/DownloadProgressView;->mInnerCircleRadius:I

    sub-int v5, v2, v4

    int-to-float v5, v5

    sub-int v6, v11, v4

    int-to-float v6, v6

    add-int/2addr v2, v4

    int-to-float v2, v2

    add-int/2addr v4, v11

    int-to-float v4, v4

    invoke-direct {v1, v5, v6, v2, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v1, v0, Lsmartisan/widget/DownloadProgressView;->mArcRectF:Landroid/graphics/RectF;

    .line 45
    :cond_5
    iget-object v1, v0, Lsmartisan/widget/DownloadProgressView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 46
    iget v1, v0, Lsmartisan/widget/DownloadProgressView;->mCurrentState:I

    const/4 v9, 0x3

    if-ne v1, v9, :cond_6

    .line 47
    iget-object v1, v0, Lsmartisan/widget/DownloadProgressView;->mPaint:Landroid/graphics/Paint;

    iget v2, v0, Lsmartisan/widget/DownloadProgressView;->mFailedProgressColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    .line 48
    :cond_6
    iget-object v1, v0, Lsmartisan/widget/DownloadProgressView;->mBackProgressShader:Landroid/graphics/Shader;

    if-nez v1, :cond_7

    .line 49
    iget v1, v0, Lsmartisan/widget/DownloadProgressView;->mInnerCircleRadius:I

    sub-int v2, v11, v1

    iget v3, v0, Lsmartisan/widget/DownloadProgressView;->mBackRingWidth:I

    sub-int/2addr v2, v3

    add-int/2addr v1, v11

    add-int/2addr v1, v3

    .line 50
    new-instance v3, Landroid/graphics/LinearGradient;

    const/4 v13, 0x0

    int-to-float v14, v2

    const/4 v15, 0x0

    int-to-float v1, v1

    iget v2, v0, Lsmartisan/widget/DownloadProgressView;->mBackProgressStartColor:I

    iget v4, v0, Lsmartisan/widget/DownloadProgressView;->mBackProgressEndColor:I

    sget-object v19, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v12, v3

    move/from16 v16, v1

    move/from16 v17, v2

    move/from16 v18, v4

    invoke-direct/range {v12 .. v19}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v3, v0, Lsmartisan/widget/DownloadProgressView;->mBackProgressShader:Landroid/graphics/Shader;

    .line 51
    :cond_7
    iget-object v1, v0, Lsmartisan/widget/DownloadProgressView;->mPaint:Landroid/graphics/Paint;

    iget-object v2, v0, Lsmartisan/widget/DownloadProgressView;->mBackProgressShader:Landroid/graphics/Shader;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :goto_1
    const/high16 v10, -0x3d4c0000    # -90.0f

    const/high16 v1, 0x43b40000    # 360.0f

    .line 52
    iget v2, v0, Lsmartisan/widget/DownloadProgressView;->mProgress:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float v12, v2, v1

    .line 53
    iget-object v2, v0, Lsmartisan/widget/DownloadProgressView;->mArcRectF:Landroid/graphics/RectF;

    const/4 v5, 0x0

    iget-object v6, v0, Lsmartisan/widget/DownloadProgressView;->mPaint:Landroid/graphics/Paint;

    const/high16 v3, -0x3d4c0000    # -90.0f

    move-object/from16 v1, p1

    move v4, v12

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 54
    iget-object v1, v0, Lsmartisan/widget/DownloadProgressView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 55
    iget v1, v0, Lsmartisan/widget/DownloadProgressView;->mCurrentState:I

    if-ne v1, v9, :cond_8

    .line 56
    iget-object v1, v0, Lsmartisan/widget/DownloadProgressView;->mPaint:Landroid/graphics/Paint;

    iget v2, v0, Lsmartisan/widget/DownloadProgressView;->mFailedProgressColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_2

    .line 57
    :cond_8
    iget-object v1, v0, Lsmartisan/widget/DownloadProgressView;->mForeProgressShader:Landroid/graphics/Shader;

    if-nez v1, :cond_9

    .line 58
    iget v1, v0, Lsmartisan/widget/DownloadProgressView;->mInnerCircleRadius:I

    sub-int v2, v11, v1

    iget v3, v0, Lsmartisan/widget/DownloadProgressView;->mForeRingWidth:I

    sub-int/2addr v2, v3

    add-int/2addr v11, v1

    add-int/2addr v11, v3

    .line 59
    new-instance v1, Landroid/graphics/LinearGradient;

    const/4 v14, 0x0

    int-to-float v15, v2

    const/16 v16, 0x0

    int-to-float v2, v11

    iget v3, v0, Lsmartisan/widget/DownloadProgressView;->mForeProgressStartColor:I

    iget v4, v0, Lsmartisan/widget/DownloadProgressView;->mForeProgressEndColor:I

    sget-object v20, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v13, v1

    move/from16 v17, v2

    move/from16 v18, v3

    move/from16 v19, v4

    invoke-direct/range {v13 .. v20}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v1, v0, Lsmartisan/widget/DownloadProgressView;->mForeProgressShader:Landroid/graphics/Shader;

    .line 60
    :cond_9
    iget-object v1, v0, Lsmartisan/widget/DownloadProgressView;->mPaint:Landroid/graphics/Paint;

    iget-object v2, v0, Lsmartisan/widget/DownloadProgressView;->mForeProgressShader:Landroid/graphics/Shader;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 61
    :goto_2
    iget-object v2, v0, Lsmartisan/widget/DownloadProgressView;->mArcRectF:Landroid/graphics/RectF;

    const/4 v5, 0x0

    iget-object v6, v0, Lsmartisan/widget/DownloadProgressView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v3, v10

    move v4, v12

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    .line 3
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v0, -0x80000000

    if-eq p2, v0, :cond_1

    if-gtz p1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iput p1, p0, Lsmartisan/widget/DownloadProgressView;->mWidth:I

    goto :goto_1

    .line 5
    :cond_1
    :goto_0
    sget p1, Lsmartisan/widget/DownloadProgressView;->DEF_VIEW_WIDTH:I

    iput p1, p0, Lsmartisan/widget/DownloadProgressView;->mWidth:I

    .line 6
    :goto_1
    iget p1, p0, Lsmartisan/widget/DownloadProgressView;->mWidth:I

    iget p2, p0, Lsmartisan/widget/DownloadProgressView;->mInnerCircleRadius:I

    iget v0, p0, Lsmartisan/widget/DownloadProgressView;->mBackRingWidth:I

    add-int/2addr p2, v0

    mul-int/lit8 p2, p2, 0x2

    if-lt p1, p2, :cond_2

    .line 7
    invoke-virtual {p0, p1, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void

    .line 8
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "illegal custom values, the view width should match: width >= 2*(inner_circle_radius + back_ring_width) , current width:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lsmartisan/widget/DownloadProgressView;->mWidth:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " inner_circle_radius:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lsmartisan/widget/DownloadProgressView;->mInnerCircleRadius:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " back_ring_width:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lsmartisan/widget/DownloadProgressView;->mBackRingWidth:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 1
    check-cast p1, Lsmartisan/widget/DownloadProgressView$SavedState;

    .line 2
    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 3
    iget v0, p1, Lsmartisan/widget/DownloadProgressView$SavedState;->currentState:I

    invoke-virtual {p0, v0}, Lsmartisan/widget/DownloadProgressView;->setCurrentState(I)V

    .line 4
    iget p1, p1, Lsmartisan/widget/DownloadProgressView$SavedState;->progress:I

    invoke-virtual {p0, p1}, Lsmartisan/widget/DownloadProgressView;->setProgress(I)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 2
    new-instance v1, Lsmartisan/widget/DownloadProgressView$SavedState;

    invoke-direct {v1, v0}, Lsmartisan/widget/DownloadProgressView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 3
    iget v0, p0, Lsmartisan/widget/DownloadProgressView;->mProgress:I

    iput v0, v1, Lsmartisan/widget/DownloadProgressView$SavedState;->progress:I

    .line 4
    iget v0, p0, Lsmartisan/widget/DownloadProgressView;->mCurrentState:I

    iput v0, v1, Lsmartisan/widget/DownloadProgressView$SavedState;->currentState:I

    return-object v1
.end method

.method public setAlphaAnimationDuration(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lsmartisan/widget/DownloadProgressView;->mAlphaAnimDuration:J

    return-void
.end method

.method public setCurrentState(I)V
    .locals 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid state value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2
    :cond_1
    :goto_0
    iget v0, p0, Lsmartisan/widget/DownloadProgressView;->mCurrentState:I

    if-ne v0, p1, :cond_2

    return-void

    .line 3
    :cond_2
    iput v0, p0, Lsmartisan/widget/DownloadProgressView;->mLastState:I

    .line 4
    iput p1, p0, Lsmartisan/widget/DownloadProgressView;->mCurrentState:I

    .line 5
    invoke-direct {p0}, Lsmartisan/widget/DownloadProgressView;->startShadowAlphaAnimation()V

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setProgress(I)V
    .locals 1

    .line 1
    iget v0, p0, Lsmartisan/widget/DownloadProgressView;->mProgress:I

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iput p1, p0, Lsmartisan/widget/DownloadProgressView;->mProgress:I

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
