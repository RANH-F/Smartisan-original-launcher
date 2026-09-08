.class public Lsmartisan/widget/RadioGroupExpand;
.super Landroid/widget/RadioGroup;
.source "RadioGroupExpand.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsmartisan/widget/RadioGroupExpand$TabSpec;,
        Lsmartisan/widget/RadioGroupExpand$RadioButtonLongClickListener;
    }
.end annotation


# instance fields
.field final globalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private mHasTextAndIcon:Z

.field private mListener:Landroid/view/View$OnLongClickListener;

.field private mTabBackgroundDrawable:I

.field private mTabColor:I

.field private mTabId:I

.field private mTabTextSize:I

.field private mTabs:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lsmartisan/widget/RadioGroupExpand$TabSpec;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lsmartisan/widget/RadioGroupExpand;->mTabColor:I

    .line 3
    iput p1, p0, Lsmartisan/widget/RadioGroupExpand;->mTabTextSize:I

    .line 4
    iput p1, p0, Lsmartisan/widget/RadioGroupExpand;->mTabBackgroundDrawable:I

    .line 5
    iput-boolean p1, p0, Lsmartisan/widget/RadioGroupExpand;->mHasTextAndIcon:Z

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lsmartisan/widget/RadioGroupExpand;->mListener:Landroid/view/View$OnLongClickListener;

    .line 7
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lsmartisan/widget/RadioGroupExpand;->mTabs:Ljava/util/LinkedList;

    .line 8
    new-instance p1, Lsmartisan/widget/RadioGroupExpand$1;

    invoke-direct {p1, p0}, Lsmartisan/widget/RadioGroupExpand$1;-><init>(Lsmartisan/widget/RadioGroupExpand;)V

    iput-object p1, p0, Lsmartisan/widget/RadioGroupExpand;->globalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 10
    iput p1, p0, Lsmartisan/widget/RadioGroupExpand;->mTabColor:I

    .line 11
    iput p1, p0, Lsmartisan/widget/RadioGroupExpand;->mTabTextSize:I

    .line 12
    iput p1, p0, Lsmartisan/widget/RadioGroupExpand;->mTabBackgroundDrawable:I

    .line 13
    iput-boolean p1, p0, Lsmartisan/widget/RadioGroupExpand;->mHasTextAndIcon:Z

    const/4 p1, 0x0

    .line 14
    iput-object p1, p0, Lsmartisan/widget/RadioGroupExpand;->mListener:Landroid/view/View$OnLongClickListener;

    .line 15
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lsmartisan/widget/RadioGroupExpand;->mTabs:Ljava/util/LinkedList;

    .line 16
    new-instance p1, Lsmartisan/widget/RadioGroupExpand$1;

    invoke-direct {p1, p0}, Lsmartisan/widget/RadioGroupExpand$1;-><init>(Lsmartisan/widget/RadioGroupExpand;)V

    iput-object p1, p0, Lsmartisan/widget/RadioGroupExpand;->globalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-void
.end method

.method static synthetic access$000(Lsmartisan/widget/RadioGroupExpand;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lsmartisan/widget/RadioGroupExpand;->invalidateShadow()V

    return-void
.end method

.method static synthetic access$200(Lsmartisan/widget/RadioGroupExpand;)Landroid/view/View$OnLongClickListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lsmartisan/widget/RadioGroupExpand;->mListener:Landroid/view/View$OnLongClickListener;

    return-object p0
.end method

.method private getSelectedTabIndex()I
    .locals 4

    .line 1
    iget-object v0, p0, Lsmartisan/widget/RadioGroupExpand;->mTabs:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget v0, p0, Lsmartisan/widget/RadioGroupExpand;->mTabId:I

    if-gtz v0, :cond_0

    goto :goto_1

    :cond_0
    move v0, v1

    .line 2
    :goto_0
    iget-object v2, p0, Lsmartisan/widget/RadioGroupExpand;->mTabs:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 3
    iget-object v2, p0, Lsmartisan/widget/RadioGroupExpand;->mTabs:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsmartisan/widget/RadioGroupExpand$TabSpec;

    iget v2, v2, Lsmartisan/widget/RadioGroupExpand$TabSpec;->mTabId:I

    iget v3, p0, Lsmartisan/widget/RadioGroupExpand;->mTabId:I

    if-ne v2, v3, :cond_1

    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v1
.end method

.method private initTabIcon(Landroid/widget/RadioButton;Lsmartisan/widget/RadioGroupExpand$TabSpec;)V
    .locals 4

    .line 1
    iget v0, p2, Lsmartisan/widget/RadioGroupExpand$TabSpec;->mTopDrawable:I

    if-nez v0, :cond_0

    .line 2
    sget v0, Lsmartisan/widget/R$drawable;->smartisan_bottom_tab_icon_selector:I

    iput v0, p2, Lsmartisan/widget/RadioGroupExpand$TabSpec;->mTopDrawable:I

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/widget/RadioGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p2, Lsmartisan/widget/RadioGroupExpand$TabSpec;->mTopDrawable:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Landroid/widget/RadioGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lsmartisan/widget/R$dimen;->smartisan_bottom_bar_icon_max_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    const/4 v2, 0x0

    .line 5
    invoke-virtual {v0, v2, v2, v1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const/4 v3, 0x0

    .line 6
    invoke-virtual {p1, v3, v0, v3, v3}, Landroid/widget/RadioButton;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 7
    invoke-virtual {p0}, Landroid/widget/RadioGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lsmartisan/widget/R$dimen;->smartisan_bottom_bar_drawablePadding:I

    .line 8
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 9
    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setCompoundDrawablePadding(I)V

    .line 10
    iget p2, p2, Lsmartisan/widget/RadioGroupExpand$TabSpec;->mTabName:I

    if-lez p2, :cond_1

    .line 11
    invoke-virtual {p0}, Landroid/widget/RadioGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lsmartisan/widget/R$dimen;->smartisan_bottom_bar_paddingTop:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {p0}, Landroid/widget/RadioGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lsmartisan/widget/R$dimen;->smartisan_bottom_bar_height_only_icon:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    sub-int/2addr p2, v1

    div-int/lit8 p2, p2, 0x2

    .line 13
    :goto_0
    invoke-virtual {p1, v2, p2, v2, v2}, Landroid/widget/RadioButton;->setPadding(IIII)V

    return-void
.end method

.method private initTabName(Landroid/widget/RadioButton;Lsmartisan/widget/RadioGroupExpand$TabSpec;)V
    .locals 2

    .line 1
    iget p2, p2, Lsmartisan/widget/RadioGroupExpand$TabSpec;->mTabName:I

    if-lez p2, :cond_2

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lsmartisan/widget/RadioGroupExpand;->mHasTextAndIcon:Z

    .line 3
    invoke-virtual {p1, p2}, Landroid/widget/RadioButton;->setText(I)V

    .line 4
    iget p2, p0, Lsmartisan/widget/RadioGroupExpand;->mTabTextSize:I

    const/4 v0, 0x0

    if-lez p2, :cond_0

    int-to-float p2, p2

    .line 5
    invoke-virtual {p1, v0, p2}, Landroid/widget/RadioButton;->setTextSize(IF)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/widget/RadioGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lsmartisan/widget/R$dimen;->smartisan_bottom_bar_name_size:I

    .line 7
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    int-to-float p2, p2

    .line 8
    invoke-virtual {p1, v0, p2}, Landroid/widget/RadioButton;->setTextSize(IF)V

    .line 9
    :goto_0
    iget p2, p0, Lsmartisan/widget/RadioGroupExpand;->mTabColor:I

    if-lez p2, :cond_1

    .line 10
    invoke-virtual {p0}, Landroid/widget/RadioGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    iget v0, p0, Lsmartisan/widget/RadioGroupExpand;->mTabColor:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/RadioButton;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_1

    .line 11
    :cond_1
    invoke-virtual {p0}, Landroid/widget/RadioGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lsmartisan/widget/R$color;->bottom_tab_text_color:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/RadioButton;->setTextColor(Landroid/content/res/ColorStateList;)V

    :goto_1
    const/16 p2, 0x31

    .line 12
    invoke-virtual {p1, p2}, Landroid/widget/RadioButton;->setGravity(I)V

    .line 13
    sget-object p2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, p2}, Landroid/widget/RadioButton;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 14
    invoke-virtual {p1}, Landroid/widget/RadioButton;->setSingleLine()V

    .line 15
    sget-object p2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {p1, p2}, Landroid/widget/RadioButton;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_2
    return-void
.end method

.method private invalidateShadow()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/widget/RadioGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2
    instance-of v1, v0, Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 4
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x2

    .line 5
    invoke-virtual {p0}, Landroid/widget/RadioGroup;->getId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 6
    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/RadioGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 7
    sget v3, Lsmartisan/widget/R$id;->id_smartisan_bar_shadow:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setId(I)V

    .line 8
    sget v3, Lsmartisan/widget/R$drawable;->tab_bar_shadow:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 9
    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 10
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parent must be a RelativeLayout when showing the shadow."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addTab(Lsmartisan/widget/RadioGroupExpand$TabSpec;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/RadioGroupExpand;->mTabs:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public newNoTitleTabSpec(III)Lsmartisan/widget/RadioGroupExpand$TabSpec;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lsmartisan/widget/RadioGroupExpand;->newTabSpec(III)Lsmartisan/widget/RadioGroupExpand$TabSpec;

    move-result-object p1

    return-object p1
.end method

.method public newTabSpec(III)Lsmartisan/widget/RadioGroupExpand$TabSpec;
    .locals 1

    .line 1
    new-instance v0, Lsmartisan/widget/RadioGroupExpand$TabSpec;

    invoke-direct {v0, p0}, Lsmartisan/widget/RadioGroupExpand$TabSpec;-><init>(Lsmartisan/widget/RadioGroupExpand;)V

    .line 2
    iput p1, v0, Lsmartisan/widget/RadioGroupExpand$TabSpec;->mTabId:I

    .line 3
    iput p2, v0, Lsmartisan/widget/RadioGroupExpand$TabSpec;->mTabName:I

    .line 4
    iput p3, v0, Lsmartisan/widget/RadioGroupExpand$TabSpec;->mTopDrawable:I

    return-object v0
.end method

.method public setDefaultSelectedTab(I)V
    .locals 0

    .line 1
    iput p1, p0, Lsmartisan/widget/RadioGroupExpand;->mTabId:I

    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/RadioGroupExpand;->mListener:Landroid/view/View$OnLongClickListener;

    return-void
.end method

.method public setTabBackgroundDrawable(I)V
    .locals 0

    .line 1
    iput p1, p0, Lsmartisan/widget/RadioGroupExpand;->mTabBackgroundDrawable:I

    return-void
.end method

.method public setTabColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lsmartisan/widget/RadioGroupExpand;->mTabColor:I

    return-void
.end method

.method public setTabTextSize(I)V
    .locals 0

    .line 1
    iput p1, p0, Lsmartisan/widget/RadioGroupExpand;->mTabTextSize:I

    return-void
.end method

.method public setup()V
    .locals 9

    .line 1
    new-instance v0, Lsmartisan/widget/RadioGroupExpand$RadioButtonLongClickListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lsmartisan/widget/RadioGroupExpand$RadioButtonLongClickListener;-><init>(Lsmartisan/widget/RadioGroupExpand;Lsmartisan/widget/RadioGroupExpand$1;)V

    .line 2
    invoke-direct {p0}, Lsmartisan/widget/RadioGroupExpand;->getSelectedTabIndex()I

    move-result v2

    const/4 v3, 0x0

    .line 3
    invoke-virtual {p0, v3}, Landroid/widget/RadioGroup;->setOrientation(I)V

    .line 4
    iget-object v4, p0, Lsmartisan/widget/RadioGroupExpand;->mTabs:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0, v4}, Landroid/widget/RadioGroup;->setWeightSum(F)V

    .line 5
    new-instance v4, Landroid/widget/RadioGroup$LayoutParams;

    const/4 v5, -0x1

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v4, v3, v5, v6}, Landroid/widget/RadioGroup$LayoutParams;-><init>(IIF)V

    move v5, v3

    .line 6
    :goto_0
    iget-object v6, p0, Lsmartisan/widget/RadioGroupExpand;->mTabs:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 7
    iget-object v6, p0, Lsmartisan/widget/RadioGroupExpand;->mTabs:Ljava/util/LinkedList;

    invoke-virtual {v6, v5}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lsmartisan/widget/RadioGroupExpand$TabSpec;

    .line 8
    new-instance v7, Landroid/widget/RadioButton;

    invoke-virtual {p0}, Landroid/widget/RadioGroup;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    .line 9
    invoke-direct {p0, v7, v6}, Lsmartisan/widget/RadioGroupExpand;->initTabIcon(Landroid/widget/RadioButton;Lsmartisan/widget/RadioGroupExpand$TabSpec;)V

    .line 10
    invoke-direct {p0, v7, v6}, Lsmartisan/widget/RadioGroupExpand;->initTabName(Landroid/widget/RadioButton;Lsmartisan/widget/RadioGroupExpand$TabSpec;)V

    .line 11
    iget v8, v6, Lsmartisan/widget/RadioGroupExpand$TabSpec;->mTabId:I

    invoke-virtual {v7, v8}, Landroid/widget/RadioButton;->setId(I)V

    .line 12
    invoke-virtual {v7, v4}, Landroid/widget/RadioButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 13
    invoke-virtual {v7, v0}, Landroid/widget/RadioButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    if-ne v2, v5, :cond_0

    const/4 v8, 0x1

    goto :goto_1

    :cond_0
    move v8, v3

    .line 14
    :goto_1
    invoke-virtual {v7, v8}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 15
    invoke-virtual {v7, v1}, Landroid/widget/RadioButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 16
    iget v8, p0, Lsmartisan/widget/RadioGroupExpand;->mTabBackgroundDrawable:I

    if-lez v8, :cond_1

    .line 17
    invoke-virtual {p0}, Landroid/widget/RadioGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget v8, p0, Lsmartisan/widget/RadioGroupExpand;->mTabBackgroundDrawable:I

    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v7, v6}, Landroid/widget/RadioButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 18
    :cond_1
    invoke-virtual {p0}, Landroid/widget/RadioGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget v6, v6, Lsmartisan/widget/RadioGroupExpand$TabSpec;->mTabName:I

    if-lez v6, :cond_2

    sget v6, Lsmartisan/widget/R$drawable;->smartisan_bottom_tab_bg_selector:I

    goto :goto_2

    :cond_2
    sget v6, Lsmartisan/widget/R$drawable;->smartisan_bottom_tab_lite_bg_selector:I

    :goto_2
    invoke-virtual {v8, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v7, v6}, Landroid/widget/RadioButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 19
    :goto_3
    invoke-virtual {p0, v7}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 20
    :cond_3
    iget-boolean v0, p0, Lsmartisan/widget/RadioGroupExpand;->mHasTextAndIcon:Z

    if-eqz v0, :cond_4

    .line 21
    invoke-virtual {p0}, Landroid/widget/RadioGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/RadioGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lsmartisan/widget/R$dimen;->smartisan_bottom_bar_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_4

    .line 22
    :cond_4
    invoke-virtual {p0}, Landroid/widget/RadioGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/RadioGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lsmartisan/widget/R$dimen;->smartisan_bottom_bar_height_only_icon:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 23
    :goto_4
    invoke-virtual {p0}, Landroid/widget/RadioGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lsmartisan/widget/RadioGroupExpand;->globalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
