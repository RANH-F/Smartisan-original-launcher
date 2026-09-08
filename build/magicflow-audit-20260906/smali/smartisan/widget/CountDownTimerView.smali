.class public Lsmartisan/widget/CountDownTimerView;
.super Lsmartisan/widget/TickMarkView;
.source "CountDownTimerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsmartisan/widget/CountDownTimerView$CountDownStatusListener;,
        Lsmartisan/widget/CountDownTimerView$CountingHandler;
    }
.end annotation


# static fields
.field private static final MSG_COUNT_DOWN:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private isCountingDown:Z

.field private mBridgeDrawableHeight:I

.field private mCountDownFrom:I

.field private mCountDownLabelPaint:Landroid/graphics/Paint;

.field private mCountDownSeconds:[I

.field private mCountDownStatusListener:Lsmartisan/widget/CountDownTimerView$CountDownStatusListener;

.field private mCountLeftSeconds:I

.field private final mHandler:Landroid/os/Handler;

.field private mMovedDistancePerSecond:F

.field private mStartEndDrawableHeight:I

.field private mStartEndDrawableWidth:I

.field private mTickMarkThumb:Landroid/graphics/drawable/Drawable;

.field private mTimerProgressBridge:Landroid/graphics/drawable/Drawable;

.field private mTimerProgressFullEnd:Landroid/graphics/drawable/Drawable;

.field private mTimerProgressStart:Landroid/graphics/drawable/Drawable;

.field private mTimerThumb:Landroid/graphics/drawable/Drawable;

.field private mTimerTrackEnd:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lsmartisan/widget/CountDownTimerView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lsmartisan/widget/CountDownTimerView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lsmartisan/widget/CountDownTimerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lsmartisan/widget/CountDownTimerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Lsmartisan/widget/CountDownTimerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Lsmartisan/widget/TickMarkView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lsmartisan/widget/CountDownTimerView;->mCountDownFrom:I

    .line 6
    new-instance v0, Lsmartisan/widget/CountDownTimerView$CountingHandler;

    invoke-direct {v0, p0}, Lsmartisan/widget/CountDownTimerView$CountingHandler;-><init>(Lsmartisan/widget/CountDownTimerView;)V

    iput-object v0, p0, Lsmartisan/widget/CountDownTimerView;->mHandler:Landroid/os/Handler;

    .line 7
    sget-object v0, Lsmartisan/widget/R$styleable;->CountDownTimerView:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 9
    sget p3, Lsmartisan/widget/R$styleable;->CountDownTimerView_timer_progress_start_src:I

    sget p4, Lsmartisan/widget/R$drawable;->timer_progress_start_2:I

    invoke-virtual {p1, p3, p4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lsmartisan/widget/CountDownTimerView;->mTimerProgressStart:Landroid/graphics/drawable/Drawable;

    .line 10
    sget p3, Lsmartisan/widget/R$styleable;->CountDownTimerView_timer_progress_bridge_src:I

    sget p4, Lsmartisan/widget/R$drawable;->timer_progress_bridge_2:I

    invoke-virtual {p1, p3, p4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lsmartisan/widget/CountDownTimerView;->mTimerProgressBridge:Landroid/graphics/drawable/Drawable;

    .line 11
    sget p3, Lsmartisan/widget/R$styleable;->CountDownTimerView_timer_progress_full_end_src:I

    sget p4, Lsmartisan/widget/R$drawable;->timer_progress_end_2:I

    invoke-virtual {p1, p3, p4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lsmartisan/widget/CountDownTimerView;->mTimerProgressFullEnd:Landroid/graphics/drawable/Drawable;

    .line 12
    sget p3, Lsmartisan/widget/R$styleable;->CountDownTimerView_timer_track_end_src:I

    sget p4, Lsmartisan/widget/R$drawable;->timer_track_end:I

    invoke-virtual {p1, p3, p4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lsmartisan/widget/CountDownTimerView;->mTimerTrackEnd:Landroid/graphics/drawable/Drawable;

    .line 13
    sget p3, Lsmartisan/widget/R$styleable;->CountDownTimerView_timer_thumb_src:I

    sget p4, Lsmartisan/widget/R$drawable;->timer_progress_control:I

    invoke-virtual {p1, p3, p4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lsmartisan/widget/CountDownTimerView;->mTimerThumb:Landroid/graphics/drawable/Drawable;

    .line 14
    invoke-virtual {p0}, Lsmartisan/widget/TickMarkView;->getThumbDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lsmartisan/widget/CountDownTimerView;->mTickMarkThumb:Landroid/graphics/drawable/Drawable;

    .line 15
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 16
    iget-object p1, p0, Lsmartisan/widget/CountDownTimerView;->mTimerProgressStart:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    iput p1, p0, Lsmartisan/widget/CountDownTimerView;->mStartEndDrawableWidth:I

    .line 17
    iget-object p1, p0, Lsmartisan/widget/CountDownTimerView;->mTimerProgressStart:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    iput p1, p0, Lsmartisan/widget/CountDownTimerView;->mStartEndDrawableHeight:I

    .line 18
    iget-object p1, p0, Lsmartisan/widget/CountDownTimerView;->mTimerProgressBridge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    iput p1, p0, Lsmartisan/widget/CountDownTimerView;->mBridgeDrawableHeight:I

    .line 19
    new-instance p1, Lsmartisan/widget/CountDownTimerView$2;

    invoke-direct {p1, p0}, Lsmartisan/widget/CountDownTimerView$2;-><init>(Lsmartisan/widget/CountDownTimerView;)V

    invoke-virtual {p0, p1}, Lsmartisan/widget/TickMarkView;->setTrackTouchListener(Lsmartisan/widget/TickMarkView$TrackTouchListener;)V

    .line 20
    invoke-direct {p0}, Lsmartisan/widget/CountDownTimerView;->initCountDownPaint()V

    const/4 p1, 0x0

    .line 21
    invoke-virtual {p0, p1}, Lsmartisan/widget/TickMarkView;->setMarker(I)V

    return-void
.end method

.method static synthetic access$000(Lsmartisan/widget/CountDownTimerView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lsmartisan/widget/CountDownTimerView;->refresh()V

    return-void
.end method

.method static synthetic access$100(Lsmartisan/widget/CountDownTimerView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lsmartisan/widget/CountDownTimerView;->isCountingDown:Z

    return p0
.end method

.method static synthetic access$200(Lsmartisan/widget/CountDownTimerView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lsmartisan/widget/CountDownTimerView;->cancelCountDown()V

    return-void
.end method

.method static synthetic access$300(Lsmartisan/widget/CountDownTimerView;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lsmartisan/widget/CountDownTimerView;->startCountDown(I)V

    return-void
.end method

.method private cancelCountDown()V
    .locals 2

    .line 1
    iget-object v0, p0, Lsmartisan/widget/CountDownTimerView;->mTickMarkThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lsmartisan/widget/TickMarkView;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lsmartisan/widget/CountDownTimerView;->isCountingDown:Z

    .line 3
    iget-object v1, p0, Lsmartisan/widget/CountDownTimerView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 4
    iget-object v0, p0, Lsmartisan/widget/CountDownTimerView;->mCountDownStatusListener:Lsmartisan/widget/CountDownTimerView$CountDownStatusListener;

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0}, Lsmartisan/widget/CountDownTimerView$CountDownStatusListener;->onCancel()V

    :cond_0
    return-void
.end method

.method private drawCountDownLabel(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    iget v0, p0, Lsmartisan/widget/CountDownTimerView;->mCountLeftSeconds:I

    invoke-direct {p0, v0}, Lsmartisan/widget/CountDownTimerView;->formatTime(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lsmartisan/widget/TickMarkView;->getThumbX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lsmartisan/widget/TickMarkView;->getUnfocusedNormalLabelY()F

    move-result v2

    iget-object v3, p0, Lsmartisan/widget/CountDownTimerView;->mCountDownLabelPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawCountDownProgress(Landroid/graphics/Canvas;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lsmartisan/widget/CountDownTimerView;->mTimerProgressStart:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lsmartisan/widget/TickMarkView;->getThumbMinX()I

    move-result v1

    iget v2, p0, Lsmartisan/widget/CountDownTimerView;->mStartEndDrawableWidth:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    .line 2
    invoke-virtual {p0}, Lsmartisan/widget/TickMarkView;->getThumbY()I

    move-result v2

    iget v3, p0, Lsmartisan/widget/CountDownTimerView;->mStartEndDrawableHeight:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    .line 3
    invoke-virtual {p0}, Lsmartisan/widget/TickMarkView;->getThumbMinX()I

    move-result v3

    iget v4, p0, Lsmartisan/widget/CountDownTimerView;->mStartEndDrawableWidth:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    .line 4
    invoke-virtual {p0}, Lsmartisan/widget/TickMarkView;->getThumbY()I

    move-result v4

    iget v5, p0, Lsmartisan/widget/CountDownTimerView;->mStartEndDrawableHeight:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    .line 5
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 6
    iget-object v0, p0, Lsmartisan/widget/CountDownTimerView;->mTimerProgressBridge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lsmartisan/widget/TickMarkView;->getThumbMinX()I

    move-result v1

    iget v2, p0, Lsmartisan/widget/CountDownTimerView;->mStartEndDrawableWidth:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    .line 7
    invoke-virtual {p0}, Lsmartisan/widget/TickMarkView;->getThumbY()I

    move-result v2

    iget v3, p0, Lsmartisan/widget/CountDownTimerView;->mBridgeDrawableHeight:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    .line 8
    invoke-virtual {p0}, Lsmartisan/widget/TickMarkView;->getThumbX()I

    move-result v3

    .line 9
    invoke-virtual {p0}, Lsmartisan/widget/TickMarkView;->getThumbY()I

    move-result v4

    iget v5, p0, Lsmartisan/widget/CountDownTimerView;->mBridgeDrawableHeight:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    .line 10
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 11
    iget-object v0, p0, Lsmartisan/widget/TickMarkView;->mBridgeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lsmartisan/widget/TickMarkView;->getThumbX()I

    move-result v1

    .line 12
    invoke-virtual {p0}, Lsmartisan/widget/TickMarkView;->getThumbY()I

    move-result v2

    iget v3, p0, Lsmartisan/widget/CountDownTimerView;->mBridgeDrawableHeight:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    .line 13
    invoke-virtual {p0}, Lsmartisan/widget/TickMarkView;->getThumbMaxX()I

    move-result v3

    iget v4, p0, Lsmartisan/widget/CountDownTimerView;->mStartEndDrawableWidth:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    .line 14
    invoke-virtual {p0}, Lsmartisan/widget/TickMarkView;->getThumbY()I

    move-result v4

    iget v5, p0, Lsmartisan/widget/CountDownTimerView;->mBridgeDrawableHeight:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    .line 15
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 16
    invoke-virtual {p0}, Lsmartisan/widget/TickMarkView;->getThumbX()I

    move-result v0

    invoke-virtual {p0}, Lsmartisan/widget/TickMarkView;->getThumbMaxX()I

    move-result v1

    iget v2, p0, Lsmartisan/widget/CountDownTimerView;->mStartEndDrawableWidth:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_0

    .line 17
    iget-object v0, p0, Lsmartisan/widget/CountDownTimerView;->mTimerProgressFullEnd:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 18
    :cond_0
    iget-object v0, p0, Lsmartisan/widget/CountDownTimerView;->mTimerTrackEnd:Landroid/graphics/drawable/Drawable;

    .line 19
    :goto_0
    invoke-virtual {p0}, Lsmartisan/widget/TickMarkView;->getThumbMaxX()I

    move-result v1

    iget v2, p0, Lsmartisan/widget/CountDownTimerView;->mStartEndDrawableWidth:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    .line 20
    invoke-virtual {p0}, Lsmartisan/widget/TickMarkView;->getThumbY()I

    move-result v2

    iget v3, p0, Lsmartisan/widget/CountDownTimerView;->mStartEndDrawableHeight:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    .line 21
    invoke-virtual {p0}, Lsmartisan/widget/TickMarkView;->getThumbMaxX()I

    move-result v3

    iget v4, p0, Lsmartisan/widget/CountDownTimerView;->mStartEndDrawableWidth:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    .line 22
    invoke-virtual {p0}, Lsmartisan/widget/TickMarkView;->getThumbY()I

    move-result v4

    iget v5, p0, Lsmartisan/widget/CountDownTimerView;->mStartEndDrawableHeight:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    .line 23
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 24
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 25
    iget-object v0, p0, Lsmartisan/widget/CountDownTimerView;->mTimerProgressStart:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 26
    iget-object v0, p0, Lsmartisan/widget/CountDownTimerView;->mTimerProgressBridge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 27
    iget-object v0, p0, Lsmartisan/widget/TickMarkView;->mBridgeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method private finishCountDown()V
    .locals 2

    .line 1
    iget-object v0, p0, Lsmartisan/widget/CountDownTimerView;->mTickMarkThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lsmartisan/widget/TickMarkView;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lsmartisan/widget/CountDownTimerView;->isCountingDown:Z

    .line 3
    iget-object v1, p0, Lsmartisan/widget/CountDownTimerView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 4
    iget-object v0, p0, Lsmartisan/widget/CountDownTimerView;->mCountDownStatusListener:Lsmartisan/widget/CountDownTimerView$CountDownStatusListener;

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0}, Lsmartisan/widget/CountDownTimerView$CountDownStatusListener;->onFinish()V

    :cond_0
    return-void
.end method

.method private formatTime(I)Ljava/lang/String;
    .locals 4

    .line 1
    div-int/lit8 v0, p1, 0x3c

    .line 2
    rem-int/lit8 p1, p1, 0x3c

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 3
    div-int/lit8 v2, v0, 0x3c

    .line 4
    rem-int/lit8 v0, v0, 0x3c

    goto :goto_0

    :cond_0
    move v0, v1

    move v2, v0

    :goto_0
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    .line 5
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v1

    const/4 v1, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v1

    const/4 v0, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v0

    const-string p1, "%d:%02d:%02d"

    invoke-static {p1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getDistancePerSecondMove()V
    .locals 4

    .line 1
    iget-object v0, p0, Lsmartisan/widget/CountDownTimerView;->mCountDownSeconds:[I

    if-eqz v0, :cond_0

    iget v0, p0, Lsmartisan/widget/CountDownTimerView;->mCountDownFrom:I

    if-lez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lsmartisan/widget/TickMarkView;->getThumbMaxX()I

    move-result v1

    invoke-virtual {p0}, Lsmartisan/widget/TickMarkView;->getThumbMinX()I

    move-result v2

    sub-int/2addr v1, v2

    mul-int/2addr v0, v1

    invoke-virtual {p0}, Lsmartisan/widget/TickMarkView;->getMarkerSize()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lsmartisan/widget/CountDownTimerView;->mCountDownSeconds:[I

    iget v3, p0, Lsmartisan/widget/CountDownTimerView;->mCountDownFrom:I

    aget v2, v2, v3

    mul-int/2addr v1, v2

    div-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lsmartisan/widget/CountDownTimerView;->mMovedDistancePerSecond:F

    :cond_0
    return-void
.end method

.method private getThumbCountingX()I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lsmartisan/widget/TickMarkView;->getThumbMinX()I

    move-result v0

    iget v1, p0, Lsmartisan/widget/CountDownTimerView;->mCountLeftSeconds:I

    int-to-float v1, v1

    iget v2, p0, Lsmartisan/widget/CountDownTimerView;->mMovedDistancePerSecond:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method private initCountDownPaint()V
    .locals 3

    .line 1
    iget-object v0, p0, Lsmartisan/widget/CountDownTimerView;->mCountDownLabelPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lsmartisan/widget/CountDownTimerView;->mCountDownLabelPaint:Landroid/graphics/Paint;

    .line 3
    :cond_0
    iget-object v0, p0, Lsmartisan/widget/CountDownTimerView;->mCountDownLabelPaint:Landroid/graphics/Paint;

    sget v1, Lsmartisan/widget/TickMarkView;->LABEL_COLOR_SELECTED:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 4
    iget-object v0, p0, Lsmartisan/widget/CountDownTimerView;->mCountDownLabelPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41f00000    # 30.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 5
    iget-object v0, p0, Lsmartisan/widget/CountDownTimerView;->mCountDownLabelPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-static {v1}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 6
    iget-object v0, p0, Lsmartisan/widget/CountDownTimerView;->mCountDownLabelPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 7
    iget-object v0, p0, Lsmartisan/widget/CountDownTimerView;->mCountDownLabelPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 8
    iget-object v0, p0, Lsmartisan/widget/CountDownTimerView;->mCountDownLabelPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    return-void
.end method

.method private refresh()V
    .locals 5

    .line 1
    iget v0, p0, Lsmartisan/widget/CountDownTimerView;->mCountLeftSeconds:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lsmartisan/widget/CountDownTimerView;->mCountLeftSeconds:I

    .line 2
    invoke-virtual {p0}, Lsmartisan/widget/TickMarkView;->getThumbMinX()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lsmartisan/widget/CountDownTimerView;->mMovedDistancePerSecond:F

    iget v3, p0, Lsmartisan/widget/CountDownTimerView;->mCountLeftSeconds:I

    int-to-float v4, v3

    mul-float/2addr v2, v4

    add-float/2addr v0, v2

    float-to-int v0, v0

    const/4 v2, 0x0

    if-gtz v3, :cond_0

    move v1, v2

    .line 3
    :cond_0
    invoke-virtual {p0}, Lsmartisan/widget/TickMarkView;->getThumbMinX()I

    move-result v3

    if-gt v0, v3, :cond_1

    .line 4
    invoke-virtual {p0}, Lsmartisan/widget/TickMarkView;->getThumbMinX()I

    move-result v0

    .line 5
    :cond_1
    invoke-virtual {p0}, Lsmartisan/widget/TickMarkView;->getThumbY()I

    move-result v3

    invoke-virtual {p0, v0, v3}, Lsmartisan/widget/TickMarkView;->updateThumbCenter(II)V

    if-eqz v1, :cond_2

    .line 6
    invoke-direct {p0}, Lsmartisan/widget/CountDownTimerView;->scheduleCountingPerSecond()V

    goto :goto_0

    .line 7
    :cond_2
    invoke-direct {p0}, Lsmartisan/widget/CountDownTimerView;->finishCountDown()V

    .line 8
    invoke-virtual {p0, v2}, Lsmartisan/widget/TickMarkView;->setMarker(I)V

    :goto_0
    return-void
.end method

.method private scheduleCountingPerSecond()V
    .locals 4

    .line 1
    iget-object v0, p0, Lsmartisan/widget/CountDownTimerView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2
    iget-object v0, p0, Lsmartisan/widget/CountDownTimerView;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private startCountDown(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/CountDownTimerView;->mCountDownSeconds:[I

    aget v0, v0, p1

    invoke-virtual {p0, v0, p1}, Lsmartisan/widget/CountDownTimerView;->startCountDown(II)V

    .line 2
    iget-object v0, p0, Lsmartisan/widget/CountDownTimerView;->mCountDownStatusListener:Lsmartisan/widget/CountDownTimerView$CountDownStatusListener;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1}, Lsmartisan/widget/CountDownTimerView$CountDownStatusListener;->onStart(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isPressed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lsmartisan/widget/CountDownTimerView;->isCountingDown:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-direct {p0, p1}, Lsmartisan/widget/CountDownTimerView;->drawCountDownProgress(Landroid/graphics/Canvas;)V

    .line 3
    invoke-virtual {p0, p1}, Lsmartisan/widget/TickMarkView;->drawThumb(Landroid/graphics/Canvas;)V

    .line 4
    invoke-direct {p0, p1}, Lsmartisan/widget/CountDownTimerView;->drawCountDownLabel(Landroid/graphics/Canvas;)V

    .line 5
    invoke-virtual {p0, p1}, Lsmartisan/widget/TickMarkView;->drawDebugLineIfDebugMode(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 6
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lsmartisan/widget/TickMarkView;->onDraw(Landroid/graphics/Canvas;)V

    :goto_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lsmartisan/widget/TickMarkView;->onMeasure(II)V

    return-void
.end method

.method public setCountDownListener(Lsmartisan/widget/CountDownTimerView$CountDownStatusListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/CountDownTimerView;->mCountDownStatusListener:Lsmartisan/widget/CountDownTimerView$CountDownStatusListener;

    return-void
.end method

.method public setCountDownSeconds([I)V
    .locals 2

    .line 1
    array-length v0, p1

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 2
    array-length v0, p1

    invoke-virtual {p0, v0}, Lsmartisan/widget/TickMarkView;->setMarkerSize(I)V

    .line 3
    iput-object p1, p0, Lsmartisan/widget/CountDownTimerView;->mCountDownSeconds:[I

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "secondsArray lenth should >1"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public startCountDown(II)V
    .locals 3

    .line 4
    iget-object v0, p0, Lsmartisan/widget/CountDownTimerView;->mCountDownSeconds:[I

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    if-lez p2, :cond_1

    .line 5
    invoke-virtual {p0}, Lsmartisan/widget/TickMarkView;->getMarkerSize()I

    move-result v1

    sub-int/2addr v1, v0

    if-gt p2, v1, :cond_1

    if-ltz p1, :cond_0

    .line 6
    iget-object v1, p0, Lsmartisan/widget/CountDownTimerView;->mCountDownSeconds:[I

    aget v1, v1, p2

    if-gt p1, v1, :cond_0

    .line 7
    iput-boolean v0, p0, Lsmartisan/widget/CountDownTimerView;->isCountingDown:Z

    .line 8
    iput p2, p0, Lsmartisan/widget/CountDownTimerView;->mCountDownFrom:I

    .line 9
    iput p1, p0, Lsmartisan/widget/CountDownTimerView;->mCountLeftSeconds:I

    .line 10
    iget-object p1, p0, Lsmartisan/widget/CountDownTimerView;->mTimerThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lsmartisan/widget/TickMarkView;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 11
    invoke-direct {p0}, Lsmartisan/widget/CountDownTimerView;->getDistancePerSecondMove()V

    .line 12
    invoke-direct {p0}, Lsmartisan/widget/CountDownTimerView;->getThumbCountingX()I

    move-result p1

    invoke-virtual {p0}, Lsmartisan/widget/TickMarkView;->getThumbY()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lsmartisan/widget/TickMarkView;->updateThumbCenter(II)V

    .line 13
    invoke-direct {p0}, Lsmartisan/widget/CountDownTimerView;->scheduleCountingPerSecond()V

    return-void

    .line 14
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "illegal args, leftSecond should between 0 and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsmartisan/widget/CountDownTimerView;->mCountDownSeconds:[I

    aget p2, v1, p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 15
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal fromIndex="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " the index should between 0 and "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lsmartisan/widget/TickMarkView;->getMarkerSize()I

    move-result p2

    sub-int/2addr p2, v0

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 16
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "NullPointerException, you have not set mCountDownSeconds through calling setCountDownSeconds()"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method updateThumbPosInnerIfSizeChanged()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lsmartisan/widget/CountDownTimerView;->getDistancePerSecondMove()V

    .line 2
    invoke-direct {p0}, Lsmartisan/widget/CountDownTimerView;->getThumbCountingX()I

    move-result v0

    invoke-virtual {p0}, Lsmartisan/widget/TickMarkView;->getThumbY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lsmartisan/widget/TickMarkView;->updateThumbCenter(II)V

    return-void
.end method
