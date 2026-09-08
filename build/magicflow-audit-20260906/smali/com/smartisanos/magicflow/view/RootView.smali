.class public Lcom/smartisanos/magicflow/view/RootView;
.super Landroid/widget/FrameLayout;
.source "RootView.java"


# instance fields
.field private animTimestamp:J

.field private log:Lcom/smartisanos/magicflow/LOG;

.field private mBackgroundView:Lcom/smartisanos/magicflow/view/BackgroundView;

.field private final mCanMoveAngle:F

.field private final mCloseWindowAnimTime:I

.field private final mCloseWindowEndTranXOffset:I

.field private mContentView:Lcom/smartisanos/magicflow/view/ContentView;

.field private mDetailsContentView:Lcom/smartisanos/magicflow/view/DetailsContentView;

.field private mDownX:F

.field private mDownY:F

.field private mFirstPointer:[F

.field private final mMaxVelocity:I

.field private final mMoveOffset:I

.field private final mOpenWindowAnimTime:I

.field private mPreTouchLoc:[F

.field private mScrollAnim:Landroid/animation/ValueAnimator;

.field private final mScrollAnimTimeOffset:I

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/smartisanos/magicflow/view/RootView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/smartisanos/magicflow/view/RootView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/smartisanos/magicflow/view/RootView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 5
    const-class p1, Lcom/smartisanos/magicflow/view/RootView;

    invoke-static {p1}, Lcom/smartisanos/magicflow/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/magicflow/LOG;

    move-result-object p1

    iput-object p1, p0, Lcom/smartisanos/magicflow/view/RootView;->log:Lcom/smartisanos/magicflow/LOG;

    const/4 p1, 0x2

    .line 6
    iput p1, p0, Lcom/smartisanos/magicflow/view/RootView;->mMoveOffset:I

    const/high16 p1, 0x3f000000    # 0.5f

    .line 7
    iput p1, p0, Lcom/smartisanos/magicflow/view/RootView;->mCanMoveAngle:F

    const/16 p1, 0x12c

    .line 8
    iput p1, p0, Lcom/smartisanos/magicflow/view/RootView;->mOpenWindowAnimTime:I

    const/16 p1, 0x3e8

    .line 9
    iput p1, p0, Lcom/smartisanos/magicflow/view/RootView;->mMaxVelocity:I

    const/16 p1, 0xc8

    .line 10
    iput p1, p0, Lcom/smartisanos/magicflow/view/RootView;->mCloseWindowAnimTime:I

    const/4 p1, 0x5

    .line 11
    iput p1, p0, Lcom/smartisanos/magicflow/view/RootView;->mScrollAnimTimeOffset:I

    const/16 p1, 0xa

    .line 12
    iput p1, p0, Lcom/smartisanos/magicflow/view/RootView;->mCloseWindowEndTranXOffset:I

    const/4 p1, 0x0

    .line 13
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/RootView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 14
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/RootView;->mPreTouchLoc:[F

    const-wide/16 p1, 0x0

    .line 15
    iput-wide p1, p0, Lcom/smartisanos/magicflow/view/RootView;->animTimestamp:J

    return-void
.end method

.method static synthetic access$000(Lcom/smartisanos/magicflow/view/RootView;)Lcom/smartisanos/magicflow/view/ContentView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/magicflow/view/RootView;->mContentView:Lcom/smartisanos/magicflow/view/ContentView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/smartisanos/magicflow/view/RootView;)Lcom/smartisanos/magicflow/view/BackgroundView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/magicflow/view/RootView;->mBackgroundView:Lcom/smartisanos/magicflow/view/BackgroundView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/smartisanos/magicflow/view/RootView;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/magicflow/view/RootView;->mScrollAnim:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$202(Lcom/smartisanos/magicflow/view/RootView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/RootView;->mScrollAnim:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$300(Lcom/smartisanos/magicflow/view/RootView;)Lcom/smartisanos/magicflow/LOG;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/magicflow/view/RootView;->log:Lcom/smartisanos/magicflow/LOG;

    return-object p0
.end method

.method static synthetic access$400(Lcom/smartisanos/magicflow/view/RootView;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/smartisanos/magicflow/view/RootView;->onHorizontalScrollAnimEnd(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/smartisanos/magicflow/view/RootView;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/smartisanos/magicflow/view/RootView;->updateViewStatus(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/smartisanos/magicflow/view/RootView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/RootView;->startScrollContentView()V

    return-void
.end method

.method private cleanCachedTouchData()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/smartisanos/magicflow/view/RootView;->mDownY:F

    .line 2
    iput v0, p0, Lcom/smartisanos/magicflow/view/RootView;->mDownX:F

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/smartisanos/magicflow/view/RootView;->mFirstPointer:[F

    .line 4
    iput-object v0, p0, Lcom/smartisanos/magicflow/view/RootView;->mPreTouchLoc:[F

    .line 5
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/view/RootView;->recycleVelocityTracker()V

    .line 6
    invoke-static {}, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutCardViewPager;->cleanCachedTouchData()V

    return-void
.end method

.method private getTargetLoc(Landroid/view/MotionEvent;)I
    .locals 5

    .line 1
    sget v0, Lcom/smartisanos/magicflow/h/d;->L:I

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/RootView;->mVelocityTracker:Landroid/view/VelocityTracker;

    sget v1, Lcom/smartisanos/magicflow/h/d;->J:I

    int-to-float v1, v1

    const/16 v2, 0x3e8

    invoke-virtual {v0, v2, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/RootView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    const/high16 v1, 0x44610000    # 900.0f

    cmpl-float v1, v0, v1

    const-string v2, "handled by TOUCH_VELOCITY"

    if-lez v1, :cond_0

    .line 4
    sget v1, Lcom/smartisanos/magicflow/h/d;->L:I

    .line 5
    sget-boolean v3, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-eqz v3, :cond_5

    .line 6
    iget-object v3, p0, Lcom/smartisanos/magicflow/view/RootView;->log:Lcom/smartisanos/magicflow/LOG;

    invoke-virtual {v3, v2}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const/high16 v1, -0x3b9f0000    # -900.0f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_1

    .line 7
    sget v1, Lcom/smartisanos/magicflow/h/d;->K:I

    .line 8
    sget-boolean v3, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-eqz v3, :cond_5

    .line 9
    iget-object v3, p0, Lcom/smartisanos/magicflow/view/RootView;->log:Lcom/smartisanos/magicflow/LOG;

    invoke-virtual {v3, v2}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    goto :goto_1

    .line 10
    :cond_1
    sget v1, Lcom/smartisanos/magicflow/h/d;->K:I

    .line 11
    iget-object v2, p0, Lcom/smartisanos/magicflow/view/RootView;->mContentView:Lcom/smartisanos/magicflow/view/ContentView;

    if-eqz v2, :cond_2

    .line 12
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result v1

    float-to-int v1, v1

    .line 13
    :cond_2
    sget v2, Lcom/smartisanos/magicflow/h/d;->H:I

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    sub-int/2addr v2, v1

    sget v1, Lcom/smartisanos/magicflow/h/d;->H:I

    const/high16 v3, 0x1000000

    .line 14
    invoke-static {v3}, Lcom/smartisanos/magicflow/o/g;->a(I)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x3

    goto :goto_0

    :cond_3
    const/4 v3, 0x2

    :goto_0
    div-int/2addr v1, v3

    if-le v2, v1, :cond_4

    .line 15
    sget v1, Lcom/smartisanos/magicflow/h/d;->L:I

    goto :goto_1

    .line 16
    :cond_4
    sget v1, Lcom/smartisanos/magicflow/h/d;->K:I

    .line 17
    :cond_5
    :goto_1
    sget-boolean v2, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-eqz v2, :cond_6

    .line 18
    iget-object v2, p0, Lcom/smartisanos/magicflow/view/RootView;->log:Lcom/smartisanos/magicflow/LOG;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getTargetLoc, xy ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, "], vX = "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    :cond_6
    return v1
.end method

.method private handleTouchEvent(Landroid/view/MotionEvent;)I
    .locals 13

    const/16 v0, 0x10

    .line 1
    invoke-static {v0}, Lcom/smartisanos/magicflow/o/g;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/RootView;->log:Lcom/smartisanos/magicflow/LOG;

    const-string v0, "handleTouchEvent return by FLAG_PROCESSING_TOUCH_UP true"

    invoke-virtual {p1, v0}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    const/4 p1, -0x1

    return p1

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-le v3, v5, :cond_1

    .line 6
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    .line 7
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    .line 8
    :cond_1
    iget-object v3, p0, Lcom/smartisanos/magicflow/view/RootView;->mFirstPointer:[F

    const/4 v6, 0x2

    const/4 v7, 0x3

    if-nez v3, :cond_5

    .line 9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    if-eq v3, v5, :cond_4

    .line 10
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    if-ne v3, v7, :cond_2

    goto :goto_0

    :cond_2
    new-array v3, v6, [F

    .line 11
    iput-object v3, p0, Lcom/smartisanos/magicflow/view/RootView;->mFirstPointer:[F

    .line 12
    iget-object v3, p0, Lcom/smartisanos/magicflow/view/RootView;->mFirstPointer:[F

    iget v8, p0, Lcom/smartisanos/magicflow/view/RootView;->mDownX:F

    aput v8, v3, v4

    .line 13
    iget v9, p0, Lcom/smartisanos/magicflow/view/RootView;->mDownY:F

    aput v9, v3, v5

    new-array v3, v6, [F

    .line 14
    iput-object v3, p0, Lcom/smartisanos/magicflow/view/RootView;->mPreTouchLoc:[F

    .line 15
    iget-object v3, p0, Lcom/smartisanos/magicflow/view/RootView;->mPreTouchLoc:[F

    aput v8, v3, v4

    .line 16
    aput v9, v3, v5

    .line 17
    sget-boolean v3, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-eqz v3, :cond_3

    .line 18
    iget-object v3, p0, Lcom/smartisanos/magicflow/view/RootView;->log:Lcom/smartisanos/magicflow/LOG;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mFirstPointer ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v9, "] action="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    :cond_3
    move v3, v5

    goto :goto_1

    :cond_4
    :goto_0
    return v7

    :cond_5
    move v3, v4

    .line 19
    :goto_1
    iget-object v8, p0, Lcom/smartisanos/magicflow/view/RootView;->mPreTouchLoc:[F

    aget v9, v8, v4

    sub-float v9, v1, v9

    .line 20
    aget v10, v8, v5

    sub-float v10, v2, v10

    .line 21
    aput v1, v8, v4

    .line 22
    aput v2, v8, v5

    .line 23
    iget-object v2, p0, Lcom/smartisanos/magicflow/view/RootView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v2, :cond_6

    .line 24
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Lcom/smartisanos/magicflow/view/RootView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 25
    :cond_6
    iget-object v2, p0, Lcom/smartisanos/magicflow/view/RootView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 26
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/4 v8, 0x6

    if-ne v2, v8, :cond_8

    .line 27
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v8

    if-nez v8, :cond_8

    .line 28
    sget-boolean v2, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-eqz v2, :cond_7

    .line 29
    iget-object v2, p0, Lcom/smartisanos/magicflow/view/RootView;->log:Lcom/smartisanos/magicflow/LOG;

    const-string v8, "first finger up !"

    invoke-virtual {v2, v8}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    :cond_7
    move v2, v5

    :cond_8
    const/16 v8, 0x800

    if-nez v3, :cond_b

    if-eq v2, v5, :cond_9

    if-eq v2, v7, :cond_9

    goto :goto_2

    .line 30
    :cond_9
    iget-object v11, p0, Lcom/smartisanos/magicflow/view/RootView;->mFirstPointer:[F

    aget v11, v11, v4

    cmpl-float v1, v11, v1

    if-nez v1, :cond_a

    move v1, v4

    goto :goto_3

    :cond_a
    :goto_2
    move v1, v5

    :goto_3
    if-eqz v1, :cond_b

    .line 31
    invoke-static {v8}, Lcom/smartisanos/magicflow/o/g;->a(I)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 32
    invoke-static {v8, v4}, Lcom/smartisanos/magicflow/o/g;->a(IZ)V

    move v1, v5

    goto :goto_4

    :cond_b
    move v1, v4

    :goto_4
    const/16 v11, 0x8

    .line 33
    invoke-static {v11}, Lcom/smartisanos/magicflow/o/g;->a(I)Z

    move-result v12

    if-eqz v12, :cond_c

    move v1, v5

    :cond_c
    if-nez v3, :cond_f

    if-eqz v1, :cond_f

    .line 34
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/RootView;->mScrollAnim:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_f

    .line 35
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-eq v1, v5, :cond_d

    .line 36
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-ne v1, v7, :cond_e

    :cond_d
    const/4 v1, 0x0

    cmpl-float v3, v9, v1

    if-nez v3, :cond_e

    cmpl-float v1, v10, v1

    if-nez v1, :cond_e

    return v7

    .line 37
    :cond_e
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/RootView;->mScrollAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->pause()V

    .line 38
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/RootView;->mScrollAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 39
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/RootView;->mScrollAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    const/4 v1, 0x0

    .line 40
    iput-object v1, p0, Lcom/smartisanos/magicflow/view/RootView;->mScrollAnim:Landroid/animation/ValueAnimator;

    .line 41
    invoke-static {v11, v4}, Lcom/smartisanos/magicflow/o/g;->a(IZ)V

    .line 42
    invoke-static {v8, v4}, Lcom/smartisanos/magicflow/o/g;->a(IZ)V

    .line 43
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/RootView;->log:Lcom/smartisanos/magicflow/LOG;

    const-string v3, "cancel running anim by touch"

    invoke-virtual {v1, v3}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    :cond_f
    if-eq v2, v5, :cond_11

    if-eq v2, v6, :cond_10

    if-eq v2, v7, :cond_11

    goto/16 :goto_5

    .line 44
    :cond_10
    invoke-direct {p0, v9}, Lcom/smartisanos/magicflow/view/RootView;->updateLocation(F)V

    goto/16 :goto_5

    :cond_11
    const/16 v1, 0x2000

    .line 45
    invoke-static {v1}, Lcom/smartisanos/magicflow/o/g;->a(I)Z

    move-result v1

    const-string v3, "action ["

    if-nez v1, :cond_12

    .line 46
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/RootView;->log:Lcom/smartisanos/magicflow/LOG;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] break by FLAG_ROOT_VIEW_READY false"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    goto :goto_5

    .line 47
    :cond_12
    invoke-static {v8}, Lcom/smartisanos/magicflow/o/g;->a(I)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 48
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/RootView;->log:Lcom/smartisanos/magicflow/LOG;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] break by FLAG_REQUEST_SHOW_ANIM_RUNNING true"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    goto :goto_5

    .line 49
    :cond_13
    invoke-static {v0}, Lcom/smartisanos/magicflow/o/g;->a(I)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 50
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/RootView;->log:Lcom/smartisanos/magicflow/LOG;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] break by FLAG_PROCESSING_TOUCH_UP true"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    goto :goto_5

    .line 51
    :cond_14
    sget-boolean v1, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-eqz v1, :cond_15

    .line 52
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/RootView;->log:Lcom/smartisanos/magicflow/LOG;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FLAG_PROCESSING_TOUCH_UP set true, handleTouchEvent, action ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    .line 53
    :cond_15
    invoke-static {v0, v5}, Lcom/smartisanos/magicflow/o/g;->a(IZ)V

    .line 54
    invoke-direct {p0, p1}, Lcom/smartisanos/magicflow/view/RootView;->getTargetLoc(Landroid/view/MotionEvent;)I

    move-result p1

    .line 55
    sget-boolean v0, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-eqz v0, :cond_16

    .line 56
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/RootView;->log:Lcom/smartisanos/magicflow/LOG;

    const-string v1, "horizontalScrollAnim at handleTouchEvent"

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    .line 57
    :cond_16
    invoke-direct {p0, p1}, Lcom/smartisanos/magicflow/view/RootView;->horizontalScrollAnim(I)V

    :goto_5
    return v2
.end method

.method private hideFloatSearchMask(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/RootView;->mContentView:Lcom/smartisanos/magicflow/view/ContentView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/smartisanos/magicflow/view/ContentView;->hideFloatSearchMask(F)V

    :cond_0
    return-void
.end method

.method private horizontalScrollAnim(I)V
    .locals 1

    const/16 v0, 0xc8

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/smartisanos/magicflow/view/RootView;->horizontalScrollAnim(II)V

    return-void
.end method

.method private horizontalScrollAnim(II)V
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/RootView;->mScrollAnim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->pause()V

    .line 4
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/RootView;->mScrollAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 5
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/RootView;->mScrollAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/smartisanos/magicflow/view/RootView;->mScrollAnim:Landroid/animation/ValueAnimator;

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/RootView;->mContentView:Lcom/smartisanos/magicflow/view/ContentView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result v0

    float-to-int v0, v0

    sub-int v1, v0, p1

    .line 8
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    sget v3, Lcom/smartisanos/magicflow/h/d;->H:I

    div-int/lit8 v3, v3, 0x5

    if-ge v2, v3, :cond_1

    .line 9
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result p2

    .line 10
    :cond_1
    sget-boolean v1, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-eqz v1, :cond_2

    .line 11
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/RootView;->log:Lcom/smartisanos/magicflow/LOG;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "horizontalScrollAnim from ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "], to ["

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "], time ["

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    :cond_2
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    .line 12
    iget-object v2, p0, Lcom/smartisanos/magicflow/view/RootView;->mContentView:Lcom/smartisanos/magicflow/view/ContentView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result v2

    aput v2, v0, v1

    int-to-float v1, p1

    const/4 v2, 0x1

    aput v1, v0, v2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    int-to-long v3, p2

    .line 13
    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 14
    new-instance p2, Lcom/smartisanos/magicflow/g/o;

    const/16 v1, 0x8

    invoke-direct {p2, v1}, Lcom/smartisanos/magicflow/g/o;-><init>(I)V

    invoke-virtual {v0, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 15
    new-instance p2, Lcom/smartisanos/magicflow/view/RootView$2;

    invoke-direct {p2, p0, p1}, Lcom/smartisanos/magicflow/view/RootView$2;-><init>(Lcom/smartisanos/magicflow/view/RootView;I)V

    invoke-virtual {v0, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 16
    new-instance p2, Lcom/smartisanos/magicflow/view/RootView$3;

    invoke-direct {p2, p0, p1}, Lcom/smartisanos/magicflow/view/RootView$3;-><init>(Lcom/smartisanos/magicflow/view/RootView;I)V

    invoke-virtual {v0, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 p1, 0x0

    .line 17
    iput-wide p1, p0, Lcom/smartisanos/magicflow/view/RootView;->animTimestamp:J

    .line 18
    iput-object v0, p0, Lcom/smartisanos/magicflow/view/RootView;->mScrollAnim:Landroid/animation/ValueAnimator;

    .line 19
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/RootView;->mScrollAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 20
    invoke-static {v1, v2}, Lcom/smartisanos/magicflow/o/g;->a(IZ)V

    return-void
.end method

.method private onHorizontalScrollAnimEnd(I)V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/RootView;->log:Lcom/smartisanos/magicflow/LOG;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onHorizontalScrollAnimEnd, to target x ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    .line 3
    :cond_0
    new-instance v0, Lcom/smartisanos/magicflow/view/RootView$4;

    invoke-direct {v0, p0, p1}, Lcom/smartisanos/magicflow/view/RootView$4;-><init>(Lcom/smartisanos/magicflow/view/RootView;I)V

    invoke-static {v0}, Lcom/smartisanos/magicflow/o/m;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method private setNavigationBarAlpha(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/RootView;->mContentView:Lcom/smartisanos/magicflow/view/ContentView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/smartisanos/magicflow/view/ContentView;->setNavigationBarAlpha(F)V

    :cond_0
    return-void
.end method

.method private startScrollContentView()V
    .locals 2

    const/16 v0, 0x800

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, v1}, Lcom/smartisanos/magicflow/o/g;->a(IZ)V

    .line 2
    sget v0, Lcom/smartisanos/magicflow/h/d;->L:I

    const/16 v1, 0x12c

    invoke-direct {p0, v0, v1}, Lcom/smartisanos/magicflow/view/RootView;->horizontalScrollAnim(II)V

    return-void
.end method

.method private updateLocation(F)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/RootView;->mContentView:Lcom/smartisanos/magicflow/view/ContentView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result v0

    .line 2
    sget-boolean v1, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/RootView;->log:Lcom/smartisanos/magicflow/LOG;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateLocation deltaX ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, "], locX from ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-float v3, v0, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    :cond_0
    add-float/2addr v0, p1

    .line 4
    sget v1, Lcom/smartisanos/magicflow/h/d;->K:I

    int-to-float v1, v1

    cmpg-float v1, v1, v0

    if-gtz v1, :cond_1

    sget v1, Lcom/smartisanos/magicflow/h/d;->L:I

    int-to-float v1, v1

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_1

    .line 5
    invoke-direct {p0, v0}, Lcom/smartisanos/magicflow/view/RootView;->setNavigationBarAlpha(F)V

    .line 6
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-direct {p0, p1}, Lcom/smartisanos/magicflow/view/RootView;->hideFloatSearchMask(F)V

    .line 7
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/RootView;->mContentView:Lcom/smartisanos/magicflow/view/ContentView;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 8
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/RootView;->mBackgroundView:Lcom/smartisanos/magicflow/view/BackgroundView;

    invoke-virtual {p1, v0}, Lcom/smartisanos/magicflow/view/BackgroundView;->updateShadowBackground(F)V

    goto :goto_0

    .line 9
    :cond_1
    sget-boolean v1, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-eqz v1, :cond_2

    .line 10
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/RootView;->log:Lcom/smartisanos/magicflow/LOG;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "out of range ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/smartisanos/magicflow/h/d;->K:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/smartisanos/magicflow/h/d;->L:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "], locX = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", deltaX "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private updateViewStatus(I)V
    .locals 7

    const/16 v0, 0x8

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lcom/smartisanos/magicflow/o/g;->a(IZ)V

    const/16 v2, 0x800

    .line 2
    invoke-static {v2, v1}, Lcom/smartisanos/magicflow/o/g;->a(IZ)V

    .line 3
    iget-object v2, p0, Lcom/smartisanos/magicflow/view/RootView;->mContentView:Lcom/smartisanos/magicflow/view/ContentView;

    int-to-float v3, p1

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    const/4 v2, 0x1

    if-nez p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    const/4 v4, 0x4

    .line 4
    invoke-static {v4}, Lcom/smartisanos/magicflow/o/g;->a(I)Z

    move-result v5

    if-ne v3, v5, :cond_1

    .line 5
    iget-object v2, p0, Lcom/smartisanos/magicflow/view/RootView;->log:Lcom/smartisanos/magicflow/LOG;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FLAG_WINDOW_SHOWING is same with show status ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, "], abandon set flag and update visible status"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move v1, v2

    .line 6
    :goto_1
    sget-boolean v2, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-eqz v2, :cond_2

    .line 7
    iget-object v2, p0, Lcom/smartisanos/magicflow/view/RootView;->log:Lcom/smartisanos/magicflow/LOG;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateViewStatus changed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    .line 8
    :cond_2
    invoke-static {v4, v3}, Lcom/smartisanos/magicflow/o/g;->a(IZ)V

    .line 9
    sget v2, Lcom/smartisanos/magicflow/h/d;->K:I

    if-ne p1, v2, :cond_3

    .line 10
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 11
    :cond_3
    invoke-static {v1}, Lcom/smartisanos/magicflow/b;->d(Z)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/RootView;->log:Lcom/smartisanos/magicflow/LOG;

    const-string v1, "destroy !!!"

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    :cond_0
    const/16 v0, 0x8

    .line 3
    invoke-static {v0}, Lcom/smartisanos/magicflow/o/g;->a(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/RootView;->mScrollAnim:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 6
    :cond_1
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/RootView;->mContentView:Lcom/smartisanos/magicflow/view/ContentView;

    invoke-virtual {v1}, Lcom/smartisanos/magicflow/view/ContentView;->floatSearchLayoutReset()V

    .line 7
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/RootView;->mContentView:Lcom/smartisanos/magicflow/view/ContentView;

    sget v2, Lcom/smartisanos/magicflow/h/d;->K:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 8
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 9
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/RootView;->mBackgroundView:Lcom/smartisanos/magicflow/view/BackgroundView;

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/BackgroundView;->clean()V

    .line 10
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/RootView;->cleanCachedTouchData()V

    .line 11
    invoke-static {}, Lcom/smartisanos/magicflow/o/n;->b()V

    .line 12
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/smartisanos/magicflow/o/n;->b(Landroid/content/Context;)V

    .line 13
    sget v0, Lcom/smartisanos/magicflow/h/d;->T:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 14
    invoke-static {}, Lcom/smartisanos/magicflow/h/c;->g()Lcom/smartisanos/magicflow/h/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/h/c;->b()V

    .line 15
    invoke-static {}, Lcom/smartisanos/magicflow/c;->h()Lcom/smartisanos/magicflow/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/c;->a()V

    :cond_2
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    .line 3
    invoke-static {}, Lcom/smartisanos/magicflow/b;->o()V

    .line 4
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public floatSearchLayoutReset()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/RootView;->mContentView:Lcom/smartisanos/magicflow/view/ContentView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/ContentView;->floatSearchLayoutReset()V

    :cond_0
    return-void
.end method

.method public forceHide()V
    .locals 2

    const/4 v0, 0x4

    .line 1
    invoke-static {v0}, Lcom/smartisanos/magicflow/o/g;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result v0

    sget v1, Lcom/smartisanos/magicflow/h/d;->K:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 3
    :cond_0
    sget v0, Lcom/smartisanos/magicflow/h/d;->K:I

    invoke-direct {p0, v0}, Lcom/smartisanos/magicflow/view/RootView;->updateViewStatus(I)V

    :cond_1
    return-void
.end method

.method public getDetailsContentView()Lcom/smartisanos/magicflow/view/DetailsContentView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/RootView;->mDetailsContentView:Lcom/smartisanos/magicflow/view/DetailsContentView;

    return-object v0
.end method

.method public hideWithAnim()V
    .locals 1

    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, v0}, Lcom/smartisanos/magicflow/view/RootView;->hideWithAnim(Z)V

    return-void
.end method

.method public hideWithAnim(Z)V
    .locals 1

    const/high16 v0, 0x400000

    .line 1
    invoke-static {v0, p1}, Lcom/smartisanos/magicflow/o/g;->a(IZ)V

    const/4 p1, 0x4

    .line 2
    invoke-static {p1}, Lcom/smartisanos/magicflow/o/g;->a(I)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x10

    const/4 v0, 0x1

    .line 3
    invoke-static {p1, v0}, Lcom/smartisanos/magicflow/o/g;->a(IZ)V

    .line 4
    sget-boolean p1, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/RootView;->log:Lcom/smartisanos/magicflow/LOG;

    const-string v0, "horizontalScrollAnim at hideWithAnim"

    invoke-virtual {p1, v0}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    .line 6
    :cond_0
    sget p1, Lcom/smartisanos/magicflow/h/d;->K:I

    invoke-direct {p0, p1}, Lcom/smartisanos/magicflow/view/RootView;->horizontalScrollAnim(I)V

    .line 7
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/RootView;->cleanCachedTouchData()V

    :cond_1
    return-void
.end method

.method public onBackKeyEvent()V
    .locals 3

    const/4 v0, 0x4

    .line 1
    invoke-static {v0}, Lcom/smartisanos/magicflow/o/g;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x10

    const/4 v1, 0x1

    .line 2
    invoke-static {v0, v1}, Lcom/smartisanos/magicflow/o/g;->a(IZ)V

    .line 3
    sget-boolean v0, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/RootView;->log:Lcom/smartisanos/magicflow/LOG;

    const-string v2, "horizontalScrollAnim at onBackKeyEvent"

    invoke-virtual {v0, v2}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    :cond_0
    const/high16 v0, 0x20000

    .line 5
    invoke-static {v0, v1}, Lcom/smartisanos/magicflow/o/g;->a(IZ)V

    .line 6
    sget v0, Lcom/smartisanos/magicflow/h/d;->K:I

    invoke-direct {p0, v0}, Lcom/smartisanos/magicflow/view/RootView;->horizontalScrollAnim(I)V

    .line 7
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/RootView;->cleanCachedTouchData()V

    :cond_1
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-le v0, v1, :cond_0

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/view/RootView;->forceHide()V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/smartisanos/magicflow/view/RootView;->mTouchSlop:I

    .line 4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f0b0021

    invoke-static {v0, v2, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/magicflow/view/BackgroundView;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/RootView;->mBackgroundView:Lcom/smartisanos/magicflow/view/BackgroundView;

    .line 5
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/RootView;->mBackgroundView:Lcom/smartisanos/magicflow/view/BackgroundView;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 6
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f0b0038

    invoke-static {v0, v2, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/smartisanos/magicflow/view/ContentView;

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/RootView;->mContentView:Lcom/smartisanos/magicflow/view/ContentView;

    .line 7
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/RootView;->mContentView:Lcom/smartisanos/magicflow/view/ContentView;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 8
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/RootView;->mContentView:Lcom/smartisanos/magicflow/view/ContentView;

    sget v1, Lcom/smartisanos/magicflow/h/d;->K:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 9
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/smartisanos/magicflow/view/RootView$1;

    invoke-direct {v1, p0}, Lcom/smartisanos/magicflow/view/RootView$1;-><init>(Lcom/smartisanos/magicflow/view/RootView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public onHomeKeyEvent()V
    .locals 3

    const/4 v0, 0x4

    .line 1
    invoke-static {v0}, Lcom/smartisanos/magicflow/o/g;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/high16 v0, 0x20000

    .line 2
    invoke-static {v0}, Lcom/smartisanos/magicflow/o/g;->a(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3
    sget-boolean v0, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/RootView;->log:Lcom/smartisanos/magicflow/LOG;

    const-string v1, "onHomeKeyEvent return by HARD_KEY is click"

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    :cond_1
    return-void

    .line 5
    :cond_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-static {v1}, Lcom/smartisanos/magicflow/a;->a(Landroid/content/res/Configuration;)Z

    move-result v1

    const/4 v2, 0x1

    .line 6
    invoke-static {v0, v2}, Lcom/smartisanos/magicflow/o/g;->a(IZ)V

    const/16 v0, 0x40

    .line 7
    invoke-static {v0}, Lcom/smartisanos/magicflow/o/g;->a(I)Z

    move-result v0

    if-eqz v0, :cond_4

    if-nez v1, :cond_4

    .line 8
    sget-boolean v0, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-eqz v0, :cond_3

    .line 9
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/RootView;->log:Lcom/smartisanos/magicflow/LOG;

    const-string v1, "force hide by onHomeKeyEvent"

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    .line 10
    :cond_3
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/view/RootView;->forceHide()V

    return-void

    .line 11
    :cond_4
    sget-boolean v0, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-eqz v0, :cond_5

    .line 12
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/RootView;->log:Lcom/smartisanos/magicflow/LOG;

    const-string v1, "horizontalScrollAnim at onHomeKeyEvent"

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    :cond_5
    const/16 v0, 0x10

    .line 13
    invoke-static {v0, v2}, Lcom/smartisanos/magicflow/o/g;->a(IZ)V

    .line 14
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/view/RootView;->recycleVelocityTracker()V

    .line 15
    sget v0, Lcom/smartisanos/magicflow/h/d;->K:I

    invoke-direct {p0, v0}, Lcom/smartisanos/magicflow/view/RootView;->horizontalScrollAnim(I)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v1, 0x4

    .line 2
    invoke-static {v1}, Lcom/smartisanos/magicflow/o/g;->a(I)Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    const/high16 v1, 0x20000

    .line 3
    invoke-static {v1}, Lcom/smartisanos/magicflow/o/g;->a(I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/RootView;->log:Lcom/smartisanos/magicflow/LOG;

    const-string v0, "onInterceptTouchEvent return by FLAG_HARD_KEY_CLICK"

    invoke-virtual {p1, v0}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    return v2

    .line 5
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    .line 6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    .line 7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    .line 8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    const/4 v6, 0x0

    if-le v5, v2, :cond_2

    .line 9
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    .line 10
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    :cond_2
    if-eqz v1, :cond_7

    const/4 v5, 0x2

    if-eq v1, v5, :cond_3

    const/4 v2, 0x5

    if-eq v1, v2, :cond_7

    goto :goto_0

    .line 11
    :cond_3
    iget v1, p0, Lcom/smartisanos/magicflow/view/RootView;->mDownX:F

    sub-float/2addr v3, v1

    .line 12
    iget v1, p0, Lcom/smartisanos/magicflow/view/RootView;->mDownY:F

    sub-float/2addr v4, v1

    const/4 v1, 0x0

    cmpl-float v7, v3, v1

    if-nez v7, :cond_4

    cmpl-float v1, v4, v1

    if-nez v1, :cond_4

    goto :goto_0

    .line 13
    :cond_4
    invoke-static {}, Lcom/smartisanos/magicflow/view/card/shortcut/ShortcutCardViewPager;->isNeedInterceptTouch()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 14
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/RootView;->log:Lcom/smartisanos/magicflow/LOG;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onInterceptTouchEvent ShortcutCardViewPager intercept, result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 15
    :cond_5
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/smartisanos/magicflow/view/RootView;->mTouchSlop:I

    div-int/2addr v1, v5

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_6

    .line 16
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_6

    move v0, v2

    goto :goto_0

    :cond_6
    move v0, v6

    goto :goto_0

    .line 17
    :cond_7
    iput v3, p0, Lcom/smartisanos/magicflow/view/RootView;->mDownX:F

    .line 18
    iput v4, p0, Lcom/smartisanos/magicflow/view/RootView;->mDownY:F

    .line 19
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/RootView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v1, :cond_8

    .line 20
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, p0, Lcom/smartisanos/magicflow/view/RootView;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_0

    .line 21
    :cond_8
    invoke-virtual {v1}, Landroid/view/VelocityTracker;->clear()V

    .line 22
    :goto_0
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/RootView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v1, :cond_9

    .line 23
    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_9
    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    const/16 v0, 0x1000

    .line 1
    invoke-static {v0}, Lcom/smartisanos/magicflow/o/g;->a(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    sget-boolean v0, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/RootView;->log:Lcom/smartisanos/magicflow/LOG;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTouchEvent return by FLAG_ACTIVATE OR FLAG_ACTIVATE false, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    .line 6
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/RootView;->mContentView:Lcom/smartisanos/magicflow/view/ContentView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result v0

    float-to-int v0, v0

    const/high16 v1, 0x200000

    .line 8
    invoke-static {v1}, Lcom/smartisanos/magicflow/o/g;->a(I)Z

    move-result v1

    if-nez v1, :cond_3

    sget v1, Lcom/smartisanos/magicflow/h/d;->L:I

    if-eq v0, v1, :cond_2

    sget v1, Lcom/smartisanos/magicflow/h/d;->K:I

    if-ne v0, v1, :cond_3

    .line 9
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 10
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_5

    .line 11
    invoke-direct {p0, p1}, Lcom/smartisanos/magicflow/view/RootView;->handleTouchEvent(Landroid/view/MotionEvent;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    goto :goto_0

    .line 12
    :cond_4
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/RootView;->cleanCachedTouchData()V

    .line 13
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 14
    :cond_5
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    const/high16 v0, 0x200000

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 2
    invoke-static {v0, p1}, Lcom/smartisanos/magicflow/o/g;->a(IZ)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 3
    invoke-static {v0, p1}, Lcom/smartisanos/magicflow/o/g;->a(IZ)V

    :goto_0
    return-void
.end method

.method public prepareShow()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/RootView;->log:Lcom/smartisanos/magicflow/LOG;

    const-string v1, "prepareShow !"

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/RootView;->mContentView:Lcom/smartisanos/magicflow/view/ContentView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result v0

    sget v1, Lcom/smartisanos/magicflow/h/d;->K:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 3
    sget-boolean v0, Lcom/smartisanos/magicflow/LOG;->DBG:Z

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/RootView;->log:Lcom/smartisanos/magicflow/LOG;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prepareShow warning, mContentView locX "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/smartisanos/magicflow/view/RootView;->mContentView:Lcom/smartisanos/magicflow/view/ContentView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/RootView;->mContentView:Lcom/smartisanos/magicflow/view/ContentView;

    sget v1, Lcom/smartisanos/magicflow/h/d;->K:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/RootView;->mBackgroundView:Lcom/smartisanos/magicflow/view/BackgroundView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 7
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/RootView;->mBackgroundView:Lcom/smartisanos/magicflow/view/BackgroundView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 8
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/RootView;->mBackgroundView:Lcom/smartisanos/magicflow/view/BackgroundView;

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/BackgroundView;->initBackgroundImage()V

    .line 9
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 10
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-gt v0, v1, :cond_2

    .line 11
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/RootView;->startScrollContentView()V

    goto :goto_0

    .line 12
    :cond_2
    new-instance v0, Lcom/smartisanos/magicflow/view/RootView$5;

    invoke-direct {v0, p0}, Lcom/smartisanos/magicflow/view/RootView$5;-><init>(Lcom/smartisanos/magicflow/view/RootView;)V

    invoke-static {v0}, Lcom/smartisanos/magicflow/o/m;->b(Ljava/lang/Runnable;)V

    :goto_0
    const/16 v0, 0x2000

    const/4 v1, 0x1

    .line 13
    invoke-static {v0, v1}, Lcom/smartisanos/magicflow/o/g;->a(IZ)V

    .line 14
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/RootView;->log:Lcom/smartisanos/magicflow/LOG;

    const-string v1, "prepareShow end!"

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/LOG;->error(Ljava/lang/String;)V

    return-void
.end method

.method public recycleVelocityTracker()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/RootView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/RootView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/smartisanos/magicflow/view/RootView;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method public refreshHeadViewData()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/RootView;->mContentView:Lcom/smartisanos/magicflow/view/ContentView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/ContentView;->refreshData()V

    :cond_0
    return-void
.end method

.method public reloadCards(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/RootView;->mContentView:Lcom/smartisanos/magicflow/view/ContentView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 2
    invoke-static {}, Lcom/smartisanos/magicflow/h/p;->b()Lcom/smartisanos/magicflow/h/p;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/smartisanos/magicflow/h/p;->a(Landroid/content/Context;)V

    .line 3
    :cond_1
    invoke-static {}, Lcom/smartisanos/magicflow/cache/DataCache;->reloadData()V

    const/16 p1, 0x100

    .line 4
    invoke-static {p1, v0}, Lcom/smartisanos/magicflow/o/g;->a(IZ)V

    .line 5
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/RootView;->mContentView:Lcom/smartisanos/magicflow/view/ContentView;

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/ContentView;->clean()V

    .line 6
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/RootView;->mContentView:Lcom/smartisanos/magicflow/view/ContentView;

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/ContentView;->addViews()V

    const/4 v0, 0x0

    .line 7
    invoke-static {p1, v0}, Lcom/smartisanos/magicflow/o/g;->a(IZ)V

    return-void
.end method

.method public resetWelcomeDetailsView()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/RootView;->mContentView:Lcom/smartisanos/magicflow/view/ContentView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/ContentView;->resetWelcomeDetailsView()V

    :cond_0
    return-void
.end method

.method public screenshotReady()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/RootView;->mBackgroundView:Lcom/smartisanos/magicflow/view/BackgroundView;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/RootView;->mContentView:Lcom/smartisanos/magicflow/view/ContentView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTranslationX()F

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/RootView;->mBackgroundView:Lcom/smartisanos/magicflow/view/BackgroundView;

    invoke-virtual {v1, v0}, Lcom/smartisanos/magicflow/view/BackgroundView;->updateBackgroundByScreenshot(F)V

    :cond_0
    return-void
.end method

.method public setDetailsContentView(Lcom/smartisanos/magicflow/view/DetailsContentView;I)V
    .locals 1

    if-nez p1, :cond_2

    .line 1
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/RootView;->mDetailsContentView:Lcom/smartisanos/magicflow/view/DetailsContentView;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    if-ne p1, p2, :cond_3

    :cond_1
    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/RootView;->mDetailsContentView:Lcom/smartisanos/magicflow/view/DetailsContentView;

    goto :goto_0

    .line 4
    :cond_2
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/RootView;->mDetailsContentView:Lcom/smartisanos/magicflow/view/DetailsContentView;

    :cond_3
    :goto_0
    return-void
.end method

.method public setNavigationBarMaskStatus(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/RootView;->mContentView:Lcom/smartisanos/magicflow/view/ContentView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/smartisanos/magicflow/view/ContentView;->setNavigationBarMaskStatus(Z)V

    :cond_0
    return-void
.end method

.method public showFloatSearchMask()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/RootView;->mContentView:Lcom/smartisanos/magicflow/view/ContentView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/ContentView;->showFloatSearchMask()V

    :cond_0
    return-void
.end method

.method public startScrollWelcomeDetailsView()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/RootView;->mContentView:Lcom/smartisanos/magicflow/view/ContentView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/ContentView;->startScrollWelcomeDetailsView()V

    :cond_0
    return-void
.end method

.method public updateFloatSearchBackground()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/RootView;->mContentView:Lcom/smartisanos/magicflow/view/ContentView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/smartisanos/magicflow/view/ContentView;->refreshFloatSearchBackgroundColor()V

    :cond_0
    return-void
.end method
