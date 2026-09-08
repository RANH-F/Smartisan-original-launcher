.class public Lcom/smartisanos/magicflow/view/UpDownAnimation;
.super Ljava/lang/Object;
.source "UpDownAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisanos/magicflow/view/UpDownAnimation$AnimListener;
    }
.end annotation


# instance fields
.field private animator:Landroid/animation/ValueAnimator;

.field private isRight:Z

.field private mAnimating:Z

.field private mCloseView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mListener:Lcom/smartisanos/magicflow/view/UpDownAnimation$AnimListener;

.field private mOpenView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/smartisanos/magicflow/view/UpDownAnimation;->mAnimating:Z

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/smartisanos/magicflow/view/UpDownAnimation;->isRight:Z

    .line 4
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/UpDownAnimation;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/smartisanos/magicflow/view/UpDownAnimation;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/magicflow/view/UpDownAnimation;->mCloseView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$100(Lcom/smartisanos/magicflow/view/UpDownAnimation;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/magicflow/view/UpDownAnimation;->mOpenView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$200(Lcom/smartisanos/magicflow/view/UpDownAnimation;)Lcom/smartisanos/magicflow/view/UpDownAnimation$AnimListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/magicflow/view/UpDownAnimation;->mListener:Lcom/smartisanos/magicflow/view/UpDownAnimation$AnimListener;

    return-object p0
.end method

.method static synthetic access$302(Lcom/smartisanos/magicflow/view/UpDownAnimation;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/smartisanos/magicflow/view/UpDownAnimation;->mAnimating:Z

    return p1
.end method

.method private destroyAnim()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/UpDownAnimation;->animator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/UpDownAnimation;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getListeners()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/smartisanos/magicflow/view/UpDownAnimation;->animator:Landroid/animation/ValueAnimator;

    :cond_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/smartisanos/magicflow/view/UpDownAnimation;->mOpenView:Landroid/view/View;

    .line 2
    iput-object v0, p0, Lcom/smartisanos/magicflow/view/UpDownAnimation;->mListener:Lcom/smartisanos/magicflow/view/UpDownAnimation$AnimListener;

    .line 3
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/UpDownAnimation;->destroyAnim()V

    .line 4
    iput-object v0, p0, Lcom/smartisanos/magicflow/view/UpDownAnimation;->mContext:Landroid/content/Context;

    return-void
.end method

.method public init(Landroid/view/View;Landroid/view/View;ZLcom/smartisanos/magicflow/view/UpDownAnimation$AnimListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/UpDownAnimation;->mCloseView:Landroid/view/View;

    .line 2
    iput-object p2, p0, Lcom/smartisanos/magicflow/view/UpDownAnimation;->mOpenView:Landroid/view/View;

    .line 3
    iput-boolean p3, p0, Lcom/smartisanos/magicflow/view/UpDownAnimation;->isRight:Z

    .line 4
    iput-object p4, p0, Lcom/smartisanos/magicflow/view/UpDownAnimation;->mListener:Lcom/smartisanos/magicflow/view/UpDownAnimation$AnimListener;

    return-void
.end method

.method public isAnimating()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/smartisanos/magicflow/view/UpDownAnimation;->mAnimating:Z

    return v0
.end method

.method public onEnd()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/smartisanos/magicflow/view/UpDownAnimation;->mCloseView:Landroid/view/View;

    .line 2
    iput-object v0, p0, Lcom/smartisanos/magicflow/view/UpDownAnimation;->mOpenView:Landroid/view/View;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/smartisanos/magicflow/view/UpDownAnimation;->isRight:Z

    return-void
.end method

.method public startAnimation()V
    .locals 7

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/smartisanos/magicflow/view/UpDownAnimation;->mAnimating:Z

    .line 2
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/UpDownAnimation;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0602cb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v2, v1

    .line 3
    iget-boolean v3, p0, Lcom/smartisanos/magicflow/view/UpDownAnimation;->isRight:Z

    const/4 v4, 0x0

    if-nez v3, :cond_0

    move v6, v4

    move v4, v2

    move v2, v6

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/UpDownAnimation;->destroyAnim()V

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v5, 0x0

    aput v2, v3, v5

    aput v4, v3, v0

    .line 5
    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/UpDownAnimation;->animator:Landroid/animation/ValueAnimator;

    .line 6
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/UpDownAnimation;->animator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 7
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/UpDownAnimation;->animator:Landroid/animation/ValueAnimator;

    sget-object v2, Lcom/smartisanos/magicflow/view/CubicInterpolator;->OUT:Lcom/smartisanos/magicflow/view/CubicInterpolator;

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 8
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/UpDownAnimation;->animator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/smartisanos/magicflow/view/UpDownAnimation$1;

    invoke-direct {v2, p0, v1}, Lcom/smartisanos/magicflow/view/UpDownAnimation$1;-><init>(Lcom/smartisanos/magicflow/view/UpDownAnimation;I)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 9
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/UpDownAnimation;->animator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/smartisanos/magicflow/view/UpDownAnimation$2;

    invoke-direct {v1, p0}, Lcom/smartisanos/magicflow/view/UpDownAnimation$2;-><init>(Lcom/smartisanos/magicflow/view/UpDownAnimation;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 10
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/UpDownAnimation;->animator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method
