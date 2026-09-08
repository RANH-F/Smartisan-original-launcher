.class public Lsmartisan/widget/ChipsView;
.super Landroid/widget/TextView;
.source "ChipsView.java"


# static fields
.field public static final CHIPS_DEFAULT_FONT_SIZE:F = 13.5f

.field public static final CHIPS_MAX_LINES:I = 0x1

.field public static final ERROR:I = 0x4

.field public static final FLOATED:I = 0x8

.field public static final FLOATED_ERROR:I = 0xc

.field public static final FLOATED_REMOVE:I = 0xa

.field public static final FLOATED_VIP:I = 0x9

.field public static final HISTORY:I = 0x90

.field public static final HOT:I = 0x91

.field public static final LIGHT:I = 0x93

.field public static final NORMAL:I = 0x0

.field public static final RECOMMENDED:I = 0x92

.field public static final REMOVE:I = 0x2

.field public static final REMOVE_ERROR:I = 0x6

.field public static final VIP:I = 0x1

.field public static final VIP_ERROR:I = 0x5


# instance fields
.field private mType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lsmartisan/widget/ChipsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lsmartisan/widget/ChipsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lsmartisan/widget/ChipsView;->mType:I

    .line 5
    sget-object v1, Lsmartisan/widget/R$styleable;->ChipsView:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 6
    sget v2, Lsmartisan/widget/R$styleable;->ChipsView_type:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 7
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 8
    sget-object v1, Landroid/R$styleable;->TextView:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x1

    const/16 p3, 0x1e

    .line 9
    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    const/16 v0, 0xa

    const v1, 0x800013

    .line 10
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    const/16 v1, 0x16

    .line 11
    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    const/high16 v3, 0x41580000    # 13.5f

    .line 12
    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 13
    invoke-virtual {p0, p3}, Landroid/widget/TextView;->setClickable(Z)V

    .line 14
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 15
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    if-ne v1, p2, :cond_0

    .line 16
    invoke-virtual {p0}, Landroid/widget/TextView;->setSingleLine()V

    .line 17
    :cond_0
    invoke-virtual {p0, v2}, Lsmartisan/widget/ChipsView;->setType(I)V

    .line 18
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private update()V
    .locals 4

    .line 1
    sget v0, Lsmartisan/widget/R$drawable;->chips_normal_selector:I

    .line 2
    sget v1, Lsmartisan/widget/R$color;->chips_normal_colorlist:I

    .line 3
    iget v2, p0, Lsmartisan/widget/ChipsView;->mType:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    const/4 v3, 0x4

    if-eq v2, v3, :cond_2

    const/4 v3, 0x5

    if-eq v2, v3, :cond_1

    const/4 v3, 0x6

    if-eq v2, v3, :cond_0

    const/16 v3, 0x9

    if-eq v2, v3, :cond_4

    const/16 v3, 0xa

    if-eq v2, v3, :cond_3

    const/16 v3, 0xc

    if-eq v2, v3, :cond_2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 4
    :pswitch_0
    sget v0, Lsmartisan/widget/R$drawable;->chips_light_selector:I

    .line 5
    sget v1, Lsmartisan/widget/R$color;->chips_light_colorlist:I

    goto :goto_0

    .line 6
    :pswitch_1
    sget v0, Lsmartisan/widget/R$drawable;->chips_recommended_selector:I

    .line 7
    sget v1, Lsmartisan/widget/R$color;->chips_recommended_colorlist:I

    goto :goto_0

    .line 8
    :pswitch_2
    sget v0, Lsmartisan/widget/R$drawable;->chips_hot_selector:I

    .line 9
    sget v1, Lsmartisan/widget/R$color;->chips_hot_colorlist:I

    goto :goto_0

    .line 10
    :pswitch_3
    sget v0, Lsmartisan/widget/R$drawable;->chips_history_selector:I

    .line 11
    sget v1, Lsmartisan/widget/R$color;->chips_history_colorlist:I

    goto :goto_0

    .line 12
    :cond_0
    sget v0, Lsmartisan/widget/R$drawable;->chips_remove_error_selector:I

    .line 13
    sget v1, Lsmartisan/widget/R$color;->chips_error_colorlist:I

    goto :goto_0

    .line 14
    :cond_1
    sget v0, Lsmartisan/widget/R$drawable;->chips_vip_error_selector:I

    .line 15
    sget v1, Lsmartisan/widget/R$color;->chips_error_colorlist:I

    goto :goto_0

    .line 16
    :cond_2
    sget v0, Lsmartisan/widget/R$drawable;->chips_error_selector:I

    .line 17
    sget v1, Lsmartisan/widget/R$color;->chips_error_colorlist:I

    goto :goto_0

    .line 18
    :cond_3
    sget v0, Lsmartisan/widget/R$drawable;->chips_remove_selector:I

    goto :goto_0

    .line 19
    :cond_4
    sget v0, Lsmartisan/widget/R$drawable;->chips_vip_selector:I

    .line 20
    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 21
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x90
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateTextShadow(F)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lsmartisan/widget/R$color;->chips_shadow_colorlist:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x3dcccccd    # 0.1f

    const/4 v2, 0x0

    .line 2
    invoke-virtual {p0}, Landroid/widget/TextView;->getDrawableState()[I

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 3
    invoke-virtual {p0, v1, v2, p1, v0}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 4
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_0
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/TextView;->drawableStateChanged()V

    .line 2
    iget v0, p0, Lsmartisan/widget/ChipsView;->mType:I

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/16 v1, 0x93

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, v0}, Lsmartisan/widget/ChipsView;->updateTextShadow(F)V

    goto :goto_0

    :cond_0
    :pswitch_0
    const/high16 v0, -0x40000000    # -2.0f

    .line 4
    invoke-direct {p0, v0}, Lsmartisan/widget/ChipsView;->updateTextShadow(F)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getType()I
    .locals 1

    .line 1
    iget v0, p0, Lsmartisan/widget/ChipsView;->mType:I

    return v0
.end method

.method public setType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lsmartisan/widget/ChipsView;->mType:I

    .line 2
    invoke-direct {p0}, Lsmartisan/widget/ChipsView;->update()V

    return-void
.end method
