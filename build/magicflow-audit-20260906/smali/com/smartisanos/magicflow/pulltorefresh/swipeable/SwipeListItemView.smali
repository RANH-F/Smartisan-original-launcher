.class public Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;
.super Landroid/widget/FrameLayout;
.source "SwipeListItemView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView$MyOverScroller;
    }
.end annotation


# static fields
.field private static final FLING_DURATION:I = 0xc8

.field private static final REBOUND_DURATION:I = 0x96

.field private static final SCROLL_DURATION:I = 0xfa

.field public static final UNDEFINED:I = -0x80000000


# instance fields
.field private f0:D

.field private mAdapter:Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListAdapter;

.field private mCloseCoverLeft:I

.field private mContentShadow:Landroid/view/View;

.field private mContentView:Landroid/view/View;

.field mCoverHitRect:Landroid/graphics/Rect;

.field private mCurrentCoverLeft:I

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGestureStartLeft:I

.field private mIgnoreGesture:Z

.field private mIsScrollGesture:Z

.field private mLeftDampDistance:I

.field private mLeftOpenBalanceDistance:I

.field private mLeftOpenCoverLeft:I

.field private mMenuView:Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeMenuView;

.field private mPosition:I

.field private mScrollRunner:Ljava/lang/Runnable;

.field private mScroller:Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView$MyOverScroller;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->mGestureStartLeft:I

    const/high16 p1, -0x80000000

    .line 3
    iput p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->mCurrentCoverLeft:I

    .line 4
    iput p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->mCloseCoverLeft:I

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->mIsScrollGesture:Z

    .line 6
    iput-boolean p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->mIgnoreGesture:Z

    const-wide/16 v0, 0x0

    .line 7
    invoke-direct {p0, v0, v1}, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->overScrollCurveA(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->f0:D

    .line 8
    new-instance p1, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView$2;

    invoke-direct {p1, p0}, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView$2;-><init>(Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;)V

    iput-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->mScrollRunner:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 10
    iput p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->mGestureStartLeft:I

    const/high16 p1, -0x80000000

    .line 11
    iput p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->mCurrentCoverLeft:I

    .line 12
    iput p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->mCloseCoverLeft:I

    const/4 p1, 0x0

    .line 13
    iput-boolean p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->mIsScrollGesture:Z

    .line 14
    iput-boolean p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->mIgnoreGesture:Z

    const-wide/16 p1, 0x0

    .line 15
    invoke-direct {p0, p1, p2}, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->overScrollCurveA(D)D

    move-result-wide p1

    iput-wide p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->f0:D

    .line 16
    new-instance p1, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView$2;

    invoke-direct {p1, p0}, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView$2;-><init>(Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;)V

    iput-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->mScrollRunner:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Landroid/view/View;Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeMenuView;)V
    .locals 2

    .line 18
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    .line 19
    iput v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->mGestureStartLeft:I

    const/high16 v0, -0x80000000

    .line 20
    iput v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->mCurrentCoverLeft:I

    .line 21
    iput v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->mCloseCoverLeft:I

    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->mIsScrollGesture:Z

    .line 23
    iput-boolean v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->mIgnoreGesture:Z

    const-wide/16 v0, 0x0

    .line 24
    invoke-direct {p0, v0, v1}, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->overScrollCurveA(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->f0:D

    .line 25
    new-instance v0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView$2;

    invoke-direct {v0, p0}, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView$2;-><init>(Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;)V

    iput-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->mScrollRunner:Ljava/lang/Runnable;

    .line 26
    iput-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->mContentView:Landroid/view/View;

    .line 27
    iput-object p3, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->mMenuView:Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeMenuView;

    .line 28
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->mMenuView:Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeMenuView;

    invoke-virtual {p1, p0}, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeMenuView;->setSwipeListItemView(Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;)V

    .line 29
    iput-object p2, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->mContentShadow:Landroid/view/View;

    .line 30
    invoke-direct {p0}, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeMenuView;)V
    .locals 1

    const/4 v0, 0x0

    .line 17
    invoke-direct {p0, p1, v0, p2}, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;-><init>(Landroid/view/View;Landroid/view/View;Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeMenuView;)V

    return-void
.end method

.method static synthetic access$002(Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->mIsScrollGesture:Z

    return p1
.end method

.method static synthetic access$100(Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->mCurrentCoverLeft:I

    return p0
.end method

.method static synthetic access$202(Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->mGestureStartLeft:I

    return p1
.end method

.method static synthetic access$300(Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->mCloseCoverLeft:I

    return p0
.end method

.method static synthetic access$400(Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;II)I
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->getTargetX(II)I

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->mLeftDampDistance:I

    return p0
.end method

.method static synthetic access$600(Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;I)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->immediatelyScrollTo(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->mLeftOpenCoverLeft:I

    return p0
.end method

.method static synthetic access$800(Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;IFI)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->flingTo(IFI)V

    return-void
.end method

.method static synthetic access$900(Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;)Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView$MyOverScroller;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->mScroller:Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView$MyOverScroller;

    return-object p0
.end method

.method private flingTo(IFI)V
    .locals 12

    .line 1
    iget v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->mLeftOpenCoverLeft:I

    if-ne p1, v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->mAdapter:Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListAdapter;

    invoke-virtual {v0, p0}, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListAdapter;->setOpenedChild(Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;)V

    .line 3
    :cond_0
    iget v2, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->mCurrentCoverLeft:I

    .line 4
    iget-object v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->mScroller:Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView$MyOverScroller;

    const/4 v3, 0x0

    float-to-int v4, p2

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    move v6, p1

    move v7, p1

    move v10, p3

    invoke-virtual/range {v1 .. v11}, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView$MyOverScroller;->fling(IIIIIIIIII)V

    .line 5
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->mScrollRunner:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private getCoverCloseLeft()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->mCloseCoverLeft:I

    return v0
.end method

.method private getTargetX(II)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->mCurrentCoverLeft:I

    add-int/2addr v0, p2

    .line 2
    iget p2, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->mLeftDampDistance:I

    if-le v0, p2, :cond_0

    if-lez p1, :cond_0

    int-to-double v0, p2

    int-to-double p1, p1

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->overScrollCurveB(D)D

    move-result-wide p1

    add-double/2addr v0, p1

    double-to-int p1, v0

    return p1

    :cond_0
    return v0
.end method

.method private immediatelyScrollTo(I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 2
    iget v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->mCloseCoverLeft:I

    if-ge p1, v1, :cond_0

    move p1, v1

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->mContentView:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setLeft(I)V

    .line 4
    iget-object v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->mContentView:Landroid/view/View;

    add-int/2addr v0, p1

    invoke-virtual {v1, v0}, Landroid/view/View;->setRight(I)V

    .line 5
    iput p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->mCurrentCoverLeft:I

    .line 6
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->mContentShadow:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 8
    iget-object v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->mContentShadow:Landroid/view/View;

    sub-int v0, p1, v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setLeft(I)V

    .line 9
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->mContentShadow:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setRight(I)V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private init()V
    .locals 4

    .line 1
    new-instance v0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView$MyOverScroller;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-direct {v0, p0, v1, v2}, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView$MyOverScroller;-><init>(Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->mScroller:Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView$MyOverScroller;

    .line 2
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView$1;

    invoke-direct {v2, p0}, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView$1;-><init>(Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 3
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->mMenuView:Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeMenuView;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->mMenuView:Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeMenuView;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 6
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->mContentShadow:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->mContentShadow:Landroid/view/View;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->mContentShadow:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->mContentView:Landroid/view/View;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 11
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->mContentView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private interruptScroller()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->mScroller:Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView$MyOverScroller;

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView$MyOverScroller;->isClearFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->mScroller:Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView$MyOverScroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/OverScroller;->forceFinished(Z)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->mScrollRunner:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private isMotionOnCover(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->mCoverHitRect:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->mCoverHitRect:Landroid/graphics/Rect;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->mContentView:Landroid/view/View;

    iget-object v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->mCoverHitRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 4
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->mCoverHitRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {v0, v1, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    return p1
.end method

.method private isMotionOnMenu(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->mMenuView:Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeMenuView;

    invoke-virtual {v1}, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeMenuView;->getMenuViews()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 3
    invoke-virtual {v3, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    or-int/2addr v2, v3

    goto :goto_0

    :cond_0
    return v2
.end method

.method private overScrollCurveA(D)D
    .locals 2

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    add-double/2addr p1, v0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    mul-double/2addr p1, v0

    .line 1
    invoke-static {p1, p2}, Ljava/lang/Math;->log(D)D

    move-result-wide p1

    const-wide v0, 0x3ff199999999999aL    # 1.1

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    div-double/2addr p1, v0

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    mul-double/2addr p1, v0

    return-wide p1
.end method

.method private overScrollCurveB(D)D
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->overScrollCurveA(D)D

    move-result-wide p1

    iget-wide v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->f0:D

    sub-double/2addr p1, v0

    return-wide p1
.end method

.method private scrollByTouch(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    if-eq v0, v2, :cond_0

    if-eq v0, v1, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->interruptScroller()V

    .line 3
    :cond_0
    iget-object v3, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v3, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    iget v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->mCurrentCoverLeft:I

    iget v3, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->mCloseCoverLeft:I

    if-eq v1, v3, :cond_2

    iget-object v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->mScroller:Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView$MyOverScroller;

    invoke-virtual {v1}, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView$MyOverScroller;->isClearFinished()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5
    iget v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->mCurrentCoverLeft:I

    iget v3, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->mLeftDampDistance:I

    if-eq v1, v3, :cond_2

    .line 6
    invoke-direct {p0}, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->scrollIntoSlot()V

    .line 7
    :cond_2
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->isClosed()Z

    move-result v1

    if-nez v1, :cond_3

    .line 8
    iget-object v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->mMenuView:Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeMenuView;

    invoke-virtual {v1, v2}, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeMenuView;->setMenuClickable(Z)V

    :cond_3
    :goto_0
    if-eqz p1, :cond_4

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    :goto_1
    return v2
.end method

.method private scrollIntoSlot()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->mCurrentCoverLeft:I

    .line 2
    iget v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->mGestureStartLeft:I

    iget v2, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->mLeftOpenCoverLeft:I

    if-ne v1, v2, :cond_0

    .line 3
    iget v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->mCloseCoverLeft:I

    goto :goto_1

    .line 4
    :cond_0
    iget v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->mLeftOpenBalanceDistance:I

    if-le v0, v1, :cond_1

    goto :goto_0

    :cond_1
    iget v2, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->mCloseCoverLeft:I

    :goto_0
    move v0, v2

    :goto_1
    const/16 v1, 0xfa

    .line 5
    invoke-virtual {p0, v0, v1}, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->scrollTo(II)V

    return-void
.end method

.method private scrollTo(IZI)V
    .locals 8

    .line 2
    iget v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->mLeftOpenCoverLeft:I

    if-ne p1, v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->mAdapter:Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListAdapter;

    invoke-virtual {v0, p0}, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListAdapter;->setOpenedChild(Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;)V

    .line 4
    :cond_0
    iget v2, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->mCurrentCoverLeft:I

    .line 5
    iget-object v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->mScroller:Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView$MyOverScroller;

    const/4 v3, 0x0

    sub-int v4, p1, v2

    const/4 v5, 0x0

    move v6, p3

    move v7, p2

    invoke-virtual/range {v1 .. v7}, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView$MyOverScroller;->startScroll(IIIIIZ)V

    .line 6
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->mScrollRunner:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public closeAutonomously()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->mCloseCoverLeft:I

    const/16 v1, 0xc8

    invoke-virtual {p0, v0, v1}, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->scrollTo(II)V

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->mMenuView:Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeMenuView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeMenuView;->setMenuClickable(Z)V

    .line 3
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->mAdapter:Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListAdapter;->setOpenedChild(Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;)V

    return-void
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method public getCurrentCoverLeft()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->mCurrentCoverLeft:I

    return v0
.end method

.method public getMenuView()Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeMenuView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->mMenuView:Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeMenuView;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->mPosition:I

    return v0
.end method

.method public isClosed()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->mCurrentCoverLeft:I

    iget v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->mCloseCoverLeft:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->mScroller:Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView$MyOverScroller;

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView$MyOverScroller;->isClearFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLeftOpen()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->mCurrentCoverLeft:I

    iget v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->mCloseCoverLeft:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->mIgnoreGesture:Z

    .line 3
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->mAdapter:Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListAdapter;

    invoke-virtual {v0}, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListAdapter;->isAdapterAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iput-boolean v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->mIgnoreGesture:Z

    return v1

    .line 5
    :cond_0
    invoke-direct {p0, p1}, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->isMotionOnCover(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v2, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->mScroller:Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView$MyOverScroller;

    invoke-virtual {v2}, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView$MyOverScroller;->isClearFinished()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->mScroller:Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView$MyOverScroller;

    .line 7
    invoke-virtual {v2}, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView$MyOverScroller;->ignoreInterrupt()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8
    iput-boolean v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->mIgnoreGesture:Z

    return v1

    :cond_1
    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 10
    :cond_2
    invoke-direct {p0, p1}, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->scrollByTouch(Landroid/view/MotionEvent;)Z

    .line 11
    iget-boolean p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->mIsScrollGesture:Z

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 2
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->mContentView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p1

    iput p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->mCloseCoverLeft:I

    .line 3
    iget p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->mCurrentCoverLeft:I

    const/high16 p2, -0x80000000

    if-ne p1, p2, :cond_0

    .line 4
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->mContentView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p1

    iput p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->mCurrentCoverLeft:I

    goto :goto_0

    .line 5
    :cond_0
    invoke-direct {p0, p1}, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->immediatelyScrollTo(I)Z

    .line 6
    :goto_0
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->mMenuView:Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeMenuView;

    invoke-virtual {p1}, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeMenuView;->getLastMenuRightEdge()I

    move-result p1

    iput p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->mLeftDampDistance:I

    .line 7
    iget-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->mMenuView:Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeMenuView;

    invoke-virtual {p1}, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeMenuView;->getMenuViews()Ljava/util/List;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p1

    iput p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->mLeftOpenBalanceDistance:I

    .line 8
    iget p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->mLeftDampDistance:I

    iput p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->mLeftOpenCoverLeft:I

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->mIgnoreGesture:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_2

    .line 3
    iget v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->mCurrentCoverLeft:I

    iget v2, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->mLeftOpenCoverLeft:I

    if-lt v0, v2, :cond_2

    .line 4
    invoke-direct {p0, p1}, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->isMotionOnCover(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->isMotionOnMenu(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 5
    :cond_1
    iput-boolean v1, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->mIgnoreGesture:Z

    .line 6
    invoke-virtual {p0}, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->closeAutonomously()V

    return v1

    .line 7
    :cond_2
    invoke-direct {p0, p1}, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->scrollByTouch(Landroid/view/MotionEvent;)Z

    .line 8
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public scrollTo(II)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0, p2}, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->scrollTo(IZI)V

    return-void
.end method

.method public setPosition(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->mPosition:I

    .line 2
    iget-object v0, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->mMenuView:Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeMenuView;

    invoke-virtual {v0, p1}, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeMenuView;->setPosition(I)V

    return-void
.end method

.method public setSwipeListAdapter(Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListItemView;->mAdapter:Lcom/smartisanos/magicflow/pulltorefresh/swipeable/SwipeListAdapter;

    return-void
.end method

.method public superScrollTo(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->scrollTo(II)V

    return-void
.end method
