.class public Lcom/smartisanos/magicflow/view/FloatSearchView;
.super Landroid/widget/FrameLayout;
.source "FloatSearchView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field protected static final HIDE_ANIMATION:I = 0x2

.field protected static final NO_ANIMATION:I = -0x1

.field protected static final SHOW_ANIMATION:I = 0x1


# instance fields
.field private MIN_SCALE_X:F

.field private MIN_SCALE_Y:F

.field private mAnimationRunning:Z

.field private mFloatLayout:Landroid/widget/FrameLayout;

.field private mFloatSearchMask:Landroid/widget/ImageView;

.field private mFloatSearchMaskLastAlpha:F

.field private mMaskShowDuration:I

.field private mSearchIcon:Landroid/widget/ImageView;

.field private mSearchImage:Landroid/widget/ImageView;

.field private mSearchLayout:Landroid/support/constraint/ConstraintLayout;

.field private mSearchText:Landroid/widget/TextView;

.field private mShowAnimator:Landroid/animation/ValueAnimator;

.field private mSpace:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/smartisanos/magicflow/view/FloatSearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/smartisanos/magicflow/view/FloatSearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/smartisanos/magicflow/view/FloatSearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const p1, 0x3f23d70a    # 0.64f

    .line 5
    iput p1, p0, Lcom/smartisanos/magicflow/view/FloatSearchView;->MIN_SCALE_Y:F

    const p1, 0x3f4ccccd    # 0.8f

    .line 6
    iput p1, p0, Lcom/smartisanos/magicflow/view/FloatSearchView;->MIN_SCALE_X:F

    const/16 p1, 0x258

    .line 7
    iput p1, p0, Lcom/smartisanos/magicflow/view/FloatSearchView;->mMaskShowDuration:I

    return-void
.end method

.method static synthetic access$000(Lcom/smartisanos/magicflow/view/FloatSearchView;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/magicflow/view/FloatSearchView;->mFloatSearchMask:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$102(Lcom/smartisanos/magicflow/view/FloatSearchView;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/smartisanos/magicflow/view/FloatSearchView;->mFloatSearchMaskLastAlpha:F

    return p1
.end method

.method static synthetic access$202(Lcom/smartisanos/magicflow/view/FloatSearchView;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/smartisanos/magicflow/view/FloatSearchView;->mAnimationRunning:Z

    return p1
.end method

.method static synthetic access$300(Lcom/smartisanos/magicflow/view/FloatSearchView;)Landroid/widget/FrameLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/magicflow/view/FloatSearchView;->mFloatLayout:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method private continueHide(Lcom/smartisanos/magicflow/view/weather/HeadView;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/FloatSearchView;->mFloatLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x2

    new-array v2, v1, [F

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v3

    const/4 v4, 0x0

    aput v3, v2, v4

    const/4 v3, 0x1

    const/4 v5, 0x0

    aput v5, v2, v3

    const-string v5, "alpha"

    invoke-static {v0, v5, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/smartisanos/magicflow/view/weather/HeadView;->getSearchLayout()Landroid/view/View;

    move-result-object v2

    new-array v6, v1, [F

    invoke-virtual {p1}, Lcom/smartisanos/magicflow/view/weather/HeadView;->getSearchLayoutAlpha()F

    move-result p1

    aput p1, v6, v4

    const/high16 p1, 0x3f800000    # 1.0f

    aput p1, v6, v3

    invoke-static {v2, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 3
    iget-object v2, p0, Lcom/smartisanos/magicflow/view/FloatSearchView;->mSearchLayout:Landroid/support/constraint/ConstraintLayout;

    new-array v5, v1, [F

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getScaleX()F

    move-result v6

    aput v6, v5, v4

    iget v6, p0, Lcom/smartisanos/magicflow/view/FloatSearchView;->MIN_SCALE_X:F

    aput v6, v5, v3

    const-string v6, "scaleX"

    invoke-static {v2, v6, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 4
    iget-object v5, p0, Lcom/smartisanos/magicflow/view/FloatSearchView;->mSearchLayout:Landroid/support/constraint/ConstraintLayout;

    new-array v6, v1, [F

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getScaleY()F

    move-result v7

    aput v7, v6, v4

    iget v7, p0, Lcom/smartisanos/magicflow/view/FloatSearchView;->MIN_SCALE_X:F

    aput v7, v6, v3

    const-string v7, "scaleY"

    invoke-static {v5, v7, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 5
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    const-wide/16 v7, 0xc8

    .line 6
    invoke-virtual {v6, v7, v8}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    const/4 v7, 0x4

    new-array v7, v7, [Landroid/animation/Animator;

    aput-object v0, v7, v4

    aput-object p1, v7, v3

    aput-object v2, v7, v1

    const/4 p1, 0x3

    aput-object v5, v7, p1

    .line 7
    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 8
    new-instance p1, Lcom/smartisanos/magicflow/view/FloatSearchView$4;

    invoke-direct {p1, p0}, Lcom/smartisanos/magicflow/view/FloatSearchView$4;-><init>(Lcom/smartisanos/magicflow/view/FloatSearchView;)V

    invoke-virtual {v6, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 9
    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private continueShow(Lcom/smartisanos/magicflow/view/weather/HeadView;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/FloatSearchView;->mFloatLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x2

    new-array v2, v1, [F

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v3

    const/4 v4, 0x0

    aput v3, v2, v4

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    aput v3, v2, v5

    const-string v6, "alpha"

    invoke-static {v0, v6, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v7, 0xc8

    .line 2
    invoke-virtual {v0, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 3
    invoke-virtual {p1}, Lcom/smartisanos/magicflow/view/weather/HeadView;->getSearchLayout()Landroid/view/View;

    move-result-object v2

    new-array v9, v1, [F

    invoke-virtual {p1}, Lcom/smartisanos/magicflow/view/weather/HeadView;->getSearchLayoutAlpha()F

    move-result p1

    aput p1, v9, v4

    const/4 p1, 0x0

    aput p1, v9, v5

    invoke-static {v2, v6, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v9, 0x64

    .line 4
    invoke-virtual {p1, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 5
    iget-object v2, p0, Lcom/smartisanos/magicflow/view/FloatSearchView;->mSearchLayout:Landroid/support/constraint/ConstraintLayout;

    new-array v6, v1, [F

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getScaleX()F

    move-result v9

    aput v9, v6, v4

    aput v3, v6, v5

    const-string v9, "scaleX"

    invoke-static {v2, v9, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 6
    invoke-virtual {v2, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 7
    iget-object v6, p0, Lcom/smartisanos/magicflow/view/FloatSearchView;->mSearchLayout:Landroid/support/constraint/ConstraintLayout;

    new-array v9, v1, [F

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getScaleY()F

    move-result v10

    aput v10, v9, v4

    aput v3, v9, v5

    const-string v3, "scaleY"

    invoke-static {v6, v3, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 8
    invoke-virtual {v3, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 9
    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v7, 0x4

    new-array v7, v7, [Landroid/animation/Animator;

    aput-object v0, v7, v4

    aput-object p1, v7, v5

    aput-object v2, v7, v1

    const/4 p1, 0x3

    aput-object v3, v7, p1

    .line 10
    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 11
    new-instance p1, Lcom/smartisanos/magicflow/view/FloatSearchView$3;

    invoke-direct {p1, p0}, Lcom/smartisanos/magicflow/view/FloatSearchView$3;-><init>(Lcom/smartisanos/magicflow/view/FloatSearchView;)V

    invoke-virtual {v6, p1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 12
    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private needContinueAnimation()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/FloatSearchView;->mFloatLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/smartisanos/magicflow/view/FloatSearchView;->mFloatLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public continueAnimation(Lcom/smartisanos/magicflow/view/weather/HeadView;)I
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/FloatSearchView;->needContinueAnimation()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/smartisanos/magicflow/view/FloatSearchView;->mAnimationRunning:Z

    .line 3
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/FloatSearchView;->mFloatLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v1

    float-to-double v1, v1

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    cmpl-double v1, v1, v3

    if-ltz v1, :cond_1

    .line 4
    invoke-direct {p0, p1}, Lcom/smartisanos/magicflow/view/FloatSearchView;->continueShow(Lcom/smartisanos/magicflow/view/weather/HeadView;)V

    return v0

    .line 5
    :cond_1
    invoke-direct {p0, p1}, Lcom/smartisanos/magicflow/view/FloatSearchView;->continueHide(Lcom/smartisanos/magicflow/view/weather/HeadView;)V

    const/4 p1, 0x2

    return p1
.end method

.method public hide(FLcom/smartisanos/magicflow/view/weather/HeadView;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/smartisanos/magicflow/view/FloatSearchView;->mAnimationRunning:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/FloatSearchView;->mFloatLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v0

    if-ltz v2, :cond_2

    .line 3
    invoke-virtual {p2, v0}, Lcom/smartisanos/magicflow/view/weather/HeadView;->setSearchLayoutAlpha(F)V

    .line 4
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/FloatSearchView;->mFloatLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 5
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/FloatSearchView;->mSearchLayout:Landroid/support/constraint/ConstraintLayout;

    iget p2, p0, Lcom/smartisanos/magicflow/view/FloatSearchView;->MIN_SCALE_X:F

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setScaleX(F)V

    .line 6
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/FloatSearchView;->mSearchLayout:Landroid/support/constraint/ConstraintLayout;

    iget p2, p0, Lcom/smartisanos/magicflow/view/FloatSearchView;->MIN_SCALE_Y:F

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setScaleY(F)V

    const/16 p1, 0x8

    .line 7
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void

    .line 8
    :cond_2
    invoke-virtual {p2, p1}, Lcom/smartisanos/magicflow/view/weather/HeadView;->setSearchLayoutAlpha(F)V

    .line 9
    iget-object p2, p0, Lcom/smartisanos/magicflow/view/FloatSearchView;->mFloatLayout:Landroid/widget/FrameLayout;

    sub-float p1, v0, p1

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 10
    iget p2, p0, Lcom/smartisanos/magicflow/view/FloatSearchView;->MIN_SCALE_X:F

    sub-float v1, v0, p2

    mul-float/2addr v1, p1

    add-float/2addr p2, v1

    .line 11
    iget v1, p0, Lcom/smartisanos/magicflow/view/FloatSearchView;->MIN_SCALE_Y:F

    sub-float/2addr v0, v1

    mul-float/2addr v0, p1

    add-float/2addr v1, v0

    .line 12
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/FloatSearchView;->mSearchLayout:Landroid/support/constraint/ConstraintLayout;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setScaleX(F)V

    .line 13
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/FloatSearchView;->mSearchLayout:Landroid/support/constraint/ConstraintLayout;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setScaleY(F)V

    return-void
.end method

.method public hideFloatSearchMask(F)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/FloatSearchView;->mFloatSearchMask:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/FloatSearchView;->mShowAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/FloatSearchView;->mShowAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/FloatSearchView;->mFloatSearchMask:Landroid/widget/ImageView;

    iget v1, p0, Lcom/smartisanos/magicflow/view/FloatSearchView;->mFloatSearchMaskLastAlpha:F

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr p1, v2

    sub-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/smartisanos/magicflow/o/n;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/FloatSearchView;->mFloatLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f08026d

    if-eq v0, v1, :cond_2

    goto :goto_0

    .line 4
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/smartisanos/magicflow/view/weather/HeadView;->handleSearLayoutClick(Landroid/content/Context;)V

    :goto_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 5

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f080138

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/FloatSearchView;->mFloatSearchMask:Landroid/widget/ImageView;

    const v0, 0x7f0802ab

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/FloatSearchView;->mSpace:Landroid/view/View;

    const v0, 0x7f080269

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/FloatSearchView;->mSearchImage:Landroid/widget/ImageView;

    const v0, 0x7f080272

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/FloatSearchView;->mSearchText:Landroid/widget/TextView;

    const v0, 0x7f08026d

    .line 6
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/ConstraintLayout;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/FloatSearchView;->mSearchLayout:Landroid/support/constraint/ConstraintLayout;

    const v0, 0x7f080137

    .line 7
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/FloatSearchView;->mFloatLayout:Landroid/widget/FrameLayout;

    const v0, 0x7f080268

    .line 8
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/FloatSearchView;->mSearchIcon:Landroid/widget/ImageView;

    .line 9
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/FloatSearchView;->mSearchImage:Landroid/widget/ImageView;

    const v1, 0x7f070183

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 10
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/FloatSearchView;->mSearchLayout:Landroid/support/constraint/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 11
    sget v1, Lcom/smartisanos/magicflow/h/d;->u:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 12
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/FloatSearchView;->mSearchLayout:Landroid/support/constraint/ConstraintLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 13
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/FloatSearchView;->mSpace:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 14
    sget v1, Lcom/smartisanos/magicflow/h/d;->M:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060152

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 15
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/FloatSearchView;->mSpace:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 16
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/FloatSearchView;->mSearchText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x7f0500a4

    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 17
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/FloatSearchView;->mSearchIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f070341

    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 18
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/view/FloatSearchView;->updateText()V

    .line 19
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-wide/high16 v1, 0x4028000000000000L    # 12.0

    invoke-static {v0, v1, v2}, Lcom/smartisanos/magicflow/o/n;->a(Landroid/content/Context;D)I

    move-result v0

    int-to-float v0, v0

    sget v1, Lcom/smartisanos/magicflow/h/d;->H:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const-wide/high16 v3, 0x4042000000000000L    # 36.0

    invoke-static {v2, v3, v4}, Lcom/smartisanos/magicflow/o/n;->a(Landroid/content/Context;D)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    iput v1, p0, Lcom/smartisanos/magicflow/view/FloatSearchView;->MIN_SCALE_X:F

    .line 20
    iget v0, p0, Lcom/smartisanos/magicflow/view/FloatSearchView;->MIN_SCALE_X:F

    iput v0, p0, Lcom/smartisanos/magicflow/view/FloatSearchView;->MIN_SCALE_Y:F

    .line 21
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/FloatSearchView;->mSearchLayout:Landroid/support/constraint/ConstraintLayout;

    iget v1, p0, Lcom/smartisanos/magicflow/view/FloatSearchView;->MIN_SCALE_Y:F

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setScaleY(F)V

    .line 22
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/FloatSearchView;->mSearchLayout:Landroid/support/constraint/ConstraintLayout;

    iget v1, p0, Lcom/smartisanos/magicflow/view/FloatSearchView;->MIN_SCALE_X:F

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setScaleX(F)V

    .line 23
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/FloatSearchView;->mSearchLayout:Landroid/support/constraint/ConstraintLayout;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public show(FLcom/smartisanos/magicflow/view/weather/HeadView;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/smartisanos/magicflow/view/FloatSearchView;->mAnimationRunning:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/FloatSearchView;->mFloatLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    cmpl-float v0, p1, v1

    if-ltz v0, :cond_2

    const/4 p1, 0x0

    .line 4
    invoke-virtual {p2, p1}, Lcom/smartisanos/magicflow/view/weather/HeadView;->setSearchLayoutAlpha(F)V

    .line 5
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/FloatSearchView;->mFloatLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 6
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/FloatSearchView;->mSearchLayout:Landroid/support/constraint/ConstraintLayout;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setScaleX(F)V

    .line 7
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/FloatSearchView;->mSearchLayout:Landroid/support/constraint/ConstraintLayout;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setScaleY(F)V

    return-void

    :cond_2
    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr v0, p1

    sub-float v0, v1, v0

    .line 8
    invoke-virtual {p2, v0}, Lcom/smartisanos/magicflow/view/weather/HeadView;->setSearchLayoutAlpha(F)V

    .line 9
    iget-object p2, p0, Lcom/smartisanos/magicflow/view/FloatSearchView;->mFloatLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 10
    iget p2, p0, Lcom/smartisanos/magicflow/view/FloatSearchView;->MIN_SCALE_X:F

    sub-float v0, v1, p2

    mul-float/2addr v0, p1

    add-float/2addr p2, v0

    .line 11
    iget v0, p0, Lcom/smartisanos/magicflow/view/FloatSearchView;->MIN_SCALE_Y:F

    sub-float/2addr v1, v0

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    .line 12
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/FloatSearchView;->mSearchLayout:Landroid/support/constraint/ConstraintLayout;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setScaleX(F)V

    .line 13
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/FloatSearchView;->mSearchLayout:Landroid/support/constraint/ConstraintLayout;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setScaleY(F)V

    return-void
.end method

.method public showFloatSearchMask()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/FloatSearchView;->mFloatLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/smartisanos/magicflow/view/FloatSearchView;->mFloatSearchMask:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v2, 0x0

    .line 2
    iget-object v3, p0, Lcom/smartisanos/magicflow/view/FloatSearchView;->mFloatSearchMask:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getAlpha()F

    move-result v3

    aput v3, v0, v2

    const/4 v2, 0x1

    aput v1, v0, v2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/FloatSearchView;->mShowAnimator:Landroid/animation/ValueAnimator;

    .line 3
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/FloatSearchView;->mShowAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/smartisanos/magicflow/view/FloatSearchView$1;

    invoke-direct {v1, p0}, Lcom/smartisanos/magicflow/view/FloatSearchView$1;-><init>(Lcom/smartisanos/magicflow/view/FloatSearchView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 4
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/FloatSearchView;->mShowAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/smartisanos/magicflow/view/FloatSearchView$2;

    invoke-direct {v1, p0}, Lcom/smartisanos/magicflow/view/FloatSearchView$2;-><init>(Lcom/smartisanos/magicflow/view/FloatSearchView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 5
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/FloatSearchView;->mShowAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 6
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/FloatSearchView;->mShowAnimator:Landroid/animation/ValueAnimator;

    iget v1, p0, Lcom/smartisanos/magicflow/view/FloatSearchView;->mMaskShowDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 7
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/FloatSearchView;->mShowAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_1
    :goto_0
    return-void
.end method

.method public updateBackgroundColor()V
    .locals 5

    .line 1
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v2, 0x2

    new-array v2, v2, [I

    sget v3, Lcom/smartisanos/magicflow/h/d;->v:I

    const/4 v4, 0x0

    aput v3, v2, v4

    const/4 v3, 0x1

    aput v4, v2, v3

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 2
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/FloatSearchView;->mFloatSearchMask:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public updateText()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/FloatSearchView;->mSearchText:Landroid/widget/TextView;

    const v1, 0x7f0d0237

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method
