.class public Lsmartisan/widget/ButtonGroup;
.super Landroid/widget/LinearLayout;
.source "ButtonGroup.java"


# static fields
.field private static final DEFAULT_BTN_COUNT:I = 0x3

.field private static final MAX_FONT_SCALE_WITH_TEXT:F = 0.93f


# instance fields
.field private mBtnCount:I

.field private mBtns:[Lsmartisan/widget/ShadowButton;

.field private mContainer:Landroid/widget/LinearLayout;

.field private mHasBtnGap:Z

.field private mMaxFontSize:F

.field private mShadowComponent:Lsmartisan/widget/ShadowComponent;

.field private mShadowView:Landroid/widget/ImageView;

.field private mSupportLayout:Z

.field private mUseMaxFontSize:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lsmartisan/widget/ButtonGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lsmartisan/widget/ButtonGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 5
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lsmartisan/widget/R$layout;->smartisan_button_group_layout:I

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 6
    sget v1, Lsmartisan/widget/R$id;->ll_group_button_container:I

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lsmartisan/widget/ButtonGroup;->mContainer:Landroid/widget/LinearLayout;

    .line 7
    sget v1, Lsmartisan/widget/R$id;->smartisan_iv_btn_group_shadow:I

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lsmartisan/widget/ButtonGroup;->mShadowView:Landroid/widget/ImageView;

    .line 8
    sget-object v1, Lsmartisan/widget/R$styleable;->ButtonGroup:[I

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 9
    sget v1, Lsmartisan/widget/R$styleable;->ButtonGroup_button_count:I

    const/4 v2, 0x3

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lsmartisan/widget/ButtonGroup;->mBtnCount:I

    .line 10
    sget v1, Lsmartisan/widget/R$styleable;->ButtonGroup_has_button_gap:I

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lsmartisan/widget/ButtonGroup;->mHasBtnGap:Z

    .line 11
    sget v1, Lsmartisan/widget/R$styleable;->ButtonGroup_support_layout:I

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lsmartisan/widget/ButtonGroup;->mSupportLayout:Z

    .line 12
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 13
    iget p1, p0, Lsmartisan/widget/ButtonGroup;->mBtnCount:I

    invoke-direct {p0, p1}, Lsmartisan/widget/ButtonGroup;->verifyButtonCount(I)V

    .line 14
    invoke-direct {p0}, Lsmartisan/widget/ButtonGroup;->setupButtons()V

    .line 15
    invoke-direct {p0, p2, p3}, Lsmartisan/widget/ButtonGroup;->initShadowView(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private initShadowView(Landroid/util/AttributeSet;I)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lsmartisan/widget/ButtonGroup;->mSupportLayout:Z

    if-nez v0, :cond_0

    .line 2
    iget-object p1, p0, Lsmartisan/widget/ButtonGroup;->mShadowView:Landroid/widget/ImageView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    .line 3
    :cond_0
    new-instance v0, Lsmartisan/widget/ButtonGroup$1;

    invoke-direct {v0, p0, p0, p1, p2}, Lsmartisan/widget/ButtonGroup$1;-><init>(Lsmartisan/widget/ButtonGroup;Landroid/view/View;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lsmartisan/widget/ButtonGroup;->mShadowComponent:Lsmartisan/widget/ShadowComponent;

    return-void
.end method

.method private setButtonTextSize(Landroid/widget/TextView;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget v0, p0, Lsmartisan/widget/ButtonGroup;->mMaxFontSize:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 4
    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    iget v2, v0, Landroid/content/res/Configuration;->fontScale:F

    div-float/2addr v1, v2

    const v2, 0x3f6e147b    # 0.93f

    mul-float/2addr v1, v2

    iput v1, p0, Lsmartisan/widget/ButtonGroup;->mMaxFontSize:F

    .line 5
    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    div-float/2addr v1, v0

    iget v0, p0, Lsmartisan/widget/ButtonGroup;->mMaxFontSize:F

    cmpl-float v0, v1, v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lsmartisan/widget/ButtonGroup;->mUseMaxFontSize:Z

    .line 7
    :cond_1
    iget-boolean v0, p0, Lsmartisan/widget/ButtonGroup;->mUseMaxFontSize:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 8
    iget v1, p0, Lsmartisan/widget/ButtonGroup;->mMaxFontSize:F

    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_2
    return-void
.end method

.method private setButtonsAppearance()V
    .locals 7

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget v1, p0, Lsmartisan/widget/ButtonGroup;->mBtnCount:I

    if-ge v0, v1, :cond_3

    .line 2
    iget-boolean v2, p0, Lsmartisan/widget/ButtonGroup;->mHasBtnGap:Z

    const/4 v3, 0x1

    if-nez v2, :cond_2

    if-le v1, v3, :cond_2

    .line 3
    iget-object v1, p0, Lsmartisan/widget/ButtonGroup;->mBtns:[Lsmartisan/widget/ShadowButton;

    aget-object v1, v1, v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v4, Lsmartisan/widget/R$style;->SmallButton_Filter:I

    invoke-virtual {v1, v2, v4}, Landroid/widget/Button;->setTextAppearance(Landroid/content/Context;I)V

    if-nez v0, :cond_0

    .line 4
    iget-object v1, p0, Lsmartisan/widget/ButtonGroup;->mBtns:[Lsmartisan/widget/ShadowButton;

    aget-object v1, v1, v0

    sget v2, Lsmartisan/widget/R$drawable;->selector_small_btn_filter_left:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_1

    .line 5
    :cond_0
    iget v1, p0, Lsmartisan/widget/ButtonGroup;->mBtnCount:I

    sub-int/2addr v1, v3

    if-ne v0, v1, :cond_1

    .line 6
    iget-object v1, p0, Lsmartisan/widget/ButtonGroup;->mBtns:[Lsmartisan/widget/ShadowButton;

    aget-object v1, v1, v0

    sget v2, Lsmartisan/widget/R$drawable;->selector_small_btn_filter_right:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_1

    .line 7
    :cond_1
    iget-object v1, p0, Lsmartisan/widget/ButtonGroup;->mBtns:[Lsmartisan/widget/ShadowButton;

    aget-object v1, v1, v0

    sget v2, Lsmartisan/widget/R$drawable;->selector_small_btn_filter_middle:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 8
    :goto_1
    sget v1, Lsmartisan/widget/R$color;->filter_button_text_shadow_colors:I

    .line 9
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 10
    iget-object v2, p0, Lsmartisan/widget/ButtonGroup;->mBtns:[Lsmartisan/widget/ShadowButton;

    aget-object v2, v2, v0

    const v4, 0x3dcccccd    # 0.1f

    const/4 v5, 0x0

    const/high16 v6, -0x40000000    # -2.0f

    invoke-virtual {v2, v1, v4, v5, v6}, Lsmartisan/widget/ShadowButton;->setShadowColors(Landroid/content/res/ColorStateList;FFF)V

    .line 11
    iget-object v1, p0, Lsmartisan/widget/ButtonGroup;->mBtns:[Lsmartisan/widget/ShadowButton;

    aget-object v1, v1, v0

    invoke-direct {p0, v1}, Lsmartisan/widget/ButtonGroup;->setButtonTextSize(Landroid/widget/TextView;)V

    goto :goto_2

    .line 12
    :cond_2
    iget-object v1, p0, Lsmartisan/widget/ButtonGroup;->mBtns:[Lsmartisan/widget/ShadowButton;

    aget-object v1, v1, v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v4, Lsmartisan/widget/R$style;->SmallButton_Standard:I

    invoke-virtual {v1, v2, v4}, Landroid/widget/Button;->setTextAppearance(Landroid/content/Context;I)V

    .line 13
    iget-object v1, p0, Lsmartisan/widget/ButtonGroup;->mBtns:[Lsmartisan/widget/ShadowButton;

    aget-object v1, v1, v0

    sget v2, Lsmartisan/widget/R$drawable;->selector_small_btn_standard:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 14
    :goto_2
    iget-object v1, p0, Lsmartisan/widget/ButtonGroup;->mBtns:[Lsmartisan/widget/ShadowButton;

    aget-object v1, v1, v0

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 15
    iget-object v1, p0, Lsmartisan/widget/ButtonGroup;->mBtns:[Lsmartisan/widget/ShadowButton;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setMaxLines(I)V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_3
    return-void
.end method

.method private setupButtons()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lsmartisan/widget/ButtonGroup;->mHasBtnGap:Z

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lsmartisan/widget/R$dimen;->button_group_left_right_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 3
    iget-object v1, p0, Lsmartisan/widget/ButtonGroup;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v3

    invoke-virtual {v1, v0, v2, v0, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 4
    :cond_0
    iget v0, p0, Lsmartisan/widget/ButtonGroup;->mBtnCount:I

    new-array v0, v0, [Lsmartisan/widget/ShadowButton;

    iput-object v0, p0, Lsmartisan/widget/ButtonGroup;->mBtns:[Lsmartisan/widget/ShadowButton;

    .line 5
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lsmartisan/widget/R$dimen;->button_group_btn_gap:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    .line 6
    :goto_0
    iget v3, p0, Lsmartisan/widget/ButtonGroup;->mBtnCount:I

    if-ge v2, v3, :cond_2

    .line 7
    iget-object v3, p0, Lsmartisan/widget/ButtonGroup;->mBtns:[Lsmartisan/widget/ShadowButton;

    new-instance v4, Lsmartisan/widget/ShadowButton;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lsmartisan/widget/ShadowButton;-><init>(Landroid/content/Context;)V

    aput-object v4, v3, v2

    .line 8
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v1, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v4, 0x3f800000    # 1.0f

    .line 9
    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 10
    iget-boolean v4, p0, Lsmartisan/widget/ButtonGroup;->mHasBtnGap:Z

    if-eqz v4, :cond_1

    if-eqz v2, :cond_1

    neg-int v4, v0

    .line 11
    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 12
    :cond_1
    iget-object v4, p0, Lsmartisan/widget/ButtonGroup;->mBtns:[Lsmartisan/widget/ShadowButton;

    aget-object v4, v4, v2

    invoke-virtual {v4, v3}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 13
    iget-object v3, p0, Lsmartisan/widget/ButtonGroup;->mContainer:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lsmartisan/widget/ButtonGroup;->mBtns:[Lsmartisan/widget/ShadowButton;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 14
    :cond_2
    invoke-direct {p0}, Lsmartisan/widget/ButtonGroup;->setButtonsAppearance()V

    return-void
.end method

.method private verifyButtonCount(I)V
    .locals 3

    if-lez p1, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "the count must be a positive value, but count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getButton(I)Lsmartisan/widget/ShadowButton;
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/ButtonGroup;->mBtns:[Lsmartisan/widget/ShadowButton;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getButtonCount()I
    .locals 1

    .line 1
    iget v0, p0, Lsmartisan/widget/ButtonGroup;->mBtnCount:I

    return v0
.end method

.method public setButtonActivated(I)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 1
    :goto_0
    iget v2, p0, Lsmartisan/widget/ButtonGroup;->mBtnCount:I

    if-ge v1, v2, :cond_1

    .line 2
    iget-object v2, p0, Lsmartisan/widget/ButtonGroup;->mBtns:[Lsmartisan/widget/ShadowButton;

    aget-object v2, v2, v1

    if-ne v1, p1, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    move v3, v0

    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setActivated(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setButtonCount(IZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lsmartisan/widget/ButtonGroup;->verifyButtonCount(I)V

    .line 2
    iput p1, p0, Lsmartisan/widget/ButtonGroup;->mBtnCount:I

    .line 3
    iput-boolean p2, p0, Lsmartisan/widget/ButtonGroup;->mHasBtnGap:Z

    .line 4
    invoke-direct {p0}, Lsmartisan/widget/ButtonGroup;->setupButtons()V

    return-void
.end method

.method public setButtonGroupBackground(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/ButtonGroup;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    return-void
.end method

.method public setButtonGroupBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lsmartisan/widget/ButtonGroup;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setButtonGroupBackgroundColor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/ButtonGroup;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    return-void
.end method

.method public setButtonGroupShadowVisibility(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lsmartisan/widget/ButtonGroup;->mSupportLayout:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lsmartisan/widget/ButtonGroup;->mShadowComponent:Lsmartisan/widget/ShadowComponent;

    invoke-virtual {v0, p1}, Lsmartisan/widget/ShadowComponent;->setShadowVisible(Z)V

    goto :goto_1

    .line 3
    :cond_0
    iget-object v0, p0, Lsmartisan/widget/ButtonGroup;->mShadowView:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public setButtonText(II)V
    .locals 1

    .line 2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lsmartisan/widget/ButtonGroup;->setButtonText(ILjava/lang/CharSequence;)V

    return-void
.end method

.method public setButtonText(ILjava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/ButtonGroup;->mBtns:[Lsmartisan/widget/ShadowButton;

    aget-object p1, v0, p1

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setShadowDrawable(I)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lsmartisan/widget/ButtonGroup;->mSupportLayout:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lsmartisan/widget/ButtonGroup;->mShadowComponent:Lsmartisan/widget/ShadowComponent;

    invoke-virtual {v0, p1}, Lsmartisan/widget/ShadowComponent;->setShadowDrawable(I)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lsmartisan/widget/ButtonGroup;->mShadowView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :goto_0
    return-void
.end method
