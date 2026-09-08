.class public Lsmartisan/widget/TitleBar;
.super Landroid/widget/RelativeLayout;
.source "TitleBar.java"

# interfaces
.implements Lsmartisan/util/NavigationBarHelper$NavigationBarStatusListener;


# static fields
.field public static final BACK_ICON_RES:I


# instance fields
.field private mAnimator:Landroid/animation/ValueAnimator;

.field private mAutoAdapterEnabled:Z

.field private mAutoAdjustCenterViewVisibility:Z

.field private mBottomType:Z

.field private mCenterView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mDefaultTextSize:I

.field private mHasLimite:Z

.field private mImageScaleEnable:Z

.field private mImageViewSize:I

.field private mLeftLastView:Landroid/view/View;

.field private mLeftViewList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mMarginEdgeValue:I

.field private mMarginViewValue:I

.field private mRightLastView:Landroid/view/View;

.field private mRightViewList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mShadowView:Landroid/view/View;

.field private mTitleBarCenterLimite:I

.field private mTitleBarHeight:I

.field private mTitleView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget v0, Lsmartisan/widget/R$drawable;->standard_icon_back_selector:I

    sput v0, Lsmartisan/widget/TitleBar;->BACK_ICON_RES:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lsmartisan/widget/TitleBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lsmartisan/widget/TitleBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lsmartisan/widget/TitleBar;->mAutoAdjustCenterViewVisibility:Z

    .line 5
    iput-boolean v0, p0, Lsmartisan/widget/TitleBar;->mImageScaleEnable:Z

    .line 6
    iput-object p1, p0, Lsmartisan/widget/TitleBar;->mContext:Landroid/content/Context;

    .line 7
    iget-object p1, p0, Lsmartisan/widget/TitleBar;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lsmartisan/widget/R$dimen;->bar_margin_edge:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lsmartisan/widget/TitleBar;->mMarginEdgeValue:I

    .line 8
    iget-object p1, p0, Lsmartisan/widget/TitleBar;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lsmartisan/widget/R$dimen;->title_bar_margin_view:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lsmartisan/widget/TitleBar;->mMarginViewValue:I

    .line 9
    iget-object p1, p0, Lsmartisan/widget/TitleBar;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lsmartisan/widget/R$dimen;->standard_icon_size:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lsmartisan/widget/TitleBar;->mImageViewSize:I

    .line 10
    iget-object p1, p0, Lsmartisan/widget/TitleBar;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lsmartisan/widget/R$dimen;->smartisan_title_bar_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lsmartisan/widget/TitleBar;->mTitleBarHeight:I

    .line 11
    iget-object p1, p0, Lsmartisan/widget/TitleBar;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lsmartisan/widget/R$dimen;->title_bar_center_limite:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lsmartisan/widget/TitleBar;->mTitleBarCenterLimite:I

    .line 12
    iget-object p1, p0, Lsmartisan/widget/TitleBar;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lsmartisan/widget/R$dimen;->title_bar_title_size:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lsmartisan/widget/TitleBar;->mDefaultTextSize:I

    .line 13
    iget-object p1, p0, Lsmartisan/widget/TitleBar;->mContext:Landroid/content/Context;

    sget-object v0, Lsmartisan/widget/R$styleable;->TitleBar:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 14
    sget p2, Lsmartisan/widget/R$styleable;->TitleBar_title_bar_center_text:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 15
    sget p2, Lsmartisan/widget/R$styleable;->TitleBar_title_bar_center_text:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 16
    invoke-virtual {p0, p2}, Lsmartisan/widget/TitleBar;->setCenterText(Ljava/lang/String;)V

    .line 17
    :cond_0
    sget p2, Lsmartisan/widget/R$styleable;->TitleBar_title_bar_bottom_type:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lsmartisan/widget/TitleBar;->mBottomType:Z

    .line 18
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 19
    invoke-direct {p0}, Lsmartisan/widget/TitleBar;->setBackgroundAndShadow()V

    return-void
.end method

.method private addLeftView(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;I)V
    .locals 4

    .line 2
    iget-boolean v0, p0, Lsmartisan/widget/TitleBar;->mHasLimite:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p2, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    .line 4
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setId(I)V

    .line 5
    iget-object v1, p0, Lsmartisan/widget/TitleBar;->mLeftLastView:Landroid/view/View;

    const/4 v2, 0x0

    const/16 v3, 0x9

    if-nez v1, :cond_2

    .line 6
    instance-of p3, p1, Lsmartisan/widget/SmartisanButton;

    if-eqz p3, :cond_1

    move p3, v2

    goto :goto_0

    :cond_1
    iget p3, p0, Lsmartisan/widget/TitleBar;->mMarginEdgeValue:I

    .line 7
    :goto_0
    iput p3, p2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 8
    invoke-virtual {p2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    move p3, v2

    goto :goto_2

    :cond_2
    if-ltz p3, :cond_5

    .line 9
    iget-object v1, p0, Lsmartisan/widget/TitleBar;->mLeftViewList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt p3, v1, :cond_3

    goto :goto_1

    :cond_3
    if-nez p3, :cond_4

    .line 10
    iget v1, p0, Lsmartisan/widget/TitleBar;->mMarginEdgeValue:I

    iput v1, p2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 11
    invoke-virtual {p2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 12
    iget-object v1, p0, Lsmartisan/widget/TitleBar;->mLeftViewList:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 13
    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 14
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_2

    .line 15
    :cond_4
    iget-object v1, p0, Lsmartisan/widget/TitleBar;->mLeftViewList:Ljava/util/List;

    add-int/lit8 v2, p3, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 16
    iget-object v2, p0, Lsmartisan/widget/TitleBar;->mLeftViewList:Ljava/util/List;

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 17
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 18
    iget v1, p0, Lsmartisan/widget/TitleBar;->mMarginViewValue:I

    iput v1, p2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 19
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 20
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_2

    .line 21
    :cond_5
    :goto_1
    iget-object p3, p0, Lsmartisan/widget/TitleBar;->mLeftViewList:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    .line 22
    iget-object v1, p0, Lsmartisan/widget/TitleBar;->mLeftLastView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 23
    iget v0, p0, Lsmartisan/widget/TitleBar;->mMarginViewValue:I

    iput v0, p2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    :goto_2
    const/16 v0, 0xf

    .line 24
    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 25
    iget-object v0, p0, Lsmartisan/widget/TitleBar;->mLeftViewList:Ljava/util/List;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne p3, v0, :cond_7

    .line 26
    :cond_6
    iput-object p1, p0, Lsmartisan/widget/TitleBar;->mLeftLastView:Landroid/view/View;

    .line 27
    :cond_7
    invoke-direct {p0}, Lsmartisan/widget/TitleBar;->getLeftViewListOrCreate()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 28
    invoke-virtual {p0, p1, p2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private addRightView(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;I)V
    .locals 3

    .line 2
    iget-boolean v0, p0, Lsmartisan/widget/TitleBar;->mHasLimite:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p2, Landroid/widget/RelativeLayout$LayoutParams;->alignWithParent:Z

    .line 4
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setId(I)V

    .line 5
    iget-object v0, p0, Lsmartisan/widget/TitleBar;->mRightLastView:Landroid/view/View;

    const/16 v1, 0xb

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 6
    instance-of p3, p1, Lsmartisan/widget/SmartisanButton;

    if-eqz p3, :cond_1

    move p3, v2

    goto :goto_0

    :cond_1
    iget p3, p0, Lsmartisan/widget/TitleBar;->mMarginEdgeValue:I

    .line 7
    :goto_0
    iput p3, p2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 8
    invoke-virtual {p2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    move p3, v2

    goto :goto_2

    :cond_2
    if-ltz p3, :cond_5

    .line 9
    iget-object v0, p0, Lsmartisan/widget/TitleBar;->mRightViewList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p3, v0, :cond_3

    goto :goto_1

    :cond_3
    if-nez p3, :cond_4

    .line 10
    iget v0, p0, Lsmartisan/widget/TitleBar;->mMarginEdgeValue:I

    iput v0, p2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 11
    invoke-virtual {p2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 12
    iget-object v0, p0, Lsmartisan/widget/TitleBar;->mRightViewList:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 13
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 14
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_2

    .line 15
    :cond_4
    iget-object v0, p0, Lsmartisan/widget/TitleBar;->mRightViewList:Ljava/util/List;

    add-int/lit8 v1, p3, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 16
    iget-object v1, p0, Lsmartisan/widget/TitleBar;->mRightViewList:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 17
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p2, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 18
    iget v0, p0, Lsmartisan/widget/TitleBar;->mMarginViewValue:I

    iput v0, p2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 19
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 20
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_2

    .line 21
    :cond_5
    :goto_1
    iget-object p3, p0, Lsmartisan/widget/TitleBar;->mRightViewList:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    .line 22
    iget-object v0, p0, Lsmartisan/widget/TitleBar;->mRightLastView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p2, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 23
    iget v0, p0, Lsmartisan/widget/TitleBar;->mMarginViewValue:I

    iput v0, p2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    :goto_2
    const/16 v0, 0xf

    .line 24
    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 25
    iget-object v0, p0, Lsmartisan/widget/TitleBar;->mRightViewList:Ljava/util/List;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne p3, v0, :cond_7

    .line 26
    :cond_6
    iput-object p1, p0, Lsmartisan/widget/TitleBar;->mRightLastView:Landroid/view/View;

    .line 27
    :cond_7
    invoke-direct {p0}, Lsmartisan/widget/TitleBar;->getRightViewListOrCreate()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 28
    invoke-virtual {p0, p1, p2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private findLayoutParams(Landroid/view/View;Z)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 2
    instance-of v0, p1, Landroid/widget/RelativeLayout$LayoutParams;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_1

    .line 4
    invoke-direct {p0}, Lsmartisan/widget/TitleBar;->generateCenterViewLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    :goto_0
    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    :goto_1
    return-object p1
.end method

.method private generateCenterViewLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0xd

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    return-object v0
.end method

.method private generateTitleView()Landroid/widget/TextView;
    .locals 3

    .line 1
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lsmartisan/widget/TitleBar;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 3
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 4
    iget v1, p0, Lsmartisan/widget/TitleBar;->mDefaultTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v1, 0x21

    .line 5
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 6
    iget-object v1, p0, Lsmartisan/widget/TitleBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lsmartisan/widget/R$color;->title_or_btn_text_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    return-object v0
.end method

.method private getLeftViewListOrCreate()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lsmartisan/widget/TitleBar;->mLeftViewList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lsmartisan/widget/TitleBar;->mLeftViewList:Ljava/util/List;

    .line 3
    :cond_0
    iget-object v0, p0, Lsmartisan/widget/TitleBar;->mLeftViewList:Ljava/util/List;

    return-object v0
.end method

.method private getRightViewListOrCreate()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lsmartisan/widget/TitleBar;->mRightViewList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lsmartisan/widget/TitleBar;->mRightViewList:Ljava/util/List;

    .line 3
    :cond_0
    iget-object v0, p0, Lsmartisan/widget/TitleBar;->mRightViewList:Ljava/util/List;

    return-object v0
.end method

.method private getTitleViewOrCreate()Landroid/widget/TextView;
    .locals 2

    .line 1
    iget-object v0, p0, Lsmartisan/widget/TitleBar;->mCenterView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lsmartisan/widget/TitleBar;->mTitleView:Landroid/widget/TextView;

    if-ne v0, v1, :cond_0

    return-object v1

    .line 2
    :cond_0
    iget-object v0, p0, Lsmartisan/widget/TitleBar;->mTitleView:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 3
    invoke-direct {p0}, Lsmartisan/widget/TitleBar;->generateTitleView()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lsmartisan/widget/TitleBar;->mTitleView:Landroid/widget/TextView;

    .line 4
    :cond_1
    iget-object v0, p0, Lsmartisan/widget/TitleBar;->mCenterView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 5
    invoke-direct {p0}, Lsmartisan/widget/TitleBar;->removeCenterView()V

    .line 6
    :cond_2
    iget-object v0, p0, Lsmartisan/widget/TitleBar;->mTitleView:Landroid/widget/TextView;

    invoke-direct {p0}, Lsmartisan/widget/TitleBar;->generateCenterViewLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 7
    iget-object v0, p0, Lsmartisan/widget/TitleBar;->mTitleView:Landroid/widget/TextView;

    iput-object v0, p0, Lsmartisan/widget/TitleBar;->mCenterView:Landroid/view/View;

    return-object v0
.end method

.method private getViewByIndex(ILjava/util/List;)Landroid/view/View;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    if-eqz p2, :cond_2

    if-ltz p1, :cond_2

    .line 1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_2

    .line 3
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 4
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_1

    add-int/lit8 v4, v2, 0x1

    if-ne p1, v2, :cond_0

    return-object v3

    :cond_0
    move v2, v4

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private getViewCount(Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    move v2, v0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 3
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 4
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    :cond_2
    return v0
.end method

.method private hasView(Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 3
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 4
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private limiteCenterViewWidth(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lsmartisan/widget/TitleBar;->mCenterView:Landroid/view/View;

    iget-object v1, p0, Lsmartisan/widget/TitleBar;->mTitleView:Landroid/widget/TextView;

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setMaxWidth(I)V

    goto :goto_0

    .line 3
    :cond_0
    instance-of v1, v0, Lsmartisan/widget/SmartisanSpinnerView;

    if-eqz v1, :cond_1

    .line 4
    check-cast v0, Lsmartisan/widget/SmartisanSpinnerView;

    invoke-virtual {v0, p1}, Lsmartisan/widget/SmartisanSpinnerView;->setPickerAvailWidth(I)V

    goto :goto_0

    .line 5
    :cond_1
    instance-of v1, v0, Lsmartisan/widget/SmartisanRadioGroup;

    if-eqz v1, :cond_2

    .line 6
    check-cast v0, Lsmartisan/widget/SmartisanRadioGroup;

    invoke-virtual {v0, p1}, Lsmartisan/widget/SmartisanRadioGroup;->setAvailWidth(I)V

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    :goto_0
    return-void
.end method

.method private removeCenterView()V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/TitleBar;->mCenterView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lsmartisan/widget/TitleBar;->mCenterView:Landroid/view/View;

    :cond_0
    return-void
.end method

.method private setBackgroundAndShadow()V
    .locals 2

    const/4 v0, -0x1

    .line 1
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 2
    iget-boolean v0, p0, Lsmartisan/widget/TitleBar;->mBottomType:Z

    xor-int/lit8 v0, v0, 0x1

    .line 3
    iget-object v1, p0, Lsmartisan/widget/TitleBar;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lsmartisan/widget/BarsHelper;->createShadowBuilder(Landroid/content/Context;)Lsmartisan/widget/BarsHelper$BarShadowBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Lsmartisan/widget/BarsHelper$BarShadowBuilder;->setShadowType(I)Lsmartisan/widget/BarsHelper$BarShadowBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lsmartisan/widget/BarsHelper$BarShadowBuilder;->build(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lsmartisan/widget/TitleBar;->mShadowView:Landroid/view/View;

    const v0, 0x3de147ae    # 0.11f

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setElevation(F)V

    return-void
.end method

.method private setCenterView(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lsmartisan/widget/TitleBar;->mCenterView:Landroid/view/View;

    if-ne v0, p1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-direct {p0}, Lsmartisan/widget/TitleBar;->removeCenterView()V

    .line 4
    iput-object p1, p0, Lsmartisan/widget/TitleBar;->mCenterView:Landroid/view/View;

    .line 5
    iget-object p1, p0, Lsmartisan/widget/TitleBar;->mCenterView:Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setCenterViewVisibility(I)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lsmartisan/widget/TitleBar;->mAutoAdjustCenterViewVisibility:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lsmartisan/widget/TitleBar;->mCenterView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addLeftButton(II)Lsmartisan/widget/SmartisanButton;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lsmartisan/widget/TitleBar;->generateSmartisanButton(ILjava/lang/String;)Lsmartisan/widget/SmartisanButton;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1}, Lsmartisan/widget/TitleBar;->addLeftView(Landroid/view/View;)V

    return-object p1
.end method

.method public addLeftImageView(I)Landroid/widget/ImageView;
    .locals 1

    const/4 v0, -0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lsmartisan/widget/TitleBar;->addLeftImageView(II)Landroid/widget/ImageView;

    move-result-object p1

    return-object p1
.end method

.method public addLeftImageView(II)Landroid/widget/ImageView;
    .locals 1

    .line 2
    invoke-virtual {p0, p1}, Lsmartisan/widget/TitleBar;->generateImageView(I)Landroid/widget/ImageView;

    move-result-object p1

    .line 3
    invoke-virtual {p0}, Lsmartisan/widget/TitleBar;->generateImageViewLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lsmartisan/widget/TitleBar;->addLeftView(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;I)V

    return-object p1
.end method

.method public addLeftView(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lsmartisan/widget/TitleBar;->findLayoutParams(Landroid/view/View;Z)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    invoke-direct {p0, p1, v0, v1}, Lsmartisan/widget/TitleBar;->addLeftView(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;I)V

    return-void
.end method

.method public addRightButton(II)Lsmartisan/widget/SmartisanButton;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lsmartisan/widget/TitleBar;->generateSmartisanButton(ILjava/lang/String;)Lsmartisan/widget/SmartisanButton;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1}, Lsmartisan/widget/TitleBar;->addRightView(Landroid/view/View;)V

    return-object p1
.end method

.method public addRightImageView(I)Landroid/widget/ImageView;
    .locals 1

    const/4 v0, -0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lsmartisan/widget/TitleBar;->addRightImageView(II)Landroid/widget/ImageView;

    move-result-object p1

    return-object p1
.end method

.method public addRightImageView(II)Landroid/widget/ImageView;
    .locals 1

    .line 2
    invoke-virtual {p0, p1}, Lsmartisan/widget/TitleBar;->generateImageView(I)Landroid/widget/ImageView;

    move-result-object p1

    .line 3
    invoke-virtual {p0}, Lsmartisan/widget/TitleBar;->generateImageViewLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lsmartisan/widget/TitleBar;->addRightView(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;I)V

    return-object p1
.end method

.method public addRightView(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lsmartisan/widget/TitleBar;->findLayoutParams(Landroid/view/View;Z)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    invoke-direct {p0, p1, v0, v1}, Lsmartisan/widget/TitleBar;->addRightView(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;I)V

    return-void
.end method

.method public avoidImageViewScale(Landroid/widget/ImageView;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p1, v0}, Lsmartisan/widget/BarsHelper;->setBarIconScaleTouchListener(Landroid/view/View;Z)V

    return-void
.end method

.method protected generateImageView(I)Landroid/widget/ImageView;
    .locals 2

    .line 1
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lsmartisan/widget/TitleBar;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3
    invoke-static {v0, p1}, Lsmartisan/util/DescriptionUtils;->applyDescriptionIfNeed(Landroid/view/View;I)Z

    move-result p1

    .line 4
    iget-boolean v1, p0, Lsmartisan/widget/TitleBar;->mImageScaleEnable:Z

    if-eqz v1, :cond_0

    if-nez p1, :cond_0

    .line 5
    invoke-static {v0}, Lsmartisan/widget/BarsHelper;->setBarIconScaleTouchListener(Landroid/view/View;)V

    :cond_0
    return-object v0
.end method

.method protected generateImageViewLayoutParams()Landroid/widget/RelativeLayout$LayoutParams;
    .locals 2

    .line 1
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lsmartisan/widget/TitleBar;->mImageViewSize:I

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateSingleCenterViewLayoutParams(Z)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 3

    .line 1
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 2
    iget v2, p0, Lsmartisan/widget/TitleBar;->mMarginEdgeValue:I

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    if-eqz p1, :cond_1

    .line 3
    iget v1, p0, Lsmartisan/widget/TitleBar;->mMarginEdgeValue:I

    :cond_1
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    return-object v0
.end method

.method protected generateSmartisanButton(ILjava/lang/String;)Lsmartisan/widget/SmartisanButton;
    .locals 2

    .line 1
    new-instance v0, Lsmartisan/widget/SmartisanButton;

    iget-object v1, p0, Lsmartisan/widget/TitleBar;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lsmartisan/widget/SmartisanButton;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {v0, p1}, Lsmartisan/widget/SmartisanButton;->setButtonStyle(I)V

    .line 3
    invoke-virtual {v0, p2}, Lsmartisan/widget/SmartisanButton;->setButtonText(Ljava/lang/String;)V

    return-object v0
.end method

.method public getLeftViewByIndex(I)Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/TitleBar;->mLeftViewList:Ljava/util/List;

    invoke-direct {p0, p1, v0}, Lsmartisan/widget/TitleBar;->getViewByIndex(ILjava/util/List;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getLeftViewCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/TitleBar;->mLeftViewList:Ljava/util/List;

    invoke-direct {p0, v0}, Lsmartisan/widget/TitleBar;->getViewCount(Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method public getRightViewByIndex(I)Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/TitleBar;->mRightViewList:Ljava/util/List;

    invoke-direct {p0, p1, v0}, Lsmartisan/widget/TitleBar;->getViewByIndex(ILjava/util/List;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getRightViewCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/TitleBar;->mRightViewList:Ljava/util/List;

    invoke-direct {p0, v0}, Lsmartisan/widget/TitleBar;->getViewCount(Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method public getShadowView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/TitleBar;->mShadowView:Landroid/view/View;

    return-object v0
.end method

.method public getTitleView()Landroid/widget/TextView;
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/TitleBar;->mTitleView:Landroid/widget/TextView;

    return-object v0
.end method

.method public hasLeftView()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/TitleBar;->mLeftViewList:Ljava/util/List;

    invoke-direct {p0, v0}, Lsmartisan/widget/TitleBar;->hasView(Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method public hasRightView()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/TitleBar;->mRightViewList:Ljava/util/List;

    invoke-direct {p0, v0}, Lsmartisan/widget/TitleBar;->hasView(Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method public isAutoAdapterEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lsmartisan/widget/TitleBar;->mAutoAdapterEnabled:Z

    return v0
.end method

.method public isCenterTitleTextView()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lsmartisan/widget/TitleBar;->mCenterView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lsmartisan/widget/TitleBar;->mTitleView:Landroid/widget/TextView;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onApplyNavigationBarStatusChange(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/TitleBar;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lsmartisan/widget/TitleBar;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 3
    :cond_0
    invoke-static {p0, p1}, Lsmartisan/widget/BarsHelper;->prepareNavigationBarStatusChangeAnim(Landroid/view/View;Z)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lsmartisan/widget/TitleBar;->mAnimator:Landroid/animation/ValueAnimator;

    .line 4
    iget-object p1, p0, Lsmartisan/widget/TitleBar;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 13

    .line 1
    iget p2, p0, Lsmartisan/widget/TitleBar;->mTitleBarHeight:I

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 2
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 3
    iget-object v0, p0, Lsmartisan/widget/TitleBar;->mCenterView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lsmartisan/widget/TitleBar;->mLeftViewList:Ljava/util/List;

    const/16 v1, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_6

    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v4, v3

    move v5, v4

    move v6, v5

    move v7, v6

    :goto_0
    if-ge v4, v0, :cond_7

    .line 6
    iget-object v8, p0, Lsmartisan/widget/TitleBar;->mLeftViewList:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    .line 7
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-ne v9, v1, :cond_1

    goto :goto_3

    .line 8
    :cond_1
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/RelativeLayout$LayoutParams;

    add-int/lit8 v10, v6, 0x1

    if-nez v6, :cond_2

    .line 9
    iget v6, p0, Lsmartisan/widget/TitleBar;->mMarginEdgeValue:I

    goto :goto_1

    :cond_2
    iget v6, p0, Lsmartisan/widget/TitleBar;->mMarginViewValue:I

    :goto_1
    if-nez v4, :cond_4

    .line 10
    instance-of v11, v8, Lsmartisan/widget/SmartisanButton;

    if-eqz v11, :cond_3

    move v6, v3

    goto :goto_2

    .line 11
    :cond_3
    iget v11, p0, Lsmartisan/widget/TitleBar;->mMarginEdgeValue:I

    add-int/2addr v5, v11

    .line 12
    :cond_4
    :goto_2
    iget v11, v9, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    if-eq v11, v6, :cond_5

    .line 13
    iput v6, v9, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    move v7, v2

    .line 14
    :cond_5
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    iget v8, p0, Lsmartisan/widget/TitleBar;->mMarginViewValue:I

    add-int/2addr v6, v8

    add-int/2addr v5, v6

    move v6, v10

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_6
    move v5, v3

    move v7, v5

    .line 15
    :cond_7
    iget-object v0, p0, Lsmartisan/widget/TitleBar;->mRightViewList:Ljava/util/List;

    if-eqz v0, :cond_e

    .line 16
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v4, v3

    move v6, v4

    move v8, v7

    move v7, v6

    :goto_4
    if-ge v4, v0, :cond_d

    .line 17
    iget-object v9, p0, Lsmartisan/widget/TitleBar;->mRightViewList:Ljava/util/List;

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    .line 18
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-ne v10, v1, :cond_8

    goto :goto_7

    .line 19
    :cond_8
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/RelativeLayout$LayoutParams;

    add-int/lit8 v11, v7, 0x1

    if-nez v7, :cond_9

    .line 20
    iget v7, p0, Lsmartisan/widget/TitleBar;->mMarginEdgeValue:I

    goto :goto_5

    :cond_9
    iget v7, p0, Lsmartisan/widget/TitleBar;->mMarginViewValue:I

    :goto_5
    if-nez v4, :cond_b

    .line 21
    instance-of v12, v9, Lsmartisan/widget/SmartisanButton;

    if-eqz v12, :cond_a

    move v7, v3

    goto :goto_6

    .line 22
    :cond_a
    iget v12, p0, Lsmartisan/widget/TitleBar;->mMarginEdgeValue:I

    add-int/2addr v6, v12

    .line 23
    :cond_b
    :goto_6
    iget v12, v10, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    if-eq v12, v7, :cond_c

    .line 24
    iput v7, v10, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    move v8, v2

    .line 25
    :cond_c
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    iget v9, p0, Lsmartisan/widget/TitleBar;->mMarginViewValue:I

    add-int/2addr v7, v9

    add-int/2addr v6, v7

    move v7, v11

    :goto_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_d
    move v7, v8

    goto :goto_8

    :cond_e
    move v6, v3

    .line 26
    :goto_8
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 27
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getPaddingLeft()I

    move-result v8

    sub-int/2addr v4, v8

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getPaddingRight()I

    move-result v8

    sub-int/2addr v4, v8

    mul-int/lit8 v8, v0, 0x2

    sub-int v8, v4, v8

    if-eqz v0, :cond_f

    .line 28
    iget v9, p0, Lsmartisan/widget/TitleBar;->mMarginViewValue:I

    mul-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    :cond_f
    sub-int/2addr v4, v5

    sub-int/2addr v4, v6

    .line 29
    iget v5, p0, Lsmartisan/widget/TitleBar;->mTitleBarCenterLimite:I

    if-le v0, v5, :cond_10

    .line 30
    invoke-direct {p0, v1}, Lsmartisan/widget/TitleBar;->setCenterViewVisibility(I)V

    goto :goto_a

    .line 31
    :cond_10
    invoke-direct {p0, v3}, Lsmartisan/widget/TitleBar;->setCenterViewVisibility(I)V

    .line 32
    iget-object v0, p0, Lsmartisan/widget/TitleBar;->mCenterView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-le v0, v8, :cond_11

    move v0, v2

    goto :goto_9

    :cond_11
    move v0, v3

    :goto_9
    if-eqz v0, :cond_12

    .line 33
    invoke-direct {p0, v8}, Lsmartisan/widget/TitleBar;->limiteCenterViewWidth(I)V

    move v7, v2

    .line 34
    :cond_12
    :goto_a
    iget v0, p0, Lsmartisan/widget/TitleBar;->mImageViewSize:I

    if-ge v4, v0, :cond_13

    goto :goto_b

    :cond_13
    move v2, v3

    :goto_b
    iput-boolean v2, p0, Lsmartisan/widget/TitleBar;->mHasLimite:Z

    if-eqz v7, :cond_14

    .line 35
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    :cond_14
    return-void
.end method

.method public removeAllLeftViews()V
    .locals 2

    .line 1
    iget-object v0, p0, Lsmartisan/widget/TitleBar;->mLeftLastView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lsmartisan/widget/TitleBar;->mLeftViewList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 3
    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->removeViewInLayout(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lsmartisan/widget/TitleBar;->mLeftLastView:Landroid/view/View;

    .line 5
    iget-object v0, p0, Lsmartisan/widget/TitleBar;->mLeftViewList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 6
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    .line 7
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->invalidate()V

    return-void
.end method

.method public removeAllRightViews()V
    .locals 2

    .line 1
    iget-object v0, p0, Lsmartisan/widget/TitleBar;->mRightLastView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lsmartisan/widget/TitleBar;->mRightViewList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 3
    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->removeViewInLayout(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lsmartisan/widget/TitleBar;->mRightLastView:Landroid/view/View;

    .line 5
    iget-object v0, p0, Lsmartisan/widget/TitleBar;->mRightViewList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 6
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    .line 7
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->invalidate()V

    return-void
.end method

.method public removeLeftView(I)V
    .locals 4

    if-ltz p1, :cond_4

    .line 1
    iget-object v0, p0, Lsmartisan/widget/TitleBar;->mLeftViewList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    if-nez p1, :cond_2

    add-int/lit8 v1, p1, 0x1

    .line 2
    iget-object v2, p0, Lsmartisan/widget/TitleBar;->mLeftViewList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3
    iget-object v2, p0, Lsmartisan/widget/TitleBar;->mLeftViewList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 4
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/16 v0, 0x9

    .line 5
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lsmartisan/widget/TitleBar;->mLeftLastView:Landroid/view/View;

    goto :goto_0

    .line 7
    :cond_2
    iget-object v1, p0, Lsmartisan/widget/TitleBar;->mLeftViewList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v0

    if-ne p1, v1, :cond_3

    .line 8
    iget-object v0, p0, Lsmartisan/widget/TitleBar;->mLeftViewList:Ljava/util/List;

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lsmartisan/widget/TitleBar;->mLeftLastView:Landroid/view/View;

    goto :goto_0

    .line 9
    :cond_3
    iget-object v1, p0, Lsmartisan/widget/TitleBar;->mLeftViewList:Ljava/util/List;

    add-int/lit8 v2, p1, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 10
    iget-object v2, p0, Lsmartisan/widget/TitleBar;->mLeftViewList:Ljava/util/List;

    add-int/lit8 v3, p1, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 11
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 12
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v2, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 13
    :goto_0
    iget-object v0, p0, Lsmartisan/widget/TitleBar;->mLeftViewList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 14
    iget-object v0, p0, Lsmartisan/widget/TitleBar;->mLeftViewList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_4
    :goto_1
    return-void
.end method

.method public removeRightView(I)V
    .locals 4

    if-ltz p1, :cond_4

    .line 1
    iget-object v0, p0, Lsmartisan/widget/TitleBar;->mRightViewList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_2

    add-int/lit8 v1, p1, 0x1

    .line 2
    iget-object v2, p0, Lsmartisan/widget/TitleBar;->mRightViewList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 3
    iget-object v2, p0, Lsmartisan/widget/TitleBar;->mRightViewList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 4
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/16 v0, 0xb

    .line 5
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lsmartisan/widget/TitleBar;->mRightLastView:Landroid/view/View;

    goto :goto_0

    .line 7
    :cond_2
    iget-object v1, p0, Lsmartisan/widget/TitleBar;->mRightViewList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_3

    .line 8
    iget-object v0, p0, Lsmartisan/widget/TitleBar;->mRightViewList:Ljava/util/List;

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lsmartisan/widget/TitleBar;->mRightLastView:Landroid/view/View;

    goto :goto_0

    .line 9
    :cond_3
    iget-object v1, p0, Lsmartisan/widget/TitleBar;->mRightViewList:Ljava/util/List;

    add-int/lit8 v2, p1, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 10
    iget-object v2, p0, Lsmartisan/widget/TitleBar;->mRightViewList:Ljava/util/List;

    add-int/lit8 v3, p1, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 11
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 12
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v2, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 13
    :goto_0
    iget-object v0, p0, Lsmartisan/widget/TitleBar;->mRightViewList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 14
    iget-object v0, p0, Lsmartisan/widget/TitleBar;->mRightViewList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_4
    :goto_1
    return-void
.end method

.method public setAutoAdapterEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lsmartisan/widget/TitleBar;->mAutoAdapterEnabled:Z

    .line 2
    iget-boolean p1, p0, Lsmartisan/widget/TitleBar;->mAutoAdapterEnabled:Z

    invoke-static {p0, p1}, Lsmartisan/util/NavigationBarHelper;->setAutoAdapterNavigationBarEnabled(Landroid/view/View;Z)V

    return-void
.end method

.method public setAutoAdjustCenterViewVisibility(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lsmartisan/widget/TitleBar;->mAutoAdjustCenterViewVisibility:Z

    return-void
.end method

.method public setCenterText(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/TitleBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lsmartisan/widget/TitleBar;->setCenterText(Ljava/lang/String;)V

    return-void
.end method

.method public setCenterText(Ljava/lang/String;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lsmartisan/widget/TitleBar;->getTitleViewOrCreate()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setCenterTextColor(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lsmartisan/widget/TitleBar;->getTitleViewOrCreate()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public setCenterView(Landroid/view/View;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0}, Lsmartisan/widget/TitleBar;->findLayoutParams(Landroid/view/View;Z)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lsmartisan/widget/TitleBar;->setCenterView(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;)V

    return-void
.end method

.method public setImageScaleEnable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lsmartisan/widget/TitleBar;->mImageScaleEnable:Z

    return-void
.end method

.method public setShadowVisible(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/TitleBar;->mShadowView:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setTitleBarHeight(I)V
    .locals 0

    .line 1
    iput p1, p0, Lsmartisan/widget/TitleBar;->mTitleBarHeight:I

    return-void
.end method
