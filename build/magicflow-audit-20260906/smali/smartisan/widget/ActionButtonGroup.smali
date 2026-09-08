.class public Lsmartisan/widget/ActionButtonGroup;
.super Landroid/widget/LinearLayout;
.source "ActionButtonGroup.java"


# static fields
.field private static final ACTION_MODE_BOTH:I = 0x1

.field private static final ACTION_MODE_LEFT:I = 0x0

.field private static final MAX_FONT_SCALE_WITH_TEXT:F = 0.93f


# instance fields
.field private mActionMode:I

.field private mBtns:[Lsmartisan/widget/ShadowButton;

.field private mContainer:Landroid/widget/LinearLayout;

.field private mLeftActionButton:Landroid/widget/ImageButton;

.field private mMaxFontSize:F

.field private mRightActionButton:Landroid/widget/ImageButton;

.field private mShadowComponent:Lsmartisan/widget/ShadowComponent;

.field private mShadowView:Landroid/widget/ImageView;

.field private mSupportLayout:Z

.field private mUseMaxFontSize:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lsmartisan/widget/ActionButtonGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lsmartisan/widget/ActionButtonGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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

    iput-object v1, p0, Lsmartisan/widget/ActionButtonGroup;->mContainer:Landroid/widget/LinearLayout;

    .line 7
    sget v1, Lsmartisan/widget/R$id;->smartisan_iv_btn_group_shadow:I

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lsmartisan/widget/ActionButtonGroup;->mShadowView:Landroid/widget/ImageView;

    .line 8
    sget-object v1, Lsmartisan/widget/R$styleable;->ActionButtonGroup:[I

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 9
    sget v1, Lsmartisan/widget/R$styleable;->ActionButtonGroup_action_type:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lsmartisan/widget/ActionButtonGroup;->mActionMode:I

    .line 10
    sget v1, Lsmartisan/widget/R$styleable;->ActionButtonGroup_support_layout:I

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lsmartisan/widget/ActionButtonGroup;->mSupportLayout:Z

    .line 11
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 12
    invoke-direct {p0}, Lsmartisan/widget/ActionButtonGroup;->setupButtons()V

    .line 13
    invoke-direct {p0, p2, p3}, Lsmartisan/widget/ActionButtonGroup;->initShadowView(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private createActionButton()Landroid/widget/ImageButton;
    .locals 5

    .line 1
    new-instance v0, Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 3
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lsmartisan/widget/R$dimen;->smartisan_button_fixed_width:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    .line 4
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lsmartisan/widget/R$dimen;->samrtisan_button_fixed_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 5
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 6
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lsmartisan/widget/R$dimen;->smartisan_button_limit_min_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setMaxWidth(I)V

    .line 7
    sget v1, Lsmartisan/widget/R$drawable;->selector_small_btn_standard:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    return-object v0
.end method

.method private initShadowView(Landroid/util/AttributeSet;I)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lsmartisan/widget/ActionButtonGroup;->mSupportLayout:Z

    if-nez v0, :cond_0

    .line 2
    iget-object p1, p0, Lsmartisan/widget/ActionButtonGroup;->mShadowView:Landroid/widget/ImageView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    .line 3
    :cond_0
    new-instance v0, Lsmartisan/widget/ActionButtonGroup$1;

    invoke-direct {v0, p0, p0, p1, p2}, Lsmartisan/widget/ActionButtonGroup$1;-><init>(Lsmartisan/widget/ActionButtonGroup;Landroid/view/View;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lsmartisan/widget/ActionButtonGroup;->mShadowComponent:Lsmartisan/widget/ShadowComponent;

    return-void
.end method

.method private setButtonTextSize(Landroid/widget/TextView;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget v0, p0, Lsmartisan/widget/ActionButtonGroup;->mMaxFontSize:F

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

    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    div-float/2addr v1, v0

    const v0, 0x3f6e147b    # 0.93f

    mul-float/2addr v1, v0

    iput v1, p0, Lsmartisan/widget/ActionButtonGroup;->mMaxFontSize:F

    .line 5
    invoke-virtual {p1}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    iget v1, p0, Lsmartisan/widget/ActionButtonGroup;->mMaxFontSize:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lsmartisan/widget/ActionButtonGroup;->mUseMaxFontSize:Z

    .line 7
    :cond_1
    iget-boolean v0, p0, Lsmartisan/widget/ActionButtonGroup;->mUseMaxFontSize:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 8
    iget v1, p0, Lsmartisan/widget/ActionButtonGroup;->mMaxFontSize:F

    invoke-virtual {p1, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_2
    return-void
.end method

.method private setButtonsAppearance()V
    .locals 7

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lsmartisan/widget/ActionButtonGroup;->mBtns:[Lsmartisan/widget/ShadowButton;

    array-length v2, v1

    if-ge v0, v2, :cond_3

    .line 2
    array-length v2, v1

    const/4 v3, 0x1

    if-le v2, v3, :cond_2

    .line 3
    aget-object v1, v1, v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v4, Lsmartisan/widget/R$style;->SmallButton_Filter:I

    invoke-virtual {v1, v2, v4}, Landroid/widget/Button;->setTextAppearance(Landroid/content/Context;I)V

    if-nez v0, :cond_0

    .line 4
    iget-object v1, p0, Lsmartisan/widget/ActionButtonGroup;->mBtns:[Lsmartisan/widget/ShadowButton;

    aget-object v1, v1, v0

    sget v2, Lsmartisan/widget/R$drawable;->selector_small_btn_filter_left:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_1

    .line 5
    :cond_0
    iget-object v1, p0, Lsmartisan/widget/ActionButtonGroup;->mBtns:[Lsmartisan/widget/ShadowButton;

    array-length v2, v1

    sub-int/2addr v2, v3

    if-ne v0, v2, :cond_1

    .line 6
    aget-object v1, v1, v0

    sget v2, Lsmartisan/widget/R$drawable;->selector_small_btn_filter_right:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_1

    .line 7
    :cond_1
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
    iget-object v2, p0, Lsmartisan/widget/ActionButtonGroup;->mBtns:[Lsmartisan/widget/ShadowButton;

    aget-object v2, v2, v0

    const v4, 0x3dcccccd    # 0.1f

    const/4 v5, 0x0

    const/high16 v6, -0x40000000    # -2.0f

    invoke-virtual {v2, v1, v4, v5, v6}, Lsmartisan/widget/ShadowButton;->setShadowColors(Landroid/content/res/ColorStateList;FFF)V

    .line 11
    iget-object v1, p0, Lsmartisan/widget/ActionButtonGroup;->mBtns:[Lsmartisan/widget/ShadowButton;

    aget-object v1, v1, v0

    invoke-direct {p0, v1}, Lsmartisan/widget/ActionButtonGroup;->setButtonTextSize(Landroid/widget/TextView;)V

    goto :goto_2

    .line 12
    :cond_2
    aget-object v1, v1, v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v4, Lsmartisan/widget/R$style;->SmallButton_Standard:I

    invoke-virtual {v1, v2, v4}, Landroid/widget/Button;->setTextAppearance(Landroid/content/Context;I)V

    .line 13
    iget-object v1, p0, Lsmartisan/widget/ActionButtonGroup;->mBtns:[Lsmartisan/widget/ShadowButton;

    aget-object v1, v1, v0

    sget v2, Lsmartisan/widget/R$drawable;->selector_small_btn_standard:I

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 14
    :goto_2
    iget-object v1, p0, Lsmartisan/widget/ActionButtonGroup;->mBtns:[Lsmartisan/widget/ShadowButton;

    aget-object v1, v1, v0

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 15
    iget-object v1, p0, Lsmartisan/widget/ActionButtonGroup;->mBtns:[Lsmartisan/widget/ShadowButton;

    aget-object v1, v1, v0

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setMaxLines(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private setupButtons()V
    .locals 9

    .line 1
    invoke-direct {p0}, Lsmartisan/widget/ActionButtonGroup;->createActionButton()Landroid/widget/ImageButton;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 3
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lsmartisan/widget/R$dimen;->action_button_left_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5
    iget-object v1, p0, Lsmartisan/widget/ActionButtonGroup;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 6
    iput-object v0, p0, Lsmartisan/widget/ActionButtonGroup;->mLeftActionButton:Landroid/widget/ImageButton;

    .line 7
    invoke-virtual {p0}, Lsmartisan/widget/ActionButtonGroup;->getButtonCount()I

    move-result v0

    .line 8
    iget v1, p0, Lsmartisan/widget/ActionButtonGroup;->mActionMode:I

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, -0x2

    const/4 v4, 0x0

    if-nez v1, :cond_0

    .line 9
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v5, Lsmartisan/widget/R$dimen;->button_group_left_right_padding:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 10
    iget-object v5, p0, Lsmartisan/widget/ActionButtonGroup;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v6

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v7

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v8

    invoke-virtual {v5, v6, v7, v1, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 11
    new-array v1, v0, [Lsmartisan/widget/ShadowButton;

    iput-object v1, p0, Lsmartisan/widget/ActionButtonGroup;->mBtns:[Lsmartisan/widget/ShadowButton;

    move v1, v4

    :goto_0
    if-ge v1, v0, :cond_2

    .line 12
    iget-object v5, p0, Lsmartisan/widget/ActionButtonGroup;->mBtns:[Lsmartisan/widget/ShadowButton;

    new-instance v6, Lsmartisan/widget/ShadowButton;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Lsmartisan/widget/ShadowButton;-><init>(Landroid/content/Context;)V

    aput-object v6, v5, v1

    .line 13
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 14
    iput v2, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 15
    iget-object v6, p0, Lsmartisan/widget/ActionButtonGroup;->mBtns:[Lsmartisan/widget/ShadowButton;

    aget-object v6, v6, v1

    invoke-virtual {v6, v5}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 16
    iget-object v5, p0, Lsmartisan/widget/ActionButtonGroup;->mContainer:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lsmartisan/widget/ActionButtonGroup;->mBtns:[Lsmartisan/widget/ShadowButton;

    aget-object v6, v6, v1

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 17
    :cond_0
    new-array v1, v0, [Lsmartisan/widget/ShadowButton;

    iput-object v1, p0, Lsmartisan/widget/ActionButtonGroup;->mBtns:[Lsmartisan/widget/ShadowButton;

    move v1, v4

    :goto_1
    if-ge v1, v0, :cond_1

    .line 18
    iget-object v5, p0, Lsmartisan/widget/ActionButtonGroup;->mBtns:[Lsmartisan/widget/ShadowButton;

    new-instance v6, Lsmartisan/widget/ShadowButton;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Lsmartisan/widget/ShadowButton;-><init>(Landroid/content/Context;)V

    aput-object v6, v5, v1

    .line 19
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 20
    iput v2, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 21
    iget-object v6, p0, Lsmartisan/widget/ActionButtonGroup;->mBtns:[Lsmartisan/widget/ShadowButton;

    aget-object v6, v6, v1

    invoke-virtual {v6, v5}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 22
    iget-object v5, p0, Lsmartisan/widget/ActionButtonGroup;->mBtns:[Lsmartisan/widget/ShadowButton;

    aget-object v5, v5, v1

    const/16 v6, 0x13

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setGravity(I)V

    .line 23
    iget-object v5, p0, Lsmartisan/widget/ActionButtonGroup;->mContainer:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lsmartisan/widget/ActionButtonGroup;->mBtns:[Lsmartisan/widget/ShadowButton;

    aget-object v6, v6, v1

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 24
    :cond_1
    invoke-direct {p0}, Lsmartisan/widget/ActionButtonGroup;->createActionButton()Landroid/widget/ImageButton;

    move-result-object v0

    .line 25
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 26
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lsmartisan/widget/R$dimen;->action_button_left_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 27
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 28
    iget-object v1, p0, Lsmartisan/widget/ActionButtonGroup;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 29
    iput-object v0, p0, Lsmartisan/widget/ActionButtonGroup;->mRightActionButton:Landroid/widget/ImageButton;

    .line 30
    :cond_2
    invoke-direct {p0}, Lsmartisan/widget/ActionButtonGroup;->setButtonsAppearance()V

    return-void
.end method


# virtual methods
.method public getButton(I)Lsmartisan/widget/ShadowButton;
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/ActionButtonGroup;->mBtns:[Lsmartisan/widget/ShadowButton;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getButtonCount()I
    .locals 1

    .line 1
    iget v0, p0, Lsmartisan/widget/ActionButtonGroup;->mActionMode:I

    if-nez v0, :cond_0

    const/4 v0, 0x4

    return v0

    :cond_0
    const/4 v0, 0x2

    return v0
.end method

.method public getLeftActionButton()Landroid/widget/ImageButton;
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/ActionButtonGroup;->mLeftActionButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method public getRightActionButton()Landroid/widget/ImageButton;
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/ActionButtonGroup;->mRightActionButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method public setActionButtonGroupBackground(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/ActionButtonGroup;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    return-void
.end method

.method public setActionButtonGroupBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lsmartisan/widget/ActionButtonGroup;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setActionButtonGroupBackgroundColor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/ActionButtonGroup;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    return-void
.end method

.method public setActionButtonGroupShadowVisibility(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lsmartisan/widget/ActionButtonGroup;->mSupportLayout:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lsmartisan/widget/ActionButtonGroup;->mShadowComponent:Lsmartisan/widget/ShadowComponent;

    invoke-virtual {v0, p1}, Lsmartisan/widget/ShadowComponent;->setShadowVisible(Z)V

    goto :goto_1

    .line 3
    :cond_0
    iget-object v0, p0, Lsmartisan/widget/ActionButtonGroup;->mShadowView:Landroid/widget/ImageView;

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

.method public setButtonActivated(I)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 1
    :goto_0
    iget-object v2, p0, Lsmartisan/widget/ActionButtonGroup;->mBtns:[Lsmartisan/widget/ShadowButton;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 2
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

.method public setButtonDrawable(II)V
    .locals 1

    .line 5
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lsmartisan/widget/ActionButtonGroup;->setButtonDrawable(ILandroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setButtonDrawable(ILandroid/graphics/drawable/Drawable;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lsmartisan/widget/R$dimen;->action_button_icon_inset_left:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lsmartisan/widget/R$dimen;->action_button_icon_inset_right:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 3
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v2, v0

    move-object v3, p2

    invoke-direct/range {v2 .. v7}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 4
    iget-object p2, p0, Lsmartisan/widget/ActionButtonGroup;->mBtns:[Lsmartisan/widget/ShadowButton;

    aget-object p1, p2, p1

    const/4 p2, 0x0

    invoke-virtual {p1, v0, p2, p2, p2}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setButtonText(II)V
    .locals 1

    .line 2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lsmartisan/widget/ActionButtonGroup;->setButtonText(ILjava/lang/CharSequence;)V

    return-void
.end method

.method public setButtonText(ILjava/lang/CharSequence;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/ActionButtonGroup;->mBtns:[Lsmartisan/widget/ShadowButton;

    aget-object p1, v0, p1

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setShadowDrawable(I)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lsmartisan/widget/ActionButtonGroup;->mSupportLayout:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lsmartisan/widget/ActionButtonGroup;->mShadowComponent:Lsmartisan/widget/ShadowComponent;

    invoke-virtual {v0, p1}, Lsmartisan/widget/ShadowComponent;->setShadowDrawable(I)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lsmartisan/widget/ActionButtonGroup;->mShadowView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :goto_0
    return-void
.end method
