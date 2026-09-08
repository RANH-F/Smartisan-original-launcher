.class public Lsmartisan/app/IndicatorView;
.super Landroid/view/View;
.source "IndicatorView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsmartisan/app/IndicatorView$IconIndicator;,
        Lsmartisan/app/IndicatorView$SavedState;
    }
.end annotation


# static fields
.field private static final MAX_NUM_DOT:I = 0x19


# instance fields
.field private mAll:I

.field private mCur:I

.field private mIconIndicators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lsmartisan/app/IndicatorView$IconIndicator;",
            ">;"
        }
    .end annotation
.end field

.field private final mPaintFill:Landroid/graphics/Paint;

.field private final mPaintPageFill:Landroid/graphics/Paint;

.field private final mPaintRect:Landroid/graphics/Paint;

.field private mRadius:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lsmartisan/app/IndicatorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lsmartisan/app/IndicatorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lsmartisan/app/IndicatorView;->mAll:I

    .line 5
    iput v0, p0, Lsmartisan/app/IndicatorView;->mCur:I

    .line 6
    new-instance v1, Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lsmartisan/app/IndicatorView;->mPaintPageFill:Landroid/graphics/Paint;

    .line 7
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lsmartisan/app/IndicatorView;->mPaintFill:Landroid/graphics/Paint;

    .line 8
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lsmartisan/app/IndicatorView;->mPaintRect:Landroid/graphics/Paint;

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 10
    sget v2, Lsmartisan/widget/R$color;->default_circle_indicator_page_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 11
    sget v3, Lsmartisan/widget/R$color;->default_circle_indicator_fill_color:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    .line 12
    sget v4, Lsmartisan/widget/R$dimen;->default_circle_indicator_radius:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 13
    sget-object v4, Lsmartisan/widget/R$styleable;->IndicatorView:[I

    invoke-virtual {p1, p2, v4, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 14
    iget-object p2, p0, Lsmartisan/app/IndicatorView;->mPaintPageFill:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 15
    iget-object p2, p0, Lsmartisan/app/IndicatorView;->mPaintPageFill:Landroid/graphics/Paint;

    sget p3, Lsmartisan/widget/R$styleable;->IndicatorView_pageColor:I

    invoke-virtual {p1, p3, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 16
    iget-object p2, p0, Lsmartisan/app/IndicatorView;->mPaintFill:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 17
    iget-object p2, p0, Lsmartisan/app/IndicatorView;->mPaintFill:Landroid/graphics/Paint;

    sget p3, Lsmartisan/widget/R$styleable;->IndicatorView_fillColor:I

    invoke-virtual {p1, p3, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 18
    iget-object p2, p0, Lsmartisan/app/IndicatorView;->mPaintRect:Landroid/graphics/Paint;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 19
    sget p2, Lsmartisan/widget/R$styleable;->IndicatorView_radius:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lsmartisan/app/IndicatorView;->mRadius:F

    .line 20
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private measureLong(I)I
    .locals 5

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget v1, p0, Lsmartisan/app/IndicatorView;->mAll:I

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    mul-int/lit8 v3, v1, 0x2

    int-to-float v3, v3

    iget v4, p0, Lsmartisan/app/IndicatorView;->mRadius:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    add-int/lit8 v1, v1, -0x1

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    mul-float/2addr v1, v4

    add-float/2addr v2, v1

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v2, v1

    float-to-int v1, v2

    const/high16 v2, -0x80000000

    if-ne v0, v2, :cond_1

    .line 5
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0

    :cond_1
    move p1, v1

    :goto_0
    return p1
.end method

.method private measureShort(I)I
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v1, 0x40800000    # 4.0f

    .line 3
    iget v2, p0, Lsmartisan/app/IndicatorView;->mRadius:F

    mul-float/2addr v2, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v2, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v2, v1

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v2, v1

    float-to-int v1, v2

    const/high16 v2, -0x80000000

    if-ne v0, v2, :cond_1

    .line 4
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0

    :cond_1
    move p1, v1

    :goto_0
    return p1
.end method


# virtual methods
.method public addIconIndicator(Lsmartisan/app/IndicatorView$IconIndicator;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lsmartisan/app/IndicatorView;->mIconIndicators:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lsmartisan/app/IndicatorView;->mIconIndicators:Ljava/util/ArrayList;

    .line 3
    :cond_0
    iget-object v0, p0, Lsmartisan/app/IndicatorView;->mIconIndicators:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget v0, p0, Lsmartisan/app/IndicatorView;->mAll:I

    if-gez v0, :cond_0

    return-void

    :cond_0
    const/16 v1, 0x19

    if-le v0, v1, :cond_1

    .line 3
    iput v1, p0, Lsmartisan/app/IndicatorView;->mAll:I

    .line 4
    :cond_1
    iget v0, p0, Lsmartisan/app/IndicatorView;->mCur:I

    const/4 v1, 0x0

    if-gez v0, :cond_2

    .line 5
    iput v1, p0, Lsmartisan/app/IndicatorView;->mCur:I

    .line 6
    :cond_2
    iget v0, p0, Lsmartisan/app/IndicatorView;->mCur:I

    iget v2, p0, Lsmartisan/app/IndicatorView;->mAll:I

    const/4 v3, 0x1

    if-lt v0, v2, :cond_3

    sub-int/2addr v2, v3

    .line 7
    iput v2, p0, Lsmartisan/app/IndicatorView;->mCur:I

    .line 8
    :cond_3
    iget v0, p0, Lsmartisan/app/IndicatorView;->mAll:I

    if-gt v0, v3, :cond_4

    return-void

    .line 9
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v9, v6

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v10, v6

    iget-object v11, p0, Lsmartisan/app/IndicatorView;->mPaintRect:Landroid/graphics/Paint;

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 14
    iget v6, p0, Lsmartisan/app/IndicatorView;->mRadius:F

    const/high16 v7, 0x40800000    # 4.0f

    mul-float/2addr v7, v6

    int-to-float v5, v5

    const/high16 v8, 0x40000000    # 2.0f

    mul-float v9, v6, v8

    add-float/2addr v5, v9

    int-to-float v9, v2

    add-float/2addr v9, v6

    div-float v6, v7, v8

    .line 15
    iget v10, p0, Lsmartisan/app/IndicatorView;->mAll:I

    mul-int/lit8 v10, v10, 0x2

    sub-int/2addr v10, v3

    int-to-float v3, v10

    mul-float/2addr v6, v3

    sub-int/2addr v0, v2

    sub-int/2addr v0, v4

    int-to-float v0, v0

    div-float/2addr v0, v8

    div-float/2addr v6, v8

    sub-float/2addr v0, v6

    add-float/2addr v9, v0

    .line 16
    iget-object v0, p0, Lsmartisan/app/IndicatorView;->mIconIndicators:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    .line 17
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_7

    .line 18
    iget-object v3, p0, Lsmartisan/app/IndicatorView;->mIconIndicators:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsmartisan/app/IndicatorView$IconIndicator;

    .line 19
    iget v4, p0, Lsmartisan/app/IndicatorView;->mCur:I

    if-ne v4, v1, :cond_5

    .line 20
    iget-object v3, v3, Lsmartisan/app/IndicatorView$IconIndicator;->selectedDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 21
    :cond_5
    iget-object v3, v3, Lsmartisan/app/IndicatorView$IconIndicator;->normalDrawable:Landroid/graphics/drawable/Drawable;

    .line 22
    :goto_1
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 23
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v6

    .line 24
    div-int/lit8 v8, v4, 0x2

    int-to-float v8, v8

    sub-float v8, v9, v8

    int-to-float v10, v2

    add-float/2addr v8, v10

    float-to-int v8, v8

    .line 25
    div-int/lit8 v10, v6, 0x2

    int-to-float v10, v10

    sub-float v10, v5, v10

    float-to-int v10, v10

    add-int v11, v8, v4

    add-int/2addr v6, v10

    add-int/2addr v2, v4

    .line 26
    invoke-virtual {v3, v8, v10, v11, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 27
    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    move v0, v1

    :cond_7
    move v1, v0

    .line 28
    :goto_2
    iget v2, p0, Lsmartisan/app/IndicatorView;->mAll:I

    if-ge v1, v2, :cond_8

    int-to-float v2, v1

    mul-float/2addr v2, v7

    add-float/2addr v2, v9

    .line 29
    iget v3, p0, Lsmartisan/app/IndicatorView;->mRadius:F

    iget-object v4, p0, Lsmartisan/app/IndicatorView;->mPaintPageFill:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v5, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 30
    :cond_8
    iget v1, p0, Lsmartisan/app/IndicatorView;->mCur:I

    if-lt v1, v0, :cond_9

    int-to-float v0, v1

    mul-float/2addr v0, v7

    add-float/2addr v9, v0

    .line 31
    iget v0, p0, Lsmartisan/app/IndicatorView;->mRadius:F

    iget-object v1, p0, Lsmartisan/app/IndicatorView;->mPaintFill:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v5, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_9
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lsmartisan/app/IndicatorView;->measureLong(I)I

    move-result p1

    invoke-direct {p0, p2}, Lsmartisan/app/IndicatorView;->measureShort(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 1
    check-cast p1, Lsmartisan/app/IndicatorView$SavedState;

    .line 2
    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 3
    iget p1, p1, Lsmartisan/app/IndicatorView$SavedState;->currentPage:I

    iput p1, p0, Lsmartisan/app/IndicatorView;->mCur:I

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 2
    new-instance v1, Lsmartisan/app/IndicatorView$SavedState;

    invoke-direct {v1, v0}, Lsmartisan/app/IndicatorView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 3
    iget v0, p0, Lsmartisan/app/IndicatorView;->mCur:I

    iput v0, v1, Lsmartisan/app/IndicatorView$SavedState;->currentPage:I

    return-object v1
.end method

.method public setFillColor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/app/IndicatorView;->mPaintFill:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setPageColor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/app/IndicatorView;->mPaintPageFill:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setRadius(F)V
    .locals 0

    .line 1
    iput p1, p0, Lsmartisan/app/IndicatorView;->mRadius:F

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setState(I)V
    .locals 5

    .line 5
    iput p1, p0, Lsmartisan/app/IndicatorView;->mAll:I

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lsmartisan/widget/R$string;->indicator_content_des:I

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lsmartisan/app/IndicatorView;->mCur:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x0

    aput-object v2, v1, v4

    iget v2, p0, Lsmartisan/app/IndicatorView;->mAll:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setState(II)V
    .locals 4

    .line 1
    iput p1, p0, Lsmartisan/app/IndicatorView;->mAll:I

    .line 2
    iput p2, p0, Lsmartisan/app/IndicatorView;->mCur:I

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lsmartisan/widget/R$string;->indicator_content_des:I

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lsmartisan/app/IndicatorView;->mCur:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v0, v3

    iget v1, p0, Lsmartisan/app/IndicatorView;->mAll:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
