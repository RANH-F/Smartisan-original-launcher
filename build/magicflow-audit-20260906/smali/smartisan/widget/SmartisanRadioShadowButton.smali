.class public Lsmartisan/widget/SmartisanRadioShadowButton;
.super Landroid/widget/RadioButton;
.source "SmartisanRadioShadowButton.java"


# instance fields
.field private mShadowColors:Landroid/content/res/ColorStateList;

.field private mShadowDx:F

.field private mShadowDy:F

.field private mShadowRadius:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, v0}, Lsmartisan/widget/SmartisanRadioShadowButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lsmartisan/widget/SmartisanRadioShadowButton;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lsmartisan/widget/SmartisanRadioShadowButton;->updateShadowColor()V

    return-void
.end method

.method private updateShadowColor()V
    .locals 6

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SmartisanRadioShadowButton;->mShadowColors:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    .line 2
    iget v1, p0, Lsmartisan/widget/SmartisanRadioShadowButton;->mShadowRadius:F

    iget v2, p0, Lsmartisan/widget/SmartisanRadioShadowButton;->mShadowDx:F

    iget v3, p0, Lsmartisan/widget/SmartisanRadioShadowButton;->mShadowDy:F

    .line 3
    invoke-virtual {p0}, Landroid/widget/RadioButton;->getDrawableState()[I

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 4
    invoke-virtual {p0, v1, v2, v3, v0}, Landroid/widget/RadioButton;->setShadowLayer(FFFI)V

    .line 5
    invoke-virtual {p0}, Landroid/widget/RadioButton;->invalidate()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/RadioButton;->drawableStateChanged()V

    .line 2
    invoke-direct {p0}, Lsmartisan/widget/SmartisanRadioShadowButton;->updateShadowColor()V

    return-void
.end method

.method public setFreezesText(Z)V
    .locals 0

    const/4 p1, 0x0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/RadioButton;->setFreezesText(Z)V

    return-void
.end method

.method public setShadowColorState(Landroid/content/res/ColorStateList;FFF)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/SmartisanRadioShadowButton;->mShadowColors:Landroid/content/res/ColorStateList;

    .line 2
    iput p2, p0, Lsmartisan/widget/SmartisanRadioShadowButton;->mShadowDx:F

    .line 3
    iput p3, p0, Lsmartisan/widget/SmartisanRadioShadowButton;->mShadowDy:F

    .line 4
    iput p4, p0, Lsmartisan/widget/SmartisanRadioShadowButton;->mShadowRadius:F

    .line 5
    invoke-direct {p0}, Lsmartisan/widget/SmartisanRadioShadowButton;->updateShadowColor()V

    return-void
.end method
