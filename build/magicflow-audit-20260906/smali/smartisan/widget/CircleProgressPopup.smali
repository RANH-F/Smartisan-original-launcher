.class public Lsmartisan/widget/CircleProgressPopup;
.super Landroid/widget/PopupWindow;
.source "CircleProgressPopup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsmartisan/widget/CircleProgressPopup$CircleProgressListenerAdapter;,
        Lsmartisan/widget/CircleProgressPopup$CircleProgressListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_CIRCLE_ANIM_DURATION:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "CirclePopup"


# instance fields
.field private mCircleAnimator:Landroid/animation/ValueAnimator;

.field private mCircleAnimatorDuration:I

.field private final mCircleProgressView:Lsmartisan/widget/CircleProgressView;

.field private final mContext:Landroid/content/Context;

.field private mEndAnimor:Landroid/animation/AnimatorSet;

.field private mListener:Lsmartisan/widget/CircleProgressPopup$CircleProgressListener;

.field private mStartAnimor:Landroid/animation/AnimatorSet;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/widget/PopupWindow;-><init>()V

    const/16 v0, 0x3e8

    .line 2
    iput v0, p0, Lsmartisan/widget/CircleProgressPopup;->mCircleAnimatorDuration:I

    .line 3
    iput-object p1, p0, Lsmartisan/widget/CircleProgressPopup;->mContext:Landroid/content/Context;

    .line 4
    new-instance p1, Lsmartisan/widget/CircleProgressView;

    iget-object v0, p0, Lsmartisan/widget/CircleProgressPopup;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lsmartisan/widget/CircleProgressView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lsmartisan/widget/CircleProgressPopup;->mCircleProgressView:Lsmartisan/widget/CircleProgressView;

    .line 5
    iget-object p1, p0, Lsmartisan/widget/CircleProgressPopup;->mCircleProgressView:Lsmartisan/widget/CircleProgressView;

    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    const/4 p1, -0x2

    .line 6
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 7
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setHeight(I)V

    const/4 p1, 0x0

    .line 8
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 9
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    const/16 v0, 0x3ea

    .line 10
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 11
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 12
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setAttachedInDecor(Z)V

    .line 13
    invoke-direct {p0}, Lsmartisan/widget/CircleProgressPopup;->initAnim()V

    return-void
.end method

.method static synthetic access$000(Lsmartisan/widget/CircleProgressPopup;)Lsmartisan/widget/CircleProgressView;
    .locals 0

    .line 1
    iget-object p0, p0, Lsmartisan/widget/CircleProgressPopup;->mCircleProgressView:Lsmartisan/widget/CircleProgressView;

    return-object p0
.end method

.method static synthetic access$100(Lsmartisan/widget/CircleProgressPopup;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lsmartisan/widget/CircleProgressPopup;->playCircleAnim()V

    return-void
.end method

.method static synthetic access$200(Lsmartisan/widget/CircleProgressPopup;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lsmartisan/widget/CircleProgressPopup;->reset()V

    return-void
.end method

.method static synthetic access$301(Lsmartisan/widget/CircleProgressPopup;)V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method static synthetic access$400(Lsmartisan/widget/CircleProgressPopup;)Lsmartisan/widget/CircleProgressPopup$CircleProgressListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lsmartisan/widget/CircleProgressPopup;->mListener:Lsmartisan/widget/CircleProgressPopup$CircleProgressListener;

    return-object p0
.end method

.method private cancelCircleAnim()V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/CircleProgressPopup;->mStartAnimor:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsmartisan/widget/CircleProgressPopup;->mListener:Lsmartisan/widget/CircleProgressPopup$CircleProgressListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lsmartisan/widget/CircleProgressPopup$CircleProgressListener;->cancel()V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lsmartisan/widget/CircleProgressPopup;->mCircleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lsmartisan/widget/CircleProgressPopup;->mCircleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    return-void
.end method

.method private dismissImmediate()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lsmartisan/widget/CircleProgressPopup;->cancelCircleAnim()V

    .line 2
    invoke-direct {p0}, Lsmartisan/widget/CircleProgressPopup;->reset()V

    .line 3
    invoke-super {p0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method

.method private initAnim()V
    .locals 11

    .line 1
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lsmartisan/widget/CircleProgressPopup;->mStartAnimor:Landroid/animation/AnimatorSet;

    .line 2
    iget-object v0, p0, Lsmartisan/widget/CircleProgressPopup;->mCircleProgressView:Lsmartisan/widget/CircleProgressView;

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    const-string v3, "alpha"

    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 3
    iget-object v2, p0, Lsmartisan/widget/CircleProgressPopup;->mCircleProgressView:Lsmartisan/widget/CircleProgressView;

    new-array v4, v1, [F

    fill-array-data v4, :array_1

    const-string v5, "scaleX"

    invoke-static {v2, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 4
    iget-object v4, p0, Lsmartisan/widget/CircleProgressPopup;->mCircleProgressView:Lsmartisan/widget/CircleProgressView;

    new-array v6, v1, [F

    fill-array-data v6, :array_2

    const-string v7, "scaleY"

    invoke-static {v4, v7, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 5
    iget-object v6, p0, Lsmartisan/widget/CircleProgressPopup;->mStartAnimor:Landroid/animation/AnimatorSet;

    const-wide/16 v8, 0x64

    invoke-virtual {v6, v8, v9}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 6
    iget-object v6, p0, Lsmartisan/widget/CircleProgressPopup;->mStartAnimor:Landroid/animation/AnimatorSet;

    const/4 v8, 0x3

    new-array v9, v8, [Landroid/animation/Animator;

    const/4 v10, 0x0

    aput-object v0, v9, v10

    const/4 v0, 0x1

    aput-object v2, v9, v0

    aput-object v4, v9, v1

    invoke-virtual {v6, v9}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 7
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lsmartisan/widget/CircleProgressPopup;->mEndAnimor:Landroid/animation/AnimatorSet;

    .line 8
    iget-object v2, p0, Lsmartisan/widget/CircleProgressPopup;->mCircleProgressView:Lsmartisan/widget/CircleProgressView;

    new-array v4, v1, [F

    fill-array-data v4, :array_3

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 9
    iget-object v3, p0, Lsmartisan/widget/CircleProgressPopup;->mCircleProgressView:Lsmartisan/widget/CircleProgressView;

    new-array v4, v1, [F

    fill-array-data v4, :array_4

    invoke-static {v3, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 10
    iget-object v4, p0, Lsmartisan/widget/CircleProgressPopup;->mCircleProgressView:Lsmartisan/widget/CircleProgressView;

    new-array v5, v1, [F

    fill-array-data v5, :array_5

    invoke-static {v4, v7, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 11
    iget-object v5, p0, Lsmartisan/widget/CircleProgressPopup;->mEndAnimor:Landroid/animation/AnimatorSet;

    const-wide/16 v6, 0x12c

    invoke-virtual {v5, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 12
    iget-object v5, p0, Lsmartisan/widget/CircleProgressPopup;->mEndAnimor:Landroid/animation/AnimatorSet;

    new-array v6, v8, [Landroid/animation/Animator;

    aput-object v2, v6, v10

    aput-object v3, v6, v0

    aput-object v4, v6, v1

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    new-array v0, v1, [F

    .line 13
    fill-array-data v0, :array_6

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lsmartisan/widget/CircleProgressPopup;->mCircleAnimator:Landroid/animation/ValueAnimator;

    .line 14
    iget-object v0, p0, Lsmartisan/widget/CircleProgressPopup;->mCircleAnimator:Landroid/animation/ValueAnimator;

    iget v1, p0, Lsmartisan/widget/CircleProgressPopup;->mCircleAnimatorDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 15
    iget-object v0, p0, Lsmartisan/widget/CircleProgressPopup;->mCircleAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lsmartisan/widget/CircleProgressPopup$1;

    invoke-direct {v1, p0}, Lsmartisan/widget/CircleProgressPopup$1;-><init>(Lsmartisan/widget/CircleProgressPopup;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_4
    .array-data 4
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
    .end array-data

    :array_5
    .array-data 4
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
    .end array-data

    :array_6
    .array-data 4
        0x0
        0x43b40000    # 360.0f
    .end array-data
.end method

.method private playCircleAnim()V
    .locals 3

    .line 1
    iget-object v0, p0, Lsmartisan/widget/CircleProgressPopup;->mCircleAnimator:Landroid/animation/ValueAnimator;

    iget v1, p0, Lsmartisan/widget/CircleProgressPopup;->mCircleAnimatorDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2
    iget-object v0, p0, Lsmartisan/widget/CircleProgressPopup;->mListener:Lsmartisan/widget/CircleProgressPopup$CircleProgressListener;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lsmartisan/widget/CircleProgressPopup;->mCircleAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lsmartisan/widget/CircleProgressPopup$4;

    invoke-direct {v1, p0}, Lsmartisan/widget/CircleProgressPopup$4;-><init>(Lsmartisan/widget/CircleProgressPopup;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lsmartisan/widget/CircleProgressPopup;->mCircleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private playEndAnim()V
    .locals 2

    .line 1
    iget-object v0, p0, Lsmartisan/widget/CircleProgressPopup;->mEndAnimor:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 2
    iget-object v0, p0, Lsmartisan/widget/CircleProgressPopup;->mEndAnimor:Landroid/animation/AnimatorSet;

    new-instance v1, Lsmartisan/widget/CircleProgressPopup$3;

    invoke-direct {v1, p0}, Lsmartisan/widget/CircleProgressPopup$3;-><init>(Lsmartisan/widget/CircleProgressPopup;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private playStartAnim(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lsmartisan/widget/CircleProgressPopup;->mStartAnimor:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 2
    iget-object v0, p0, Lsmartisan/widget/CircleProgressPopup;->mStartAnimor:Landroid/animation/AnimatorSet;

    new-instance v1, Lsmartisan/widget/CircleProgressPopup$2;

    invoke-direct {v1, p0, p1}, Lsmartisan/widget/CircleProgressPopup$2;-><init>(Lsmartisan/widget/CircleProgressPopup;Z)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private reset()V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/CircleProgressPopup;->mCircleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 2
    iget-object v0, p0, Lsmartisan/widget/CircleProgressPopup;->mStartAnimor:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    .line 3
    iget-object v0, p0, Lsmartisan/widget/CircleProgressPopup;->mEndAnimor:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    .line 4
    iget-object v0, p0, Lsmartisan/widget/CircleProgressPopup;->mCircleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lsmartisan/widget/CircleProgressPopup;->mCircleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 6
    :cond_0
    iget-object v0, p0, Lsmartisan/widget/CircleProgressPopup;->mStartAnimor:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lsmartisan/widget/CircleProgressPopup;->mStartAnimor:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    .line 8
    :cond_1
    iget-object v0, p0, Lsmartisan/widget/CircleProgressPopup;->mEndAnimor:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    iget-object v0, p0, Lsmartisan/widget/CircleProgressPopup;->mEndAnimor:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    :cond_2
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 1
    iget-object v0, p0, Lsmartisan/widget/CircleProgressPopup;->mEndAnimor:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lsmartisan/widget/CircleProgressPopup;->cancelCircleAnim()V

    .line 3
    invoke-direct {p0}, Lsmartisan/widget/CircleProgressPopup;->reset()V

    .line 4
    invoke-direct {p0}, Lsmartisan/widget/CircleProgressPopup;->playEndAnim()V

    :cond_0
    return-void
.end method

.method public setCircleAnimDuration(I)V
    .locals 0

    .line 1
    iput p1, p0, Lsmartisan/widget/CircleProgressPopup;->mCircleAnimatorDuration:I

    return-void
.end method

.method public setCircleProgressListener(Lsmartisan/widget/CircleProgressPopup$CircleProgressListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsmartisan/widget/CircleProgressPopup;->mListener:Lsmartisan/widget/CircleProgressPopup$CircleProgressListener;

    return-void
.end method

.method public show(Landroid/view/View;IIZ)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lsmartisan/widget/CircleProgressPopup;->dismissImmediate()V

    :cond_0
    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 3
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v2, 0x0

    .line 4
    aget v3, v1, v2

    add-int/2addr v3, p2

    iget-object p2, p0, Lsmartisan/widget/CircleProgressPopup;->mCircleProgressView:Lsmartisan/widget/CircleProgressView;

    invoke-virtual {p2}, Lsmartisan/widget/CircleProgressView;->getCircleWidth()I

    move-result p2

    div-int/2addr p2, v0

    sub-int/2addr v3, p2

    const/4 p2, 0x1

    .line 5
    aget p2, v1, p2

    add-int/2addr p2, p3

    iget-object p3, p0, Lsmartisan/widget/CircleProgressPopup;->mCircleProgressView:Lsmartisan/widget/CircleProgressView;

    invoke-virtual {p3}, Lsmartisan/widget/CircleProgressView;->getCircleHeight()I

    move-result p3

    div-int/2addr p3, v0

    sub-int/2addr p2, p3

    .line 6
    iget-object p3, p0, Lsmartisan/widget/CircleProgressPopup;->mCircleProgressView:Lsmartisan/widget/CircleProgressView;

    invoke-virtual {p3}, Lsmartisan/widget/CircleProgressView;->reset()V

    .line 7
    invoke-virtual {p0, p1, v2, v3, p2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 8
    invoke-direct {p0, p4}, Lsmartisan/widget/CircleProgressPopup;->playStartAnim(Z)V

    return-void
.end method
