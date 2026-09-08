.class public Lsmartisan/widget/SmartisanSpinnerView;
.super Landroid/widget/RelativeLayout;
.source "SmartisanSpinnerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsmartisan/widget/SmartisanSpinnerView$SpinnerRangeWheelTextChangeListener;,
        Lsmartisan/widget/SmartisanSpinnerView$SpinnerRangeClickListener;,
        Lsmartisan/widget/SmartisanSpinnerView$SpinnerDropDownClickListener;
    }
.end annotation


# static fields
.field public static final SPINNER_STYLE_DROP:I = 0x1

.field public static final SPINNER_STYLE_NORMAL:I = 0x0

.field public static final SPINNER_STYLE_RANGE:I = 0x2


# instance fields
.field private mBasicBlankSpacingWidth:I

.field private mDropDownListener:Lsmartisan/widget/SmartisanSpinnerView$SpinnerDropDownClickListener;

.field private mDropIcon:Landroid/widget/ImageButton;

.field private mIconWidth:I

.field private mIsVerticalScroll:Z

.field private mRangeClickListener:Lsmartisan/widget/SmartisanSpinnerView$SpinnerRangeClickListener;

.field private mRangeLeftIcon:Landroid/widget/ImageButton;

.field private mRangeRightIcon:Landroid/widget/ImageButton;

.field private mRangeWheelTextChangeListener:Lsmartisan/widget/SmartisanSpinnerView$SpinnerRangeWheelTextChangeListener;

.field private mSpinnerStyle:I

.field private mTextLeftIcon:Landroid/widget/ImageView;

.field private mTextLeftIconRef:I

.field private mTextPicker:Lsmartisan/widget/SmartisanWheelTextView;

.field private mTitleArray:[Ljava/lang/String;

.field private mTitleText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lsmartisan/widget/SmartisanSpinnerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lsmartisan/widget/SmartisanSpinnerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    sget-object p3, Lsmartisan/widget/R$styleable;->SmartisanSpinner:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 5
    sget p2, Lsmartisan/widget/R$styleable;->SmartisanSpinner_smtSpinnerStyle:I

    const/4 p3, -0x1

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lsmartisan/widget/SmartisanSpinnerView;->mSpinnerStyle:I

    .line 6
    sget p2, Lsmartisan/widget/R$styleable;->SmartisanSpinner_spinnerText:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    if-gez p2, :cond_0

    .line 7
    sget p2, Lsmartisan/widget/R$styleable;->SmartisanComboTitleBar_centerContentRef:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lsmartisan/widget/SmartisanSpinnerView;->mTitleText:Ljava/lang/String;

    goto :goto_0

    .line 8
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsmartisan/widget/SmartisanSpinnerView;->mTitleText:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 9
    :catch_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lsmartisan/widget/SmartisanSpinnerView;->mTitleArray:[Ljava/lang/String;

    .line 10
    :goto_0
    sget p2, Lsmartisan/widget/R$styleable;->SmartisanSpinner_spinnerLeftIcon:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lsmartisan/widget/SmartisanSpinnerView;->mTextLeftIconRef:I

    .line 11
    sget p2, Lsmartisan/widget/R$styleable;->SmartisanSpinner_isVerticalScroll:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lsmartisan/widget/SmartisanSpinnerView;->mIsVerticalScroll:Z

    .line 12
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 13
    iget p1, p0, Lsmartisan/widget/SmartisanSpinnerView;->mSpinnerStyle:I

    if-ltz p1, :cond_1

    .line 14
    invoke-virtual {p0, p1}, Lsmartisan/widget/SmartisanSpinnerView;->setSpinnerStyle(I)V

    .line 15
    :cond_1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lsmartisan/widget/R$dimen;->smartisan_small_blank_spacing_width:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lsmartisan/widget/SmartisanSpinnerView;->mBasicBlankSpacingWidth:I

    .line 16
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lsmartisan/widget/R$dimen;->smartisan_spinner_small_icon_width:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lsmartisan/widget/SmartisanSpinnerView;->mIconWidth:I

    return-void
.end method

.method static synthetic access$000(Lsmartisan/widget/SmartisanSpinnerView;)Lsmartisan/widget/SmartisanSpinnerView$SpinnerRangeWheelTextChangeListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lsmartisan/widget/SmartisanSpinnerView;->mRangeWheelTextChangeListener:Lsmartisan/widget/SmartisanSpinnerView$SpinnerRangeWheelTextChangeListener;

    return-object p0
.end method

.method static synthetic access$100(Lsmartisan/widget/SmartisanSpinnerView;)Lsmartisan/widget/SmartisanSpinnerView$SpinnerDropDownClickListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lsmartisan/widget/SmartisanSpinnerView;->mDropDownListener:Lsmartisan/widget/SmartisanSpinnerView$SpinnerDropDownClickListener;

    return-object p0
.end method

.method static synthetic access$200(Lsmartisan/widget/SmartisanSpinnerView;)Lsmartisan/widget/SmartisanSpinnerView$SpinnerRangeClickListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lsmartisan/widget/SmartisanSpinnerView;->mRangeClickListener:Lsmartisan/widget/SmartisanSpinnerView$SpinnerRangeClickListener;

    return-object p0
.end method

.method private adjustTextPickerLayoutParams()V
    .locals 2

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SmartisanSpinnerView;->mTextPicker:Lsmartisan/widget/SmartisanWheelTextView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 2
    iget v1, p0, Lsmartisan/widget/SmartisanSpinnerView;->mTextLeftIconRef:I

    if-gtz v1, :cond_0

    iget v1, p0, Lsmartisan/widget/SmartisanSpinnerView;->mBasicBlankSpacingWidth:I

    mul-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 3
    iget-object v1, p0, Lsmartisan/widget/SmartisanSpinnerView;->mTextPicker:Lsmartisan/widget/SmartisanWheelTextView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private measureViewWith(Landroid/view/View;)I
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 2
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    :cond_0
    return v0
.end method

.method private setDropIconStyle()V
    .locals 3

    .line 1
    new-instance v0, Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lsmartisan/widget/SmartisanSpinnerView;->mDropIcon:Landroid/widget/ImageButton;

    .line 2
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xf

    .line 3
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 4
    iget-object v1, p0, Lsmartisan/widget/SmartisanSpinnerView;->mTextPicker:Lsmartisan/widget/SmartisanWheelTextView;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 5
    iget v1, p0, Lsmartisan/widget/SmartisanSpinnerView;->mBasicBlankSpacingWidth:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 6
    iget-object v1, p0, Lsmartisan/widget/SmartisanSpinnerView;->mDropIcon:Landroid/widget/ImageButton;

    invoke-virtual {p0, v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 7
    iget-object v0, p0, Lsmartisan/widget/SmartisanSpinnerView;->mDropIcon:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 8
    iget-object v0, p0, Lsmartisan/widget/SmartisanSpinnerView;->mDropIcon:Landroid/widget/ImageButton;

    sget v1, Lsmartisan/widget/R$drawable;->selector_dropdown_arrow:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 9
    iget-object v0, p0, Lsmartisan/widget/SmartisanSpinnerView;->mDropIcon:Landroid/widget/ImageButton;

    new-instance v1, Lsmartisan/widget/SmartisanSpinnerView$2;

    invoke-direct {v1, p0}, Lsmartisan/widget/SmartisanSpinnerView$2;-><init>(Lsmartisan/widget/SmartisanSpinnerView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private setLeftIconStyle()V
    .locals 3

    .line 1
    iget v0, p0, Lsmartisan/widget/SmartisanSpinnerView;->mTextLeftIconRef:I

    if-gtz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lsmartisan/widget/SmartisanSpinnerView;->mTextLeftIcon:Landroid/widget/ImageView;

    .line 3
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xf

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v1, 0x0

    .line 5
    iget-object v2, p0, Lsmartisan/widget/SmartisanSpinnerView;->mTextPicker:Lsmartisan/widget/SmartisanWheelTextView;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 6
    iget v1, p0, Lsmartisan/widget/SmartisanSpinnerView;->mBasicBlankSpacingWidth:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 7
    iget-object v1, p0, Lsmartisan/widget/SmartisanSpinnerView;->mTextLeftIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 8
    iget-object v0, p0, Lsmartisan/widget/SmartisanSpinnerView;->mTextLeftIcon:Landroid/widget/ImageView;

    iget v1, p0, Lsmartisan/widget/SmartisanSpinnerView;->mTextLeftIconRef:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method private setPickerText()V
    .locals 3

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SmartisanSpinnerView;->mTitleArray:[Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 2
    iget-object v2, p0, Lsmartisan/widget/SmartisanSpinnerView;->mTitleText:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lsmartisan/widget/SmartisanSpinnerView;->setTitleArray([Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, v0}, Lsmartisan/widget/SmartisanSpinnerView;->setTitleArray([Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private setRangeIconStyle()V
    .locals 5

    .line 1
    new-instance v0, Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lsmartisan/widget/SmartisanSpinnerView;->mRangeLeftIcon:Landroid/widget/ImageButton;

    .line 2
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xf

    .line 3
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 4
    iget-object v3, p0, Lsmartisan/widget/SmartisanSpinnerView;->mTextPicker:Lsmartisan/widget/SmartisanWheelTextView;

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 5
    iget v3, p0, Lsmartisan/widget/SmartisanSpinnerView;->mBasicBlankSpacingWidth:I

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 6
    iget-object v3, p0, Lsmartisan/widget/SmartisanSpinnerView;->mRangeLeftIcon:Landroid/widget/ImageButton;

    invoke-virtual {p0, v3, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 7
    iget-object v0, p0, Lsmartisan/widget/SmartisanSpinnerView;->mRangeLeftIcon:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 8
    iget-object v0, p0, Lsmartisan/widget/SmartisanSpinnerView;->mRangeLeftIcon:Landroid/widget/ImageButton;

    sget v3, Lsmartisan/widget/R$drawable;->selector_previous_arrow:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 9
    new-instance v0, Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lsmartisan/widget/SmartisanSpinnerView;->mRangeRightIcon:Landroid/widget/ImageButton;

    .line 10
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 11
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 12
    iget-object v1, p0, Lsmartisan/widget/SmartisanSpinnerView;->mTextPicker:Lsmartisan/widget/SmartisanWheelTextView;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 13
    iget v1, p0, Lsmartisan/widget/SmartisanSpinnerView;->mBasicBlankSpacingWidth:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 14
    iget-object v1, p0, Lsmartisan/widget/SmartisanSpinnerView;->mRangeRightIcon:Landroid/widget/ImageButton;

    invoke-virtual {p0, v1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 15
    iget-object v0, p0, Lsmartisan/widget/SmartisanSpinnerView;->mRangeRightIcon:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 16
    iget-object v0, p0, Lsmartisan/widget/SmartisanSpinnerView;->mRangeRightIcon:Landroid/widget/ImageButton;

    sget v1, Lsmartisan/widget/R$drawable;->selector_next_arrow:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 17
    iget-object v0, p0, Lsmartisan/widget/SmartisanSpinnerView;->mRangeLeftIcon:Landroid/widget/ImageButton;

    new-instance v1, Lsmartisan/widget/SmartisanSpinnerView$3;

    invoke-direct {v1, p0}, Lsmartisan/widget/SmartisanSpinnerView$3;-><init>(Lsmartisan/widget/SmartisanSpinnerView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    iget-object v0, p0, Lsmartisan/widget/SmartisanSpinnerView;->mRangeRightIcon:Landroid/widget/ImageButton;

    new-instance v1, Lsmartisan/widget/SmartisanSpinnerView$4;

    invoke-direct {v1, p0}, Lsmartisan/widget/SmartisanSpinnerView$4;-><init>(Lsmartisan/widget/SmartisanSpinnerView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 19
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lsmartisan/widget/R$dimen;->smartisan_spinner_view_text_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 20
    iget-object v1, p0, Lsmartisan/widget/SmartisanSpinnerView;->mTextPicker:Lsmartisan/widget/SmartisanWheelTextView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setMinimumWidth(I)V

    return-void
.end method

.method private setTitleStyle(I)V
    .locals 1

    .line 1
    new-instance p1, Lsmartisan/widget/SmartisanWheelTextView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lsmartisan/widget/SmartisanWheelTextView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lsmartisan/widget/SmartisanSpinnerView;->mTextPicker:Lsmartisan/widget/SmartisanWheelTextView;

    .line 2
    iget-object p1, p0, Lsmartisan/widget/SmartisanSpinnerView;->mTextPicker:Lsmartisan/widget/SmartisanWheelTextView;

    sget v0, Lsmartisan/widget/R$id;->id_smartisan_spinner_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setId(I)V

    .line 3
    invoke-direct {p0}, Lsmartisan/widget/SmartisanSpinnerView;->setPickerText()V

    .line 4
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xd

    .line 5
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 6
    iget-object v0, p0, Lsmartisan/widget/SmartisanSpinnerView;->mTextPicker:Lsmartisan/widget/SmartisanWheelTextView;

    invoke-virtual {p0, v0, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 7
    iget-object p1, p0, Lsmartisan/widget/SmartisanSpinnerView;->mTextPicker:Lsmartisan/widget/SmartisanWheelTextView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 8
    iget p1, p0, Lsmartisan/widget/SmartisanSpinnerView;->mSpinnerStyle:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 9
    iget-object p1, p0, Lsmartisan/widget/SmartisanSpinnerView;->mTextPicker:Lsmartisan/widget/SmartisanWheelTextView;

    new-instance v0, Lsmartisan/widget/SmartisanSpinnerView$1;

    invoke-direct {v0, p0}, Lsmartisan/widget/SmartisanSpinnerView$1;-><init>(Lsmartisan/widget/SmartisanSpinnerView;)V

    invoke-virtual {p1, v0}, Lsmartisan/widget/SmartisanWheelTextView;->setOnValueChangedListener(Lsmartisan/widget/SmartisanWheelTextView$OnValueChangeListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getDropdownIconView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SmartisanSpinnerView;->mDropIcon:Landroid/widget/ImageButton;

    return-object v0
.end method

.method public getRangeLeftIcon()Landroid/widget/ImageButton;
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SmartisanSpinnerView;->mRangeLeftIcon:Landroid/widget/ImageButton;

    return-object v0
.end method

.method public getRangeRightIcon()Landroid/widget/ImageButton;
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SmartisanSpinnerView;->mRangeRightIcon:Landroid/widget/ImageButton;

    return-object v0
.end method

.method public getSpinnerStyle()I
    .locals 1

    .line 1
    iget v0, p0, Lsmartisan/widget/SmartisanSpinnerView;->mSpinnerStyle:I

    return v0
.end method

.method public getTextLeftIcon()Landroid/widget/ImageView;
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SmartisanSpinnerView;->mTextLeftIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method public seTextLeftIcon(I)V
    .locals 2

    if-gtz p1, :cond_0

    .line 1
    iget v0, p0, Lsmartisan/widget/SmartisanSpinnerView;->mSpinnerStyle:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iput p1, p0, Lsmartisan/widget/SmartisanSpinnerView;->mTextLeftIconRef:I

    .line 3
    iget-object v0, p0, Lsmartisan/widget/SmartisanSpinnerView;->mTextLeftIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-direct {p0}, Lsmartisan/widget/SmartisanSpinnerView;->setLeftIconStyle()V

    .line 6
    :goto_0
    invoke-direct {p0}, Lsmartisan/widget/SmartisanSpinnerView;->adjustTextPickerLayoutParams()V

    return-void
.end method

.method public setCenterLeftIcon(I)V
    .locals 0

    .line 1
    iput p1, p0, Lsmartisan/widget/SmartisanSpinnerView;->mTextLeftIconRef:I

    return-void
.end method

.method public setDropDownClickListener(Lsmartisan/widget/SmartisanSpinnerView$SpinnerDropDownClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/SmartisanSpinnerView;->mDropDownListener:Lsmartisan/widget/SmartisanSpinnerView$SpinnerDropDownClickListener;

    return-void
.end method

.method public setDropdownIconVisibility(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SmartisanSpinnerView;->mDropIcon:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public setIsNeedVerticalScroll(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lsmartisan/widget/SmartisanSpinnerView;->mIsVerticalScroll:Z

    .line 2
    iget-object v0, p0, Lsmartisan/widget/SmartisanSpinnerView;->mTextPicker:Lsmartisan/widget/SmartisanWheelTextView;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Lsmartisan/widget/SmartisanWheelTextView;->setIsNeedRotate(Z)V

    :cond_0
    return-void
.end method

.method public setLeftRangeSpinnerIconVisible(I)V
    .locals 2

    .line 1
    iget v0, p0, Lsmartisan/widget/SmartisanSpinnerView;->mSpinnerStyle:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lsmartisan/widget/SmartisanSpinnerView;->mRangeLeftIcon:Landroid/widget/ImageButton;

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setVisibility(I)V

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SmartisanSpinnerView;->mTextPicker:Lsmartisan/widget/SmartisanWheelTextView;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setPickerAvailWidth(I)V
    .locals 3

    .line 1
    iget v0, p0, Lsmartisan/widget/SmartisanSpinnerView;->mSpinnerStyle:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 2
    iget-object v0, p0, Lsmartisan/widget/SmartisanSpinnerView;->mDropIcon:Landroid/widget/ImageButton;

    invoke-direct {p0, v0}, Lsmartisan/widget/SmartisanSpinnerView;->measureViewWith(Landroid/view/View;)I

    move-result v0

    :goto_0
    mul-int/2addr v0, v1

    sub-int/2addr p1, v0

    goto :goto_1

    :cond_0
    if-ne v0, v1, :cond_1

    .line 3
    iget v0, p0, Lsmartisan/widget/SmartisanSpinnerView;->mIconWidth:I

    goto :goto_0

    .line 4
    :cond_1
    :goto_1
    iget-object v0, p0, Lsmartisan/widget/SmartisanSpinnerView;->mTextPicker:Lsmartisan/widget/SmartisanWheelTextView;

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {v0, p1}, Lsmartisan/widget/SmartisanWheelTextView;->setAvailWidth(I)V

    :cond_2
    return-void
.end method

.method public setRangeClickListener(Lsmartisan/widget/SmartisanSpinnerView$SpinnerRangeClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/SmartisanSpinnerView;->mRangeClickListener:Lsmartisan/widget/SmartisanSpinnerView$SpinnerRangeClickListener;

    return-void
.end method

.method public setRangeSpinnerIconVisible(I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lsmartisan/widget/SmartisanSpinnerView;->setLeftRangeSpinnerIconVisible(I)V

    .line 2
    invoke-virtual {p0, p1}, Lsmartisan/widget/SmartisanSpinnerView;->setRightRangeSpinnerIconVisible(I)V

    return-void
.end method

.method public setRangeWheelTextChangeListener(Lsmartisan/widget/SmartisanSpinnerView$SpinnerRangeWheelTextChangeListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/SmartisanSpinnerView;->mRangeWheelTextChangeListener:Lsmartisan/widget/SmartisanSpinnerView$SpinnerRangeWheelTextChangeListener;

    return-void
.end method

.method public setRightRangeSpinnerIconVisible(I)V
    .locals 2

    .line 1
    iget v0, p0, Lsmartisan/widget/SmartisanSpinnerView;->mSpinnerStyle:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lsmartisan/widget/SmartisanSpinnerView;->mRangeRightIcon:Landroid/widget/ImageButton;

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setVisibility(I)V

    return-void
.end method

.method public setSpinnerPickText([Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/SmartisanSpinnerView;->mTitleArray:[Ljava/lang/String;

    .line 2
    iput-object p2, p0, Lsmartisan/widget/SmartisanSpinnerView;->mTitleText:Ljava/lang/String;

    .line 3
    iget-object p1, p0, Lsmartisan/widget/SmartisanSpinnerView;->mTextPicker:Lsmartisan/widget/SmartisanWheelTextView;

    if-eqz p1, :cond_0

    .line 4
    invoke-direct {p0}, Lsmartisan/widget/SmartisanSpinnerView;->setPickerText()V

    :cond_0
    return-void
.end method

.method public setSpinnerStyle(I)V
    .locals 1

    .line 1
    iput p1, p0, Lsmartisan/widget/SmartisanSpinnerView;->mSpinnerStyle:I

    .line 2
    invoke-direct {p0, p1}, Lsmartisan/widget/SmartisanSpinnerView;->setTitleStyle(I)V

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0}, Lsmartisan/widget/SmartisanSpinnerView;->setRangeIconStyle()V

    .line 4
    iget-object p1, p0, Lsmartisan/widget/SmartisanSpinnerView;->mTextPicker:Lsmartisan/widget/SmartisanWheelTextView;

    iget-boolean v0, p0, Lsmartisan/widget/SmartisanSpinnerView;->mIsVerticalScroll:Z

    invoke-virtual {p1, v0}, Lsmartisan/widget/SmartisanWheelTextView;->setIsNeedRotate(Z)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-direct {p0}, Lsmartisan/widget/SmartisanSpinnerView;->setLeftIconStyle()V

    .line 6
    invoke-direct {p0}, Lsmartisan/widget/SmartisanSpinnerView;->setDropIconStyle()V

    .line 7
    invoke-direct {p0}, Lsmartisan/widget/SmartisanSpinnerView;->adjustTextPickerLayoutParams()V

    :cond_2
    :goto_0
    return-void
.end method

.method public setSubContentText(Ljava/lang/CharSequence;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lsmartisan/widget/SmartisanSpinnerView;->setSubContentText(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Lsmartisan/widget/SmartisanSpinnerView;->setSubContentText(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setSubContentText(Ljava/lang/String;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lsmartisan/widget/SmartisanSpinnerView;->mTextPicker:Lsmartisan/widget/SmartisanWheelTextView;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Lsmartisan/widget/SmartisanWheelTextView;->setSubContentText(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setSubtitleColor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SmartisanSpinnerView;->mTextPicker:Lsmartisan/widget/SmartisanWheelTextView;

    invoke-virtual {v0, p1}, Lsmartisan/widget/SmartisanWheelTextView;->setSubtitleColor(I)V

    return-void
.end method

.method varargs setTitleArray([Ljava/lang/String;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lsmartisan/widget/SmartisanSpinnerView;->mTitleArray:[Ljava/lang/String;

    .line 2
    array-length v0, p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lsmartisan/widget/SmartisanSpinnerView;->mTextPicker:Lsmartisan/widget/SmartisanWheelTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lsmartisan/widget/SmartisanWheelTextView;->setIsNeedRotate(Z)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lsmartisan/widget/SmartisanSpinnerView;->mTextPicker:Lsmartisan/widget/SmartisanWheelTextView;

    invoke-virtual {v0, v1}, Lsmartisan/widget/SmartisanWheelTextView;->setIsNeedRotate(Z)V

    .line 5
    :goto_0
    iget-object v0, p0, Lsmartisan/widget/SmartisanSpinnerView;->mTextPicker:Lsmartisan/widget/SmartisanWheelTextView;

    invoke-virtual {v0, p1}, Lsmartisan/widget/SmartisanWheelTextView;->setDisplayedValues([Ljava/lang/String;)V

    return-void
.end method

.method public setTitleColor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SmartisanSpinnerView;->mTextPicker:Lsmartisan/widget/SmartisanWheelTextView;

    invoke-virtual {v0, p1}, Lsmartisan/widget/SmartisanWheelTextView;->setTitleColor(I)V

    return-void
.end method

.method public setTitleMaxSize(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SmartisanSpinnerView;->mTextPicker:Lsmartisan/widget/SmartisanWheelTextView;

    invoke-virtual {v0, p1}, Lsmartisan/widget/SmartisanWheelTextView;->setTextMaxSize(F)V

    return-void
.end method

.method public setTitleSize(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/SmartisanSpinnerView;->mTextPicker:Lsmartisan/widget/SmartisanWheelTextView;

    invoke-virtual {v0, p1}, Lsmartisan/widget/SmartisanWheelTextView;->setTextSize(F)V

    return-void
.end method
