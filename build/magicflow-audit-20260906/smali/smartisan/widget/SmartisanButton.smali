.class public Lsmartisan/widget/SmartisanButton;
.super Landroid/widget/Button;
.source "SmartisanButton.java"


# static fields
.field public static final STYLE_AREA_ONLY_ICON:I = 0x7

.field public static final STYLE_BACK:I = 0x1

.field public static final STYLE_CUSTOM_BACKGROUND:I = 0x9

.field public static final STYLE_DELETE:I = 0x3

.field public static final STYLE_HIGHLIGHT_BLUE:I = 0x4

.field public static final STYLE_HIGHLIGHT_RED:I = 0x5

.field public static final STYLE_MIX:I = 0xa

.field public static final STYLE_NORMAL:I = 0x0

.field public static final STYLE_NORMAL_WITH_ICON:I = 0x6

.field public static final STYLE_SEARCH:I = 0x8

.field public static final STYLE_SETTING:I = 0x2


# instance fields
.field private mAreaIconHeight:I

.field private mAreaIconWidth:I

.field private mBtnFixedHeight:I

.field private mBtnFixedWidth:I

.field private mButtonStyle:I

.field private mImageBitmap:Landroid/graphics/Bitmap;

.field private mImageSourceId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lsmartisan/widget/SmartisanButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lsmartisan/widget/SmartisanButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lsmartisan/widget/R$dimen;->smartisan_button_fixed_width:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Lsmartisan/widget/SmartisanButton;->mBtnFixedWidth:I

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lsmartisan/widget/R$dimen;->samrtisan_button_fixed_height:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Lsmartisan/widget/SmartisanButton;->mBtnFixedHeight:I

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lsmartisan/widget/R$dimen;->smartisan_button_icon_area_width:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Lsmartisan/widget/SmartisanButton;->mAreaIconWidth:I

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lsmartisan/widget/R$dimen;->smartisan_button_icon_area_height:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Lsmartisan/widget/SmartisanButton;->mAreaIconHeight:I

    .line 8
    sget-object p3, Lsmartisan/widget/R$styleable;->SmartisanButton:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 9
    sget p2, Lsmartisan/widget/R$styleable;->SmartisanButton_smtButtonStyle:I

    const/4 p3, -0x1

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lsmartisan/widget/SmartisanButton;->mButtonStyle:I

    .line 10
    sget p2, Lsmartisan/widget/R$styleable;->SmartisanButton_buttonSrc:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lsmartisan/widget/SmartisanButton;->mImageSourceId:I

    .line 11
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    const/16 p1, 0x11

    .line 12
    invoke-virtual {p0, p1}, Landroid/widget/Button;->setGravity(I)V

    .line 13
    sget-object p1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    const/4 p1, 0x1

    .line 14
    invoke-virtual {p0, p1}, Landroid/widget/Button;->setMaxLines(I)V

    .line 15
    sget-object p1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 16
    invoke-virtual {p0}, Landroid/widget/Button;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lsmartisan/widget/R$dimen;->semi_small_text_size:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1}, Landroid/widget/Button;->setTextSize(IF)V

    .line 17
    iget p1, p0, Lsmartisan/widget/SmartisanButton;->mImageSourceId:I

    if-ltz p1, :cond_0

    .line 18
    invoke-virtual {p0, p1}, Lsmartisan/widget/SmartisanButton;->setButtonSourceBitmap(I)V

    .line 19
    :cond_0
    iget p1, p0, Lsmartisan/widget/SmartisanButton;->mButtonStyle:I

    if-ltz p1, :cond_1

    .line 20
    invoke-direct {p0}, Lsmartisan/widget/SmartisanButton;->init()V

    :cond_1
    return-void
.end method

.method private init()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Landroid/widget/Button;->setClickable(Z)V

    .line 2
    iget v0, p0, Lsmartisan/widget/SmartisanButton;->mButtonStyle:I

    invoke-direct {p0, v0}, Lsmartisan/widget/SmartisanButton;->initButtonStyle(I)V

    return-void
.end method

.method private initButtonStyle(I)V
    .locals 5

    const/high16 v0, -0x40000000    # -2.0f

    const/high16 v1, 0x40000000    # 2.0f

    const/4 v2, 0x0

    const v3, 0x3dcccccd    # 0.1f

    const-string v4, ""

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 1
    :pswitch_0
    invoke-virtual {p0, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 2
    :pswitch_1
    invoke-virtual {p0, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 3
    sget v0, Lsmartisan/widget/R$drawable;->selector_small_icon_btn_search:I

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 4
    :pswitch_2
    invoke-virtual {p0, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 5
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 6
    :pswitch_3
    invoke-virtual {p0, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 7
    invoke-virtual {p0}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lsmartisan/widget/R$dimen;->smartisan_button_limit_min_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setMinWidth(I)V

    .line 8
    invoke-virtual {p0}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lsmartisan/widget/R$dimen;->smartisan_button_limit_min_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setMaxWidth(I)V

    .line 9
    sget v0, Lsmartisan/widget/R$drawable;->selector_small_btn_standard:I

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 10
    :pswitch_4
    invoke-virtual {p0}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lsmartisan/widget/R$dimen;->smartisan_button_limit_max_width:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v1}, Landroid/widget/Button;->setMaxWidth(I)V

    .line 11
    invoke-virtual {p0}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lsmartisan/widget/R$dimen;->smartisan_button_limit_min_width:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v1}, Landroid/widget/Button;->setMinWidth(I)V

    .line 12
    invoke-virtual {p0}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lsmartisan/widget/R$color;->white:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 13
    invoke-virtual {p0}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lsmartisan/widget/R$color;->smartisan_button_highlight_enable_shadow_color:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v3, v2, v0, v1}, Landroid/widget/Button;->setShadowLayer(FFFI)V

    .line 14
    sget v0, Lsmartisan/widget/R$drawable;->selector_small_btn_highlight_red:I

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 15
    :pswitch_5
    invoke-virtual {p0}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lsmartisan/widget/R$dimen;->smartisan_button_limit_max_width:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v1}, Landroid/widget/Button;->setMaxWidth(I)V

    .line 16
    invoke-virtual {p0}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lsmartisan/widget/R$dimen;->smartisan_button_limit_min_width:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v1}, Landroid/widget/Button;->setMinWidth(I)V

    .line 17
    invoke-virtual {p0}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lsmartisan/widget/R$color;->white:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 18
    invoke-virtual {p0}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lsmartisan/widget/R$color;->smartisan_button_highlight_enable_shadow_color:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {p0, v3, v2, v0, v1}, Landroid/widget/Button;->setShadowLayer(FFFI)V

    .line 19
    sget v0, Lsmartisan/widget/R$drawable;->selector_small_btn_highlight:I

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 20
    :pswitch_6
    invoke-virtual {p0, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 21
    sget v0, Lsmartisan/widget/R$drawable;->selector_small_icon_btn_delete:I

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 22
    :pswitch_7
    invoke-virtual {p0, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 23
    sget v0, Lsmartisan/widget/R$drawable;->selector_small_icon_btn_setting:I

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 24
    :pswitch_8
    invoke-virtual {p0}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lsmartisan/widget/R$dimen;->smartisan_button_limit_max_width:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setMaxWidth(I)V

    .line 25
    invoke-virtual {p0}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lsmartisan/widget/R$dimen;->smartisan_button_limit_min_width:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setMinWidth(I)V

    .line 26
    invoke-virtual {p0}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lsmartisan/widget/R$color;->smartisan_button_normal_text_color:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 27
    invoke-virtual {p0}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lsmartisan/widget/R$color;->smartisan_button_normal_enable_shadow_color:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v3, v2, v1, v0}, Landroid/widget/Button;->setShadowLayer(FFFI)V

    .line 28
    sget v0, Lsmartisan/widget/R$drawable;->selector_small_btn_back:I

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0

    .line 29
    :pswitch_9
    invoke-virtual {p0}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lsmartisan/widget/R$dimen;->smartisan_button_limit_max_width:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setMaxWidth(I)V

    .line 30
    invoke-virtual {p0}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lsmartisan/widget/R$dimen;->smartisan_button_limit_min_width:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setMinWidth(I)V

    .line 31
    invoke-virtual {p0}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lsmartisan/widget/R$color;->smartisan_button_normal_text_color:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 32
    invoke-virtual {p0}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v4, Lsmartisan/widget/R$color;->smartisan_button_normal_enable_shadow_color:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v3, v2, v1, v0}, Landroid/widget/Button;->setShadowLayer(FFFI)V

    .line 33
    sget v0, Lsmartisan/widget/R$drawable;->selector_small_btn_standard:I

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 34
    :goto_0
    invoke-virtual {p0}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x6

    if-ne p1, v1, :cond_1

    .line 35
    iget p1, p0, Lsmartisan/widget/SmartisanButton;->mBtnFixedWidth:I

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 36
    iget p1, p0, Lsmartisan/widget/SmartisanButton;->mBtnFixedHeight:I

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_1

    :cond_1
    const/4 v1, 0x7

    if-ne p1, v1, :cond_2

    .line 37
    iget p1, p0, Lsmartisan/widget/SmartisanButton;->mAreaIconWidth:I

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 38
    iget p1, p0, Lsmartisan/widget/SmartisanButton;->mAreaIconHeight:I

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_1

    :cond_2
    const/4 p1, -0x2

    .line 39
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 40
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 41
    :goto_1
    invoke-virtual {p0, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/widget/Button;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget v0, p0, Lsmartisan/widget/SmartisanButton;->mButtonStyle:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lsmartisan/widget/SmartisanButton;->mImageBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Landroid/widget/Button;->getWidth()I

    move-result v0

    iget-object v1, p0, Lsmartisan/widget/SmartisanButton;->mImageBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 4
    invoke-virtual {p0}, Landroid/widget/Button;->getHeight()I

    move-result v1

    iget-object v2, p0, Lsmartisan/widget/SmartisanButton;->mImageBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    .line 5
    iget-object v2, p0, Lsmartisan/widget/SmartisanButton;->mImageBitmap:Landroid/graphics/Bitmap;

    int-to-float v0, v0

    int-to-float v1, v1

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/Button;->onMeasure(II)V

    .line 2
    iget v0, p0, Lsmartisan/widget/SmartisanButton;->mButtonStyle:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    const/4 v2, 0x7

    if-ne v0, v2, :cond_5

    .line 3
    :cond_0
    iget v0, p0, Lsmartisan/widget/SmartisanButton;->mButtonStyle:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lsmartisan/widget/SmartisanButton;->mBtnFixedWidth:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lsmartisan/widget/SmartisanButton;->mAreaIconWidth:I

    .line 4
    :goto_0
    iget v2, p0, Lsmartisan/widget/SmartisanButton;->mButtonStyle:I

    if-ne v2, v1, :cond_2

    iget v1, p0, Lsmartisan/widget/SmartisanButton;->mBtnFixedHeight:I

    goto :goto_1

    :cond_2
    iget v1, p0, Lsmartisan/widget/SmartisanButton;->mAreaIconHeight:I

    .line 5
    :goto_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 6
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 7
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 8
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v4, 0x40000000    # 2.0f

    if-ne v2, v4, :cond_3

    goto :goto_2

    :cond_3
    move p1, v0

    :goto_2
    if-ne v3, v4, :cond_4

    goto :goto_3

    :cond_4
    move p2, v1

    .line 9
    :goto_3
    invoke-virtual {p0, p1, p2}, Landroid/widget/Button;->setMeasuredDimension(II)V

    :cond_5
    return-void
.end method

.method public setButtonSourceBitmap(I)V
    .locals 8

    if-gez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget v0, p0, Lsmartisan/widget/SmartisanButton;->mButtonStyle:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    return-void

    .line 2
    :cond_1
    iget v0, p0, Lsmartisan/widget/SmartisanButton;->mAreaIconHeight:I

    if-gtz v0, :cond_2

    return-void

    .line 3
    :cond_2
    invoke-virtual {p0}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lsmartisan/widget/SmartisanButton;->mImageBitmap:Landroid/graphics/Bitmap;

    .line 4
    iget-object p1, p0, Lsmartisan/widget/SmartisanButton;->mImageBitmap:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iget v0, p0, Lsmartisan/widget/SmartisanButton;->mAreaIconHeight:I

    if-le p1, v0, :cond_3

    .line 5
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 6
    iget p1, p0, Lsmartisan/widget/SmartisanButton;->mAreaIconHeight:I

    int-to-float p1, p1

    iget-object v0, p0, Lsmartisan/widget/SmartisanButton;->mImageBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    .line 7
    invoke-virtual {v6, p1, p1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 8
    iget-object v1, p0, Lsmartisan/widget/SmartisanButton;->mImageBitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    iget-object p1, p0, Lsmartisan/widget/SmartisanButton;->mImageBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v7, 0x1

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lsmartisan/widget/SmartisanButton;->mImageBitmap:Landroid/graphics/Bitmap;

    .line 9
    :cond_3
    invoke-virtual {p0}, Landroid/widget/Button;->invalidate()V

    return-void
.end method

.method public setButtonStyle(I)V
    .locals 0

    if-gez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iput p1, p0, Lsmartisan/widget/SmartisanButton;->mButtonStyle:I

    .line 2
    invoke-direct {p0}, Lsmartisan/widget/SmartisanButton;->init()V

    return-void
.end method

.method public setButtonText(I)V
    .locals 1

    .line 4
    invoke-virtual {p0}, Landroid/widget/Button;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lsmartisan/widget/SmartisanButton;->setButtonText(Ljava/lang/String;)V

    return-void
.end method

.method public setButtonText(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget v0, p0, Lsmartisan/widget/SmartisanButton;->mButtonStyle:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    const/4 v1, 0x7

    if-eq v0, v1, :cond_2

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setEnabledStyle(Z)V
    .locals 5

    if-eqz p1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f000000    # 0.5f

    .line 1
    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/Button;->setAlpha(F)V

    .line 2
    iget v0, p0, Lsmartisan/widget/SmartisanButton;->mButtonStyle:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const v3, 0x3dcccccd    # 0.1f

    if-eqz v0, :cond_3

    const/4 v4, 0x1

    if-eq v0, v4, :cond_3

    const/4 v4, 0x4

    if-eq v0, v4, :cond_1

    const/4 v4, 0x5

    if-eq v0, v4, :cond_1

    goto :goto_1

    :cond_1
    const/high16 v0, -0x40000000    # -2.0f

    if-eqz p1, :cond_2

    .line 3
    invoke-virtual {p0}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lsmartisan/widget/R$color;->smartisan_button_highlight_enable_shadow_color:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p0, v3, v2, v0, p1}, Landroid/widget/Button;->setShadowLayer(FFFI)V

    goto :goto_1

    .line 4
    :cond_2
    invoke-virtual {p0, v3, v2, v0, v1}, Landroid/widget/Button;->setShadowLayer(FFFI)V

    goto :goto_1

    :cond_3
    const/high16 v0, 0x40000000    # 2.0f

    if-eqz p1, :cond_4

    .line 5
    invoke-virtual {p0}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lsmartisan/widget/R$color;->smartisan_button_normal_enable_shadow_color:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p0, v3, v2, v0, p1}, Landroid/widget/Button;->setShadowLayer(FFFI)V

    goto :goto_1

    .line 6
    :cond_4
    invoke-virtual {p0, v3, v2, v0, v1}, Landroid/widget/Button;->setShadowLayer(FFFI)V

    :goto_1
    return-void
.end method
