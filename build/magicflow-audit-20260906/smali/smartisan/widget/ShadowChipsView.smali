.class public Lsmartisan/widget/ShadowChipsView;
.super Landroid/widget/RelativeLayout;
.source "ShadowChipsView.java"


# instance fields
.field private mChipsView:Lsmartisan/widget/ChipsView;

.field private mText:Ljava/lang/CharSequence;

.field private mType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lsmartisan/widget/ShadowChipsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lsmartisan/widget/ShadowChipsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    sget-object v0, Lsmartisan/widget/R$styleable;->ChipsView:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 5
    sget v2, Lsmartisan/widget/R$styleable;->ChipsView_type:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lsmartisan/widget/ShadowChipsView;->mType:I

    .line 6
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 7
    sget-object v0, Landroid/R$styleable;->TextView:[I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 p3, 0x1

    const/16 v0, 0x1e

    .line 8
    invoke-virtual {p2, v0, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 9
    invoke-virtual {p2, v1, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    const/16 v2, 0xa

    const v3, 0x800013

    .line 10
    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    const/16 v3, 0x16

    .line 11
    invoke-virtual {p2, v3, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    const/16 v4, 0x12

    .line 12
    invoke-virtual {p2, v4}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 13
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 14
    iput-object v4, p0, Lsmartisan/widget/ShadowChipsView;->mText:Ljava/lang/CharSequence;

    .line 15
    :cond_0
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 16
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lsmartisan/widget/R$layout;->chips_view_layout:I

    invoke-virtual {p1, p2, p0, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 17
    sget p1, Lsmartisan/widget/R$id;->chips_view:I

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lsmartisan/widget/ChipsView;

    iput-object p1, p0, Lsmartisan/widget/ShadowChipsView;->mChipsView:Lsmartisan/widget/ChipsView;

    .line 18
    iget-object p1, p0, Lsmartisan/widget/ShadowChipsView;->mChipsView:Lsmartisan/widget/ChipsView;

    const/high16 p2, 0x41580000    # 13.5f

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 19
    iget-object p1, p0, Lsmartisan/widget/ShadowChipsView;->mChipsView:Lsmartisan/widget/ChipsView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setClickable(Z)V

    .line 20
    iget-object p1, p0, Lsmartisan/widget/ShadowChipsView;->mChipsView:Lsmartisan/widget/ChipsView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 21
    iget-object p1, p0, Lsmartisan/widget/ShadowChipsView;->mChipsView:Lsmartisan/widget/ChipsView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 22
    iget-object p1, p0, Lsmartisan/widget/ShadowChipsView;->mChipsView:Lsmartisan/widget/ChipsView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    if-ne v3, p3, :cond_1

    .line 23
    iget-object p1, p0, Lsmartisan/widget/ShadowChipsView;->mChipsView:Lsmartisan/widget/ChipsView;

    invoke-virtual {p1}, Landroid/widget/TextView;->setSingleLine()V

    .line 24
    :cond_1
    iget p1, p0, Lsmartisan/widget/ShadowChipsView;->mType:I

    invoke-virtual {p0, p1}, Lsmartisan/widget/ShadowChipsView;->setType(I)V

    .line 25
    iget-object p1, p0, Lsmartisan/widget/ShadowChipsView;->mText:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lsmartisan/widget/ShadowChipsView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public getChipsView()Lsmartisan/widget/ChipsView;
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/ShadowChipsView;->mChipsView:Lsmartisan/widget/ChipsView;

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/ShadowChipsView;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/ShadowChipsView;->mChipsView:Lsmartisan/widget/ChipsView;

    invoke-virtual {v0}, Lsmartisan/widget/ChipsView;->getType()I

    move-result v0

    return v0
.end method

.method public hideShadow()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iput-object p1, p0, Lsmartisan/widget/ShadowChipsView;->mText:Ljava/lang/CharSequence;

    .line 3
    iget-object v0, p0, Lsmartisan/widget/ShadowChipsView;->mChipsView:Lsmartisan/widget/ChipsView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setType(I)V
    .locals 1

    .line 1
    iput p1, p0, Lsmartisan/widget/ShadowChipsView;->mType:I

    .line 2
    iget-object v0, p0, Lsmartisan/widget/ShadowChipsView;->mChipsView:Lsmartisan/widget/ChipsView;

    invoke-virtual {v0, p1}, Lsmartisan/widget/ChipsView;->setType(I)V

    .line 3
    iget p1, p0, Lsmartisan/widget/ShadowChipsView;->mType:I

    const/16 v0, 0x8

    if-eq p1, v0, :cond_1

    const/16 v0, 0xc

    if-eq p1, v0, :cond_1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_1

    const/16 v0, 0x9

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lsmartisan/widget/ShadowChipsView;->hideShadow()V

    goto :goto_1

    .line 5
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lsmartisan/widget/ShadowChipsView;->showShadow()V

    :goto_1
    return-void
.end method

.method public showShadow()V
    .locals 1

    .line 1
    sget v0, Lsmartisan/widget/R$drawable;->chips_view_layout_bg:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    return-void
.end method
