.class public Lsmartisan/widget/MenuDialogTextView;
.super Lsmartisan/widget/FontFitTextView;
.source "MenuDialogTextView.java"


# instance fields
.field private limitX:F

.field private screenWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Lsmartisan/widget/FontFitTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 3
    iget p2, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v0, 0x42ba0000    # 93.0f

    mul-float/2addr p2, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p2, v0

    iput p2, p0, Lsmartisan/widget/MenuDialogTextView;->limitX:F

    .line 4
    iget p2, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lsmartisan/widget/MenuDialogTextView;->screenWidth:I

    .line 5
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lsmartisan/widget/R$dimen;->menu_dialog_item_text_min_size:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lsmartisan/widget/FontFitTextView;->setMinTextSize(F)V

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    .line 2
    iget v1, p0, Lsmartisan/widget/MenuDialogTextView;->screenWidth:I

    if-gt v0, v1, :cond_0

    .line 3
    invoke-super {p0, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v3, :cond_1

    const/4 v4, 0x2

    if-eq v2, v4, :cond_1

    const/4 v4, 0x3

    if-eq v2, v4, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    iget v2, p0, Lsmartisan/widget/MenuDialogTextView;->limitX:F

    cmpg-float v4, v1, v2

    if-ltz v4, :cond_2

    int-to-float v0, v0

    sub-float/2addr v0, v2

    cmpl-float v0, v1, v0

    if-lez v0, :cond_4

    :cond_2
    const/4 p1, 0x0

    .line 7
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setPressed(Z)V

    return v3

    .line 8
    :cond_3
    iget v2, p0, Lsmartisan/widget/MenuDialogTextView;->limitX:F

    cmpg-float v4, v1, v2

    if-ltz v4, :cond_5

    int-to-float v0, v0

    sub-float/2addr v0, v2

    cmpl-float v0, v1, v0

    if-lez v0, :cond_4

    goto :goto_1

    .line 9
    :cond_4
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_5
    :goto_1
    return v3
.end method
