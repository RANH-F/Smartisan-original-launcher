.class public Lsmartisan/widget/TickMarkView;
.super Landroid/view/View;
.source "TickMarkView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsmartisan/widget/TickMarkView$SavedState;,
        Lsmartisan/widget/TickMarkView$Marker;,
        Lsmartisan/widget/TickMarkView$TrackTouchListener;,
        Lsmartisan/widget/TickMarkView$OnMarkerChangeListener;
    }
.end annotation


# static fields
.field static final DBG:Z = false

.field private static DEFAULT_HEIGHT:I = 0x0

.field private static final DEFAULT_WIDTH:I = 0x438

.field private static final DEF_MARKER_SIZE:I = 0x5

.field private static LABEL_BOTTOM_MARGIN:I = 0x0

.field static final LABEL_COLOR_SELECTED:I

.field static final LABEL_COLOR_UNSELECTED:I

.field private static LABEL_INNER_TRANSABLE_Y:I = 0x0

.field static final LABEL_TEXT_SIZE:I = 0x1e

.field private static LABEL_TOP_MARGIN:I

.field private static LABEL_TRANS_Y_MAX:I

.field private static LABEL_TRANS_Y_MIN:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field mBridgeDrawable:Landroid/graphics/drawable/Drawable;

.field private mCurrentMarker:I

.field private mEndMarkerDrawable:Landroid/graphics/drawable/Drawable;

.field private mFocusedMarker:I

.field private mHeight:I

.field private mIsDragging:Z

.field private mLabelFontMetrics:Landroid/graphics/Paint$FontMetrics;

.field private mLabelPaint:Landroid/graphics/Paint;

.field private mMarkerChangeListener:Lsmartisan/widget/TickMarkView$OnMarkerChangeListener;

.field private mMarkerDistance:I

.field private mMarkerDrawableHeight:I

.field private mMarkerDrawableWidth:I

.field private mMarkerLabels:[Ljava/lang/String;

.field private mMarkerSize:I

.field private mMarkers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lsmartisan/widget/TickMarkView$Marker;",
            ">;"
        }
    .end annotation
.end field

.field private mMidMarkerDrawable:Landroid/graphics/drawable/Drawable;

.field private mPaddingLeft:I

.field private mPaddingRight:I

.field private mPaddingTop:I

.field private mScaledTouchSlop:I

.field private mStartMarkerDrawable:Landroid/graphics/drawable/Drawable;

.field private mTestPaint:Landroid/graphics/Paint;

.field private mThumb:Landroid/graphics/drawable/Drawable;

.field private mThumbCenterX:I

.field private mThumbCenterXMax:I

.field private mThumbCenterXMin:I

.field private mThumbCenterY:I

.field private mThumbDrawableHeight:I

.field private mThumbDrawableWidth:I

.field private mTouchDownX:F

.field private mTrackListener:Lsmartisan/widget/TickMarkView$TrackTouchListener;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lsmartisan/widget/TickMarkView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lsmartisan/widget/TickMarkView;->TAG:Ljava/lang/String;

    const-string v0, "#9a000000"

    .line 2
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lsmartisan/widget/TickMarkView;->LABEL_COLOR_SELECTED:I

    const-string v0, "#66000000"

    .line 3
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lsmartisan/widget/TickMarkView;->LABEL_COLOR_UNSELECTED:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lsmartisan/widget/TickMarkView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lsmartisan/widget/TickMarkView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Lsmartisan/widget/TickMarkView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 5
    invoke-direct {p0}, Lsmartisan/widget/TickMarkView;->initStaticConstants()V

    .line 6
    sget-object v0, Lsmartisan/widget/R$styleable;->TickMarkView:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 7
    :try_start_0
    sget p3, Lsmartisan/widget/R$styleable;->TickMarkView_marker_size:I

    const/4 p4, 0x5

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Lsmartisan/widget/TickMarkView;->mMarkerSize:I

    .line 8
    iget p3, p0, Lsmartisan/widget/TickMarkView;->mMarkerSize:I

    invoke-direct {p0, p3}, Lsmartisan/widget/TickMarkView;->verifyMarkerSize(I)Z

    .line 9
    invoke-direct {p0}, Lsmartisan/widget/TickMarkView;->initMarkers()V

    .line 10
    sget p3, Lsmartisan/widget/R$styleable;->TickMarkView_marker:I

    const/4 p4, 0x0

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Lsmartisan/widget/TickMarkView;->mCurrentMarker:I

    .line 11
    sget p3, Lsmartisan/widget/R$styleable;->TickMarkView_labels:I

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    if-lez p3, :cond_1

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    invoke-virtual {p4, p3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p3

    .line 13
    array-length p4, p3

    iget v0, p0, Lsmartisan/widget/TickMarkView;->mMarkerSize:I

    if-ne p4, v0, :cond_0

    .line 14
    invoke-virtual {p0, p3}, Lsmartisan/widget/TickMarkView;->setMarkerLabels([Ljava/lang/String;)V

    goto :goto_0

    .line 15
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p3, "illegal argument, the labels array length should be equals with markerSize."

    invoke-direct {p1, p3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 16
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lsmartisan/widget/R$styleable;->TickMarkView_start_marker_src:I

    sget v0, Lsmartisan/widget/R$drawable;->tick_mark_track_start:I

    .line 17
    invoke-virtual {p2, p4, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p4

    .line 18
    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lsmartisan/widget/TickMarkView;->mStartMarkerDrawable:Landroid/graphics/drawable/Drawable;

    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lsmartisan/widget/R$styleable;->TickMarkView_end_marker_src:I

    sget v0, Lsmartisan/widget/R$drawable;->tick_mark_track_end:I

    .line 20
    invoke-virtual {p2, p4, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p4

    .line 21
    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lsmartisan/widget/TickMarkView;->mEndMarkerDrawable:Landroid/graphics/drawable/Drawable;

    .line 22
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lsmartisan/widget/R$styleable;->TickMarkView_mid_marker_src:I

    sget v0, Lsmartisan/widget/R$drawable;->tick_mark_track_mid:I

    .line 23
    invoke-virtual {p2, p4, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p4

    .line 24
    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lsmartisan/widget/TickMarkView;->mMidMarkerDrawable:Landroid/graphics/drawable/Drawable;

    .line 25
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lsmartisan/widget/R$styleable;->TickMarkView_bridge_src:I

    sget v0, Lsmartisan/widget/R$drawable;->tick_mark_track_bridge:I

    .line 26
    invoke-virtual {p2, p4, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p4

    .line 27
    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lsmartisan/widget/TickMarkView;->mBridgeDrawable:Landroid/graphics/drawable/Drawable;

    .line 28
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lsmartisan/widget/R$styleable;->TickMarkView_thumb:I

    sget v0, Lsmartisan/widget/R$drawable;->tick_mark_progress_control_2:I

    .line 29
    invoke-virtual {p2, p4, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p4

    .line 30
    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lsmartisan/widget/TickMarkView;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 31
    invoke-direct {p0}, Lsmartisan/widget/TickMarkView;->initLabelPaintParams()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 33
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lsmartisan/widget/TickMarkView;->mScaledTouchSlop:I

    .line 34
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result p1

    iput p1, p0, Lsmartisan/widget/TickMarkView;->mPaddingLeft:I

    .line 35
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result p1

    iput p1, p0, Lsmartisan/widget/TickMarkView;->mPaddingRight:I

    .line 36
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p1

    iput p1, p0, Lsmartisan/widget/TickMarkView;->mPaddingTop:I

    .line 37
    iget-object p1, p0, Lsmartisan/widget/TickMarkView;->mStartMarkerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    iput p1, p0, Lsmartisan/widget/TickMarkView;->mMarkerDrawableWidth:I

    .line 38
    iget-object p1, p0, Lsmartisan/widget/TickMarkView;->mStartMarkerDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    iput p1, p0, Lsmartisan/widget/TickMarkView;->mMarkerDrawableHeight:I

    .line 39
    invoke-direct {p0}, Lsmartisan/widget/TickMarkView;->getThumbSize()V

    return-void

    :catchall_0
    move-exception p1

    .line 40
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 41
    throw p1
.end method

.method static synthetic access$000()I
    .locals 1

    .line 1
    sget v0, Lsmartisan/widget/TickMarkView;->LABEL_TRANS_Y_MAX:I

    return v0
.end method

.method static synthetic access$100()I
    .locals 1

    .line 1
    sget v0, Lsmartisan/widget/TickMarkView;->LABEL_TRANS_Y_MIN:I

    return v0
.end method

.method private animateThumbToMarker(I)V
    .locals 0

    return-void
.end method

.method private attemptClaimDrag()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2
    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    return-void
.end method

.method static dp2px(Landroid/content/Context;I)I
    .locals 1

    int-to-float p1, p1

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/4 v0, 0x1

    .line 2
    invoke-static {v0, p1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method private drawLabels(Landroid/graphics/Canvas;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2
    iget-object v0, p0, Lsmartisan/widget/TickMarkView;->mLabelFontMetrics:Landroid/graphics/Paint$FontMetrics;

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lsmartisan/widget/TickMarkView;->mPaddingTop:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    sget v1, Lsmartisan/widget/TickMarkView;->LABEL_TOP_MARGIN:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    const/4 v1, 0x0

    .line 3
    :goto_0
    iget v2, p0, Lsmartisan/widget/TickMarkView;->mMarkerSize:I

    if-ge v1, v2, :cond_2

    .line 4
    iget-object v2, p0, Lsmartisan/widget/TickMarkView;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsmartisan/widget/TickMarkView$Marker;

    .line 5
    iget-object v3, p0, Lsmartisan/widget/TickMarkView;->mLabelPaint:Landroid/graphics/Paint;

    iget v4, v2, Lsmartisan/widget/TickMarkView$Marker;->labelColor:I

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 6
    iget-object v3, p0, Lsmartisan/widget/TickMarkView;->mLabelPaint:Landroid/graphics/Paint;

    iget-boolean v4, v2, Lsmartisan/widget/TickMarkView$Marker;->focused:Z

    invoke-static {v4}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 7
    iget-object v3, p0, Lsmartisan/widget/TickMarkView;->mMarkerLabels:[Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 8
    aget-object v3, v3, v1

    iput-object v3, v2, Lsmartisan/widget/TickMarkView$Marker;->label:Ljava/lang/String;

    .line 9
    :cond_0
    iget-object v3, v2, Lsmartisan/widget/TickMarkView$Marker;->label:Ljava/lang/String;

    if-nez v3, :cond_1

    iget v3, v2, Lsmartisan/widget/TickMarkView$Marker;->index:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 10
    :cond_1
    iget v4, v2, Lsmartisan/widget/TickMarkView$Marker;->centerX:I

    int-to-float v4, v4

    iget v2, v2, Lsmartisan/widget/TickMarkView$Marker;->labelTransY:F

    add-float/2addr v2, v0

    iget-object v5, p0, Lsmartisan/widget/TickMarkView;->mLabelPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v2, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 11
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private drawMarkers(Landroid/graphics/Canvas;)V
    .locals 10

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/4 v0, 0x0

    move v1, v0

    .line 2
    :goto_0
    iget v2, p0, Lsmartisan/widget/TickMarkView;->mMarkerSize:I

    if-ge v1, v2, :cond_3

    .line 3
    iget-object v2, p0, Lsmartisan/widget/TickMarkView;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsmartisan/widget/TickMarkView$Marker;

    .line 4
    iget v3, v2, Lsmartisan/widget/TickMarkView$Marker;->centerY:I

    iget v4, p0, Lsmartisan/widget/TickMarkView;->mMarkerDrawableHeight:I

    const/4 v5, 0x2

    div-int/2addr v4, v5

    sub-int/2addr v3, v4

    .line 5
    iget v4, v2, Lsmartisan/widget/TickMarkView$Marker;->type:I

    const/4 v6, 0x1

    if-nez v4, :cond_0

    .line 6
    iget-object v4, p0, Lsmartisan/widget/TickMarkView;->mStartMarkerDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_0
    if-ne v4, v5, :cond_1

    .line 7
    iget-object v4, p0, Lsmartisan/widget/TickMarkView;->mEndMarkerDrawable:Landroid/graphics/drawable/Drawable;

    move v6, v0

    goto :goto_1

    .line 8
    :cond_1
    iget-object v4, p0, Lsmartisan/widget/TickMarkView;->mMidMarkerDrawable:Landroid/graphics/drawable/Drawable;

    .line 9
    :goto_1
    iget v7, v2, Lsmartisan/widget/TickMarkView$Marker;->centerX:I

    iget v8, p0, Lsmartisan/widget/TickMarkView;->mMarkerDrawableWidth:I

    div-int/lit8 v9, v8, 0x2

    sub-int v9, v7, v9

    div-int/2addr v8, v5

    add-int/2addr v7, v8

    iget v8, p0, Lsmartisan/widget/TickMarkView;->mMarkerDrawableHeight:I

    add-int/2addr v8, v3

    invoke-virtual {v4, v9, v3, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 10
    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    if-eqz v6, :cond_2

    .line 11
    iget-object v4, p0, Lsmartisan/widget/TickMarkView;->mBridgeDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, v2, Lsmartisan/widget/TickMarkView$Marker;->centerX:I

    iget v6, p0, Lsmartisan/widget/TickMarkView;->mMarkerDrawableWidth:I

    div-int/2addr v6, v5

    add-int/2addr v2, v6

    iget-object v6, p0, Lsmartisan/widget/TickMarkView;->mMarkers:Ljava/util/ArrayList;

    add-int/lit8 v7, v1, 0x1

    .line 12
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lsmartisan/widget/TickMarkView$Marker;

    iget v6, v6, Lsmartisan/widget/TickMarkView$Marker;->centerX:I

    iget v7, p0, Lsmartisan/widget/TickMarkView;->mMarkerDrawableWidth:I

    div-int/2addr v7, v5

    sub-int/2addr v6, v7

    iget v5, p0, Lsmartisan/widget/TickMarkView;->mMarkerDrawableHeight:I

    add-int/2addr v5, v3

    .line 13
    invoke-virtual {v4, v2, v3, v6, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 14
    iget-object v2, p0, Lsmartisan/widget/TickMarkView;->mBridgeDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 15
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private getThumbSize()V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/TickMarkView;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lsmartisan/widget/TickMarkView;->mThumbDrawableWidth:I

    .line 2
    iget-object v0, p0, Lsmartisan/widget/TickMarkView;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lsmartisan/widget/TickMarkView;->mThumbDrawableHeight:I

    return-void
.end method

.method private initLabelPaintParams()V
    .locals 2

    .line 1
    iget-object v0, p0, Lsmartisan/widget/TickMarkView;->mLabelPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lsmartisan/widget/TickMarkView;->mLabelPaint:Landroid/graphics/Paint;

    .line 3
    :cond_0
    iget-object v0, p0, Lsmartisan/widget/TickMarkView;->mLabelPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    .line 4
    iget-object v0, p0, Lsmartisan/widget/TickMarkView;->mLabelPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41f00000    # 30.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 5
    iget-object v0, p0, Lsmartisan/widget/TickMarkView;->mLabelPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 6
    iget-object v0, p0, Lsmartisan/widget/TickMarkView;->mLabelPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 7
    iget-object v0, p0, Lsmartisan/widget/TickMarkView;->mLabelPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 8
    iget-object v0, p0, Lsmartisan/widget/TickMarkView;->mLabelPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    iput-object v0, p0, Lsmartisan/widget/TickMarkView;->mLabelFontMetrics:Landroid/graphics/Paint$FontMetrics;

    return-void
.end method

.method private initMarkerDistance()V
    .locals 2

    .line 1
    iget v0, p0, Lsmartisan/widget/TickMarkView;->mThumbCenterXMax:I

    iget v1, p0, Lsmartisan/widget/TickMarkView;->mThumbCenterXMin:I

    sub-int/2addr v0, v1

    iget v1, p0, Lsmartisan/widget/TickMarkView;->mMarkerSize:I

    add-int/lit8 v1, v1, -0x1

    div-int/2addr v0, v1

    iput v0, p0, Lsmartisan/widget/TickMarkView;->mMarkerDistance:I

    return-void
.end method

.method private initMarkerLocation()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lsmartisan/widget/TickMarkView;->initMarkerDistance()V

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget v1, p0, Lsmartisan/widget/TickMarkView;->mMarkerSize:I

    if-ge v0, v1, :cond_0

    .line 3
    iget-object v1, p0, Lsmartisan/widget/TickMarkView;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsmartisan/widget/TickMarkView$Marker;

    .line 4
    iget v2, p0, Lsmartisan/widget/TickMarkView;->mThumbCenterXMin:I

    iget v3, p0, Lsmartisan/widget/TickMarkView;->mMarkerDistance:I

    mul-int/2addr v3, v0

    add-int/2addr v2, v3

    iput v2, v1, Lsmartisan/widget/TickMarkView$Marker;->centerX:I

    .line 5
    iget v2, p0, Lsmartisan/widget/TickMarkView;->mThumbCenterY:I

    iput v2, v1, Lsmartisan/widget/TickMarkView$Marker;->centerY:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private initMarkers()V
    .locals 5

    .line 1
    iget-object v0, p0, Lsmartisan/widget/TickMarkView;->mMarkers:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lsmartisan/widget/TickMarkView;->mMarkerSize:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lsmartisan/widget/TickMarkView;->mMarkers:Ljava/util/ArrayList;

    .line 3
    :cond_0
    iget-object v0, p0, Lsmartisan/widget/TickMarkView;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    move v1, v0

    .line 4
    :goto_0
    iget v2, p0, Lsmartisan/widget/TickMarkView;->mMarkerSize:I

    if-ge v1, v2, :cond_3

    .line 5
    new-instance v2, Lsmartisan/widget/TickMarkView$Marker;

    invoke-direct {v2, p0}, Lsmartisan/widget/TickMarkView$Marker;-><init>(Lsmartisan/widget/TickMarkView;)V

    if-nez v1, :cond_1

    .line 6
    iput v0, v2, Lsmartisan/widget/TickMarkView$Marker;->type:I

    goto :goto_1

    .line 7
    :cond_1
    iget v3, p0, Lsmartisan/widget/TickMarkView;->mMarkerSize:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    if-ne v1, v3, :cond_2

    const/4 v3, 0x2

    .line 8
    iput v3, v2, Lsmartisan/widget/TickMarkView$Marker;->type:I

    goto :goto_1

    .line 9
    :cond_2
    iput v4, v2, Lsmartisan/widget/TickMarkView$Marker;->type:I

    .line 10
    :goto_1
    iput v1, v2, Lsmartisan/widget/TickMarkView$Marker;->index:I

    .line 11
    iget-object v3, p0, Lsmartisan/widget/TickMarkView;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 12
    :cond_3
    iget-object v0, p0, Lsmartisan/widget/TickMarkView;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->trimToSize()V

    return-void
.end method

.method private initStaticConstants()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x42

    invoke-static {v0, v1}, Lsmartisan/widget/TickMarkView;->dp2px(Landroid/content/Context;I)I

    move-result v0

    sput v0, Lsmartisan/widget/TickMarkView;->DEFAULT_HEIGHT:I

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lsmartisan/widget/TickMarkView;->dp2px(Landroid/content/Context;I)I

    move-result v0

    sput v0, Lsmartisan/widget/TickMarkView;->LABEL_TOP_MARGIN:I

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lsmartisan/widget/TickMarkView;->dp2px(Landroid/content/Context;I)I

    move-result v0

    sput v0, Lsmartisan/widget/TickMarkView;->LABEL_BOTTOM_MARGIN:I

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lsmartisan/widget/TickMarkView;->dp2px(Landroid/content/Context;I)I

    move-result v0

    sput v0, Lsmartisan/widget/TickMarkView;->LABEL_INNER_TRANSABLE_Y:I

    const/4 v0, 0x0

    .line 5
    sput v0, Lsmartisan/widget/TickMarkView;->LABEL_TRANS_Y_MIN:I

    .line 6
    sget v0, Lsmartisan/widget/TickMarkView;->LABEL_TRANS_Y_MIN:I

    sget v1, Lsmartisan/widget/TickMarkView;->LABEL_INNER_TRANSABLE_Y:I

    add-int/2addr v0, v1

    sput v0, Lsmartisan/widget/TickMarkView;->LABEL_TRANS_Y_MAX:I

    return-void
.end method

.method private initThumbCenterRange()V
    .locals 4

    .line 1
    iget v0, p0, Lsmartisan/widget/TickMarkView;->mWidth:I

    iget v1, p0, Lsmartisan/widget/TickMarkView;->mPaddingLeft:I

    sub-int/2addr v0, v1

    iget v2, p0, Lsmartisan/widget/TickMarkView;->mPaddingRight:I

    sub-int/2addr v0, v2

    .line 2
    iget v2, p0, Lsmartisan/widget/TickMarkView;->mThumbDrawableWidth:I

    div-int/lit8 v3, v2, 0x2

    add-int/2addr v3, v1

    iput v3, p0, Lsmartisan/widget/TickMarkView;->mThumbCenterXMin:I

    add-int/2addr v1, v0

    .line 3
    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, p0, Lsmartisan/widget/TickMarkView;->mThumbCenterXMax:I

    .line 4
    iget-object v0, p0, Lsmartisan/widget/TickMarkView;->mLabelFontMetrics:Landroid/graphics/Paint$FontMetrics;

    iget v1, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v1, v0

    float-to-int v0, v1

    .line 5
    iget v1, p0, Lsmartisan/widget/TickMarkView;->mPaddingTop:I

    sget v2, Lsmartisan/widget/TickMarkView;->LABEL_TOP_MARGIN:I

    add-int/2addr v1, v2

    add-int/2addr v1, v0

    sget v0, Lsmartisan/widget/TickMarkView;->LABEL_INNER_TRANSABLE_Y:I

    add-int/2addr v1, v0

    iget v0, p0, Lsmartisan/widget/TickMarkView;->mMarkerDrawableHeight:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v1, v0

    sget v0, Lsmartisan/widget/TickMarkView;->LABEL_BOTTOM_MARGIN:I

    add-int/2addr v1, v0

    iput v1, p0, Lsmartisan/widget/TickMarkView;->mThumbCenterY:I

    return-void
.end method

.method private markerFocusChanged(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lsmartisan/widget/TickMarkView;->mMarkers:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lsmartisan/widget/TickMarkView;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsmartisan/widget/TickMarkView$Marker;

    .line 3
    iget-boolean v2, v1, Lsmartisan/widget/TickMarkView$Marker;->focused:Z

    if-nez v2, :cond_1

    const/4 v2, 0x1

    .line 4
    iput-boolean v2, v1, Lsmartisan/widget/TickMarkView$Marker;->focused:Z

    const/4 v1, 0x0

    move v2, v1

    .line 5
    :goto_0
    iget v3, p0, Lsmartisan/widget/TickMarkView;->mMarkerSize:I

    if-ge v2, v3, :cond_1

    if-eq v2, p1, :cond_0

    .line 6
    iget-object v3, p0, Lsmartisan/widget/TickMarkView;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsmartisan/widget/TickMarkView$Marker;

    iput-boolean v1, v3, Lsmartisan/widget/TickMarkView$Marker;->focused:Z

    .line 7
    :cond_0
    iget-object v3, p0, Lsmartisan/widget/TickMarkView;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsmartisan/widget/TickMarkView$Marker;

    invoke-virtual {v3}, Lsmartisan/widget/TickMarkView$Marker;->animateLabel()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 8
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private markerIndexToThumbCenterX(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/TickMarkView;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lsmartisan/widget/TickMarkView$Marker;

    iget p1, p1, Lsmartisan/widget/TickMarkView$Marker;->centerX:I

    return p1
.end method

.method private trackTouchEvent(Landroid/view/MotionEvent;)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lsmartisan/widget/TickMarkView;->getThumbCenterXByTouchEvent(Landroid/view/MotionEvent;)I

    move-result v0

    iput v0, p0, Lsmartisan/widget/TickMarkView;->mThumbCenterX:I

    .line 2
    iget v0, p0, Lsmartisan/widget/TickMarkView;->mThumbCenterX:I

    invoke-virtual {p0, v0}, Lsmartisan/widget/TickMarkView;->thumbCenterXToMarkerIndex(I)I

    move-result v0

    .line 3
    iget v1, p0, Lsmartisan/widget/TickMarkView;->mFocusedMarker:I

    if-eq v0, v1, :cond_0

    .line 4
    invoke-direct {p0, v0}, Lsmartisan/widget/TickMarkView;->markerFocusChanged(I)V

    .line 5
    :cond_0
    iput v0, p0, Lsmartisan/widget/TickMarkView;->mFocusedMarker:I

    .line 6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    .line 7
    invoke-direct {p0}, Lsmartisan/widget/TickMarkView;->updateThumbBounds()V

    return-void

    .line 8
    :cond_1
    invoke-virtual {p0, v0}, Lsmartisan/widget/TickMarkView;->setMarker(I)V

    return-void
.end method

.method private updateThumbBounds()V
    .locals 7

    .line 1
    iget-object v0, p0, Lsmartisan/widget/TickMarkView;->mThumb:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lsmartisan/widget/TickMarkView;->mThumbCenterX:I

    iget v2, p0, Lsmartisan/widget/TickMarkView;->mThumbDrawableWidth:I

    div-int/lit8 v3, v2, 0x2

    sub-int v3, v1, v3

    iget v4, p0, Lsmartisan/widget/TickMarkView;->mThumbCenterY:I

    iget v5, p0, Lsmartisan/widget/TickMarkView;->mThumbDrawableHeight:I

    div-int/lit8 v6, v5, 0x2

    sub-int v6, v4, v6

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    invoke-virtual {v0, v3, v6, v1, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private verifyMarkerSize(I)Z
    .locals 1

    const/4 v0, 0x2

    if-lt p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "illegal marker size, the min marker size should be 2"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method drawDebugLineIfDebugMode(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method drawThumb(Landroid/graphics/Canvas;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2
    iget-object v0, p0, Lsmartisan/widget/TickMarkView;->mThumb:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public getMarkerSize()I
    .locals 1

    .line 1
    iget v0, p0, Lsmartisan/widget/TickMarkView;->mMarkerSize:I

    return v0
.end method

.method getThumbCenterXByTouchEvent(Landroid/view/MotionEvent;)I
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    .line 2
    iget v0, p0, Lsmartisan/widget/TickMarkView;->mThumbCenterXMin:I

    if-ge p1, v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget v0, p0, Lsmartisan/widget/TickMarkView;->mThumbCenterXMax:I

    if-le p1, v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, p1

    :goto_0
    return v0
.end method

.method getThumbDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/TickMarkView;->mThumb:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method getThumbMaxX()I
    .locals 1

    .line 1
    iget v0, p0, Lsmartisan/widget/TickMarkView;->mThumbCenterXMax:I

    return v0
.end method

.method getThumbMinX()I
    .locals 1

    .line 1
    iget v0, p0, Lsmartisan/widget/TickMarkView;->mThumbCenterXMin:I

    return v0
.end method

.method getThumbX()I
    .locals 1

    .line 1
    iget v0, p0, Lsmartisan/widget/TickMarkView;->mThumbCenterX:I

    return v0
.end method

.method getThumbY()I
    .locals 1

    .line 1
    iget v0, p0, Lsmartisan/widget/TickMarkView;->mThumbCenterY:I

    return v0
.end method

.method public getUnfocusedNormalLabelY()F
    .locals 2

    .line 1
    iget-object v0, p0, Lsmartisan/widget/TickMarkView;->mLabelFontMetrics:Landroid/graphics/Paint$FontMetrics;

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lsmartisan/widget/TickMarkView;->mPaddingTop:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    sget v1, Lsmartisan/widget/TickMarkView;->LABEL_TOP_MARGIN:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    .line 2
    sget v1, Lsmartisan/widget/TickMarkView;->LABEL_TRANS_Y_MAX:I

    int-to-float v1, v1

    add-float/2addr v1, v0

    return v1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    invoke-virtual {p0, p1}, Lsmartisan/widget/TickMarkView;->drawDebugLineIfDebugMode(Landroid/graphics/Canvas;)V

    .line 3
    invoke-direct {p0, p1}, Lsmartisan/widget/TickMarkView;->drawLabels(Landroid/graphics/Canvas;)V

    .line 4
    invoke-direct {p0, p1}, Lsmartisan/widget/TickMarkView;->drawMarkers(Landroid/graphics/Canvas;)V

    .line 5
    invoke-virtual {p0, p1}, Lsmartisan/widget/TickMarkView;->drawThumb(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 2
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 3
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 4
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    if-nez v0, :cond_0

    const/16 p1, 0x438

    .line 5
    iput p1, p0, Lsmartisan/widget/TickMarkView;->mWidth:I

    goto :goto_0

    .line 6
    :cond_0
    iput p1, p0, Lsmartisan/widget/TickMarkView;->mWidth:I

    :goto_0
    if-nez v1, :cond_1

    .line 7
    sget p1, Lsmartisan/widget/TickMarkView;->DEFAULT_HEIGHT:I

    iput p1, p0, Lsmartisan/widget/TickMarkView;->mHeight:I

    goto :goto_1

    .line 8
    :cond_1
    iput p2, p0, Lsmartisan/widget/TickMarkView;->mHeight:I

    .line 9
    :goto_1
    iget p1, p0, Lsmartisan/widget/TickMarkView;->mWidth:I

    iget p2, p0, Lsmartisan/widget/TickMarkView;->mHeight:I

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 10
    invoke-direct {p0}, Lsmartisan/widget/TickMarkView;->initThumbCenterRange()V

    .line 11
    invoke-direct {p0}, Lsmartisan/widget/TickMarkView;->initMarkerLocation()V

    .line 12
    iget p1, p0, Lsmartisan/widget/TickMarkView;->mCurrentMarker:I

    invoke-virtual {p0, p1}, Lsmartisan/widget/TickMarkView;->setMarker(I)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 1
    check-cast p1, Lsmartisan/widget/TickMarkView$SavedState;

    .line 2
    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 3
    iget p1, p1, Lsmartisan/widget/TickMarkView$SavedState;->currentMarker:I

    invoke-virtual {p0, p1}, Lsmartisan/widget/TickMarkView;->setMarker(I)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 2
    new-instance v1, Lsmartisan/widget/TickMarkView$SavedState;

    invoke-direct {v1, v0}, Lsmartisan/widget/TickMarkView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 3
    iget v0, p0, Lsmartisan/widget/TickMarkView;->mCurrentMarker:I

    iput v0, v1, Lsmartisan/widget/TickMarkView$SavedState;->currentMarker:I

    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 2
    iput p1, p0, Lsmartisan/widget/TickMarkView;->mWidth:I

    .line 3
    iput p2, p0, Lsmartisan/widget/TickMarkView;->mHeight:I

    .line 4
    invoke-direct {p0}, Lsmartisan/widget/TickMarkView;->initThumbCenterRange()V

    .line 5
    invoke-direct {p0}, Lsmartisan/widget/TickMarkView;->initMarkerLocation()V

    .line 6
    invoke-virtual {p0}, Lsmartisan/widget/TickMarkView;->updateThumbPosInnerIfSizeChanged()V

    return-void
.end method

.method onStartTrackingTouch(Landroid/view/MotionEvent;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lsmartisan/widget/TickMarkView;->mIsDragging:Z

    .line 2
    iget-object v0, p0, Lsmartisan/widget/TickMarkView;->mTrackListener:Lsmartisan/widget/TickMarkView$TrackTouchListener;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1}, Lsmartisan/widget/TickMarkView$TrackTouchListener;->onStartTrack(Landroid/view/MotionEvent;)V

    :cond_0
    return-void
.end method

.method onStopTrackingTouch(Landroid/view/MotionEvent;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lsmartisan/widget/TickMarkView;->mIsDragging:Z

    .line 2
    iget-object v0, p0, Lsmartisan/widget/TickMarkView;->mTrackListener:Lsmartisan/widget/TickMarkView$TrackTouchListener;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1}, Lsmartisan/widget/TickMarkView$TrackTouchListener;->onStopTrack(Landroid/view/MotionEvent;)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_8

    if-eq v0, v2, :cond_6

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    goto/16 :goto_1

    .line 3
    :cond_1
    iget-boolean v0, p0, Lsmartisan/widget/TickMarkView;->mIsDragging:Z

    if-eqz v0, :cond_2

    .line 4
    invoke-direct {p0, p1}, Lsmartisan/widget/TickMarkView;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 5
    invoke-virtual {p0, p1}, Lsmartisan/widget/TickMarkView;->onStopTrackingTouch(Landroid/view/MotionEvent;)V

    .line 6
    invoke-virtual {p0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 7
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto/16 :goto_1

    .line 8
    :cond_3
    iget-boolean v0, p0, Lsmartisan/widget/TickMarkView;->mIsDragging:Z

    if-eqz v0, :cond_4

    .line 9
    invoke-direct {p0, p1}, Lsmartisan/widget/TickMarkView;->trackTouchEvent(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 10
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 11
    iget v1, p0, Lsmartisan/widget/TickMarkView;->mTouchDownX:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lsmartisan/widget/TickMarkView;->mScaledTouchSlop:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_b

    .line 12
    invoke-virtual {p0, v2}, Landroid/view/View;->setPressed(Z)V

    .line 13
    iget-object v0, p0, Lsmartisan/widget/TickMarkView;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_5

    .line 14
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 15
    :cond_5
    invoke-virtual {p0, p1}, Lsmartisan/widget/TickMarkView;->onStartTrackingTouch(Landroid/view/MotionEvent;)V

    .line 16
    invoke-direct {p0, p1}, Lsmartisan/widget/TickMarkView;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 17
    invoke-direct {p0}, Lsmartisan/widget/TickMarkView;->attemptClaimDrag()V

    goto :goto_1

    .line 18
    :cond_6
    iget-boolean v0, p0, Lsmartisan/widget/TickMarkView;->mIsDragging:Z

    if-eqz v0, :cond_7

    .line 19
    invoke-direct {p0, p1}, Lsmartisan/widget/TickMarkView;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 20
    invoke-virtual {p0, p1}, Lsmartisan/widget/TickMarkView;->onStopTrackingTouch(Landroid/view/MotionEvent;)V

    .line 21
    invoke-virtual {p0, v1}, Landroid/view/View;->setPressed(Z)V

    goto :goto_0

    .line 22
    :cond_7
    invoke-virtual {p0, p1}, Lsmartisan/widget/TickMarkView;->onStartTrackingTouch(Landroid/view/MotionEvent;)V

    .line 23
    invoke-direct {p0, p1}, Lsmartisan/widget/TickMarkView;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 24
    invoke-virtual {p0, p1}, Lsmartisan/widget/TickMarkView;->onStopTrackingTouch(Landroid/view/MotionEvent;)V

    .line 25
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_1

    .line 26
    :cond_8
    invoke-static {p0}, Lsmartisan/InvokeApi$p;->b(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 27
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lsmartisan/widget/TickMarkView;->mTouchDownX:F

    goto :goto_1

    .line 28
    :cond_9
    invoke-virtual {p0, v2}, Landroid/view/View;->setPressed(Z)V

    .line 29
    iget-object v0, p0, Lsmartisan/widget/TickMarkView;->mThumb:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_a

    .line 30
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 31
    :cond_a
    invoke-virtual {p0, p1}, Lsmartisan/widget/TickMarkView;->onStartTrackingTouch(Landroid/view/MotionEvent;)V

    .line 32
    invoke-direct {p0, p1}, Lsmartisan/widget/TickMarkView;->trackTouchEvent(Landroid/view/MotionEvent;)V

    .line 33
    invoke-direct {p0}, Lsmartisan/widget/TickMarkView;->attemptClaimDrag()V

    :cond_b
    :goto_1
    return v2
.end method

.method public setMarker(I)V
    .locals 3

    if-ltz p1, :cond_1

    .line 1
    iget v0, p0, Lsmartisan/widget/TickMarkView;->mMarkerSize:I

    add-int/lit8 v0, v0, -0x1

    if-gt p1, v0, :cond_1

    .line 2
    invoke-direct {p0, p1}, Lsmartisan/widget/TickMarkView;->markerIndexToThumbCenterX(I)I

    move-result v0

    iput v0, p0, Lsmartisan/widget/TickMarkView;->mThumbCenterX:I

    .line 3
    invoke-direct {p0}, Lsmartisan/widget/TickMarkView;->updateThumbBounds()V

    .line 4
    iget v0, p0, Lsmartisan/widget/TickMarkView;->mCurrentMarker:I

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lsmartisan/widget/TickMarkView;->mMarkerChangeListener:Lsmartisan/widget/TickMarkView$OnMarkerChangeListener;

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0, p1}, Lsmartisan/widget/TickMarkView$OnMarkerChangeListener;->onMarkerChanged(I)V

    .line 6
    :cond_0
    iput p1, p0, Lsmartisan/widget/TickMarkView;->mCurrentMarker:I

    .line 7
    invoke-direct {p0, p1}, Lsmartisan/widget/TickMarkView;->markerFocusChanged(I)V

    return-void

    .line 8
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid marker index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", the index should between 0 and "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lsmartisan/widget/TickMarkView;->mMarkerSize:I

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMarkerLabels([Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/TickMarkView;->mMarkerLabels:[Ljava/lang/String;

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setMarkerSize(I)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lsmartisan/widget/TickMarkView;->verifyMarkerSize(I)Z

    .line 2
    iget v0, p0, Lsmartisan/widget/TickMarkView;->mMarkerSize:I

    if-ne p1, v0, :cond_0

    return-void

    .line 3
    :cond_0
    iput p1, p0, Lsmartisan/widget/TickMarkView;->mMarkerSize:I

    .line 4
    invoke-direct {p0}, Lsmartisan/widget/TickMarkView;->initMarkers()V

    .line 5
    invoke-direct {p0}, Lsmartisan/widget/TickMarkView;->initMarkerLocation()V

    return-void
.end method

.method public setOnMarkerChangeListener(Lsmartisan/widget/TickMarkView$OnMarkerChangeListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/TickMarkView;->mMarkerChangeListener:Lsmartisan/widget/TickMarkView$OnMarkerChangeListener;

    return-void
.end method

.method setThumbDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/TickMarkView;->mThumb:Landroid/graphics/drawable/Drawable;

    .line 2
    invoke-direct {p0}, Lsmartisan/widget/TickMarkView;->getThumbSize()V

    .line 3
    invoke-direct {p0}, Lsmartisan/widget/TickMarkView;->initThumbCenterRange()V

    .line 4
    invoke-direct {p0}, Lsmartisan/widget/TickMarkView;->updateThumbBounds()V

    return-void
.end method

.method setTrackTouchListener(Lsmartisan/widget/TickMarkView$TrackTouchListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/TickMarkView;->mTrackListener:Lsmartisan/widget/TickMarkView$TrackTouchListener;

    return-void
.end method

.method thumbCenterXToMarkerIndex(I)I
    .locals 1

    .line 1
    iget v0, p0, Lsmartisan/widget/TickMarkView;->mThumbCenterXMin:I

    sub-int/2addr p1, v0

    int-to-float p1, p1

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float/2addr p1, v0

    iget v0, p0, Lsmartisan/widget/TickMarkView;->mMarkerDistance:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method

.method updateThumbCenter(II)V
    .locals 0

    .line 1
    iput p1, p0, Lsmartisan/widget/TickMarkView;->mThumbCenterX:I

    .line 2
    iput p2, p0, Lsmartisan/widget/TickMarkView;->mThumbCenterY:I

    .line 3
    invoke-direct {p0}, Lsmartisan/widget/TickMarkView;->updateThumbBounds()V

    return-void
.end method

.method updateThumbPosInnerIfSizeChanged()V
    .locals 2

    .line 1
    iget v0, p0, Lsmartisan/widget/TickMarkView;->mCurrentMarker:I

    invoke-direct {p0, v0}, Lsmartisan/widget/TickMarkView;->markerIndexToThumbCenterX(I)I

    move-result v0

    iget v1, p0, Lsmartisan/widget/TickMarkView;->mThumbCenterY:I

    invoke-virtual {p0, v0, v1}, Lsmartisan/widget/TickMarkView;->updateThumbCenter(II)V

    return-void
.end method
