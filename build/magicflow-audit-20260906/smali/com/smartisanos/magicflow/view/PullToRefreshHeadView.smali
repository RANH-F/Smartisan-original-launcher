.class public Lcom/smartisanos/magicflow/view/PullToRefreshHeadView;
.super Lcom/smartisanos/magicflow/pulltorefresh/LoadingLayoutBase;
.source "PullToRefreshHeadView.java"


# instance fields
.field private mHeadIcon:Landroid/widget/ImageView;

.field private mHeadText:Landroid/widget/TextView;

.field private mInnerLayout:Landroid/widget/LinearLayout;

.field private mRefreshAnim:Landroid/view/animation/Animation;

.field startScale:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/smartisanos/magicflow/view/PullToRefreshHeadView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/smartisanos/magicflow/pulltorefresh/LoadingLayoutBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p2, 0x3f000000    # 0.5f

    .line 3
    iput p2, p0, Lcom/smartisanos/magicflow/view/PullToRefreshHeadView;->startScale:F

    .line 4
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0b00ba

    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 5
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/PullToRefreshHeadView;->init()V

    return-void
.end method

.method private getRefreshTextAlpha(F)F
    .locals 3

    .line 1
    iget v0, p0, Lcom/smartisanos/magicflow/view/PullToRefreshHeadView;->startScale:F

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v2, p1, v1

    if-gez v2, :cond_1

    sub-float v2, v1, v0

    div-float/2addr v1, v2

    sub-float/2addr p1, v0

    mul-float/2addr v1, p1

    :cond_1
    return v1
.end method

.method private init()V
    .locals 2

    const v0, 0x7f080229

    .line 1
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/PullToRefreshHeadView;->mHeadIcon:Landroid/widget/ImageView;

    const v0, 0x7f08022b

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/PullToRefreshHeadView;->mHeadText:Landroid/widget/TextView;

    const v0, 0x7f0801aa

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/PullToRefreshHeadView;->mInnerLayout:Landroid/widget/LinearLayout;

    .line 4
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/PullToRefreshHeadView;->mInnerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x50

    .line 5
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 6
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f01001a

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/PullToRefreshHeadView;->mRefreshAnim:Landroid/view/animation/Animation;

    .line 7
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/PullToRefreshHeadView;->mRefreshAnim:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 8
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/view/PullToRefreshHeadView;->reset()V

    return-void
.end method

.method private updateHeadIcon(F)V
    .locals 3

    const/16 v0, 0x2b

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v1

    if-lez v2, :cond_0

    move p1, v1

    :cond_0
    mul-float/2addr v0, p1

    float-to-int p1, v0

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/PullToRefreshHeadView;->mHeadIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    return-void
.end method


# virtual methods
.method public getContentSize()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/PullToRefreshHeadView;->mInnerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    return v0
.end method

.method public onPull(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/PullToRefreshHeadView;->mHeadText:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/smartisanos/magicflow/view/PullToRefreshHeadView;->getRefreshTextAlpha(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 2
    invoke-direct {p0, p1}, Lcom/smartisanos/magicflow/view/PullToRefreshHeadView;->updateHeadIcon(F)V

    return-void
.end method

.method public pullToRefresh()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/PullToRefreshHeadView;->mHeadText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d020f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/PullToRefreshHeadView;->mHeadIcon:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method

.method public refreshing()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/PullToRefreshHeadView;->mHeadText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d020e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/PullToRefreshHeadView;->mHeadIcon:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/PullToRefreshHeadView;->mHeadIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/PullToRefreshHeadView;->mRefreshAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public releaseToRefresh()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/PullToRefreshHeadView;->mHeadText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0210

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/PullToRefreshHeadView;->mHeadIcon:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method

.method public reset()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/PullToRefreshHeadView;->mHeadText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d020f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/PullToRefreshHeadView;->mHeadIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/PullToRefreshHeadView;->mHeadIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 4
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/PullToRefreshHeadView;->mHeadIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setRotation(F)V

    return-void
.end method

.method public setPullLabel(Ljava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public setRefreshingLabel(Ljava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public setReleaseLabel(Ljava/lang/CharSequence;)V
    .locals 0

    return-void
.end method
