.class public Lsmartisan/widget/SmartisanNumberPickerExtended;
.super Lsmartisan/widget/SmartisanNumberPickerEx;
.source "SmartisanNumberPickerExtended.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsmartisan/widget/SmartisanNumberPickerExtended$FackValueWrapperFormatter;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private mFackIndex:I

.field private mTempMaxValue:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lsmartisan/widget/SmartisanNumberPickerEx;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x3

    .line 2
    iput p1, p0, Lsmartisan/widget/SmartisanNumberPickerExtended;->mFackIndex:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lsmartisan/widget/SmartisanNumberPickerEx;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x3

    .line 4
    iput p1, p0, Lsmartisan/widget/SmartisanNumberPickerExtended;->mFackIndex:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lsmartisan/widget/SmartisanNumberPickerEx;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x3

    .line 6
    iput p1, p0, Lsmartisan/widget/SmartisanNumberPickerExtended;->mFackIndex:I

    return-void
.end method

.method static synthetic access$000(Lsmartisan/widget/SmartisanNumberPickerExtended;)I
    .locals 0

    .line 1
    iget p0, p0, Lsmartisan/widget/SmartisanNumberPickerExtended;->mFackIndex:I

    return p0
.end method


# virtual methods
.method public scrollBy(II)V
    .locals 4

    const/4 v0, 0x0

    if-lez p2, :cond_0

    .line 1
    invoke-virtual {p0}, Lsmartisan/widget/SmartisanNumberPickerEx;->getValue()I

    move-result v1

    invoke-virtual {p0}, Lsmartisan/widget/SmartisanNumberPickerEx;->getMinValue()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 2
    invoke-super {p0, p1, v0}, Lsmartisan/widget/SmartisanNumberPickerEx;->scrollBy(II)V

    goto :goto_0

    :cond_0
    if-gez p2, :cond_1

    .line 3
    invoke-virtual {p0}, Lsmartisan/widget/SmartisanNumberPickerEx;->getValue()I

    move-result v1

    invoke-virtual {p0}, Lsmartisan/widget/SmartisanNumberPickerEx;->getMaxValue()I

    move-result v2

    iget v3, p0, Lsmartisan/widget/SmartisanNumberPickerExtended;->mFackIndex:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    if-lt v1, v2, :cond_1

    .line 4
    invoke-super {p0, p1, v0}, Lsmartisan/widget/SmartisanNumberPickerEx;->scrollBy(II)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-super {p0, p1, p2}, Lsmartisan/widget/SmartisanNumberPickerEx;->scrollBy(II)V

    :goto_0
    return-void
.end method

.method public setFackIndex(I)V
    .locals 0

    .line 1
    iput p1, p0, Lsmartisan/widget/SmartisanNumberPickerExtended;->mFackIndex:I

    .line 2
    invoke-virtual {p0}, Lsmartisan/widget/SmartisanNumberPickerEx;->getMaxValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lsmartisan/widget/SmartisanNumberPickerExtended;->setMaxValue(I)V

    return-void
.end method

.method public setFormatter(Lsmartisan/widget/SmartisanNumberPickerEx$Formatter;)V
    .locals 1

    .line 1
    new-instance v0, Lsmartisan/widget/SmartisanNumberPickerExtended$FackValueWrapperFormatter;

    invoke-direct {v0, p0, p1}, Lsmartisan/widget/SmartisanNumberPickerExtended$FackValueWrapperFormatter;-><init>(Lsmartisan/widget/SmartisanNumberPickerExtended;Lsmartisan/widget/SmartisanNumberPickerEx$Formatter;)V

    invoke-super {p0, v0}, Lsmartisan/widget/SmartisanNumberPickerEx;->setFormatter(Lsmartisan/widget/SmartisanNumberPickerEx$Formatter;)V

    return-void
.end method

.method public setMaxValue(I)V
    .locals 1

    .line 1
    iget v0, p0, Lsmartisan/widget/SmartisanNumberPickerExtended;->mFackIndex:I

    add-int/2addr p1, v0

    iput p1, p0, Lsmartisan/widget/SmartisanNumberPickerExtended;->mTempMaxValue:I

    .line 2
    iget p1, p0, Lsmartisan/widget/SmartisanNumberPickerExtended;->mTempMaxValue:I

    invoke-super {p0, p1}, Lsmartisan/widget/SmartisanNumberPickerEx;->setMaxValue(I)V

    return-void
.end method
