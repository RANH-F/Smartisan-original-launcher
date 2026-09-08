.class public Lcom/smartisanos/magicflow/view/settings/GlobalLeftScreenAnimView;
.super Landroid/widget/FrameLayout;
.source "GlobalLeftScreenAnimView.java"


# instance fields
.field private final DURATION_1200L:I

.field private final DURATION_200L:I

.field private final DURATION_2200L:I

.field private final DURATION_2600L:I

.field private final DURATION_400L:I

.field private final DURATION_600L:I

.field private mAnimSet:Landroid/animation/AnimatorSet;

.field private mBgShadowView:Landroid/widget/ImageView;

.field private final mFactor:F

.field private mHandView:Landroid/widget/ImageView;

.field private mHandleEndX:I

.field private final mHandleEndY:I

.field private mHandleStartX:I

.field private mInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field private mLayoutWidth:I

.field private final mOffsetHandleX:I

.field private mSchematicDiagram:Landroid/view/View;

.field private mViewWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/smartisanos/magicflow/view/settings/GlobalLeftScreenAnimView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/smartisanos/magicflow/view/settings/GlobalLeftScreenAnimView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p1, 0x190

    .line 4
    iput p1, p0, Lcom/smartisanos/magicflow/view/settings/GlobalLeftScreenAnimView;->DURATION_400L:I

    const/16 p1, 0xc8

    .line 5
    iput p1, p0, Lcom/smartisanos/magicflow/view/settings/GlobalLeftScreenAnimView;->DURATION_200L:I

    const/16 p1, 0x258

    .line 6
    iput p1, p0, Lcom/smartisanos/magicflow/view/settings/GlobalLeftScreenAnimView;->DURATION_600L:I

    const/16 p1, 0x4b0

    .line 7
    iput p1, p0, Lcom/smartisanos/magicflow/view/settings/GlobalLeftScreenAnimView;->DURATION_1200L:I

    const/16 p1, 0x898

    .line 8
    iput p1, p0, Lcom/smartisanos/magicflow/view/settings/GlobalLeftScreenAnimView;->DURATION_2200L:I

    const/16 p1, 0xa28

    .line 9
    iput p1, p0, Lcom/smartisanos/magicflow/view/settings/GlobalLeftScreenAnimView;->DURATION_2600L:I

    const/4 p1, 0x5

    .line 10
    iput p1, p0, Lcom/smartisanos/magicflow/view/settings/GlobalLeftScreenAnimView;->mOffsetHandleX:I

    const/16 p1, 0x64

    .line 11
    iput p1, p0, Lcom/smartisanos/magicflow/view/settings/GlobalLeftScreenAnimView;->mHandleEndY:I

    const/high16 p1, 0x3fc00000    # 1.5f

    .line 12
    iput p1, p0, Lcom/smartisanos/magicflow/view/settings/GlobalLeftScreenAnimView;->mFactor:F

    return-void
.end method

.method static synthetic access$000(Lcom/smartisanos/magicflow/view/settings/GlobalLeftScreenAnimView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/settings/GlobalLeftScreenAnimView;->startAnim()V

    return-void
.end method

.method private cancelAnim()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/settings/GlobalLeftScreenAnimView;->mAnimSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/settings/GlobalLeftScreenAnimView;->mAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 4
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/settings/GlobalLeftScreenAnimView;->mAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/smartisanos/magicflow/view/settings/GlobalLeftScreenAnimView;->mAnimSet:Landroid/animation/AnimatorSet;

    :cond_0
    return-void
.end method

.method private createAlphaAnim(Landroid/view/View;FFJ)Landroid/animation/Animator;
    .locals 8

    const-wide/16 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    .line 1
    invoke-direct/range {v0 .. v7}, Lcom/smartisanos/magicflow/view/settings/GlobalLeftScreenAnimView;->createAlphaAnim(Landroid/view/View;FFJJ)Landroid/animation/Animator;

    move-result-object p1

    return-object p1
.end method

.method private createAlphaAnim(Landroid/view/View;FFJJ)Landroid/animation/Animator;
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 p2, 0x1

    aput p3, v0, p2

    const-string p2, "alpha"

    .line 2
    invoke-static {p1, p2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 3
    invoke-virtual {p1, p4, p5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 4
    invoke-virtual {p1, p6, p7}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 5
    iget-object p2, p0, Lcom/smartisanos/magicflow/view/settings/GlobalLeftScreenAnimView;->mInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p1
.end method

.method private createHandInAnim()Landroid/animation/Animator;
    .locals 11

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v2, p0, Lcom/smartisanos/magicflow/view/settings/GlobalLeftScreenAnimView;->mHandView:Landroid/widget/ImageView;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const-wide/16 v5, 0xc8

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/smartisanos/magicflow/view/settings/GlobalLeftScreenAnimView;->createAlphaAnim(Landroid/view/View;FFJ)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/settings/GlobalLeftScreenAnimView;->mHandView:Landroid/widget/ImageView;

    const/4 v2, 0x2

    new-array v2, v2, [F

    iget v3, p0, Lcom/smartisanos/magicflow/view/settings/GlobalLeftScreenAnimView;->mHandleStartX:I

    int-to-float v3, v3

    const/4 v4, 0x0

    aput v3, v2, v4

    iget v3, p0, Lcom/smartisanos/magicflow/view/settings/GlobalLeftScreenAnimView;->mHandleEndX:I

    int-to-float v3, v3

    const/4 v4, 0x1

    aput v3, v2, v4

    const-string v3, "X"

    invoke-static {v1, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v2, 0x190

    .line 4
    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0xc8

    .line 5
    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 6
    iget-object v2, p0, Lcom/smartisanos/magicflow/view/settings/GlobalLeftScreenAnimView;->mInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 8
    iget-object v4, p0, Lcom/smartisanos/magicflow/view/settings/GlobalLeftScreenAnimView;->mHandView:Landroid/widget/ImageView;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const-wide/16 v7, 0xc8

    const-wide/16 v9, 0x258

    move-object v3, p0

    invoke-direct/range {v3 .. v10}, Lcom/smartisanos/magicflow/view/settings/GlobalLeftScreenAnimView;->createAlphaAnim(Landroid/view/View;FFJJ)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 10
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    return-object v1
.end method

.method private createHandOutAnim()Landroid/animation/Animator;
    .locals 11

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v2, p0, Lcom/smartisanos/magicflow/view/settings/GlobalLeftScreenAnimView;->mHandView:Landroid/widget/ImageView;

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const-wide/16 v5, 0xc8

    const-wide/16 v7, 0x4b0

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/smartisanos/magicflow/view/settings/GlobalLeftScreenAnimView;->createAlphaAnim(Landroid/view/View;FFJJ)Landroid/animation/Animator;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/settings/GlobalLeftScreenAnimView;->mHandView:Landroid/widget/ImageView;

    const/4 v2, 0x2

    new-array v2, v2, [F

    iget v3, p0, Lcom/smartisanos/magicflow/view/settings/GlobalLeftScreenAnimView;->mHandleEndX:I

    int-to-float v3, v3

    const/4 v4, 0x0

    aput v3, v2, v4

    iget v3, p0, Lcom/smartisanos/magicflow/view/settings/GlobalLeftScreenAnimView;->mHandleStartX:I

    int-to-float v3, v3

    const/4 v4, 0x1

    aput v3, v2, v4

    const-string v3, "X"

    invoke-static {v1, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v2, 0x190

    .line 5
    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x898

    .line 6
    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 7
    iget-object v2, p0, Lcom/smartisanos/magicflow/view/settings/GlobalLeftScreenAnimView;->mInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 8
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    iget-object v4, p0, Lcom/smartisanos/magicflow/view/settings/GlobalLeftScreenAnimView;->mHandView:Landroid/widget/ImageView;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const-wide/16 v7, 0x190

    const-wide/16 v9, 0xa28

    move-object v3, p0

    invoke-direct/range {v3 .. v10}, Lcom/smartisanos/magicflow/view/settings/GlobalLeftScreenAnimView;->createAlphaAnim(Landroid/view/View;FFJJ)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 11
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    return-object v1
.end method

.method private createListAndSettingInAnim()Landroid/animation/Animator;
    .locals 9

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/settings/GlobalLeftScreenAnimView;->mSchematicDiagram:Landroid/view/View;

    const/4 v2, 0x2

    new-array v2, v2, [F

    iget v3, p0, Lcom/smartisanos/magicflow/view/settings/GlobalLeftScreenAnimView;->mViewWidth:I

    neg-int v3, v3

    int-to-float v3, v3

    const/4 v4, 0x0

    aput v3, v2, v4

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput v4, v2, v3

    const-string v3, "translationX"

    invoke-static {v1, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v2, 0x190

    .line 3
    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 4
    iget-object v2, p0, Lcom/smartisanos/magicflow/view/settings/GlobalLeftScreenAnimView;->mInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 5
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object v4, p0, Lcom/smartisanos/magicflow/view/settings/GlobalLeftScreenAnimView;->mBgShadowView:Landroid/widget/ImageView;

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const-wide/16 v7, 0x190

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/smartisanos/magicflow/view/settings/GlobalLeftScreenAnimView;->createAlphaAnim(Landroid/view/View;FFJ)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 8
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    const-wide/16 v2, 0xc8

    .line 9
    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    return-object v1
.end method

.method private createListAndSettingOutAnim()Landroid/animation/Animator;
    .locals 9

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/settings/GlobalLeftScreenAnimView;->mSchematicDiagram:Landroid/view/View;

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v2, v3

    iget v3, p0, Lcom/smartisanos/magicflow/view/settings/GlobalLeftScreenAnimView;->mViewWidth:I

    neg-int v3, v3

    int-to-float v3, v3

    const/4 v4, 0x1

    aput v3, v2, v4

    const-string v3, "translationX"

    invoke-static {v1, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v2, 0x190

    .line 3
    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 4
    iget-object v2, p0, Lcom/smartisanos/magicflow/view/settings/GlobalLeftScreenAnimView;->mInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 5
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object v4, p0, Lcom/smartisanos/magicflow/view/settings/GlobalLeftScreenAnimView;->mBgShadowView:Landroid/widget/ImageView;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const-wide/16 v7, 0x190

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/smartisanos/magicflow/view/settings/GlobalLeftScreenAnimView;->createAlphaAnim(Landroid/view/View;FFJ)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 8
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    const-wide/16 v2, 0x898

    .line 9
    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    return-object v1
.end method

.method private init()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/settings/GlobalLeftScreenAnimView;->mHandView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/settings/GlobalLeftScreenAnimView;->mHandView:Landroid/widget/ImageView;

    iget v2, p0, Lcom/smartisanos/magicflow/view/settings/GlobalLeftScreenAnimView;->mHandleStartX:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/settings/GlobalLeftScreenAnimView;->mHandView:Landroid/widget/ImageView;

    const/high16 v2, 0x42c80000    # 100.0f

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 4
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/settings/GlobalLeftScreenAnimView;->mSchematicDiagram:Landroid/view/View;

    iget v2, p0, Lcom/smartisanos/magicflow/view/settings/GlobalLeftScreenAnimView;->mViewWidth:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 5
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/settings/GlobalLeftScreenAnimView;->mBgShadowView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method

.method private startAnim()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/settings/GlobalLeftScreenAnimView;->cancelAnim()V

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 5
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/settings/GlobalLeftScreenAnimView;->cancelAnim()V

    return-void

    .line 6
    :cond_1
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/settings/GlobalLeftScreenAnimView;->cancelAnim()V

    .line 7
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/settings/GlobalLeftScreenAnimView;->init()V

    .line 8
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/settings/GlobalLeftScreenAnimView;->mInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/settings/GlobalLeftScreenAnimView;->createHandInAnim()Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/settings/GlobalLeftScreenAnimView;->createListAndSettingInAnim()Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/settings/GlobalLeftScreenAnimView;->createHandOutAnim()Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 13
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/settings/GlobalLeftScreenAnimView;->createListAndSettingOutAnim()Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/smartisanos/magicflow/view/settings/GlobalLeftScreenAnimView;->mAnimSet:Landroid/animation/AnimatorSet;

    .line 15
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/settings/GlobalLeftScreenAnimView;->mAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 16
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/settings/GlobalLeftScreenAnimView;->mAnimSet:Landroid/animation/AnimatorSet;

    const-wide/16 v1, 0x4b0

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 17
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/settings/GlobalLeftScreenAnimView;->mAnimSet:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/smartisanos/magicflow/view/settings/GlobalLeftScreenAnimView$1;

    invoke-direct {v1, p0}, Lcom/smartisanos/magicflow/view/settings/GlobalLeftScreenAnimView$1;-><init>(Lcom/smartisanos/magicflow/view/settings/GlobalLeftScreenAnimView;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 18
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/settings/GlobalLeftScreenAnimView;->mAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 2
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/settings/GlobalLeftScreenAnimView;->startAnim()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 2
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/settings/GlobalLeftScreenAnimView;->cancelAnim()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f08004e

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/settings/GlobalLeftScreenAnimView;->mBgShadowView:Landroid/widget/ImageView;

    const v0, 0x7f080251

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/settings/GlobalLeftScreenAnimView;->mSchematicDiagram:Landroid/view/View;

    const v0, 0x7f080150

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/settings/GlobalLeftScreenAnimView;->mHandView:Landroid/widget/ImageView;

    .line 5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0602c8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/smartisanos/magicflow/view/settings/GlobalLeftScreenAnimView;->mViewWidth:I

    .line 6
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0602c9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/smartisanos/magicflow/view/settings/GlobalLeftScreenAnimView;->mLayoutWidth:I

    .line 7
    iget v0, p0, Lcom/smartisanos/magicflow/view/settings/GlobalLeftScreenAnimView;->mLayoutWidth:I

    iget v1, p0, Lcom/smartisanos/magicflow/view/settings/GlobalLeftScreenAnimView;->mViewWidth:I

    sub-int v2, v0, v1

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, -0x5

    iput v2, p0, Lcom/smartisanos/magicflow/view/settings/GlobalLeftScreenAnimView;->mHandleStartX:I

    add-int/2addr v0, v1

    .line 8
    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x5

    iput v0, p0, Lcom/smartisanos/magicflow/view/settings/GlobalLeftScreenAnimView;->mHandleEndX:I

    return-void
.end method

.method public show(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 1
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/settings/GlobalLeftScreenAnimView;->startAnim()V

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 3
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 4
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/settings/GlobalLeftScreenAnimView;->cancelAnim()V

    :goto_0
    return-void
.end method
