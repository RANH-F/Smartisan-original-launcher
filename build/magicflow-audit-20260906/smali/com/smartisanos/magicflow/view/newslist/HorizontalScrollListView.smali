.class public Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;
.super Landroid/widget/ListView;
.source "HorizontalScrollListView.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView$ScrollStateListener;,
        Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView$ScrollRunner;
    }
.end annotation


# static fields
.field private static COMPLETE_SCROLL_DURATION:I = 0xc8

.field private static DEBUG_SCROLL:Z = false

.field private static DEL_ANIMATION_DURATION:I = 0xc8

.field public static final IDLE:I = 0x0

.field private static final MISS:I = -0x1

.field private static RESTORE_SCROLL_DURATION:I = 0x96

.field public static final SCROLLED_LEFT:I = 0x4

.field public static final SCROLLED_RIGHT:I = 0x3

.field public static final SCROLLING_LEFT:I = 0x2

.field public static final SCROLLING_RIGHT:I = 0x1

.field public static final SCROLL_MODE_BOTH:I = 0x2

.field public static final SCROLL_MODE_LEFT:I = 0x1

.field public static final SCROLL_MODE_RIGHT:I = 0x0

.field private static TAG:Ljava/lang/String; = "HorizontalScrollListView"


# instance fields
.field private log:Lcom/smartisanos/magicflow/LOG;

.field private mAutoClose:Z

.field private mCancelEvent:Landroid/view/MotionEvent;

.field private mClickScrollHitPos:I

.field private mDetector:Landroid/view/GestureDetector;

.field private mHintView:Landroid/view/View;

.field private mIntercept:Z

.field private mIsAnimating:Z

.field private mIsScrollRunning:Z

.field private mLeftBtnsClickListener:Landroid/view/View$OnClickListener;

.field private mLeftBtnsId:I

.field private mLeftBtnsWidth:I

.field private mMaxLeftBtnsWidth:I

.field private mMaxRightBtnsWidth:I

.field private mOnScrollStateListener:Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView$ScrollStateListener;

.field private mOverflowVelocityFactor:F

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRestoreEatBackKey:Z

.field private mRightBtnsClickListener:Landroid/view/View$OnClickListener;

.field private mRightBtnsId:I

.field private mRightBtnsWidth:I

.field private mScrollEnabled:Z

.field private mScrollFactor:F

.field private mScrollHandleId:I

.field private mScrollMode:I

.field private mScrollRunner:Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView$ScrollRunner;

.field private mScrollState:I

.field private mScroller:Landroid/widget/Scroller;

.field private mSlideEnabled:Z

.field private mTouchSlop:I

.field private mVelocityFactor:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    const-class v0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;

    invoke-static {v0}, Lcom/smartisanos/magicflow/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/magicflow/LOG;

    move-result-object v0

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->log:Lcom/smartisanos/magicflow/LOG;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->mScrollState:I

    const/4 v1, -0x1

    .line 5
    iput v1, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->mClickScrollHitPos:I

    const/4 v2, 0x1

    .line 6
    iput-boolean v2, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->mAutoClose:Z

    .line 7
    iput-boolean v0, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->mScrollEnabled:Z

    .line 8
    iput-boolean v2, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->mSlideEnabled:Z

    .line 9
    iput-boolean v2, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->mRestoreEatBackKey:Z

    .line 10
    iput-boolean v0, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->mIsAnimating:Z

    .line 11
    iput v1, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->mLeftBtnsWidth:I

    .line 12
    iput v1, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->mRightBtnsWidth:I

    .line 13
    iput v1, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->mMaxLeftBtnsWidth:I

    .line 14
    iput v1, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->mMaxRightBtnsWidth:I

    const/high16 v1, 0x3f800000    # 1.0f

    .line 15
    iput v1, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->mVelocityFactor:F

    const v1, 0x3e4ccccd    # 0.2f

    .line 16
    iput v1, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->mOverflowVelocityFactor:F

    const/high16 v1, 0x3f000000    # 0.5f

    .line 17
    iput v1, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->mScrollFactor:F

    .line 18
    iput-boolean v0, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->mIntercept:Z

    .line 19
    iput-boolean v0, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->mIsScrollRunning:Z

    .line 20
    new-instance v0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView$1;

    invoke-direct {v0, p0}, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView$1;-><init>(Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;)V

    iput-object v0, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 22
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    const-class p3, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;

    invoke-static {p3}, Lcom/smartisanos/magicflow/LOG;->getInstance(Ljava/lang/Class;)Lcom/smartisanos/magicflow/LOG;

    move-result-object p3

    iput-object p3, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->log:Lcom/smartisanos/magicflow/LOG;

    const/4 p3, 0x0

    .line 24
    iput p3, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->mScrollState:I

    const/4 v0, -0x1

    .line 25
    iput v0, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->mClickScrollHitPos:I

    const/4 v1, 0x1

    .line 26
    iput-boolean v1, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->mAutoClose:Z

    .line 27
    iput-boolean p3, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->mScrollEnabled:Z

    .line 28
    iput-boolean v1, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->mSlideEnabled:Z

    .line 29
    iput-boolean v1, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->mRestoreEatBackKey:Z

    .line 30
    iput-boolean p3, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->mIsAnimating:Z

    .line 31
    iput v0, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->mLeftBtnsWidth:I

    .line 32
    iput v0, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->mRightBtnsWidth:I

    .line 33
    iput v0, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->mMaxLeftBtnsWidth:I

    .line 34
    iput v0, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->mMaxRightBtnsWidth:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 35
    iput v0, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->mVelocityFactor:F

    const v0, 0x3e4ccccd    # 0.2f

    .line 36
    iput v0, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->mOverflowVelocityFactor:F

    const/high16 v0, 0x3f000000    # 0.5f

    .line 37
    iput v0, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->mScrollFactor:F

    .line 38
    iput-boolean p3, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->mIntercept:Z

    .line 39
    iput-boolean p3, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->mIsScrollRunning:Z

    .line 40
    new-instance p3, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView$1;

    invoke-direct {p3, p0}, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView$1;-><init>(Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;)V

    iput-object p3, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;)Landroid/widget/Scroller;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->mScroller:Landroid/widget/Scroller;

    return-object p0
.end method

.method static synthetic access$100(Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->setBtnsListenerEnabled(Z)V

    return-void
.end method

.method static synthetic access$202(Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->mIsScrollRunning:Z

    return p1
.end method

.method static synthetic access$300(Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;)Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView$ScrollStateListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->mOnScrollStateListener:Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView$ScrollStateListener;

    return-object p0
.end method

.method static synthetic access$400(Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->mHintView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$402(Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->mHintView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$500(Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->setBackgroundViewVisibility(I)V

    return-void
.end method

.method static synthetic access$702(Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->mIsAnimating:Z

    return p1
.end method

.method static synthetic access$800()I
    .locals 1

    .line 1
    sget v0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->DEL_ANIMATION_DURATION:I

    return v0
.end method

.method private changeHintView(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->getBtnsWidth()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->mScrollRunner:Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView$ScrollRunner;

    invoke-virtual {p0, v1}, Landroid/widget/ListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->isStateLeft()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    neg-int v0, v0

    .line 4
    :goto_0
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->getScrollHandleView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 5
    invoke-direct {p0, v2}, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->setBtnsListenerEnabled(Z)V

    .line 6
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->getScrollHandleView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Landroid/view/View;->scrollTo(II)V

    .line 7
    :cond_2
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->mHintView:Landroid/view/View;

    const/4 p1, 0x1

    .line 8
    invoke-direct {p0, p1}, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->setBtnsListenerEnabled(Z)V

    .line 9
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->getScrollHandleView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0, v2}, Landroid/view/View;->scrollTo(II)V

    return-void
.end method

.method private completeScrollState()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->mHintView:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->getBtnsWidth()I

    move-result v0

    if-gtz v0, :cond_1

    return v1

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->getHorizontalScrollX()I

    move-result v2

    if-nez v2, :cond_2

    .line 4
    iget v3, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->mScrollMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    return v1

    .line 5
    :cond_2
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v1

    sub-int/2addr v0, v1

    if-gez v2, :cond_3

    neg-int v0, v0

    .line 6
    :cond_3
    sget v1, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->COMPLETE_SCROLL_DURATION:I

    invoke-direct {p0, v2, v0, v1}, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->horizontalScrolling(III)V

    const/4 v0, 0x1

    return v0
.end method

.method private doActionUpOrCancel()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->mIntercept:Z

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->mClickScrollHitPos:I

    return-void
.end method

.method private getBtnsWidth()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->isStateLeft()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->mRightBtnsWidth:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->mLeftBtnsWidth:I

    :goto_0
    if-gtz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->getBtnsView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v0

    :cond_1
    if-lez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, -0x1

    :goto_1
    return v0
.end method

.method private getMaxBtnsWidth()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->isStateLeft()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->mMaxRightBtnsWidth:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->mMaxLeftBtnsWidth:I

    :goto_0
    if-lez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, -0x1

    :goto_1
    return v0
.end method

.method private horizontalScrolling(III)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->mScrollRunner:Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView$ScrollRunner;

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->mScroller:Landroid/widget/Scroller;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move v2, p1

    move v4, p2

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 3
    iget-object p1, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->mScrollRunner:Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView$ScrollRunner;

    invoke-virtual {p0, p1}, Landroid/widget/ListView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    if-eqz v2, :cond_0

    .line 1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/smartisanos/magicflow/R$styleable;->HorizontalScrollListView:[I

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v4, v5, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    const/16 v3, 0x8

    .line 2
    iget-boolean v4, v0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->mScrollEnabled:Z

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, v0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->mScrollEnabled:Z

    const/4 v3, 0x5

    .line 3
    iget-boolean v4, v0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->mRestoreEatBackKey:Z

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, v0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->mRestoreEatBackKey:Z

    const/4 v3, 0x1

    .line 4
    iget v4, v0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->mLeftBtnsWidth:I

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, v0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->mLeftBtnsWidth:I

    const/4 v3, 0x7

    .line 5
    iget v4, v0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->mRightBtnsWidth:I

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, v0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->mRightBtnsWidth:I

    const/4 v3, 0x2

    .line 6
    iget v4, v0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->mMaxLeftBtnsWidth:I

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, v0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->mMaxLeftBtnsWidth:I

    const/4 v3, 0x3

    .line 7
    iget v4, v0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->mMaxRightBtnsWidth:I

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, v0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->mMaxRightBtnsWidth:I

    const/16 v3, 0xc

    .line 8
    iget v4, v0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->mVelocityFactor:F

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, v0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->mVelocityFactor:F

    const/4 v3, 0x4

    .line 9
    iget v4, v0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->mOverflowVelocityFactor:F

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, v0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->mOverflowVelocityFactor:F

    const/16 v3, 0x9

    .line 10
    iget v4, v0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->mScrollFactor:F

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, v0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->mScrollFactor:F

    .line 11
    invoke-virtual {v2, v5, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, v0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->mLeftBtnsId:I

    const/4 v3, 0x6

    .line 12
    invoke-virtual {v2, v3, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, v0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->mRightBtnsId:I

    const/16 v3, 0xa

    .line 13
    invoke-virtual {v2, v3, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, v0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->mScrollHandleId:I

    const/16 v3, 0xb

    .line 14
    invoke-virtual {v2, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, v0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->mScrollMode:I

    .line 15
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 16
    :cond_0
    new-instance v2, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView$ScrollRunner;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView$ScrollRunner;-><init>(Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView$1;)V

    iput-object v2, v0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->mScrollRunner:Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView$ScrollRunner;

    .line 17
    new-instance v2, Landroid/widget/Scroller;

    invoke-direct {v2, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->mScroller:Landroid/widget/Scroller;

    .line 18
    new-instance v2, Landroid/view/GestureDetector;

    invoke-direct {v2, v1, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v2, v0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->mDetector:Landroid/view/GestureDetector;

    .line 19
    invoke-static/range {p1 .. p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, v0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->mTouchSlop:I

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 20
    invoke-static/range {v2 .. v15}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v1

    iput-object v1, v0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->mCancelEvent:Landroid/view/MotionEvent;

    const v1, 0x106000d

    .line 21
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelector(I)V

    return-void
.end method

.method private isMotionHintView(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v2, v2

    .line 3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    float-to-int p2, p2

    .line 4
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 5
    aget v3, v1, v0

    if-le v2, v3, :cond_1

    const/4 v3, 0x1

    aget v4, v1, v3

    if-le p2, v4, :cond_1

    aget v4, v1, v0

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    if-ge v2, v4, :cond_1

    aget v1, v1, v3

    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr v1, p1

    if-ge p2, v1, :cond_1

    return v3

    :cond_1
    :goto_0
    return v0
.end method

.method private onScrolledStateTouchEvent(Landroid/view/MotionEvent;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->getBtnsView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->isMotionHintView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->restoreScrollState(Z)Z

    return-void
.end method

.method private onScrolledStateTouchEvent_V2(Landroid/view/MotionEvent;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->getBtnsView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->isMotionHintView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    and-int/lit16 p1, p1, 0xff

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v1, :cond_1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->isStateScrolling()Z

    move-result p1

    if-nez p1, :cond_2

    move v0, v1

    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    .line 4
    invoke-virtual {p0, v1}, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->restoreScrollState(Z)Z

    :cond_3
    return-void
.end method

.method private scrolling(IF)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    sub-int/2addr p1, v0

    .line 2
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->mHintView:Landroid/view/View;

    if-eqz v1, :cond_1

    if-eq v1, v0, :cond_1

    return-void

    .line 4
    :cond_1
    iget-boolean v1, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->mIntercept:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->mHintView:Landroid/view/View;

    if-nez v1, :cond_2

    return-void

    .line 5
    :cond_2
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->mCancelEvent:Landroid/view/MotionEvent;

    invoke-super {p0, v1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 6
    iput-object v0, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->mHintView:Landroid/view/View;

    .line 7
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->getHorizontalScrollX()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-nez v0, :cond_4

    const/4 v3, 0x0

    cmpg-float v3, p2, v3

    if-gez v3, :cond_3

    move v1, v2

    .line 8
    :cond_3
    invoke-virtual {p0, v1}, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->setScrollState(I)V

    goto :goto_0

    :cond_4
    if-gez v0, :cond_5

    move v1, v2

    .line 9
    :cond_5
    invoke-virtual {p0, v1}, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->setScrollState(I)V

    .line 10
    :goto_0
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->getBtnsWidth()I

    move-result v1

    if-lez v1, :cond_7

    .line 11
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-ge v3, v1, :cond_6

    goto :goto_1

    .line 12
    :cond_6
    iget v1, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->mOverflowVelocityFactor:F

    goto :goto_2

    .line 13
    :cond_7
    :goto_1
    iget v1, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->mVelocityFactor:F

    :goto_2
    mul-float/2addr p2, v1

    int-to-float v1, v0

    add-float/2addr p2, v1

    float-to-int p2, p2

    const/4 v1, 0x0

    if-lez p2, :cond_8

    .line 14
    iget v3, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->mScrollMode:I

    if-nez v3, :cond_8

    move p2, v1

    :cond_8
    if-gez p2, :cond_9

    .line 15
    iget v3, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->mScrollMode:I

    if-ne v3, v2, :cond_9

    move p2, v1

    .line 16
    :cond_9
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->getMaxBtnsWidth()I

    move-result v2

    if-lez v2, :cond_b

    .line 17
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-le v3, v2, :cond_b

    if-lez p2, :cond_a

    move p2, v2

    goto :goto_3

    :cond_a
    neg-int p2, v2

    .line 18
    :cond_b
    :goto_3
    sget-boolean v2, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->DEBUG_SCROLL:Z

    if-eqz v2, :cond_c

    .line 19
    sget-object v2, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "oldScrollX: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    sget-object v0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "newScrollX: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    :cond_c
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->getScrollHandleView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 22
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->getScrollHandleView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p2, v1}, Landroid/view/View;->scrollTo(II)V

    .line 23
    :cond_d
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->getBtnsView()Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_e

    .line 24
    invoke-direct {p0, v1}, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->setBackgroundViewVisibility(I)V

    .line 25
    :cond_e
    iget-object p2, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->mOnScrollStateListener:Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView$ScrollStateListener;

    if-eqz p2, :cond_f

    .line 26
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->mHintView:Landroid/view/View;

    invoke-interface {p2, p1, v0}, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView$ScrollStateListener;->onScrolling(ILandroid/view/View;)V

    :cond_f
    return-void
.end method

.method private setBackgroundViewVisibility(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->mHintView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2
    iget v1, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->mLeftBtnsId:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private setBtnsListenerEnabled(Z)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->getBtnsView()Landroid/view/View;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->isStateLeft()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->mRightBtnsClickListener:Landroid/view/View$OnClickListener;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->mLeftBtnsClickListener:Landroid/view/View$OnClickListener;

    :goto_0
    if-eqz v0, :cond_5

    if-nez v1, :cond_1

    goto :goto_3

    .line 3
    :cond_1
    instance-of v2, v0, Landroid/view/ViewGroup;

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    .line 4
    check-cast v0, Landroid/view/ViewGroup;

    move v2, v3

    .line 5
    :goto_1
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_5

    if-eqz p1, :cond_2

    .line 6
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 7
    :cond_2
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/View;->setClickable(Z)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    if-eqz p1, :cond_4

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    .line 9
    :cond_4
    invoke-virtual {v0, v3}, Landroid/view/View;->setClickable(Z)V

    :cond_5
    :goto_3
    return-void
.end method

.method private viewIdHitPosition(Landroid/view/MotionEvent;I)I
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 3
    invoke-virtual {p0, v0, v1}, Landroid/widget/ListView;->pointToPosition(II)I

    move-result v0

    .line 4
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    .line 5
    invoke-virtual {p0}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v2

    .line 6
    invoke-virtual {p0}, Landroid/widget/ListView;->getCount()I

    move-result v3

    const/4 v4, -0x1

    if-eq v0, v4, :cond_1

    if-lt v0, v1, :cond_1

    sub-int/2addr v3, v2

    if-ge v0, v3, :cond_1

    .line 7
    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int v1, v0, v1

    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-nez p2, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 9
    :goto_0
    invoke-direct {p0, v1, p1}, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->isMotionHintView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    return v4
.end method


# virtual methods
.method public changeHintView(I)V
    .locals 1

    .line 10
    invoke-virtual {p0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    sub-int/2addr p1, v0

    .line 11
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 12
    invoke-direct {p0, p1}, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->changeHintView(Landroid/view/View;)V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    sget-boolean v0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->DEBUG_SCROLL:Z

    if-eqz v0, :cond_0

    const-string v0, "dispatchTouchEvent"

    .line 2
    invoke-static {v0}, Lcom/smartisanos/magicflow/LOG;->e(Ljava/lang/String;)V

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 4
    iget-boolean v1, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->mAutoClose:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->isStateScrolled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    invoke-direct {p0, p1}, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->onScrolledStateTouchEvent_V2(Landroid/view/MotionEvent;)V

    .line 6
    invoke-virtual {p0}, Landroid/widget/ListView;->onCancelPendingInputEvents()V

    :cond_1
    return v0
.end method

.method public ensureScrollState(Z)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->isStateScrolled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->mHintView:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 3
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->getBtnsView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->getHorizontalScrollX()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->getBtnsWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->mScrollFactor:F

    mul-float/2addr v2, v3

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->completeScrollState()Z

    move-result v0

    if-nez v0, :cond_3

    .line 6
    invoke-virtual {p0, p1}, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->restoreScrollState(Z)Z

    goto :goto_1

    .line 7
    :cond_2
    :goto_0
    invoke-virtual {p0, p1}, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->restoreScrollState(Z)Z

    :cond_3
    :goto_1
    return v1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method public getBtnsView()Landroid/view/View;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->mHintView:Landroid/view/View;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->isStateLeft()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->mRightBtnsId:I

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->mLeftBtnsId:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getHintView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->mHintView:Landroid/view/View;

    return-object v0
.end method

.method public getHorizontalScrollX()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->getScrollHandleView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getScrollHandleView()Landroid/view/View;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->mHintView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 2
    iget v1, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->mScrollHandleId:I

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getScrollMode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->mScrollMode:I

    return v0
.end method

.method public getScrollState()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->mScrollState:I

    return v0
.end method

.method public isScrollEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->mScrollEnabled:Z

    return v0
.end method

.method public isStateIdle()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->mScrollState:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isStateLeft()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->mScrollState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isStateRight()Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->mScrollState:I

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public isStateScrolled()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->mScrollState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isStateScrolling()Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->mScrollState:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/widget/ListView;->onAttachedToWindow()V

    .line 2
    invoke-virtual {p0}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-static {}, Lcom/smartisanos/magicflow/a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/ListView;->onDetachedFromWindow()V

    .line 2
    invoke-virtual {p0}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->mScrollEnabled:Z

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->isStateScrolled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->getBtnsView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->isMotionHintView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, -0x1

    .line 3
    iput p1, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->mClickScrollHitPos:I

    goto :goto_0

    .line 4
    :cond_0
    iget v0, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->mScrollHandleId:I

    invoke-direct {p0, p1, v0}, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->viewIdHitPosition(Landroid/view/MotionEvent;I)I

    move-result p1

    iput p1, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->mClickScrollHitPos:I

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ListView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->isStateScrolled()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 3
    invoke-virtual {p0, p1}, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->restoreScrollState(Z)Z

    .line 4
    invoke-virtual {p0}, Landroid/widget/ListView;->onCancelPendingInputEvents()V

    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->viewIdHitPosition(Landroid/view/MotionEvent;I)I

    move-result v1

    .line 2
    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int/2addr v1, v2

    .line 3
    invoke-virtual {p0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 4
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->isStateScrolled()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->mHintView:Landroid/view/View;

    if-ne v1, v2, :cond_2

    .line 5
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->getBtnsView()Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2, p1}, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->isMotionHintView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->isStateLeft()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->mLeftBtnsId:I

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->mRightBtnsId:I

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 7
    invoke-direct {p0, v0, p1}, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->isMotionHintView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    goto :goto_1

    .line 8
    :cond_2
    iget v0, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->mLeftBtnsId:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->isMotionHintView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_3

    iget v0, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->mRightBtnsId:I

    .line 9
    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->isMotionHintView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    :cond_3
    :goto_1
    const/4 p1, 0x1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-boolean v0, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->mScrollEnabled:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->restoreScrollState(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    iget-boolean v1, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->mRestoreEatBackKey:Z

    if-eqz v1, :cond_1

    return v0

    .line 4
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onScreenStateChanged(I)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 1
    invoke-virtual {p0, p1}, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->restoreScrollState(Z)Z

    :cond_0
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->mScrollEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget v0, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->mClickScrollHitPos:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    return v1

    .line 3
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v0, v2

    float-to-int v0, v0

    .line 4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    sub-float/2addr p2, p1

    float-to-int p1, p2

    .line 5
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->isStateScrolling()Z

    move-result p2

    if-nez p2, :cond_7

    .line 6
    iget p2, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->mScrollMode:I

    const/4 v2, 0x1

    if-ne p2, v2, :cond_2

    if-lez v0, :cond_2

    return v1

    .line 7
    :cond_2
    iget p2, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->mScrollMode:I

    if-nez p2, :cond_3

    if-gez v0, :cond_3

    return v1

    .line 8
    :cond_3
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-ge p2, v2, :cond_4

    return v1

    .line 9
    :cond_4
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result p2

    iget v2, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->mTouchSlop:I

    if-ge p2, v2, :cond_5

    return v1

    .line 10
    :cond_5
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p2

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float p2, p2, v2

    if-gez p2, :cond_6

    return v1

    .line 11
    :cond_6
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p2

    iget v2, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->mTouchSlop:I

    int-to-float v2, v2

    cmpg-float p2, p2, v2

    if-gez p2, :cond_7

    return v1

    .line 12
    :cond_7
    sget-boolean p2, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->DEBUG_SCROLL:Z

    if-eqz p2, :cond_8

    .line 13
    sget-object p2, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onScroll mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->mScrollMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", deltaX: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", deltaY: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", distanceX: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ", distanceY: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    :cond_8
    iget-boolean p1, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->mSlideEnabled:Z

    if-eqz p1, :cond_9

    .line 15
    iget p1, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->mClickScrollHitPos:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-direct {p0, p1, p3}, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->scrolling(IF)V

    :cond_9
    return v1
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget p1, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->mClickScrollHitPos:I

    invoke-virtual {p0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    sub-int/2addr p1, v0

    .line 2
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->callOnClick()Z

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    sget-boolean v0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->DEBUG_SCROLL:Z

    if-eqz v0, :cond_0

    const-string v0, "onTouchEvent"

    .line 2
    invoke-static {v0}, Lcom/smartisanos/magicflow/LOG;->e(Ljava/lang/String;)V

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->mScrollEnabled:Z

    if-nez v0, :cond_1

    .line 4
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 5
    :cond_1
    iget-boolean v0, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->mIsAnimating:Z

    const/4 v1, 0x1

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->mIsScrollRunning:Z

    if-eqz v0, :cond_3

    .line 6
    :cond_2
    iput-boolean v1, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->mIntercept:Z

    .line 7
    :cond_3
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->mDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 8
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->isStateScrolled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 9
    invoke-direct {p0, p1}, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->onScrolledStateTouchEvent(Landroid/view/MotionEvent;)V

    .line 10
    iput-boolean v1, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->mIntercept:Z

    .line 11
    :cond_4
    iget-boolean v0, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->mIntercept:Z

    .line 12
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    if-eq v2, v1, :cond_5

    const/4 v3, 0x3

    if-eq v2, v3, :cond_5

    if-eqz v0, :cond_6

    .line 13
    iget-object v2, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->mCancelEvent:Landroid/view/MotionEvent;

    invoke-super {p0, v2}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 14
    :cond_5
    invoke-virtual {p0, v1}, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->ensureScrollState(Z)Z

    .line 15
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->doActionUpOrCancel()V

    :cond_6
    :goto_0
    if-eqz v0, :cond_7

    .line 16
    invoke-virtual {p0}, Landroid/widget/ListView;->onCancelPendingInputEvents()V

    .line 17
    invoke-direct {p0}, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->doActionUpOrCancel()V

    return v1

    .line 18
    :cond_7
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onVisibilityChanged(Landroid/view/View;I)V

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->restoreScrollState(Z)Z

    .line 3
    invoke-virtual {p0}, Landroid/widget/ListView;->onCancelPendingInputEvents()V

    :cond_0
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ListView;->onWindowVisibilityChanged(I)V

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->restoreScrollState(Z)Z

    .line 3
    invoke-virtual {p0}, Landroid/widget/ListView;->onCancelPendingInputEvents()V

    :cond_0
    return-void
.end method

.method public playDeleteItemAnimation(Landroid/animation/Animator$AnimatorListener;)V
    .locals 16

    move-object/from16 v8, p0

    move-object/from16 v2, p1

    .line 1
    iget-object v3, v8, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->mHintView:Landroid/view/View;

    if-nez v3, :cond_1

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-interface {v2, v0}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    .line 3
    invoke-interface {v2, v0}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    :cond_0
    return-void

    .line 4
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->getBtnsView()Landroid/view/View;

    move-result-object v9

    .line 5
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->isStateLeft()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, v8, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->mLeftBtnsId:I

    goto :goto_0

    :cond_2
    iget v0, v8, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->mRightBtnsId:I

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    if-eqz v10, :cond_3

    .line 6
    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v0

    goto :goto_1

    :cond_3
    const/16 v0, 0x8

    :goto_1
    move v6, v0

    .line 7
    invoke-virtual {v3}, Landroid/view/View;->getScrollX()I

    move-result v7

    .line 8
    invoke-virtual/range {p0 .. p0}, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->isStateLeft()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v0

    goto :goto_2

    :cond_4
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v0

    neg-int v0, v0

    :goto_2
    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v11, 0x0

    aput v7, v1, v11

    const/4 v12, 0x1

    aput v0, v1, v12

    .line 9
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v13

    .line 10
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v14, 0x3fc00000    # 1.5f

    invoke-direct {v0, v14}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v13, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 11
    sget v0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->DEL_ANIMATION_DURATION:I

    int-to-long v0, v0

    invoke-virtual {v13, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 12
    new-instance v0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView$2;

    invoke-direct {v0, v8, v3}, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView$2;-><init>(Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;Landroid/view/View;)V

    invoke-virtual {v13, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 13
    new-instance v15, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView$3;

    move-object v0, v15

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v4, v9

    move-object v5, v10

    invoke-direct/range {v0 .. v7}, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView$3;-><init>(Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;Landroid/animation/Animator$AnimatorListener;Landroid/view/View;Landroid/view/View;Landroid/view/View;II)V

    invoke-virtual {v13, v15}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    if-eqz v10, :cond_5

    const/4 v0, 0x4

    .line 14
    invoke-virtual {v10, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    if-eqz v9, :cond_8

    .line 15
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 16
    sget v1, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->DEL_ANIMATION_DURATION:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 17
    invoke-virtual {v0, v12}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 18
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1, v14}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 19
    instance-of v1, v9, Landroid/view/ViewGroup;

    if-eqz v1, :cond_7

    .line 20
    check-cast v9, Landroid/view/ViewGroup;

    .line 21
    invoke-virtual {v9}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    :goto_3
    if-ge v11, v1, :cond_8

    .line 22
    invoke-virtual {v9, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 23
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_6

    .line 24
    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_6
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 25
    :cond_7
    invoke-virtual {v9, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 26
    :cond_8
    invoke-virtual {v13}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public restoreScrollState(Z)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->getHorizontalScrollX()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const/4 p1, 0x4

    .line 2
    invoke-direct {p0, p1}, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->setBackgroundViewVisibility(I)V

    .line 3
    iget p1, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->mScrollState:I

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->mOnScrollStateListener:Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView$ScrollStateListener;

    if-eqz p1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->mHintView:Landroid/view/View;

    invoke-interface {p1, v0}, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView$ScrollStateListener;->onScrollRestored(Landroid/view/View;)V

    .line 5
    :cond_0
    invoke-virtual {p0, v1}, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->setScrollState(I)V

    const/4 p1, 0x0

    .line 6
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->mHintView:Landroid/view/View;

    return v1

    .line 7
    :cond_1
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->getScrollHandleView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v0

    neg-int v2, v0

    if-eqz p1, :cond_2

    .line 8
    sget v1, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->RESTORE_SCROLL_DURATION:I

    :cond_2
    invoke-direct {p0, v0, v2, v1}, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->horizontalScrolling(III)V

    const/4 p1, 0x1

    return p1
.end method

.method public setAutoClose(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->mAutoClose:Z

    return-void
.end method

.method public setBtnsOnClickListener(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->mLeftBtnsClickListener:Landroid/view/View$OnClickListener;

    .line 2
    iput-object p2, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->mRightBtnsClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setOnScrollStateChangeListener(Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView$ScrollStateListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->mOnScrollStateListener:Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView$ScrollStateListener;

    return-void
.end method

.method public setScrollEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->mScrollEnabled:Z

    return-void
.end method

.method public setScrollMode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->mScrollMode:I

    return-void
.end method

.method public setScrollState(I)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->mScrollState:I

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->mOnScrollStateListener:Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView$ScrollStateListener;

    if-eqz v1, :cond_1

    .line 3
    iget-object v2, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->mHintView:Landroid/view/View;

    invoke-interface {v1, v2, v0, p1}, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView$ScrollStateListener;->onScrollStateChanged(Landroid/view/View;II)V

    .line 4
    :cond_1
    iput p1, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->mScrollState:I

    return-void
.end method

.method public setSlideEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/smartisanos/magicflow/view/newslist/HorizontalScrollListView;->mSlideEnabled:Z

    return-void
.end method
