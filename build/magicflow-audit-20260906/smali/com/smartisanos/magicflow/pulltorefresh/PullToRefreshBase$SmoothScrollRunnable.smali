.class final Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;
.super Ljava/lang/Object;
.source "PullToRefreshBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SmoothScrollRunnable"
.end annotation


# instance fields
.field private mContinueRunning:Z

.field private mCurrentY:I

.field private final mDuration:J

.field private final mInterpolator:Landroid/view/animation/Interpolator;

.field private mListener:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$OnSmoothScrollFinishedListener;

.field private final mScrollFromY:I

.field private final mScrollToY:I

.field private mStartTime:J

.field final synthetic this$0:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;


# direct methods
.method public constructor <init>(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;IIJLcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$OnSmoothScrollFinishedListener;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;->this$0:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;->mContinueRunning:Z

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;->mStartTime:J

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;->mCurrentY:I

    .line 5
    iput p2, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;->mScrollFromY:I

    .line 6
    iput p3, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;->mScrollToY:I

    .line 7
    invoke-static {p1}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->access$200(Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;)Landroid/view/animation/Interpolator;

    move-result-object p1

    iput-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 8
    iput-wide p4, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;->mDuration:J

    .line 9
    iput-object p6, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;->mListener:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$OnSmoothScrollFinishedListener;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-wide v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;->mStartTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;->mStartTime:J

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;->mStartTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    iget-wide v4, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;->mDuration:J

    div-long/2addr v0, v4

    .line 4
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 5
    iget v2, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;->mScrollFromY:I

    iget v3, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;->mScrollToY:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;->mInterpolator:Landroid/view/animation/Interpolator;

    long-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    .line 6
    invoke-interface {v3, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    mul-float/2addr v2, v0

    .line 7
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 8
    iget v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;->mScrollFromY:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;->mCurrentY:I

    .line 9
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;->this$0:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;

    iget v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;->mCurrentY:I

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;->setHeaderScroll(I)V

    .line 10
    :goto_0
    iget-boolean v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;->mContinueRunning:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;->mScrollToY:I

    iget v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;->mCurrentY:I

    if-eq v0, v1, :cond_1

    .line 11
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;->this$0:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;

    invoke-static {v0, p0}, Lcom/smartisanos/magicflow/pulltorefresh/internal/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_1

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;->mListener:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$OnSmoothScrollFinishedListener;

    if-eqz v0, :cond_2

    .line 13
    invoke-interface {v0}, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$OnSmoothScrollFinishedListener;->onSmoothScrollFinished()V

    :cond_2
    :goto_1
    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;->mContinueRunning:Z

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase$SmoothScrollRunnable;->this$0:Lcom/smartisanos/magicflow/pulltorefresh/PullToRefreshBase;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method
