.class public Lsmartisan/widget/SmartisanRadioGroup;
.super Landroid/widget/RadioGroup;
.source "SmartisanRadioGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsmartisan/widget/SmartisanRadioGroup$SmartisanRadioTabGroupCallback;
    }
.end annotation


# instance fields
.field private mRadioButtonList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lsmartisan/widget/SmartisanRadioShadowButton;",
            ">;"
        }
    .end annotation
.end field

.field private mRadioTabGroupCallback:Lsmartisan/widget/SmartisanRadioGroup$SmartisanRadioTabGroupCallback;

.field private mTextListReference:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lsmartisan/widget/SmartisanRadioGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    sget-object v0, Lsmartisan/widget/R$styleable;->SmartisanRadioTabGroup:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 4
    sget p2, Lsmartisan/widget/R$styleable;->SmartisanRadioTabGroup_contentArray:I

    const/4 v0, -0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lsmartisan/widget/SmartisanRadioGroup;->mTextListReference:I

    .line 5
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    const/4 p1, 0x0

    .line 6
    invoke-virtual {p0, p1}, Landroid/widget/RadioGroup;->setOrientation(I)V

    const/16 p2, 0x11

    .line 7
    invoke-virtual {p0, p2}, Landroid/widget/RadioGroup;->setGravity(I)V

    .line 8
    iget p2, p0, Lsmartisan/widget/SmartisanRadioGroup;->mTextListReference:I

    if-lez p2, :cond_0

    .line 9
    invoke-virtual {p0}, Landroid/widget/RadioGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    iget v0, p0, Lsmartisan/widget/SmartisanRadioGroup;->mTextListReference:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    .line 10
    invoke-virtual {p0, p2}, Lsmartisan/widget/SmartisanRadioGroup;->setRadioList([Ljava/lang/String;)V

    .line 11
    invoke-virtual {p0, p1}, Lsmartisan/widget/SmartisanRadioGroup;->setRadioCheckedPosition(I)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lsmartisan/widget/SmartisanRadioGroup;)Lsmartisan/widget/SmartisanRadioGroup$SmartisanRadioTabGroupCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lsmartisan/widget/SmartisanRadioGroup;->mRadioTabGroupCallback:Lsmartisan/widget/SmartisanRadioGroup$SmartisanRadioTabGroupCallback;

    return-object p0
.end method

.method private varargs getBackgroundRes(I[Ljava/lang/String;)I
    .locals 2

    .line 1
    array-length v0, p2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    sget p1, Lsmartisan/widget/R$drawable;->selector_smartisan_radio_group_middle:I

    return p1

    :cond_0
    if-nez p1, :cond_1

    .line 3
    sget p1, Lsmartisan/widget/R$drawable;->selector_smartisan_radio_group_left:I

    return p1

    .line 4
    :cond_1
    array-length p2, p2

    sub-int/2addr p2, v1

    if-ne p1, p2, :cond_2

    .line 5
    sget p1, Lsmartisan/widget/R$drawable;->selector_smartisan_radio_group_right:I

    return p1

    .line 6
    :cond_2
    sget p1, Lsmartisan/widget/R$drawable;->selector_smartisan_radio_group_middle:I

    return p1
.end method

.method private varargs getRadioButtonWidth([Ljava/lang/String;)I
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v1

    move v1, v0

    .line 1
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_1

    .line 2
    aget-object v3, p1, v0

    invoke-direct {p0, v3}, Lsmartisan/widget/SmartisanRadioGroup;->getTextWidth(Ljava/lang/String;)F

    move-result v3

    cmpl-float v4, v3, v2

    if-lez v4, :cond_0

    move v1, v0

    move v2, v3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p0}, Landroid/widget/RadioGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p0, v1, p1}, Lsmartisan/widget/SmartisanRadioGroup;->getBackgroundRes(I[Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/StateListDrawable;

    .line 4
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 5
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/StateListDrawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 6
    iget p1, v0, Landroid/graphics/Rect;->left:I

    int-to-float p1, p1

    add-float/2addr v2, p1

    iget p1, v0, Landroid/graphics/Rect;->right:I

    int-to-float p1, p1

    add-float/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method

.method private getTextWidth(Ljava/lang/String;)F
    .locals 3

    .line 1
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroid/widget/RadioGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lsmartisan/widget/R$dimen;->semi_small_text_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 3
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    return p1
.end method

.method private varargs initRadioButtonStyle(Lsmartisan/widget/SmartisanRadioShadowButton;I[Ljava/lang/String;)V
    .locals 5

    if-eqz p3, :cond_1

    .line 1
    array-length v0, p3

    if-gtz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    aget-object v0, p3, p2

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    const/16 v0, 0x11

    .line 3
    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setGravity(I)V

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setButtonDrawable(I)V

    .line 5
    invoke-virtual {p1}, Landroid/widget/RadioButton;->setSingleLine()V

    .line 6
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 7
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setTypeface(Landroid/graphics/Typeface;)V

    .line 8
    invoke-virtual {p0}, Landroid/widget/RadioGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lsmartisan/widget/R$color;->selector_smartisan_radio_btn_text_shadow_colorlist:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    const/4 v2, 0x0

    const/high16 v3, -0x40000000    # -2.0f

    const v4, 0x3dcccccd    # 0.1f

    invoke-virtual {p1, v1, v2, v3, v4}, Lsmartisan/widget/SmartisanRadioShadowButton;->setShadowColorState(Landroid/content/res/ColorStateList;FFF)V

    .line 9
    invoke-virtual {p0}, Landroid/widget/RadioGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lsmartisan/widget/R$color;->selector_smartisan_radio_btn_text_colorlist:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 10
    invoke-virtual {p0}, Landroid/widget/RadioGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lsmartisan/widget/R$dimen;->semi_small_text_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/RadioButton;->setTextSize(IF)V

    .line 11
    invoke-direct {p0, p2, p3}, Lsmartisan/widget/SmartisanRadioGroup;->getBackgroundRes(I[Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setBackgroundResource(I)V

    .line 12
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lsmartisan/widget/SmartisanRadioGroup;->mWidth:I

    array-length p3, p3

    div-int/2addr v1, p3

    const/4 p3, -0x2

    invoke-direct {v0, v1, p3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 p3, 0x3f800000    # 1.0f

    .line 13
    iput p3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 14
    invoke-virtual {p0, p1, p2, v0}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 15
    new-instance p3, Lsmartisan/widget/SmartisanRadioGroup$1;

    invoke-direct {p3, p0, p2}, Lsmartisan/widget/SmartisanRadioGroup$1;-><init>(Lsmartisan/widget/SmartisanRadioGroup;I)V

    invoke-virtual {p1, p3}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setGroupWidth()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/RadioGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lsmartisan/widget/SmartisanRadioGroup;->mWidth:I

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    goto :goto_0

    .line 3
    :cond_0
    iget v1, p0, Lsmartisan/widget/SmartisanRadioGroup;->mWidth:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 4
    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/RadioGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public setAvailWidth(I)V
    .locals 0

    .line 1
    iput p1, p0, Lsmartisan/widget/SmartisanRadioGroup;->mWidth:I

    .line 2
    invoke-direct {p0}, Lsmartisan/widget/SmartisanRadioGroup;->setGroupWidth()V

    return-void
.end method

.method public setRadioCheckedPosition(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SmartisanRadioGroup;->mRadioButtonList:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    if-ltz p1, :cond_2

    .line 2
    iget-object v0, p0, Lsmartisan/widget/SmartisanRadioGroup;->mRadioButtonList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le p1, v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, p0, Lsmartisan/widget/SmartisanRadioGroup;->mRadioButtonList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lsmartisan/widget/SmartisanRadioShadowButton;

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public varargs setRadioList([Ljava/lang/String;)V
    .locals 4

    if-eqz p1, :cond_4

    .line 1
    array-length v0, p1

    if-gtz v0, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/widget/RadioGroup;->removeAllViews()V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lsmartisan/widget/SmartisanRadioGroup;->mRadioButtonList:Ljava/util/List;

    .line 4
    array-length v0, p1

    .line 5
    invoke-direct {p0, p1}, Lsmartisan/widget/SmartisanRadioGroup;->getRadioButtonWidth([Ljava/lang/String;)I

    move-result v1

    mul-int/2addr v1, v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 6
    invoke-virtual {p0}, Landroid/widget/RadioGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lsmartisan/widget/R$dimen;->radio_group_width_2tabs:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lsmartisan/widget/SmartisanRadioGroup;->mWidth:I

    goto :goto_0

    :cond_1
    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    .line 7
    invoke-virtual {p0}, Landroid/widget/RadioGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lsmartisan/widget/R$dimen;->radio_group_width_3tabs:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lsmartisan/widget/SmartisanRadioGroup;->mWidth:I

    goto :goto_0

    .line 8
    :cond_2
    iput v1, p0, Lsmartisan/widget/SmartisanRadioGroup;->mWidth:I

    :goto_0
    const/4 v0, 0x0

    move v1, v0

    .line 9
    :goto_1
    array-length v2, p1

    if-ge v1, v2, :cond_3

    .line 10
    new-instance v2, Lsmartisan/widget/SmartisanRadioShadowButton;

    invoke-virtual {p0}, Landroid/widget/RadioGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lsmartisan/widget/SmartisanRadioShadowButton;-><init>(Landroid/content/Context;)V

    .line 11
    iget-object v3, p0, Lsmartisan/widget/SmartisanRadioGroup;->mRadioButtonList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    invoke-direct {p0, v2, v1, p1}, Lsmartisan/widget/SmartisanRadioGroup;->initRadioButtonStyle(Lsmartisan/widget/SmartisanRadioShadowButton;I[Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 13
    :cond_3
    invoke-direct {p0}, Lsmartisan/widget/SmartisanRadioGroup;->setGroupWidth()V

    .line 14
    invoke-virtual {p0, v0}, Lsmartisan/widget/SmartisanRadioGroup;->setRadioCheckedPosition(I)V

    :cond_4
    :goto_2
    return-void
.end method

.method public setSmartisanRadioGroupCallback(Lsmartisan/widget/SmartisanRadioGroup$SmartisanRadioTabGroupCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/SmartisanRadioGroup;->mRadioTabGroupCallback:Lsmartisan/widget/SmartisanRadioGroup$SmartisanRadioTabGroupCallback;

    return-void
.end method

.method public setmRadioTextList(I)V
    .locals 1

    if-gtz p1, :cond_0

    return-void

    .line 1
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/RadioGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1}, Lsmartisan/widget/SmartisanRadioGroup;->setRadioList([Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    :goto_0
    return-void
.end method
