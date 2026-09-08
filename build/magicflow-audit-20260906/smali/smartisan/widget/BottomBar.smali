.class public Lsmartisan/widget/BottomBar;
.super Landroid/widget/FrameLayout;
.source "BottomBar.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnClickListener;
.implements Lsmartisan/util/NavigationBarHelper$NavigationBarStatusListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsmartisan/widget/BottomBar$BarItem;,
        Lsmartisan/widget/BottomBar$OnCheckedChangeListener;
    }
.end annotation


# static fields
.field public static final NONE:I = -0x1

.field public static final STYLE_ALIGN_EDGE:I = 0x1

.field public static final STYLE_BOTTOM_TAB:I = 0x2

.field public static final STYLE_DEFAULT:I


# instance fields
.field private mAlignEdgeItemWidth:I

.field private mAnimator:Landroid/animation/ValueAnimator;

.field private mAutoAdapterEnabled:Z

.field private mBarList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lsmartisan/widget/BottomBar$BarItem;",
            ">;"
        }
    .end annotation
.end field

.field private mCheckedId:I

.field private mChildOnCheckedChangeListener:Lsmartisan/widget/BottomBarItemView$OnCheckedChangeListener;

.field private mHasTextAndIcon:Z

.field private mHeightOnlyIcon:I

.field private mHeightWithTextIcon:I

.field private mItemViewContainer:Landroid/widget/LinearLayout;

.field private mItemWidth:I

.field private mOnCheckedChangeListener:Lsmartisan/widget/BottomBar$OnCheckedChangeListener;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mOnLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mScalable:Z

.field private mScreenWidth:I

.field private mShadowView:Landroid/view/View;

.field private mStyleFlag:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lsmartisan/widget/BottomBar;->mCheckedId:I

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lsmartisan/widget/BottomBar;->mHasTextAndIcon:Z

    .line 4
    iput v0, p0, Lsmartisan/widget/BottomBar;->mStyleFlag:I

    const/4 v1, 0x0

    .line 5
    invoke-direct {p0, p1, v1, v0}, Lsmartisan/widget/BottomBar;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 6
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    .line 7
    iput v0, p0, Lsmartisan/widget/BottomBar;->mCheckedId:I

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lsmartisan/widget/BottomBar;->mHasTextAndIcon:Z

    .line 9
    iput v0, p0, Lsmartisan/widget/BottomBar;->mStyleFlag:I

    .line 10
    invoke-direct {p0, p1, p2, v0}, Lsmartisan/widget/BottomBar;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 11
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, -0x1

    .line 12
    iput v0, p0, Lsmartisan/widget/BottomBar;->mCheckedId:I

    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lsmartisan/widget/BottomBar;->mHasTextAndIcon:Z

    .line 14
    iput v0, p0, Lsmartisan/widget/BottomBar;->mStyleFlag:I

    .line 15
    invoke-direct {p0, p1, p2, p3}, Lsmartisan/widget/BottomBar;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic access$000(Lsmartisan/widget/BottomBar;)I
    .locals 0

    .line 1
    iget p0, p0, Lsmartisan/widget/BottomBar;->mCheckedId:I

    return p0
.end method

.method static synthetic access$002(Lsmartisan/widget/BottomBar;I)I
    .locals 0

    .line 1
    iput p1, p0, Lsmartisan/widget/BottomBar;->mCheckedId:I

    return p1
.end method

.method static synthetic access$100(Lsmartisan/widget/BottomBar;IZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lsmartisan/widget/BottomBar;->setCheckedStateForView(IZ)V

    return-void
.end method

.method static synthetic access$200(Lsmartisan/widget/BottomBar;)Lsmartisan/widget/BottomBar$OnCheckedChangeListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lsmartisan/widget/BottomBar;->mOnCheckedChangeListener:Lsmartisan/widget/BottomBar$OnCheckedChangeListener;

    return-object p0
.end method

.method static synthetic access$300(Lsmartisan/widget/BottomBar;)Landroid/widget/LinearLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lsmartisan/widget/BottomBar;->mItemViewContainer:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method private fillStyle()V
    .locals 6

    .line 1
    iget-object v0, p0, Lsmartisan/widget/BottomBar;->mBarList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 2
    iget v1, p0, Lsmartisan/widget/BottomBar;->mStyleFlag:I

    and-int/lit8 v2, v1, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v2, v5, :cond_1

    :goto_0
    if-ge v4, v0, :cond_4

    .line 3
    iget-object v1, p0, Lsmartisan/widget/BottomBar;->mItemViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 4
    iget v2, p0, Lsmartisan/widget/BottomBar;->mAlignEdgeItemWidth:I

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-eqz v4, :cond_0

    .line 5
    iget-object v2, p0, Lsmartisan/widget/BottomBar;->mBarList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v5

    if-eq v4, v2, :cond_0

    .line 6
    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_4

    const/4 v1, 0x3

    if-ge v0, v1, :cond_2

    return-void

    .line 7
    :cond_2
    iget v1, p0, Lsmartisan/widget/BottomBar;->mScreenWidth:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 8
    iget v2, p0, Lsmartisan/widget/BottomBar;->mAlignEdgeItemWidth:I

    mul-int/2addr v2, v0

    sub-int/2addr v1, v2

    int-to-float v1, v1

    add-int/lit8 v2, v0, -0x1

    int-to-float v2, v2

    mul-float/2addr v2, v3

    div-float/2addr v1, v2

    float-to-int v1, v1

    :goto_1
    if-ge v4, v0, :cond_4

    .line 9
    iget-object v2, p0, Lsmartisan/widget/BottomBar;->mItemViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 10
    iget v3, p0, Lsmartisan/widget/BottomBar;->mAlignEdgeItemWidth:I

    iput v3, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-eqz v4, :cond_3

    .line 11
    iput v1, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method private generateBottomBarItemView(Lsmartisan/widget/BottomBar$BarItem;)Lsmartisan/widget/BottomBarItemView;
    .locals 6

    .line 1
    new-instance v0, Lsmartisan/widget/BottomBarItemView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lsmartisan/widget/BottomBarItemView;-><init>(Landroid/content/Context;)V

    .line 2
    iget-boolean v1, p0, Lsmartisan/widget/BottomBar;->mScalable:Z

    invoke-virtual {v0, v1}, Lsmartisan/widget/BottomBarItemView;->setScaleable(Z)V

    .line 3
    invoke-static {p1}, Lsmartisan/widget/BottomBar$BarItem;->access$400(Lsmartisan/widget/BottomBar$BarItem;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setId(I)V

    .line 4
    iget-object v1, p0, Lsmartisan/widget/BottomBar;->mChildOnCheckedChangeListener:Lsmartisan/widget/BottomBarItemView$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Lsmartisan/widget/BottomBarItemView;->setOnCheckedChangeListener(Lsmartisan/widget/BottomBarItemView$OnCheckedChangeListener;)V

    .line 5
    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 6
    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    invoke-static {p1}, Lsmartisan/widget/BottomBar$BarItem;->access$500(Lsmartisan/widget/BottomBar$BarItem;)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 8
    invoke-static {p1}, Lsmartisan/widget/BottomBar$BarItem;->access$600(Lsmartisan/widget/BottomBar$BarItem;)I

    move-result v1

    if-eq v1, v3, :cond_1

    .line 9
    invoke-static {p1}, Lsmartisan/widget/BottomBar$BarItem;->access$500(Lsmartisan/widget/BottomBar$BarItem;)I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {p1}, Lsmartisan/widget/BottomBar$BarItem;->access$600(Lsmartisan/widget/BottomBar$BarItem;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lsmartisan/widget/BottomBarItemView;->setDrawableResource(ILjava/lang/String;)V

    goto :goto_1

    .line 10
    :cond_1
    invoke-static {p1}, Lsmartisan/widget/BottomBar$BarItem;->access$500(Lsmartisan/widget/BottomBar$BarItem;)I

    move-result v1

    invoke-virtual {v0, v1}, Lsmartisan/widget/BottomBarItemView;->setDrawableResource(I)V

    .line 11
    :cond_2
    :goto_1
    invoke-static {p1}, Lsmartisan/widget/BottomBar$BarItem;->access$700(Lsmartisan/widget/BottomBar$BarItem;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/2addr v1, v2

    iput-boolean v1, p0, Lsmartisan/widget/BottomBar;->mHasTextAndIcon:Z

    .line 12
    iget-boolean v1, p0, Lsmartisan/widget/BottomBar;->mHasTextAndIcon:Z

    if-eqz v1, :cond_3

    .line 13
    invoke-static {p1}, Lsmartisan/widget/BottomBar$BarItem;->access$700(Lsmartisan/widget/BottomBar$BarItem;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsmartisan/widget/BottomBarItemView;->setText(Ljava/lang/String;)V

    .line 14
    invoke-static {p1}, Lsmartisan/widget/BottomBar$BarItem;->access$800(Lsmartisan/widget/BottomBar$BarItem;)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsmartisan/widget/BottomBarItemView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 15
    invoke-static {p1}, Lsmartisan/widget/BottomBar$BarItem;->access$900(Lsmartisan/widget/BottomBar$BarItem;)I

    move-result v1

    if-eq v1, v3, :cond_3

    .line 16
    invoke-static {p1}, Lsmartisan/widget/BottomBar$BarItem;->access$900(Lsmartisan/widget/BottomBar$BarItem;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lsmartisan/widget/BottomBarItemView;->setTextSize(F)V

    .line 17
    :cond_3
    invoke-static {p1}, Lsmartisan/widget/BottomBar$BarItem;->access$1000(Lsmartisan/widget/BottomBar$BarItem;)I

    move-result v1

    if-eq v1, v3, :cond_4

    .line 18
    invoke-static {p1}, Lsmartisan/widget/BottomBar$BarItem;->access$1000(Lsmartisan/widget/BottomBar$BarItem;)I

    move-result p1

    invoke-virtual {v0, p1}, Lsmartisan/widget/BottomBarItemView;->setDrawableColorList(I)V

    :cond_4
    return-object v0
.end method

.method private generateItemViewContainer()Landroid/widget/LinearLayout;
    .locals 2

    .line 1
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v1, 0x11

    .line 3
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    return-object v0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 1
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lsmartisan/widget/BottomBar;->mBarList:Ljava/util/List;

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lsmartisan/widget/R$dimen;->smartisan_bottom_bar_height_only_icon:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p0, Lsmartisan/widget/BottomBar;->mHeightOnlyIcon:I

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lsmartisan/widget/R$dimen;->smartisan_bottom_bar_height:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p0, Lsmartisan/widget/BottomBar;->mHeightWithTextIcon:I

    .line 4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lsmartisan/widget/R$dimen;->smartisan_bottom_bar_align_edge_width:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p0, Lsmartisan/widget/BottomBar;->mAlignEdgeItemWidth:I

    .line 5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->widthPixels:I

    iput p2, p0, Lsmartisan/widget/BottomBar;->mScreenWidth:I

    .line 6
    iget p2, p0, Lsmartisan/widget/BottomBar;->mScreenWidth:I

    div-int/lit8 p2, p2, 0x5

    iput p2, p0, Lsmartisan/widget/BottomBar;->mItemWidth:I

    .line 7
    new-instance p2, Lsmartisan/widget/BottomBar$1;

    invoke-direct {p2, p0}, Lsmartisan/widget/BottomBar$1;-><init>(Lsmartisan/widget/BottomBar;)V

    iput-object p2, p0, Lsmartisan/widget/BottomBar;->mChildOnCheckedChangeListener:Lsmartisan/widget/BottomBarItemView$OnCheckedChangeListener;

    .line 8
    invoke-static {p1}, Lsmartisan/widget/BarsHelper;->createShadowBuilder(Landroid/content/Context;)Lsmartisan/widget/BarsHelper$BarShadowBuilder;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lsmartisan/widget/BarsHelper$BarShadowBuilder;->setShadowType(I)Lsmartisan/widget/BarsHelper$BarShadowBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Lsmartisan/widget/BarsHelper$BarShadowBuilder;->build(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lsmartisan/widget/BottomBar;->mShadowView:Landroid/view/View;

    const/4 p1, -0x1

    .line 9
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    return-void
.end method

.method private setCheckedStateForView(IZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/BottomBar;->mItemViewContainer:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 3
    check-cast p1, Lsmartisan/widget/BottomBarItemView;

    invoke-virtual {p1, p2}, Lsmartisan/widget/BottomBarItemView;->setChecked(Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method public addBarItem(ILjava/lang/String;I)Lsmartisan/widget/BottomBar$BarItem;
    .locals 1

    const/4 v0, -0x1

    .line 4
    invoke-virtual {p0, p1, p2, p3, v0}, Lsmartisan/widget/BottomBar;->addBarItem(ILjava/lang/String;II)Lsmartisan/widget/BottomBar$BarItem;

    move-result-object p1

    return-object p1
.end method

.method public addBarItem(ILjava/lang/String;II)Lsmartisan/widget/BottomBar$BarItem;
    .locals 8

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lsmartisan/widget/R$color;->bottom_tab_text_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v2 .. v7}, Lsmartisan/widget/BottomBar;->addBarItem(ILjava/lang/String;IILandroid/content/res/ColorStateList;)Lsmartisan/widget/BottomBar$BarItem;

    move-result-object p1

    return-object p1
.end method

.method public addBarItem(ILjava/lang/String;IILandroid/content/res/ColorStateList;)Lsmartisan/widget/BottomBar$BarItem;
    .locals 9

    .line 1
    new-instance v8, Lsmartisan/widget/BottomBar$BarItem;

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v7}, Lsmartisan/widget/BottomBar$BarItem;-><init>(Lsmartisan/widget/BottomBar;ILjava/lang/String;IILandroid/content/res/ColorStateList;Lsmartisan/widget/BottomBar$1;)V

    .line 2
    iget-object p1, p0, Lsmartisan/widget/BottomBar;->mBarList:Ljava/util/List;

    invoke-interface {p1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v8
.end method

.method public clearItems()V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/BottomBar;->mBarList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public getShadowView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/BottomBar;->mShadowView:Landroid/view/View;

    return-object v0
.end method

.method public isAutoAdapterEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lsmartisan/widget/BottomBar;->mAutoAdapterEnabled:Z

    return v0
.end method

.method public onApplyNavigationBarStatusChange(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/BottomBar;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lsmartisan/widget/BottomBar;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 3
    :cond_0
    invoke-static {p0, p1}, Lsmartisan/widget/BarsHelper;->prepareNavigationBarStatusChangeAnim(Landroid/view/View;Z)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lsmartisan/widget/BottomBar;->mAnimator:Landroid/animation/ValueAnimator;

    .line 4
    iget-object p1, p0, Lsmartisan/widget/BottomBar;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/BottomBar;->mOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/BottomBar;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setAutoAdapterEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lsmartisan/widget/BottomBar;->mAutoAdapterEnabled:Z

    .line 2
    iget-boolean p1, p0, Lsmartisan/widget/BottomBar;->mAutoAdapterEnabled:Z

    invoke-static {p0, p1}, Lsmartisan/util/NavigationBarHelper;->setAutoAdapterNavigationBarEnabled(Landroid/view/View;Z)V

    return-void
.end method

.method public setDefaultSelectedItem(I)V
    .locals 1

    .line 1
    iget v0, p0, Lsmartisan/widget/BottomBar;->mCheckedId:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p1, v0}, Lsmartisan/widget/BottomBar;->setCheckedStateForView(IZ)V

    .line 3
    iput p1, p0, Lsmartisan/widget/BottomBar;->mCheckedId:I

    return-void
.end method

.method public setOnCheckedChangeListener(Lsmartisan/widget/BottomBar$OnCheckedChangeListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/BottomBar;->mOnCheckedChangeListener:Lsmartisan/widget/BottomBar$OnCheckedChangeListener;

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/BottomBar;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/BottomBar;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    return-void
.end method

.method public setPadding(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 2
    invoke-direct {p0}, Lsmartisan/widget/BottomBar;->fillStyle()V

    return-void
.end method

.method public setShadowViewVisible(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/BottomBar;->mShadowView:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setStyleFlag(I)V
    .locals 0

    .line 1
    iput p1, p0, Lsmartisan/widget/BottomBar;->mStyleFlag:I

    return-void
.end method

.method public setup()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lsmartisan/widget/BottomBar;->mScalable:Z

    invoke-virtual {p0, v0}, Lsmartisan/widget/BottomBar;->setup(Z)V

    return-void
.end method

.method public setup(Z)V
    .locals 6

    .line 2
    iget-object v0, p0, Lsmartisan/widget/BottomBar;->mItemViewContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 4
    :cond_0
    iput-boolean p1, p0, Lsmartisan/widget/BottomBar;->mScalable:Z

    .line 5
    iget-object p1, p0, Lsmartisan/widget/BottomBar;->mBarList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-gtz p1, :cond_1

    return-void

    .line 6
    :cond_1
    invoke-direct {p0}, Lsmartisan/widget/BottomBar;->generateItemViewContainer()Landroid/widget/LinearLayout;

    move-result-object p1

    iput-object p1, p0, Lsmartisan/widget/BottomBar;->mItemViewContainer:Landroid/widget/LinearLayout;

    .line 7
    iget-object p1, p0, Lsmartisan/widget/BottomBar;->mBarList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_3

    .line 8
    iget-object v2, p0, Lsmartisan/widget/BottomBar;->mBarList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsmartisan/widget/BottomBar$BarItem;

    .line 9
    invoke-direct {p0, v2}, Lsmartisan/widget/BottomBar;->generateBottomBarItemView(Lsmartisan/widget/BottomBar$BarItem;)Lsmartisan/widget/BottomBarItemView;

    move-result-object v2

    .line 10
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    iget v4, p0, Lsmartisan/widget/BottomBar;->mItemWidth:I

    iget-boolean v5, p0, Lsmartisan/widget/BottomBar;->mHasTextAndIcon:Z

    if-eqz v5, :cond_2

    iget v5, p0, Lsmartisan/widget/BottomBar;->mHeightWithTextIcon:I

    goto :goto_1

    :cond_2
    iget v5, p0, Lsmartisan/widget/BottomBar;->mHeightOnlyIcon:I

    :goto_1
    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 11
    iget-object v4, p0, Lsmartisan/widget/BottomBar;->mItemViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 12
    :cond_3
    invoke-direct {p0}, Lsmartisan/widget/BottomBar;->fillStyle()V

    .line 13
    iget-object p1, p0, Lsmartisan/widget/BottomBar;->mItemViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 14
    iget-object p1, p0, Lsmartisan/widget/BottomBar;->mItemViewContainer:Landroid/widget/LinearLayout;

    iget v1, p0, Lsmartisan/widget/BottomBar;->mCheckedId:I

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lsmartisan/widget/BottomBarItemView;

    .line 15
    iget v1, p0, Lsmartisan/widget/BottomBar;->mCheckedId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_4

    if-nez p1, :cond_5

    .line 16
    :cond_4
    iget-object p1, p0, Lsmartisan/widget/BottomBar;->mItemViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lsmartisan/widget/BottomBarItemView;

    :cond_5
    const/4 v0, 0x1

    .line 17
    invoke-virtual {p1, v0}, Lsmartisan/widget/BottomBarItemView;->setChecked(Z)V

    return-void
.end method
