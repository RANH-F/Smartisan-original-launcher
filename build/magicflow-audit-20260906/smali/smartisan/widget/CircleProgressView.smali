.class public Lsmartisan/widget/CircleProgressView;
.super Landroid/view/View;
.source "CircleProgressView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CircleView"


# instance fields
.field private mCircleDrawable:Landroid/graphics/drawable/Drawable;

.field private mHeight:I

.field private mMastBitmap:Landroid/graphics/Bitmap;

.field private mPaint:Landroid/graphics/Paint;

.field private mRect:Landroid/graphics/Rect;

.field private mSweepAngle:F

.field private mWidth:I

.field private final mXfermode:Landroid/graphics/Xfermode;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lsmartisan/widget/CircleProgressView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    new-instance p1, Landroid/graphics/PorterDuffXfermode;

    sget-object p2, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p1, p2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object p1, p0, Lsmartisan/widget/CircleProgressView;->mXfermode:Landroid/graphics/Xfermode;

    .line 4
    invoke-direct {p0}, Lsmartisan/widget/CircleProgressView;->init()V

    return-void
.end method

.method private init()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lsmartisan/widget/R$drawable;->circle:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lsmartisan/widget/CircleProgressView;->mCircleDrawable:Landroid/graphics/drawable/Drawable;

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lsmartisan/widget/R$drawable;->circle_mask:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lsmartisan/widget/CircleProgressView;->mMastBitmap:Landroid/graphics/Bitmap;

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lsmartisan/widget/R$dimen;->circle_progress_view_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 4
    iput v0, p0, Lsmartisan/widget/CircleProgressView;->mWidth:I

    .line 5
    iput v0, p0, Lsmartisan/widget/CircleProgressView;->mHeight:I

    .line 6
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lsmartisan/widget/CircleProgressView;->mWidth:I

    iget v2, p0, Lsmartisan/widget/CircleProgressView;->mHeight:I

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lsmartisan/widget/CircleProgressView;->mRect:Landroid/graphics/Rect;

    .line 7
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lsmartisan/widget/CircleProgressView;->mPaint:Landroid/graphics/Paint;

    .line 8
    iget-object v0, p0, Lsmartisan/widget/CircleProgressView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lsmartisan/widget/R$color;->circle_progress_view_arc_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method public getCircleHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lsmartisan/widget/CircleProgressView;->mHeight:I

    return v0
.end method

.method public getCircleWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lsmartisan/widget/CircleProgressView;->mWidth:I

    return v0
.end method

.method public getSweepAngle()F
    .locals 1

    .line 1
    iget v0, p0, Lsmartisan/widget/CircleProgressView;->mSweepAngle:F

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget v0, p0, Lsmartisan/widget/CircleProgressView;->mWidth:I

    int-to-float v4, v0

    iget v0, p0, Lsmartisan/widget/CircleProgressView;->mHeight:I

    int-to-float v5, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x1f

    move-object v1, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    move-result v0

    .line 3
    iget v1, p0, Lsmartisan/widget/CircleProgressView;->mWidth:I

    int-to-float v5, v1

    iget v1, p0, Lsmartisan/widget/CircleProgressView;->mHeight:I

    int-to-float v6, v1

    iget v8, p0, Lsmartisan/widget/CircleProgressView;->mSweepAngle:F

    iget-object v10, p0, Lsmartisan/widget/CircleProgressView;->mPaint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    const/high16 v7, -0x3d4c0000    # -90.0f

    const/4 v9, 0x1

    move-object v2, p1

    invoke-virtual/range {v2 .. v10}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    .line 4
    iget-object v1, p0, Lsmartisan/widget/CircleProgressView;->mPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lsmartisan/widget/CircleProgressView;->mXfermode:Landroid/graphics/Xfermode;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 5
    iget-object v1, p0, Lsmartisan/widget/CircleProgressView;->mMastBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lsmartisan/widget/CircleProgressView;->mRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lsmartisan/widget/CircleProgressView;->mPaint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    invoke-virtual {p1, v1, v4, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 6
    iget-object v1, p0, Lsmartisan/widget/CircleProgressView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 7
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 8
    iget-object v0, p0, Lsmartisan/widget/CircleProgressView;->mCircleDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lsmartisan/widget/CircleProgressView;->mWidth:I

    iget v2, p0, Lsmartisan/widget/CircleProgressView;->mHeight:I

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 9
    iget-object v0, p0, Lsmartisan/widget/CircleProgressView;->mCircleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 1
    iget p1, p0, Lsmartisan/widget/CircleProgressView;->mWidth:I

    iget p2, p0, Lsmartisan/widget/CircleProgressView;->mHeight:I

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lsmartisan/widget/CircleProgressView;->setSweepAngle(F)V

    return-void
.end method

.method public setSweepAngle(F)V
    .locals 0

    .line 1
    iput p1, p0, Lsmartisan/widget/CircleProgressView;->mSweepAngle:F

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
