.class public Lcom/smartisanos/magicflow/view/SwitchAnimation;
.super Ljava/lang/Object;
.source "SwitchAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisanos/magicflow/view/SwitchAnimation$AnimListener;
    }
.end annotation


# instance fields
.field log:Lcom/smartisanos/magicflow/LOG;

.field private mAnimating:Z

.field private mContext:Landroid/content/Context;

.field private mListener:Lcom/smartisanos/magicflow/view/SwitchAnimation$AnimListener;

.field private mNewView:Landroid/view/View;

.field private mOldView:Landroid/view/View;

.field private mToLeft:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-class v0, Lcom/smartisanos/magicflow/view/SwitchAnimation;

    invoke-static {v0}, Lcom/smartisanos/magicflow/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/magicflow/LOG;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/SwitchAnimation;->log:Lcom/smartisanos/magicflow/LOG;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/smartisanos/magicflow/view/SwitchAnimation;->mToLeft:Z

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/smartisanos/magicflow/view/SwitchAnimation;->mAnimating:Z

    .line 5
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/SwitchAnimation;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/smartisanos/magicflow/view/SwitchAnimation;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/magicflow/view/SwitchAnimation;->mOldView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$100(Lcom/smartisanos/magicflow/view/SwitchAnimation;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/magicflow/view/SwitchAnimation;->mNewView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$200(Lcom/smartisanos/magicflow/view/SwitchAnimation;)Lcom/smartisanos/magicflow/view/SwitchAnimation$AnimListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/magicflow/view/SwitchAnimation;->mListener:Lcom/smartisanos/magicflow/view/SwitchAnimation$AnimListener;

    return-object p0
.end method

.method static synthetic access$302(Lcom/smartisanos/magicflow/view/SwitchAnimation;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/smartisanos/magicflow/view/SwitchAnimation;->mAnimating:Z

    return p1
.end method


# virtual methods
.method public init(Landroid/view/View;Landroid/view/View;ZLcom/smartisanos/magicflow/view/SwitchAnimation$AnimListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/SwitchAnimation;->mOldView:Landroid/view/View;

    .line 2
    iput-object p2, p0, Lcom/smartisanos/magicflow/view/SwitchAnimation;->mNewView:Landroid/view/View;

    .line 3
    iput-boolean p3, p0, Lcom/smartisanos/magicflow/view/SwitchAnimation;->mToLeft:Z

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/smartisanos/magicflow/view/SwitchAnimation;->mAnimating:Z

    .line 5
    iput-object p4, p0, Lcom/smartisanos/magicflow/view/SwitchAnimation;->mListener:Lcom/smartisanos/magicflow/view/SwitchAnimation$AnimListener;

    return-void
.end method

.method public isAnimating()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/smartisanos/magicflow/view/SwitchAnimation;->mAnimating:Z

    return v0
.end method

.method public onEnd()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/smartisanos/magicflow/view/SwitchAnimation;->mOldView:Landroid/view/View;

    .line 2
    iput-object v0, p0, Lcom/smartisanos/magicflow/view/SwitchAnimation;->mNewView:Landroid/view/View;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/smartisanos/magicflow/view/SwitchAnimation;->mToLeft:Z

    return-void
.end method

.method public startAnimation()V
    .locals 11

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/smartisanos/magicflow/view/SwitchAnimation;->mAnimating:Z

    .line 2
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 3
    iget-object v2, p0, Lcom/smartisanos/magicflow/view/SwitchAnimation;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0602cb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    neg-int v3, v2

    int-to-float v3, v3

    int-to-float v2, v2

    .line 4
    iget-boolean v4, p0, Lcom/smartisanos/magicflow/view/SwitchAnimation;->mToLeft:Z

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    move v10, v3

    move v3, v2

    move v2, v10

    :goto_0
    const/4 v4, 0x2

    new-array v5, v4, [F

    const/4 v6, 0x0

    const/4 v7, 0x0

    aput v6, v5, v7

    aput v2, v5, v0

    .line 5
    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    const-wide/16 v8, 0x12c

    .line 6
    invoke-virtual {v2, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 7
    sget-object v5, Lcom/smartisanos/magicflow/view/CubicInterpolator;->OUT:Lcom/smartisanos/magicflow/view/CubicInterpolator;

    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 8
    new-instance v5, Lcom/smartisanos/magicflow/view/SwitchAnimation$1;

    invoke-direct {v5, p0}, Lcom/smartisanos/magicflow/view/SwitchAnimation$1;-><init>(Lcom/smartisanos/magicflow/view/SwitchAnimation;)V

    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v5, v4, [F

    aput v3, v5, v7

    aput v6, v5, v0

    .line 9
    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 10
    invoke-virtual {v3, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 11
    sget-object v5, Lcom/smartisanos/magicflow/view/CubicInterpolator;->OUT:Lcom/smartisanos/magicflow/view/CubicInterpolator;

    invoke-virtual {v3, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 12
    new-instance v5, Lcom/smartisanos/magicflow/view/SwitchAnimation$2;

    invoke-direct {v5, p0}, Lcom/smartisanos/magicflow/view/SwitchAnimation$2;-><init>(Lcom/smartisanos/magicflow/view/SwitchAnimation;)V

    invoke-virtual {v3, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 13
    new-instance v5, Lcom/smartisanos/magicflow/view/SwitchAnimation$3;

    invoke-direct {v5, p0}, Lcom/smartisanos/magicflow/view/SwitchAnimation$3;-><init>(Lcom/smartisanos/magicflow/view/SwitchAnimation;)V

    invoke-virtual {v3, v5}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-array v4, v4, [Landroid/animation/Animator;

    aput-object v2, v4, v7

    aput-object v3, v4, v0

    .line 14
    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 15
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method
