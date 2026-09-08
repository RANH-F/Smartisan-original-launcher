.class public Lsmartisan/widget/BarsHelper$BarShadowBuilder;
.super Ljava/lang/Object;
.source "BarsHelper.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsmartisan/widget/BarsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BarShadowBuilder"
.end annotation


# instance fields
.field private mBottomShadowHeight:I

.field private mContext:Landroid/content/Context;

.field private mDividerHeight:I

.field private mDividerView:Landroid/view/View;

.field private mIsBottomType:Z

.field private mShadowResId:I

.field private mShadowView:Landroid/view/View;

.field private mTargetView:Landroid/view/ViewGroup;

.field private mTopShadowHeight:I


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lsmartisan/widget/BarsHelper$BarShadowBuilder;->mShadowResId:I

    .line 4
    iput-object p1, p0, Lsmartisan/widget/BarsHelper$BarShadowBuilder;->mContext:Landroid/content/Context;

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lsmartisan/widget/R$dimen;->title_bar_shadow_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lsmartisan/widget/BarsHelper$BarShadowBuilder;->mTopShadowHeight:I

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lsmartisan/widget/R$dimen;->bottom_bar_shadow_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lsmartisan/widget/BarsHelper$BarShadowBuilder;->mBottomShadowHeight:I

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lsmartisan/widget/R$dimen;->bar_divider_height:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lsmartisan/widget/BarsHelper$BarShadowBuilder;->mDividerHeight:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lsmartisan/widget/BarsHelper$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lsmartisan/widget/BarsHelper$BarShadowBuilder;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private addShadowAndDividerForFrameLayout()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lsmartisan/widget/BarsHelper$BarShadowBuilder;->generateShadowView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lsmartisan/widget/BarsHelper$BarShadowBuilder;->mShadowView:Landroid/view/View;

    .line 2
    iget-object v0, p0, Lsmartisan/widget/BarsHelper$BarShadowBuilder;->mShadowView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lsmartisan/widget/BarsHelper$BarShadowBuilder;->generateShadowOrDividerFrameLayoutParams(Z)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3
    iget-object v0, p0, Lsmartisan/widget/BarsHelper$BarShadowBuilder;->mTargetView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lsmartisan/widget/BarsHelper$BarShadowBuilder;->mShadowView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    invoke-direct {p0}, Lsmartisan/widget/BarsHelper$BarShadowBuilder;->generateDividerView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lsmartisan/widget/BarsHelper$BarShadowBuilder;->mDividerView:Landroid/view/View;

    .line 5
    iget-object v0, p0, Lsmartisan/widget/BarsHelper$BarShadowBuilder;->mTargetView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lsmartisan/widget/BarsHelper$BarShadowBuilder;->mDividerView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lsmartisan/widget/BarsHelper$BarShadowBuilder;->generateShadowOrDividerFrameLayoutParams(Z)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 6
    iget-object v0, p0, Lsmartisan/widget/BarsHelper$BarShadowBuilder;->mTargetView:Landroid/view/ViewGroup;

    const v1, 0x3dcccccd    # 0.1f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setElevation(F)V

    return-void
.end method

.method private addShadowAndDividerForRelativeLayout()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lsmartisan/widget/BarsHelper$BarShadowBuilder;->generateShadowView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lsmartisan/widget/BarsHelper$BarShadowBuilder;->mShadowView:Landroid/view/View;

    .line 2
    iget-object v0, p0, Lsmartisan/widget/BarsHelper$BarShadowBuilder;->mShadowView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lsmartisan/widget/BarsHelper$BarShadowBuilder;->generateShadowOrDividerRelativeLayoutParams(Z)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3
    iget-object v0, p0, Lsmartisan/widget/BarsHelper$BarShadowBuilder;->mTargetView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lsmartisan/widget/BarsHelper$BarShadowBuilder;->mShadowView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 4
    invoke-direct {p0}, Lsmartisan/widget/BarsHelper$BarShadowBuilder;->generateDividerView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lsmartisan/widget/BarsHelper$BarShadowBuilder;->mDividerView:Landroid/view/View;

    .line 5
    iget-object v0, p0, Lsmartisan/widget/BarsHelper$BarShadowBuilder;->mTargetView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lsmartisan/widget/BarsHelper$BarShadowBuilder;->mDividerView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lsmartisan/widget/BarsHelper$BarShadowBuilder;->generateShadowOrDividerRelativeLayoutParams(Z)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 6
    iget-object v0, p0, Lsmartisan/widget/BarsHelper$BarShadowBuilder;->mTargetView:Landroid/view/ViewGroup;

    const v1, 0x3dcccccd    # 0.1f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setElevation(F)V

    return-void
.end method

.method private generateDividerView()Landroid/view/View;
    .locals 2

    .line 1
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lsmartisan/widget/BarsHelper$BarShadowBuilder;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2
    sget v1, Lsmartisan/widget/R$drawable;->divider_bg:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 3
    iget-boolean v1, p0, Lsmartisan/widget/BarsHelper$BarShadowBuilder;->mIsBottomType:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lsmartisan/widget/BarsHelper$BarShadowBuilder;->mDividerHeight:I

    neg-int v1, v1

    goto :goto_0

    :cond_0
    iget v1, p0, Lsmartisan/widget/BarsHelper$BarShadowBuilder;->mDividerHeight:I

    :goto_0
    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 4
    sget v1, Lsmartisan/widget/R$id;->shadow_divider:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    return-object v0
.end method

.method private generateShadowOrDividerFrameLayoutParams(Z)Landroid/widget/FrameLayout$LayoutParams;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lsmartisan/widget/BarsHelper$BarShadowBuilder;->mIsBottomType:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 2
    iget p1, p0, Lsmartisan/widget/BarsHelper$BarShadowBuilder;->mBottomShadowHeight:I

    goto :goto_0

    :cond_0
    iget p1, p0, Lsmartisan/widget/BarsHelper$BarShadowBuilder;->mDividerHeight:I

    :goto_0
    const/16 v0, 0x30

    goto :goto_2

    :cond_1
    if-eqz p1, :cond_2

    .line 3
    iget p1, p0, Lsmartisan/widget/BarsHelper$BarShadowBuilder;->mTopShadowHeight:I

    goto :goto_1

    :cond_2
    iget p1, p0, Lsmartisan/widget/BarsHelper$BarShadowBuilder;->mDividerHeight:I

    :goto_1
    const/16 v0, 0x50

    .line 4
    :goto_2
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 5
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    return-object v1
.end method

.method private generateShadowOrDividerRelativeLayoutParams(Z)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lsmartisan/widget/BarsHelper$BarShadowBuilder;->mIsBottomType:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 2
    iget p1, p0, Lsmartisan/widget/BarsHelper$BarShadowBuilder;->mBottomShadowHeight:I

    goto :goto_0

    :cond_0
    iget p1, p0, Lsmartisan/widget/BarsHelper$BarShadowBuilder;->mDividerHeight:I

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 3
    iget p1, p0, Lsmartisan/widget/BarsHelper$BarShadowBuilder;->mTopShadowHeight:I

    goto :goto_0

    :cond_2
    iget p1, p0, Lsmartisan/widget/BarsHelper$BarShadowBuilder;->mDividerHeight:I

    :goto_0
    const/16 v0, 0xa

    .line 4
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, p1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 5
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    return-object v1
.end method

.method private generateShadowView()Landroid/view/View;
    .locals 3

    .line 1
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lsmartisan/widget/BarsHelper$BarShadowBuilder;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2
    iget v1, p0, Lsmartisan/widget/BarsHelper$BarShadowBuilder;->mShadowResId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 3
    iget-boolean v1, p0, Lsmartisan/widget/BarsHelper$BarShadowBuilder;->mIsBottomType:Z

    if-eqz v1, :cond_0

    sget v1, Lsmartisan/widget/ShadowFrameLayout;->BOTTOM_SHADOW_RES_ID:I

    goto :goto_0

    :cond_0
    sget v1, Lsmartisan/widget/ShadowFrameLayout;->TOP_SHADOW_RES_ID:I

    :goto_0
    iput v1, p0, Lsmartisan/widget/BarsHelper$BarShadowBuilder;->mShadowResId:I

    .line 4
    :cond_1
    iget v1, p0, Lsmartisan/widget/BarsHelper$BarShadowBuilder;->mShadowResId:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 5
    iget-boolean v1, p0, Lsmartisan/widget/BarsHelper$BarShadowBuilder;->mIsBottomType:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lsmartisan/widget/BarsHelper$BarShadowBuilder;->mBottomShadowHeight:I

    neg-int v1, v1

    goto :goto_1

    :cond_2
    iget v1, p0, Lsmartisan/widget/BarsHelper$BarShadowBuilder;->mTopShadowHeight:I

    :goto_1
    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    return-object v0
.end method


# virtual methods
.method public build(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 1
    iput-object p1, p0, Lsmartisan/widget/BarsHelper$BarShadowBuilder;->mTargetView:Landroid/view/ViewGroup;

    .line 2
    instance-of v0, p1, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0}, Lsmartisan/widget/BarsHelper$BarShadowBuilder;->addShadowAndDividerForFrameLayout()V

    goto :goto_0

    .line 4
    :cond_0
    instance-of p1, p1, Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_1

    .line 5
    invoke-direct {p0}, Lsmartisan/widget/BarsHelper$BarShadowBuilder;->addShadowAndDividerForRelativeLayout()V

    .line 6
    :goto_0
    iget-object p1, p0, Lsmartisan/widget/BarsHelper$BarShadowBuilder;->mTargetView:Landroid/view/ViewGroup;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 7
    iget-object p1, p0, Lsmartisan/widget/BarsHelper$BarShadowBuilder;->mShadowView:Landroid/view/View;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 1
    iget-object p1, p0, Lsmartisan/widget/BarsHelper$BarShadowBuilder;->mTargetView:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 3
    :cond_0
    iget-object p1, p0, Lsmartisan/widget/BarsHelper$BarShadowBuilder;->mTargetView:Landroid/view/ViewGroup;

    instance-of p3, p1, Landroid/widget/RelativeLayout;

    if-eqz p3, :cond_1

    iget-boolean p3, p0, Lsmartisan/widget/BarsHelper$BarShadowBuilder;->mIsBottomType:Z

    if-nez p3, :cond_1

    .line 4
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p1

    .line 5
    iget-object p3, p0, Lsmartisan/widget/BarsHelper$BarShadowBuilder;->mShadowView:Landroid/view/View;

    int-to-float p1, p1

    invoke-virtual {p3, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 6
    iget-object p3, p0, Lsmartisan/widget/BarsHelper$BarShadowBuilder;->mDividerView:Landroid/view/View;

    invoke-virtual {p3, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 7
    :cond_1
    iget-object p1, p0, Lsmartisan/widget/BarsHelper$BarShadowBuilder;->mTargetView:Landroid/view/ViewGroup;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 8
    iget-object p1, p0, Lsmartisan/widget/BarsHelper$BarShadowBuilder;->mShadowView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p3

    iget-object p4, p0, Lsmartisan/widget/BarsHelper$BarShadowBuilder;->mTargetView:Landroid/view/ViewGroup;

    invoke-virtual {p4}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p4

    iget-object p5, p0, Lsmartisan/widget/BarsHelper$BarShadowBuilder;->mShadowView:Landroid/view/View;

    invoke-virtual {p5}, Landroid/view/View;->getBottom()I

    move-result p5

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    .line 9
    iget-object p1, p0, Lsmartisan/widget/BarsHelper$BarShadowBuilder;->mDividerView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p3

    iget-object p4, p0, Lsmartisan/widget/BarsHelper$BarShadowBuilder;->mTargetView:Landroid/view/ViewGroup;

    invoke-virtual {p4}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p4

    iget-object p5, p0, Lsmartisan/widget/BarsHelper$BarShadowBuilder;->mDividerView:Landroid/view/View;

    invoke-virtual {p5}, Landroid/view/View;->getBottom()I

    move-result p5

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method public setShadowResource(I)Lsmartisan/widget/BarsHelper$BarShadowBuilder;
    .locals 0

    .line 1
    iput p1, p0, Lsmartisan/widget/BarsHelper$BarShadowBuilder;->mShadowResId:I

    return-object p0
.end method

.method public setShadowType(I)Lsmartisan/widget/BarsHelper$BarShadowBuilder;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1
    :goto_0
    iput-boolean p1, p0, Lsmartisan/widget/BarsHelper$BarShadowBuilder;->mIsBottomType:Z

    return-object p0
.end method
