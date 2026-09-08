.class public Lcom/smartisanos/magicflow/view/WelcomeView;
.super Landroid/widget/FrameLayout;
.source "WelcomeView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisanos/magicflow/view/WelcomeView$OnWelcomeViewDismissListener;
    }
.end annotation


# instance fields
.field private PRESENTATION_DURATION:I

.field private WELCOME_DURATION:I

.field private mAnimSet:Landroid/animation/AnimatorSet;

.field private mCancelClickListener:Landroid/view/View$OnClickListener;

.field private mDismissListener:Lcom/smartisanos/magicflow/view/WelcomeView$OnWelcomeViewDismissListener;

.field private mEnterButton:Lsmartisan/widget/ShadowButton;

.field private mEnterClickListener:Landroid/view/View$OnClickListener;

.field private mPresentationLayout:Landroid/widget/LinearLayout;

.field private mWelcomeCancel:Landroid/widget/TextView;

.field private mWelcomeImg:Landroid/widget/ImageView;

.field private offSet:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/smartisanos/magicflow/view/WelcomeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/smartisanos/magicflow/view/WelcomeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/smartisanos/magicflow/view/WelcomeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/16 p1, 0x1f4

    .line 5
    iput p1, p0, Lcom/smartisanos/magicflow/view/WelcomeView;->offSet:I

    const/16 p2, 0x2710

    .line 6
    iput p2, p0, Lcom/smartisanos/magicflow/view/WelcomeView;->WELCOME_DURATION:I

    .line 7
    iput p1, p0, Lcom/smartisanos/magicflow/view/WelcomeView;->PRESENTATION_DURATION:I

    .line 8
    new-instance p1, Lcom/smartisanos/magicflow/view/WelcomeView$2;

    invoke-direct {p1, p0}, Lcom/smartisanos/magicflow/view/WelcomeView$2;-><init>(Lcom/smartisanos/magicflow/view/WelcomeView;)V

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/WelcomeView;->mEnterClickListener:Landroid/view/View$OnClickListener;

    .line 9
    new-instance p1, Lcom/smartisanos/magicflow/view/WelcomeView$3;

    invoke-direct {p1, p0}, Lcom/smartisanos/magicflow/view/WelcomeView$3;-><init>(Lcom/smartisanos/magicflow/view/WelcomeView;)V

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/WelcomeView;->mCancelClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/smartisanos/magicflow/view/WelcomeView;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/magicflow/view/WelcomeView;->mWelcomeImg:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/smartisanos/magicflow/view/WelcomeView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/WelcomeView;->cancelAnimator()V

    return-void
.end method

.method static synthetic access$200(Lcom/smartisanos/magicflow/view/WelcomeView;)Lcom/smartisanos/magicflow/view/WelcomeView$OnWelcomeViewDismissListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/magicflow/view/WelcomeView;->mDismissListener:Lcom/smartisanos/magicflow/view/WelcomeView$OnWelcomeViewDismissListener;

    return-object p0
.end method

.method private cancelAnimator()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/WelcomeView;->mAnimSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/WelcomeView;->mAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/smartisanos/magicflow/view/WelcomeView;->mAnimSet:Landroid/animation/AnimatorSet;

    :cond_0
    return-void
.end method


# virtual methods
.method public clean()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/WelcomeView;->mEnterButton:Lsmartisan/widget/ShadowButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/WelcomeView;->mWelcomeCancel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    iput-object v1, p0, Lcom/smartisanos/magicflow/view/WelcomeView;->mEnterClickListener:Landroid/view/View$OnClickListener;

    .line 4
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/WelcomeView;->mWelcomeImg:Landroid/widget/ImageView;

    invoke-static {v0}, Lcom/smartisanos/magicflow/o/n;->a(Landroid/widget/ImageView;)V

    .line 5
    iput-object v1, p0, Lcom/smartisanos/magicflow/view/WelcomeView;->mWelcomeImg:Landroid/widget/ImageView;

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f080205

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/WelcomeView;->mPresentationLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f0800fb

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lsmartisan/widget/ShadowButton;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/WelcomeView;->mEnterButton:Lsmartisan/widget/ShadowButton;

    const v0, 0x7f080386

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/WelcomeView;->mWelcomeCancel:Landroid/widget/TextView;

    const v0, 0x7f080387

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/WelcomeView;->mWelcomeImg:Landroid/widget/ImageView;

    .line 6
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/WelcomeView;->mEnterButton:Lsmartisan/widget/ShadowButton;

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/WelcomeView;->mEnterClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/WelcomeView;->mWelcomeCancel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/WelcomeView;->mCancelClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    new-instance v0, Lcom/smartisanos/magicflow/view/WelcomeView$1;

    invoke-direct {v0, p0}, Lcom/smartisanos/magicflow/view/WelcomeView$1;-><init>(Lcom/smartisanos/magicflow/view/WelcomeView;)V

    invoke-static {v0}, Lcom/smartisanos/magicflow/o/d;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public resetDetailsView()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/WelcomeView;->cancelAnimator()V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/WelcomeView;->mPresentationLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/WelcomeView;->mWelcomeImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationY(F)V

    return-void
.end method

.method public setOnWelcomeViewDismissListener(Lcom/smartisanos/magicflow/view/WelcomeView$OnWelcomeViewDismissListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/WelcomeView;->mDismissListener:Lcom/smartisanos/magicflow/view/WelcomeView$OnWelcomeViewDismissListener;

    return-void
.end method

.method public startScrollDetailsView()V
    .locals 8

    .line 1
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/WelcomeView;->mAnimSet:Landroid/animation/AnimatorSet;

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/WelcomeView;->mWelcomeImg:Landroid/widget/ImageView;

    const/4 v1, 0x2

    new-array v2, v1, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v2, v3

    sget v4, Lcom/smartisanos/magicflow/h/d;->I:I

    rsub-int v4, v4, 0x10bc

    iget v5, p0, Lcom/smartisanos/magicflow/view/WelcomeView;->offSet:I

    add-int/2addr v4, v5

    neg-int v4, v4

    int-to-float v4, v4

    const/4 v5, 0x1

    aput v4, v2, v5

    const-string v4, "translationY"

    invoke-static {v0, v4, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 3
    new-instance v2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 4
    iget v2, p0, Lcom/smartisanos/magicflow/view/WelcomeView;->WELCOME_DURATION:I

    int-to-long v6, v2

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 5
    iget-object v2, p0, Lcom/smartisanos/magicflow/view/WelcomeView;->mPresentationLayout:Landroid/widget/LinearLayout;

    new-array v4, v1, [F

    fill-array-data v4, :array_0

    const-string v6, "alpha"

    invoke-static {v2, v6, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 6
    iget v4, p0, Lcom/smartisanos/magicflow/view/WelcomeView;->PRESENTATION_DURATION:I

    int-to-long v6, v4

    invoke-virtual {v2, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 7
    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v4}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 8
    iget-object v4, p0, Lcom/smartisanos/magicflow/view/WelcomeView;->mAnimSet:Landroid/animation/AnimatorSet;

    new-array v1, v1, [Landroid/animation/Animator;

    aput-object v0, v1, v3

    aput-object v2, v1, v5

    invoke-virtual {v4, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 9
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/WelcomeView;->mAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
