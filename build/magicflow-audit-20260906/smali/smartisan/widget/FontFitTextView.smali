.class public Lsmartisan/widget/FontFitTextView;
.super Landroid/widget/TextView;
.source "FontFitTextView.java"


# instance fields
.field private mFitMinSize:F

.field private final mFitPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lsmartisan/widget/FontFitTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lsmartisan/widget/FontFitTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lsmartisan/widget/FontFitTextView;->mFitPaint:Landroid/graphics/Paint;

    .line 5
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lsmartisan/widget/R$dimen;->font_fit_min_size:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lsmartisan/widget/FontFitTextView;->mFitMinSize:F

    return-void
.end method

.method private getFontHeight()F
    .locals 2

    .line 1
    iget-object v0, p0, Lsmartisan/widget/FontFitTextView;->mFitPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 2
    iget v1, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v1, v0

    return v1
.end method

.method private refitText(Ljava/lang/String;I)V
    .locals 5

    if-lez p2, :cond_6

    .line 1
    iget-object v0, p0, Lsmartisan/widget/FontFitTextView;->mFitPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v0

    sub-int/2addr p2, v0

    .line 3
    iget-object v0, p0, Lsmartisan/widget/FontFitTextView;->mFitPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 4
    iget-object v0, p0, Lsmartisan/widget/FontFitTextView;->mFitPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    int-to-float p2, p2

    cmpl-float v0, v0, p2

    if-lez v0, :cond_6

    .line 5
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    .line 6
    iget v1, p0, Lsmartisan/widget/FontFitTextView;->mFitMinSize:F

    cmpl-float v2, v0, v1

    if-lez v2, :cond_6

    :goto_0
    sub-float v2, v0, v1

    const/high16 v3, 0x3f000000    # 0.5f

    cmpl-float v2, v2, v3

    const/high16 v4, 0x40000000    # 2.0f

    if-lez v2, :cond_2

    add-float v2, v0, v1

    div-float/2addr v2, v4

    .line 7
    iget-object v3, p0, Lsmartisan/widget/FontFitTextView;->mFitPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 8
    iget-object v3, p0, Lsmartisan/widget/FontFitTextView;->mFitPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    cmpl-float v3, v3, p2

    if-ltz v3, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_0

    .line 9
    :cond_2
    iget p1, p0, Lsmartisan/widget/FontFitTextView;->mFitMinSize:F

    add-float/2addr p1, v3

    cmpl-float p1, v1, p1

    if-lez p1, :cond_4

    .line 10
    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result p1

    int-to-float p1, p1

    .line 11
    invoke-direct {p0}, Lsmartisan/widget/FontFitTextView;->getFontHeight()F

    move-result p2

    cmpl-float p2, p2, p1

    if-lez p2, :cond_4

    .line 12
    iget p2, p0, Lsmartisan/widget/FontFitTextView;->mFitMinSize:F

    :goto_1
    sub-float v0, v1, p2

    cmpl-float v0, v0, v3

    if-lez v0, :cond_5

    add-float v0, v1, p2

    div-float/2addr v0, v4

    .line 13
    iget-object v2, p0, Lsmartisan/widget/FontFitTextView;->mFitPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 14
    invoke-direct {p0}, Lsmartisan/widget/FontFitTextView;->getFontHeight()F

    move-result v2

    cmpl-float v2, v2, p1

    if-ltz v2, :cond_3

    move v1, v0

    goto :goto_1

    :cond_3
    move p2, v0

    goto :goto_1

    :cond_4
    move p2, v1

    :cond_5
    const/4 p1, 0x0

    .line 15
    invoke-virtual {p0, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_6
    :goto_2
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lsmartisan/widget/FontFitTextView;->refitText(Ljava/lang/String;I)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    if-eq p1, p3, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lsmartisan/widget/FontFitTextView;->refitText(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lsmartisan/widget/FontFitTextView;->refitText(Ljava/lang/String;I)V

    return-void
.end method

.method public setMinTextSize(F)V
    .locals 1

    .line 1
    iput p1, p0, Lsmartisan/widget/FontFitTextView;->mFitMinSize:F

    .line 2
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lsmartisan/widget/FontFitTextView;->refitText(Ljava/lang/String;I)V

    return-void
.end method
