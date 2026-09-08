.class public Lsmartisan/widget/ShadowTextView;
.super Landroid/widget/TextView;
.source "ShadowTextView.java"


# instance fields
.field private mEnableShadow:Z

.field private mShadowColors:Landroid/content/res/ColorStateList;

.field private mShadowDx:F

.field private mShadowDy:F

.field private mShadowRadius:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lsmartisan/widget/ShadowTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010084

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lsmartisan/widget/ShadowTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Lsmartisan/widget/ShadowTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lsmartisan/widget/ShadowTextView;->mEnableShadow:Z

    .line 6
    sget-object v0, Lsmartisan/widget/R$styleable;->ShadowTextView:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 7
    sget p2, Lsmartisan/widget/R$styleable;->ShadowTextView_shadowColors:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Lsmartisan/widget/ShadowTextView;->mShadowColors:Landroid/content/res/ColorStateList;

    .line 8
    sget p2, Lsmartisan/widget/R$styleable;->ShadowTextView_android_shadowDx:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lsmartisan/widget/ShadowTextView;->mShadowDx:F

    .line 9
    sget p2, Lsmartisan/widget/R$styleable;->ShadowTextView_android_shadowDy:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lsmartisan/widget/ShadowTextView;->mShadowDy:F

    .line 10
    sget p2, Lsmartisan/widget/R$styleable;->ShadowTextView_android_shadowRadius:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lsmartisan/widget/ShadowTextView;->mShadowRadius:F

    .line 11
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 12
    iget-object p1, p0, Lsmartisan/widget/ShadowTextView;->mShadowColors:Landroid/content/res/ColorStateList;

    iget p2, p0, Lsmartisan/widget/ShadowTextView;->mShadowRadius:F

    iget p3, p0, Lsmartisan/widget/ShadowTextView;->mShadowDx:F

    iget p4, p0, Lsmartisan/widget/ShadowTextView;->mShadowDy:F

    invoke-static {p0, p1, p2, p3, p4}, Lsmartisan/widget/ShadowTextView;->updateTextShadow(Landroid/widget/TextView;Landroid/content/res/ColorStateList;FFF)V

    return-void
.end method

.method public static updateTextShadow(Landroid/widget/TextView;Landroid/content/res/ColorStateList;FFF)V
    .locals 2

    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    .line 2
    invoke-virtual {p0, p2, p3, p4, p1}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 3
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/widget/TextView;->drawableStateChanged()V

    .line 2
    iget-boolean v0, p0, Lsmartisan/widget/ShadowTextView;->mEnableShadow:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lsmartisan/widget/ShadowTextView;->mShadowColors:Landroid/content/res/ColorStateList;

    iget v1, p0, Lsmartisan/widget/ShadowTextView;->mShadowRadius:F

    iget v2, p0, Lsmartisan/widget/ShadowTextView;->mShadowDx:F

    iget v3, p0, Lsmartisan/widget/ShadowTextView;->mShadowDy:F

    invoke-static {p0, v0, v1, v2, v3}, Lsmartisan/widget/ShadowTextView;->updateTextShadow(Landroid/widget/TextView;Landroid/content/res/ColorStateList;FFF)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lsmartisan/widget/ShadowTextView;->mShadowColors:Landroid/content/res/ColorStateList;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, v1, v1}, Lsmartisan/widget/ShadowTextView;->updateTextShadow(Landroid/widget/TextView;Landroid/content/res/ColorStateList;FFF)V

    :goto_0
    return-void
.end method

.method public setShadowColors(Landroid/content/res/ColorStateList;FFF)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/ShadowTextView;->mShadowColors:Landroid/content/res/ColorStateList;

    .line 2
    iput p2, p0, Lsmartisan/widget/ShadowTextView;->mShadowRadius:F

    .line 3
    iput p3, p0, Lsmartisan/widget/ShadowTextView;->mShadowDx:F

    .line 4
    iput p4, p0, Lsmartisan/widget/ShadowTextView;->mShadowDy:F

    .line 5
    invoke-static {p0, p1, p2, p3, p4}, Lsmartisan/widget/ShadowTextView;->updateTextShadow(Landroid/widget/TextView;Landroid/content/res/ColorStateList;FFF)V

    return-void
.end method

.method public setShadowEnable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lsmartisan/widget/ShadowTextView;->mEnableShadow:Z

    .line 2
    invoke-virtual {p0}, Landroid/widget/TextView;->refreshDrawableState()V

    return-void
.end method
