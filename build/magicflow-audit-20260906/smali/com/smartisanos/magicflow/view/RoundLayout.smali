.class public Lcom/smartisanos/magicflow/view/RoundLayout;
.super Landroid/widget/FrameLayout;
.source "RoundLayout.java"


# instance fields
.field private bottomLeftRadius:F

.field private bottomRightRadius:F

.field private imagePaint:Landroid/graphics/Paint;

.field private mPath:Landroid/graphics/Path;

.field private roundPaint:Landroid/graphics/Paint;

.field private topLeftRadius:F

.field private topRightRadius:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/smartisanos/magicflow/view/RoundLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/smartisanos/magicflow/view/RoundLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x1

    if-eqz p2, :cond_0

    .line 4
    sget-object v0, Lcom/smartisanos/magicflow/R$styleable;->RoundLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x2

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    const/4 v0, 0x3

    .line 6
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/smartisanos/magicflow/view/RoundLayout;->topLeftRadius:F

    const/4 v0, 0x4

    .line 7
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/smartisanos/magicflow/view/RoundLayout;->topRightRadius:F

    const/4 v0, 0x0

    .line 8
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/smartisanos/magicflow/view/RoundLayout;->bottomLeftRadius:F

    .line 9
    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/smartisanos/magicflow/view/RoundLayout;->bottomRightRadius:F

    .line 10
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 11
    :cond_0
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/RoundLayout;->roundPaint:Landroid/graphics/Paint;

    .line 12
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/RoundLayout;->roundPaint:Landroid/graphics/Paint;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 13
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/RoundLayout;->roundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 14
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/RoundLayout;->roundPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 15
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/RoundLayout;->roundPaint:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/PorterDuffXfermode;

    sget-object p3, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p2, p3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 16
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/RoundLayout;->mPath:Landroid/graphics/Path;

    .line 17
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/RoundLayout;->imagePaint:Landroid/graphics/Paint;

    .line 18
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/RoundLayout;->imagePaint:Landroid/graphics/Paint;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    return-void
.end method

.method private drawBottomLeft(Landroid/graphics/Canvas;)V
    .locals 7

    .line 1
    iget v0, p0, Lcom/smartisanos/magicflow/view/RoundLayout;->bottomLeftRadius:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    .line 3
    iget-object v2, p0, Lcom/smartisanos/magicflow/view/RoundLayout;->mPath:Landroid/graphics/Path;

    int-to-float v0, v0

    iget v3, p0, Lcom/smartisanos/magicflow/view/RoundLayout;->bottomLeftRadius:F

    sub-float v3, v0, v3

    invoke-virtual {v2, v1, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 4
    iget-object v2, p0, Lcom/smartisanos/magicflow/view/RoundLayout;->mPath:Landroid/graphics/Path;

    invoke-virtual {v2, v1, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 5
    iget-object v2, p0, Lcom/smartisanos/magicflow/view/RoundLayout;->mPath:Landroid/graphics/Path;

    iget v3, p0, Lcom/smartisanos/magicflow/view/RoundLayout;->bottomLeftRadius:F

    invoke-virtual {v2, v3, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 6
    iget-object v2, p0, Lcom/smartisanos/magicflow/view/RoundLayout;->mPath:Landroid/graphics/Path;

    new-instance v3, Landroid/graphics/RectF;

    iget v4, p0, Lcom/smartisanos/magicflow/view/RoundLayout;->bottomLeftRadius:F

    const/high16 v5, 0x40000000    # 2.0f

    mul-float v6, v4, v5

    sub-float v6, v0, v6

    mul-float/2addr v4, v5

    invoke-direct {v3, v1, v6, v4, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v0, 0x42b40000    # 90.0f

    invoke-virtual {v2, v3, v0, v0}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 7
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/RoundLayout;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 8
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/RoundLayout;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/RoundLayout;->roundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 9
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/RoundLayout;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    :cond_0
    return-void
.end method

.method private drawBottomRight(Landroid/graphics/Canvas;)V
    .locals 8

    .line 1
    iget v0, p0, Lcom/smartisanos/magicflow/view/RoundLayout;->bottomRightRadius:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    .line 4
    iget-object v3, p0, Lcom/smartisanos/magicflow/view/RoundLayout;->mPath:Landroid/graphics/Path;

    int-to-float v2, v2

    iget v4, p0, Lcom/smartisanos/magicflow/view/RoundLayout;->bottomRightRadius:F

    sub-float v4, v2, v4

    int-to-float v0, v0

    invoke-virtual {v3, v4, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 5
    iget-object v3, p0, Lcom/smartisanos/magicflow/view/RoundLayout;->mPath:Landroid/graphics/Path;

    invoke-virtual {v3, v2, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 6
    iget-object v3, p0, Lcom/smartisanos/magicflow/view/RoundLayout;->mPath:Landroid/graphics/Path;

    iget v4, p0, Lcom/smartisanos/magicflow/view/RoundLayout;->bottomRightRadius:F

    sub-float v4, v0, v4

    invoke-virtual {v3, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 7
    iget-object v3, p0, Lcom/smartisanos/magicflow/view/RoundLayout;->mPath:Landroid/graphics/Path;

    new-instance v4, Landroid/graphics/RectF;

    iget v5, p0, Lcom/smartisanos/magicflow/view/RoundLayout;->bottomRightRadius:F

    const/high16 v6, 0x40000000    # 2.0f

    mul-float v7, v5, v6

    sub-float v7, v2, v7

    mul-float/2addr v5, v6

    sub-float v5, v0, v5

    invoke-direct {v4, v7, v5, v2, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v0, 0x42b40000    # 90.0f

    invoke-virtual {v3, v4, v1, v0}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 8
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/RoundLayout;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 9
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/RoundLayout;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/RoundLayout;->roundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 10
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/RoundLayout;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    :cond_0
    return-void
.end method

.method private drawTopLeft(Landroid/graphics/Canvas;)V
    .locals 6

    .line 1
    iget v0, p0, Lcom/smartisanos/magicflow/view/RoundLayout;->topLeftRadius:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-lez v2, :cond_0

    .line 2
    iget-object v2, p0, Lcom/smartisanos/magicflow/view/RoundLayout;->mPath:Landroid/graphics/Path;

    invoke-virtual {v2, v1, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/RoundLayout;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 4
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/RoundLayout;->mPath:Landroid/graphics/Path;

    iget v2, p0, Lcom/smartisanos/magicflow/view/RoundLayout;->topLeftRadius:F

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 5
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/RoundLayout;->mPath:Landroid/graphics/Path;

    new-instance v2, Landroid/graphics/RectF;

    iget v3, p0, Lcom/smartisanos/magicflow/view/RoundLayout;->topLeftRadius:F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float v5, v3, v4

    mul-float/2addr v3, v4

    invoke-direct {v2, v1, v1, v5, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v1, -0x3d4c0000    # -90.0f

    invoke-virtual {v0, v2, v1, v1}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 6
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/RoundLayout;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 7
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/RoundLayout;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/RoundLayout;->roundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 8
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/RoundLayout;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    :cond_0
    return-void
.end method

.method private drawTopRight(Landroid/graphics/Canvas;)V
    .locals 7

    .line 1
    iget v0, p0, Lcom/smartisanos/magicflow/view/RoundLayout;->topRightRadius:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    .line 3
    iget-object v2, p0, Lcom/smartisanos/magicflow/view/RoundLayout;->mPath:Landroid/graphics/Path;

    int-to-float v0, v0

    iget v3, p0, Lcom/smartisanos/magicflow/view/RoundLayout;->topRightRadius:F

    sub-float v3, v0, v3

    invoke-virtual {v2, v3, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 4
    iget-object v2, p0, Lcom/smartisanos/magicflow/view/RoundLayout;->mPath:Landroid/graphics/Path;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 5
    iget-object v2, p0, Lcom/smartisanos/magicflow/view/RoundLayout;->mPath:Landroid/graphics/Path;

    iget v3, p0, Lcom/smartisanos/magicflow/view/RoundLayout;->topRightRadius:F

    invoke-virtual {v2, v0, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 6
    iget-object v2, p0, Lcom/smartisanos/magicflow/view/RoundLayout;->mPath:Landroid/graphics/Path;

    new-instance v3, Landroid/graphics/RectF;

    iget v4, p0, Lcom/smartisanos/magicflow/view/RoundLayout;->topRightRadius:F

    const/high16 v5, 0x40000000    # 2.0f

    mul-float v6, v4, v5

    sub-float v6, v0, v6

    mul-float/2addr v4, v5

    invoke-direct {v3, v6, v1, v0, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v0, -0x3d4c0000    # -90.0f

    invoke-virtual {v2, v3, v1, v0}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 7
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/RoundLayout;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 8
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/RoundLayout;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/RoundLayout;->roundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 9
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/RoundLayout;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/RoundLayout;->imagePaint:Landroid/graphics/Paint;

    const/16 v2, 0x1f

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    .line 2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 3
    invoke-direct {p0, p1}, Lcom/smartisanos/magicflow/view/RoundLayout;->drawTopLeft(Landroid/graphics/Canvas;)V

    .line 4
    invoke-direct {p0, p1}, Lcom/smartisanos/magicflow/view/RoundLayout;->drawTopRight(Landroid/graphics/Canvas;)V

    .line 5
    invoke-direct {p0, p1}, Lcom/smartisanos/magicflow/view/RoundLayout;->drawBottomLeft(Landroid/graphics/Canvas;)V

    .line 6
    invoke-direct {p0, p1}, Lcom/smartisanos/magicflow/view/RoundLayout;->drawBottomRight(Landroid/graphics/Canvas;)V

    .line 7
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public setAllDiagonal(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/smartisanos/magicflow/view/RoundLayout;->topLeftRadius:F

    .line 2
    iput p1, p0, Lcom/smartisanos/magicflow/view/RoundLayout;->bottomRightRadius:F

    .line 3
    iput p1, p0, Lcom/smartisanos/magicflow/view/RoundLayout;->topRightRadius:F

    .line 4
    iput p1, p0, Lcom/smartisanos/magicflow/view/RoundLayout;->bottomLeftRadius:F

    .line 5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public setBottomDiagonal(F)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/smartisanos/magicflow/view/RoundLayout;->topLeftRadius:F

    .line 2
    iput v0, p0, Lcom/smartisanos/magicflow/view/RoundLayout;->topRightRadius:F

    .line 3
    iput p1, p0, Lcom/smartisanos/magicflow/view/RoundLayout;->bottomRightRadius:F

    .line 4
    iput p1, p0, Lcom/smartisanos/magicflow/view/RoundLayout;->bottomLeftRadius:F

    .line 5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public setDrawBottomLeft(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/smartisanos/magicflow/view/RoundLayout;->bottomLeftRadius:F

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public setDrawBottomRight(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/smartisanos/magicflow/view/RoundLayout;->bottomRightRadius:F

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public setDrawTopLeft(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/smartisanos/magicflow/view/RoundLayout;->topLeftRadius:F

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public setDrawTopRight(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/smartisanos/magicflow/view/RoundLayout;->topRightRadius:F

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public setLeftDiagonal(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/smartisanos/magicflow/view/RoundLayout;->topLeftRadius:F

    .line 2
    iput p1, p0, Lcom/smartisanos/magicflow/view/RoundLayout;->bottomRightRadius:F

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/smartisanos/magicflow/view/RoundLayout;->topRightRadius:F

    .line 4
    iput p1, p0, Lcom/smartisanos/magicflow/view/RoundLayout;->bottomLeftRadius:F

    .line 5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public setRightDiagonal(F)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/smartisanos/magicflow/view/RoundLayout;->topLeftRadius:F

    .line 2
    iput v0, p0, Lcom/smartisanos/magicflow/view/RoundLayout;->bottomRightRadius:F

    .line 3
    iput p1, p0, Lcom/smartisanos/magicflow/view/RoundLayout;->topRightRadius:F

    .line 4
    iput p1, p0, Lcom/smartisanos/magicflow/view/RoundLayout;->bottomLeftRadius:F

    .line 5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method

.method public setTopDiagonal(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/smartisanos/magicflow/view/RoundLayout;->topLeftRadius:F

    .line 2
    iput p1, p0, Lcom/smartisanos/magicflow/view/RoundLayout;->topRightRadius:F

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/smartisanos/magicflow/view/RoundLayout;->bottomRightRadius:F

    .line 4
    iput p1, p0, Lcom/smartisanos/magicflow/view/RoundLayout;->bottomLeftRadius:F

    .line 5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method
